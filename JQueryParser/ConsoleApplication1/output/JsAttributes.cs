using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1.output
{
    enum AttributeTypes { Class, Method, Property };

    class JsAttributes
    {
        public AttributeTypes type { get; set; }
        public List<JsAttribute> atttributes { get; set; }

        public JsAttributes()
        {
            atttributes = new List<JsAttribute>();
        }

        public void Add(string Name, string Value)
        {
            atttributes.Add(new JsAttribute() { name = Name, value = Value });
        }

        public void Serialize(StringBuilder sb)
        {
            if (atttributes.Count() == 0)
            {
                return;
            }
            sb.Append("[");
            switch (type)
            {
                case AttributeTypes.Class:
                    sb.Append("Javascript");
                    break;
                case AttributeTypes.Method:
                    sb.Append("JavascriptMethod");
                    break;
                case AttributeTypes.Property:
                    sb.Append("JavascriptProperty");
                    break;
            }
            sb.Append("(");
            var index = 0;
            foreach (var attr in atttributes)
            {
                if (index++ > 0)
                {
                    sb.Append(", ");
                }
                attr.Serialize(sb);
            }
            sb.Append(")]");
        }
    }
}
