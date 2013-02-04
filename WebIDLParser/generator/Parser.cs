
/*******************************************************************************************************

  Copyright (C) 2012 Sebastian Loncar, Web: http://loncar.de

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the "Software"), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/

using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Xml.Linq;
using System.IO;

namespace WebIDLParser
{
    public class TParsedFile
    {

        public TNamespaceList nsList;
        public string outFile;
        public string inFile = "";

        public void convertFile(string inFile, string outFile)
        {
            nsList = new TNamespaceList(this);
            this.outFile = outFile;
            this.inFile = inFile;
            var localIdlFile = Program.idlOutTempDirectory + @"\" + Path.GetFileName(inFile);
            var localIdlFile2 = Program.idlOutTempDirectory + @"\" + Path.GetFileNameWithoutExtension(inFile) + ".i";
            var path = Path.GetDirectoryName(inFile).Replace(Program.idlInDirectory, "").Replace("\\", ".");

            if (File.Exists(localIdlFile)) File.Delete(localIdlFile);
            File.Copy(inFile, localIdlFile);

            Environment.CurrentDirectory = Path.GetDirectoryName(localIdlFile);
            if (Program.runPreprocessor)
            {
                Process.Start(new ProcessStartInfo(Program.preprocessorExe, localIdlFile + " /P /DLANGUAGE_JAVASCRIPT=1") { WindowStyle = ProcessWindowStyle.Hidden }).WaitForExit();
            }
           
            var lines = File.ReadAllLines(localIdlFile2);
            for (var i = 0; i < lines.Length; i++)
            {
                if (lines[i].StartsWith("#"))
                {
                    lines[i] = "";
                }
            }
            TScriptTokenizer tokenizer = new TScriptTokenizer(string.Join("\r\n", lines), localIdlFile2);
            TCodeTokenFile tf = tokenizer.GetTokenFile();
            setTokens(tf.tokens);

            TNamespace ns = new TNamespace(this);
            nsList.Add(ns);

            //path = path.Replace("modules.", "");
            if (TransformationConfig.moveToRootNamespace.Contains(path.ToLower()))
            {
                ns.name = "randori.webkit";
            }
            else
            {
                ns.name = "randori.webkit." + path.ToLower();
                if (!Generator.namespaceNames.Contains(ns.name)) Generator.namespaceNames.Add(ns.name);
            }

            getNextToken();
            TAttributeList attributes = new TAttributeList();
            while (true)
            {
                //if (currentToken.token == ECodeToken.kwModule)
                //{
                //    getNextToken();
                //    var module = readDottedString();
                //    ns.name = "SharpKit.Html";

                //    //var seperateModules = new HashSet<string>(new string[]{
                //    //    "svg",
                //    //    "storage",
                //    //    "threads",
                //    //    "audio",
                //    //    "webaudio",
                //    //});

                //    if (TransformationConfig.createSubNamespaceForModule.Contains(module))
                //    {
                //        ns.name += "." + module;
                //        if (!Generator.namespaceNames.Contains(ns.name)) Generator.namespaceNames.Add(ns.name);
                //    }

                //}



                //if (CurrentToken.Token == ECodeToken.kwImport) {
                //  GetNextToken();
                //  string imp = readDottedString();
                //  if (!(imp.Contains("org.w3c.dom.html.Function"))) {
                //    ns.ImportList.Add(imp);
                //  }
                //}
                ns.importList.Clear();

                if (currentToken.token == ECodeToken.brSmallBraceBegin)
                {
                    attributes = readAttributes();
                }

                if (currentToken.token == ECodeToken.kwInterface) //new type
                {
                    TFileType t = readInterfaceType();
                    t.attributes = attributes;
                    foreach (var attr in t.attributes)
                        if (attr is TConstructorAttribute)
                            ((TConstructorAttribute)attr).constructor.parentType = t;
                    attributes = new TAttributeList(); //reset
                    t.ns = ns;
                    ns.types.Add(t);
                    t.checkProp();
                }
                getNextToken();
                if (_IsEndOfDocument)
                {
                    break;
                }
            }

        }

        public static bool isUnknownType(TType type)
        {

            var types = new HashSet<string>(new string[] {
                "Boolean",
				"int",
				"uint",
				"Object",
                "Number",
				"Array",
                "String",
				"void",
                "*",
                "Function"
			});

            string typeName = type.name;
            
            //if (type.name == "sequence") typeName = "Vector.<" + type.genericType.name + ">";
            
            if (types.Contains(typeName)) return false;

            var fType = Generator.findFileType(type.name);
            if ((fType != null) && fType.CheckExport())
            {
                return false;
            }
            return true;
        }

        public void saveFile()
        {
            var export = false;
            foreach (var ns in nsList)
                foreach (var t in ns.types)
                    if (t.CheckExport()) export = true;

            if (!export) return;
           
            if ((nsList.Count() > 0) && (nsList[0].types.Count() > 0))
            {
                var type = nsList[0].types[0];
                var outFileName = Path.GetFileNameWithoutExtension(outFile);
                var typeName = (type.isSupplemental()) ? type.getSupplementalName() : type.name;
                if (typeName != outFileName)
                {
                    outFile = Path.Combine(Path.GetDirectoryName(outFile), typeName) + ".as";
                }
            }
            
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            nsList.write(sb);
            LarneFunctions.StringSaveToFile(outFile, sb.ToString());
        }

        private string readDottedString()
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            while (true)
            {
                sb.Append(currentToken.value);
                getNextToken();
                if (currentToken.token == ECodeToken.syEndOfCommand || (currentToken.token != ECodeToken.syPoint && currentToken.token != ECodeToken.ltString))
                {
                    break;
                }
                sb.Append(".");
                getNextToken();
            }
            return sb.ToString();
        }

        private TFileType currentInterfaceType;
        private TFileType readInterfaceType()
        {
            TFileType t = new TFileType();
            currentInterfaceType = t;
            if (currentToken.nextTokenIs(ECodeToken.brSmallBraceBegin))
            {
                t.attributes = readAttributes();
            }
            else
            {
                getNextToken();
            }
            if (currentToken.token == ECodeToken.ltString)
            {
                t.name = readType().name;
                //t.checkAlias();
                if (currentToken.token == ECodeToken.syDoublePoint)
                {
                    do
                    {
                        getNextToken();
                        t.baseType.Add(readType());
                    }
                    while (currentToken.token == ECodeToken.syComma);
                }
                readMembers(t);
            }
            return t;
        }

        private void readMembers(TFileType t)
        {
            string name = "";
            bool vStatic = false;
            bool vFinal = false;
            while (currentToken != null)
            {
                if (currentToken.token == ECodeToken.brBigBraceEnd)
                {
                    break;
                }
                TMember mem = readMember();
                if (mem != null)
                {
                    if (!mem.name.ToLower().StartsWith("webkit") && !mem.name.ToLower().StartsWith("onwebkit"))
                    {
                        if (mem is TMethod)
                        {
                            var met = mem as TMethod;
                            for (var i = 0; i < met.parameters.Count; i++)
                            {
                                if (met.parameters[i].isOptional())
                                {
                                    var newMem = new TMethod(t) { baseMethod = met.baseMethod, isPrivate = met.isPrivate, name = met.name, resultType = met.resultType };
                                    for (var i2 = 0; i2 < i; i2++)
                                    {
                                        newMem.parameters.Add(met.parameters[i2]);
                                    }
                                    t.members.addWithCheck(newMem);
                                }
                            }
                        }
                        t.members.addWithCheck(mem);
                    }
                }
                getNextToken();
            }
        }

        private TMember readMember()
        {
            bool vStatic = false;
            bool vConst = false;
            bool vFinal = false;
            bool vReadonly = false;
            bool vAttribute = false;
            TType type = null;
            string name = "";
            TMember mem = null;
            var attrList = new TAttributeList();
            while (true)
            {
                switch (currentToken.token)
                {
                    case ECodeToken.brSmallBraceBegin:
                        attrList = readAttributes();
                        break;
                    case ECodeToken.kwStatic:
                        vStatic = true;
                        getNextToken();
                        break;
                    case ECodeToken.kwConst:
                        vConst = true;
                        getNextToken();
                        break;
                    case ECodeToken.kwAttribute:
                        vAttribute = true;
                        getNextToken();
                        break;
                    case ECodeToken.kwReadonly:
                        vReadonly = true;
                        getNextToken();
                        break;
                    //case ECodeToken.kwFinal:
                    //  vFinal = true;
                    //  break;
                    case ECodeToken.ltString:
                        type = readType();
                        name = currentToken.value;

                        getNextToken();
                        if (currentToken.token == ECodeToken.brBraceBegin)
                        {
                            mem = new TMethod(currentInterfaceType);
                            mem.name = name;
                            mem.resultType = type;
                            mem.attributes = attrList;
                            readParameters((TMethod)mem);
                            checkGotoEndOfStatement();
                        }
                        else
                        {
                            if (vAttribute)
                            {
                                mem = new TProperty(currentInterfaceType);
                                mem.name = name;
                                mem.resultType = type;
                                mem.attributes = attrList;
                                var prop = (TProperty)mem;
                                prop.canWrite = !vReadonly;
                                checkGotoEndOfStatement();
                                return mem;
                            }
                            else
                            {
                                mem = new TField(currentInterfaceType);
                                mem.name = name;
                                mem.resultType = type;
                                mem.attributes = attrList;
                                if (currentToken.token == ECodeToken.blEquals)
                                {
                                    getNextToken();
                                    string Value = currentToken.value;
                                    getNextToken();
                                    if (currentToken.token == ECodeToken.ltString)
                                    {
                                        Value += currentToken.value;
                                        if (Value.ToLower() == "0xffffffff")
                                        {
                                            Value = "0xFFFFFFF";
                                        }
                                    }
                                    ((TField)mem).value = Value;
                                }
                                return mem;
                            }
                        }
                        break;
                    default:
                        getNextToken();
                        break;
                }
                if ((currentToken == null) || (currentToken.token == ECodeToken.syEndOfCommand))
                {
                    break;
                }
            }
            return mem;
        }

        private void checkGotoEndOfStatement()
        {
            if (currentToken.token == ECodeToken.kwRaises || currentToken.token == ECodeToken.kwGetter || currentToken.token == ECodeToken.kwSetter)
                goToEndOfStatement();
        }

        private void goToEndOfStatement()
        {
            while (currentToken.token != ECodeToken.syEndOfCommand) getNextToken();
        }

        private void readParameters(TMethod mem)
        {
            while (true)
            {
                getNextToken();
                readParameter(mem);
                if (currentToken.token == ECodeToken.brBraceEnd)
                {
                    getNextToken();
                    break;
                }
            }

            if (mem.appendParamArray)
            {
                mem.parameters.Add(new TParameter() { name = "scriptArgs", type = new TType() { name = "Object", isArray = true }, paramArray = true });
            }
        }

        private void readParameter(TMethod mem)
        {
            TParameter param = new TParameter();
            if (currentToken.token == ECodeToken.brBraceEnd)
            {
                return;
            }

            if (currentToken.token == ECodeToken.syComma)
            {
                getNextToken();
                return;
            }

            if (currentToken.token == ECodeToken.kwIn)
            {
                getNextToken();
            }

            if (currentToken.token == ECodeToken.brSmallBraceBegin)
            {
                param.attributes = readAttributes();
            }

            if (currentToken.token == ECodeToken.ltString)
            {
                param.type = readType();
                param.type.isResult = false;

                if (currentToken.token == ECodeToken.syPoint) //method(string name...)
                {
                    param.type.isArray = true;
                    param.paramArray = true;
                    getNextToken();
                    getNextToken();
                    getNextToken();
                }

                param.name = currentToken.value;
                mem.parameters.Add(param);
                getNextToken();
            }
        }

        private TCodeToken currentToken;
        private bool _IsEndOfDocument = false;
        private TCodeToken getNextToken()
        {
            if (_IsEndOfDocument)
            {
                return null;
            }
            if (currentToken == null)
            {
                currentToken = getToken(0);
                return currentToken;
            }
            else
            {
                if (currentToken.nextToken == null)
                {
                    currentToken = null;
                    _IsEndOfDocument = true;
                    return null;
                }
                else
                {
                    currentToken = currentToken.nextToken;
                    return currentToken;
                }
            }
        }

        public TCodeToken getToken(int idx)
        {
            if (idx > tokens.Count - 1)
            {
                return null;
            }
            return (TCodeToken)(tokens[idx]);
        }

        public void resetTokenPosition()
        {
            _IsEndOfDocument = false;
            currentToken = null;
        }

        private ArrayList tokens = new ArrayList();

        private TCodeToken getLastToken()
        {
            if (currentToken == null)
            {
                return null;
            }
            currentToken = currentToken.lastToken;
            _IsEndOfDocument = false;
            return currentToken;
        }

        internal void setTokens(TCodeToken[] TokenList)
        {
            foreach (TCodeToken tok in TokenList)
            {
                if (tok.token != ECodeToken.syWhiteSpace && tok.token != ECodeToken.SyEndOfLine)
                {
                    tokens.Add(tok);
                }
            }

            ConnectTokens(tokens);
        }

        private TType readType()
        {
            var type = new TType();
            //Program.allTypes.Add(type);
            var str = currentToken.value;
            type.name = str;
            if (type.name == "unsigned") type.name += " " + getNextToken().value;
            getNextToken();
            if (currentToken.value == "long")
            {
                type.name += " long";
                getNextToken();
            }

            if (currentToken.token == ECodeToken.blLessThan)
            {
                getNextToken();
                type.genericType = readType();
                getNextToken();
            }

            if (currentToken.token == ECodeToken.brSmallBraceBegin)
            {
                type.isArray = true;
                getNextToken();
                getNextToken();
            }
            if (currentToken.token == ECodeToken.syQuestionmark)
            {
                type.isNullable = true;
                getNextToken();
            }
            str = getTypeName(type.name.Trim());
            type.name = str;
            return type;
        }

        private string getTypeName(string TypeName)
        {
            String result = "";
            switch (TypeName)
            {
                case "String":
                case "DOMString":
                    result = "String";
                    break;
                case "double":
                case "Double":
                case "float":
                case "Float":
                case "long long":
                case "unsigned long long":
                    result = "Number";
                    break;
                case "Object":
                    result = "Object";
                    break;
                case "boolean":
                    result = "Boolean";
                    break;
                case "unsigned int":
                case "unsigned long":
                case "unsigned short":
                case "long":
                    result = "uint";
                    break;
                case "short":
                case "int":
                    result = "int";
                    break;
                case "DOMObject":
                    result = "Object";
                    break;
                default:
                    if (TypeName.EndsWith("Constructor")) TypeName = TypeName.Replace("Constructor", "");
                    //TypeName = TypeName.Replace("HTML", "Html");
                    result = TypeName;
                    break;
            }
            return result;
        }

        private void ConnectTokens(ArrayList TokenList)
        {
            foreach (TCodeToken tok in TokenList)
            {
                tok.lastToken = null;
                tok.nextToken = null;
            }

            for (int i = 1; i < TokenList.Count; i++)
            {
                TCodeToken tok = (TCodeToken)(TokenList[i]);
                TCodeToken LastToken = (TCodeToken)(TokenList[i - 1]);
                LastToken.nextToken = tok;
                tok.lastToken = LastToken;
            }
        }

        public TAttributeList readAttributes()
        {
            var attrList = new TAttributeList();
            getNextToken();
            if (currentToken.token == ECodeToken.brSmallBraceEnd)
            {
                getNextToken();
                return attrList;
            }
            while (true)
            {
                var attr = readAttribute();
                if (attr != null) attrList.Add(attr);
                if (currentToken.token == ECodeToken.syComma) getNextToken();
                if (currentToken.token == ECodeToken.brSmallBraceEnd)
                {
                    getNextToken();
                    break;
                }
            }
            return attrList;
        }

        public TAttribute readAttribute()
        {
            string name = currentToken.value;
            string value = null;
            getNextToken();
            if (currentToken.token == ECodeToken.blEquals)
            {
                getNextToken();
                if (name == "NamedConstructor")
                {
                    var ctorName = currentToken.value;
                    var mem = new TMethod(currentInterfaceType);
                    mem.name = "ctor";
                    mem.aliasName = ctorName;
                    mem.resultType = new TType() { name = "void" };
                    getNextToken();
                    if (currentToken.token == ECodeToken.brBraceBegin)
                    {
                        readParameters(mem);
                    }
                    return new TConstructorAttribute(mem) { name = ctorName };
                }
                value = currentToken.value; //TODO
                getNextToken();
                return new TNameAttribute() { name = name, value = value };
            }

            if (name == "Constructor")
            {
                var mem = new TMethod(currentInterfaceType);
                mem.name = "ctor";
                mem.resultType = new TType() { name = "void" };
                if (currentToken.token == ECodeToken.brBraceBegin)
                {
                    readParameters(mem);
                }
                return new TConstructorAttribute(mem);
            }

            if (currentToken.token == ECodeToken.brBraceBegin)
            {
            }

            return new TNameAttribute() { name = name };
        }

    }

}