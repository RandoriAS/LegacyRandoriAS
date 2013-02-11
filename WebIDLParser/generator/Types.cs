
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
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.IO;
using System.Xml.Linq;
using System.Xml;
using System.Text.RegularExpressions;

namespace WebIDLParser
{
    public class TFileType
    {
        //// Tags in this hash table will have their names translated.
        //private readonly Dictionary<string, string> tagNameOverrides = 
        //    new Dictionary<string, string>
        //        {
        //            { "image",              "img" },
        //            { "anchor",             "a" },
        //            { "tablecaption",       "caption" },
        //            { "tablecell",          "td" },
        //            { "tablecol",           "col" },
        //            { "tablerow",           "tr" },
        //            // TODO: It can be thead or tfoot, too!
        //            { "tablesection",       "tbody" },
        //            { "dlist",              "dl" },
        //            { "olist",              "ol" },
        //            { "ulist",              "ul" },
        //            { "directory",          "d" },
        //            { "paragraph",          "p" },
        //            // TODO: Could be del or ins, but not mod. mod is an interface.
        //            { "mod",                "tbody" },
        //        };

        public string name = "";
        public string aliasName = "";
        public TMemberList members = new TMemberList();
        public TNamespace ns;
        public TTypeList baseType = new TTypeList();
        public TJsAttributeList jsAttributes = new TJsAttributeList();
        public List<String> comments = new List<String>();

        public bool CheckExport()
        {
            if (name.StartsWith("WebKit"))
            {
                return false;
            }
            else if (name.StartsWith("Vector.<"))
            {
                return false;
            }
            if (isDelegate())
            {
                return false;
            }
            if (name.EndsWith("Array"))
            {
                return false;
            }
            return true;
        }

        public void rename(string newName)
        {
            //AliasName = newName;
            //if (Name == "Event") {
            //  return;
            //}
            foreach (var t in Generator.allTypes)
            {
                if (t.name == name)
                {
                    t.name = newName;
                    if (t.genericType != null && t.genericType.name == name)
                        t.genericType.name = newName;
                }
            }
            this.name = newName;
        }

        public void generateComments()
        {
            comments.Add("@author RandoriAS Web IDL Parser");
            comments.Add("@version " + Program.OutputVersion);
            var parts = ns.name.Split('.');
            if (Directory.Exists(Path.Combine(Program.w3cDirectory, parts[parts.Length-1])))
            {
                GenerateW3CComments(parts[parts.Length-1]);
            }
            baseType.ForEach(t => AddSeeReference(t));
        }

        private void GenerateW3CComments(String Domain)
        {
            try
            {
                var attr = attributes.FindAll(a => a is TNameAttribute).Cast<TNameAttribute>().ToList().FirstOrDefault(a => a.name == "Conditional");
                if (attr != null)
                {
                    comments.Insert(0, "<note>This class depends on the browser to support: <code>" + attr.value + "</code></note>");
                }
                var xdoc = AddCommentsForName(name, Domain, comments);
                if (xdoc != null)
                {
                    members.ForEach(m => AddW3CCommentsToMembers(xdoc, m, m.comments));
                }
            }
            catch(Exception ex)
            {
                Console.WriteLine("Error reading W3C file: " + ex.Message);
            }
        }

        private void AddW3CCommentsToMembers(XmlDocument xdoc, TMember member, List<String> commentList)
        {
            var memberName = member.name;
            String elementName = "";
            if (member is TMethod)
            {
                elementName = "method";
            }
            else
            {
                elementName = "attribute";
            }
            var elm = xdoc.SelectNodes("//" + elementName + "[@name='" + memberName + "']/descr");
            if (elm.Count > 0)
            {
                ExtractXSpecRefs(elm[0], commentList);
                XmlElementToComments(elm[0], commentList);
            }
            if (member is TMethod)
            {
                ExtractMethodComments(xdoc, memberName, commentList);
            }
        }

        private void ExtractMethodComments(XmlDocument xdoc, string memberName, List<String> commentList)
        {
            var parms = xdoc.SelectNodes("//method[@name='" + memberName + "']/parameters/param");
            foreach (XmlNode prm in parms)
            {
                InsertParamDescription(prm, commentList);
            }
            parms = xdoc.SelectNodes("//method[@name='" + memberName + "']/returns");
            if (parms.Count > 0)
            {
                InsertReturnDescription(parms[0], commentList);
            }
            parms = xdoc.SelectNodes("//method[@name='" + memberName + "']/raises");
            if (parms.Count > 0)
            {
                InsertThrowDescription(parms[0], commentList);
            }
        }

        private void InsertThrowDescription(XmlNode returnNode, List<string> commentList)
        {
            var exceptionNodes = returnNode.SelectNodes("exception");
            if (exceptionNodes.Count == 0)
            {
                return;
            }
            var exceptionNode = exceptionNodes[0];
            var exceptionName = exceptionNode.Attributes["name"];
            var descrNodes = exceptionNode.SelectNodes("descr");
            if (descrNodes.Count > 0)
            {
                var lines = SplitXMLElementString(descrNodes[0]);
                if (lines != null)
                {
                    lines[0] = "@throw " + exceptionName.Value + " " + lines[0];
                    foreach (var line in lines)
                    {
                        commentList.Add(line);
                    }
                }
                else
                {
                    commentList.Add("@throw " + exceptionName);
                }
            }
            else
            {
                commentList.Add("@throw " + exceptionName);
            }
        }
        private void InsertReturnDescription(XmlNode returnNode, List<string> commentList)
        {
            var lines = SplitXMLElementString(returnNode.SelectNodes("descr")[0]);
            if (lines != null)
            {
                var found = false;
                for (var i = 0; i < commentList.Count(); i++)
                {
                    if (commentList[i].StartsWith("@return "))
                    {
                        MergeDescriptionComments(commentList, i, lines);
                        found = true;
                        break;
                    }
                }
                if (!found)
                {
                    lines[0] = "@return " + lines[0];
                    MergeDescriptionComments(commentList, -1, lines);
                }
            }
        }

