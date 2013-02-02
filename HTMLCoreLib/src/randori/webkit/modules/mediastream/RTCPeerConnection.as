
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/mediastream/RTCPeerConnection.idl

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


package randori.webkit.modules.mediastream
{

import randori.webkit.dom.DomEvent;

[JavaScript(export=false, name="RTCPeerConnection")]
public class RTCPeerConnection
{
	public function RTCPeerConnection(rtcIceServers:Object, mediaConstraints:Object=null) {super();}
	public function createOffer(successCallback:Function, failureCallback:Function=null, mediaConstraints:Object=null):void {}
	public function createAnswer(successCallback:Function, failureCallback:Function=null, mediaConstraints:Object=null):void {}
	public function setLocalDescription(description:RTCSessionDescription, successCallback:Function=null, failureCallback:Function=null):void {}

	public function get localDescription():RTCSessionDescription { return null; }
	public function setRemoteDescription(description:RTCSessionDescription, successCallback:Function=null, failureCallback:Function=null):void {}

	public function get remoteDescription():RTCSessionDescription { return null; }

	public function get readyState():String { return ''; }

	public function get signalingState():String { return ''; }
	public function updateIce(configuration:Object=null, mediaConstraints:Object=null):void {}
	public function addIceCandidate(candidate:RTCIceCandidate):void {}

	public function get iceGatheringState():String { return ''; }

	public function get iceConnectionState():String { return ''; }

	public function get localStreams():Object { return null; }

	public function get remoteStreams():Object { return null; }
	public function addStream(stream:MediaStream, mediaConstraints:Object=null):void {}
	public function removeStream(stream:MediaStream):void {}
	public function getStats(successCallback:Function, selector:MediaStreamTrack=null):void {}
	public function createDataChannel(label:String, options:Object=null):RTCDataChannel { return null;}
	public function close():void {}

	public function get onnegotiationneeded():Function { return null; }
	public function set onnegotiationneeded(value:Function):void { }

	public function get onicecandidate():Function { return null; }
	public function set onicecandidate(value:Function):void { }

	public function get onstatechange():Function { return null; }
	public function set onstatechange(value:Function):void { }

	public function get onaddstream():Function { return null; }
	public function set onaddstream(value:Function):void { }

	public function get onremovestream():Function { return null; }
	public function set onremovestream(value:Function):void { }

	public function get ongatheringchange():Function { return null; }
	public function set ongatheringchange(value:Function):void { }

	public function get onicechange():Function { return null; }
	public function set onicechange(value:Function):void { }

	public function get ondatachannel():Function { return null; }
	public function set ondatachannel(value:Function):void { }
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function dispatchEvent(event:DomEvent):Boolean { return false;}
}

}