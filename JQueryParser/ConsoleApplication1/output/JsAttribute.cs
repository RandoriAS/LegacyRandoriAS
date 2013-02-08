using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApplication1.output
{
    class JsAttribute
    {
        public string name{get; set;}
        public string value{get; set;}

        public void Serialize(StringBuilder sb)
        {
            sb.Append(name.ToLower() + "=\"" + value.ToString() + "\"");
        }
    }
}
