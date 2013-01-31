package randori.html
{
	[JavaScript(export=false,name="CSSRule")]
	public class CSSRule
	{
		public static const UNKNOWN_RULE:uint = 0;
		public static const STYLE_RULE:uint = 1;
		public static const CHARSET_RULE:uint = 2;
		public static const IMPORT_RULE:uint = 3;
		public static const MEDIA_RULE:uint = 4;
		public static const FONT_FACE_RULE:uint = 5;
		public static const PAGE_RULE:uint = 6;
		
		public var cssText:String;
		public var parentRule:CSSRule;
		public var parentStyleSheet:CssStyleSheet;
		public var type:uint;
		
		public function CSSRule()
		{
			super();
		}
	}
}