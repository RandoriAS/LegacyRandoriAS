using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1.output
{
    class ClassDef
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
@" * @author Randori JQuery generator" + Environment.NewLine +
@"*/";
        public string package = "randori.jquery";
        public ClassNameDef name { get; set; }
        public string extends { get; set; }
        public List<MemberDef> members { get; set; }
        public List<MethodDef> methods { get; set; }
        public List<string> comments { get; set; }
        public List<string> imports { get; set; }
        public JsAttributes attributes { get; set; }
        public bool isStatic { get; set; }
        public string FileName
        {
            get
            {
                return name.ActionScriptName + ".as";
            }
        }

        public ClassDef()
        {
            isStatic = false;
            members = new List<MemberDef>();
            methods = new List<MethodDef>();
            comments = new List<string>();
            imports = new List<string>();
            attributes = new JsAttributes() { type = AttributeTypes.Class};
        }

        public void Serialize(StringBuilder sb)
        {
            sb.AppendLine(header);
            sb.AppendLine("package " + package);
            sb.AppendLine("{");
            imports.ForEach(i => sb.AppendLine("\timport " + i + ";"));
            sb.Append("\t");
            attributes.Serialize(sb);
            sb.Append(Environment.NewLine);
            SerializeComments(sb);
            sb.Append("\tpublic class " + name.ActionScriptName);
            if (name.Extends != null)
            {
                sb.Append(" extends " + name.Extends);
            }
            sb.Append(Environment.NewLine);
            sb.AppendLine("\t{");
            sb.AppendLine("\t\tpublic function " + name.ActionScriptName + "()");
            sb.AppendLine("\t\t{");
            sb.AppendLine("\t\t\tsuper();");
            sb.AppendLine("\t\t}");
            SerializeMembers(sb); 
            sb.AppendLine("\t}");
            sb.AppendLine("}");
        }

        private void SerializeComments(StringBuilder sb)
        {
            if (comments.Count() > 0)
            {
                sb.AppendLine("\t/*");
                comments.ForEach(c => sb.AppendLine("\t *" + c));
                sb.AppendLine("\t*/");
            }
        }

        private void SerializeMembers(StringBuilder sb)
        {
            foreach (var member in members)
            {
                member.isStatic = isStatic;
                member.Serialize(sb);
            }
            foreach (var method in methods)
            {
                method.isStatic = isStatic;
                method.Serialize(sb);
            }
        }

        public void AddImport(string import)
        {
            if (imports.Contains(import) == false)
            {
                imports.Add(import);
            }
        }
    }
}
