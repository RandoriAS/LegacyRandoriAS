using System;
using System.CodeDom;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;

namespace JQueryUIParser
{
    class Program
    {
        private static string header = @"/***" + Environment.NewLine +
@" * Copyright 2013 LTN Consulting, Inc. /dba Digital PrimatesÂ®" + Environment.NewLine +
@" * " + Environment.NewLine +
@" * Licensed under the Apache License, Version 2.0 (the 'License');" + Environment.NewLine +
@" * you may not use this file except in compliance with the License." + Environment.NewLine +
@" * You may obtain a copy of the License at" + Environment.NewLine +
@" * " + Environment.NewLine +
@" * http://www.apache.org/licenses/LICENSE-2.0" + Environment.NewLine +
@" * " + Environment.NewLine +
@" * Unless required by applicable law or agreed to in writing, software" + Environment.NewLine +
@" * distributed under the License is distributed on an 'AS IS' BASIS," + Environment.NewLine +
@" * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied." + Environment.NewLine +
@" * See the License for the specific language governing permissions and" + Environment.NewLine +
@" * limitations under the License." + Environment.NewLine +
@" * " + Environment.NewLine +
@" * " + Environment.NewLine +
@" * !!!! THIS IS A GENERATED FILE, DO NOT MAKE ANY CHANGES TO IT MANUALLY !!!!" + Environment.NewLine +
@" * The XML files at this location: https://github.com/jquery/api.jqueryui.com were" + Environment.NewLine +
@" * used to generate this class" + Environment.NewLine +
@" * @author Randori JQueryUI generator" + Environment.NewLine +
@"*/";
        //Where the .as file will be saved
        public static string OutputDirectory = @"C:\projects\RandoriAS\JQueryUI\src\randori\jqueryui\";

        //api.jquery.com/entries directory:
        public static string JQueryEntriesDir = @"C:\projects\api.jqueryui.com\entries\";

        private static Dictionary<String, CodeTypeDeclaration> ClassLookup = new Dictionary<String, CodeTypeDeclaration>();
        private static Dictionary<String, String> ImportLookup = new Dictionary<String, String>();

        private static ClassBuilder Builder = new ClassBuilder{ PackageName = "randori.jqueryui" };

        static void Main(string[] args)
        {
            ImportLookup["Element"] = "randori.webkit.dom.Element";
            ImportLookup["Document"] = "randori.webkit.dom.Document";
            ImportLookup["XMLHttpRequest"] = "randori.webkit.xml.XMLHttpRequest";
            ImportLookup["Vector.<Element>"] = "randori.webkit.dom.Element";

            if (Directory.Exists(OutputDirectory) == false)
            {
                Directory.CreateDirectory(OutputDirectory);
            }
            else
            {
                var files = Directory.EnumerateFiles(OutputDirectory).ToList<string>();
                files.ForEach(f => File.Delete(f));
            }

            ReadSourceDirectory().ForEach(e => Entry2Class(e));

            foreach(var key in ClassLookup.Keys)
            {
                var Class = ClassLookup[key];
                AddImports(Class, Builder.Class2Unit[key]);
            }

            var provider = new AS3CodeProvider(Builder);
            foreach (var unit in Builder.Units)
            {
                SerializeClass(unit, provider);
            }

            Console.WriteLine("Finished, press any key...");
            Console.ReadKey();

        }

        private static void AddImports(CodeTypeDeclaration classDef, CodeCompileUnit unit)
        {
            CodeMemberField field;
            CodeMemberMethod method;
            foreach (CodeTypeMember member in classDef.Members)
            {
                if (member is CodeMemberField)
                {
                    field = (CodeMemberField)member;
                    if (ImportLookup.ContainsKey(field.Type.BaseType) == true)
                    {
                        Builder.AddImport(ImportLookup[field.Type.BaseType], unit);
                    }
                }
                else if (member is CodeMemberMethod)
                {
                    method = (CodeMemberMethod)member;
                    if (ImportLookup.ContainsKey(method.ReturnType.BaseType) == true)
                    {
                        Builder.AddImport(ImportLookup[method.ReturnType.BaseType], unit);
                    }
                    foreach (CodeParameterDeclarationExpression parameter in method.Parameters)
                    {
                        if (ImportLookup.ContainsKey(parameter.Type.BaseType) == true)
                        {
                            Builder.AddImport(ImportLookup[parameter.Type.BaseType], unit);
                        }
                    }
                }
            }
        }

