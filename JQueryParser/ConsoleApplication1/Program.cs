using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Linq;
using ConsoleApplication1.output;

namespace ConsoleApplication1
{
    class Program
    {
        //Where the .as file will be saved
        public static string OutputDirectory = @"C:\projects\RandoriAS\JQuery\src\randori\jquery\";

        //api.jquery.com/entries directory:
        public static string JQueryEntriesDir = @"C:\projects\api.jquery.com\entries\";

        private static Dictionary<String, ClassDef> ClassLookup = new Dictionary<String, ClassDef>();
        private static Dictionary<String, String> ImportLookup = new Dictionary<String, String>();

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

            AddBaseClasses();

            List<string> entries = ReadSourceDirectory();
            entries.ForEach(e => Entry2Class(e));

            var classDefPromise = ClassLookup["Promise"];
            var classDefDeferred = ClassLookup["Deferred"];
            AddMethodsToPromise(classDefPromise, classDefDeferred);
            
            foreach(var key in ClassLookup.Keys)
            {
                AddImports(ClassLookup[key]);
                SerializeClass(ClassLookup[key]);
            }

            Console.WriteLine("Finished, press any key...");
            Console.ReadKey();

        }

        private static void AddMethodsToPromise(ClassDef classDefPromise, ClassDef classDefDeferred)
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

        private static void CopyMethod(string name, ClassDef destination, ClassDef source)
        {
            destination.methods.AddRange(source.GetMethodWithNameLike(name));
        }

        private static void AddImports(ClassDef classDef)
        {
            if ((classDef.name.Extends !=null) && (ImportLookup.ContainsKey(classDef.name.Extends) == true))
            {
                classDef.AddImport(ImportLookup[classDef.name.Extends]);
            }
            foreach (var member in classDef.members)
            {
                if (ImportLookup.ContainsKey(member.type) == true)
                {
                    classDef.AddImport(ImportLookup[member.type]);
                }
            }
            foreach (var method in classDef.methods)
            {
                if (ImportLookup.ContainsKey(method.type) == true)
                {
                    classDef.AddImport(ImportLookup[method.type]);
                }
                foreach (var parameter in method.parameters)
                {
                    if (ImportLookup.ContainsKey(parameter.type) == true)
                    {
                        classDef.AddImport(ImportLookup[parameter.type]);
                    }
                }
            }
        }

        private static void AddBaseClasses()
        {
            AddBaseClass("Argument");
        }

        private static ClassDef AddBaseClass(string name)
        {
            var classDef = new ClassDef() { name = new ClassNameDef() { ActionScriptName = name } };
            classDef.attributes.Add("export", "false");
            ClassLookup[name] = classDef;
            return classDef;
        }

        private static void SerializeClass(ClassDef classDef)
        {
            var sb = new StringBuilder();
            classDef.Serialize(sb);
            File.WriteAllText(Path.Combine(OutputDirectory, classDef.FileName), sb.ToString());
            Console.WriteLine("Created file: " + classDef.FileName);
        }

        private static ClassDef Argument2Class(string ArgumentPath)
        {
            var FileName = Path.GetFileNameWithoutExtension(ArgumentPath);
            var xdoc = XDocument.Load(ArgumentPath);
            if ((xdoc.Root.Attribute("type") != null) && (xdoc.Root.Attribute("type").Value == "PlainObject"))
            {
                return CreatePlainObjectClass(FileName, xdoc);
            }
            return null;
        }

        private static ClassDef CreatePlainObjectClass(string RawClassName, XDocument xdoc)
        {
            var classDef = new ClassDef() { name = new ClassNameDef() { ActionScriptName = FormatHypenedName(RawClassName), Extends = "Argument" } };
            classDef.attributes.Add("export", "false");
            ClassLookup[classDef.name.ActionScriptName] = classDef;
            xdoc.Root.Elements("property").ToList<XElement>().ForEach(e => AddMemberFromPropertyElement(classDef, e));
            return classDef;
        }

        private static void AddMemberFromPropertyElement(ClassDef classDef, XElement elm)
        {
            var member = new MemberDef() { name=elm.Attribute("name").Value };
            if (elm.Attribute("type") != null)
            {
                member.type = TranslateType(elm.Attribute("type").Value);
                if (member.type == "PlainObject")
                {
                    member.type = "Object";
                }
            }
            else
            {
                member.type = "*";
            }
            member.comments.Add(elm.Element("desc").Value.Trim());
            classDef.members.Add(member);
        }

        private static string FormatHypenedName(string FileName)
        {
            var parts = FileName.Split('-');
            var name = "";
            foreach (var part in parts)
            {
                name += part.Substring(0, 1).ToUpper() + part.Substring(1);
            }
            return name;
        }

