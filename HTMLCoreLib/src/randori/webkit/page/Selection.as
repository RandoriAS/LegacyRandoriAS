
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/page/DOMSelection.idl

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


package randori.webkit.page
{

import randori.webkit.dom.Node;
import randori.webkit.dom.Range;

[JavaScript(export=false, name="Selection")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class Selection
{

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get anchorNode():Node { return null; }

	public function get anchorOffset():uint { return 0; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get focusNode():Node { return null; }

	public function get focusOffset():uint { return 0; }

	public function get isCollapsed():Boolean { return false; }

	public function get rangeCount():uint { return 0; }
	/**
	*  @param node (optional argument, default value is <code>null</code>)
	*  @param index (optional argument, default value is <code>0</code>)
	*/
	public function collapse(node:Node=null, index:uint=0):void {}
	public function collapseToEnd():void {}
	public function collapseToStart():void {}
	public function deleteFromDocument():void {}
	/**
	*  @param node (optional argument, default value is <code>null</code>)
	*  @param allowPartial (optional argument, default value is <code>false</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function containsNode(node:Node=null, allowPartial:Boolean=false):Boolean { return false;}
	/**
	*  @param node (optional argument, default value is <code>null</code>)
	*/
	public function selectAllChildren(node:Node=null):void {}
	/**
	*  @param node (optional argument, default value is <code>null</code>)
	*  @param offset (optional argument, default value is <code>0</code>)
	*/
	public function extend(node:Node=null, offset:uint=0):void {}
	/**
	*  @param index (optional argument, default value is <code>0</code>)
	*  @return A <code>Range</code> instance.
	*/
	public function getRangeAt(index:uint=0):Range { return null;}
	public function removeAllRanges():void {}
	/**
	*  @param range (optional argument, default value is <code>null</code>)
	*/
	public function addRange(range:Range=null):void {}
	/**
	*  @return A <code>String</code> instance.
	*/
	public function toString():String { return '';}

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get baseNode():Node { return null; }

	public function get baseOffset():uint { return 0; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get extentNode():Node { return null; }

	public function get extentOffset():uint { return 0; }

	public function get type():String { return ''; }
	/**
	*  @param alter (optional argument, default value is <code>''</code>)
	*  @param direction (optional argument, default value is <code>''</code>)
	*  @param granularity (optional argument, default value is <code>''</code>)
	*/
	public function modify(alter:String='', direction:String='', granularity:String=''):void {}
	/**
	*  @param baseNode (optional argument, default value is <code>null</code>)
	*  @param baseOffset (optional argument, default value is <code>0</code>)
	*  @param extentNode (optional argument, default value is <code>null</code>)
	*  @param extentOffset (optional argument, default value is <code>0</code>)
	*/
	public function setBaseAndExtent(baseNode:Node=null, baseOffset:uint=0, extentNode:Node=null, extentOffset:uint=0):void {}
	/**
	*  @param node (optional argument, default value is <code>null</code>)
	*  @param offset (optional argument, default value is <code>0</code>)
	*/
	public function setPosition(node:Node=null, offset:uint=0):void {}
	public function empty():void {}
}

}