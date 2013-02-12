
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLTextAreaElement.idl

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

import randori.webkit.dom.NodeList;

[Javascript(export="false", name="HTMLTextAreaElement")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.HTMLElement
 */
public class HTMLTextAreaElement extends HTMLElement
{
	[JavascriptMethod(omitparanthesis=true, omitnewoperator=true, name="document.createElement('textarea')")]
	/**
	*  Creates a new <code>HTMLTextAreaElement</code> instance.
	*/
	public function HTMLTextAreaElement() {super();}

	public function get autofocus():Boolean { return false; }
	public function set autofocus(value:Boolean):void { }

	public function get cols():uint { return 0; }
	public function set cols(value:uint):void { }

	public function get dirName():String { return ''; }
	public function set dirName(value:String):void { }

	public function get disabled():Boolean { return false; }
	public function set disabled(value:Boolean):void { }

	/**
	*  @see randori.webkit.html.HTMLFormElement
	*/
	public function get form():HTMLFormElement { return null; }

	public function get maxLength():uint { return 0; }
	public function set maxLength(value:uint):void { }

	public function get name():String { return ''; }
	public function set name(value:String):void { }

	public function get placeholder():String { return ''; }
	public function set placeholder(value:String):void { }

	[JavascriptProperty(name="readOnly")]
	public function get readOnly_():Boolean { return false; }
	public function set readOnly_(value:Boolean):void { }

	public function get required():Boolean { return false; }
	public function set required(value:Boolean):void { }

	public function get rows():uint { return 0; }
	public function set rows(value:uint):void { }

	public function get wrap():String { return ''; }
	public function set wrap(value:String):void { }

	public function get type():String { return ''; }

	public function get defaultValue():String { return ''; }
	public function set defaultValue(value:String):void { }

	public function get value():String { return ''; }
	public function set value(value:String):void { }

	public function get textLength():uint { return 0; }

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
	public function select():void {}

	public function get selectionStart():uint { return 0; }
	public function set selectionStart(value:uint):void { }

	public function get selectionEnd():uint { return 0; }
	public function set selectionEnd(value:uint):void { }

	public function get selectionDirection():String { return ''; }
	public function set selectionDirection(value:String):void { }
	/**
	*  @param replacement
	*  @param start
	*  @param end
	*  @param selectionMode (optional argument, default value is <code>null</code>)
	*/
	public function setRangeText(replacement:String, start:uint, end:uint, selectionMode:String=null):void {}
	/**
	*  @param start (optional argument, default value is <code>undefined</code>)
	*  @param end (optional argument, default value is <code>undefined</code>)
	*  @param direction (optional argument, default value is <code>''</code>)
	*/
	public function setSelectionRange(start:uint=undefined, end:uint=undefined, direction:String=''):void {}
}

}