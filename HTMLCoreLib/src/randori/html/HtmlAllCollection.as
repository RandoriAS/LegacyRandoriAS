package randori.html
{
	[JavaScript(export=false,name="HTMLAllCollection")]
	dynamic public class HtmlAllCollection extends Object
	{
		public var length:int;
		
		public function tags( name:String ):NodeList { return null };

		public function HtmlAllCollection()
		{
		}
	}
}