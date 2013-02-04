
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/NamedNodeMap.idl

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


[JavaScript(export="false", name="NamedNodeMap")]
/**
 *  <p>Objects implementing the <code>NamedNodeMap</code> interface are
 *  used to represent collections of nodes that can be accessed by name. Note
 *  that <code>NamedNodeMap</code> does not inherit from
 *  <code>NodeList</code>; <code>NamedNodeMaps</code> are not maintained in
 *  any particular order. Objects contained in an object implementing
 *  <code>NamedNodeMap</code> may also be accessed by an ordinal index, but
 *  this is simply to allow convenient enumeration of the contents of a
 *  <code>NamedNodeMap</code>, and does not imply that the DOM specifies an
 *  order to these Nodes. </p><p><code>NamedNodeMap</code> objects in the DOM are <termref def="td-live">live</termref>.</p>
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public dynamic class NamedNodeMap
{
	/**
	*  <p>Retrieves a node specified by name.</p>
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function getNamedItem(name:String=undefined):Node { return null;}
	/**
	*  <p>Adds a node using its <code>nodeName</code> attribute. If a node with
	*  that name is already present in this map, it is replaced by the new
	*  one.</p><p>As the <code>nodeName</code> attribute is used to
	*  derive the name which the node must be stored under, multiple
	*  nodes of certain types (those that have a "special" string
	*  value) cannot be stored as the names would clash. This is seen
	*  as preferable to allowing nodes to be aliased.</p>
	*  @param node (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function setNamedItem(node:Node=undefined):Node { return null;}
	/**
	*  <p>Removes a node specified by name. When this map contains the
	*  attributes attached to an element, if the removed attribute is
	*  known to have a default value, an attribute immediately appears
	*  containing the default value as well as the corresponding namespace
	*  URI, local name, and prefix when applicable.</p>
	*  @param name (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function removeNamedItem(name:String=undefined):Node { return null;}

	/**
	*  <p>The number of nodes in this map. The range of valid child node
	*  indices is <code>0</code> to <code>length-1</code>
	*  inclusive. </p>
	*/
	public function get length():uint { return 0; }
	/**
	*  <p>Retrieves a node specified by local name and namespace
	*  URI. HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param localName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function getNamedItemNS(namespaceURI:String=undefined, localName:String=undefined):Node { return null;}
	/**
	*  <p>Adds a node using its <code>namespaceURI</code> and
	*  <code>localName</code>. If a node with that namespace URI and that
	*  local name is already present in this map, it is replaced by the new
	*  one.</p><p>HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param node (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function setNamedItemNS(node:Node=undefined):Node { return null;}
	/**
	*  <p>Removes a node specified by local name and namespace URI. A
	*  removed attribute may be known to have a default value when this map
	*  contains the attributes attached to an element, as returned by the
	*  attributes attribute of the <code>Node</code> interface. If so, an
	*  attribute immediately appears containing the default value as well as
	*  the corresponding namespace URI, local name, and prefix when
	*  applicable.</p><p>HTML-only DOM implementations do not need to implement this
	*  method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param localName (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Node</code> instance.
	*/
	public function removeNamedItemNS(namespaceURI:String=undefined, localName:String=undefined):Node { return null;}
}

}