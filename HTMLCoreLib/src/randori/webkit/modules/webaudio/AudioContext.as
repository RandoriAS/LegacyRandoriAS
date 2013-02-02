
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/webaudio/AudioContext.idl

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


package randori.webkit.modules.webaudio
{

import randori.webkit.html.canvas.ArrayBuffer;
import randori.webkit.html.HTMLMediaElement;
import randori.webkit.modules.mediastream.MediaStream;

[JavaScript(export=false, name="AudioContext")]
public class AudioContext
{

	public function get destination():AudioDestinationNode { return null; }

	public function get currentTime():Number { return 0; }

	public function get sampleRate():Number { return 0; }

	public function get listener():AudioListener { return null; }

	public function get activeSourceCount():uint { return 0; }
	public function createBuffer(numberOfChannels:uint, numberOfFrames:uint, sampleRate:Number):AudioBuffer { return null;}
	public function decodeAudioData(audioData:ArrayBuffer, successCallback:Function, errorCallback:Function=null):void {}
	public function createBufferSource():AudioBufferSourceNode { return null;}
	public function createMediaElementSource(mediaElement:HTMLMediaElement):MediaElementAudioSourceNode { return null;}
	public function createMediaStreamSource(mediaStream:MediaStream):MediaStreamAudioSourceNode { return null;}
	public function createMediaStreamDestination():MediaStreamAudioDestinationNode { return null;}
	public function createGain():GainNode { return null;}
	public function createDelay(maxDelayTime:Number=0):DelayNode { return null;}
	public function createBiquadFilter():BiquadFilterNode { return null;}
	public function createWaveShaper():WaveShaperNode { return null;}
	public function createPanner():PannerNode { return null;}
	public function createConvolver():ConvolverNode { return null;}
	public function createDynamicsCompressor():DynamicsCompressorNode { return null;}
	public function createAnalyser():AnalyserNode { return null;}
	public function createScriptProcessor(bufferSize:uint, numberOfInputChannels:uint=0, numberOfOutputChannels:uint=0):ScriptProcessorNode { return null;}
	public function createOscillator():OscillatorNode { return null;}
	public function createWaveTable(real:Vector.<Number>, imag:Vector.<Number>):WaveTable { return null;}
	public function createChannelSplitter(numberOfOutputs:uint=0):ChannelSplitterNode { return null;}
	public function createChannelMerger(numberOfInputs:uint=0):ChannelMergerNode { return null;}

	public function get oncomplete():Function { return null; }
	public function set oncomplete(value:Function):void { }
	public function startRendering():void {}
	public function createGainNode():GainNode { return null;}
	public function createDelayNode(maxDelayTime:Number=0):DelayNode { return null;}
	public function createJavaScriptNode(bufferSize:uint, numberOfInputChannels:uint=0, numberOfOutputChannels:uint=0):ScriptProcessorNode { return null;}
}

}