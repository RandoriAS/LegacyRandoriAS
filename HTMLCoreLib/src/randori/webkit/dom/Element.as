
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Element.idl

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


[JavaScript(export=false, name="Element")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see randori.webkit.dom.Node
 */
public class Element extends Node
{

	public function get tagName():String { return ''; }
	/**
	*  @param name (optional argument, default value is <code>''</code>)
	*  @return A <code>String</code> instance.
	*/
	public function getAttribute(name:String=''):String { return '';}
	/**
	*  @param name (optional argument, default value is <code>''</code>)
	*  @param value (optional argument, default value is <code>''</code>)
	*/
	public function setAttribute(name:String='', value:String=''):void {}
	/**
	*  @param name (optional argument, default value is <code>''</code>)
	*/
	public function removeAttribute(name:String=''):void {}
	/**
	*  @param name (optional argument, default value is <code>''</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function getAttributeNode(name:String=''):Attr { return null;}
	/**
	*  @param newAttr (optional argument, default value is <code>null</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function setAttributeNode(newAttr:Attr=null):Attr { return null;}
	/**
	*  @param oldAttr (optional argument, default value is <code>null</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function removeAttributeNode(oldAttr:Attr=null):Attr { return null;}
	/**
	*  @param name (optional argument, default value is <code>''</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByTagName(name:String=''):Object { return null;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>''</code>)
	*  @param localName (optional argument, default value is <code>''</code>)
	*  @return A <code>String</code> instance.
	*/
	public function getAttributeNS(namespaceURI:String='', localName:String=''):String { return '';}
	/**
	*  @param namespaceURI (optional argument, default value is <code>''</code>)
	*  @param qualifiedName (optional argument, default value is <code>''</code>)
	*  @param value (optional argument, default value is <code>''</code>)
	*/
	public function setAttributeNS(namespaceURI:String='', qualifiedName:String='', value:String=''):void {}
	/**
	*  @param namespaceURI
	*  @param localName
	*/
	public function removeAttributeNS(namespaceURI:String, localName:String):void {}
	/**
	*  @param namespaceURI (optional argument, default value is <code>''</code>)
	*  @param localName (optional argument, default value is <code>''</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByTagNameNS(namespaceURI:String='', localName:String=''):Object { return null;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>''</code>)
	*  @param localName (optional argument, default value is <code>''</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function getAttributeNodeNS(namespaceURI:String='', localName:String=''):Attr { return null;}
	/**
	*  @param newAttr (optional argument, default value is <code>null</code>)
	*  @return A <code>Attr</code> instance.
	*/
	public function setAttributeNodeNS(newAttr:Attr=null):Attr { return null;}
	/**
	*  @param name
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasAttribute(name:String):Boolean { return false;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>''</code>)
	*  @param localName (optional argument, default value is <code>''</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasAttributeNS(namespaceURI:String='', localName:String=''):Boolean { return false;}

	/**
	*  @see randori.webkit.css.CSSStyleDeclaration
	*/
	public function get style():Object { return null; }

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
	*  @param lines (optional argument, default value is <code>0</code>)
	*/
	public function scrollByLines(lines:uint=0):void {}
	/**
	*  @param pages (optional argument, default value is <code>0</code>)
	*/
	public function scrollByPages(pages:uint=0):void {}
	/**
	*  @param name (optional argument, default value is <code>''</code>)
	*  @return A <code>NodeList</code> instance.
	*/
	public function getElementsByClassName(name:String=''):Object { return null;}

	public function get className():String { return ''; }
	public function set className(value:String):void { }

	/**
	*  @see randori.webkit.html.DOMTokenList
	*/
	public function get classList():Object { return null; }

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
	public function querySelectorAll(selectors:String):Object { return null;}

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
	public function getClientRects():Object { return null;}
	/**
	*  @return A <code>ClientRect</code> instance.
	*/
	public function getBoundingClientRect():ClientRect { return null;}

	public function get innerText():String { return ''; }
	public static const ALLOW_KEYBOARD_INPUT:uint = 1;

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