
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

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Xml;
using System.Xml.Linq;

namespace WebIDLParser
{

    public class Generator
    {

        public static TParsedFileList parsedFiles = new TParsedFileList();

        public static void start()
        {
            if (Program.runW3CXMLPreProcess)
            {
                PreprocessW3CXML();
            }

            if (!Directory.Exists(Program.idlOutTempDirectory)) Directory.CreateDirectory(Program.idlOutTempDirectory);
            if (!Directory.Exists(Program.csOutDirectory)) Directory.CreateDirectory(Program.csOutDirectory);

            TScriptTokenizer.SharedInit();

            convertDirectory(Program.idlInDirectory, Program.csOutDirectory);

            foreach (var pFile in parsedFiles)
            {
                foreach (var ns in pFile.nsList)
                {
                    foreach (var t in ns.types)
                    {

                        foreach (var attr in t.attributes)
                        {
                            if (attr is TNameAttribute)
                            {
                                var nameAttr = attr as TNameAttribute;
                                if (nameAttr.name == "InterfaceName")
                                {
                                    t.rename(nameAttr.value);
                                    break;
                                }
                            }

                        }

                        /*if (t.name == "Event")
                        {
                            t.rename("DOMEvent");
                            t.aliasName = "Event";
                        }*/

                        string newName;
                        if (TransformationConfig.renameType.TryGetValue(t.name, out newName))
                        {
                            t.aliasName = t.name;
                            t.rename(newName);
                        }

                        foreach (var entry in TransformationConfig.renameTypePrefix)
                        {
                            if (t.name.StartsWith(entry.Key))
                            {
                                t.aliasName = t.name;
                                t.rename(t.name.Replace(entry.Key, entry.Value));
                            }
                        }

                        foreach (var mem in t.members)
                        {
                            if (mem.name.StartsWith("on") && mem.resultType.name == "Function")
                            {
                                var eventName = mem.name.Substring(2) + "Event";
                                var eventType = findFileType(eventName, true);
                                eventName = char.ToUpper(eventName[0]) + eventName.Substring(1);
                                mem.comments.Add("Function that accepts an event of type <code>" + eventName + "</code>.");
                                if (eventType != null)
                                {
                                    mem.comments.Add("@see " + eventType.ns.name + "." + eventType.name);
                                    mem.resultType.name = "Function";
                                    //mem.resultType.genericType = new TType() { name = eventType.name };
                                }
                            }
                        }
                    }
                }
            }

            foreach (var pFile in parsedFiles)
            {
                //pFile.removeUnknownTypes();
                foreach (var ns in pFile.nsList)
                {
                    foreach (var t in ns.types)
                    {
                        t.checkConvertToInterface();
                        if (t.name == "SVGLocatable")
                        {
                            t.convertToInterface();
                        }
                        t.generateConstructors();
                        t.disambiguateMethodNames();
                        t.generateComments();
                        t.generateMemberComments();
                        t.mergeConstructors();
                    }
                }
            }

            foreach (var pFile in parsedFiles)
            {
                foreach (var ns in pFile.nsList)
                {
                    foreach (var t in ns.types)
                    {
                        t.checkGenerateEnumerator();
                        if (t.name == "Window")
                        {
                            foreach (var m in t.members)
                            {
                                m.isStatic = true;
                            }
                        }
                    }
                }
            }

            foreach (var pFile in parsedFiles)
            {
                foreach (var ns in pFile.nsList)
                {
                    foreach (var t in ns.types)
                    {
                        if (!hasConstructor(t))
                        {
                            t.createSubConstructors();
                        }
                        t.removeMembersAlreadyPresentInBaseTypes();
                    }
                }
            }

            foreach (var pFile in parsedFiles)
            {
                if (pFile.outFile.Contains("CSSStyleDeclaration"))
                {
                    var k = 0;
                }
                pFile.saveFile();
            }

            Console.WriteLine("ready");
            Console.ReadKey();
        }

        private static void PreprocessW3CXML()
        {
            Directory.EnumerateDirectories(Program.w3cDirectory + "preprocess").ToList<String>().ForEach(d => PreprocessW3CDirectory(d));
        }

        private static void PreprocessW3CDirectory(string dir)
        {
            Directory.EnumerateFiles(dir).ToList<String>().ForEach(f => PreprocessW3CFile(f, dir));
        }

        private static void PreprocessW3CFile(string file, string dir)
        {
            var parts = dir.Split(Path.DirectorySeparatorChar);
            var savedir = Path.Combine(Program.w3cDirectory, parts[parts.Length - 1], "definitions");
            var xdoc = XDocument.Load(file);
            xdoc.Descendants("interface").ToList<XElement>().ForEach(e => SaveW3CFile(e, savedir));
        }

