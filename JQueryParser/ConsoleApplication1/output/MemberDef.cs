using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1.output
{
    class MemberDef
    {
        public string name { get; set; }
        public string type { get; set; }
        public List<string> comments { get; set; }
        public JsAttributes attributes { get; set; }
        public bool isStatic { get; set; }
        public string defaultValue { get; set; }

        public MemberDef()
        {
            comments = new List<string>();
            attributes = new JsAttributes() { type = AttributeTypes.Property };
        }

        public void Serialize(StringBuilder sb)
        {
            if (defaultValue != null)
            {
                if ((type == "Boolean") && ((defaultValue != "false") && (defaultValue != "true")))
                {
                    comments.Add(defaultValue);
                    defaultValue = "false";
                }
                else if ((type == "Object") && (defaultValue.IndexOf(' ') > -1))
                {
                    comments.Add(defaultValue);
                    defaultValue = "null";
                }
                if (type == "Function")
                {
                    comments.Add(defaultValue);
                    defaultValue = null;
                }
            }
            SerializeComments(sb);
            var StaticDecl = (isStatic) ? " static " : " ";
            if (defaultValue == null)
            {
                sb.AppendLine("\t\tpublic" + StaticDecl + "var " + name + ":" + type + ";");
            }
            else
            {
                sb.AppendLine("\t\tpublic" + StaticDecl + "var " + name + ":" + type + " = " + SerializeDefaultValue() + ";");
            }
        }

        public string SerializeDefaultValue()
        {
            if ((type == "String") && (defaultValue.StartsWith("'") == false) && (defaultValue.StartsWith("\"") == false))
            {
                return "'" + defaultValue + "'";
            }
            else
            {
                return defaultValue;
            }
        }

        protected void SerializeComments(StringBuilder sb)
        {
            if (comments.Count() > 0)
            {
                sb.AppendLine("\t\t/*");
                comments.ForEach(c => sb.AppendLine("\t\t * " + c));
                sb.AppendLine("\t\t*/");
            }
        }
    }

}