        private static ClassDef Entry2Class(string EntryPath)
        {
            var xdoc = XDocument.Load(EntryPath);
            var FileName = Path.GetFileNameWithoutExtension(EntryPath);
            ClassNameDef ClassName = CreateClassName(FileName, xdoc);
            if (ClassName == null)
            {
                Console.WriteLine("Skipped file: " + FileName);
                return null;
            }
            ClassDef CurrentClass = null;
            if (ClassLookup.ContainsKey(ClassName.ActionScriptName) == false)
            {
                CurrentClass = new ClassDef() { name = ClassName };
                ClassLookup[ClassName.ActionScriptName] = CurrentClass;
                CurrentClass.attributes.Add("export", "false");
                if ((ClassName.ActionScriptName != ClassName.JavascriptName) && (ClassName.JavascriptName != null))
                {
                    CurrentClass.attributes.Add("name", ClassName.JavascriptName);
                }
                if (CurrentClass.name.ActionScriptName.IndexOf("Static") > -1)
                {
                    CurrentClass.isStatic = true;
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
                    result.JavascriptName = "$";
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

        private static void AddMember(ClassDef CurrentClass, XElement Elm)
        {
            if (Elm.Attribute("type").Value == "method")
            {
                AddMethod(CurrentClass, Elm);
            }
            else
            {
                var name = TranslateName(Elm.Attribute("name").Value);
                var type = TranslateType(Elm.Attribute("return").Value);
                var desc = Elm.Element("desc").Value.Trim();
                if (name.IndexOf('.') > -1)
                {
                    name = name.Substring(name.IndexOf('.') + 1);
                }
                int cnt = Elm.Elements("signature").Count();
                int index = 0;
                Elm.Elements("signature").ToList<XElement>().ForEach(e => CreateProperty(desc, CurrentClass, type, name, cnt, ++index, e));
            }
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
            if (index > -1)
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

        private static void CreateProperty(string description, ClassDef CurrentClass, string type, string name, int count, int index, XElement elm)
        {
            var since = elm.Element("added").Value;
            if (count > 1)
            {
                name += index.ToString();
            }
            var property = new MemberDef() { name = name, type = type };
            property.comments.Add(description);
            property.comments.Add("@since " + since);
            CurrentClass.members.Add(property);
        }

        private static void AddMethod(ClassDef CurrentClass, XElement Elm)
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
            Elm.Elements("signature").ToList<XElement>().ForEach(e => CreateMethod(desc, CurrentClass, type, name, originalName, originalReturnName, cnt, ++index, e));
        }

        private static void CreateMethod(string description, ClassDef CurrentClass, String type, string name, string originalName, string originalReturnName, int count, int index, XElement elm)
        {
            var since = elm.Element("added").Value;
            if (count > 1)
            {
                name += index.ToString();
            }
            var method = new MethodDef() { name = name, type = type };
            method.comments.Add(description);
            method.comments.Add("@since " + since);
            method.parameters = elm.Elements("argument").ToList<XElement>().ConvertAll(e => CreateParameter(e)).ToList<ParamDef>();
            if (name != originalName)
            {
                method.attributes.Add("name", originalName);
            }
            if ((type != originalReturnName) && (originalReturnName.IndexOf(',') > -1))
            {
                method.comments.Add("@return Either of these types: " + originalReturnName);
            }
            CurrentClass.methods.Add(method);
        }

        private static ParamDef CreateParameter(XElement elm)
        {
            var name = TranslateName(elm.Attribute("name").Value);
            var type = "void";
            var optional = (elm.Attribute("optional") != null);
            type = "";
            if (elm.Attribute("type") != null)
            {
                type = elm.Attribute("type").Value;
            }
            type = TranslateType(type, true);
            var desc = elm.Element("desc").Value.Trim();
            if (type == "Function")
            {
                if (name.IndexOf('(') > -1)
                {
                    desc += " (The method requires to have the following signature: " + name + ")";
                }
                name = "handler";
            }
            else if (type == "PlainObject")
            {
                type = CreatePlainObject(elm);
            }
            
            var param = new ParamDef() { name=name,type=type,isOptional=optional};
            param.comments.Add(desc);
            return param;
        }

        private static string CreatePlainObject(XElement elm)
        {
            XNamespace ns = "http://www.w3.org/2003/XInclude";
            /*<xi:include href="../includes/duration-argument.xml" xmlns:xi="http://www.w3.org/2003/XInclude"/>*/
            var includes = elm.Parent.Elements(ns + "include").ToList<XElement>();
            if (includes.Count() > 0)
            {
                var ArgumentClasses = new List<ClassDef>();
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
                    return ArgumentClasses[0].name.ActionScriptName;
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

        private static ClassDef CreateClassFromIncudeFile(string path)
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
