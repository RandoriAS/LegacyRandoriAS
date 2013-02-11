
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLSelectElement.idl

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


package randori.webkit.html
{

import randori.webkit.dom.Node;
import randori.webkit.dom.NodeList;

[Javascript(export="false", name="HTMLSelectElement")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public dynamic class HTMLSelectElement extends HTMLElement
{
	[JavascriptMethod(omitparanthesis=true, omitnewoperator=true, name="document.createElement('select')")]
	/**
	*  Creates a new <code>HTMLSelectElement</code> instance.
	*/
	public function HTMLSelectElement() {super();}

	public function get autofocus():Boolean { return false; }
	public function set autofocus(value:Boolean):void { }

	public function get disabled():Boolean { return false; }
	public function set disabled(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.HTMLFormElement
	*/
	public function get form():HTMLFormElement { return null; }

	public function get multiple():Boolean { return false; }
	public function set multiple(value:Boolean):void { }

	public function get name():String { return ''; }
	public function set name(value:String):void { }

	public function get required():Boolean { return false; }
	public function set required(value:Boolean):void { }

	public function get size():uint { return 0; }
	public function set size(value:uint):void { }

	public function get type():String { return ''; }

	/**
	*  @see randori.webkit.html.HTMLOptionsCollection
	*/
	public function get options():HTMLOptionsCollection { return null; }

	public function get length():uint { return 0; }
	public function set length(value:uint):void { }
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param before (optional argument, default value is <code>undefined</code>)
	*/
	public function add(element:HTMLElement=undefined, before:HTMLElement=undefined):void {}

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get selectedOptions():HTMLCollection { return null; }

	public function get selectedIndex():uint { return 0; }
	public function set selectedIndex(value:uint):void { }

	public function get value():String { return ''; }
	public function set value(value:String):void { }

	public function get willValidate():Boolean { return false; }

	/**
	*  @see randori.webkit.html.ValidityState
	*/
	public function get validity():ValidityState { return null; }

	public function get validationMessage():String { return ''; }
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function checkValidity():Boolean { return false;}
	/**
	*  @param error
	*/
	public function setCustomValidity(error:String):void {}

	/**
	*  @see randori.webkit.dom.NodeList
	*/
	public function get labels():NodeList { return null; }
}

}