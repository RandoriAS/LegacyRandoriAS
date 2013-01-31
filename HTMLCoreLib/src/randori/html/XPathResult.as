package randori.html
{
	[JavaScript(export=false,name="XPathResult")]
	public class XPathResult
	{
		public static const ANY_TYPE:int = 0;
		public static const NUMBER_TYPE:int = 1;
		public static const STRING_TYPE:int = 2;
		public static const BOOLEAN_TYPE:int = 3;
		public static const UNORDERED_NODE_ITERATOR_TYPE:int = 4;
		public static const ORDERED_NODE_ITERATOR_TYPE:int = 5;
		public static const UNORDERED_NODE_SNAPSHOT_TYPE:int = 6;
		public static const ORDERED_NODE_SNAPSHOT_TYPE:int = 7;
		public static const ANY_UNORDERED_NODE_TYPE:int = 8;
		public static const FIRST_ORDERED_NODE_TYPE:int = 9;
		
		public var resultType:int;
		public var numberValue:int;
		public var stringValue:String;
		public var booleanValue:Boolean;
		public var singleNodeValue:Node;
		public var invalidIteratorState:int;
		public var snapshotLength:int;
		
		public function iterateNext():Node { return null; }
		public function snapshotItem(index:int):Node { return null; }
		
		public function XPathResult()
		{
			super();
		}
	}
}