        private static void SerializeClass(CodeCompileUnit compileUnit, AS3CodeProvider provider)
        {
            var options = new CodeGeneratorOptions();
            var FileName = ((ClassNameDef)compileUnit.UserData["NameDef"]).FileName;
            FileName = Path.Combine(OutputDirectory, FileName);

            StreamWriter writer = new StreamWriter(FileName, false);
            writer.WriteLine(header);
            options.IndentString = "\t";
            options.VerbatimOrder = false;
            try
            {
                provider.GenerateCodeFromCompileUnit(compileUnit, writer, options);
            }finally
            {
                 writer.Close();
            }

            Console.WriteLine("Created file: " + FileName);
        }

        private static string FormatFromHypenatedName(string FileName)
        {
            var parts = FileName.Split('-');
            var name = "";
            foreach (var part in parts)
            {
                name += part.Substring(0, 1).ToUpper() + part.Substring(1);
            }
            return name;
        }

        private static string GetInnerXML(XElement parent)
        {
            var reader = parent.CreateReader();
            reader.MoveToContent();
            return reader.ReadInnerXml();
        }

        private static CodeTypeDeclaration Entry2Class(string EntryPath)
        {
            var xdoc = XDocument.Load(EntryPath);
            var FileName = Path.GetFileNameWithoutExtension(EntryPath);
            ClassNameDef ClassName = CreateClassName(FileName, xdoc);
            if (ClassName == null)
            {
                Console.WriteLine("Skipped file: " + FileName);
                return null;
            }
            CodeTypeDeclaration CurrentClass = null;
            if (ClassLookup.ContainsKey(ClassName.ActionScriptName) == false)
            {
                CurrentClass = Builder.CreateClass(ClassName);
                ClassLookup[ClassName.ActionScriptName] = CurrentClass;
            }
            else
            {
                CurrentClass = ClassLookup[ClassName.ActionScriptName];
            }
            xdoc.Descendants("entry").ToList<XElement>().ForEach(e => AddMembers(CurrentClass, e));
            return CurrentClass;
        }

        private static void AddMembers(CodeTypeDeclaration CurrentClass, XElement EntryElement)
        {
            if (EntryElement.Element("desc") != null)
            {
                CurrentClass.Comments.Add(new CodeCommentStatement(GetInnerXML(EntryElement.Element("desc")), true));
            }
            if (EntryElement.Element("longdesc") != null)
            {
                SplitCommentLines(GetInnerXML(EntryElement.Element("longdesc")), CurrentClass.Comments);
            }
            EntryElement.Elements("options").ToList().ForEach(opts => opts.Elements("option").ToList().ForEach(opt => AddOptions(CurrentClass, opt)));
            XNamespace ns = "http://www.w3.org/2003/XInclude";
            EntryElement.Elements("options").ToList().ForEach(opts => opts.Elements(ns+"include").ToList().ForEach(inc => AddOptionFromIncludeFile(CurrentClass, inc)));

            EntryElement.Elements("methods").ToList().ForEach(opts => opts.Elements("method").ToList().ForEach(m => AddMethod(CurrentClass, m)));
            EntryElement.Elements("methods").ToList().ForEach(opts => opts.Elements(ns + "include").ToList().ForEach(inc => AddMethodFromIncludeFile(CurrentClass, inc)));

            EntryElement.Elements("events").ToList().ForEach(evts => evts.Elements("event").ToList().ForEach(e => AddEvent(CurrentClass, e)));
        }

