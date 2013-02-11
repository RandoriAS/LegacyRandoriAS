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
using System.Xml.Linq;

namespace ConsoleApplication1
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
@" * The XML files at this location: https://github.com/jquery/api.jquery.com were" + Environment.NewLine +
@" * used to generate this class" + Environment.NewLine +
@" * @author Randori JQuery generator" + Environment.NewLine +
@"*/";
        //Where the .as file will be saved
        public static string OutputDirectory = @"C:\projects\RandoriAS\JQuery\src\randori\jquery\";

        //api.jquery.com/entries directory:
        public static string JQueryEntriesDir = @"C:\projects\api.jquery.com\entries\";

        private static Dictionary<String, CodeTypeDeclaration> ClassLookup = new Dictionary<String, CodeTypeDeclaration>();
        private static Dictionary<String, String> ImportLookup = new Dictionary<String, String>();

        private static ClassBuilder Builder = new ClassBuilder{ PackageName = "randori.jquery" };

        static void Main(string[] args)
        {
            ImportLookup["Element"] = "randori.webkit.dom.Element";
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

            var classDefPromise = ClassLookup["Promise"];
            var classDefDeferred = ClassLookup["Deferred"];
            AddMethodsToPromise(classDefPromise, classDefDeferred);
            
            foreach(var key in ClassLookup.Keys)
            {
                var Class = ClassLookup[key];
                AddImports(Class, Builder.Class2Unit[key]);
                NormalizeMethods(Class);
                if (Class.Name == "JQueryStatic")
                {
                    var method = Builder.AddMethod(Class, "J", "JQuery");
                    var parameter = Builder.AddParameter("list", "object[]", method, null, false);
                    parameter.UserData["IsRestParams"] = true;
                    Builder.AddMethodAttributeArgument(method, "name", "");
                    Class.Members.Cast<CodeTypeMember>().ToList<CodeTypeMember>().ForEach(m => m.Attributes = m.Attributes | MemberAttributes.Static);
                }
            }

            var provider = new AS3CodeProvider();
            foreach (var unit in Builder.Units)
            {
                SerializeClass(unit, provider);
            }

            Console.WriteLine("Finished, press any key...");
            Console.ReadKey();

        }

        private static void NormalizeMethods(CodeTypeDeclaration classDef)
        {
            var methods = classDef.Members.Cast<CodeTypeMember>().ToList<CodeTypeMember>().FindAll(c => c is CodeMemberMethod).Cast<CodeMemberMethod>().ToList<CodeMemberMethod>();
            methods.ForEach(c => ProcessParameter((CodeMemberMethod)c));
            DisambiguateMethodNames(methods);
            AddAttributesForRenamedMethod(methods);
        }

        private static void AddAttributesForRenamedMethod(List<CodeMemberMethod> methods)
        {
            methods.FindAll(m => m.Name != (string)m.UserData["ActionscriptName"]).ForEach(m => Builder.AddMethodAttributeArgument(m, "name", m.Name));
        }

        private static void DisambiguateMethodNames(List<CodeMemberMethod> methods)
        {
            var multiples = methods.FindAll(m => methods.FindAll(m1 => m1.Name == m.Name).Count > 1).Select(c => c.Name).Distinct().Cast<String>().ToList<String>();
            multiples.ForEach(n => DoName(n, methods));
        }

        private static void DoName(string Name, List<CodeMemberMethod> methods)
        {
            var index = 0;
            methods.FindAll(m => m.Name == Name).ForEach(m => m.UserData["ActionscriptName"] += (++index > 1) ? index.ToString() : "");
        }

        private static void ProcessParameter(CodeMemberMethod codeMemberMethod)
        {
            CheckOptionalMethodParameters(codeMemberMethod.Parameters);
            DisambiguateMethodParameterNames(codeMemberMethod.Parameters);
        }

        private static void DisambiguateMethodParameterNames(CodeParameterDeclarationExpressionCollection parameters)
        {
            var list = parameters.Cast<CodeParameterDeclarationExpression>().ToList<CodeParameterDeclarationExpression>();
            list.ForEach(p => DisambiguateMethodParameterName(p.Name, list));
        }

        private static void DisambiguateMethodParameterName(string Name, List<CodeParameterDeclarationExpression> parameters)
        {
            var namedParams = parameters.FindAll(p => p.Name == Name);
            if (namedParams.Count > 1)
            {
                int index = 0;
                namedParams.ForEach(p => p.Name += (++index).ToString());
            }
        }

        private static void CheckOptionalMethodParameters(CodeParameterDeclarationExpressionCollection parameters)
        {
            var startChanging = false;
            foreach (CodeParameterDeclarationExpression parameter in parameters)
            {
                if (!startChanging)
                {
                    startChanging = Builder.IsOptionalParameter(parameter);
                }
                else
                {
                    Builder.MarkParameterAsOptional(parameter);
                }
            }
        }

        private static void AddMethodsToPromise(CodeTypeDeclaration classDefPromise, CodeTypeDeclaration classDefDeferred)
        {
            List<String> methodNames = new List<string>();
            methodNames.Add("then");
            methodNames.Add("done");
            methodNames.Add("fail");
            methodNames.Add("always");
            methodNames.Add("pipe");
            methodNames.Add("progress");
            methodNames.Add("state");
            foreach (var name in methodNames)
            {
                CopyMethod(name, classDefPromise, classDefDeferred);
            }
        }

        private static void CopyMethod(string name, CodeTypeDeclaration destination, CodeTypeDeclaration source)
        {
            destination.Members.AddRange(GetMethodsWithNameLike(source, name));
        }

        private static CodeTypeMemberCollection GetMethodsWithNameLike(CodeTypeDeclaration source, string name)
        {
            var result = new CodeTypeMemberCollection();
            foreach (CodeTypeMember method in source.Members)
            {
                if ((method is CodeMemberMethod) && (method.Name.StartsWith(name)))
                {
                    result.Add(method);
                }
            }
            return result;

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

        private static CodeTypeDeclaration Argument2Class(string ArgumentPath)
        {
            var FileName = Path.GetFileNameWithoutExtension(ArgumentPath);
            var xdoc = XDocument.Load(ArgumentPath);
            if ((xdoc.Root.Attribute("type") != null) && (xdoc.Root.Attribute("type").Value == "PlainObject"))
            {
                return CreateArgumentObjectClass(FileName, xdoc);
            }
            return null;
        }

        private static CodeTypeDeclaration CreateArgumentObjectClass(string RawClassName, XDocument xdoc)
        {
            var Name = FormatFromHypenatedName(RawClassName);
            if (ClassLookup.ContainsKey(Name))
            {
                return ClassLookup[Name];
            }
            var NameDef = new ClassNameDef() {ActionScriptName = Name, Extends = "Argument" };
            var classDef = Builder.CreateClass(NameDef);
            ClassLookup[Name] = classDef;
            xdoc.Root.Elements("property").ToList<XElement>().ForEach(e => AddMemberFromPropertyElement(classDef, e));
            return classDef;
        }

        private static void AddMemberFromPropertyElement(CodeTypeDeclaration classDef, XElement elm)
        {
            var PropertyName = elm.Attribute("name").Value;
            var type = "";
            var defaultValue = "";
            bool isAsterisk = false;
            if (elm.Attribute("type") != null)
            {
                type = TranslateType(elm.Attribute("type").Value);
                if (type == "*")
                {
                    type = "Object";
                    isAsterisk = true;
                }
                if ((type == "PlainObject") && (elm.Elements("property").Count() == 0))
                {
                    type = "Object";
                }
                else if ((type == "PlainObject") && (elm.Elements("property").Count() > 0))
                {
                    type = CreateTypedObjectForPlainObject(PropertyName, elm);
                }
            }
            else
            {
                type = "Object";
                isAsterisk = true;
            }
            if (elm.Attribute("default") != null)
            {
                defaultValue = elm.Attribute("default").Value;
            }

            var member = Builder.AddProperty(classDef, PropertyName, type);
            if (isAsterisk)
            {
                member.UserData["IsAsterisk"] = true;
            }
            member.Comments.Add(new CodeCommentStatement(elm.Element("desc").Value.Trim(), true));
            if ((type == "Function") && (elm.Elements("argument").Count() > 0))
            {
                CreateCommentsAndObjectsForFunctionArguments(member, elm);
            }
        }

        private static void CreateCommentsAndObjectsForFunctionArguments(CodeMemberField member, XElement elm)
        {
            var args = elm.Elements("argument").ToList<XElement>();
            member.Comments.Add(new CodeCommentStatement("<br/>The signature of this function needs to be as follows:<br/>", true));
            var comment = "Function(";
            var idx = 0;
            var descriptions = new CodeCommentStatementCollection();
            descriptions.Add(new CodeCommentStatement("<ul>", true));
            var references = new CodeCommentStatementCollection();
            foreach (var arg in args)
            {
                if (idx++ > 0)
                {
                    comment += ", ";
                }
                var type = "";
                if ((arg.Attribute("type").Value == "PlainObject") && (arg.Elements("property").Count() > 0))
                {
                    type = CreateTypedObjectForPlainObject(arg.Attribute("name").Value, arg);
                    references.Add(new CodeCommentStatement("@see randori.jquery." + type, true));
                }
                else
                {
                    type = TranslateType(arg.Attribute("type").Value);
                }
                comment += arg.Attribute("name").Value + ":" + type;
                descriptions.Add(new CodeCommentStatement("<li>" + arg.Attribute("name").Value + ":" + type + " - " + arg.Element("desc").Value + "<li/>", true));
            }
            descriptions.Add(new CodeCommentStatement("</ul>", true));
            comment += "):void;";
            member.Comments.Add(new CodeCommentStatement(comment, true));
            member.Comments.AddRange(descriptions);
            ((CodeCommentStatementCollection)member.UserData["references"]).AddRange(references);
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

                if (ClassName.ActionScriptName.IndexOf("Static") > -1)
                {
                    CurrentClass.TypeAttributes = CurrentClass.TypeAttributes | TypeAttributes.Sealed;
                }
            }
            else
            {
                CurrentClass = ClassLookup[ClassName.ActionScriptName];
            }
            xdoc.Elements("entry").ToList<XElement>().ForEach(e => AddMember(CurrentClass, e));
            return CurrentClass;
        }

        private static ClassNameDef CreateClassName(String FileName, XDocument xdoc)
        {
            ClassNameDef result = new ClassNameDef();
            String ClassName = null;
            if (FileName.IndexOf('.') > -1)
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
                    return null;
                }
            }
            ClassName = TranslateClassName(ClassName);
            ClassName = CapitalizeName(ClassName);
            result.ActionScriptName = ClassName;
            return result;
        }

        private static void AddMember(CodeTypeDeclaration CurrentClass, XElement Elm)
        {
            if (Elm.Attribute("type").Value == "method")
            {
                AddMethod(CurrentClass, Elm);
            }
            else
            {
                var name = TranslateName(Elm.Attribute("name").Value);
                var type = TranslateType(Elm.Attribute("return").Value);
                if ((type == "Object") && (Elm.Elements("property").Count() > 0))
                {
                    type = CreateTypedObjectForPlainObject(name, Elm);
                }
                var desc = Elm.Element("desc").Value.Trim();
                if (name.IndexOf('.') > -1)
                {
                    name = name.Substring(name.IndexOf('.') + 1);
                }
                Elm.Elements("signature").ToList<XElement>().ForEach(e => CreateProperty(desc, CurrentClass, type, name, e));
            }
        }

        private static string CreateTypedObjectForPlainObject(string BaseName, XElement Elm)
        {
            var propertyElms = Elm.Elements("property");
            var ClassName = new ClassNameDef() { ActionScriptName = CapitalizeName(BaseName) + "Object" };
            if (ClassLookup.ContainsKey(ClassName.ActionScriptName))
            {
                throw new Exception("Class name already exists: " + ClassName.ActionScriptName);
            }
            var classDef = Builder.CreateClass(ClassName);
            ClassLookup[ClassName.ActionScriptName] = classDef;
            foreach (var prop in propertyElms)
            {
                AddProperty(prop, classDef);
            }
            return ClassName.ActionScriptName;
        }

        private static void AddProperty(XElement Elm,  CodeTypeDeclaration classDef)
        {
            var Name = Elm.Attribute("name").Value;
            var type = TranslateType(Elm.Attribute("type").Value);
            var defaultValue = "";
            if (type == "PlainObject")
            {
                type = "Object";
            }
            if (Elm.Attribute("default") != null)
            {
                defaultValue = Elm.Attribute("default").Value;
            }
            var field = Builder.AddProperty(classDef, Name, type);
            field.Comments.AddRange(SplitCommentLines(Elm.Element("desc").Value));
        }

        private static CodeCommentStatementCollection SplitCommentLines(string comment)
        {
            var lines = Regex.Split(comment, "[\r\n]+");
            var result = new CodeCommentStatementCollection();
            lines.ToList<String>().ConvertAll(c => new CodeCommentStatement(c, true)).ForEach(c => result.Add(c));
            return result;
        }

        private static string TranslateClassName(string name)
        {
            var index = name.IndexOf(',');
            if (index > -1)
            {
                name = "JQuery";
            }
            if ((name == "Array") || (name == "Boolean") || (name == "Object") || (name == "Number") || (name == "Integer") || (name == "String") || (name == "Element"))
            {
                name = "JQuery";
            }
            return name;
        }

        private static string TranslateName(string name)
        {
            var index = name.IndexOf('.');
            if (index > -1)
            {
                return name.Substring(++index);
            }
            index = name.IndexOf(',');
            if ((index > -1) && (name.IndexOf('(') < 0))
            {
                name = "JQuery";
            }
            if ((name == "Array") || (name == "Boolean") || (name == "Object") || (name == "Number") || (name == "Integer") || (name == "String") || (name == "Event") || (name == "Element"))
            {
                name = "JQuery";
            }
            if ((name == "false") || (name == "switch"))
            {
                name = name + "_";
            }
            if (name == "function")
            {
                name = "callBack";
            }
            if (name.StartsWith("-"))
            {
                name = name.Substring(1);
            }
            name = name.Replace(" ", "");
            return name;
        }

        private static string TranslateType(string type, bool isParameter=false)
        {
            if (type.IndexOf(' ') > -1)
            {
                type = type.Substring(0, type.IndexOf(' '));
                type = CapitalizeName(type);
            }
            if ((type == "") || (type == "undefined"))
            {
                type = (isParameter == true) ? "*" : "void";
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

        private static void CreateProperty(string description, CodeTypeDeclaration CurrentClass, string type, string name, XElement elm)
        {
            var since = elm.Element("added").Value;
            var property = Builder.AddProperty(CurrentClass, name, type);
            
            property.Comments.AddRange(SplitCommentLines(description));
            property.Comments.Add(new CodeCommentStatement("@since " + since, true));
        }

        private static void AddMethod(CodeTypeDeclaration CurrentClass, XElement Elm)
        {
            var originalName = Elm.Attribute("name").Value;
            var name = TranslateName(originalName);
            name = UncapitalizeName(name);
            var originalReturnName = Elm.Attribute("return").Value;
            var type = TranslateType(originalReturnName);
            var desc = Elm.Element("desc").Value.Trim();
            if (name.IndexOf('.') > -1)
            {
                name = name.Substring(name.IndexOf('.') + 1);
            }
            if (originalName.IndexOf('.') > -1)
            {
                originalName = originalName.Substring(originalName.IndexOf('.') + 1);
            }
            int cnt = Elm.Elements("signature").Count();
            int index = 0;
            Elm.Elements("signature").ToList<XElement>().ForEach(e => CreateMethod(desc, CurrentClass, type, name, originalName, originalReturnName, e));
        }

        private static void CreateMethod(string description, CodeTypeDeclaration CurrentClass, String type, string name, string originalName, string originalReturnName, XElement elm)
        {
            var since = elm.Element("added").Value;

            var method = Builder.AddMethod(CurrentClass, name, type);
            
            method.Comments.AddRange(SplitCommentLines(description));
            method.Comments.Add(new CodeCommentStatement("@since " + since, true));
            if (elm.Elements("argument").Count() > 0)
            {

                elm.Elements("argument").ToList<XElement>().ForEach(e => CreateParameter(e, method));
            }
            else
            {
                CreateParametersFromIncludeFiles(elm, method);
            }
            if (name != originalName)
            {
                Builder.AddMethodAttributeArgument(method, "name", originalName);
            }
            if ((type != originalReturnName) && (originalReturnName.IndexOf(',') > -1))
            {
                method.ReturnType = new CodeTypeReference("Object");
                method.UserData["IsAsterisk"] = true;
                method.Comments.Add(new CodeCommentStatement("@return Either of these types: " + originalReturnName, true));
            }
        }

        private static void CreateParameter(XElement elm, CodeMemberMethod method)
        {
            var name = TranslateName(elm.Attribute("name").Value);
            var type = "Object";
            var optional = (elm.Attribute("optional") != null);
            if (elm.Attribute("type") != null)
            {
                type = elm.Attribute("type").Value;
            }
            type = TranslateType(type, true);
            if ((type == "PlainObject") && (elm.Elements("property").Count() > 0))
            {
                type = CreateTypedObjectForPlainObject(name, elm);
            }
            var desc = elm.Element("desc").Value.Trim();
            if (type == "Function")
            {
                if (name.IndexOf('(') > -1)
                {
                    desc += " (The method requires to have the following signature: " + name + ")";
                    name = "callBack";
                }
            }
            else if (type == "PlainObject")
            {
                type = CreatePlainObjectFromIncludeFile(elm);
            }
            var param = Builder.AddParameter(name, type, method, null, optional);
            ((CodeCommentStatementCollection)param.UserData["comments"]).AddRange(SplitCommentLines(desc));
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
                if (FileName.EndsWith("-argument"))
                {
                    Argument2Parameter(FullPath, method);
                }
            }
        }

        private static CodeParameterDeclarationExpression Argument2Parameter(string path, CodeMemberMethod method)
        {
            var xdoc = XDocument.Load(path);
            var Name = xdoc.Root.Attribute("name").Value;
            var defaultValue = (xdoc.Root.Attribute("default") != null) ? xdoc.Root.Attribute("default").Value : null;
            var type = "";
            if ((xdoc.Root.Attribute("type") != null) && (xdoc.Root.Attribute("type").Value == "PlainObject"))
            {
                var classDef = Argument2Class(path);
                if (classDef != null)
                {
                    type = classDef.Name;
                }
                else
                {
                    type = "Object";
                }
            }
            else
            {
                type = (xdoc.Root.Attribute("type") != null) ? xdoc.Root.Attribute("type").Value : "*";
            }

            var paramDef = Builder.AddParameter(Name, type, method, defaultValue, (defaultValue != null));
            if (xdoc.Root.Element("desc") != null)
            {
                ((CodeCommentStatementCollection)paramDef.UserData["comments"]).AddRange(SplitCommentLines(xdoc.Root.Element("desc").Value));
            }
            return paramDef;
        }

        private static string CreatePlainObjectFromIncludeFile(XElement elm)
        {
            XNamespace ns = "http://www.w3.org/2003/XInclude";
            var includes = elm.Parent.Elements(ns + "include").ToList<XElement>();
            if (includes.Count() > 0)
            {
                var ArgumentClasses = new List<CodeTypeDeclaration>();
                foreach (var include in includes)
                {
                    var arg = CreateClassFromIncudeFile(include.Attribute("href").Value);
                    if (arg != null)
                    {
                        ArgumentClasses.Add(arg);
                    }
                }
                if (ArgumentClasses.Count() == 1)
                {
                    return ArgumentClasses[0].Name;
                }
                else
                {
                    return "*";
                }
            }
            else
            {
                return "Object";
            }
        }

        private static CodeTypeDeclaration CreateClassFromIncudeFile(string path)
        {
            var FullPath = Path.Combine(JQueryEntriesDir, path);
            if (File.Exists(FullPath))
            {
                var FileName = Path.GetFileNameWithoutExtension(FullPath);
                if (FileName.EndsWith("-argument"))
                {
                    return Argument2Class(FullPath);
                }
                else
                {
                    return Entry2Class(FullPath);
                }
            }
            return null;
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
