
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Element.idl

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

import randori.webkit.css.CSSStyleDeclaration;
import randori.webkit.html.DOMTokenList;

[JavaScript(export="false", name="Element")]
/**
 *  <p>The <code>Element</code> interface represents an <termref def="dt-element">element</termref> in an HTML
 *  or XML document. Elements may have attributes associated with them; since the
 *  <code>Element</code> interface inherits from <code>Node</code>, the generic
 *  <code>Node</code> interface attribute <code>attributes</code> may be used
 *  to retrieve the set of all attributes for an element. There are methods on
 *  the <code>Element</code> interface to retrieve either an <code>Attr</code>
 *  object by name or an attribute value by name. In XML, where an attribute
 *  value may contain entity references, an <code>Attr</code> object should be
 *  retrieved to examine the possibly fairly complex sub-tree representing the
 *  attribute value. On the other hand, in HTML, where all attributes have
 *  simple string values, methods to directly access an attribute value can
 *  safely be used as a <termref def="dt-convenience">convenience</termref>.</p><note><p>In DOM Level 2, the method <code>normalize</code> is
 *  inherited from the <code>Node</code> interface where it was
 *  moved.</p></note>
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see randori.webkit.dom.Node
 */
public class Element extends Node
{

	/**
	*  <p>The name of the element. For example, in:
	*  <eg role="code">
	*  &lt;elementExample id="demo"&gt;
	*  ...
	*  &lt;/elementExample&gt; ,
	*  </eg><code>tagName</code> has the value
	*  <code>"elementExample"</code>. Note that this is
	*  case-preserving in XML, as are all of the operations of the DOM.
	*  The HTML DOM returns the <code>tagName</code> of an HTML element
	*  in the canonical uppercase form, regardless of the case in the
	*  source HTML document. </p>
	*/
	public function get tagName():String { return ''; }
	/**
	*  <p>Retrieves an attribute value by name.</p>
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function getAttribute(name:String=undefined):String { return '';}
	/**
	*  <p>Adds a new attribute. If an attribute with that name is already
	*  present in the element, its value is changed to be that of the value
	*  parameter. This value is a simple string; it is not parsed as it is being
	*  set. So any markup (such as syntax to be recognized as an entity
	*  reference) is treated as literal text, and needs to be appropriately
	*  escaped by the implementation when it is written out. In order to assign
	*  an attribute value that contains entity references, the user must create
	*  an <code>Attr</code> node plus any <code>Text</code> and
	*  <code>EntityReference</code> nodes, build the appropriate subtree, and
	*  use <code>setAttributeNode</code> to assign it as the value of an
	*  attribute.</p><p>To set an attribute with a qualified name and namespace URI, use
	*  the <code>setAttributeNS</code> method.</p>
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @param value (optional argument, default value is <code>undefined</code>)
	*/
	public function setAttribute(name:String=undefined, value:String=undefined):void {}
	/**
	*  <p>Removes an attribute by name. If the removed attribute is known
	*  to have a default value, an attribute immediately appears containing
	*  the default value as well as the corresponding namespace URI,
	*  local name, and prefix when applicable.</p><p>To remove an attribute by local name and namespace URI, use
	*  the <code>removeAttributeNS</code> method.</p>
	*  @param name (optional argument, default value is <code>undefined</code>)
	*/
	public function removeAttribute(name:String=undefined):void {}
	/**
	*  <p>Retrieves an attribute node by name.</p><p>To retrieve an attribute node by qualified name and namespace URI, use
	*  the <code>getAttributeNodeNS</code> method.</p>
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function getAttributeNode(name:String=undefined):Attr { return null;}
	/**
	*  <p>Adds a new attribute node. If an attribute with that name
	*  (<code>nodeName</code>) is already present in the element, it is replaced
	*  by the new one.</p><p>To add a new attribute node with a qualified name and namespace URI,
	*  use the <code>setAttributeNodeNS</code> method.</p>
	*  @param newAttr (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function setAttributeNode(newAttr:Attr=undefined):Attr { return null;}
	/**
	*  <p>Removes the specified attribute node. If the removed
	*  <code>Attr</code> has a default value it is immediately
	*  replaced. The replacing attribute has the same namespace URI
	*  and local name, as well as the original prefix, when
	*  applicable.</p>
	*  @param oldAttr (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function removeAttributeNode(oldAttr:Attr=undefined):Attr { return null;}
	/**
	*  <p>Returns a <code>NodeList</code> of all <termref def="dt-descendant">descendant</termref><code>Elements</code> with a given tag name, in the order in which they
	*  are encountered in a preorder traversal of this <code>Element</code>
	*  tree.</p>
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByTagName(name:String=undefined):NodeList { return null;}
	/**
	*  <p>Retrieves an attribute value by local name and namespace
	*  URI. HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param localName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function getAttributeNS(namespaceURI:String=undefined, localName:String=undefined):String { return '';}
	/**
	*  <p>Adds a new attribute. If an attribute with the same local name
	*  and namespace URI is already present on the element, its prefix is
	*  changed to be the prefix part of the <code>qualifiedName</code>, and
	*  its value is changed to be the <code>value</code> parameter. This value
	*  is a simple string; it is not parsed as it is being set. So any markup
	*  (such as syntax to be recognized as an entity reference) is treated as
	*  literal text, and needs to be appropriately escaped by the
	*  implementation when it is written out. In order to assign an attribute
	*  value that contains entity references, the user must create an
	*  <code>Attr</code> node plus any <code>Text</code> and
	*  <code>EntityReference</code> nodes, build the appropriate subtree, and
	*  use <code>setAttributeNodeNS</code> or <code>setAttributeNode</code> to
	*  assign it as the value of an attribute.</p><p>HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param qualifiedName (optional argument, default value is <code>undefined</code>)
	*  @param value (optional argument, default value is <code>undefined</code>)
	*/
	public function setAttributeNS(namespaceURI:String=undefined, qualifiedName:String=undefined, value:String=undefined):void {}
	/**
	*  <p>Removes an attribute by local name and namespace URI. If
	*  the removed attribute has a default value it is immediately
	*  replaced. The replacing attribute has the same namespace URI
	*  and local name, as well as the original prefix.</p><p>HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI
	*  @param localName
	*/
	public function removeAttributeNS(namespaceURI:String, localName:String):void {}
	/**
	*  <p>Returns a <code>NodeList</code> of all the <termref def="dt-descendant">descendant</termref><code>Elements</code> with a given local name and namespace URI in the
	*  order in which they are encountered in a preorder traversal of this
	*  <code>Element</code> tree.</p><p>HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param localName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByTagNameNS(namespaceURI:String=undefined, localName:String=undefined):NodeList { return null;}
	/**
	*  <p>Retrieves an <code>Attr</code> node by local name and namespace
	*  URI. HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param localName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function getAttributeNodeNS(namespaceURI:String=undefined, localName:String=undefined):Attr { return null;}
	/**
	*  <p>Adds a new attribute. If an attribute with that local name and
	*  that namespace URI is already present in the element, it is replaced by
	*  the new one.</p><p>HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param newAttr (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function setAttributeNodeNS(newAttr:Attr=undefined):Attr { return null;}
	/**
	*  <p>Returns <code>true</code> when an attribute with a given name is
	*  specified on this element or has a default value, <code>false</code>
	*  otherwise.</p>
	*  @param name
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasAttribute(name:String):Boolean { return false;}
	/**
	*  <p>Returns <code>true</code> when an attribute with a given local
	*  name and namespace URI is specified on this element or has a default
	*  value, <code>false</code> otherwise. HTML-only DOM implementations do
	*  not need to implement this method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param localName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasAttributeNS(namespaceURI:String=undefined, localName:String=undefined):Boolean { return false;}

	/**
	*  @see randori.webkit.css.CSSStyleDeclaration
	*/
	public function get style():CSSStyleDeclaration { return null; }

