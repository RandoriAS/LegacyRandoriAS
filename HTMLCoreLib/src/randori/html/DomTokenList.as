package randori.html
{
	[JavaScript(export=false,name="DomTokenList")]
	public class DomTokenList
	{
		public var length:int;
		
		public function add(token:String):void {};
		public function contains(token:String):Boolean { return false; };
		public function remove(token:String):void {};
		public function toggle(token:String):Boolean {return false};
		
		public function DomTokenList()
		{
		}
	}
}