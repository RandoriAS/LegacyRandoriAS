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

namespace ConsoleApplication1
{
    class Program
    {
        //Where the .as files will be saved
        public static string OutputDirectory = @"C:\projects\RandoriAS\Node.js\src\randori\nodejs";
        //api.jquery.com/entries directory:
        public static string JSONDir = @"C:\projects\NodeJSDoc";

        static void Main(string[] args)
        {
            var files = Directory.EnumerateFiles(JSONDir).ToList<string>();
            files.ForEach(f => ProcessJSONFile(f));
            Console.WriteLine("Finished, press any key to continue...");
            Console.ReadKey();
        }

        private static void ProcessJSONFile(string FileName)
        {
            var strJSON = File.ReadAllText(FileName);
            JObject json = JObject.Parse(strJSON);
            if (json["modules"] != null)
            {
                JToken modules = json["modules"];
                modules.ToList<JToken>().ForEach(t => Console.WriteLine(t["name"]));
            }
        }

    }

}
