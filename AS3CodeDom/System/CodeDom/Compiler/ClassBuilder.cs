using System;
using System.CodeDom;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace System.CodeDom.Compiler
{
    public class ClassBuilder
    {
        public string PackageName { get; set; }

        public List<CodeCompileUnit> Units = new List<CodeCompileUnit>();
        public Dictionary<string, CodeCompileUnit> Class2Unit = new Dictionary<string, CodeCompileUnit>();
        public Dictionary<string, CodeTypeDeclaration> ClassName2TypeDecl = new Dictionary<string, CodeTypeDeclaration>();

        public CodeTypeDeclaration CreateClass(ClassNameDef ClassName)
        {
                var unit = new CodeCompileUnit();
                Units.Add(unit);
                var ns = new CodeNamespace(PackageName);
                unit.Namespaces.Add(ns);
                
                var CurrentClass = new CodeTypeDeclaration(ClassName.ActionScriptName) { IsClass= true, };

                ClassName2TypeDecl.Add(ClassName.ActionScriptName, CurrentClass);

                CodeAttributeDeclaration JavascriptAttrDecl = new CodeAttributeDeclaration("JavaScript", new CodeAttributeArgument("export", new CodePrimitiveExpression("false")));
                CurrentClass.CustomAttributes.Add(JavascriptAttrDecl);

                CurrentClass.TypeAttributes = CurrentClass.TypeAttributes |  TypeAttributes.Public;
                unit.UserData["NameDef"] = ClassName;
                if ((ClassName.ActionScriptName != ClassName.JavascriptName) && (ClassName.JavascriptName != null))
                {
                    CurrentClass.CustomAttributes[0].Arguments.Add(new CodeAttributeArgument("name", new CodePrimitiveExpression(ClassName.JavascriptName)));
                }
                CurrentClass.UserData["references"] = new CodeCommentStatementCollection();
                Class2Unit[ClassName.ActionScriptName] = unit;
                ns.Types.Add(CurrentClass);
                return CurrentClass;
        }

        public CodeTypeDeclaration GetClassByName(string actionScriptName)
        {
            if (ClassName2TypeDecl.ContainsKey(actionScriptName))
            {
                return ClassName2TypeDecl[actionScriptName];
            }
            return null;
        }

        public CodeMemberField AddProperty(CodeTypeDeclaration ClassDef, string name, string type)
        {
            var field = new CodeMemberField(type, name);
            field.Attributes = field.Attributes | MemberAttributes.Public;
            ClassDef.Members.Add(field);
            field.UserData["IsAsterisk"] = false;
            field.UserData["references"] = new CodeCommentStatementCollection();
            return field;
        }

        public CodeParameterDeclarationExpression AddParameter(string Name, string type, CodeMemberMethod method, string defaultValue, bool IsOptional)
        {
            var paramDef = new CodeParameterDeclarationExpression(type, Name);
            paramDef.UserData["comments"] = new CodeCommentStatementCollection();
            paramDef.UserData["defaultValue"] = defaultValue;
            paramDef.UserData["IsOptional"] = IsOptional;
            paramDef.UserData["IsAsterisk"] = false;
            paramDef.UserData["IsRestParams"] = (Name == "...");
            method.Parameters.Add(paramDef);
            return paramDef;
        }

        public bool IsOptionalParameter(CodeParameterDeclarationExpression parameter)
        {
            return ((bool)parameter.UserData["IsOptional"] == true);
        }

        public void MarkParameterAsOptional(CodeParameterDeclarationExpression parameter)
        {
            parameter.UserData["IsOptional"] = true;
        }

        public void AddMethodAttributeArgument(CodeMemberMethod method, string name, string value)
        {
            CodeAttributeDeclaration decl = null;
            if (method.CustomAttributes.Count == 0)
            {
                decl = new CodeAttributeDeclaration("JavaScriptMethod");
                method.CustomAttributes.Add(decl);
            }
            else
            {
                decl = method.CustomAttributes[0];
            }
            decl.Arguments.Add(new CodeAttributeArgument(name, new CodePrimitiveExpression(value)));
        }

        public CodeMemberMethod AddMethod(CodeTypeDeclaration CurrentClass, string name, string type)
        {
            var method = new CodeMemberMethod() { Name = name };
            method.Attributes = method.Attributes | MemberAttributes.Public;
            method.ReturnType = new CodeTypeReference(type);
            method.UserData["IsAsterisk"] = false;
            method.UserData["references"] = new CodeCommentStatementCollection();
            method.UserData["ActionscriptName"] = name;
            CurrentClass.Members.Add(method);
            if (type.ToLower() != "void")
            {
                method.Statements.Add(new CodeMethodReturnStatement(new CodeDefaultValueExpression(new CodeTypeReference(type))));
            }
            return method;
        }


        public void AddImport(string ImportType, CodeCompileUnit unit)
        {
            var exists = false;
            foreach (CodeNamespaceImport import in unit.Namespaces[0].Imports)
            {
                if (import.Namespace == ImportType)
                {
                    exists = true;
                    break;
                }
            }
            if (exists == false)
            {
                unit.Namespaces[0].Imports.Add(new CodeNamespaceImport(ImportType));
            }
        }

        public void MakeStatic(CodeMemberMethod method)
        {
            method.Attributes = method.Attributes | MemberAttributes.Static;
        }
    }
}
