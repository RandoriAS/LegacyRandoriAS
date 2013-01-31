package randori.html
{
	[JavaScript(export=false,name="CssStyleSheet")]
	public class CssStyleSheet
	{
		public var cssRules:CSSRuleList;
		public var ownerRule:CSSRule;
		
		public function deleteRule(index:int):void{}
		public function insertRule(rule:String, index:int):void{}	
		
		public function CssStyleSheet()
		{
			super();
		}
	}
}