        private void InsertParamDescription(XmlNode paramNode, List<String> commentList)
        {
            var prefix = "@param " + paramNode.Attributes["name"].Value + " ";
            var lines = SplitXMLElementString(paramNode.SelectNodes("descr")[0]);
            if (lines != null)
            {
                var found = false;
                for (var i = 0; i < commentList.Count(); i++)
                {
                    if (commentList[i].StartsWith(prefix))
                    {
                        var description = commentList[i].Substring(prefix.Length);
                        if (description.Length > 0)
                        {
                            description += " - ";
                        }
                        lines[lines.Length-1] += description;
                        MergeDescriptionComments(commentList, i, lines);
                        found = true;
                        break;
                    }
                }
                if (!found)
                {
                    lines[0] = prefix + lines[0];
                    MergeDescriptionComments(commentList, -1, lines);
                }
            }
        }

        private void MergeDescriptionComments(List<string> commentList, int index, string[] lines)
        {
            if (index == -1)
            {
                foreach (var line in lines)
                {
                    commentList.Add(line);
                }
            }
            else
            {
                commentList[index] += lines[0];
                for (var i = 1; i < lines.Length; i++)
                {
                    commentList.Insert(++index, lines[i]);
                }
            }
        }

        private XmlDocument AddCommentsForName(String name, String Domain, List<String> commentList)
        {
            var XMLFile = Program.w3cDirectory + Domain + @"\definitions\" + name + ".xml";
            if (!File.Exists(XMLFile))
            {
                XMLFile = Program.w3cDirectory + Domain + @"\definitions\" + CreateXMLFilename(name) + ".xml";
            }
            if (File.Exists(XMLFile))
            {
                var settings = new XmlReaderSettings();
                settings.DtdProcessing = DtdProcessing.Parse;

                var dtd = @"<!DOCTYPE doc [" + File.ReadAllText(Program.w3cDirectory + Domain + @"\link-entities.xml") + "]> ";
                var inputXml = File.ReadAllText(XMLFile).Replace("<?xml version=\"1.0\" encoding=\"utf-8\"?>", "").Replace("<?xml version=\"1.0\" encoding=\"UTF-8\"?>", "");
                string xml = string.Concat(dtd, inputXml);

                XmlDocument xdoc = new XmlDocument();
                xdoc.Load(XmlReader.Create(new MemoryStream(
                        UTF8Encoding.UTF8.GetBytes(xml)), settings));

                FilterNonASDocElements(xdoc.DocumentElement);

                var elm = xdoc.SelectNodes("//interface[@name='" + name + "']/descr");
                if (elm.Count > 0)
                {
                    ExtractXSpecRefs(elm[0], commentList);
                    XmlElementToComments(elm[0], commentList);
                }

                return xdoc;
            }
            return null;
        }

        private String CreateXMLFilename(String name)
        {
            var chars = name.ToCharArray();
            var result = "";
            for (var i = 0; i < chars.Count(); i++)
            {
                if ((i > 0) && (char.IsUpper(chars[i]) && (char.IsUpper(chars[i-1]) && (char.IsLower(chars[i+1])))))
                {
                    result += "-";
                }
                else if ((i > 0) && (char.IsUpper(chars[i]) && (char.IsLower(chars[i - 1]) && (char.IsLower(chars[i + 1])))))
                {
                    result += "-";
                }
                result += char.ToLower(chars[i]);
            }
            return result;
        }

        private void ExtractXSpecRefs(XmlNode elm, List<string> comments)
        {
            XmlNodeList refs = elm.SelectNodes("//xspecref");
            foreach (XmlNode node in refs)
            {
                var see = "@see " + node.Attributes["href"].Value;
                if (!comments.Contains(see))
                {
                    comments.Add(see);
                }
                var text = elm.OwnerDocument.CreateTextNode(node.InnerText);
                node.ParentNode.ReplaceChild(text, node);
            }
        }

        private void FilterNonASDocElements(XmlNode elm)
        {
            var list = new List<String>();
            list.Add("termref");
            list.ForEach(e => FilterNonASDocElement(elm, e));
        }

        private void FilterNonASDocElement(XmlNode elm, string nodeName)
        {
            XmlNodeList refs = elm.SelectNodes("//" + nodeName);
            foreach (XmlNode node in refs)
            {
                var text = elm.OwnerDocument.CreateTextNode(node.InnerText);
                node.ParentNode.ReplaceChild(text, node);
            }
        }

        private void XmlElementToComments(XmlNode elm, List<String> comments)
        {
            var lines = SplitXMLElementString(elm);
            if (lines != null)
            {
                var idx = 0;
                foreach (var line in lines)
                {
                    var thisLine = line.Trim();
                    if (thisLine.Length > 0)
                    {
                        comments.Insert(idx++, thisLine);
                    }
                }
            }
        }

