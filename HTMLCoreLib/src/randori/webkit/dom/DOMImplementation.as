
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/DOMImplementation.idl

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

import randori.webkit.css.CSSStyleSheet;
import randori.webkit.html.HTMLDocument;

[JavaScript(export="false", name="DOMImplementation")]
/**
 *  <p>The <code>DOMImplementation</code> interface provides a
 *  number of methods for performing operations that are independent
 *  of any particular instance of the document object model.</p>
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class DOMImplementation
{
	/**
	*  <p>Test if the DOM implementation implements a
	*  specific feature.</p>
	*  @param feature (optional argument, default value is <code>undefined</code>)
	*  @param version (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function hasFeature(feature:String=undefined, version:String=undefined):Boolean { return false;}
	/**
	*  <p>Creates an empty <code>DocumentType</code> node. Entity
	*  declarations and notations are not made available. Entity reference
	*  expansions and default attribute additions do not occur. It is expected
	*  that a future version of the DOM will provide a way for populating a
	*  <code>DocumentType</code>.</p><p>HTML-only DOM implementations do not need to
	*  implement this method.</p>
	*  @param qualifiedName (optional argument, default value is <code>undefined</code>)
	*  @param publicId (optional argument, default value is <code>undefined</code>)
	*  @param systemId (optional argument, default value is <code>undefined</code>)
	*  @return A <code>DocumentType</code> instance.
	*/
	public function createDocumentType(qualifiedName:String=undefined, publicId:String=undefined, systemId:String=undefined):DocumentType { return null;}
	/**
	*  <p>Creates an XML <code>Document</code> object of the specified type
	*  with its document element. HTML-only DOM implementations do not need to
	*  implement this method.</p>
	*  @param namespaceURI (optional argument, default value is <code>undefined</code>)
	*  @param qualifiedName (optional argument, default value is <code>undefined</code>)
	*  @param doctype (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Document</code> instance.
	*/
	public function createDocument(namespaceURI:String=undefined, qualifiedName:String=undefined, doctype:DocumentType=undefined):Document { return null;}
	/**
	*  @param title (optional argument, default value is <code>undefined</code>)
	*  @param media (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSStyleSheet</code> instance.
	*/
	public function createCSSStyleSheet(title:String=undefined, media:String=undefined):CSSStyleSheet { return null;}
	/**
	*  @param title (optional argument, default value is <code>null</code>)
	*  @return A <code>HTMLDocument</code> instance.
	*/
	public function createHTMLDocument(title:String=null):HTMLDocument { return null;}
}

}