
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLTableElement.idl

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


package randori.webkit.html
{


[JavaScript(export=false, name="HTMLTableElement")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLTableElement extends HTMLElement
{
	[JavascriptMethod(omitparanthesis=true, omitnewoperator=true, name="document.createElement('table')")]
	/**
	*  Creates a new <code>HTMLTableElement</code> instance.
	*/
	public function HTMLTableElement() {super();}

	/**
	*  @see randori.webkit.html.HTMLTableCaptionElement
	*/
	public function get caption():HTMLTableCaptionElement { return null; }
	public function set caption(value:HTMLTableCaptionElement):void { }

	/**
	*  @see randori.webkit.html.HTMLTableSectionElement
	*/
	public function get tHead():HTMLTableSectionElement { return null; }
	public function set tHead(value:HTMLTableSectionElement):void { }

	/**
	*  @see randori.webkit.html.HTMLTableSectionElement
	*/
	public function get tFoot():HTMLTableSectionElement { return null; }
	public function set tFoot(value:HTMLTableSectionElement):void { }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get rows():Object { return null; }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get tBodies():Object { return null; }

	public function get align():String { return ''; }
	public function set align(value:String):void { }

	public function get bgColor():String { return ''; }
	public function set bgColor(value:String):void { }

	public function get border():String { return ''; }
	public function set border(value:String):void { }

	public function get cellPadding():String { return ''; }
	public function set cellPadding(value:String):void { }

	public function get cellSpacing():String { return ''; }
	public function set cellSpacing(value:String):void { }

	public function get frame():String { return ''; }
	public function set frame(value:String):void { }

	public function get rules():String { return ''; }
	public function set rules(value:String):void { }

	public function get summary():String { return ''; }
	public function set summary(value:String):void { }

	public function get width():String { return ''; }
	public function set width(value:String):void { }
	/**
	*  @return A <code>HTMLElement</code> instance.
	*/
	public function createTHead():HTMLElement { return null;}
	public function deleteTHead():void {}
	/**
	*  @return A <code>HTMLElement</code> instance.
	*/
	public function createTFoot():HTMLElement { return null;}
	public function deleteTFoot():void {}
	/**
	*  @return A <code>HTMLElement</code> instance.
	*/
	public function createTBody():HTMLElement { return null;}
	/**
	*  @return A <code>HTMLElement</code> instance.
	*/
	public function createCaption():HTMLElement { return null;}
	public function deleteCaption():void {}
	/**
	*  @param index (optional argument, default value is <code>0</code>)
	*  @return A <code>HTMLElement</code> instance.
	*/
	public function insertRow(index:uint=0):HTMLElement { return null;}
	/**
	*  @param index (optional argument, default value is <code>0</code>)
	*/
	public function deleteRow(index:uint=0):void {}
}

}