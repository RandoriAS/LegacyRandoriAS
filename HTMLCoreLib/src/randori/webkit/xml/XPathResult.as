
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/xml/XPathResult.idl

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


package randori.webkit.xml
{

import randori.webkit.dom.Node;

[JavaScript(export="false", name="XPathResult")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class XPathResult
{
	public static const ANY_TYPE:uint = 0;
	public static const NUMBER_TYPE:uint = 1;
	public static const STRING_TYPE:uint = 2;
	public static const BOOLEAN_TYPE:uint = 3;
	public static const UNORDERED_NODE_ITERATOR_TYPE:uint = 4;
	public static const ORDERED_NODE_ITERATOR_TYPE:uint = 5;
	public static const UNORDERED_NODE_SNAPSHOT_TYPE:uint = 6;
	public static const ORDERED_NODE_SNAPSHOT_TYPE:uint = 7;
	public static const ANY_UNORDERED_NODE_TYPE:uint = 8;
	public static const FIRST_ORDERED_NODE_TYPE:uint = 9;

	public function get resultType():uint { return 0; }

	public function get numberValue():Number { return 0; }

	public function get stringValue():String { return ''; }

	public function get booleanValue():Boolean { return false; }

	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get singleNodeValue():Node { return null; }

	public function get invalidIteratorState():Boolean { return false; }

	public function get snapshotLength():uint { return 0; }
	/**
	*  @return A <code>Node</code> instance.
	*/
	public function iterateNext():Node { return null;}
	/**
	*  @param index (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function snapshotItem(index:uint=undefined):Node { return null;}
}

}