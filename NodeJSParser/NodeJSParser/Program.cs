using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Xml.Linq;
using Newtonsoft.Json.Linq;
using System.CodeDom;
using System.CodeDom.Compiler;

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
@" * @author Randori Nodejs generator" + Environment.NewLine +
@"*/";

        //Where the .as files will be saved
        public static string OutputDirectory = @"C:\projects\RandoriAS\Nodejs\src\randori\nodejs";
        //api.jquery.com/entries directory:
        public static string JSONDir = @"C:\projects\NodeJSDoc";

        private static Dictionary<string, string> UnknownTypes = new Dictionary<string, string>();
        private static ClassBuilder Builder = new ClassBuilder { PackageName = "randori.nodejs" };

        static void Main(string[] args)
        {
            InitializeUnknownTypes(UnknownTypes);
            if (Directory.Exists(OutputDirectory) == false)
            {
                Directory.CreateDirectory(OutputDirectory);
            }
            CleanOutputDirectry();
            var files = Directory.EnumerateFiles(JSONDir).ToList<string>();
            files.ForEach(f => ProcessJSONFile(f));

            var provider = new AS3CodeProvider(Builder);
            Builder.Units.ForEach(c => WriteFile(c, provider));
            
            Console.WriteLine("Finished, press any key to continue...");
            Console.ReadKey();
        }

        private static void InitializeUnknownTypes(Dictionary<string, string> UnknownTypes)
        {
            UnknownTypes.Add("fs.WriteStream", "WritableStream");
            UnknownTypes.Add("file.bytesWritten", "int");
            UnknownTypes.Add("stream.writable", "Boolean");
            UnknownTypes.Add("punycode.version", "String");
            UnknownTypes.Add("punycode.ucs2", "Object");
            UnknownTypes.Add("request.url", "String");
            UnknownTypes.Add("request.headers", "Object");
            UnknownTypes.Add("request.trailers", "Object");
            UnknownTypes.Add("request.httpVersion", "String");
            UnknownTypes.Add("request.connection", "Socket");
            UnknownTypes.Add("request.method", "String");
            UnknownTypes.Add("querystring.escape", "Function");
            UnknownTypes.Add("querystring.unescape", "Function");
            UnknownTypes.Add("response.statusCode", "int");
            UnknownTypes.Add("response.sendDate", "Date");
            UnknownTypes.Add("agent.maxSockets", "int");
            UnknownTypes.Add("agent.sockets", "Object");
            UnknownTypes.Add("agent.requests", "Object");
            UnknownTypes.Add("path.sep", "String");
            UnknownTypes.Add("socket.bufferSize", "int");
            UnknownTypes.Add("socket.remoteAddress", "String");
            UnknownTypes.Add("socket.remotePort", "int");
            UnknownTypes.Add("socket.bytesRead", "int");
            UnknownTypes.Add("socket.bytesWritten", "int");
            UnknownTypes.Add("cleartextStream.authorized", "Boolean");
            UnknownTypes.Add("cleartextStream.authorizationError", "String");
            UnknownTypes.Add("cleartextStream.remoteAddress", "String");
            UnknownTypes.Add("cleartextStream.remotePort", "int");
            UnknownTypes.Add("stream.readable", "Boolean");
            UnknownTypes.Add("server.maxHeadersCount", "int");
            UnknownTypes.Add("server.maxConnections", "int");
            UnknownTypes.Add("server.connections", "int");
            UnknownTypes.Add("rs.isRaw", "Boolean");
            UnknownTypes.Add("http.globalAgent", "HttpAgent");
            UnknownTypes.Add("https.globalAgent", "HttpAgent");
            UnknownTypes.Add("http.ClientResponse", "Object");
            UnknownTypes.Add("os.EOL", "String");
        }

        private static void CleanOutputDirectry()
        {
            Directory.EnumerateFiles(OutputDirectory).ToList<string>().ForEach(f => File.Delete(f));
        }

        private static void WriteFile(CodeCompileUnit compileUnit, AS3CodeProvider provider)
        {
            if (compileUnit.Namespaces[0].Types[0].Members.Count == 0)
            {
                return;
            }
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
            }
            finally
            {
                writer.Close();
            }

            Console.WriteLine("Created file: " + FileName);
        }

        private static void ProcessJSONFile(string JSONPath)
        {
            var strJSON = File.ReadAllText(JSONPath);
            var FileName = Path.GetFileName(JSONPath);
            JObject json = JObject.Parse(strJSON);
            if (json["modules"] != null)
            {
                JToken modules = json["modules"];
                modules.ToList<JToken>().ForEach(t => CreateCompileUnit(t, FileName));
            }
        }

        private static void CreateCompileUnit(JToken ClassToken, string FileName)
        {
            var className = new ClassNameDef() { ActionScriptName = FormatClassName((String)ClassToken["name"]), JavascriptName = (String)ClassToken["name"] };
            var type = Builder.CreateClass(className);
            type.Comments.Add(new CodeCommentStatement("Generated from file: " + FileName, true));

            AddMembers(type, ClassToken, true);

            if (ClassToken["classes"] != null)
            {
                AddClasses(ClassToken["classes"], FileName);
            }

            Console.WriteLine("Created: " + className.ActionScriptName);
        }

        private static void AddMembers(CodeTypeDeclaration type, JToken ClassToken, bool IsStatic)
        {
            if (ClassToken["methods"] != null)
            {
                AddMethods(type, ClassToken["methods"], IsStatic);
            }
            if (ClassToken["events"] != null)
            {
                if (type.Name != "EventsEventEmitter")
                {
                    type.BaseTypes.Add("EventsEventEmitter");
                }
                AddEvents(type, ClassToken["events"], IsStatic);
            }
            if (ClassToken["properties"] != null)
            {
                AddProperties(type, ClassToken["properties"], IsStatic);
            }
        }

        private static void AddProperties(CodeTypeDeclaration type, JToken PropertiesToken, bool IsStatic)
        {
            PropertiesToken.ToList<JToken>().ForEach(p => CreateProperty(type, p, IsStatic));
        }

        private static void CreateProperty(CodeTypeDeclaration type, JToken PropertyToken, bool IsStatic)
        {
            var Name = (String)PropertyToken["name"];
            if (Name.Substring(0, 1) == "[")
            {
                return;
            }
            string Type = "";
            if (PropertyToken["type"] == null)
            {
                Type = ExtractPropertyTypeName((String)PropertyToken["textRaw"]);
            }
            else
            {
                Type = (String)PropertyToken["type"];
            }
            var property = Builder.AddProperty(type, Name, Type);
            AddPropertyComments(PropertyToken, property);
            if (IsStatic == true)
            {
                property.Attributes = property.Attributes | MemberAttributes.Static;
            }
        }

        private static string ExtractPropertyTypeName(string RawName)
        {
            if ((RawName.Substring(0, 1) == "`") && (RawName.IndexOf('{') < 0))
            {
                var parts = RawName.Split(' ');
                RawName = parts[1];
                RawName = RawName.Replace(",", "").Trim();
            }
            else
            {
                if (RawName.LastIndexOf('{') > -1)
                {
                    RawName = RawName.Substring(RawName.LastIndexOf('{')+1);
                    if (RawName.IndexOf("object") > -1)
                    {
                        RawName = "Object";
                    }
                    else
                    {
                        RawName = RawName.Replace("}", "").Trim();
                    }
                }
            }
            if (RawName == "Integer")
            {
                RawName = "int";
            }
            //Exceptions which can't be generated due to missing documentation:
            if (UnknownTypes.ContainsKey(RawName))
            {
                RawName = UnknownTypes[RawName];
            }
            return RawName;
        }

        private static void AddClasses(JToken ClassesToken, string FileName)
        {
            ClassesToken.ToList<JToken>().ForEach(c => CreateClass(c, FileName));
        }

        private static void CreateClass(JToken ClassToken, string FileName)
        {
            var type = Builder.GetClassByName((String)ClassToken["name"]);
            if (type == null)
            {
                var name = new ClassNameDef() { ActionScriptName = FormatClassName((String)ClassToken["name"]), JavascriptName = (String)ClassToken["name"] };
                type = Builder.CreateClass(name);
                type.Comments.Add(new CodeCommentStatement("Generated from file: " + FileName, true));
            }
            AddMembers(type, ClassToken, false);
        }

        private static void AddEvents(CodeTypeDeclaration type, JToken EventsToken, bool IsStatic)
        {
            EventsToken.ToList<JToken>().ForEach(e => CreateEvents(type, e, IsStatic));
        }

        private static void CreateEvents(CodeTypeDeclaration type, JToken EventToken, bool IsStatic)
        {
            var EventName = FormatEventName((String)EventToken["name"]);
            var property = Builder.AddProperty(type, EventName, "Function");
            Builder.AddPropertyAttributeArgument(property, "name", (String)EventToken["name"]);
            AddPropertyComments(EventToken, property);
            if (IsStatic == true)
            {
                property.Attributes = property.Attributes | MemberAttributes.Static;
            }
        }

        private static void AddPropertyComments(JToken Token, CodeMemberField property)
        {
            if (Token["desc"] != null)
            {
                var description = TrimComment((String)Token["desc"]);
                foreach (var line in description)
                {
                    property.Comments.Add(new CodeCommentStatement(line, true));
                }
            }
        }

        private static string FormatEventName(string EventName)
        {
            return "on" + EventName;
        }

        private static void AddMethods(CodeTypeDeclaration type, JToken MethodsToken, bool IsStatic)
        {
            MethodsToken.ToList<JToken>().ForEach(m => CreateStaticMethods(type, m));
        }

        private static void CreateStaticMethods(CodeTypeDeclaration type, JToken MethodToken)
        {
            var name = MethodToken["name"].ToString();
            var description = TrimComment(MethodToken["desc"].ToString());
            MethodToken["signatures"].ToList<JToken>().ForEach(s => CreateStaticMethod(type, name, description, s));
        }

        private static List<String> TrimComment(string comment)
        {
            var lines = Regex.Split(comment, "[\r\n]+");
            return lines.ToList<String>().ConvertAll(l => l.Trim().Replace("/*", "//").Replace("*/", "//"));
        }

        private static void CreateStaticMethod(CodeTypeDeclaration type, string name, List<String> description, JToken SignatureToken)
        {
            var method = Builder.AddMethod(type, name, "void");
            Builder.MakeStatic(method);
            foreach (var line in description)
            {
                method.Comments.Add(new CodeCommentStatement(line, true));
            }
            
            SignatureToken["params"].ToList<JToken>().ForEach(p => AddParam(method, p));
        }

        private static void AddParam(CodeMemberMethod method, JToken Parameter)
        {
            bool isOptional = false;
            var type = "*";
            if (Parameter["optional"] != null)
            {
                isOptional = (Parameter["optional"].ToString() == "true");
            }
            if (Parameter["type"] != null)
            {
                type = FormatParameterTypeName((String)Parameter["type"]);
            }
            var Name = FormatParameterName((String)Parameter["name"]);
            var parameter = Builder.AddParameter(Name, type, method, null, isOptional);
            parameter.UserData["IsAsterisk"] = (type == "*");
        }

        private static string FormatParameterName(string ParamName)
        {
            if (ParamName.IndexOf(' ') > -1)
            {
                ParamName = ParamName.Substring(0, ParamName.LastIndexOf(' ') - 1);
            }
            if (ParamName.IndexOf('(') > -1)
            {
                ParamName = ParamName.Substring(ParamName.LastIndexOf('(') + 1);
            }
            ParamName = ParamName.Replace(")", "");
            return ParamName;
        }

        private static string FormatParameterTypeName(string ParamTypeName)
        {
            if (ParamTypeName.IndexOf(' ') > -1)
            {
                return CapitalizeName(ParamTypeName.Substring(ParamTypeName.LastIndexOf(' ')+1));
            }
            return ParamTypeName;
        }

        private static string FormatClassName(String RawName)
        {
            RawName = RawName.Replace(" ", "");
            if (RawName.IndexOf('.') > -1)
            {
                var parts = RawName.Split('.');
                RawName = "";
                foreach (var part in parts)
                {
                    RawName += CapitalizeName(part);
                }
            }
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