        private static void SaveW3CFile(XElement element, string savedir)
        {
            var name = element.Attribute("name").Value + ".xml";
            var content = element.ToString();
            if (!Directory.Exists(savedir))
            {
                Directory.CreateDirectory(savedir);
            }
            File.WriteAllText(Path.Combine(savedir, name), content);
        }

        private static bool hasConstructor(TFileType t)
        {
            foreach (var member in t.members)
            {
                if (member is TMethod)
                {
                    var method = (TMethod)member;
                    if (method.isConstructor)
                    {
                        return true;
                    }
                }
            }
            return false;
        }

        public static TType findType(string name, bool ignoreCase = false)
        {
            if (ignoreCase) name = name.ToLower();
            foreach (var tType in Generator.allTypes)
            {
                var typeName = (ignoreCase ? tType.name.ToLower() : tType.name);
                if (typeName == name)
                {
                    return tType;
                }
            }
            return null;
        }

        public static TFileType findFileType(string name, bool ignoreCase = false)
        {
            if (ignoreCase) name = name.ToLower();
            foreach (var pFile in Generator.parsedFiles)
            {
                foreach (var ns in pFile.nsList)
                {
                    foreach (var t in ns.types)
                    {
                        var typeName = (ignoreCase ? t.name.ToLower() : t.name);
                        if (typeName == name)
                        {
                            return t;
                        }
                    }
                }
            }
            return null;
        }

        public static HashSet<string> namespaceNames = new HashSet<string>();
        public static TTypeList allTypes = new TTypeList();

        public static TFileTypeList findByBaseType(string name)
        {
            var list = new TFileTypeList();
            foreach (var pFile in Generator.parsedFiles)
            {
                foreach (var ns in pFile.nsList)
                {
                    foreach (var t in ns.types)
                    {
                        foreach (var baseType in t.baseType)
                        {
                            if (baseType.name == name)
                            {
                                list.Add(t);
                                break;
                            }
                        }
                    }
                }
            }
            return list;
        }

        public static void convertFile(string InFile, string OutFile)
        {
            TStringList st = new TStringList();
            st.Add("org\\w3c\\dom\\html\\Function.java");
            st.Add("org\\w3c\\dom\\websocket");

            foreach (string f in st)
            {
                if (InFile.Contains(f))
                {
                    return;
                }
            }

            Console.WriteLine(InFile);

            if (!(System.IO.Directory.Exists(Path.GetDirectoryName(OutFile))))
                System.IO.Directory.CreateDirectory(Path.GetDirectoryName(OutFile).ToLower());

            TParsedFile Parser = new TParsedFile();
            Parser.convertFile(InFile, OutFile);

            parsedFiles.Add(Parser);
        }

        public static void convertDirectory(string InDir, string OutDir)
        {
            var exclude = new TStringList();
            exclude.Add("WebCore\\bindings");
            exclude.Add("WebCore\\testing");

            foreach (var excl in exclude)
                if (InDir.EndsWith(excl)) return;

            if (!(InDir.EndsWith("\\")))
            {
                InDir += "\\";
            }
            if (!(OutDir.EndsWith("\\")))
            {
                OutDir += "\\";
            }

            System.IO.DirectoryInfo InDirInfo = new System.IO.DirectoryInfo(InDir);
            foreach (System.IO.DirectoryInfo InDirInfo2 in InDirInfo.GetDirectories())
            {
                convertDirectory(InDirInfo2.FullName, OutDir + InDirInfo2.Name);
            }

            foreach (System.IO.FileInfo file in InDirInfo.GetFiles("*.idl"))
            {
                convertFile(file.FullName, OutDir + file.Name.Replace(".idl", ".as"));
            }
        }

        public static string getName(string name)
        {
            if (TScriptTokenizer.TokenConstHash.Contains(name.ToUpper()))
            {
                if (name != "this")
                {
                    return name + "_";
                }
            }


            var keywords = new HashSet<string>(new string[] { 
				"continue",
				"override",
                "break",
				"public",
				"private",
                "protected",
                "trace",
                "default",
                "delete"
			});

            if (keywords.Contains(name)) return name + "_";

            return name;
        }

        static void addFileToCsProj(string csProjFilename, string filenameToAdd)
        {
            var ns = XNamespace.Get("http://schemas.microsoft.com/developer/msbuild/2003");
            var proj = XDocument.Load(csProjFilename);
            var itemGroup = proj.Root.Elements(ns + "ItemGroup").Last();
            itemGroup.Add(new XElement(ns + "Compile", new XAttribute("Include", filenameToAdd)));
            //File.Copy(csProjFilename, csProjFilename + ".bak", true);//backup
            //proj.Save(csProjFilename);
        }

    }

    public class TParsedFileList : List<TParsedFile>
    {
    }

}
