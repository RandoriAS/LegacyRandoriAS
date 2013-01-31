package randori.html
{
	[JavaScript(export=false,name="Text")]
	public class Text extends CharacterData
	{
		public var isElementContentWhitespace:Boolean;
		public var wholeText:String;

		public function splitText(offset:int):Text { return null; }
		public function replaceWholeText(content:String):Text { return null; }
		
		public function Text()
		{
			super();
		}
	}
}