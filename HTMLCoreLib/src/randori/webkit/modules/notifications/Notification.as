
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/notifications/Notification.idl

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


package randori.webkit.modules.notifications
{

import randori.webkit.dom.DomEvent;

[JavaScript(export=false, name="Notification")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class Notification
{
	/**
	*  Creates a new <code>Notification</code> instance.
	*  @param title
	*  @param options (optional argument, default value is <code>null</code>)
	*/
	public function Notification(title:String, options:Object=null) {super();}
	public function show():void {}
	public function cancel():void {}
	public function close():void {}

	public function get permission():String { return ''; }
	/**
	*  @param callback
	*/
	public function requestPermission(callback:Object):void {}

	/**
	*  Function that accepts an event of type <code>ShowEvent</code>.
	*/
	public function get onshow():Function { return null; }
	public function set onshow(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DisplayEvent</code>.
	*/
	public function get ondisplay():Function { return null; }
	public function set ondisplay(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>CloseEvent</code>.
	*  @see randori.webkit.modules.websockets.CloseEvent
	*/
	public function get onclose():Function { return null; }
	public function set onclose(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ClickEvent</code>.
	*/
	public function get onclick():Function { return null; }
	public function set onclick(value:Function):void { }

	public function get dir():String { return ''; }
	public function set dir(value:String):void { }

	public function get replaceId():String { return ''; }
	public function set replaceId(value:String):void { }

	public function get tag():String { return ''; }
	public function set tag(value:String):void { }
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
}

}