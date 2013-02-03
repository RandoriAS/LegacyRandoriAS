
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Node.idl

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


[JavaScript(export="false", name="Node")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class Node
{
	public static const ELEMENT_NODE:uint = 1;
	public static const ATTRIBUTE_NODE:uint = 2;
	public static const TEXT_NODE:uint = 3;
	public static const CDATA_SECTION_NODE:uint = 4;
	public static const ENTITY_REFERENCE_NODE:uint = 5;
	public static const ENTITY_NODE:uint = 6;
	public static const PROCESSING_INSTRUCTION_NODE:uint = 7;
	public static const COMMENT_NODE:uint = 8;
	public static const DOCUMENT_NODE:uint = 9;
	public static const DOCUMENT_TYPE_NODE:uint = 10;
	public static const DOCUMENT_FRAGMENT_NODE:uint = 11;
	public static const NOTATION_NODE:uint = 12;

	public function get nodeName():String { return ''; }

	public function get nodeValue():String { return ''; }
	public function set nodeValue(value:String):void { }

	public function get nodeType():uint { return 0; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get parentNode():Node { return null; }

	/**
	*  @see randori.webkit.dom.NodeList
	*/
	public function get childNodes():NodeList { return null; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get firstChild():Node { return null; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get lastChild():Node { return null; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get previousSibling():Node { return null; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get nextSibling():Node { return null; }

	/**
	*  @see randori.webkit.dom.NamedNodeMap
	*/
	public function get attributes():NamedNodeMap { return null; }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get ownerDocument():Document { return null; }
	/**
	*  @param newChild
	*  @param refChild
	*  @return A <code>Node</code> instance.
	*/
	public function insertBefore(newChild:Node, refChild:Node):Node { return null;}
	/**
	*  @param newChild
	*  @param oldChild
	*  @return A <code>Node</code> instance.
	*/
	public function replaceChild(newChild:Node, oldChild:Node):Node { return null;}
	/**
	*  @param oldChild
	*  @return A <code>Node</code> instance.
	*/
	public function removeChild(oldChild:Node):Node { return null;}
	/**
	*  @param newChild
	*  @return A <code>Node</code> instance.
	*/
	public function appendChild(newChild:Node):Node { return null;}
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasChildNodes():Boolean { return false;}
	/**
	*  @param deep (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function cloneNode(deep:Boolean=undefined):Node { return null;}
	public function normalize():void {}
	/**
	*  @param feature (optional argument, default value is <code>undefined</code>)
	*  @param version (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isSupported(feature:String=undefined, version:String=undefined):Boolean { return false;}

	public function get namespaceURI():String { return ''; }

	public function get prefix():String { return ''; }
	public function set prefix(value:String):void { }

	public function get localName():String { return ''; }
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasAttributes():Boolean { return false;}

	public function get baseURI():String { return ''; }

	public function get textContent():String { return ''; }
	public function set textContent(value:String):void { }
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isSameNode(other:Node=undefined):Boolean { return false;}
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isEqualNode(other:Node=undefined):Boolean { return false;}
	/**
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function lookupPrefix(namespaceURI:String=undefined):String { return '';}
	/**
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isDefaultNamespace(namespaceURI:String=undefined):Boolean { return false;}
	/**
	*  @param prefix (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function lookupNamespaceURI(prefix:String=undefined):String { return '';}
	public static const DOCUMENT_POSITION_DISCONNECTED:uint = 0x01;
	public static const DOCUMENT_POSITION_PRECEDING:uint = 0x02;
	public static const DOCUMENT_POSITION_FOLLOWING:uint = 0x04;
	public static const DOCUMENT_POSITION_CONTAINS:uint = 0x08;
	public static const DOCUMENT_POSITION_CONTAINED_BY:uint = 0x10;
	public static const DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:uint = 0x20;
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public function compareDocumentPosition(other:Node=undefined):uint { return 0;}
	/**
	*  @param other (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function contains(other:Node=undefined):Boolean { return false;}

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get parentElement():Element { return null; }
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param event
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(event:DomEvent):Boolean { return false;}
}

}