	public function get offsetLeft():uint { return 0; }

	public function get offsetTop():uint { return 0; }

	public function get offsetWidth():uint { return 0; }

	public function get offsetHeight():uint { return 0; }

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get offsetParent():Element { return null; }

	public function get clientLeft():uint { return 0; }

	public function get clientTop():uint { return 0; }

	public function get clientWidth():uint { return 0; }

	public function get clientHeight():uint { return 0; }

	public function get scrollLeft():uint { return 0; }
	public function set scrollLeft(value:uint):void { }

	public function get scrollTop():uint { return 0; }
	public function set scrollTop(value:uint):void { }

	public function get scrollWidth():uint { return 0; }

	public function get scrollHeight():uint { return 0; }
	public function focus():void {}
	public function blur():void {}
	/**
	*  @param alignWithTop (optional argument, default value is <code>false</code>)
	*/
	public function scrollIntoView(alignWithTop:Boolean=false):void {}
	/**
	*  @param centerIfNeeded (optional argument, default value is <code>false</code>)
	*/
	public function scrollIntoViewIfNeeded(centerIfNeeded:Boolean=false):void {}
	/**
	*  @param lines (optional argument, default value is <code>undefined</code>)
	*/
	public function scrollByLines(lines:uint=undefined):void {}
	/**
	*  @param pages (optional argument, default value is <code>undefined</code>)
	*/
	public function scrollByPages(pages:uint=undefined):void {}
	/**
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByClassName(name:String=undefined):NodeList { return null;}

	public function get className():String { return ''; }
	public function set className(value:String):void { }

	/**
	*  @see randori.webkit.html.DOMTokenList
	*/
	public function get classList():DOMTokenList { return null; }

	/**
	*  @see randori.webkit.dom.DOMStringMap
	*/
	public function get dataset():DOMStringMap { return null; }
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

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get firstElementChild():Element { return null; }

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get lastElementChild():Element { return null; }

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get previousElementSibling():Element { return null; }

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get nextElementSibling():Element { return null; }

	public function get childElementCount():uint { return 0; }
	public function remove():void {}
	/**
	*  @return A <code>ClientRectList</code> instance.
	*/
	public function getClientRects():ClientRectList { return null;}
	/**
	*  @return A <code>ClientRect</code> instance.
	*/
	public function getBoundingClientRect():ClientRect { return null;}

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

	public function get ontouchstart():Function { return null; }
	public function set ontouchstart(value:Function):void { }

	public function get ontouchmove():Function { return null; }
	public function set ontouchmove(value:Function):void { }

	public function get ontouchend():Function { return null; }
	public function set ontouchend(value:Function):void { }

	public function get ontouchcancel():Function { return null; }
	public function set ontouchcancel(value:Function):void { }
}

}