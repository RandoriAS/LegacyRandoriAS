
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/fileapi/FileReader.idl

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


package randori.webkit.fileapi
{

import randori.webkit.dom.DomEvent;

[JavaScript(export=false, name="FileReader")]
public class FileReader
{
	public function FileReader() {super();}
	public static const EMPTY:uint = 0;
	public static const LOADING:uint = 1;
	public static const DONE:uint = 2;

	public function get readyState():uint { return 0; }
	public function readAsArrayBuffer(blob:Blob):void {}
	public function readAsBinaryString(blob:Blob):void {}
	public function readAsText(blob:Blob, encoding:String=''):void {}
	public function readAsDataURL(blob:Blob):void {}
	public function abort():void {}

	public function get result():Object { return null; }

	public function get error():FileError { return null; }
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function dispatchEvent(evt:DomEvent):Boolean { return false;}

	public function get onloadstart():Function { return null; }
	public function set onloadstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>progressEvent</code>.
	*/
	public function get onprogress():Function { return null; }
	public function set onprogress(value:Function):void { }

	public function get onload():Function { return null; }
	public function set onload(value:Function):void { }

	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>errorEvent</code>.
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	public function get onloadend():Function { return null; }
	public function set onloadend(value:Function):void { }
}

}