        private static void AddEvent(CodeTypeDeclaration CurrentClass, XElement EventElement)
        {
            var field = Builder.AddProperty(CurrentClass, "on"+EventElement.Attribute("name").Value, "Function");
            field.Comments.Add(new CodeCommentStatement("Event:", true));
            AddMemberComment(CurrentClass.Name, EventElement, field.Comments);
        }

        private static void AddMethod(CodeTypeDeclaration CurrentClass, XElement Method)
        {
            var MethodName = Method.Attribute("name").Value;
            var SignatureCount = Method.Elements("signature").Count();
            var type = "void";
            if (Method.Attribute("return") != null)
            {
                type = TranslateType(Method.Attribute("return").Value);
            }
            if (SignatureCount == 0)
            {
                var method = Builder.AddMethod(CurrentClass, MethodName, type);
                if (Method.Element("desc") != null)
                {
                    AddMemberComment(CurrentClass.Name, Method, method.Comments);
                }
            }
            else
            {
                Method.Elements("signature").ToList().ForEach(s => AddMethodFromSignature(CurrentClass, MethodName, s, type));
            }
        }

        private static void AddMethodFromSignature(CodeTypeDeclaration CurrentClass, string MethodName, XElement MethodElement, string type)
        {
            if (MethodElement.Attribute("return") != null)
            {
                type = TranslateType(MethodElement.Attribute("return").Value);
            }
            var method = Builder.AddMethod(CurrentClass, MethodName, type);
            AddMemberComment(CurrentClass.Name, MethodElement, method.Comments);
            MethodElement.Elements("argument").ToList().ForEach(a => AddArgumentFromElement(method, a));
        }

        private static void AddArgumentFromElement(CodeMemberMethod method, XElement Argument)
        {
            var type = "*";
            if (Argument.Attribute("type") != null)
            {
                type = TranslateType(Argument.Attribute("type").Value);
            }
            else if (Argument.Elements("type").Count() == 1)
            {
                type = Argument.Element("type").Value;
            }
            var parameter = Builder.AddParameter(Argument.Attribute("name").Value, type, method, null, false);
            if (Argument.Attribute("desc") != null)
            {
                method.Comments.Add(new CodeCommentStatement("@param " + Argument.Attribute("name").Value + " " + Argument.Attribute("desc").Value));
            }
        }

        private static void AddOptionFromIncludeFile(CodeTypeDeclaration CurrentClass, XElement inc)
        {
            var FullPath = Path.Combine(JQueryEntriesDir, inc.Attribute("href").Value);
            if (File.Exists(FullPath))
            {
                var xdoc = XDocument.Load(FullPath);
                AddSinglePropertyFromOptionElement(CurrentClass, xdoc.Root);
            }
        }

        private static void AddMethodFromIncludeFile(CodeTypeDeclaration CurrentClass, XElement inc)
        {
            var FullPath = Path.Combine(JQueryEntriesDir, inc.Attribute("href").Value);
            if (File.Exists(FullPath))
            {
                var xdoc = XDocument.Load(FullPath);
                AddMethod(CurrentClass, xdoc.Root);
            }
        }

        private static void AddOptions(CodeTypeDeclaration CurrentClass, XElement Option)
        {
            CodeMemberField field;
            var multiples = (Option.Elements("type").Count() > 1);
            var Name = Option.Attribute("name").Value;
            if (multiples)
            {
                field = Builder.AddProperty(CurrentClass, Name, "Object");
                field.UserData["IsAsterisk"] = true;
                if (Option.Element("desc") != null)
                {
                    AddMemberComment(CurrentClass.Name, Option, field.Comments);
                }
                Option.Elements("type").Cast<XElement>().ToList<XElement>().ForEach(t => AddOption(CurrentClass, t, Name, multiples));
            }
            else
            {
                AddSinglePropertyFromOptionElement(CurrentClass, Option);
            }
        }

