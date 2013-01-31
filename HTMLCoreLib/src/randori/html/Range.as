package randori.html
{
	public class Range
	{
		public static const END_TO_END:int = 0;
		public static const END_TO_START:int = 0;
		public static const NODE_AFTER:int = 0;
		public static const NODE_BEFORE:int = 0;
		public static const NODE_BEFORE_AND_AFTER:int = 0;
		public static const NODE_INSIDE:int = 0;
		public static const START_TO_END:int = 0;
		public static const START_TO_START:int = 0;
		
		public var collapsed:Boolean;
		public var commonAncestorContainer:Node;
		public var endContainer:Node;
		public var endOffset:int;
		public var startContainer:Node;
		public var startOffset:int;
		public function cloneContents():DocumentFragment {return null;}
		public function cloneRange():Range {return null;}
		public function collapse(toStart:Boolean):void {return;}
		public function compareBoundaryPoints(how:Object, sourceRange:Range):int {return -1;}
		public function compareNode( refNode:Node):int {return -1;}
		public function comparePoint( refNode:Node, offset:int ):int {return -1;}
		public function createContextualFragment( html:String ):DocumentFragment {return null;}
		public function deleteContents():void {return;}
		public function detach():void {return;}
		public function expand(unit:String):void {return;}

		public function extractContents():DocumentFragment { return null; }
		public function getBoundingClientRect():ClientRect { return null; }
		public function getClientRects():ClientRectList { return null; }
		public function insertNode(newNode:Node):void {return;}
		public function intersectsNode(refNode:Node):Boolean {return false;}
		public function isPointInRange(refNode:Node, offset:int):Boolean {return false;}
		public function selectNode(refNode:Node):void {return;}
		public function selectNodeContents(refNode:Node):void {return;}
		public function setEnd(refNode:Node, offset:int):void {return;}
		public function setEndAfter(refNode:Node):void {return;}
		public function setEndBefore( refNode:Node):void {return;}
		public function setStart(refNode:Node, offset:int):void {return;}
		public function setStartAfter(refNode:Node):void {return;}
		public function setStartBefore(refNode:Node):void {return;}
		public function surroundContents( newParent:Node ):void {return;}

		public function Range()
		{
		}
	}
}