package randori.html
{
	[JavaScript(export=false,name="Location")]
	public class Location
	{
		public var hash:String;
		public var host:String;
		public var hostname:String;
		public var href:String;
		public var pathname:String;
		public var port:String;
		public var protocol:String;
		public var search:String;

		public function assign(url:String):void {};
		public function replace(url:String):void {};
		public function reload():void {};
		public function toString():String { return null; }
		
		public function Location()
		{
			super();
		}
	}
}