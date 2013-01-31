package randori.html
{
	[JavaScript(export=false,name="Navigator")]
	public class Navigator
	{
		public var appCodeName:String;
		public var appName:String;
		public var appVersion:String;
		public var cookieEnabled:Boolean;
		public var onLine:Boolean;
		public var platform:String;
		public var userAgent:String;

		public function javaEnabled():Boolean { return false; };
		
		public function Navigator()
		{
			super();
		}
	}
}