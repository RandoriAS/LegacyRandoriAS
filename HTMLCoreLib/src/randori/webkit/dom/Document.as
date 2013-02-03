
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Document.idl

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modify the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) 2013 Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com) for the Randori
  framework for large enterprise Javascript applications.

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
import randori.webkit.css.StyleSheetList;
import randori.webkit.css.CSSStyleDeclaration;
import randori.webkit.xml.XPathNSResolver;
import randori.webkit.xml.XPathExpression;
import randori.webkit.xml.XPathResult;
import randori.webkit.html.HTMLElement;
import randori.webkit.html.HTMLHeadElement;
import randori.webkit.html.HTMLCollection;
import randori.webkit.page.Location;
import randori.webkit.page.Selection;
import randori.webkit.html.canvas.CanvasRenderingContext;
import randori.webkit.page.SecurityPolicy;

[JavaScript(export="false", name="Document")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see randori.webkit.dom.Node
 */
public class Document extends Node
{

	/**
	*  @see randori.webkit.dom.DocumentType
	*/
	public function get doctype():DocumentType { return null; }

	/**
	*  @see randori.webkit.dom.DOMImplementation
	*/
	public function get implementation():DOMImplementation { return null; }

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get documentElement():Element { return null; }
	/**
	*  @param tagName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Element</code> instance.
	*/
	public function createElement(tagName:String=undefined):Element { return null;}
	/**
	*  @return A <code>DocumentFragment</code> instance.
	*/
	public function createDocumentFragment():DocumentFragment { return null;}
	/**
	*  @param data (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Text</code> instance.
	*/
	public function createTextNode(data:String=undefined):Text { return null;}
	/**
	*  @param data (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Comment</code> instance.
	*/
	public function createComment(data:String=undefined):Comment { return null;}
	/**
	*  @param data (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CDATASection</code> instance.
	*/
	public function createCDATASection(data:String=undefined):CDATASection { return null;}
	/**
	*  @param target (optional argument, default value is <code>undefined</code>)
	*  @param data (optional argument, default value is <code>undefined</code>)
	*  @return A <code>ProcessingInstruction</code> instance.
	*/
	public function createProcessingInstruction(target:String=undefined, data:String=undefined):ProcessingInstruction { return null;}
	/**
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function createAttribute(name:String=undefined):Attr { return null;}
	/**
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>EntityReference</code> instance.
	*/
	public function createEntityReference(name:String=undefined):EntityReference { return null;}
	/**
	*  @param tagname (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByTagName(tagname:String=undefined):NodeList { return null;}
	/**
	*  @param importedNode (optional argument, default value is <code>undefined</code>)
	*  @param deep (optional argument, default value is <code>false</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function importNode(importedNode:Node=undefined, deep:Boolean=false):Node { return null;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param qualifiedName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Element</code> instance.
	*/
	public function createElementNS(namespaceURI:String=undefined, qualifiedName:String=undefined):Element { return null;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param qualifiedName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function createAttributeNS(namespaceURI:String=undefined, qualifiedName:String=undefined):Attr { return null;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param localName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByTagNameNS(namespaceURI:String=undefined, localName:String=undefined):NodeList { return null;}
	/**
	*  @param elementId (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Element</code> instance.
	*/
	public function getElementById(elementId:String=undefined):Element { return null;}

	public function get inputEncoding():String { return ''; }

	public function get xmlEncoding():String { return ''; }

	public function get xmlVersion():String { return ''; }
	public function set xmlVersion(value:String):void { }

	public function get xmlStandalone():Boolean { return false; }
	public function set xmlStandalone(value:Boolean):void { }
	/**
	*  @param source (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function adoptNode(source:Node=undefined):Node { return null;}

	public function get documentURI():String { return ''; }
	/**
	*  @param eventType (optional argument, default value is <code>undefined</code>)
	*  @return A <code>DomEvent</code> instance.
	*/
	public function createEvent(eventType:String=undefined):DomEvent { return null;}
	/**
	*  @return A <code>Range</code> instance.
	*/
	public function createRange():Range { return null;}
	/**
	*  @param root (optional argument, default value is <code>undefined</code>)
	*  @param whatToShow (optional argument, default value is <code>undefined</code>)
	*  @param filter (optional argument, default value is <code>undefined</code>)
	*  @param expandEntityReferences (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeIterator</code> instance.
	*/
	public function createNodeIterator(root:Node=undefined, whatToShow:uint=undefined, filter:NodeFilter=undefined, expandEntityReferences:Boolean=undefined):NodeIterator { return null;}
	/**
	*  @param root (optional argument, default value is <code>undefined</code>)
	*  @param whatToShow (optional argument, default value is <code>undefined</code>)
	*  @param filter (optional argument, default value is <code>undefined</code>)
	*  @param expandEntityReferences (optional argument, default value is <code>undefined</code>)
	*  @return A <code>TreeWalker</code> instance.
	*/
	public function createTreeWalker(root:Node=undefined, whatToShow:uint=undefined, filter:NodeFilter=undefined, expandEntityReferences:Boolean=undefined):TreeWalker { return null;}

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get defaultView():Window { return null; }

	/**
	*  @see randori.webkit.css.StyleSheetList
	*/
	public function get styleSheets():StyleSheetList { return null; }
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param pseudoElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSStyleDeclaration</code> instance.
	*/
	public function getOverrideStyle(element:Element=undefined, pseudoElement:String=undefined):CSSStyleDeclaration { return null;}
	/**
	*  @param expression (optional argument, default value is <code>undefined</code>)
	*  @param resolver (optional argument, default value is <code>undefined</code>)
	*  @return A <code>XPathExpression</code> instance.
	*/
	public function createExpression(expression:String=undefined, resolver:XPathNSResolver=undefined):XPathExpression { return null;}
	/**
	*  @param nodeResolver
	*  @return A <code>XPathNSResolver</code> instance.
	*/
	public function createNSResolver(nodeResolver:Node):XPathNSResolver { return null;}
	/**
	*  @param expression (optional argument, default value is <code>undefined</code>)
	*  @param contextNode (optional argument, default value is <code>undefined</code>)
	*  @param resolver (optional argument, default value is <code>undefined</code>)
	*  @param type (optional argument, default value is <code>undefined</code>)
	*  @param inResult (optional argument, default value is <code>undefined</code>)
	*  @return A <code>XPathResult</code> instance.
	*/
	public function evaluate(expression:String=undefined, contextNode:Node=undefined, resolver:XPathNSResolver=undefined, type:uint=undefined, inResult:XPathResult=undefined):XPathResult { return null;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @param userInterface (optional argument, default value is <code>undefined</code>)
	*  @param value (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function execCommand(command:String=undefined, userInterface:Boolean=undefined, value:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandEnabled(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandIndeterm(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandState(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function queryCommandSupported(command:String=undefined):Boolean { return false;}
	/**
	*  @param command (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function queryCommandValue(command:String=undefined):String { return '';}

	public function get title():String { return ''; }
	public function set title(value:String):void { }

	public function get referrer():String { return ''; }

	public function get domain():String { return ''; }
	public function set domain(value:String):void { }

	[JavascriptProperty(name="URL")]
	public function get URL_():String { return ''; }

	public function get cookie():String { return ''; }
	public function set cookie(value:String):void { }

	/**
	*  @see randori.webkit.html.HTMLElement
	*/
	public function get body():HTMLElement { return null; }
	public function set body(value:HTMLElement):void { }

	/**
	*  @see randori.webkit.html.HTMLHeadElement
	*/
	public function get head():HTMLHeadElement { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get images():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get applets():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get links():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get forms():HTMLCollection { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get anchors():HTMLCollection { return null; }

	public function get lastModified():String { return ''; }
	/**
	*  @param elementName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByName(elementName:String=undefined):NodeList { return null;}

	/**
	*  @see randori.webkit.page.Location
	*/
	public function get location():Location { return null; }
	public function set location(value:Location):void { }

	public function get charset():String { return ''; }
	public function set charset(value:String):void { }

	public function get defaultCharset():String { return ''; }

	public function get readyState():String { return ''; }
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Element</code> instance.
	*/
	public function elementFromPoint(x:uint=undefined, y:uint=undefined):Element { return null;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Range</code> instance.
	*/
	public function caretRangeFromPoint(x:uint=undefined, y:uint=undefined):Range { return null;}
	/**
	*  @return A <code>Selection</code> instance.
	*/
	public function getSelection():Selection { return null;}

	public function get characterSet():String { return ''; }

	public function get preferredStylesheetSet():String { return ''; }

	public function get selectedStylesheetSet():String { return ''; }
	public function set selectedStylesheetSet(value:String):void { }
	/**
	*  @param contextId
	*  @param name
	*  @param width
	*  @param height
	*  @return A <code>CanvasRenderingContext</code> instance.
	*/
	public function getCSSCanvasContext(contextId:String, name:String, width:uint, height:uint):CanvasRenderingContext { return null;}
	/**
	*  @param tagname (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByClassName(tagname:String=undefined):NodeList { return null;}

	public function get compatMode():String { return ''; }
	/**
	*  @param selectors
	*  @return A <code>Element</code> instance.
	*/
	public function querySelector(selectors:String):Element { return null;}
	/**
	*  @param selectors
	*  @return A <code>NodeList</code> instance.
	*/
	public function querySelectorAll(selectors:String):NodeList { return null;}

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

	/**
	*  @see randori.webkit.page.SecurityPolicy
	*/
	public function get securityPolicy():SecurityPolicy { return null; }
}

}