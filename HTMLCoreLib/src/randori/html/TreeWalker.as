package randori.html
{
	
	[JavaScript(export=false,name="TreeWalker")]
	public class TreeWalker
	{
		public var root:Node;
		public var whatToShow:int;
		public var filter:NodeFilter;
		public var expandEntityReferences:Boolean;
		public var currentNode:Node;
		public function parentNode():Node { return null; }
		public function firstChild():Node { return null; }
		public function lastChild():Node { return null; }
		public function previousSibling():Node { return null; }
		public function nextSibling():Node { return null; }
		public function previousNode():Node { return null; }
		public function nextNode():Node { return null; }
		
		public function TreeWalker()
		{
			super();
		}
	}
}