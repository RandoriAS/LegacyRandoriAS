package randori.html
{
	[JavaScript(export=false,name="NodeIterator")]
	public class NodeIterator
	{
		public var root:Node;
		public var whatToShow:int;
		public var filter:NodeFilter;
		public var expandEntityReferences:Boolean;
		public var referenceNode:Node;
		public var pointerBeforeReferenceNode:Boolean;
		
		public function nextNode():Node { return null; }
		public function previousNode():Node { return null; }
		public function detach():void {}
		
		public function NodeIterator()
		{
			super();
		}
	}
}