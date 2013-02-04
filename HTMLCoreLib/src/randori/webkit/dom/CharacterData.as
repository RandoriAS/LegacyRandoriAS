
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/CharacterData.idl

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


[JavaScript(export="false", name="CharacterData")]
/**
 *  <p>The <code>CharacterData</code> interface extends Node with a set of
 *  attributes and methods for accessing character data in the DOM.  For
 *  clarity this set is defined here rather than on each object that uses
 *  these attributes and methods. No DOM objects correspond directly to
 *  <code>CharacterData</code>, though <code>Text</code> and others do
 *  inherit the interface from it. All <code>offsets</code> in this
 *  interface start from <code>0</code>.</p><p>As explained in the <code>DOMString</code> interface, text strings
 *  in the DOM are represented in UTF-16, i.e. as a sequence of 16-bit
 *  units.  In the following, the term <termref def="dt-16-bit-unit">16-bit units</termref> is used whenever
 *  necessary to indicate that indexing on CharacterData is done in
 *  16-bit units.</p>
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see randori.webkit.dom.Node
 */
public class CharacterData extends Node
{

	/**
	*  <p>The character data of the node
	*  that implements this interface. The DOM implementation may not
	*  put arbitrary limits on the amount of data that may be stored in a
	*  <code>CharacterData</code> node. However, implementation limits may
	*  mean that the entirety of a node's data may not fit into a single
	*  <code>DOMString</code>. In such cases, the user may call
	*  <code>substringData</code> to retrieve the data in appropriately sized
	*  pieces.</p>
	*/
	public function get data():String { return ''; }
	public function set data(value:String):void { }

	/**
	*  <p>The number of <termref def="dt-16-bit-unit">16-bit
	*  units</termref> that are available through <code>data</code> and the
	*  <code>substringData</code> method below.  This may have the value zero,
	*  i.e., <code>CharacterData</code> nodes may be empty.</p>
	*/
	public function get length():uint { return 0; }
	/**
	*  <p>Extracts a range of data from the node.</p>
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*  @param length (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function substringData(offset:uint=undefined, length:uint=undefined):String { return '';}
	/**
	*  <p>Append the string to the end of the character data of the node.
	*  Upon success, <code>data</code> provides access to the concatenation of
	*  <code>data</code> and the <code>DOMString</code> specified.</p>
	*  @param data (optional argument, default value is <code>undefined</code>)
	*/
	public function appendData(data:String=undefined):void {}
	/**
	*  <p>Insert a string at the specified <termref def="dt-16-bit-unit">16-bit
	*  unit</termref> offset.</p>
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*  @param data (optional argument, default value is <code>undefined</code>)
	*/
	public function insertData(offset:uint=undefined, data:String=undefined):void {}
	/**
	*  <p>Remove a range of <termref def="dt-16-bit-unit">16-bit units</termref>
	*  from the node. Upon success, <code>data</code> and <code>length</code>
	*  reflect the change.</p>
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*  @param length (optional argument, default value is <code>undefined</code>)
	*/
	public function deleteData(offset:uint=undefined, length:uint=undefined):void {}
	/**
	*  <p>Replace the characters starting at the specified <termref def="dt-16-bit-unit">16-bit unit</termref> offset with the specified
	*  string.</p>
	*  @param offset (optional argument, default value is <code>undefined</code>)
	*  @param length (optional argument, default value is <code>undefined</code>)
	*  @param data (optional argument, default value is <code>undefined</code>)
	*/
	public function replaceData(offset:uint=undefined, length:uint=undefined, data:String=undefined):void {}
	public function remove():void {}
}

}