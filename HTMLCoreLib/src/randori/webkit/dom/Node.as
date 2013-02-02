
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/Node.idl

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


[JavaScript(export=false, name="Node")]
public class Node extends Object implements EventTarget
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

	public function get parentNode():Node { return null; }

	public function get childNodes():Object { return null; }

	public function get firstChild():Node { return null; }

	public function get lastChild():Node { return null; }

	public function get previousSibling():Node { return null; }

	public function get nextSibling():Node { return null; }

	public function get attributes():Object { return null; }

	public function get ownerDocument():Document { return null; }
	public function insertBefore(newChild:Node, refChild:Node):Node { return null;}
	public function replaceChild(newChild:Node, oldChild:Node):Node { return null;}
	public function removeChild(oldChild:Node):Node { return null;}
	public function appendChild(newChild:Node):Node { return null;}
	public function hasChildNodes():Boolean { return false;}
	public function cloneNode(deep:Boolean=false):Node { return null;}
	public function normalize():void {}
	public function isSupported(feature:String='', version:String=''):Boolean { return false;}

	public function get namespaceURI():String { return ''; }

	public function get prefix():String { return ''; }
	public function set prefix(value:String):void { }

	public function get localName():String { return ''; }
	public function hasAttributes():Boolean { return false;}

	public function get baseURI():String { return ''; }

	public function get textContent():String { return ''; }
	public function set textContent(value:String):void { }
	public function isSameNode(other:Node=null):Boolean { return false;}
	public function isEqualNode(other:Node=null):Boolean { return false;}
	public function lookupPrefix(namespaceURI:String=''):String { return '';}
	public function isDefaultNamespace(namespaceURI:String=''):Boolean { return false;}
	public function lookupNamespaceURI(prefix:String=''):String { return '';}
	public static const DOCUMENT_POSITION_DISCONNECTED:uint = 0x01;
	public static const DOCUMENT_POSITION_PRECEDING:uint = 0x02;
	public static const DOCUMENT_POSITION_FOLLOWING:uint = 0x04;
	public static const DOCUMENT_POSITION_CONTAINS:uint = 0x08;
	public static const DOCUMENT_POSITION_CONTAINED_BY:uint = 0x10;
	public static const DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:uint = 0x20;
	public function compareDocumentPosition(other:Node=null):uint { return 0;}
	public function contains(other:Node=null):Boolean { return false;}

	public function get parentElement():Element { return null; }

	public function get isContentEditable():Boolean { return false; }
	public function inspect():void {}
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function dispatchEvent(event:DomEvent):Boolean { return false;}
}

}