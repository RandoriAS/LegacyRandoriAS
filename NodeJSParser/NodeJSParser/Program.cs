using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Xml.Linq;
using NodeJSParser.output;
using Newtonsoft.Json.Linq;
using System.CodeDom;

namespace ConsoleApplication1
{
    class Program
    {
        //Where the .as files will be saved
        public static string OutputDirectory = @"C:\projects\RandoriAS\Nodejs\src\randori\nodejs";
        //api.jquery.com/entries directory:
        public static string JSONDir = @"C:\projects\NodeJSDoc";

        public static List<CodeTypeDeclaration> ClassDefs = new List<CodeTypeDeclaration>();

        static void Main(string[] args)
        {
            if (Directory.Exists(OutputDirectory) == false)
            {
                Directory.CreateDirectory(OutputDirectory);
            }
            CleanOutputDirectry();
            var files = Directory.EnumerateFiles(JSONDir).ToList<string>();
            files.ForEach(f => ProcessJSONFile(f));
            ClassDefs.ForEach(c => WriteFile(c));
            Console.WriteLine("Finished, press any key to continue...");
            Console.ReadKey();
        }

        private static void CleanOutputDirectry()
        {
            Directory.EnumerateFiles(OutputDirectory).ToList<string>().ForEach(f => File.Delete(f));
        }

        private static void WriteFile(ClassDef c)
        {
            var sb = new StringBuilder();
            c.Serialize(sb);
            File.WriteAllText(Path.Combine(OutputDirectory, c.FileName), sb.ToString());
        }

        private static void ProcessJSONFile(string FileName)
        {
            var strJSON = File.ReadAllText(FileName);
            JObject json = JObject.Parse(strJSON);
            if (json["modules"] != null)
            {
                JToken modules = json["modules"];
                modules.ToList<JToken>().ForEach(t => CreateClassDef(t));
            }
        }

        private static void CreateClassDef(JToken ClassToken)
        {
            var classDef = new ClassDef() { name = new ClassNameDef() { ActionScriptName = FormatClassName(ClassToken["name"].ToString())} };
            ClassDefs.Add(classDef);
            if (ClassToken["methods"] != null)
            {
                AddMethods(classDef, ClassToken["methods"]);
            }
            Console.WriteLine(classDef.name.ActionScriptName);
        }

        private static void AddMethods(ClassDef classDef, JToken MethodsToken)
        {
            MethodsToken.ToList<JToken>().ForEach(m => CreateMethodDefs(classDef, m));
        }

        private static void CreateMethodDefs(ClassDef classDef, JToken MethodToken)
        {
            var name = MethodToken["name"].ToString();
            var description = TrimComment(MethodToken["desc"].ToString());
            MethodToken["signatures"].ToList<JToken>().ForEach(s => CreateMethodDef(classDef, name, description, s));
        }

        private static List<String> TrimComment(string comment)
        {
            var lines = Regex.Split(comment, "[\r\n]+");
            return lines.ToList<String>().ConvertAll(l => l.Trim());
        }

        private static void CreateMethodDef(ClassDef classDef, string name, List<String> description, JToken SignatureToken)
        {
            var methodDef = new MethodDef() { name = name};
            methodDef.type = "void";
            methodDef.comments.AddRange(description);
            classDef.methods.Add(methodDef);
            SignatureToken["params"].ToList<JToken>().ForEach(p => AddParam(methodDef.parameters, p));
        }

        private static void AddParam(List<ParamDef> list, JToken Parameter)
        {
            var paramDef = new ParamDef() { name = Parameter["name"].ToString() };
            if (Parameter["optional"] != null)
            {
                paramDef.isOptional = (Parameter["optional"].ToString() == "true");
            }
            paramDef.type = "*";
            list.Add(paramDef);
        }

        private static string FormatClassName(String RawName)
        {
            if (RawName.IndexOf('_') > -1)
            {
                var parts = RawName.Split('_').ToList<String>();
                var result = "";
                parts.ForEach(c => result += CapitalizeName(c));
                if (result.IndexOf('(') > -1)
                {
                    var prts = result.Split('(');
                    result = prts[0];
                }
                return result;
            }
            else if (RawName.IndexOf(' ') > -1)
            {
                var parts = RawName.Split(' ');
                return CapitalizeName(parts[0]);
            }
            else if (RawName.IndexOf('(') > -1)
            {
                var parts = RawName.Split('(');
                return CapitalizeName(parts[0]);
            }
            else
            {
                return CapitalizeName(RawName);
            }
        }

        private static string CapitalizeName(string RawName)
        {
            return RawName.Substring(0, 1).ToUpper() + RawName.Substring(1);
        }

    }

}
