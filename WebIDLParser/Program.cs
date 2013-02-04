
/*******************************************************************************************************

  Copyright (C) 2012 Sebastian Loncar, Web: http://loncar.de

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the "Software"), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/

namespace WebIDLParser
{

    public class Program
    {

        public static string OutputVersion = "1.0";
        public static string ProductVersion = "1.0";
        public static string SinceVersion = "1.0";

        //Path to a directory that contains all of the downloaded w3c documentation in XML form
        //which is used to generate the ASDoc comments inside the actionscript sources.
        public static string w3cDirectory = @"D:\w3c\";

        //Path to the existing project SharpKit.Html project
        public static string csOutDirectory = @"D:\RandoriGenerated\randori\webkit\";

        //Path to the WebKit(--> WebCore) sources. ( http://trac.webkit.org/browser/trunk/Source/WebCore/ )
        public static string idlInDirectory = @"C:\projects\WebCore\";
        //public static string idlInDirectory = @"D:\IdlCs\test";

        //A temporary directory, where the preprocessed IDL files will be stored.
        public static string idlOutTempDirectory = @"D:\IdlCs\idl\";

        //Needs to be true. Set only to false, when you already have the preprocessed IDL files in the idlOutTempDirectory.
        public static bool runPreprocessor = false;

        //Path to a c/c++ compiler, used for preprocessing the files.
        public static string preprocessorExe = @"C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\bin\amd64\cl.exe";

        public static void Main(string[] args)
        {
            setTransformations();
            Generator.start();
        }

        private static void setTransformations()
        {
            //In c#-bindinds, types beginning with "HTML" will be renamed to "Html".
            //THe output generates still the "HTML" version, for example
            //c#: el is HtmlImageElement
            //js: el instanceof HTMLImageElement
            //Transformations.renameCsTypePrefix("HTML", "Html");
            //Transformations.renameCsTypePrefix("SVG", "Svg");
            //Transformations.renameCsTypePrefix("CSS", "Css");

            Transformations.renameType("EventListener", "Function");

            //---
            /*Transformations.moveToRootNamespace("css");
            Transformations.moveToRootNamespace("dom");
            Transformations.moveToRootNamespace("html");
            Transformations.moveToRootNamespace("html.canvas");
            Transformations.moveToRootNamespace("websockets");
            Transformations.moveToRootNamespace("page");
            Transformations.moveToRootNamespace("xml");*/

            Transformations.generateElementConstructorForType("HTML", "Element"); //This will extract "hr" from HtmlHrElement and generates document.createElement('hr')
            Transformations.generateElementConstructorForType("SVG", "Element");

            //Extracting the tagName will sometimes not get the correct tagname. Here they can specified more detailed.
            Transformations.generateElementConstructorCorrectTagName("HTMLImageElement", "img");
            Transformations.generateElementConstructorCorrectTagName("HTMLAnchorElement", "a");
            Transformations.generateElementConstructorCorrectTagName("HTMLTableCaptionElement", "caption");
            Transformations.generateElementConstructorCorrectTagName("HTMLTableCellElement", "td");
            Transformations.generateElementConstructorCorrectTagName("HTMLTableColElement", "col");
            Transformations.generateElementConstructorCorrectTagName("HTMLTableRowElement", "tr");
            Transformations.generateElementConstructorCorrectTagName("HTMLTableSectionElement", "tbody"); //TODO: It can be thead or tfoot, too!
            Transformations.generateElementConstructorCorrectTagName("HTMLDListElement", "dl");
            Transformations.generateElementConstructorCorrectTagName("HTMLOListElement", "ol");
            Transformations.generateElementConstructorCorrectTagName("HTMLUListElement", "ul");
            Transformations.generateElementConstructorCorrectTagName("HTMLDictionaryElement", "d");
            Transformations.generateElementConstructorCorrectTagName("HTMLParagraphElement", "p");
            Transformations.generateElementConstructorCorrectTagName("HTMLModElement", "tbody"); // TODO: Could be del or ins, but not mod. mod is an interface.

            //The Webkit IDL files have sometimes another return type for internal use. Here they can be corrected.
            Transformations.changeDelegateResultType("PositionCallback", "void");
            Transformations.changeDelegateResultType("PositionErrorCallback", "void");

            Transformations.renameType("Event", "DomEvent");
            //Transformations.renameType("DOMWindow", "Window");
        }

    }

}