        private static void AddSinglePropertyFromOptionElement(CodeTypeDeclaration CurrentClass, XElement Option)
        {
            var type = "";
            if (Option.Attribute("type") != null)
            {
                type = TranslateType(Option.Attribute("type").Value);
            }
            else
            {
                type = TranslateType(Option.Element("type").Attribute("name").Value);
            }
            var Name = Option.Attribute("name").Value;
            var field = Builder.AddProperty(CurrentClass, Name, type);
            if (Option.Element("desc") != null)
            {
                AddMemberComment(CurrentClass.Name, Option, field.Comments);
            }
            if (Name == "heightStyle")
            {
                AddHeightStyleEnum(field, Option.Element("desc").Descendants("li").ToList());
                field.Comments.Add(new CodeCommentStatement("Use the <code>HeightStyles</code> enumeration to assign a valid value.", true));
                ((CodeCommentStatementCollection)field.UserData["references"]).Add(new CodeCommentStatement("@see HeightStyles", true));
            }
        }

        private static void AddMemberComment(string PlaceholderName, XElement MemberElement, CodeCommentStatementCollection Comments)
        {
            if (MemberElement.Element("desc") != null)
            {
                var desc = GetInnerXML(MemberElement.Element("desc"));
                desc = desc.Replace("<placeholder name=\"name\" />", "<code>" + PlaceholderName + "</code>");
                desc = desc.Replace("<desc>", "").Replace("</desc>", "");
                SplitCommentLines(desc.Trim(), Comments);
            }
        }

        private static void AddHeightStyleEnum(CodeMemberField field, List<XElement> RawEnumValues)
        {
            if (Builder.GetClassByName("HeightStyles") == null)
            {
                var NameDef = new ClassNameDef() { ActionScriptName = "HeightStyles" };
                var EnumClass = Builder.CreateClass(NameDef);
                RawEnumValues.ForEach(v => CreateEnumValue(EnumClass, v));
            }
        }

        private static void CreateEnumValue(CodeTypeDeclaration EnumClass, XElement Value)
        {
            var EnumValue = Value.Element("code").Value.Replace("\"","");
            var EnumValueName = EnumValue.ToUpper();
            var field = Builder.AddProperty(EnumClass, EnumValueName, "String");
            field.Attributes = (field.Attributes & ~MemberAttributes.ScopeMask) | MemberAttributes.Static & MemberAttributes.Const;
            field.InitExpression = new CodePrimitiveExpression(EnumValue);
            field.Comments.Add(new CodeCommentStatement(Value.Value, true));
        }

        private static void AddOption(CodeTypeDeclaration CurrentClass, XElement type, string Name, bool multiples)
        {
            var AttrName = (type.Attribute("name") != null) ? "name" : "nmae";
            if (type.Attribute(AttrName) != null)
            {
                var TypeName = type.Attribute(AttrName).Value;
                if (multiples)
                {
                    Name += TypeName;
                }
                var field = Builder.AddProperty(CurrentClass, Name, TranslateType(TypeName));
                if (type.Element("desc") != null)
                {
                    AddMemberComment(CurrentClass.Name, type, field.Comments);
                }
            }
        }

        private static ClassNameDef CreateClassName(String FileName, XDocument xdoc)
        {
            ClassNameDef result = new ClassNameDef();
            String ClassName = null;
            if ((xdoc.Root.Attribute("type") != null) && (xdoc.Root.Attribute("type").Value == "widget"))
            {
                ClassName = CapitalizeName(xdoc.Root.Attribute("name").Value);
            }
            else if (FileName.IndexOf('.') > -1)
            {
                var parts = FileName.Split('.');
                if (parts[0] != "jQuery")
                {
                    ClassName = CapitalizeName(parts[0]);
                }
                else
                {
                    ClassName = "JQueryStatic";
                    result.JavascriptName = "JQuery";
                }
            }
            else
            {
                if (xdoc.Root.Attributes("return").Count() > 0)
                {
                    ClassName = CapitalizeName(xdoc.Root.Attribute("return").Value);
                    result.JavascriptName  = ClassName;
                    if (ClassName.Length == 0)
                    {
                        return null;
                    }
                }
                else
                {
                    if (xdoc.Root.Name == "entries")
                    {
                        ClassName = CapitalizeName(xdoc.Root.Elements("entry").ToList<XElement>()[0].Attribute("return").Value);
                    }
                    else
                    {
                        return null;
                    }
                }
            }
            ClassName = TranslateClassName(ClassName);
            ClassName = CapitalizeName(ClassName);
            result.ActionScriptName = ClassName;
            if (ClassName == "JQueryUI")
            {
                result.Extends = "JQuery";
            }
            return result;
        }