        private string[] SplitXMLElementString(XmlNode elm)
        {
            if (elm.InnerText.Count() > 0)
            {
                var lines = Regex.Split(elm.InnerXml, "[\r\n]+");
                for (var i = 0; i < lines.Length; i++)
                {
                    lines[i] = lines[i].Trim();
                }
                return lines;
            }
            else
            {
                return null;
            }
        }

        private void AddSeeReference(TType type)
        {
            if (type.name == "Function")
            {
                return;
            }
            var fType = Generator.findFileType(type.name);
            if (fType != null)
            {
                comments.Add("@see " + fType.ns.name + "." + type.name);
            }
        }

        public void SerializeComments(StringBuilder sb)
        {
            if (comments.Count() > 0)
            {
                sb.Append("/**" + Environment.NewLine);
                foreach (var comment in comments)
                {
                    sb.Append(" *  " + comment + Environment.NewLine);
                }
                sb.Append(" */" + Environment.NewLine);
            }
        }

        public void write(StringBuilder sb)
        {
            if (isDelegate())
            {
                return;
            }

            var isSupplemental = this.isSupplemental();

            jsAttributes.Add("Export", "\"false\"");

            var attr = attributes.FindAll(a => a is TNameAttribute).Cast<TNameAttribute>().FirstOrDefault(a => a.name == "Conditional");
            if (attr != null)
            {
                jsAttributes.Add("nativecondition", "\"" + attr.value + "\"");
            }

            if (aliasName == "") aliasName = name; //Give all types an Name-attribute (without namespace)
            if (aliasName != "") jsAttributes.Add("Name", "\"" + aliasName + "\"");

            bool isDynamic = false;
            isDynamic = (members.FirstOrDefault(c => c.name == "this") != null);

            sb.Append("[Javascript(" + jsAttributes.ToString() + ")]" + Environment.NewLine);
            string typeType = "class";
            if (isInterface) typeType = "interface";
            if (isDynamic)
            {
                typeType = "dynamic " + typeType;
            }
            SerializeComments(sb);
            sb.Append("public " + typeType + " " + (isSupplemental ? getSupplementalName() : name));
            if (baseType.Count != 0)
            {
                TTypeList extends = new TTypeList();
                TTypeList implements = new TTypeList();
                var tIdx = 0;
                if (!isInterface)
                {
                    var baseTypeIsInterface = false;
                    for (tIdx = 0; tIdx < baseType.Count; tIdx++)
                    {
                        var t = Generator.findFileType(baseType[tIdx].name);
                        baseTypeIsInterface = ((t != null) && (t.isInterface));
                        if (baseTypeIsInterface)
                        {
                            implements.Add(baseType[tIdx]);
                        }
                        else
                        {
                            extends.Add(baseType[tIdx]);
                        }
                    }
                }
                else
                {
                    extends = baseType;
                }
                if (extends.Count > 0)
                {
                    sb.Append(" extends ");
                    for (tIdx = 0; tIdx < extends.Count; tIdx++)
                    {

                        if (tIdx != 0) sb.Append(", ");
                        sb.Append(extends[tIdx].ToString());
                    }
                } 
                if (implements.Count > 0)
                {
                    sb.Append(" implements ");
                    for (tIdx = 0; tIdx < implements.Count; tIdx++)
                    {

                        if (tIdx != 0) sb.Append(", ");
                        sb.Append(implements[tIdx].ToString());
                    }
                }
                
            }
            sb.Append(Environment.NewLine + "{" + Environment.NewLine);
            foreach (TMember mem in members)
            {
                if (!IsInBaseTypes(mem))
                {
                    mem.write(sb, !isInterface);
                }
            }

            if (!isInterface)
                writeInterfaceTypes(sb, true);

            sb.Append("}" + Environment.NewLine + Environment.NewLine);
        }

