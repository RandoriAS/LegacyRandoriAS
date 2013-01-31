package randori.html
{
	[JavaScript(export=false,name="Selection")]
	public class Selection
	{
		public var anchorNode:Node;
		public var anchorOffset:int;
		public var focusNode:Node;
		public var focusOffset:int;
		public var isCollapsed:Boolean;
		public var rangeCount:int;
		
		public function collapse(parentNode:Node, offset:int):void {};
		public function collapseToStart():void {};
		public function collapseToEnd():void {};
		public function selectAllChildren(parentNode:Node):void {};
		public function deleteFromDocument():void {};
		public function getRangeAt(index:int):Range { return null; }
		public function addRange(range:Range):void {}
		public function removeRange(range:Range):void {}
		public function removeAllRanges():void {}
		public function toString():String { return null; }
		
		public function Selection()
		{
			super();
		}
	}
}