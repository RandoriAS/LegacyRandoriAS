package randori.html
{
	import flash.events.Event;

	public class Document extends Node
	{
		public var anchors:HtmlCollection;
		public var applets:HtmlCollection;
		public var body:HtmlElement;
		public var characterSet:String;
		public var charset:String;
		public var compatMode:String;
		public var cookie:String;
		public var defaultCharset:String;
		public var defaultView:Window;

		public var doctype:DocumentType;
		public var documentElement:Element;
		public var documentURI:String;
		public var domain:String;
		public var forms:HtmlCollection;
		public var head:HtmlHeadElement;
		public var images:HtmlCollection;
		public var implementation:DOMImplementation;
		public var inputEncoding:String;
		public var lastModified:String;
		public var links:HtmlCollection;
		public var location:Location;
		public var onabort:Function;
		public var onbeforecopy:Function;
		public var onbeforecut:Function;
		public var onbeforepaste:Function;
		public var onblur:Function;
		public var onchange:Function;
		public var onclick:Function;
		public var oncontextmenu:Function;
		public var oncopy:Function;
		public var oncut:Function;
		public var ondblclick:Function;
		public var ondrag:Function;
		public var ondragend:Function;
		public var ondragenter:Function;
		public var ondragleave:Function;
		public var ondragover:Function;
		public var ondragstart:Function;
		public var ondrop:Function;
		public var onerror:Function;
		public var onfocus:Function;
		public var oninput:Function;
		public var oninvalid:Function;
		public var onkeydown:Function;
		public var onkeypress:Function;
		public var onkeyup:Function;
		public var onload:Function;
		public var onmousedown:Function;
		public var onmousemove:Function;
		public var onmouseout:Function;
		public var onmouseover:Function;
		public var onmouseup:Function;
		public var onmousewheel:Function;
		public var onpaste:Function;
		public var onreadystatechange:Function;
		public var onreset:Function;
		public var onscroll:Function;
		public var onsearch:Function;
		public var onselect:Function;
		public var onselectionchange:Function;
		public var onselectstart:Function;
		public var onsubmit:Function;
		public var ontouchcancel:Function;
		public var ontouchend:Function;
		public var ontouchmove:Function;
		public var ontouchstart:Function;
		public var preferredStylesheetSet:String;
		public var readyState:String;
		public var referrer:String;
		public var selectedStylesheetSet:String;
		public var styleSheets:StyleSheetList;
		public var title:String;
		public var undoManager:UndoManager;
		public var URL:String;
		public var xmlEncoding:String;
		public var xmlStandalone:Boolean;
		public var xmlVersion:String;
		
		public function adoptNode( source:Node):Node {return null;}
		public function caretRangeFromPoint(x:int, y:int):Range {return null;}
		public function createAttribute(name:String):Attr { return null; }
		public function createAttributeNS(namespaceURI:String, qualifiedName:String):Attr { return null; }
		public function createCDATASection(data:String):CDATASection { return null; }
		public function createComment(data:String):Comment { return null; }
		public function createDocumentFragment():DocumentFragment { return null; }
		public function createElement(tagName:String):Element { return null; }
		public function createElementNS(namespaceURI:String, qualifiedName:String):Element { return null; }
		public function createEntityReference(name:String):EntityReference { return null; }
		public function createEvent(eventType:String):Event { return null; }
		public function createExpression(expression:String, resolver:XPathNSResolver):XPathExpression { return null; }
		public function createNodeIterator(root:Node, whatToShow:int, filter:NodeFilter, expandEntityReferences:Boolean):NodeIterator { return null; }
		public function createNSResolver(nodeResolver:Node):XPathNSResolver { return null; }
		public function createProcessingInstruction(target:String, data:String):ProcessingInstruction { return null; }
		public function createRange():Range { return null; }
		public function createTextNode(data:String):Text { return null; }
		public function createTreeWalker(root:Node, whatToShow:int, filter:NodeFilter, expandEntityReferences:Boolean):TreeWalker { return null; }
		public function elementFromPoint(x:int, y:int):Element { return null; }
		public function evaluate(expression:String, contextNode:Node, resolver:XPathNSResolver, type:int, inResult:XPathResult):XPathResult { return null; }
		public function execCommand( command:String, userInterface:Boolean, value:String):Boolean { return false; }
		public function getCSSCanvasContext(contextId:String, name:String, width:int, height:int):Object { return null; }
		public function getElementById(elementId:String):Element { return null; }
		public function getElementsByClassName(tagname:String):NodeList { return null; }
		public function getElementsByName(elementName:String):NodeList { return null; }
		public function getElementsByTagName(tagname:String):NodeList { return null; }
		public function getElementsByTagNameNS(namespaceURI:String, localName:String):NodeList { return null; }
		public function getOverrideStyle(element:Element, pseudoElement:String):CssStyleDeclaration { return null; }
		public function getSelection():Selection { return null; }
		public function importNode(importedNode:Node, deep:Node=null):Node { return null; }
		public function queryCommandEnabled(command:String):Boolean { return false; }
		public function queryCommandIndeterm(command:String):Boolean { return false; }
		public function queryCommandState(command:String):Boolean { return false; }
		public function queryCommandSupported(command:String):Boolean { return false; }
		public function queryCommandValue(command:String):String { return null; }
		public function querySelector(selectors:String):Element { return null; }
		public function querySelectorAll(selectors:String):NodeList { return null; }

		public function Document()
		{
		}
	}
}