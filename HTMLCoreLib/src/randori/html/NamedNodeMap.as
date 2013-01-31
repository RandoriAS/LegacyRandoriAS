package randori.html
{
	[JavaScript(export=false,name="NamedNodeMap")]
	public class NamedNodeMap
	{
		public var length:uint;
		
		public function getNamedItem(name:String):Node { return null; }
		public function setNamedItem(arg:Node):Node { return null; }
		public function removeNamedItem(name:String):Node { return null; }
		public function getNamedItemNS(namespaceURI:String, localName:String):Node { return null; }
		public function setNamedItemNS(arg:Node):Node { return null; }
		public function removeNamedItemNS(namespaceURI:String, localName:String):Node { return null; }

		public function NamedNodeMap()
		{
			super();
		}
	}
}