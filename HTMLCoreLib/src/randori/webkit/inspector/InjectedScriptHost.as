
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/inspector/InjectedScriptHost.idl

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


package randori.webkit.inspector
{

import randori.webkit.dom.Node;

[JavaScript(export=false, name="InjectedScriptHost")]
public class InjectedScriptHost
{
	public function clearConsoleMessages():void {}
	public function copyText(text:String):void {}
	public function inspect(objectId:Object, hints:Object):void {}
	public function inspectedObject(num:int):Object { return null;}
	public function internalConstructorName(object:Object):Object { return null;}
	public function isHTMLAllCollection(object:Object):Boolean { return false;}
	public function type(object:Object):String { return '';}
	public function functionDetails(object:Object):Object { return null;}
	public function getInternalProperties(object:Object):Array { return null;}
	public function getEventListeners(node:Node):Array { return null;}
	public function databaseId(database:Object):String { return '';}
	public function storageId(storage:Object):String { return '';}
	public function evaluate(text:String):Object { return null;}
}

}