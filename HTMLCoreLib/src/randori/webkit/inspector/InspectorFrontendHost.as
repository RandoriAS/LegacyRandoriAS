
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/inspector/InspectorFrontendHost.idl

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

import randori.webkit.dom.MouseEvent;
import randori.webkit.modules.filesystem.DOMFileSystem;

[JavaScript(export=false, name="InspectorFrontendHost")]
public class InspectorFrontendHost
{
	public function loaded():void {}
	public function closeWindow():void {}
	public function bringToFront():void {}
	public function setZoomFactor(zoom:Number):void {}
	public function inspectedURLChanged(newURL:String):void {}
	public function requestSetDockSide(side:String):void {}
	public function setAttachedWindowHeight(height:uint):void {}
	public function moveWindowBy(x:Number, y:Number):void {}
	public function setInjectedScriptForOrigin(origin:String, script:String):void {}
	public function localizedStringsURL():String { return '';}
	public function hiddenPanels():String { return '';}
	public function copyText(text:String):void {}
	public function openInNewTab(url:String):void {}
	public function canSave():Boolean { return false;}
	public function save(url:String, content:String, forceSaveAs:Boolean):void {}
	public function append(url:String, content:String):void {}
	public function close(url:String):void {}
	public function canInspectWorkers():Boolean { return false;}
	public function platform():String { return '';}
	public function port():String { return '';}
	public function showContextMenu(event:MouseEvent, items:Object):void {}
	public function sendMessageToBackend(message:String):void {}
	public function recordActionTaken(actionCode:uint):void {}
	public function recordPanelShown(panelCode:uint):void {}
	public function recordSettingChanged(settingChanged:uint):void {}
	public function loadResourceSynchronously(url:String):String { return '';}
	public function supportsFileSystems():Boolean { return false;}
	public function requestFileSystems():void {}
	public function addFileSystem():void {}
	public function removeFileSystem(fileSystemPath:String):void {}
	public function isolatedFileSystem(fileSystemId:String, registeredName:String):DOMFileSystem { return null;}
	public function isUnderTest():Boolean { return false;}
}

}