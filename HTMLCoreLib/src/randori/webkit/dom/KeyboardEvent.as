
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/dom/KeyboardEvent.idl

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


package randori.webkit.dom
{

import randori.webkit.page.Window;

[JavaScript(export=false, name="KeyboardEvent")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see randori.webkit.dom.UIEvent
 */
public class KeyboardEvent extends UIEvent
{
	public static const KEY_LOCATION_STANDARD:uint = 0x00;
	public static const KEY_LOCATION_LEFT:uint = 0x01;
	public static const KEY_LOCATION_RIGHT:uint = 0x02;
	public static const KEY_LOCATION_NUMPAD:uint = 0x03;

	public function get keyIdentifier():String { return ''; }

	public function get keyLocation():uint { return 0; }

	public function get ctrlKey():Boolean { return false; }

	public function get shiftKey():Boolean { return false; }

	public function get altKey():Boolean { return false; }

	public function get metaKey():Boolean { return false; }

	public function get altGraphKey():Boolean { return false; }
	/**
	*  @param keyIdentifierArg (optional argument, default value is <code>''</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function getModifierState(keyIdentifierArg:String=''):Boolean { return false;}
	/**
	*  @param type (optional argument, default value is <code>''</code>)
	*  @param canBubble (optional argument, default value is <code>false</code>)
	*  @param cancelable (optional argument, default value is <code>false</code>)
	*  @param view (optional argument, default value is <code>null</code>)
	*  @param keyIdentifier (optional argument, default value is <code>''</code>)
	*  @param keyLocation (optional argument, default value is <code>0</code>)
	*  @param ctrlKey (optional argument, default value is <code>false</code>)
	*  @param altKey (optional argument, default value is <code>false</code>)
	*  @param shiftKey (optional argument, default value is <code>false</code>)
	*  @param metaKey (optional argument, default value is <code>false</code>)
	*  @param altGraphKey (optional argument, default value is <code>false</code>)
	*/
	public function initKeyboardEvent(type:String='', canBubble:Boolean=false, cancelable:Boolean=false, view:Window=null, keyIdentifier:String='', keyLocation:uint=0, ctrlKey:Boolean=false, altKey:Boolean=false, shiftKey:Boolean=false, metaKey:Boolean=false, altGraphKey:Boolean=false):void {}
}

}