using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NodeJSParser.output
{
    class MemberDef
    {
        public string name { get; set; }
        public string type { get; set; }
        public List<string> comments { get; set; }
        public JsAttributes attributes { get; set; }
        public bool isStatic { get; set; }

        public MemberDef()
        {
            comments = new List<string>();
            attributes = new JsAttributes() { type = AttributeTypes.Property };
        }

        public void Serialize(StringBuilder sb)
        {
            SerializeComments(sb);
            var StaticDecl = (isStatic) ? " static " : " ";
            sb.AppendLine("\t\tpublic" + StaticDecl + "var " + name + ":" + type + ";");
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
