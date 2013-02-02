
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/HTMLOptionElement.idl

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


[JavaScript(export=false, name="HTMLOptionElement")]
public class HTMLOptionElement extends HTMLElement
{
	[JavascriptMethod(name="Option")]
	public function HTMLOptionElement(data:String='', value:String='', defaultSelected:Boolean=false, selected:Boolean=false) {super();}

	public function get disabled():Boolean { return false; }
	public function set disabled(value:Boolean):void { }

	public function get form():HTMLFormElement { return null; }

	public function get label():String { return ''; }
	public function set label(value:String):void { }

	public function get defaultSelected():Boolean { return false; }
	public function set defaultSelected(value:Boolean):void { }

	public function get selected():Boolean { return false; }
	public function set selected(value:Boolean):void { }

	public function get value():String { return ''; }
	public function set value(value:String):void { }

	public function get text():String { return ''; }
	public function set text(value:String):void { }

	public function get index():uint { return 0; }
}

}