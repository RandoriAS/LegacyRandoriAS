using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace NodeJSParser.output
{
    class ParamDef:MemberDef
    {
        public bool isOptional { get; set; }

        new public void Serialize(StringBuilder sb)
        {
            sb.Append(name + ":" + type);
            if (isOptional)
            {
                sb.Append("=" + MethodDef.GenerateDefaultReturn(type));
            }
        }
    }
}
