
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Document.idl

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modifiy the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) 2013 Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com)

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the "Software"), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/


package randori.webkit.dom
{

import randori.webkit.page.Window;
import randori.webkit.xml.XPathExpression;
import randori.webkit.xml.XPathNSResolver;
import randori.webkit.xml.XPathResult;
import randori.webkit.html.HTMLElement;
import randori.webkit.html.HTMLHeadElement;
import randori.webkit.page.Location;
import randori.webkit.page.Selection;
import randori.webkit.html.canvas.CanvasRenderingContext;
import randori.webkit.page.SecurityPolicy;

[JavaScript(export=false, name="Document")]
public class Document extends Node
{

	public function get doctype():DocumentType { return null; }

	public function get implementation():DOMImplementation { return null; }

	public function get documentElement():Element { return null; }
	public function createElement(tagName:String=''):Element { return null;}
	public function createDocumentFragment():DocumentFragment { return null;}
	public function createTextNode(data:String=''):Text { return null;}
	public function createComment(data:String=''):Comment { return null;}
	public function createCDATASection(data:String=''):CDATASection { return null;}
	public function createProcessingInstruction(target:String='', data:String=''):ProcessingInstruction { return null;}
	public function createAttribute(name:String=''):Attr { return null;}
	public function createEntityReference(name:String=''):EntityReference { return null;}
	public function getElementsByTagName(tagname:String=''):Object { return null;}
	public function importNode(importedNode:Node=null, deep:Boolean=false):Node { return null;}
	public function createElementNS(namespaceURI:String='', qualifiedName:String=''):Element { return null;}
	public function createAttributeNS(namespaceURI:String='', qualifiedName:String=''):Attr { return null;}
	public function getElementsByTagNameNS(namespaceURI:String='', localName:String=''):Object { return null;}
	public function getElementById(elementId:String=''):Element { return null;}

	public function get inputEncoding():String { return ''; }

	public function get xmlEncoding():String { return ''; }

	public function get xmlVersion():String { return ''; }
	public function set xmlVersion(value:String):void { }

	public function get xmlStandalone():Boolean { return false; }
	public function set xmlStandalone(value:Boolean):void { }
	public function adoptNode(source:Node=null):Node { return null;}

	public function get documentURI():String { return ''; }
	public function set documentURI(value:String):void { }
	public function createEvent(eventType:String=''):DomEvent { return null;}
	public function createRange():Range { return null;}
	public function createNodeIterator(root:Node=null, whatToShow:uint=0, filter:NodeFilter=null, expandEntityReferences:Boolean=false):NodeIterator { return null;}
	public function createTreeWalker(root:Node=null, whatToShow:uint=0, filter:NodeFilter=null, expandEntityReferences:Boolean=false):TreeWalker { return null;}

	public function get defaultView():Window { return null; }

	public function get styleSheets():Object { return null; }
	public function getOverrideStyle(element:Element=null, pseudoElement:String=''):Object { return null;}
	public function createExpression(expression:String='', resolver:XPathNSResolver=null):XPathExpression { return null;}
	public function createNSResolver(nodeResolver:Node):XPathNSResolver { return null;}
	public function evaluate(expression:String='', contextNode:Node=null, resolver:XPathNSResolver=null, type:uint=0, inResult:XPathResult=null):XPathResult { return null;}
	public function execCommand(command:String='', userInterface:Boolean=false, value:String=''):Boolean { return false;}
	public function queryCommandEnabled(command:String=''):Boolean { return false;}
	public function queryCommandIndeterm(command:String=''):Boolean { return false;}
	public function queryCommandState(command:String=''):Boolean { return false;}
	public function queryCommandSupported(command:String=''):Boolean { return false;}
	public function queryCommandValue(command:String=''):String { return '';}

	public function get title():String { return ''; }
	public function set title(value:String):void { }

	public function get referrer():String { return ''; }

	public function get domain():String { return ''; }
	public function set domain(value:String):void { }

	[JavascriptProperty(name="URL")]
	public function get URL_():String { return ''; }

	public function get cookie():String { return ''; }
	public function set cookie(value:String):void { }

	public function get body():HTMLElement { return null; }
	public function set body(value:HTMLElement):void { }

	public function get head():HTMLHeadElement { return null; }

	public function get images():Object { return null; }

	public function get applets():Object { return null; }

	public function get links():Object { return null; }

	public function get forms():Object { return null; }

	public function get anchors():Object { return null; }

	public function get lastModified():String { return ''; }
	public function getElementsByName(elementName:String=''):Object { return null;}
	public function getItems(typeNames:String=''):Object { return null;}

	public function get location():Location { return null; }
	public function set location(value:Location):void { }

	public function get charset():String { return ''; }
	public function set charset(value:String):void { }

	public function get defaultCharset():String { return ''; }

	public function get readyState():String { return ''; }
	public function elementFromPoint(x:uint=0, y:uint=0):Element { return null;}
	public function caretRangeFromPoint(x:uint=0, y:uint=0):Range { return null;}
	public function getSelection():Selection { return null;}

	public function get characterSet():String { return ''; }

	public function get preferredStylesheetSet():String { return ''; }

	public function get selectedStylesheetSet():String { return ''; }
	public function set selectedStylesheetSet(value:String):void { }
	public function createCSSStyleDeclaration():Object { return null;}
	public function getComputedStyle(element:Element, pseudoElement:String):Object { return null;}
	public function getMatchedCSSRules(element:Element, pseudoElement:String, authorOnly:Boolean=false):Object { return null;}
	public function getCSSCanvasContext(contextId:String, name:String, width:uint, height:uint):CanvasRenderingContext { return null;}
	public function getElementsByClassName(tagname:String=''):Object { return null;}

	public function get compatMode():String { return ''; }
	public function querySelector(selectors:String):Element { return null;}
	public function querySelectorAll(selectors:String):Object { return null;}

	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	public function get onblur():Function { return null; }
	public function set onblur(value:Function):void { }

	public function get onchange():Function { return null; }
	public function set onchange(value:Function):void { }

	public function get onclick():Function { return null; }
	public function set onclick(value:Function):void { }

	public function get oncontextmenu():Function { return null; }
	public function set oncontextmenu(value:Function):void { }

	public function get ondblclick():Function { return null; }
	public function set ondblclick(value:Function):void { }

	public function get ondrag():Function { return null; }
	public function set ondrag(value:Function):void { }

	public function get ondragend():Function { return null; }
	public function set ondragend(value:Function):void { }

	public function get ondragenter():Function { return null; }
	public function set ondragenter(value:Function):void { }

	public function get ondragleave():Function { return null; }
	public function set ondragleave(value:Function):void { }

	public function get ondragover():Function { return null; }
	public function set ondragover(value:Function):void { }

	public function get ondragstart():Function { return null; }
	public function set ondragstart(value:Function):void { }

	public function get ondrop():Function { return null; }
	public function set ondrop(value:Function):void { }

	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	public function get onfocus():Function { return null; }
	public function set onfocus(value:Function):void { }

	public function get oninput():Function { return null; }
	public function set oninput(value:Function):void { }

	public function get oninvalid():Function { return null; }
	public function set oninvalid(value:Function):void { }

	public function get onkeydown():Function { return null; }
	public function set onkeydown(value:Function):void { }

	public function get onkeypress():Function { return null; }
	public function set onkeypress(value:Function):void { }

	public function get onkeyup():Function { return null; }
	public function set onkeyup(value:Function):void { }

	public function get onload():Function { return null; }
	public function set onload(value:Function):void { }

	public function get onmousedown():Function { return null; }
	public function set onmousedown(value:Function):void { }

	public function get onmousemove():Function { return null; }
	public function set onmousemove(value:Function):void { }

	public function get onmouseout():Function { return null; }
	public function set onmouseout(value:Function):void { }

	public function get onmouseover():Function { return null; }
	public function set onmouseover(value:Function):void { }

	public function get onmouseup():Function { return null; }
	public function set onmouseup(value:Function):void { }

	public function get onmousewheel():Function { return null; }
	public function set onmousewheel(value:Function):void { }

	public function get onreadystatechange():Function { return null; }
	public function set onreadystatechange(value:Function):void { }

	public function get onscroll():Function { return null; }
	public function set onscroll(value:Function):void { }

	public function get onselect():Function { return null; }
	public function set onselect(value:Function):void { }

	public function get onsubmit():Function { return null; }
	public function set onsubmit(value:Function):void { }

	public function get onbeforecut():Function { return null; }
	public function set onbeforecut(value:Function):void { }

	public function get oncut():Function { return null; }
	public function set oncut(value:Function):void { }

	public function get onbeforecopy():Function { return null; }
	public function set onbeforecopy(value:Function):void { }

	public function get oncopy():Function { return null; }
	public function set oncopy(value:Function):void { }

	public function get onbeforepaste():Function { return null; }
	public function set onbeforepaste(value:Function):void { }

	public function get onpaste():Function { return null; }
	public function set onpaste(value:Function):void { }

	public function get onreset():Function { return null; }
	public function set onreset(value:Function):void { }

	public function get onsearch():Function { return null; }
	public function set onsearch(value:Function):void { }

	public function get onselectstart():Function { return null; }
	public function set onselectstart(value:Function):void { }

	public function get onselectionchange():Function { return null; }
	public function set onselectionchange(value:Function):void { }

	public function get ontouchstart():Function { return null; }
	public function set ontouchstart(value:Function):void { }

	public function get ontouchmove():Function { return null; }
	public function set ontouchmove(value:Function):void { }

	public function get ontouchend():Function { return null; }
	public function set ontouchend(value:Function):void { }

	public function get ontouchcancel():Function { return null; }
	public function set ontouchcancel(value:Function):void { }
	public function createTouch(window:Window=null, target:EventTarget=null, identifier:uint=0, pageX:uint=0, pageY:uint=0, screenX:uint=0, screenY:uint=0, webkitRadiusX:uint=0, webkitRadiusY:uint=0, webkitRotationAngle:Number=0, webkitForce:Number=0):Touch { return null;}
	public function createTouchList():Object { return null;}
	public function isHTMLDocument():Boolean { return false;}

	public function get securityPolicy():SecurityPolicy { return null; }
}

}