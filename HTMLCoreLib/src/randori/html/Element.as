package randori.html
{
	[JavaScript(export=false,name="Element")]
	public class Element extends Node
	{
		public var schemaTypeInfo:TypeInfo;
		public var clientRects:ClientRectList;
		public var boundingClientRect:ClientRect;
		public var scrollTop:int;
		public var scrollLeft:int;
		public var scrollWidth:int;
		public var scrollHeight:int;
		public var clientTop:int;
		public var clientLeft:int;
		public var clientWidth:int;
		public var clientHeight:int;

		public var tagName:String;
		public function getAttribute(name:String):String { return ""; };
		public function setAttribute(name:String, value:String):void {};
		public function removeAttribute(name:String):void {};
		public function getAttributeNode(name:String):Attr { return null; };
		public function setAttributeNode(newAttr:Attr):Attr { return null; };
		public function removeAttributeNode(oldAttr:Attr):Attr { return null; };
		public function getElementsByTagName(name:String):NodeList { return null; };
		public function getAttributeNS(namespaceURI:String, localName:String):String { return null; };
		public function setAttributeNS(namespaceURI:String, qualifiedName:String, value:String):void {};
		public function removeAttributeNS(namespaceURI:String, localName:String):void {};
		public function getAttributeNodeNS(namespaceURI:String, localName:String):Attr { return null; };
		public function setAttributeNodeNS(newAttr:Attr):Attr { return null; };
		public function getElementsByTagNameNS(namespaceURI:String, localName:String):NodeList { return null; };
		public function hasAttribute(name:String):Boolean { return false; };
		public function hasAttributeNS(namespaceURI:String, localName:String):Boolean { return false; };
		public function setIdAttribute(name:String, isId:Boolean):void {};
		public function setIdAttributeNS(namespaceURI:String, localName:String, isId:Boolean):void {};
		public function setIdAttributeNode(idAttr:Attr, isId:Boolean):void {};
		
		public function Element()
		{
			super();
		}
	}
}