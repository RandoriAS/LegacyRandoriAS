
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/xml/XMLHttpRequest.idl

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

import randori.webkit.html.canvas.ArrayBufferView;
import randori.webkit.dom.Document;
import randori.webkit.dom.DomEvent;

[JavaScript(export=false, name="XMLHttpRequest")]
public class XMLHttpRequest
{
	public function XMLHttpRequest() {super();}

	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>errorEvent</code>.
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	public function get onload():Function { return null; }
	public function set onload(value:Function):void { }

	public function get onloadend():Function { return null; }
	public function set onloadend(value:Function):void { }

	public function get onloadstart():Function { return null; }
	public function set onloadstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>progressEvent</code>.
	*/
	public function get onprogress():Function { return null; }
	public function set onprogress(value:Function):void { }

	public function get ontimeout():Function { return null; }
	public function set ontimeout(value:Function):void { }

	public function get onreadystatechange():Function { return null; }
	public function set onreadystatechange(value:Function):void { }
	public static const UNSENT:uint = 0;
	public static const OPENED:uint = 1;
	public static const HEADERS_RECEIVED:uint = 2;
	public static const LOADING:uint = 3;
	public static const DONE:uint = 4;

	public function get timeout():uint { return 0; }
	public function set timeout(value:uint):void { }

	public function get readyState():uint { return 0; }

	public function get withCredentials():Boolean { return false; }
	public function set withCredentials(value:Boolean):void { }
	public function open(method:String, url:String, async:Boolean=false, user:String='', password:String=''):void {}
	public function setRequestHeader(header:String, value:String):void {}
	public function send(data:ArrayBufferView):void {}
	public function abort():void {}

	public function get upload():XMLHttpRequestUpload { return null; }
	public function getAllResponseHeaders():String { return '';}
	public function getResponseHeader(header:String):String { return '';}

	public function get responseText():String { return ''; }

	public function get responseXML():Document { return null; }

	public function get responseType():String { return ''; }
	public function set responseType(value:String):void { }

	public function get response():Object { return null; }

	public function get status():uint { return 0; }

	public function get statusText():String { return ''; }
	public function overrideMimeType($override:String):void {}
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function dispatchEvent(evt:DomEvent):Boolean { return false;}
}

}