        private static CodeCommentStatement JoinCommentLines(string comment)
        {
            var lines = Regex.Split(comment, "[\r\n]+");
            return new CodeCommentStatement(String.Join(" ", lines), true);
        }

        private static CodeCommentStatementCollection SplitCommentLines(string comment, CodeCommentStatementCollection Collection=null)
        {
            var lines = Regex.Split(comment, "[\r\n]+");
            var result = (Collection == null) ? new CodeCommentStatementCollection() : Collection;
            lines.ToList<String>().ConvertAll(c => new CodeCommentStatement(c.Trim(), true)).ForEach(c => result.Add(c));
            return result;
        }

        private static string TranslateClassName(string name)
        {
            if (name == "JQuery")
            {
                name = "JQueryUI";
            }
            return name;
        }

        private static string TranslateName(string name)
        {
            return name;
        }

        private static string TranslateType(string type, bool isParameter=false)
        {
            if ((type == null) ||(type == "") || (type == "undefined"))
            {
                type = (isParameter == true) ? "*" : "void";
            }
            if (type.IndexOf(' ') > -1)
            {
                type = type.Substring(0, type.IndexOf(' '));
                type = CapitalizeName(type);
            }
            else if (type == "Anything")
            {
                type = "*";
            }
            else if (type == "Integer")
            {
                type = "int";
            }
            else if (type == "XMLDocument")
            {
                type = "Element";
            }
            else if (type == "HTML")
            {
                type = "Element";
            }
            else if (type == "DOM")
            {
                type = "Element";
            }
            else if (type == "Elements")
            {
                type = "Vector.<Element>";
            }
            else if (type.ToLower() == "jqxhr")
            {
                return "XMLHttpRequest";
            }
            else if (type == "Selector")
            {
                return "String";
            }
            else if (type.ToLower() == "plainobject")
            {
                return "Object";
            }
            else if (type.ToLower() == "jquery")
            {
                return "JQueryUI";
            }
            else if (type.IndexOf(',') > -1)
            {
                type = "*";
            }
            else
            {
                type = CapitalizeName(type);
            }
            return type;
        }

        private static void CreateParametersFromIncludeFiles(XElement elm, CodeMemberMethod method)
        {
            XNamespace ns = "http://www.w3.org/2003/XInclude";
            var includes = elm.Elements(ns + "include").ToList<XElement>();
            includes.ForEach(i => CreateParameterFromIncludeFile(i.Attribute("href").Value, method));
        }

        private static void CreateParameterFromIncludeFile(string path, CodeMemberMethod method)
        {
            var FullPath = Path.Combine(JQueryEntriesDir, path);
            if (File.Exists(FullPath))
            {
                var FileName = Path.GetFileNameWithoutExtension(FullPath);
            }
        }

        private static string CapitalizeName(string Input)
        {
            if (Input.Length > 0)
            {
                return Input.Substring(0, 1).ToUpper() + Input.Substring(1);
            }
            else
            {
                return Input;
            }
        }

        private static string UncapitalizeName(string Input)
        {
            if (Input.Length > 0)
            {
                return Input.Substring(0, 1).ToLower() + Input.Substring(1);
            }
            else
            {
                return Input;
            }
        }

        private static List<string> ReadSourceDirectory()
        {
            return Directory.EnumerateFiles(JQueryEntriesDir).ToList<String>();
        }
    }
}
