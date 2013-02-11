using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace System.CodeDom.Compiler
{
    public class ClassNameDef
    {
        public string ActionScriptName { get; set; }
        public string JavascriptName { get; set; }
        public string Extends { get; set; }
        public string FileName
        {
            get
            {
                return ActionScriptName + ".as";
            }
        }
    }
}
