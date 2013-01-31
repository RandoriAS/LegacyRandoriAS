package randori.html
{
	[JavaScript(export=false,name="History")]
	public class History
	{
		public var length:int
		public var state:Object;
		public function back():void {};
		public function forward():void {};
		public function go(distance:int):void {};
		public function pushState(data:Object, title:String, url:String=null):void {};
		public function replaceState(data:Object, title:String, url:String=null):void {};
		
		public function History()
		{
			super();
		}
	}
}