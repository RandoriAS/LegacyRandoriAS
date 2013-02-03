
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/workers/WorkerContext.idl

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


package randori.webkit.workers
{

import randori.webkit.page.WorkerNavigator;
import randori.webkit.dom.DomEvent;
import randori.webkit.dom.MessageEvent;
import randori.webkit.dom.MessageChannel;
import randori.webkit.page.EventSource;
import randori.webkit.xml.XMLHttpRequest;
import randori.webkit.fileapi.Blob;
import randori.webkit.fileapi.FileReader;
import randori.webkit.fileapi.FileReaderSync;
import randori.webkit.html.URL;
import randori.webkit.html.canvas.ArrayBuffer;
import randori.webkit.html.canvas.DataView;

[JavaScript(export="false", nativecondition="WORKERS", name="WorkerContext")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class WorkerContext
{

	/**
	*  @see randori.webkit.workers.WorkerContext
	*/
	public function get self():WorkerContext { return null; }

	/**
	*  @see randori.webkit.workers.WorkerLocation
	*/
	public function get location():WorkerLocation { return null; }
	public function close():void {}

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }
	public function importScripts():void {}

	/**
	*  @see randori.webkit.page.WorkerNavigator
	*/
	public function get navigator():WorkerNavigator { return null; }
	/**
	*  @param handler
	*  @param timeout
	*  @return A <code>uint</code> instance.
	*/
	public function setTimeout(handler:Object, timeout:uint):uint { return 0;}
	/**
	*  @param handle (optional argument, default value is <code>undefined</code>)
	*/
	public function clearTimeout(handle:uint=undefined):void {}
	/**
	*  @param handler
	*  @param timeout
	*  @return A <code>uint</code> instance.
	*/
	public function setInterval(handler:Object, timeout:uint):uint { return 0;}
	/**
	*  @param handle (optional argument, default value is <code>undefined</code>)
	*/
	public function clearInterval(handle:uint=undefined):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param evt
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(evt:DomEvent):Boolean { return false;}

	[JavascriptProperty(name="MessageEvent")]
	/**
	*  @see randori.webkit.dom.MessageEvent
	*/
	public function get MessageEvent_():MessageEvent { return null; }
	public function set MessageEvent_(value:MessageEvent):void { }

	[JavascriptProperty(name="WorkerLocation")]
	/**
	*  @see randori.webkit.workers.WorkerLocation
	*/
	public function get WorkerLocation_():WorkerLocation { return null; }
	public function set WorkerLocation_(value:WorkerLocation):void { }

	[JavascriptProperty(name="MessageChannel")]
	/**
	*  @see randori.webkit.dom.MessageChannel
	*/
	public function get MessageChannel_():MessageChannel { return null; }
	public function set MessageChannel_(value:MessageChannel):void { }

	[JavascriptProperty(name="EventSource")]
	/**
	*  @see randori.webkit.page.EventSource
	*/
	public function get EventSource_():EventSource { return null; }
	public function set EventSource_(value:EventSource):void { }

	[JavascriptProperty(name="XMLHttpRequest")]
	/**
	*  @see randori.webkit.xml.XMLHttpRequest
	*/
	public function get XMLHttpRequest_():XMLHttpRequest { return null; }
	public function set XMLHttpRequest_(value:XMLHttpRequest):void { }

	[JavascriptProperty(name="Blob")]
	/**
	*  @see randori.webkit.fileapi.Blob
	*/
	public function get Blob_():Blob { return null; }
	public function set Blob_(value:Blob):void { }

	[JavascriptProperty(name="FileReader")]
	/**
	*  @see randori.webkit.fileapi.FileReader
	*/
	public function get FileReader_():FileReader { return null; }
	public function set FileReader_(value:FileReader):void { }

	[JavascriptProperty(name="FileReaderSync")]
	/**
	*  @see randori.webkit.fileapi.FileReaderSync
	*/
	public function get FileReaderSync_():FileReaderSync { return null; }
	public function set FileReaderSync_(value:FileReaderSync):void { }

	[JavascriptProperty(name="URL")]
	/**
	*  @see randori.webkit.html.URL
	*/
	public function get URL_():URL { return null; }
	public function set URL_(value:URL):void { }

	[JavascriptProperty(name="ArrayBuffer")]
	/**
	*  @see randori.webkit.html.canvas.ArrayBuffer
	*/
	public function get ArrayBuffer_():ArrayBuffer { return null; }
	public function set ArrayBuffer_(value:ArrayBuffer):void { }

	[JavascriptProperty(name="Int8Array")]
	/**
	*  @see randori.webkit.html.canvas.Int8Array
	*/
	public function get Int8Array_():Object { return null; }
	public function set Int8Array_(value:Object):void { }

	[JavascriptProperty(name="Uint8Array")]
	/**
	*  @see randori.webkit.html.canvas.Uint8Array
	*/
	public function get Uint8Array_():Object { return null; }
	public function set Uint8Array_(value:Object):void { }

	[JavascriptProperty(name="Uint8ClampedArray")]
	/**
	*  @see randori.webkit.html.canvas.Uint8Array
	*/
	public function get Uint8ClampedArray_():Object { return null; }
	public function set Uint8ClampedArray_(value:Object):void { }

	[JavascriptProperty(name="Int16Array")]
	/**
	*  @see randori.webkit.html.canvas.Int16Array
	*/
	public function get Int16Array_():Object { return null; }
	public function set Int16Array_(value:Object):void { }

	[JavascriptProperty(name="Uint16Array")]
	/**
	*  @see randori.webkit.html.canvas.Uint16Array
	*/
	public function get Uint16Array_():Object { return null; }
	public function set Uint16Array_(value:Object):void { }

	[JavascriptProperty(name="Int32Array")]
	/**
	*  @see randori.webkit.html.canvas.Int32Array
	*/
	public function get Int32Array_():Object { return null; }
	public function set Int32Array_(value:Object):void { }

	[JavascriptProperty(name="Uint32Array")]
	/**
	*  @see randori.webkit.html.canvas.Uint32Array
	*/
	public function get Uint32Array_():Object { return null; }
	public function set Uint32Array_(value:Object):void { }

	[JavascriptProperty(name="Float32Array")]
	/**
	*  @see randori.webkit.html.canvas.Float32Array
	*/
	public function get Float32Array_():Object { return null; }
	public function set Float32Array_(value:Object):void { }

	[JavascriptProperty(name="Float64Array")]
	/**
	*  @see randori.webkit.html.canvas.Float64Array
	*/
	public function get Float64Array_():Object { return null; }
	public function set Float64Array_(value:Object):void { }

	[JavascriptProperty(name="DataView")]
	/**
	*  @see randori.webkit.html.canvas.DataView
	*/
	public function get DataView_():DataView { return null; }
	public function set DataView_(value:DataView):void { }
}

}