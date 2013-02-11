using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Security.Permissions;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace System.CodeDom.Compiler
{
    [PermissionSet(SecurityAction.LinkDemand, Name = "FullTrust")]
    [PermissionSet(SecurityAction.InheritanceDemand, Name = "FullTrust")]
    public class AS3CodeProvider : CodeDomProvider
    {
        private ActionscriptCodeGenerator generator;

        override public string FileExtension
        {
            get { return "as"; }
        }

        public AS3CodeProvider(IDictionary<string, string> providerOptions = null)
        {
            /*if (providerOptions == null)
            {
                throw new ArgumentNullException("providerOptions");
            }*/

            generator = new ActionscriptCodeGenerator();
        }

        [Obsolete]
        public override ICodeCompiler CreateCompiler()
        {
            throw new NotImplementedException("No compiler available for Actionscript output");
        }

        [Obsolete]
        public override ICodeGenerator CreateGenerator()
        {
            return (ICodeGenerator)generator;
        }

        public override TypeConverter GetConverter(Type type)
        {
            if (type == typeof(MemberAttributes))
            {
                return CSharpMemberAttributeConverter.Default;
            }
            else if (type == typeof(TypeAttributes))
            {
                return CSharpTypeAttributeConverter.Default;
            }

            return base.GetConverter(type);
        }

        public override void GenerateCodeFromMember(CodeTypeMember member, TextWriter writer, CodeGeneratorOptions options)
        {
            generator.GenerateCodeFromMember(member, writer, options);
        }

    }

    internal class ActionscriptCodeGenerator : ICodeGenerator
    {
        private IndentedTextWriter output;
        private CodeGeneratorOptions options;
        private CodeTypeDeclaration currentClass;
        private CodeTypeMember currentMember;
        private bool inNestedBinary = false;
        private IDictionary<string, string> provOptions;

        private const int ParameterMultilineThreshold = 15;
        private const int MaxLineLength = 80;
        private const GeneratorSupport LanguageSupport = GeneratorSupport.ArraysOfArrays |
                                                         GeneratorSupport.GotoStatements |
                                                         GeneratorSupport.MultidimensionalArrays |
                                                         GeneratorSupport.TryCatchStatements |
                                                         GeneratorSupport.DeclareValueTypes |
                                                         GeneratorSupport.DeclareInterfaces |
                                                         GeneratorSupport.NestedTypes |
                                                         GeneratorSupport.MultipleInterfaceMembers |
                                                         GeneratorSupport.PublicStaticMembers |
                                                         GeneratorSupport.ComplexExpressions;

        //private static Regex outputReg;

        private static readonly string[][] keywords = new string[][] {
            null,           // 1 character
            new string[] {  // 2 characters
                "as",
                "if",
                "in",
                "is",
            },
            new string[] {  // 3 characters
                "for",
                "int",
                "new",
                "try",
            },
            new string[] {  // 4 characters
                "case",
                "else",
                "goto",
                "null",
                "this",
                "true",
                "uint",
                "void",
                "each",
            },
            new string[] {  // 5 characters
                "break",
                "catch",
                "class",
                "const",
                "false",
                "throw",
                "while",
                "super",
            },
            new string[] {  // 6 characters
                "Object",
                "params",
                "public",
                "return",
                "static",
                "String",
                "switch",
                "typeof",
                "import",
                "Number",
            },
            new string[] {  // 7 characters
                "finally",
                "private",
                "Boolean",
                "package",
            },
            new string[] {  // 8 characters
                "continue",
                "function",
                "internal",
                "override",
            },
            new string[] {  // 9 characters
                "interface",
                "namespace",
                "protected",
            },
        };

        internal ActionscriptCodeGenerator()
        {
        }

        internal ActionscriptCodeGenerator(IDictionary<string, string> providerOptions)
        {
            provOptions = providerOptions;
        }

        private bool generatingForLoop = false;

        private string FileExtension { get { return ".as"; } }

        private string CurrentTypeName
        {
            get
            {
                if (currentClass != null)
                {
                    return currentClass.Name;
                }
                return "<% unknown %>";
            }
        }

        private int Indent
        {
            get
            {
                return output.Indent;
            }
            set
            {
                output.Indent = value;
            }
        }

        private bool IsCurrentInterface
        {
            get
            {
                if (currentClass != null && !(currentClass is CodeTypeDelegate))
                {
                    return currentClass.IsInterface;
                }
                return false;
            }
        }

        private bool IsCurrentClass
        {
            get
            {
                if (currentClass != null && !(currentClass is CodeTypeDelegate))
                {
                    return currentClass.IsClass;
                }
                return false;
            }
        }

        private string NullToken
        {
            get
            {
                return "null";
            }
        }

        private CodeGeneratorOptions Options
        {
            get
            {
                return options;
            }
        }

        private TextWriter Output
        {
            get
            {
                return output;
            }
        }

        public void GenerateCodeFromMember(CodeTypeMember member, TextWriter writer, CodeGeneratorOptions options)
        {
            if (this.output != null)
            {
                throw new InvalidOperationException("Code gen re-entrance");
            }
            this.options = (options == null) ? new CodeGeneratorOptions() : options;
            this.output = new IndentedTextWriter(writer, this.options.IndentString);

            try
            {
                CodeTypeDeclaration dummyClass = new CodeTypeDeclaration();
                this.currentClass = dummyClass;
                GenerateTypeMember(member, dummyClass);
            }
            finally
            {
                this.currentClass = null;
                this.output = null;
                this.options = null;
            }
        }

        private void GenerateTypeMember(CodeTypeMember member, CodeTypeDeclaration declaredType)
        {

            if (options.BlankLinesBetweenMembers)
            {
                Output.WriteLine();
            }

            if (member is CodeTypeDeclaration)
            {
                ((ICodeGenerator)this).GenerateCodeFromType((CodeTypeDeclaration)member, output.InnerWriter, options);

                // Nested types clobber the current class, so reset it.
                currentClass = declaredType;

                // For nested types, comments and line pragmas are handled separately, so return here
                return;
            }


            GenerateCommentStatements(member.Comments, member);

            if (member is CodeMemberField)
            {
                GenerateField((CodeMemberField)member);
            }
            else if (member is CodeMemberProperty)
            {
                GenerateProperty((CodeMemberProperty)member, declaredType);
            }
            else if (member is CodeMemberMethod)
            {
                if (member is CodeConstructor)
                {
                    GenerateConstructor((CodeConstructor)member, declaredType);
                }
                else if (member is CodeTypeConstructor)
                {
                    GenerateTypeConstructor((CodeTypeConstructor)member);
                }
                else
                {
                    GenerateMethod((CodeMemberMethod)member, declaredType);
                }
            }
            else if (member is CodeSnippetTypeMember)
            {

                // Don't indent snippets, in order to preserve the column
                // information from the original code.  This improves the debugging
                // experience.
                int savedIndent = Indent;
                Indent = 0;

                GenerateSnippetMember((CodeSnippetTypeMember)member);

                // Restore the indent
                Indent = savedIndent;

                // Generate an extra new line at the end of the snippet.
                // If the snippet is comment and this type only contains comments.
                // The generated code will not compile.
                Output.WriteLine();
            }
        }

        private void GenerateParameterCommentStatements(CodeParameterDeclarationExpressionCollection codeParameterDeclarationExpressionCollection)
        {
            throw new NotImplementedException();
        }

        private void GenerateSnippetMember(CodeSnippetTypeMember e)
        {
            Output.Write(e.Text);
        }

        private void GenerateMethod(CodeMemberMethod method, CodeTypeDeclaration type)
        {
            if (!(IsCurrentClass || IsCurrentInterface)) return;

            if (method.CustomAttributes.Count > 0)
            {
                GenerateAttributes(method.CustomAttributes);
            }

            if (!IsCurrentInterface)
            {
                if (method.PrivateImplementationType == null)
                {
                    OutputMemberAccessModifier(method.Attributes);
                    OutputMemberScopeModifier(method.Attributes);
                }
            }

            Output.Write("function ");
            if (method.PrivateImplementationType != null)
            {
                Output.Write(method.PrivateImplementationType.BaseType);
                Output.Write(".");
            }
            OutputIdentifier((string)method.UserData["ActionscriptName"]);

            Output.Write("(");
            OutputParameters(method.Parameters);
            Output.Write("):");
            OutputType(method.ReturnType);

            if (!IsCurrentInterface
                && (method.Attributes & MemberAttributes.ScopeMask) != MemberAttributes.Abstract)
            {

                OutputStartingBrace();
                Indent++;
                CodeTypeReference returnType = null;
                if ((bool)method.UserData["IsAsterisk"] == true)
                {
                    returnType = method.ReturnType;
                    method.ReturnType = new CodeTypeReference("*");
                }
                GenerateStatements(method.Statements);
                if (returnType != null)
                {
                    method.ReturnType = returnType;
                }

                Indent--;
                Output.WriteLine("}");
            }
            else
            {
                Output.WriteLine(";");
            }
        }


        private void GenerateConstructors(CodeTypeDeclaration e)
        {
            IEnumerator en = e.Members.GetEnumerator();
            while (en.MoveNext())
            {
                if (en.Current is CodeConstructor)
                {
                    currentMember = (CodeTypeMember)en.Current;

                    if (options.BlankLinesBetweenMembers)
                    {
                        Output.WriteLine();
                    }

                    GenerateCommentStatements(currentMember.Comments, currentMember);
                    CodeConstructor imp = (CodeConstructor)en.Current;
                    GenerateConstructor(imp, e);
                }
            }
        }

        private void GenerateConstructor(CodeConstructor e, CodeTypeDeclaration c)
        {
            if (!(IsCurrentClass)) return;

            if (e.CustomAttributes.Count > 0)
            {
                GenerateAttributes(e.CustomAttributes);
            }

            OutputMemberAccessModifier(e.Attributes);
            OutputIdentifier(CurrentTypeName);
            Output.Write("(");
            OutputParameters(e.Parameters);
            Output.Write(")");

            CodeExpressionCollection baseArgs = e.BaseConstructorArgs;
            CodeExpressionCollection thisArgs = e.ChainedConstructorArgs;

            if (baseArgs.Count > 0)
            {
                Output.WriteLine(" : ");
                Indent++;
                Indent++;
                Output.Write("base(");
                OutputExpressionList(baseArgs);
                Output.Write(")");
                Indent--;
                Indent--;
            }

            if (thisArgs.Count > 0)
            {
                Output.WriteLine(" : ");
                Indent++;
                Indent++;
                Output.Write("this(");
                OutputExpressionList(thisArgs);
                Output.Write(")");
                Indent--;
                Indent--;
            }

            OutputStartingBrace();
            Indent++;
            GenerateStatements(e.Statements);
            Indent--;
            Output.WriteLine("}");
        }

        private void OutputParameters(CodeParameterDeclarationExpressionCollection parameters)
        {
            bool first = true;
            bool multiline = parameters.Count > ParameterMultilineThreshold;
            if (multiline)
            {
                Indent += 3;
            }
            IEnumerator en = parameters.GetEnumerator();
            while (en.MoveNext())
            {
                CodeParameterDeclarationExpression current = (CodeParameterDeclarationExpression)en.Current;
                if (first)
                {
                    first = false;
                }
                else
                {
                    Output.Write(", ");
                }
                if (multiline)
                {
                    ContinueOnNewLine("");
                }
                GenerateExpression(current);
            }
            if (multiline)
            {
                Indent -= 3;
            }
        }

        private void GenerateTypeConstructor(CodeTypeConstructor e)
        {
            if (!(IsCurrentClass)) return;

            if (e.CustomAttributes.Count > 0)
            {
                GenerateAttributes(e.CustomAttributes);
            }
            Output.Write("static ");
            Output.Write(CurrentTypeName);
            Output.Write("()");
            OutputStartingBrace();
            Indent++;
            GenerateStatements(e.Statements);
            Indent--;
            Output.WriteLine("}");
        }


        private void GenerateProperty(CodeMemberProperty e, CodeTypeDeclaration c)
        {
            if (!(IsCurrentClass || IsCurrentInterface)) return;

            if (e.CustomAttributes.Count > 0)
            {
                GenerateAttributes(e.CustomAttributes);
            }

            if (e.HasGet)
            {
                if (!IsCurrentInterface)
                {
                    OutputMemberAccessModifier(e.Attributes);
                    OutputMemberScopeModifier(e.Attributes);
                }

                Output.Write(" function get ");

                OutputIdentifier(e.Name);
                Output.Write("():");
                OutputType(e.Type);

                OutputStartingBrace();
                Indent++;

                OutputStartingBrace();
                Indent++;
                GenerateStatements(e.GetStatements);
                Indent--;
                Output.WriteLine("}");
            }
            if (e.HasSet)
            {
                if (!IsCurrentInterface)
                {
                    OutputMemberAccessModifier(e.Attributes);
                    OutputMemberScopeModifier(e.Attributes);
                }

                Output.Write(" function set ");

                OutputIdentifier(e.Name);
                Output.Write("(value:");
                OutputType(e.Type);
                Output.Write("):void");

                OutputStartingBrace();
                Indent++;
                GenerateStatements(e.SetStatements);
                Indent--;
                Output.WriteLine("}");
            }

            Indent--;
            Output.WriteLine("}");
        }

        private void OutputMemberScopeModifier(MemberAttributes attributes)
        {
            switch (attributes & MemberAttributes.ScopeMask)
            {
                case MemberAttributes.Abstract:
                    break;
                case MemberAttributes.Final:
                    Output.Write("");
                    break;
                case MemberAttributes.Static:
                    Output.Write("static ");
                    break;
                case MemberAttributes.Override:
                    Output.Write("override ");
                    break;
            }
        }

        private void GenerateFields(CodeTypeDeclaration e)
        {
            IEnumerator en = e.Members.GetEnumerator();
            while (en.MoveNext())
            {
                if (en.Current is CodeMemberField)
                {
                    currentMember = (CodeTypeMember)en.Current;

                    if (options.BlankLinesBetweenMembers)
                    {
                        Output.WriteLine();
                    }

                    GenerateCommentStatements(currentMember.Comments, currentMember);
                    CodeMemberField imp = (CodeMemberField)en.Current;
                    GenerateField(imp);
                }
            }
        }

        private void GenerateField(CodeMemberField field)
        {
            if (IsCurrentInterface) return;


            if (field.CustomAttributes.Count > 0)
            {
                GenerateAttributes(field.CustomAttributes);
            }

            OutputMemberAccessModifier(field.Attributes);
            OutputFieldScopeModifier(field.Attributes);
            Output.Write("var ");
            var type = field.Type;
            if ((bool)field.UserData["IsAsterisk"] == true)
            {
                type = new CodeTypeReference("*");
            }
            OutputTypeNamePair(type, field.Name);
            if (field.InitExpression != null)
            {
                Output.Write(" = ");
                GenerateExpression(field.InitExpression);
            }
            Output.WriteLine(";");
        }

        private void OutputFieldScopeModifier(MemberAttributes attributes)
        {
            switch (attributes & MemberAttributes.ScopeMask)
            {
                case MemberAttributes.Final:
                    break;
                case MemberAttributes.Static:
                    Output.Write("static ");
                    break;
                case MemberAttributes.Const:
                    Output.Write("const ");
                    break;
                default:
                    break;
            }
        }

        private void OutputMemberAccessModifier(MemberAttributes attributes)
        {
            switch (attributes & MemberAttributes.AccessMask)
            {
                case MemberAttributes.Assembly:
                case MemberAttributes.FamilyAndAssembly:
                case MemberAttributes.FamilyOrAssembly:
                case MemberAttributes.Family:
                    Output.Write("protected ");
                    break;
                case MemberAttributes.Private:
                    Output.Write("private ");
                    break;
                case MemberAttributes.Public:
                default:
                    Output.Write("public ");
                    break;
            }
        }

        private string QuoteSnippetStringCStyle(string value)
        {
            StringBuilder b = new StringBuilder(value.Length + 5);
            b.Append("\"");

            int i = 0;
            while (i < value.Length)
            {
                switch (value[i])
                {
                    case '\r':
                        b.Append("\\r");
                        break;
                    case '\t':
                        b.Append("\\t");
                        break;
                    case '\"':
                        b.Append("\\\"");
                        break;
                    case '\'':
                        b.Append("\\\'");
                        break;
                    case '\\':
                        b.Append("\\\\");
                        break;
                    case '\0':
                        b.Append("\\0");
                        break;
                    case '\n':
                        b.Append("\\n");
                        break;
                    case '\u2028':
                    case '\u2029':
                        AppendEscapedChar(b, value[i]);
                        break;

                    default:
                        b.Append(value[i]);
                        break;
                }

                if (i > 0 && i % MaxLineLength == 0)
                {
                    //
                    // If current character is a high surrogate and the following
                    // character is a low surrogate, don't break them.
                    // Otherwise when we write the string to a file, we might lose
                    // the characters.
                    //
                    if (Char.IsHighSurrogate(value[i])
                        && (i < value.Length - 1)
                        && Char.IsLowSurrogate(value[i + 1]))
                    {
                        b.Append(value[++i]);
                    }

                    b.Append("\" +\r\n");

                    b.Append('\"');
                }
                ++i;
            }

            b.Append("\"");

            return b.ToString();
        }

        private string QuoteSnippetStringVerbatimStyle(string value)
        {
            StringBuilder b = new StringBuilder(value.Length + 5);

            b.Append("\"");

            for (int i = 0; i < value.Length; i++)
            {
                if (value[i] == '\"')
                    b.Append("\"\"");
                else
                    b.Append(value[i]);
            }
            b.Append("\"");
            return b.ToString();
        }

        private string QuoteSnippetString(string value)
        {
            // If the string is short, use C style quoting (e.g "\r\n")
            // Also do it if it is too long to fit in one line
            // If the string contains '\0', verbatim style won't work.
            if (value.Length < 256 || value.Length > 1500 || (value.IndexOf('\0') != -1))
            {
                return QuoteSnippetStringCStyle(value);
            }

            // Otherwise, use 'verbatim' style quoting (e.g. @"foo")
            return QuoteSnippetStringVerbatimStyle(value);
        }


        public string CreateEscapedIdentifier(string name)
        {
            // Any identifier started with two consecutive underscores are
            // reserved by CSharp.
            if (IsKeyword(name))
            {
                return name + "_";
            }
            return name;
        }

        static bool IsKeyword(string value)
        {
            return FixedStringLookup.Contains(keywords, value, false);
        }

        public string CreateValidIdentifier(string value)
        {
            while (IsKeyword(value))
            {
                value = "_" + value;
            }

            return value;
        }

        public void GenerateCodeFromCompileUnit(CodeCompileUnit e, TextWriter w, CodeGeneratorOptions o)
        {
            bool setLocal = false;
            if (output != null && w != output.InnerWriter)
            {
                throw new InvalidOperationException("Wring output writer");
            }
            if (output == null)
            {
                setLocal = true;
                options = (o == null) ? new CodeGeneratorOptions() : o;
                output = new IndentedTextWriter(w, options.IndentString);
            }

            try
            {
                GenerateCompileUnit(e);
            }
            finally
            {
                if (setLocal)
                {
                    output = null;
                    options = null;
                }
            }
        }

        private void GenerateCompileUnit(CodeCompileUnit e)
        {
            GenerateNamespaces(e);
            GenerateCompileUnitStart(e);
        }

        private void GenerateNamespaces(CodeCompileUnit e)
        {
            GenerateFileHeader((string)e.UserData["fileheader"], output.InnerWriter);
            foreach (CodeNamespace n in e.Namespaces)
            {
                ((ICodeGenerator)this).GenerateCodeFromNamespace(n, output.InnerWriter, options);
            }
        }

        private void GenerateFileHeader(string HeaderText, TextWriter textWriter)
        {
            textWriter.Write(HeaderText);
        }

        private void GenerateCompileUnitStart(CodeCompileUnit e)
        {
            SortedList importList;
            // CSharp needs to put assembly attributes after using statements.
            // Since we need to create a empty namespace even if we don't need it,
            // using will generated after assembly attributes.
            importList = new SortedList(StringComparer.Ordinal);
            foreach (CodeNamespace nspace in e.Namespaces)
            {
                if (String.IsNullOrEmpty(nspace.Name))
                {
                    // mark the namespace to stop it generating its own import list
                    nspace.UserData["GenerateImports"] = false;

                    // Collect the unique list of imports
                    foreach (CodeNamespaceImport import in nspace.Imports)
                    {
                        if (!importList.Contains(import.Namespace))
                        {
                            importList.Add(import.Namespace, import.Namespace);
                        }
                    }
                }
            }

            // now output the imports
            foreach (string import in importList.Keys)
            {
                Output.Write("import ");
                OutputIdentifier(import);
                Output.WriteLine(";");
            }
            if (importList.Keys.Count > 0)
            {
                Output.WriteLine("");
            }

        }

        private void OutputIdentifier(string ident)
        {
            Output.Write(CreateEscapedIdentifier(ident));
        }

        public void GenerateCodeFromExpression(CodeExpression e, TextWriter w, CodeGeneratorOptions o)
        {
            bool setLocal = false;
            if (output != null && w != output.InnerWriter)
            {
                throw new InvalidOperationException("inner writer is not the same as received writer");
            }
            if (output == null)
            {
                setLocal = true;
                options = (o == null) ? new CodeGeneratorOptions() : o;
                output = new IndentedTextWriter(w, options.IndentString);
            }

            try
            {
                GenerateExpression(e);
            }
            finally
            {
                if (setLocal)
                {
                    output = null;
                    options = null;
                }
            }
        }

        private void GenerateExpressionStatement(CodeExpressionStatement e)
        {
            GenerateExpression(e.Expression);
            if (!generatingForLoop)
            {
                Output.WriteLine(";");
            }
        }

        private void GenerateExpression(CodeExpression expression)
        {
            if (expression is CodeArrayCreateExpression)
            {
                GenerateArrayCreateExpression((CodeArrayCreateExpression)expression);
            }
            else if (expression is CodeBaseReferenceExpression)
            {
                GenerateBaseReferenceExpression((CodeBaseReferenceExpression)expression);
            }
            else if (expression is CodeBinaryOperatorExpression)
            {
                GenerateBinaryOperatorExpression((CodeBinaryOperatorExpression)expression);
            }
            else if (expression is CodeCastExpression)
            {
                GenerateCastExpression((CodeCastExpression)expression);
            }
            else if (expression is CodeFieldReferenceExpression)
            {
                GenerateFieldReferenceExpression((CodeFieldReferenceExpression)expression);
            }
            else if (expression is CodeArgumentReferenceExpression)
            {
                GenerateArgumentReferenceExpression((CodeArgumentReferenceExpression)expression);
            }
            else if (expression is CodeVariableReferenceExpression)
            {
                GenerateVariableReferenceExpression((CodeVariableReferenceExpression)expression);
            }
            else if (expression is CodeArrayIndexerExpression)
            {
                GenerateArrayIndexerExpression((CodeArrayIndexerExpression)expression);
            }
            else if (expression is CodeSnippetExpression)
            {
                GenerateSnippetExpression((CodeSnippetExpression)expression);
            }
            else if (expression is CodeMethodInvokeExpression)
            {
                GenerateMethodInvokeExpression((CodeMethodInvokeExpression)expression);
            }
            else if (expression is CodeMethodReferenceExpression)
            {
                GenerateMethodReferenceExpression((CodeMethodReferenceExpression)expression);
            }
            else if (expression is CodeObjectCreateExpression)
            {
                GenerateObjectCreateExpression((CodeObjectCreateExpression)expression);
            }
            else if (expression is CodeParameterDeclarationExpression)
            {
                GenerateParameterDeclarationExpression((CodeParameterDeclarationExpression)expression);
            }
            else if (expression is CodePrimitiveExpression)
            {
                GeneratePrimitiveExpression((CodePrimitiveExpression)expression);
            }
            else if (expression is CodePropertyReferenceExpression)
            {
                GeneratePropertyReferenceExpression((CodePropertyReferenceExpression)expression);
            }
            else if (expression is CodePropertySetValueReferenceExpression)
            {
                GeneratePropertySetValueReferenceExpression((CodePropertySetValueReferenceExpression)expression);
            }
            else if (expression is CodeThisReferenceExpression)
            {
                GenerateThisReferenceExpression((CodeThisReferenceExpression)expression);
            }
            else if (expression is CodeTypeReferenceExpression)
            {
                GenerateTypeReferenceExpression((CodeTypeReferenceExpression)expression);
            }
            else if (expression is CodeTypeOfExpression)
            {
                GenerateTypeOfExpression((CodeTypeOfExpression)expression);
            }
            else if (expression is CodeDefaultValueExpression)
            {
                GenerateDefaultValueExpression((CodeDefaultValueExpression)expression);
            }
            else
            {
                if (expression == null)
                {
                    throw new ArgumentNullException("e");
                }
                else
                {
                    throw new ArgumentException("e is of an invalid type: " + expression.GetType().FullName, "e");
                }
            }
        }

        private void GenerateDefaultValueExpression(CodeDefaultValueExpression expression)
        {
            var strType = GetTypeOutput(expression.Type).ToLower();
            if ((strType == "int") || (strType == "uint") || ((strType == "number")))
            {
                Output.Write("0");
            }
            else if (strType == "string")
            {
                Output.Write("''");
            }
            else if (strType == "bool")
            {
                Output.Write("false");
            }
            else if (strType == "boolean")
            {
                Output.Write("false");
            }
            else
            {
                Output.Write(NullToken);
            }
        }

        private void GenerateTypeOfExpression(CodeTypeOfExpression e)
        {
            Output.Write("typeof(");
            OutputType(e.Type);
            Output.Write(")");
        }

        private void GenerateTypeReferenceExpression(CodeTypeReferenceExpression e)
        {
            OutputType(e.Type);
        }

        private void GenerateThisReferenceExpression(CodeThisReferenceExpression e)
        {
            Output.Write("this");
        }

        private void GeneratePropertySetValueReferenceExpression(CodePropertySetValueReferenceExpression e)
        {
            Output.Write("value");
        }

        private void GeneratePropertyReferenceExpression(CodePropertyReferenceExpression e)
        {
            if (e.TargetObject != null)
            {
                GenerateExpression(e.TargetObject);
                Output.Write(".");
            }
            OutputIdentifier(e.PropertyName);
        }

        private void GeneratePrimitiveExpression(CodePrimitiveExpression e)
        {
            if (e.Value is char)
            {
                GeneratePrimitiveChar((char)e.Value);
            }
            else if (e.Value is SByte)
            {
                // C# has no literal marker for types smaller than Int32
                Output.Write(((SByte)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else if (e.Value is UInt16)
            {
                // C# has no literal marker for types smaller than Int32, and you will
                // get a conversion error if you use "u" here.
                Output.Write("0x");
                Output.Write(((UInt16)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else if (e.Value is UInt32)
            {
                Output.Write("0x");
                Output.Write(((UInt32)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else if (e.Value is UInt64)
            {
                Output.Write("0x");
                Output.Write(((UInt64)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else
            {
                GeneratePrimitiveExpressionBase(e);
            }
        }

        private void GeneratePrimitiveChar(char c)
        {
            Output.Write('\'');
            switch (c)
            {
                case '\r':
                    Output.Write("\\r");
                    break;
                case '\t':
                    Output.Write("\\t");
                    break;
                case '\"':
                    Output.Write("\\\"");
                    break;
                case '\'':
                    Output.Write("\\\'");
                    break;
                case '\\':
                    Output.Write("\\\\");
                    break;
                case '\0':
                    Output.Write("\\0");
                    break;
                case '\n':
                    Output.Write("\\n");
                    break;
                case '\u2028':
                case '\u2029':
                case '\u0084':
                case '\u0085':
                    AppendEscapedChar(null, c);
                    break;

                default:
                    if (Char.IsSurrogate(c))
                    {
                        AppendEscapedChar(null, c);
                    }
                    else
                    {
                        Output.Write(c);
                    }
                    break;
            }
            Output.Write('\'');
        }

        private void AppendEscapedChar(StringBuilder b, char value)
        {
            if (b == null)
            {
                Output.Write("\\u");
                Output.Write(((int)value).ToString("X4", CultureInfo.InvariantCulture));
            }
            else
            {
                b.Append("\\u");
                b.Append(((int)value).ToString("X4", CultureInfo.InvariantCulture));
            }
        }

        private void GeneratePrimitiveExpressionBase(CodePrimitiveExpression e)
        {
            if (e.Value == null)
            {
                Output.Write(NullToken);
            }
            else if (e.Value is string)
            {
                Output.Write(QuoteSnippetString((string)e.Value));
            }
            else if (e.Value is char)
            {
                Output.Write("'" + e.Value.ToString() + "'");
            }
            else if (e.Value is byte)
            {
                Output.Write(((byte)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else if (e.Value is Int16)
            {
                Output.Write(((Int16)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else if (e.Value is Int32)
            {
                Output.Write(((Int32)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else if (e.Value is Int64)
            {
                Output.Write(((Int64)e.Value).ToString(CultureInfo.InvariantCulture));
            }
            else if (e.Value is Single)
            {
                GenerateSingleFloatValue((Single)e.Value);
            }
            else if (e.Value is Double)
            {
                GenerateDoubleValue((Double)e.Value);
            }
            else if (e.Value is Decimal)
            {
                GenerateDecimalValue((Decimal)e.Value);
            }
            else if (e.Value is bool)
            {
                if ((bool)e.Value)
                {
                    Output.Write("true");
                }
                else
                {
                    Output.Write("false");
                }
            }
            else
            {
                throw new ArgumentException("Invalid primitive type", e.Value.GetType().ToString());
            }
        }

        private void GenerateDecimalValue(Decimal d)
        {
            Output.Write(d.ToString(CultureInfo.InvariantCulture));
        }

        private void GenerateDoubleValue(double d)
        {
            if (double.IsNaN(d))
            {
                Output.Write("NaN");
            }
            else if (double.IsNegativeInfinity(d))
            {
                Output.Write("-Infinity");
            }
            else if (double.IsPositiveInfinity(d))
            {
                Output.Write("Infinity");
            }
            else
            {
                Output.Write(d.ToString("R", CultureInfo.InvariantCulture));
            }
        }

        private void GenerateSingleFloatValue(Single s)
        {
            if (float.IsNaN(s))
            {
                Output.Write("NaN");
            }
            else if (float.IsNegativeInfinity(s))
            {
                Output.Write("-Infinity");
            }
            else if (float.IsPositiveInfinity(s))
            {
                Output.Write("Infinity");
            }
            else
            {
                Output.Write(s.ToString(CultureInfo.InvariantCulture));
            }
        }

        private void GenerateParameterDeclarationExpression(CodeParameterDeclarationExpression parameter)
        {
            if (parameter.CustomAttributes.Count > 0)
            {
                // Parameter attributes should be in-line for readability
                GenerateAttributes(parameter.CustomAttributes, null, true);
            }
            if ((bool)parameter.UserData["IsRestParams"] == false)
            {
                if ((bool)parameter.UserData["IsAsterisk"] == false)
                {
                    OutputTypeNamePair(parameter.Type, parameter.Name);
                }
                else
                {
                    OutputTypeNamePair(new CodeTypeReference("*"), parameter.Name);
                }
                if ((bool)parameter.UserData["IsOptional"] == true)
                {
                    Output.Write("=");
                    GenerateDefaultValueExpression(new CodeDefaultValueExpression(parameter.Type));
                }
            }
            else
            {
                Output.Write("...params");
            }
        }

        private string GetParameterDefault(CodeParameterDeclarationExpression parameter)
        {
            return (string)parameter.UserData["defaultValue"];
        }

        private void OutputTypeNamePair(CodeTypeReference typeRef, string name)
        {
            OutputIdentifier(name);
            Output.Write(":");
            OutputType(typeRef);
        }

        private void GenerateAttributes(CodeAttributeDeclarationCollection attributes)
        {
            GenerateAttributes(attributes, null, false);
        }

        private void GenerateAttributes(CodeAttributeDeclarationCollection attributes, string prefix)
        {
            GenerateAttributes(attributes, prefix, false);
        }

        private void GenerateAttributeDeclarationsStart(CodeAttributeDeclarationCollection attributes)
        {
            Output.Write("[");
        }

        private void GenerateAttributeDeclarationsEnd(CodeAttributeDeclarationCollection attributes)
        {
            Output.Write("]");
        }

        private void GenerateAttributes(CodeAttributeDeclarationCollection attributes, string prefix, bool inLine)
        {
            if (attributes.Count == 0) return;
            IEnumerator en = attributes.GetEnumerator();
            bool paramArray = false;

            while (en.MoveNext())
            {
                // we need to convert paramArrayAttribute to params keyword to
                // make csharp compiler happy. In addition, params keyword needs to be after
                // other attributes.

                CodeAttributeDeclaration current = (CodeAttributeDeclaration)en.Current;

                if (current.Name.Equals("system.paramarrayattribute", StringComparison.OrdinalIgnoreCase))
                {
                    paramArray = true;
                    continue;
                }

                GenerateAttributeDeclarationsStart(attributes);
                if (prefix != null)
                {
                    Output.Write(prefix);
                }

                if (current.AttributeType != null)
                {
                    Output.Write(GetTypeOutput(current.AttributeType));
                }
                Output.Write("(");

                bool firstArg = true;
                foreach (CodeAttributeArgument arg in current.Arguments)
                {
                    if (firstArg)
                    {
                        firstArg = false;
                    }
                    else
                    {
                        Output.Write(", ");
                    }

                    OutputAttributeArgument(arg);
                }

                Output.Write(")");
                GenerateAttributeDeclarationsEnd(attributes);
                if (inLine)
                {
                    Output.Write(" ");
                }
                else
                {
                    Output.WriteLine();
                }
            }

            if (paramArray)
            {
                if (prefix != null)
                {
                    Output.Write(prefix);
                }
                Output.Write("params");

                if (inLine)
                {
                    Output.Write(" ");
                }
                else
                {
                    Output.WriteLine();
                }
            }
        }

        private void OutputAttributeArgument(CodeAttributeArgument arg)
        {
            if (arg.Name != null && arg.Name.Length > 0)
            {
                OutputIdentifier(arg.Name);
                Output.Write("=");
            }
            ((ICodeGenerator)this).GenerateCodeFromExpression(arg.Value, output.InnerWriter, options);
        }

        private void GenerateObjectCreateExpression(CodeObjectCreateExpression e)
        {
            Output.Write("new ");
            OutputType(e.CreateType);
            Output.Write("(");
            OutputExpressionList(e.Parameters);
            Output.Write(")");
        }

        private void GenerateEventReferenceExpression(CodeEventReferenceExpression e, bool isRemove)
        {
            if (e.TargetObject != null)
            {
                GenerateExpression(e.TargetObject);
                if (isRemove == false)
                {
                    Output.Write(".addEventListener(");
                }
                else
                {
                    Output.Write(".removeEventListener(");
                }
            }
            OutputIdentifier("\"" + e.EventName + "\",");
        }

        private void GenerateMethodReferenceExpression(CodeMethodReferenceExpression e)
        {
            if (e.TargetObject != null)
            {
                if (e.TargetObject is CodeBinaryOperatorExpression)
                {
                    Output.Write("(");
                    GenerateExpression(e.TargetObject);
                    Output.Write(")");
                }
                else
                {
                    GenerateExpression(e.TargetObject);
                }
                Output.Write(".");
            }
            OutputIdentifier(e.MethodName);

            if (e.TypeArguments.Count > 0)
            {
                Output.Write(GetTypeArgumentsOutput(e.TypeArguments));
            }

        }

        private void GenerateMethodInvokeExpression(CodeMethodInvokeExpression e)
        {
            GenerateMethodReferenceExpression(e.Method);
            Output.Write("(");
            OutputExpressionList(e.Parameters);
            Output.Write(")");
        }

        private void GenerateSnippetExpression(CodeSnippetExpression e)
        {
            Output.Write(e.Value);
        }

        private void GenerateArrayIndexerExpression(CodeArrayIndexerExpression e)
        {
            GenerateExpression(e.TargetObject);
            Output.Write("[");
            bool first = true;
            foreach (CodeExpression exp in e.Indices)
            {
                if (first)
                {
                    first = false;
                }
                else
                {
                    Output.Write(", ");
                }
                GenerateExpression(exp);
            }
            Output.Write("]");
        }

        private void GenerateArgumentReferenceExpression(CodeArgumentReferenceExpression e)
        {
            OutputIdentifier(e.ParameterName);
        }

        private void GenerateVariableReferenceExpression(CodeVariableReferenceExpression e)
        {
            OutputIdentifier(e.VariableName);
        }

        private void GenerateFieldReferenceExpression(CodeFieldReferenceExpression e)
        {
            if (e.TargetObject != null)
            {
                GenerateExpression(e.TargetObject);
                Output.Write(".");
            }
            OutputIdentifier(e.FieldName);
        }

        private void GenerateCastExpression(CodeCastExpression e)
        {
            OutputType(e.TargetType);
            Output.Write("(");
            GenerateExpression(e.Expression);
            Output.Write(")");
        }


        private void GenerateBinaryOperatorExpression(CodeBinaryOperatorExpression e)
        {
            bool indentedExpression = false;
            Output.Write("(");

            GenerateExpression(e.Left);
            Output.Write(" ");

            if (e.Left is CodeBinaryOperatorExpression || e.Right is CodeBinaryOperatorExpression)
            {
                // In case the line gets too long with nested binary operators, we need to output them on
                // different lines. However we want to indent them to maintain readability, but this needs
                // to be done only once;
                if (!inNestedBinary)
                {
                    indentedExpression = true;
                    inNestedBinary = true;
                    Indent += 3;
                }
                ContinueOnNewLine("");
            }

            OutputOperator(e.Operator);

            Output.Write(" ");
            GenerateExpression(e.Right);

            Output.Write(")");
            if (indentedExpression)
            {
                Indent -= 3;
                inNestedBinary = false;
            }
        }

        private void GenerateBaseReferenceExpression(CodeBaseReferenceExpression e)
        {
            Output.Write("super");
        }

        private void OutputOperator(CodeBinaryOperatorType op)
        {
            switch (op)
            {
                case CodeBinaryOperatorType.Add:
                    Output.Write("+");
                    break;
                case CodeBinaryOperatorType.Subtract:
                    Output.Write("-");
                    break;
                case CodeBinaryOperatorType.Multiply:
                    Output.Write("*");
                    break;
                case CodeBinaryOperatorType.Divide:
                    Output.Write("/");
                    break;
                case CodeBinaryOperatorType.Modulus:
                    Output.Write("%");
                    break;
                case CodeBinaryOperatorType.Assign:
                    Output.Write("=");
                    break;
                case CodeBinaryOperatorType.IdentityInequality:
                    Output.Write("!=");
                    break;
                case CodeBinaryOperatorType.IdentityEquality:
                    Output.Write("==");
                    break;
                case CodeBinaryOperatorType.ValueEquality:
                    Output.Write("==");
                    break;
                case CodeBinaryOperatorType.BitwiseOr:
                    Output.Write("|");
                    break;
                case CodeBinaryOperatorType.BitwiseAnd:
                    Output.Write("&");
                    break;
                case CodeBinaryOperatorType.BooleanOr:
                    Output.Write("||");
                    break;
                case CodeBinaryOperatorType.BooleanAnd:
                    Output.Write("&&");
                    break;
                case CodeBinaryOperatorType.LessThan:
                    Output.Write("<");
                    break;
                case CodeBinaryOperatorType.LessThanOrEqual:
                    Output.Write("<=");
                    break;
                case CodeBinaryOperatorType.GreaterThan:
                    Output.Write(">");
                    break;
                case CodeBinaryOperatorType.GreaterThanOrEqual:
                    Output.Write(">=");
                    break;
            }
        }

        private void GenerateArrayCreateExpression(CodeArrayCreateExpression e)
        {
            CodeExpressionCollection init = e.Initializers;
            if (init.Count > 0)
            {
                Output.Write("new <");
                OutputType(e.CreateType);
                Output.Write(">");
                if (e.CreateType.ArrayRank == 0)
                {
                    // Unfortunately, many clients are already calling this without array
                    // types. This will allow new clients to correctly use the array type and
                    // not break existing clients. For VNext, stop doing this.
                    Output.Write("[]");
                }
                Output.WriteLine(" [");
                Indent++;
                OutputExpressionList(init, true /*newlineBetweenItems*/);
                Indent--;
                Output.Write("]");
            }
            else
            {
                Output.Write(GetBaseTypeOutput(e.CreateType));

                Output.Write("[");
                if (e.SizeExpression != null)
                {
                    GenerateExpression(e.SizeExpression);
                }
                else
                {
                    Output.Write(e.Size);
                }
                Output.Write("]");
            }
        }

        private String GetTypeArgumentsOutput(CodeTypeReferenceCollection typeArguments)
        {
            StringBuilder sb = new StringBuilder(128);
            GetTypeArgumentsOutput(typeArguments, 0, typeArguments.Count, sb);
            return sb.ToString();
        }

        private void GetTypeArgumentsOutput(CodeTypeReferenceCollection typeArguments, int start, int length, StringBuilder sb)
        {
            sb.Append('<');
            bool first = true;
            for (int i = start; i < start + length; i++)
            {
                if (first)
                {
                    first = false;
                }
                else
                {
                    sb.Append(", ");
                }

                // it's possible that we call GetTypeArgumentsOutput with an empty typeArguments collection.  This is the case
                // for open types, so we want to just output the brackets and commas.
                if (i < typeArguments.Count)
                    sb.Append(GetTypeOutput(typeArguments[i]));
            }
            sb.Append('>');
        }

        private void OutputExpressionList(CodeExpressionCollection expressions)
        {
            OutputExpressionList(expressions, false /*newlineBetweenItems*/);
        }

        private void OutputExpressionList(CodeExpressionCollection expressions, bool newlineBetweenItems)
        {
            bool first = true;
            IEnumerator en = expressions.GetEnumerator();
            Indent++;
            while (en.MoveNext())
            {
                if (first)
                {
                    first = false;
                }
                else
                {
                    if (newlineBetweenItems)
                        ContinueOnNewLine(",");
                    else
                        Output.Write(", ");
                }
                ((ICodeGenerator)this).GenerateCodeFromExpression((CodeExpression)en.Current, output.InnerWriter, options);
            }
            Indent--;
        }

        private void ContinueOnNewLine(string st)
        {
            Output.WriteLine(st);
        }

        private string GetBaseTypeOutput(CodeTypeReference typeRef)
        {
            string s = typeRef.BaseType;
            if (s.Length == 0)
            {
                s = "void";
                return s;
            }

            string lowerCaseString = s.ToLower(CultureInfo.InvariantCulture);

            switch (lowerCaseString)
            {
                case "system.int16":
                    s = "int";
                    break;
                case "system.int32":
                    s = "int";
                    break;
                case "system.int64":
                    s = "int";
                    break;
                case "system.string":
                    s = "String";
                    break;
                case "system.object":
                    s = "Object";
                    break;
                case "system.boolean":
                    s = "Boolean";
                    break;
                case "system.void":
                    s = "void";
                    break;
                case "system.char":
                    s = "String";
                    break;
                case "system.byte":
                    s = "int";
                    break;
                case "system.uint16":
                    s = "uint";
                    break;
                case "system.uint32":
                    s = "uint";
                    break;
                case "system.uint64":
                    s = "uint";
                    break;
                case "system.sbyte":
                    s = "int";
                    break;
                case "system.single":
                    s = "Number";
                    break;
                case "system.double":
                    s = "Number";
                    break;
                case "system.decimal":
                    s = "Number";
                    break;
                default:
                    // replace + with . for nested classes.
                    //
                    StringBuilder sb = new StringBuilder();
                    string baseType = typeRef.BaseType;

                    int lastIndex = baseType.IndexOf('.');

                    if (lastIndex > -1)
                    {
                        sb.Append(CreateEscapedIdentifier(baseType.Substring(lastIndex)));
                    }

                    return sb.ToString();
            }
            return s;
        }

        private void OutputType(CodeTypeReference typeRef)
        {
            Output.Write(GetTypeOutput(typeRef));
        }

        public string GetTypeOutput(CodeTypeReference typeRef)
        {
            return typeRef.BaseType;
        }

        public void GenerateCodeFromNamespace(CodeNamespace e, TextWriter w, CodeGeneratorOptions o)
        {
            bool setLocal = false;
            if (output != null && w != output.InnerWriter)
            {
                throw new InvalidOperationException("Wrong output writer");
            }
            if (output == null)
            {
                setLocal = true;
                options = (o == null) ? new CodeGeneratorOptions() : o;
                output = new IndentedTextWriter(w, options.IndentString);
            }

            try
            {
                GenerateNamespace(e);
            }
            finally
            {
                if (setLocal)
                {
                    output = null;
                    options = null;
                }
            }
        }

        private void GenerateNamespace(CodeNamespace e)
        {
            GenerateCommentStatements(e.Comments);
            GenerateNamespaceStart(e);

            if (GetUserData(e, "GenerateImports", true))
            {
                GenerateNamespaceImports(e);
            }

            Output.WriteLine("");

            GenerateTypes(e);
            GenerateNamespaceEnd(e);
        }

        private void GenerateNamespaceEnd(CodeNamespace e)
        {
            if (e.Name != null && e.Name.Length > 0)
            {
                Indent--;
                Output.WriteLine("}");
            }
        }

        private void GenerateTypes(CodeNamespace e)
        {
            foreach (CodeTypeDeclaration c in e.Types)
            {
                if (options.BlankLinesBetweenMembers)
                {
                    Output.WriteLine();
                }
                ((ICodeGenerator)this).GenerateCodeFromType(c, output.InnerWriter, options);
            }
        }

        private void GenerateNamespaceImports(CodeNamespace e)
        {
            IEnumerator en = e.Imports.GetEnumerator();
            while (en.MoveNext())
            {
                CodeNamespaceImport imp = (CodeNamespaceImport)en.Current;
                GenerateNamespaceImport(imp);
            }
        }

        private void GenerateNamespaceImport(CodeNamespaceImport e)
        {
            Output.Write("import ");
            OutputIdentifier(e.Namespace);
            Output.WriteLine(";");
        }

        private bool GetUserData(CodeObject e, string property, bool defaultValue)
        {
            object o = e.UserData[property];
            if (o != null && o is bool)
            {
                return (bool)o;
            }
            return defaultValue;
        }

        private void GenerateNamespaceStart(CodeNamespace e)
        {
            Output.Write("package ");
            if (e.Name != null && e.Name.Length > 0)
            {
                string[] names = e.Name.Split('.');
                OutputIdentifier(names[0]);
                for (int i = 1; i < names.Length; i++)
                {
                    Output.Write(".");
                    OutputIdentifier(names[i]);
                }
                OutputStartingBrace();
                Indent++;
            }
        }


        private void GenerateCommentStatement(CodeCommentStatement e)
        {
            GenerateComment(e.Comment);
        }

        private void GenerateParamCommentStatement(string name, CodeCommentStatement comment)
        {
            String commentLineStart = " * @param " + name + " ";
            Output.WriteLine(commentLineStart + comment.Comment.Text);
        }

        private void GenerateComment(CodeComment e)
        {
            String commentLineStart = (e.DocComment) ? " * " : "//";
            Output.WriteLine(commentLineStart + e.Text);
        }

        private void GenerateCommentStatements(CodeCommentStatementCollection comments, CodeTypeMember member = null)
        {
            if (comments.Count > 0)
            {
                Output.WriteLine("/*");
            }
            foreach (CodeCommentStatement comment in comments)
            {
                GenerateCommentStatement(comment);
            }
            if (member != null)
            {
                foreach (CodeCommentStatement reference in (CodeCommentStatementCollection)member.UserData["references"])
                {
                    GenerateCommentStatement(reference);
                }
            }
            if (member is CodeMemberMethod)
            {
                CodeParameterDeclarationExpressionCollection parameters = ((CodeMemberMethod)member).Parameters;
                foreach (CodeParameterDeclarationExpression param in parameters)
                {
                    foreach (CodeCommentStatement comment in (CodeCommentStatementCollection)param.UserData["comments"])
                    {
                        GenerateParamCommentStatement(param.Name, comment);
                    }
                }
            }
            if (comments.Count > 0)
            {
                Output.WriteLine(" */");
            }
        }

        public void GenerateCodeFromStatement(CodeStatement e, TextWriter w, CodeGeneratorOptions o)
        {
            bool setLocal = false;
            if (output != null && w != output.InnerWriter)
            {
                throw new InvalidOperationException("Wrong output writer");
            }
            if (output == null)
            {
                setLocal = true;
                options = (o == null) ? new CodeGeneratorOptions() : o;
                output = new IndentedTextWriter(w, options.IndentString);
            }

            try
            {
                GenerateStatement(e);
            }
            finally
            {
                if (setLocal)
                {
                    output = null;
                    options = null;
                }
            }
        }

        private void GenerateMethodReturnStatement(CodeMethodReturnStatement e)
        {
            Output.Write("return");
            if (e.Expression != null)
            {
                Output.Write(" ");
                GenerateExpression(e.Expression);
            }
            Output.WriteLine(";");
        }

        private void GenerateStatement(CodeStatement e)
        {
            if (e is CodeCommentStatement)
            {
                GenerateCommentStatement((CodeCommentStatement)e);
            }
            else if (e is CodeMethodReturnStatement)
            {
                GenerateMethodReturnStatement((CodeMethodReturnStatement)e);
            }
            else if (e is CodeConditionStatement)
            {
                GenerateConditionStatement((CodeConditionStatement)e);
            }
            else if (e is CodeTryCatchFinallyStatement)
            {
                GenerateTryCatchFinallyStatement((CodeTryCatchFinallyStatement)e);
            }
            else if (e is CodeAssignStatement)
            {
                GenerateAssignStatement((CodeAssignStatement)e);
            }
            else if (e is CodeExpressionStatement)
            {
                GenerateExpressionStatement((CodeExpressionStatement)e);
            }
            else if (e is CodeIterationStatement)
            {
                GenerateIterationStatement((CodeIterationStatement)e);
            }
            else if (e is CodeThrowExceptionStatement)
            {
                GenerateThrowExceptionStatement((CodeThrowExceptionStatement)e);
            }
            else if (e is CodeSnippetStatement)
            {
                // Don't indent snippet statements, in order to preserve the column
                // information from the original code.  This improves the debugging
                // experience.
                int savedIndent = Indent;
                Indent = 0;

                GenerateSnippetStatement((CodeSnippetStatement)e);

                // Restore the indent
                Indent = savedIndent;
            }
            else if (e is CodeVariableDeclarationStatement)
            {
                GenerateVariableDeclarationStatement((CodeVariableDeclarationStatement)e);
            }
            else if (e is CodeAttachEventStatement)
            {
                GenerateAttachEventStatement((CodeAttachEventStatement)e);
            }
            else if (e is CodeRemoveEventStatement)
            {
                GenerateRemoveEventStatement((CodeRemoveEventStatement)e);
            }
            else if (e is CodeLabeledStatement)
            {
                GenerateLabeledStatement((CodeLabeledStatement)e);
            }
            else
            {
                throw new ArgumentException("Invalid element type: " + e.GetType().FullName, "e");
            }
        }

        private void GenerateLabeledStatement(CodeLabeledStatement e)
        {
            Indent--;
            Output.Write(e.Label);
            Output.WriteLine(":");
            Indent++;
            if (e.Statement != null)
            {
                GenerateStatement(e.Statement);
            }
        }

        private void GenerateRemoveEventStatement(CodeRemoveEventStatement e)
        {
            GenerateEventReferenceExpression(e.Event, true);
            Output.Write(" -= ");
            GenerateExpression(e.Listener);
            Output.WriteLine(";");
        }

        private void GenerateAttachEventStatement(CodeAttachEventStatement e)
        {
            GenerateEventReferenceExpression(e.Event, false);
            GenerateExpression(e.Listener);
            Output.WriteLine(");");
        }

        private void GenerateVariableDeclarationStatement(CodeVariableDeclarationStatement e)
        {
            OutputTypeNamePair(e.Type, e.Name);
            if (e.InitExpression != null)
            {
                Output.Write(" = ");
                GenerateExpression(e.InitExpression);
            }
            if (!generatingForLoop)
            {
                Output.WriteLine(";");
            }
        }

        private void GenerateSnippetStatement(CodeSnippetStatement e)
        {
            Output.WriteLine(e.Value);
        }

        private void GenerateThrowExceptionStatement(CodeThrowExceptionStatement e)
        {
            Output.Write("throw");
            if (e.ToThrow != null)
            {
                Output.Write(" ");
                GenerateExpression(e.ToThrow);
            }
            Output.WriteLine(";");
        }

        private void GenerateIterationStatement(CodeIterationStatement e)
        {
            generatingForLoop = true;
            Output.Write("for (");
            GenerateStatement(e.InitStatement);
            Output.Write("; ");
            GenerateExpression(e.TestExpression);
            Output.Write("; ");
            GenerateStatement(e.IncrementStatement);
            Output.Write(")");
            OutputStartingBrace();
            generatingForLoop = false;
            Indent++;
            GenerateStatements(e.Statements);
            Indent--;
            Output.WriteLine("}");
        }

        private void GenerateAssignStatement(CodeAssignStatement e)
        {
            GenerateExpression(e.Left);
            Output.Write(" = ");
            GenerateExpression(e.Right);
            if (!generatingForLoop)
            {
                Output.WriteLine(";");
            }
        }

        private void GenerateTryCatchFinallyStatement(CodeTryCatchFinallyStatement e)
        {
            Output.Write("try");
            OutputStartingBrace();
            Indent++;
            GenerateStatements(e.TryStatements);
            Indent--;
            CodeCatchClauseCollection catches = e.CatchClauses;
            if (catches.Count > 0)
            {
                IEnumerator en = catches.GetEnumerator();
                while (en.MoveNext())
                {
                    Output.Write("}");
                    if (Options.ElseOnClosing)
                    {
                        Output.Write(" ");
                    }
                    else
                    {
                        Output.WriteLine("");
                    }
                    CodeCatchClause current = (CodeCatchClause)en.Current;
                    Output.Write("catch (");
                    OutputType(current.CatchExceptionType);
                    Output.Write(" ");
                    OutputIdentifier(current.LocalName);
                    Output.Write(")");
                    OutputStartingBrace();
                    Indent++;
                    GenerateStatements(current.Statements);
                    Indent--;
                }
            }

            CodeStatementCollection finallyStatements = e.FinallyStatements;
            if (finallyStatements.Count > 0)
            {
                Output.Write("}");
                if (Options.ElseOnClosing)
                {
                    Output.Write(" ");
                }
                else
                {
                    Output.WriteLine("");
                }
                Output.Write("finally");
                OutputStartingBrace();
                Indent++;
                GenerateStatements(finallyStatements);
                Indent--;
            }
            Output.WriteLine("}");
        }

        private void GenerateStatements(CodeStatementCollection stms)
        {
            IEnumerator en = stms.GetEnumerator();
            while (en.MoveNext())
            {
                ((ICodeGenerator)this).GenerateCodeFromStatement((CodeStatement)en.Current, output.InnerWriter, options);
            }
        }

        private void GenerateConditionStatement(CodeConditionStatement e)
        {
            Output.Write("if (");
            GenerateExpression(e.Condition);
            Output.Write(")");
            OutputStartingBrace();
            Indent++;
            GenerateStatements(e.TrueStatements);
            Indent--;

            CodeStatementCollection falseStatements = e.FalseStatements;
            if (falseStatements.Count > 0)
            {
                Output.Write("}");
                if (Options.ElseOnClosing)
                {
                    Output.Write(" ");
                }
                else
                {
                    Output.WriteLine("");
                }
                Output.Write("else");
                OutputStartingBrace();
                Indent++;
                GenerateStatements(e.FalseStatements);
                Indent--;
            }
            Output.WriteLine("}");
        }

        private void OutputStartingBrace()
        {
            if (Options.BracingStyle == "C")
            {
                Output.WriteLine("");
                Output.WriteLine("{");
            }
            else
            {
                Output.WriteLine(" {");
            }
        }

        public void GenerateCodeFromType(CodeTypeDeclaration e, TextWriter w, CodeGeneratorOptions o)
        {
            bool setLocal = false;
            if (output != null && w != output.InnerWriter)
            {
                throw new InvalidOperationException("Wrong output writer");
            }
            if (output == null)
            {
                setLocal = true;
                options = (o == null) ? new CodeGeneratorOptions() : o;
                output = new IndentedTextWriter(w, options.IndentString);
            }

            try
            {
                GenerateType(e);
            }
            finally
            {
                if (setLocal)
                {
                    output = null;
                    options = null;
                }
            }
        }

        private void GenerateType(CodeTypeDeclaration e)
        {
            currentClass = e;

            GenerateCommentStatements(e.Comments, null);

            GenerateTypeStart(e);

            if (Options.VerbatimOrder)
            {
                foreach (CodeTypeMember member in e.Members)
                {
                    GenerateTypeMember(member, e);
                }
            }
            else
            {

                GenerateFields(e);

                GenerateSnippetMembers(e);

                GenerateConstructors(e);

                GenerateProperties(e);

                GenerateMethods(e);
            }
            // Nested types clobber the current class, so reset it.
            currentClass = e;

            GenerateTypeEnd(e);
        }

        private void GenerateTypeEnd(CodeTypeDeclaration e)
        {
            Indent--;
            Output.WriteLine("}");
        }

        private void GenerateMethods(CodeTypeDeclaration e)
        {
            IEnumerator en = e.Members.GetEnumerator();
            while (en.MoveNext())
            {
                if (en.Current is CodeMemberMethod
                    && !(en.Current is CodeTypeConstructor)
                    && !(en.Current is CodeConstructor))
                {
                    currentMember = (CodeTypeMember)en.Current;

                    if (options.BlankLinesBetweenMembers)
                    {
                        Output.WriteLine();
                    }
                    GenerateCommentStatements(currentMember.Comments, currentMember);
                    CodeMemberMethod imp = (CodeMemberMethod)en.Current;
                    GenerateMethod(imp, e);
                }
            }
        }

        private void GenerateProperties(CodeTypeDeclaration e)
        {
            IEnumerator en = e.Members.GetEnumerator();
            while (en.MoveNext())
            {
                if (en.Current is CodeMemberProperty)
                {
                    currentMember = (CodeTypeMember)en.Current;

                    if (options.BlankLinesBetweenMembers)
                    {
                        Output.WriteLine();
                    }

                    GenerateCommentStatements(currentMember.Comments, currentMember);
                    CodeMemberProperty imp = (CodeMemberProperty)en.Current;
                    GenerateProperty(imp, e);
                }
            }
        }

        private void GenerateSnippetMembers(CodeTypeDeclaration e)
        {
            IEnumerator en = e.Members.GetEnumerator();
            bool hasSnippet = false;
            while (en.MoveNext())
            {
                if (en.Current is CodeSnippetTypeMember)
                {
                    hasSnippet = true;
                    currentMember = (CodeTypeMember)en.Current;

                    if (options.BlankLinesBetweenMembers)
                    {
                        Output.WriteLine();
                    }

                    GenerateCommentStatements(currentMember.Comments, currentMember);
                    CodeSnippetTypeMember imp = (CodeSnippetTypeMember)en.Current;

                    // Don't indent snippets, in order to preserve the column
                    // information from the original code.  This improves the debugging
                    // experience.
                    int savedIndent = Indent;
                    Indent = 0;

                    GenerateSnippetMember(imp);

                    // Restore the indent
                    Indent = savedIndent;

                }
            }
            // Generate an extra new line at the end of the snippet.
            // If the snippet is comment and this type only contains comments.
            // The generated code will not compile.
            if (hasSnippet)
            {
                Output.WriteLine();
            }
        }

        private void GenerateTypeStart(CodeTypeDeclaration e)
        {
            if (e.CustomAttributes.Count > 0)
            {
                GenerateAttributes(e.CustomAttributes);
            }

            OutputTypeAttributes(e);
            OutputIdentifier(e.Name);

            bool first = true;
            foreach (CodeTypeReference typeRef in e.BaseTypes)
            {
                if (first)
                {
                    Output.Write(" : ");
                    first = false;
                }
                else
                {
                    Output.Write(", ");
                }
                OutputType(typeRef);
            }

            OutputStartingBrace();
            Indent++;
        }

        private void OutputTypeAttributes(CodeTypeDeclaration e)
        {
            TypeAttributes attributes = e.TypeAttributes;
            switch (attributes & TypeAttributes.VisibilityMask)
            {
                case TypeAttributes.Public:
                case TypeAttributes.NestedPublic:
                    Output.Write("public ");
                    break;
                case TypeAttributes.NestedPrivate:
                    Output.Write("private ");
                    break;
                case TypeAttributes.NestedFamily:
                    Output.Write("protected ");
                    break;
                case TypeAttributes.NotPublic:
                case TypeAttributes.NestedAssembly:
                case TypeAttributes.NestedFamANDAssem:
                case TypeAttributes.NestedFamORAssem:
                    Output.Write("internal ");
                    break;
            }

            switch (attributes & TypeAttributes.ClassSemanticsMask)
            {
                case TypeAttributes.Class:
                    if ((attributes & TypeAttributes.Sealed) == TypeAttributes.Sealed)
                    {
                        Output.Write("final ");
                    }
                    Output.Write("class ");
                    break;
                case TypeAttributes.Interface:
                    Output.Write("interface ");
                    break;
            }
        }

        public bool IsValidIdentifier(string value)
        {

            // identifiers must be 1 char or longer
            //
            if (value == null || value.Length == 0)
            {
                return false;
            }

            if (value.Length > 512)
                return false;

            // identifiers cannot be a keyword, unless they are escaped with an '_'
            //
            if (value[value.Length - 1] != '_')
            {
                if (IsKeyword(value))
                    return false;
            }
            else
            {
                value = value.Substring(1);
            }

            return CodeGenerator.IsValidLanguageIndependentIdentifier(value);
        }
        public bool Supports(GeneratorSupport supports)
        {
            return ((supports & LanguageSupport) == supports);
        }

        public void ValidateIdentifier(string value)
        {
            if (!IsValidIdentifier(value))
            {
                throw new ArgumentException("Invalid Identifier");
            }
        }
    }

    internal class FixedStringLookup
    {

        // Returns whether the match is found in the lookup table
        internal static bool Contains(string[][] lookupTable, string value, bool ignoreCase)
        {
            int length = value.Length;
            if (length <= 0 || length - 1 >= lookupTable.Length)
            {
                return false;
            }

            string[] subArray = lookupTable[length - 1];
            if (subArray == null)
            {
                return false;
            }
            return Contains(subArray, value, ignoreCase);
        }

        // This routine finds a hit within a single sorted array, with the assumption that the
        // value and all the strings are of the same length.
        private static bool Contains(string[] array, string value, bool ignoreCase)
        {
            int min = 0;
            int max = array.Length;
            int pos = 0;
            char searchChar;
            while (pos < value.Length)
            {
                if (ignoreCase)
                {
                    searchChar = char.ToLower(value[pos], CultureInfo.CurrentCulture);
                }
                else
                {
                    searchChar = value[pos];
                }
                if ((max - min) <= 1)
                {
                    // we are down to a single item, so we can stay on this row until the end.
                    if (searchChar != array[min][pos])
                    {
                        return false;
                    }
                    pos++;
                    continue;
                }

                // There are multiple items to search, use binary search to find one of the hits
                if (!FindCharacter(array, searchChar, pos, ref min, ref max))
                {
                    return false;
                }
                // and move to next char
                pos++;
            }
            return true;
        }

        // Do a binary search on the character array at the specific position and constrict the ranges appropriately.
        private static bool FindCharacter(string[] array, char value, int pos, ref int min, ref int max)
        {
            int index = min;
            while (min < max)
            {
                index = (min + max) / 2;
                char comp = array[index][pos];
                if (value == comp)
                {
                    // We have a match. Now adjust to any adjacent matches
                    int newMin = index;
                    while (newMin > min && array[newMin - 1][pos] == value)
                    {
                        newMin--;
                    }
                    min = newMin;

                    int newMax = index + 1;
                    while (newMax < max && array[newMax][pos] == value)
                    {
                        newMax++;
                    }
                    max = newMax;
                    return true;
                }
                if (value < comp)
                {
                    max = index;
                }
                else
                {
                    min = index + 1;
                }
            }
            return false;
        }
    }

    internal class CSharpMemberAttributeConverter : CSharpModifierAttributeConverter
    {
        private static string[] names;
        private static object[] values;
        private static CSharpMemberAttributeConverter defaultConverter;

        private CSharpMemberAttributeConverter()
        {
            // no  need to create an instance; use Default
        }

        public static CSharpMemberAttributeConverter Default
        {
            get
            {
                if (defaultConverter == null)
                {
                    defaultConverter = new CSharpMemberAttributeConverter();
                }
                return defaultConverter;
            }
        }

        /// <devdoc>
        ///      Retrieves an array of names for attributes.
        /// </devdoc>
        protected override string[] Names
        {
            get
            {
                if (names == null)
                {
                    names = new string[] {
                        "public",
                        "protected",
                        "internal",
                        "private"
                    };
                }

                return names;
            }
        }

        /// <devdoc>
        ///      Retrieves an array of values for attributes.
        /// </devdoc>
        protected override object[] Values
        {
            get
            {
                if (values == null)
                {
                    values = new object[] {
                        (object)MemberAttributes.Public,
                        (object)MemberAttributes.Family,
                        (object)MemberAttributes.FamilyOrAssembly,
                        (object)MemberAttributes.Assembly,
                        (object)MemberAttributes.Private
                    };
                }

                return values;
            }
        }

        protected override object DefaultValue
        {
            get
            {
                return MemberAttributes.Private;
            }
        }
    }

    /// <devdoc>
    ///      This type converter provides common values for MemberAttributes
    /// </devdoc>
    internal abstract class CSharpModifierAttributeConverter : TypeConverter
    {

        protected abstract object[] Values { get; }
        protected abstract string[] Names { get; }
        protected abstract object DefaultValue { get; }



        /// <devdoc>
        ///      We override this because we can convert from string types.
        /// </devdoc>
        public override bool CanConvertFrom(ITypeDescriptorContext context, Type sourceType)
        {
            if (sourceType == typeof(string))
            {
                return true;
            }

            return base.CanConvertFrom(context, sourceType);
        }

        /// <devdoc>
        ///      Converts the given object to the converter's native type.
        /// </devdoc>
        public override object ConvertFrom(ITypeDescriptorContext context, CultureInfo culture, object value)
        {
            if (value is string)
            {
                string name = (string)value;
                string[] names = Names;
                for (int i = 0; i < names.Length; i++)
                {
                    if (names[i].Equals(name))
                    {
                        return Values[i];
                    }
                }
            }

            return DefaultValue;
        }

        /// <devdoc>
        ///      Converts the given object to another type.  The most common types to convert
        ///      are to and from a string object.  The default implementation will make a call
        ///      to ToString on the object if the object is valid and if the destination
        ///      type is string.  If this cannot convert to the desitnation type, this will
        ///      throw a NotSupportedException.
        /// </devdoc>
        public override object ConvertTo(ITypeDescriptorContext context, CultureInfo culture, object value, Type destinationType)
        {
            if (destinationType == null)
            {
                throw new ArgumentNullException("destinationType");
            }

            if (destinationType == typeof(string))
            {
                object[] modifiers = Values;
                for (int i = 0; i < modifiers.Length; i++)
                {
                    if (modifiers[i].Equals(value))
                    {
                        return Names[i];
                    }
                }

                return "Unknown";
            }

            return base.ConvertTo(context, culture, value, destinationType);
        }

        /// <devdoc>
        ///      Determines if the list of standard values returned from
        ///      GetStandardValues is an exclusive list.  If the list
        ///      is exclusive, then no other values are valid, such as
        ///      in an enum data type.  If the list is not exclusive,
        ///      then there are other valid values besides the list of
        ///      standard values GetStandardValues provides.
        /// </devdoc>
        public override bool GetStandardValuesExclusive(ITypeDescriptorContext context)
        {
            return true;
        }

        /// <devdoc>
        ///      Determines if this object supports a standard set of values
        ///      that can be picked from a list.
        /// </devdoc>
        public override bool GetStandardValuesSupported(ITypeDescriptorContext context)
        {
            return true;
        }

        /// <devdoc>
        ///      Retrieves a collection containing a set of standard values
        ///      for the data type this validator is designed for.  This
        ///      will return null if the data type does not support a
        ///      standard set of values.
        /// </devdoc>
        public override StandardValuesCollection GetStandardValues(ITypeDescriptorContext context)
        {
            return new StandardValuesCollection(Values);
        }
    }

    internal class CSharpTypeAttributeConverter : CSharpModifierAttributeConverter
    {
        private static string[] names;
        private static object[] values;
        private static CSharpTypeAttributeConverter defaultConverter;

        private CSharpTypeAttributeConverter()
        {
            // no  need to create an instance; use Default
        }

        public static CSharpTypeAttributeConverter Default
        {
            get
            {
                if (defaultConverter == null)
                {
                    defaultConverter = new CSharpTypeAttributeConverter();
                }
                return defaultConverter;
            }
        }

        /// <devdoc>
        ///      Retrieves an array of names for attributes.
        /// </devdoc>
        protected override string[] Names
        {
            get
            {
                if (names == null)
                {
                    names = new string[] {
                        "public",
                        "internal"
                    };
                }

                return names;
            }
        }

        /// <devdoc>
        ///      Retrieves an array of values for attributes.
        /// </devdoc>
        protected override object[] Values
        {
            get
            {
                if (values == null)
                {
                    values = new object[] {
                        (object)TypeAttributes.Public,
                        (object)TypeAttributes.NotPublic
                    };
                }

                return values;
            }
        }

        protected override object DefaultValue
        {
            get
            {
                return TypeAttributes.NotPublic;
            }
        }
    }


}
