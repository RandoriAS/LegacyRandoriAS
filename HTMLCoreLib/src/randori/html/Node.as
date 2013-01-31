package randori.html
{
	import flash.events.Event;

	[JavaScript(export=false,name="Node")]
	public class Node
	{
		public static const ATTRIBUTE_NODE:int = 0;
		public static const CDATA_SECTION_NODE:int = 0;
		public static const COMMENT_NODE:int = 0;
		public static const DOCUMENT_FRAGMENT_NODE:int = 0;
		public static const DOCUMENT_NODE:int = 0;
		public static const DOCUMENT_POSITION_CONTAINED_BY:int = 0;
		public static const DOCUMENT_POSITION_CONTAINS:int = 0;
		public static const DOCUMENT_POSITION_DISCONNECTED:int = 0;
		public static const DOCUMENT_POSITION_FOLLOWING:int = 0;
		public static const DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:int = 0;
		public static const DOCUMENT_POSITION_PRECEDING:int = 0;
		public static const DOCUMENT_TYPE_NODE:int = 0;
		public static const ELEMENT_NODE:int = 0;
		public static const ENTITY_NODE:int = 0;
		public static const ENTITY_REFERENCE_NODE:int = 0;
		public static const NOTATION_NODE:int = 0;
		public static const PROCESSING_INSTRUCTION_NODE:int = 0;
		public static const TEXT_NODE:int = 0;
		
		public var attributes:NamedNodeMap;
		public var baseURI:String;
		public var childNodes:NodeList;
		public var firstChild:Node;
		public var lastChild:Node;
		public var localName:String;
		public var namespaceURI:String;
		public var nextSibling:Node;
		public var nodeName:String;
		public var nodeType:int;
		public var nodeValue:String;
		public var ownerDocument:Document;
		public var parentElement:Element;
		public var parentNode:Node;
		public var prefix:String;
		public var previousSibling:Node;
		public var textContent:String;
		
		public function addEventListener( type:String, listener:Function, useCapture:Boolean=false):void {}
		public function appendChild(newChild:Node):Node { return null; }
		public function cloneNode(deep:Boolean):Node { return null; }
		public function compareDocumentPosition(other:Node):int  { return -1; }
		public function contains(other:Node):Boolean { return false; }
		public function dispatchEvent(event:Event):Boolean { return false; }
		public function hasAttributes():Boolean { return false; }
		public function hasChildNodes():Boolean { return false; }
		public function insertBefore(newChild:Node, refChild:Node):Node { return null; }
		public function isDefaultNamespace(namespaceURI:String):Boolean { return false; }
		public function isEqualNode(other:Node):Boolean { return false; }
		public function isSameNode(other:Node):Boolean { return false; }
		public function isSupported(feature:String, version:String):Boolean  { return false; }
		public function lookupNamespaceURI(prefix:String):String  { return null; }
		public function lookupPrefix(namespaceURI:String):String { return null; }
		public function normalize():void  { return; }
		public function removeChild(oldChild:Node):Node { return null; }
		public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void  { return; }
		public function replaceChild(newChild:Node, oldChild:Node):Node { return null; }
		
		public function Node()
		{
		}
	}
}