        private bool IsInBaseTypes(TMember mem)
        {
            if (mem is TMethod)
            {
                var method = (TMethod)mem;
                if (method.isConstructor)
                {
                    return false;
                }
            }
            foreach (var type in baseType)
            {
                var file = Generator.findFileType(type.name);
                if (file == null)
                {
                    continue;
                }
                foreach (var member in file.members)
                {
                    if (member.name == mem.name)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        public bool isSupplemental()
        {
            return getSupplementalName() != "";
        }

        public string getSupplementalName()
        {
            foreach (var attr in attributes)
                if (attr is TNameAttribute && (attr as TNameAttribute).name == "Supplemental") return (attr as TNameAttribute).value;
            return "";
        }

        public bool isDelegate()
        {
            foreach (var attr in attributes)
            {
                if (attr is TNameAttribute)
                {
                    var nameAttr = attr as TNameAttribute;
                    if (nameAttr.name == "Callback")
                    {
                        return true;
                    }
                }
            }
            foreach (var mem in members)
            {
                if (mem.name == "handleEvent") return true;
            }
            return false;
        }

        public void writeInterfaceTypes(StringBuilder sb, bool isPartOfClass = false)
        {
            for (var i = 0; i < baseType.Count; i++)
            {
                var t = Generator.findFileType(baseType[i].name);
                if (t != null && t.isInterface)
                {
                    foreach (var mem in t.members)
                    {
                        mem.write(sb, isPartOfClass);
                    }
                    t.writeInterfaceTypes(sb, isPartOfClass);
                }
            }
        }

        public void write(string File)
        {
            StringBuilder sb = new StringBuilder();
            write(sb);
            LarneFunctions.StringSaveToFile(File, sb.ToString());
        }

        public void checkAlias()
        {
            //switch (Name) {
            //  case "HTMLImageElement":
            //    AliasName = "Image";
            //    break;
            //}
            //if (name.StartsWith("HTML")) {
            //  aliasName = name;
            //  name = name.Replace("HTML", "Html");
            //}
        }

        public TAttributeList attributes = new TAttributeList();

        public bool isInterface = false;
        public bool isVector = false;

        public void generateMemberComments()
        {
            members.FindAll(c => c is TMethod).Cast<TMethod>().ToList().ForEach(m => GenerateMethodComments(m));
            members.FindAll(c => c is TProperty).Cast<TProperty>().ToList().ForEach(p => GeneratePropertyComments(p));
        }

        private void GeneratePropertyComments(TProperty prop)
        {
            if (prop.resultType.name == "Function")
            {
                return;
            }
            var type = Generator.findFileType(prop.resultType.name);
            if (type != null)
            {
                prop.comments.Add("@see " + type.ns.name + "." + type.name);
            }
        }

        private void GenerateMethodComments(TMethod method)
        {
            if (method.isConstructor)
            {
                method.comments.Add("Creates a new <code>" + name + "</code> instance.");
            }
            method.parameters.ForEach(p => AddParameterTypeReferenceComment(p, method));
            var paramCommentsExist = false;
            foreach (var cmt in method.comments)
            {
                if (cmt.StartsWith("@param"))
                {
                    paramCommentsExist = true;
                    break;
                }
            }
            if (!paramCommentsExist)
            {
                method.parameters.ForEach(p => AddParameterComment(p, method));
            }
            if (method.resultType.name != "void")
            {
                var exists = false;
                foreach (var cmt in method.comments)
                {
                    if (cmt.StartsWith("@return"))
                    {
                        exists = true;
                    }
                }
                if (!exists)
                {
                    method.comments.Add("@return A <code>" + method.resultType.name + "</code> instance.");
                }
            }
        }

        private void AddParameterTypeReferenceComment(TParameter parameter, TMethod method)
        {
            var type = Generator.findFileType(parameter.name);
            if ((type != null) && (type.name == "Function"))
            {
                method.comments.Add("@see " + type.ns.name + "." + type.name);
            }
        }

        private void AddParameterComment(TParameter parameter, TMethod method)
        {
            var comment = "@param " + parameter.name;
            if (parameter.isOptional())
            {
                comment += " (optional argument, default value is <code>" + TProperty.GetDefaultResult(parameter.type, parameter) + "</code>)";
            }
            method.comments.Add(comment);
        }

        public void disambiguateMethodNames()
        {
            var methodNames = members.FindAll(c => c is TMethod).Select(c => c.name).Distinct().ToList();
            foreach (String methodName in methodNames)
            {
                var doubles = members.Where(c => c.name == methodName).Cast<TMethod>().ToList<TMethod>();
                if (doubles.Count() > 1)
                {
                    if (doubles[0].isConstructor)
                    {
                        continue;
                    }
                    if (hasDifferentParamNames(doubles))
                    {
                        var index = 0;
                        foreach (TMethod method in doubles)
                        {
                            method.aliasName = method.name;
                            method.name += (index++).ToString();
                        }
                    }
                    else
                    {
                        var ordered = doubles.OrderByDescending(c => c.parameters.Count());
                        for (var i = 1; i < ordered.Count(); i++)
                        {
                            members.Remove(ordered.ElementAt(i));
                        }
                    }
                }
            }
        }

        public void mergeConstructors()
        {
            var ctors = members.Where(m => (m is TMethod) && (((TMethod)m).isConstructor)).Cast<TMethod>();
            if (ctors.Count() > 1)
            {
                var ctorLst = ctors.OrderByDescending(c => c.parameters.Count()).ToList<TMethod>();
                var ctor = ctorLst[0];
                var comments = new List<String>();
                comments.Add("This type has multiple constructors, which Actionscript 3 doesn't support.");
                comments.Add("Therefore the constructors have been merged into one with optional parameters that are all typed to '*'");
                comments.Add("The original signatures are as follow:");
                comments.Add(SerializeCtorParams(ctor.parameters));
                var idx = 1;
                foreach (var parameter in ctor.parameters)
                {
                    parameter.name = "arg" + (idx++).ToString();
                    parameter.type.name = "*";
                    parameter.type.isArray = false;
                    if (!parameter.isOptional())
                    {
                        var attr = new TNameAttribute();
                        attr.name = "Optional";
                        parameter.attributes.Add(attr);
                    }
                }
                for (var i = 1; i < ctorLst.Count(); i++)
                {
                    comments.Add(SerializeCtorParams(ctorLst[i].parameters));
                    members.Remove(ctorLst[i]);
                }
                ctor.comments.InsertRange(0, comments);
            }
        }

        private string SerializeCtorParams(TParameterList tParameterList)
        {
            var result = "(";
            foreach (var parameter in tParameterList)
            {
                if (result.Length > 1)
                {
                    result += ", ";
                }
                result += parameter.name + ':' + parameter.type.ToString();
            }
            result += ");";
            return name + result;
        }

        private bool hasDifferentParamNames(IEnumerable<TMethod> methods)
        {
            methods = methods.OrderByDescending(c => c.parameters.Count());
            TParameterList parameters = null;
            foreach (var method in methods)
            {
                if (parameters != null)
                {
                    for (var i = 0; i < parameters.Count(); i++)
                    {
                        if ((parameters.Count() < i) && ((method.parameters[i].name != parameters[i].name) || (method.parameters[i].type.name != parameters[i].type.name)))
                        {
                            return true;
                        }
                    }
                }
                parameters = method.parameters;
            }
            return false;
        }

        public void convertToInterface()
        {
            if (isInterface) return;
            isInterface = true;

            for (var i = 0; i < members.Count; i++)
            {
                var mem = members[i];
                if (mem is TField)
                {
                    var prop = new TProperty(this);
                    prop.name = mem.name;
                    //prop.modifier = "";
                    prop.resultType = mem.resultType;
                    prop.canWrite = false;
                    members[i] = prop;
                }
                else
                {
                    //mem.modifier = "";
                }
            }
        }

        public void checkConvertToInterface()
        {
            for (var i = 1; i < baseType.Count; i++)
            {
                var t = Generator.findFileType(baseType[i].name);
                if (t != null) t.convertToInterface();
            }
        }

        public void generateConstructors()
        {
            var memList = new TMemberList();
            foreach (var attr in attributes)
            {
                if (attr is TConstructorAttribute)
                {
                    var ctorAttr = attr as TConstructorAttribute;
                    memList.Insert(0, ctorAttr.constructor);
                }
            }
            if (memList.Count == 0)
            {
                //if (name.StartsWith("Html") && name.EndsWith("Element"))
                //    tryCreateElementMethod(memList, name.Substring(0, name.Length - ("Element".Length)).Substring("Html".Length).ToLower(), name);
                //if (name.StartsWith("Svg") && name.EndsWith("Element"))
                //    tryCreateElementMethod(memList, name.Substring(0, name.Length - ("Element".Length)).Substring("Svg".Length).ToLower(), name);
                foreach (var entry in TransformationConfig.generateElementConstructor)
                {
                    if (name.StartsWith(entry.Item1) && name.EndsWith(entry.Item2))
                        tryCreateElementMethod(memList, name.Substring(0, name.Length - (entry.Item2.Length)).Substring(entry.Item1.Length).ToLower(), name);
                }
            }
            if (memList.Count != 0)
            {
                members.InsertRange(0, memList);
            }
        }

        private void tryCreateElementMethod(TMemberList memList, string tagName, string typeName)
        {
            var mem = createElementMethod(tagName, typeName);
            if (mem != null) memList.Add(mem);
        }

        private TMethod createElementMethod(string tagName, string typeName)
        {
            tagName = getCreateElementMethodTagName(tagName, typeName);
            if (string.IsNullOrEmpty(tagName)) return null;
            var method = new TMethod(this) { name = "ctor", aliasName = "document.createElement('" + tagName + "')" };
            method.jsAttributes.Add("OmitParanthesis", "true");
            method.jsAttributes.Add("OmitNewOperator", "true");
            return method;
        }

        private string getCreateElementMethodTagName(string tagName, string typeName)
        {
            //switch (tagName)
            //{
            //    case "image": return "img";
            //    case "anchor": return "a";
            //    case "tablecaption": return "caption";
            //    case "tablecell": return "td";
            //    case "tablecol": return "col";
            //    case "tablerow": return "tr";
            //    case "tablesection": return "tbody"; //Notice: It can be thead or tfoot, too!
            //    default: return tagName;
            //}

            if (TransformationConfig.generateElementConstructorCorrectName.ContainsKey(typeName))
                return TransformationConfig.generateElementConstructorCorrectName[typeName];
            else
                return tagName;
        }

        public void checkGenerateEnumerator()
        {
            foreach (var attr in attributes)
            {
                if (attr is TNameAttribute)
                {
                    var nameAttr = attr as TNameAttribute;
                    if (nameAttr.name == "IndexedGetter")
                    {

                        var typeName = "";
                        foreach (var mem in members)
                        {
                            if (mem.name == "this")
                            {
                                typeName = mem.resultType.ToString();
                                break;
                            }
                        }
                        if (typeName == "") return;

                        isVector = true;
                    }
                }
            }
        }

        public void removeMembersAlreadyPresentInBaseTypes()
        {
            for (var i = members.Count() - 1; i != -1; i--)
            {
                var member = members[i];
                if (MemberExistsInSubType(baseType, member))
                {
                    members.Remove(member);
                }
            }
        }

        public bool MemberExistsInSubType(TTypeList list, TMember member)
        {
            foreach (var subType in list)
            {
                var fSubType = Generator.findFileType(subType.name);
                if (fSubType != null)
                {
                    if (fSubType.isInterface)
                    {
                        continue;
                    }
                    var result = MemberExistsInType(fSubType, member);
                    if (!result)
                    {
                        return MemberExistsInSubType(fSubType.baseType, member);
                    }
                    else
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        public bool MemberExistsInType(TFileType fSubType, TMember member)
        {
            foreach (var m in fSubType.members)
            {
                if (m.name == member.name)
                {
                    return true;
                }
            }
            return false;
        }

        public void createSubConstructors()
        {
            if (baseType.Count() == 0)
            {
                return;
            }
            var subTypes = baseType;
            foreach (var subType in subTypes)
            {
                var fSubType = Generator.findFileType(subType.name);
                if (fSubType == null)
                {
                    continue;
                }
                var subCTorMemList = new TMemberList();
                foreach (var baseMember in fSubType.members)
                {
                    if (baseMember is TMethod)
                    {
                        var baseMethod = (TMethod)baseMember;
                        if (baseMethod.isConstructor)
                        {
                            var baseCTor = (baseMember as TMethod);
                            var subCTor = new TMethod(this);
                            subCTor.name = baseCTor.name;
                            subCTor.resultType = baseCTor.resultType;
                            subCTor.baseMethod = baseCTor;
                            foreach (var parameter in baseCTor.parameters)
                            {
                                var newParam = new TParameter();
                                newParam.name = parameter.name;
                                newParam.type = parameter.type;
                                newParam.attributes = parameter.attributes;
                                subCTor.parameters.Add(newParam);
                            }
                            subCTorMemList.Add(subCTor);
                        }
                    }
                }
                if (subCTorMemList.Count > 0)
                {
                    members.InsertRange(0, subCTorMemList);
                }
            }
        }

        public void checkProp()
        {
            TMemberList memList = new TMemberList();
            memList.AddRange(members);
            foreach (TMember mem in memList)
            {
                if (mem is TMethod)
                {
                    TMethod func = (TMethod)mem;
                    if ((func.name.StartsWith("get") && func.parameters.Count == 0) || (func.name == "item" || func.name == "namedItem"))
                    {
                        if (func.name == "item" || func.name == "namedItem")
                        {
                            TProperty prop = new TProperty(this);
                            prop.name = "this";
                            prop.Parameters.AddRange(func.parameters);
                            prop.resultType = func.resultType;
                            prop.canRead = true;
                            int idx = members.IndexOf(func);
                            members[idx] = prop;
                        }
                       
                    }
                }
            }
        }
    }

    public abstract class TMember
    {
        public TMember(TFileType parentType)
        {
            this.parentType = parentType;
            resultType = new TType() { name = "void" };
        }

        public bool isPrivate = false;
        public TJsAttributeList jsAttributes = new TJsAttributeList();

        public TFileType parentType;
        public string name = "";
        public string aliasName = "";
        public bool isStatic = false;
        public TType resultType;
        public TAttributeList attributes = new TAttributeList();
        public List<String> comments = new List<String>();

        public abstract void write(StringBuilder sb, bool impl = false);

        public void AddComments(StringBuilder sb)
        {
            if (comments.Count() > 0)
            {
                sb.Append("\t/**" + Environment.NewLine);
                comments.ForEach(c => sb.Append("\t*  " + c + Environment.NewLine));
                sb.Append("\t*/" + Environment.NewLine);
            }
        }
    }

    public class TFragmentMember : TMember
    {
        public TFragmentMember(TFileType parentType) : base(parentType) { }

        public string text = "";

        public override void write(StringBuilder sb, bool impl = false)
        {
            sb.Append(text);
        }
    }

    public class TMethod : TMember
    {
        public TMethod(TFileType parentType) : base(parentType) {
            //if (parentType == null) throw new ArgumentException("parentType");
        }

        public TParameterList parameters = new TParameterList();
        public TMethod baseMethod;

        public override void write(StringBuilder sb, bool impl = false)
        {
            var modifier = "public";
            if (isPrivate) modifier = "private";
            if (isStatic) modifier += " static";
            if (parentType.isInterface && !impl) modifier = "";
            var rType = resultType.ToString();

            var sName = Generator.getName(name);
            if (sName.EndsWith("_"))
            {
                aliasName = name;
            }
            if (isConstructor)
            {
                rType = "";
                sName = Generator.getName(parentType.name);
            }
            if (aliasName != "") jsAttributes.Add("Name", "\"" + aliasName + "\"");
            if (jsAttributes.Count > 0)
            {
                sb.Append("\t[JavascriptMethod(" + jsAttributes + ")]" + Environment.NewLine);
            }
            AddComments(sb);
            sb.Append("\t" + modifier + " function " + sName);
            parameters.write(sb);
            if (!isConstructor)
            {
                sb.Append(":" + rType);
            }
            if (parentType.isInterface && !impl)
            {
                sb.Append(";" + Environment.NewLine);
            }
            else
            {
                sb.Append(" {");
                if ((resultType != null) && (!isConstructor))
                {
                    if (resultType.name != "void")
                    {
                        sb.Append(" return " + TProperty.GetDefaultResult(resultType) + ";");
                    }
                }
                if (isConstructor && baseMethod != null)
                {
                    sb.Append("super(");
                    for (var i = 0; i < baseMethod.parameters.Count; i++)
                    {
                        if (i != 0) sb.Append(", ");
                        sb.Append(baseMethod.parameters[i].name);
                    }
                    sb.Append(");");
                }
                else if (isConstructor)
                {
                    sb.Append("super();");
                }
                sb.Append("}" + Environment.NewLine);
            }
        }

        public bool isConstructor
        {
            get
            {
                return name == "ctor";
            }
        }

        public bool appendParamArray
        {
            get
            {
                foreach (var attr in attributes)
                    if (attr is TNameAttribute && (attr as TNameAttribute).name == "CallWith" && (attr as TNameAttribute).value == "ScriptArguments")
                        return true;
                return false;
            }
        }

    }

    public class TProperty : TMember
    {
        public TProperty(TFileType parentType) : base(parentType) { }

        public bool canRead = true;
        public bool canWrite = true;

        public TParameterList Parameters = new TParameterList();

        public override void write(StringBuilder sb, bool impl = false)
        {
            if (name == "this")
            {
                return;
            }
            sb.Append(Environment.NewLine);

            var pName = Generator.getName(name);
            if (Generator.findFileType(pName) != null)
            {
                pName += "_";
            }

            if (name == parentType.name)
            {
                pName += "_";
            }
            if (pName != name)
            {
                sb.Append("\t" + "[JavascriptProperty(name=\"" + name + "\")]" + Environment.NewLine);
            }
            AddComments(sb);
            var modifier = "public";
            if (isStatic) modifier += " static";
            if (parentType.isInterface && !impl) modifier = "";
            if (canRead)
            {
                sb.Append("\t" + modifier + " function get " + pName + "():" + resultType);
                if (impl)
                {
                    sb.Append(" { return " + GetDefaultResult(resultType) + "; }" + Environment.NewLine);
                }
                else
                {
                    sb.Append(";" + Environment.NewLine);
                }
            }
            if (canWrite)
            {
                sb.Append("\t" + modifier + " function set " + pName + "(value:" + resultType + "):void");
                if (impl)
                {
                    sb.Append(" { }" + Environment.NewLine);
                }
                else
                {
                    sb.Append(";" + Environment.NewLine);
                }
            }
            /*else
            {
                sb.Append("\t" + modifier + " var " + pName + ":" + resultType + ";" + Environment.NewLine);
            }*/

        }

        public static string GetDefaultResult(TType resultType, TParameter parameter=null)
        {
            String result;
            if (parameter != null)
            {
                var attr = parameter.attributes.FindAll(a => a is TNameAttribute).Cast<TNameAttribute>().FirstOrDefault(a => a.name == "Optional");
                if ((attr != null) && (attr.value != null) && attr.value.StartsWith("DefaultIs"))
                {
                    var def = attr.value.Substring("DefaultIs".Length).ToLower();
                    if (def.StartsWith("null"))
                    {
                        def = "null";
                    }
                    return def;
                }
            }
            if ((resultType.isArray) || (resultType.genericType != null))
            {
                return "null";
            }
            switch (resultType.name)
            {
                case "String":
                    result = "''";
                    break;
                case "Boolean":
                    result = "false";
                    break;
                case "int":
                case "uint":
                case "Number":
                    result = "0";
                    break;
                default:
                    result = "null";
                    break;
            }
            return result;
        }
    }

    public class TField : TMember
    {
        public TField(TFileType parentType) : base(parentType) { }
        public string value;

        public override void write(StringBuilder sb, bool impl = false)
        {
            if (parentType.isInterface && !impl)
            {
                return;
            }
            if (name.Length == 1)
            {
                return;
            }
            AddComments(sb);
            var modifier = "public";
            sb.Append("\t" + modifier + " static const " + name + ":" + resultType);
            if (value != null)
            {
                sb.Append(" = " + value);
            }
            sb.Append(";" + Environment.NewLine);
        }
    }

    public class TParameter
    {
        public string name;
        public TType type;
        public bool paramArray = false;
        public TAttributeList attributes = new TAttributeList();

        public bool isOptional()
        {
            foreach (var attr in attributes)
            {
                if (attr is TNameAttribute && (attr as TNameAttribute).name == "Optional") return true;
            }
            return false;
        }

        public void write(StringBuilder sb)
        {
            if (this.paramArray)
            {
                sb.Append("...params");
            }
            else
            {
                sb.Append(Generator.getName(name) + ":" + type.ToString());
                if (isOptional())
                {
                    sb.Append("=");
                    sb.Append(TProperty.GetDefaultResult(type, this));
                }
            }
            //if (isOptional()) {
            //  sb.Append(" = default(" + type.ToString() + ")");
            //}
        }
    }

    public class TParameterList : List<TParameter>
    {

        public bool parametersEquals(TParameterList paramList)
        {
            if (Count != paramList.Count) return false;
            for (var i = 0; i < Count; i++)
            {
                if (this[i].type.name != paramList[i].type.name) return false;
            }
            return true;
        }

        public void write(StringBuilder sb, bool indexer = false)
        {
            if (indexer)
            {
                sb.Append("[");
            }
            else
            {
                sb.Append("(");
            }

            bool f = true;
            foreach (TParameter param in this)
            {
                if (f)
                {
                    f = false;
                }
                else
                {
                    sb.Append(", ");
                }
                param.write(sb);
            }
            if (indexer)
            {
                sb.Append("]");
            }
            else
            {
                sb.Append(")");
            }
        }
    }

    public class TMemberList : List<TMember>
    {
        public void addWithCheck(TMember mem)
        {
            if (mem is TMethod)
                foreach (var m in this)
                {
                    if (m.name == mem.name)
                    {
                        if (m is TMethod)
                        {
                            var met = m as TMethod;
                            if ((mem as TMethod).parameters.parametersEquals(met.parameters))
                            {
                                return;
                            }
                        }
                    }
                }
            Add(mem);
        }

        public TMember find(string name)
        {
            foreach (TMember mem in this)
            {
                if (mem.name == name)
                {
                    return mem;
                }
            }
            return null;
        }
    }

    public class TFileTypeList : List<TFileType>
    {
    }

    public class TType
    {
        public TType()
        {
            Generator.allTypes.Add(this);
        }

        public string name;
        public bool isArray = false;
        public bool isNullable = false;
        public TType genericType;
        public bool isResult = true;

        public bool canCorrect = true;
        public void correctType()
        {
            //trySetNewTypes();
            if (name == "any")
            {
                name = "*";
            }
            if (TParsedFile.isUnknownType(this))
            {
                name = "Object";
            }
        }

        
        private void trySetNewTypes()
        {
            var dict = new Dictionary<string, string>();
            dict.Add("TimeoutHandler", "JsAction");

            if (dict.ContainsKey(name)) name = dict[name];
        }

        public override string ToString()
        {
            if (canCorrect) correctType();
            if (name == "sequence") return genericType.ToString();
            string str = name;
            if (isResult) str = getResultTypeName();
            if (genericType != null) str = "Vector.<" + genericType + ">";
            if (isArray) str = "Vector.<" + str + ">";
            if (name.EndsWith("Callback"))
            {
                str = "Function";
            }
            if (name.EndsWith("Array"))
            {
                if (name.StartsWith("Uint"))
                {
                    str = "Vector.<uint>";
                }
                else if (name.StartsWith("Int"))
                {
                    str = "Vector.<int>";
                }
                else if (name.StartsWith("Float"))
                {
                    str = "Vector.<Number>";
                }
            }
            //if (isNullable && !isArray) str += "?";
            return str;
        }

        public string getResultTypeName()
        {
            switch (name)
            {
                default:
                    return name;
            }
        }
    }

    public class TTypeList : List<TType> { }

    public class TNamespace
    {
        public string name;
        public TFileTypeList types = new TFileTypeList();
        public List<string> importList = new List<string>();

        private TParsedFile file;
        public TNamespace(TParsedFile file)
        {
            this.file = file;
        }

        public void write(StringBuilder sb)
        {
            sb.Append("package " + name + Environment.NewLine);
            sb.Append("{" + Environment.NewLine + Environment.NewLine);
            var imports = new List<String>();
            foreach (TFileType t in types)
            {
                t.baseType.ForEach(st => AddImport(st, imports, t));
                for (var i = 0; i < t.baseType.Count; i++)
                {
                    var subType = Generator.findFileType(t.baseType[i].name);
                    if (subType != null && subType.isInterface)
                    {
                        subType.members.ForEach(m => AddMemberImport(m, imports, t));
                    }
                }
                t.members.ForEach(m => AddMemberImport(m, imports, t));

            }
            imports.ForEach(i => sb.Append("import " + i + ";" + Environment.NewLine));
            
            sb.Append(Environment.NewLine);
            
            types.ForEach(t => t.write(sb));

            sb.Append("}");
        }

        public void AddMemberImport(TMember member, List<String> imports, TFileType parentType)
        {
            if (member is TMethod)
            {
                var method = (TMethod)member;
                method.parameters.ForEach(p => AddImport(p.type, imports, parentType));
            }
            AddImport(member.resultType, imports, parentType);
        }

        private void AddImport(TType tType, List<String> imports, TFileType parentType)
        {
            if (parentType.name == tType.name)
            {
                return;
            }

            var typeName = tType.name;
            if (tType.genericType != null) typeName = tType.genericType.ToString();

            var fType = Generator.findFileType(typeName);
            if ((fType == null) || (!fType.CheckExport()))
            {
                return;
            }
            if (fType.ns.name == parentType.ns.name)
            {
                return;
            }
            if (!isSimpleType(tType.name))
            {
                var import = fType.ns.name + '.' + typeName;
                if (!imports.Contains(import))
                {
                    imports.Add(import);
                }
            }

        }

        private bool isSimpleType(string p)
        {
            switch (p)
            {
                case "int":
                case "uint":
                case "Number":
                case "String":
                case "Object":
                case "Boolean":
                case "Array":
                case "*":
                case "void":
                    return true;
                default:
                    return false;
            }
        }
    }

    public class TNamespaceList : List<TNamespace>
    {

        private TParsedFile file;
        public TNamespaceList(TParsedFile file)
        {
            this.file = file;
        }

        public void write(StringBuilder sb)
        {
            var path = file.inFile.Replace(Program.idlInDirectory, "").Replace("\\", "/");
            sb.Append(@"
/*******************************************************************************************************

  This file was auto generated with the tool 'WebIDLParser'

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/{FILE}

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modify the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) {YEAR} Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com) for the Randori
  framework for large enterprise Javascript applications.

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the 'Software'), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/
".Replace("{DATE}", DateTime.Now.ToString("r")).Replace("{FILE}", path).Replace("'", "\"").Replace("{YEAR}", DateTime.Now.Year.ToString()));
            sb.Append(Environment.NewLine);
            sb.Append(Environment.NewLine);
            foreach (TNamespace ns in this)
            {
                ns.write(sb);
            }
        }
    }

    public class TAttribute { }

    public class TNameAttribute : TAttribute
    {
        public string name = "";
        public string value = "";
    }

    public class TConstructorAttribute : TAttribute
    {
        public TConstructorAttribute(TMethod constructor)
        {
            this.constructor = constructor;
        }

        public TMethod constructor;
        public string name = "";
    }

    public class TAttributeList : List<TAttribute> { }

    public class TJsAttribute
    {
        public string name;
        public string value;
    }
    public class TJsAttributeList : List<TJsAttribute>
    {
        public void Add(string name, string value)
        {
            var attr = find(name);
            if (attr == null)
                Add(new TJsAttribute() { name = name, value = value });
            else
                attr.value = value;
        }

        public TJsAttribute find(string name)
        {
            foreach (var attr in this)
                if (attr.name == name) return attr;
            return null;
        }

        public override string ToString()
        {
            var sb = new StringBuilder();
            for (var i = 0; i < Count; i++)
            {
                if (i != 0) sb.Append(", ");
                sb.Append(this[i].name.ToLower() + "=" + this[i].value);
            }
            return sb.ToString();
        }
    }

}