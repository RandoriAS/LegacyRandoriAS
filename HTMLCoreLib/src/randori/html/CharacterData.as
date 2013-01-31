package randori.html
{
	[JavaScript(export=false,name="CharacterData")]
	public class CharacterData extends Node
	{
		public var data:String;
		public var length:uint;
		
		public function appendData(text:String):void{};
		public function deleteData(offset:uint, count:uint):void{};
		public function insertData(offset:uint, text:String):void{};
		public function replaceData(offset:uint, count:uint, text:String):void{};
		public function substringData(offset:uint, count:uint):String{ return null; };
		
		public function CharacterData()
		{
			super();
		}
	}
}