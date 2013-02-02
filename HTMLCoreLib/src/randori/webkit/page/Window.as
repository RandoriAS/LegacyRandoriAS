
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/page/DOMWindow.idl

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


package randori.webkit.page
{

import randori.webkit.dom.DomEvent;
import randori.webkit.dom.Element;
import randori.webkit.dom.Document;
import randori.webkit.css.MediaQueryList;
import randori.webkit.css.StyleMedia;
import randori.webkit.loader.appcache.DOMApplicationCache;
import randori.webkit.storage.Storage;
import randori.webkit.css.StyleSheet;
import randori.webkit.css.CSSStyleSheet;
import randori.webkit.css.CSSValue;
import randori.webkit.css.CSSPrimitiveValue;
import randori.webkit.css.CSSRule;
import randori.webkit.css.CSSCharsetRule;
import randori.webkit.css.CSSFontFaceRule;
import randori.webkit.css.CSSHostRule;
import randori.webkit.css.CSSImportRule;
import randori.webkit.css.CSSMediaRule;
import randori.webkit.css.CSSPageRule;
import randori.webkit.css.CSSStyleRule;
import randori.webkit.css.Counter;
import randori.webkit.css.Rect;
import randori.webkit.css.RGBColor;
import randori.webkit.dom.DOMImplementation;
import randori.webkit.html.DOMSettableTokenList;
import randori.webkit.dom.DocumentFragment;
import randori.webkit.dom.Node;
import randori.webkit.dom.CharacterData;
import randori.webkit.dom.Attr;
import randori.webkit.dom.Text;
import randori.webkit.dom.Comment;
import randori.webkit.dom.CDATASection;
import randori.webkit.dom.DocumentType;
import randori.webkit.dom.Notation;
import randori.webkit.dom.Entity;
import randori.webkit.dom.EntityReference;
import randori.webkit.html.canvas.DOMPath;
import randori.webkit.dom.ProcessingInstruction;
import randori.webkit.html.shadow.HTMLContentElement;
import randori.webkit.html.shadow.HTMLShadowElement;
import randori.webkit.html.HTMLDocument;
import randori.webkit.html.HTMLElement;
import randori.webkit.html.HTMLAnchorElement;
import randori.webkit.html.HTMLAppletElement;
import randori.webkit.html.HTMLAreaElement;
import randori.webkit.html.HTMLBRElement;
import randori.webkit.html.HTMLBaseElement;
import randori.webkit.html.HTMLBaseFontElement;
import randori.webkit.html.HTMLBodyElement;
import randori.webkit.html.HTMLButtonElement;
import randori.webkit.html.HTMLCanvasElement;
import randori.webkit.html.HTMLDListElement;
import randori.webkit.html.HTMLDataListElement;
import randori.webkit.html.HTMLDialogElement;
import randori.webkit.html.HTMLDirectoryElement;
import randori.webkit.html.HTMLDivElement;
import randori.webkit.html.HTMLEmbedElement;
import randori.webkit.html.HTMLFieldSetElement;
import randori.webkit.html.HTMLFontElement;
import randori.webkit.html.HTMLFormElement;
import randori.webkit.html.HTMLFrameElement;
import randori.webkit.html.HTMLFrameSetElement;
import randori.webkit.html.HTMLHRElement;
import randori.webkit.html.HTMLHeadElement;
import randori.webkit.html.HTMLHeadingElement;
import randori.webkit.html.HTMLHtmlElement;
import randori.webkit.html.HTMLIFrameElement;
import randori.webkit.html.HTMLImageElement;
import randori.webkit.html.HTMLInputElement;
import randori.webkit.html.HTMLKeygenElement;
import randori.webkit.html.HTMLLIElement;
import randori.webkit.html.HTMLLabelElement;
import randori.webkit.html.HTMLLegendElement;
import randori.webkit.html.HTMLLinkElement;
import randori.webkit.html.HTMLMapElement;
import randori.webkit.html.HTMLMarqueeElement;
import randori.webkit.html.HTMLMenuElement;
import randori.webkit.html.HTMLMetaElement;
import randori.webkit.html.HTMLMeterElement;
import randori.webkit.html.HTMLModElement;
import randori.webkit.html.HTMLOListElement;
import randori.webkit.html.HTMLObjectElement;
import randori.webkit.html.HTMLOptGroupElement;
import randori.webkit.html.HTMLOptionElement;
import randori.webkit.html.HTMLOutputElement;
import randori.webkit.html.HTMLParagraphElement;
import randori.webkit.html.HTMLParamElement;
import randori.webkit.html.HTMLPreElement;
import randori.webkit.html.HTMLProgressElement;
import randori.webkit.html.HTMLQuoteElement;
import randori.webkit.html.HTMLScriptElement;
import randori.webkit.html.HTMLSpanElement;
import randori.webkit.html.HTMLStyleElement;
import randori.webkit.html.HTMLTableCaptionElement;
import randori.webkit.html.HTMLTableCellElement;
import randori.webkit.html.HTMLTableColElement;
import randori.webkit.html.HTMLTableElement;
import randori.webkit.html.HTMLTableRowElement;
import randori.webkit.html.HTMLTableSectionElement;
import randori.webkit.html.HTMLTemplateElement;
import randori.webkit.html.HTMLTextAreaElement;
import randori.webkit.html.HTMLTitleElement;
import randori.webkit.html.HTMLUListElement;
import randori.webkit.html.HTMLOptionsCollection;
import randori.webkit.html.HTMLUnknownElement;
import randori.webkit.html.MediaKeyError;
import randori.webkit.html.MediaKeyEvent;
import randori.webkit.html.HTMLTrackElement;
import randori.webkit.html.track.TextTrack;
import randori.webkit.html.track.TextTrackCue;
import randori.webkit.html.track.TrackEvent;
import randori.webkit.html.HTMLAudioElement;
import randori.webkit.html.HTMLMediaElement;
import randori.webkit.html.HTMLVideoElement;
import randori.webkit.html.MediaError;
import randori.webkit.html.TimeRanges;
import randori.webkit.html.HTMLSourceElement;
import randori.webkit.html.MediaController;
import randori.webkit.html.HTMLIntentElement;
import randori.webkit.html.canvas.CanvasPattern;
import randori.webkit.html.canvas.CanvasGradient;
import randori.webkit.html.canvas.CanvasRenderingContext2D;
import randori.webkit.html.ImageData;
import randori.webkit.html.TextMetrics;
import randori.webkit.html.canvas.WebGLActiveInfo;
import randori.webkit.html.canvas.WebGLBuffer;
import randori.webkit.html.canvas.WebGLFramebuffer;
import randori.webkit.html.canvas.WebGLProgram;
import randori.webkit.html.canvas.WebGLRenderbuffer;
import randori.webkit.html.canvas.WebGLRenderingContext;
import randori.webkit.html.canvas.WebGLShader;
import randori.webkit.html.canvas.WebGLShaderPrecisionFormat;
import randori.webkit.html.canvas.WebGLTexture;
import randori.webkit.html.canvas.WebGLUniformLocation;
import randori.webkit.dom.DOMStringMap;
import randori.webkit.html.canvas.ArrayBuffer;
import randori.webkit.html.canvas.ArrayBufferView;
import randori.webkit.html.canvas.DataView;
import randori.webkit.dom.BeforeLoadEvent;
import randori.webkit.dom.CompositionEvent;
import randori.webkit.dom.CustomEvent;
import randori.webkit.dom.ErrorEvent;
import randori.webkit.dom.HashChangeEvent;
import randori.webkit.dom.KeyboardEvent;
import randori.webkit.dom.MessageEvent;
import randori.webkit.dom.MouseEvent;
import randori.webkit.dom.MutationEvent;
import randori.webkit.dom.OverflowEvent;
import randori.webkit.dom.PopStateEvent;
import randori.webkit.dom.PageTransitionEvent;
import randori.webkit.dom.ProgressEvent;
import randori.webkit.dom.TextEvent;
import randori.webkit.dom.TransitionEvent;
import randori.webkit.dom.UIEvent;
import randori.webkit.dom.WheelEvent;
import randori.webkit.xml.XMLHttpRequestProgressEvent;
import randori.webkit.dom.DeviceMotionEvent;
import randori.webkit.dom.DeviceOrientationEvent;
import randori.webkit.dom.Touch;
import randori.webkit.dom.TouchEvent;
import randori.webkit.storage.StorageEvent;
import randori.webkit.html.canvas.WebGLContextEvent;
import randori.webkit.modules.proximity.DeviceProximityEvent;
import randori.webkit.dom.AutocompleteErrorEvent;
import randori.webkit.dom.Clipboard;
import randori.webkit.workers.Worker;
import randori.webkit.workers.SharedWorker;
import randori.webkit.fileapi.File;
import randori.webkit.fileapi.Blob;
import randori.webkit.dom.NodeFilter;
import randori.webkit.dom.Range;
import randori.webkit.xml.DOMParser;
import randori.webkit.xml.XMLSerializer;
import randori.webkit.xml.XMLHttpRequest;
import randori.webkit.xml.XMLHttpRequestUpload;
import randori.webkit.xml.XSLTProcessor;
import randori.webkit.dom.MessagePort;
import randori.webkit.dom.MessageChannel;
import randori.webkit.plugins.MimeType;
import randori.webkit.dom.ClientRect;
import randori.webkit.xml.XPathEvaluator;
import randori.webkit.xml.XPathResult;
import randori.webkit.svg.SVGZoomEvent;
import randori.webkit.svg.SVGAElement;
import randori.webkit.svg.SVGAngle;
import randori.webkit.svg.SVGAnimatedAngle;
import randori.webkit.svg.SVGAnimatedBoolean;
import randori.webkit.svg.SVGAnimatedEnumeration;
import randori.webkit.svg.SVGAnimatedInteger;
import randori.webkit.svg.SVGAnimatedLength;
import randori.webkit.svg.SVGAnimatedLengthList;
import randori.webkit.svg.SVGAnimatedNumber;
import randori.webkit.svg.SVGAnimatedNumberList;
import randori.webkit.svg.SVGAnimatedPreserveAspectRatio;
import randori.webkit.svg.SVGAnimatedRect;
import randori.webkit.svg.SVGAnimatedString;
import randori.webkit.svg.SVGAnimatedTransformList;
import randori.webkit.svg.SVGCircleElement;
import randori.webkit.svg.SVGClipPathElement;
import randori.webkit.svg.SVGColor;
import randori.webkit.svg.SVGCursorElement;
import randori.webkit.svg.SVGDefsElement;
import randori.webkit.svg.SVGDescElement;
import randori.webkit.svg.SVGDocument;
import randori.webkit.svg.SVGElement;
import randori.webkit.svg.SVGElementInstance;
import randori.webkit.svg.SVGElementInstanceList;
import randori.webkit.svg.SVGEllipseElement;
import randori.webkit.svg.SVGForeignObjectElement;
import randori.webkit.svg.SVGGElement;
import randori.webkit.svg.SVGGradientElement;
import randori.webkit.svg.SVGImageElement;
import randori.webkit.svg.SVGLength;
import randori.webkit.svg.SVGLengthList;
import randori.webkit.svg.SVGLinearGradientElement;
import randori.webkit.svg.SVGLineElement;
import randori.webkit.svg.SVGMarkerElement;
import randori.webkit.svg.SVGMaskElement;
import randori.webkit.svg.SVGMatrix;
import randori.webkit.svg.SVGMetadataElement;
import randori.webkit.svg.SVGNumber;
import randori.webkit.svg.SVGNumberList;
import randori.webkit.svg.SVGPaint;
import randori.webkit.svg.SVGPathElement;
import randori.webkit.svg.SVGPathSeg;
import randori.webkit.svg.SVGPathSegArcAbs;
import randori.webkit.svg.SVGPathSegArcRel;
import randori.webkit.svg.SVGPathSegClosePath;
import randori.webkit.svg.SVGPathSegCurvetoCubicAbs;
import randori.webkit.svg.SVGPathSegCurvetoCubicRel;
import randori.webkit.svg.SVGPathSegCurvetoCubicSmoothAbs;
import randori.webkit.svg.SVGPathSegCurvetoCubicSmoothRel;
import randori.webkit.svg.SVGPathSegCurvetoQuadraticAbs;
import randori.webkit.svg.SVGPathSegCurvetoQuadraticRel;
import randori.webkit.svg.SVGPathSegCurvetoQuadraticSmoothAbs;
import randori.webkit.svg.SVGPathSegCurvetoQuadraticSmoothRel;
import randori.webkit.svg.SVGPathSegLinetoAbs;
import randori.webkit.svg.SVGPathSegLinetoHorizontalAbs;
import randori.webkit.svg.SVGPathSegLinetoHorizontalRel;
import randori.webkit.svg.SVGPathSegLinetoRel;
import randori.webkit.svg.SVGPathSegLinetoVerticalAbs;
import randori.webkit.svg.SVGPathSegLinetoVerticalRel;
import randori.webkit.svg.SVGPathSegList;
import randori.webkit.svg.SVGPathSegMovetoAbs;
import randori.webkit.svg.SVGPathSegMovetoRel;
import randori.webkit.svg.SVGPatternElement;
import randori.webkit.svg.SVGPoint;
import randori.webkit.svg.SVGPointList;
import randori.webkit.svg.SVGPolygonElement;
import randori.webkit.svg.SVGPolylineElement;
import randori.webkit.svg.SVGPreserveAspectRatio;
import randori.webkit.svg.SVGRadialGradientElement;
import randori.webkit.svg.SVGRect;
import randori.webkit.svg.SVGRectElement;
import randori.webkit.svg.SVGRenderingIntent;
import randori.webkit.svg.SVGScriptElement;
import randori.webkit.svg.SVGStopElement;
import randori.webkit.svg.SVGStringList;
import randori.webkit.svg.SVGStyleElement;
import randori.webkit.svg.SVGSVGElement;
import randori.webkit.svg.SVGSwitchElement;
import randori.webkit.svg.SVGSymbolElement;
import randori.webkit.svg.SVGTextContentElement;
import randori.webkit.svg.SVGTextElement;
import randori.webkit.svg.SVGTextPathElement;
import randori.webkit.svg.SVGTextPositioningElement;
import randori.webkit.svg.SVGTitleElement;
import randori.webkit.svg.SVGTransform;
import randori.webkit.svg.SVGTransformList;
import randori.webkit.svg.SVGTRefElement;
import randori.webkit.svg.SVGTSpanElement;
import randori.webkit.svg.SVGUnitTypes;
import randori.webkit.svg.SVGUseElement;
import randori.webkit.svg.SVGViewElement;
import randori.webkit.svg.SVGViewSpec;
import randori.webkit.svg.SVGZoomAndPan;
import randori.webkit.svg.SVGAnimateColorElement;
import randori.webkit.svg.SVGAnimateElement;
import randori.webkit.svg.SVGAnimateMotionElement;
import randori.webkit.svg.SVGAnimateTransformElement;
import randori.webkit.svg.SVGMPathElement;
import randori.webkit.svg.SVGSetElement;
import randori.webkit.svg.SVGAltGlyphDefElement;
import randori.webkit.svg.SVGAltGlyphElement;
import randori.webkit.svg.SVGAltGlyphItemElement;
import randori.webkit.svg.SVGFontElement;
import randori.webkit.svg.SVGFontFaceElement;
import randori.webkit.svg.SVGFontFaceFormatElement;
import randori.webkit.svg.SVGFontFaceNameElement;
import randori.webkit.svg.SVGFontFaceSrcElement;
import randori.webkit.svg.SVGFontFaceUriElement;
import randori.webkit.svg.SVGGlyphElement;
import randori.webkit.svg.SVGGlyphRefElement;
import randori.webkit.svg.SVGHKernElement;
import randori.webkit.svg.SVGMissingGlyphElement;
import randori.webkit.svg.SVGVKernElement;
import randori.webkit.svg.SVGComponentTransferFunctionElement;
import randori.webkit.svg.SVGFEBlendElement;
import randori.webkit.svg.SVGFEColorMatrixElement;
import randori.webkit.svg.SVGFEComponentTransferElement;
import randori.webkit.svg.SVGFECompositeElement;
import randori.webkit.svg.SVGFEConvolveMatrixElement;
import randori.webkit.svg.SVGFEDiffuseLightingElement;
import randori.webkit.svg.SVGFEDisplacementMapElement;
import randori.webkit.svg.SVGFEDistantLightElement;
import randori.webkit.svg.SVGFEDropShadowElement;
import randori.webkit.svg.SVGFEFloodElement;
import randori.webkit.svg.SVGFEFuncAElement;
import randori.webkit.svg.SVGFEFuncBElement;
import randori.webkit.svg.SVGFEFuncGElement;
import randori.webkit.svg.SVGFEFuncRElement;
import randori.webkit.svg.SVGFEGaussianBlurElement;
import randori.webkit.svg.SVGFEImageElement;
import randori.webkit.svg.SVGFEMergeElement;
import randori.webkit.svg.SVGFEMergeNodeElement;
import randori.webkit.svg.SVGFEMorphologyElement;
import randori.webkit.svg.SVGFEOffsetElement;
import randori.webkit.svg.SVGFEPointLightElement;
import randori.webkit.svg.SVGFESpecularLightingElement;
import randori.webkit.svg.SVGFESpotLightElement;
import randori.webkit.svg.SVGFETileElement;
import randori.webkit.svg.SVGFETurbulenceElement;
import randori.webkit.svg.SVGFilterElement;
import randori.webkit.html.FormData;
import randori.webkit.fileapi.FileError;
import randori.webkit.fileapi.FileReader;
import randori.webkit.html.URL;

[JavaScript(export=false, name="Window")]
public class Window
{

	public function get screen():Screen { return null; }

	public function get history():History { return null; }

	public function get locationbar():BarInfo { return null; }

	public function get menubar():BarInfo { return null; }

	public function get personalbar():BarInfo { return null; }

	public function get scrollbars():BarInfo { return null; }

	public function get statusbar():BarInfo { return null; }

	public function get toolbar():BarInfo { return null; }

	public function get navigator():Navigator { return null; }

	public function get clientInformation():Navigator { return null; }

	public function get crypto():Crypto { return null; }

	public function get location():Location { return null; }
	public function set location(value:Location):void { }

	public function get event():DomEvent { return null; }
	public function getSelection():Selection { return null;}

	public function get frameElement():Element { return null; }
	public function focus():void {}
	public function blur():void {}
	public function close():void {}
	public function print():void {}
	public function stop():void {}
	public function open(url:String, name:String, options:String=''):Window { return null;}
	public function showModalDialog(url:String, dialogArgs:Object=null, featureArgs:String=''):Object { return null;}
	public function alert(message:String=''):void {}
	public function confirm(message:String=''):Boolean { return false;}
	public function prompt(message:String='', defaultValue:String=''):String { return '';}
	public function find(string:String='', caseSensitive:Boolean=false, backwards:Boolean=false, wrap:Boolean=false, wholeWord:Boolean=false, searchInFrames:Boolean=false, showDialog:Boolean=false):Boolean { return false;}

	public function get offscreenBuffering():Boolean { return false; }

	public function get outerHeight():uint { return 0; }

	public function get outerWidth():uint { return 0; }

	public function get innerHeight():uint { return 0; }

	public function get innerWidth():uint { return 0; }

	public function get screenX():uint { return 0; }

	public function get screenY():uint { return 0; }

	public function get screenLeft():uint { return 0; }

	public function get screenTop():uint { return 0; }

	public function get scrollX():uint { return 0; }

	public function get scrollY():uint { return 0; }

	public function get pageXOffset():uint { return 0; }

	public function get pageYOffset():uint { return 0; }
	public function scrollBy(x:uint=0, y:uint=0):void {}
	public function scrollTo(x:uint=0, y:uint=0):void {}
	public function scroll(x:uint=0, y:uint=0):void {}
	public function moveBy(x:Number=0, y:Number=0):void {}
	public function moveTo(x:Number=0, y:Number=0):void {}
	public function resizeBy(x:Number=0, y:Number=0):void {}
	public function resizeTo(width:Number=0, height:Number=0):void {}

	public function get closed():Boolean { return false; }

	public function get length():uint { return 0; }

	public function get name():String { return ''; }
	public function set name(value:String):void { }

	public function get status():String { return ''; }
	public function set status(value:String):void { }

	public function get defaultStatus():String { return ''; }
	public function set defaultStatus(value:String):void { }

	public function get defaultstatus():String { return ''; }
	public function set defaultstatus(value:String):void { }

	public function get self():Window { return null; }

	public function get window():Window { return null; }

	public function get frames():Window { return null; }

	public function get opener():Window { return null; }

	public function get parent():Window { return null; }

	public function get top():Window { return null; }

	public function get document():Document { return null; }
	public function matchMedia(query:String):MediaQueryList { return null;}

	public function get styleMedia():StyleMedia { return null; }
	public function getComputedStyle(element:Element=null, pseudoElement:String=''):Object { return null;}
	public function getMatchedCSSRules(element:Element=null, pseudoElement:String=''):Object { return null;}

	public function get devicePixelRatio():Number { return 0; }

	public function get applicationCache():DOMApplicationCache { return null; }

	public function get sessionStorage():Storage { return null; }

	public function get localStorage():Storage { return null; }

	public function get orientation():uint { return 0; }

	public function get console():Console { return null; }
	public function postMessage(message:Object, targetOrigin:String, messagePorts:Array):void {}

	public function get performance():Performance { return null; }
	public function setTimeout(handler:Object=null, timeout:uint=0):uint { return 0;}
	public function clearTimeout(handle:uint=0):void {}
	public function setInterval(handler:Object, timeout:uint):uint { return 0;}
	public function clearInterval(handle:uint=0):void {}
	public function requestAnimationFrame(callback:Function):uint { return 0;}
	public function cancelAnimationFrame(id:uint):void {}
	public function atob(string:String=''):String { return '';}
	public function btoa(string:String=''):String { return '';}

	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	public function get onbeforeunload():Function { return null; }
	public function set onbeforeunload(value:Function):void { }

	public function get onblur():Function { return null; }
	public function set onblur(value:Function):void { }

	public function get oncanplay():Function { return null; }
	public function set oncanplay(value:Function):void { }

	public function get oncanplaythrough():Function { return null; }
	public function set oncanplaythrough(value:Function):void { }

	public function get onchange():Function { return null; }
	public function set onchange(value:Function):void { }

	public function get onclick():Function { return null; }
	public function set onclick(value:Function):void { }

	public function get oncontextmenu():Function { return null; }
	public function set oncontextmenu(value:Function):void { }

	public function get ondblclick():Function { return null; }
	public function set ondblclick(value:Function):void { }

	public function get ondrag():Function { return null; }
	public function set ondrag(value:Function):void { }

	public function get ondragend():Function { return null; }
	public function set ondragend(value:Function):void { }

	public function get ondragenter():Function { return null; }
	public function set ondragenter(value:Function):void { }

	public function get ondragleave():Function { return null; }
	public function set ondragleave(value:Function):void { }

	public function get ondragover():Function { return null; }
	public function set ondragover(value:Function):void { }

	public function get ondragstart():Function { return null; }
	public function set ondragstart(value:Function):void { }

	public function get ondrop():Function { return null; }
	public function set ondrop(value:Function):void { }

	public function get ondurationchange():Function { return null; }
	public function set ondurationchange(value:Function):void { }

	public function get onemptied():Function { return null; }
	public function set onemptied(value:Function):void { }

	public function get onended():Function { return null; }
	public function set onended(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>errorEvent</code>.
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	public function get onfocus():Function { return null; }
	public function set onfocus(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>hashchangeEvent</code>.
	*/
	public function get onhashchange():Function { return null; }
	public function set onhashchange(value:Function):void { }

	public function get oninput():Function { return null; }
	public function set oninput(value:Function):void { }

	public function get oninvalid():Function { return null; }
	public function set oninvalid(value:Function):void { }

	public function get onkeydown():Function { return null; }
	public function set onkeydown(value:Function):void { }

	public function get onkeypress():Function { return null; }
	public function set onkeypress(value:Function):void { }

	public function get onkeyup():Function { return null; }
	public function set onkeyup(value:Function):void { }

	public function get onload():Function { return null; }
	public function set onload(value:Function):void { }

	public function get onloadeddata():Function { return null; }
	public function set onloadeddata(value:Function):void { }

	public function get onloadedmetadata():Function { return null; }
	public function set onloadedmetadata(value:Function):void { }

	public function get onloadstart():Function { return null; }
	public function set onloadstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>messageEvent</code>.
	*/
	public function get onmessage():Function { return null; }
	public function set onmessage(value:Function):void { }

	public function get onmousedown():Function { return null; }
	public function set onmousedown(value:Function):void { }

	public function get onmousemove():Function { return null; }
	public function set onmousemove(value:Function):void { }

	public function get onmouseout():Function { return null; }
	public function set onmouseout(value:Function):void { }

	public function get onmouseover():Function { return null; }
	public function set onmouseover(value:Function):void { }

	public function get onmouseup():Function { return null; }
	public function set onmouseup(value:Function):void { }

	public function get onmousewheel():Function { return null; }
	public function set onmousewheel(value:Function):void { }

	public function get onoffline():Function { return null; }
	public function set onoffline(value:Function):void { }

	public function get ononline():Function { return null; }
	public function set ononline(value:Function):void { }

	public function get onpagehide():Function { return null; }
	public function set onpagehide(value:Function):void { }

	public function get onpageshow():Function { return null; }
	public function set onpageshow(value:Function):void { }

	public function get onpause():Function { return null; }
	public function set onpause(value:Function):void { }

	public function get onplay():Function { return null; }
	public function set onplay(value:Function):void { }

	public function get onplaying():Function { return null; }
	public function set onplaying(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>popstateEvent</code>.
	*/
	public function get onpopstate():Function { return null; }
	public function set onpopstate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>progressEvent</code>.
	*/
	public function get onprogress():Function { return null; }
	public function set onprogress(value:Function):void { }

	public function get onratechange():Function { return null; }
	public function set onratechange(value:Function):void { }

	public function get onresize():Function { return null; }
	public function set onresize(value:Function):void { }

	public function get onscroll():Function { return null; }
	public function set onscroll(value:Function):void { }

	public function get onseeked():Function { return null; }
	public function set onseeked(value:Function):void { }

	public function get onseeking():Function { return null; }
	public function set onseeking(value:Function):void { }

	public function get onselect():Function { return null; }
	public function set onselect(value:Function):void { }

	public function get onstalled():Function { return null; }
	public function set onstalled(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>storageEvent</code>.
	*/
	public function get onstorage():Function { return null; }
	public function set onstorage(value:Function):void { }

	public function get onsubmit():Function { return null; }
	public function set onsubmit(value:Function):void { }

	public function get onsuspend():Function { return null; }
	public function set onsuspend(value:Function):void { }

	public function get ontimeupdate():Function { return null; }
	public function set ontimeupdate(value:Function):void { }

	public function get onunload():Function { return null; }
	public function set onunload(value:Function):void { }

	public function get onvolumechange():Function { return null; }
	public function set onvolumechange(value:Function):void { }

	public function get onwaiting():Function { return null; }
	public function set onwaiting(value:Function):void { }

	public function get onreset():Function { return null; }
	public function set onreset(value:Function):void { }

	public function get onsearch():Function { return null; }
	public function set onsearch(value:Function):void { }

	public function get ontransitionend():Function { return null; }
	public function set ontransitionend(value:Function):void { }

	public function get onorientationchange():Function { return null; }
	public function set onorientationchange(value:Function):void { }

	public function get ontouchstart():Function { return null; }
	public function set ontouchstart(value:Function):void { }

	public function get ontouchmove():Function { return null; }
	public function set ontouchmove(value:Function):void { }

	public function get ontouchend():Function { return null; }
	public function set ontouchend(value:Function):void { }

	public function get ontouchcancel():Function { return null; }
	public function set ontouchcancel(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>devicemotionEvent</code>.
	*/
	public function get ondevicemotion():Function { return null; }
	public function set ondevicemotion(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>deviceorientationEvent</code>.
	*/
	public function get ondeviceorientation():Function { return null; }
	public function set ondeviceorientation(value:Function):void { }
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	public function dispatchEvent(evt:DomEvent):Boolean { return false;}
	public function captureEvents():void {}
	public function releaseEvents():void {}

	[JavascriptProperty(name="StyleSheet")]
	public function get StyleSheet_():StyleSheet { return null; }
	public function set StyleSheet_(value:StyleSheet):void { }

	[JavascriptProperty(name="CSSStyleSheet")]
	public function get CSSStyleSheet_():CSSStyleSheet { return null; }
	public function set CSSStyleSheet_(value:CSSStyleSheet):void { }

	[JavascriptProperty(name="CSSValue")]
	public function get CSSValue_():CSSValue { return null; }
	public function set CSSValue_(value:CSSValue):void { }

	[JavascriptProperty(name="CSSPrimitiveValue")]
	public function get CSSPrimitiveValue_():CSSPrimitiveValue { return null; }
	public function set CSSPrimitiveValue_(value:CSSPrimitiveValue):void { }

	public function get CSSValueList():Object { return null; }
	public function set CSSValueList(value:Object):void { }

	[JavascriptProperty(name="CSSRule")]
	public function get CSSRule_():CSSRule { return null; }
	public function set CSSRule_(value:CSSRule):void { }

	[JavascriptProperty(name="CSSCharsetRule")]
	public function get CSSCharsetRule_():CSSCharsetRule { return null; }
	public function set CSSCharsetRule_(value:CSSCharsetRule):void { }

	[JavascriptProperty(name="CSSFontFaceRule")]
	public function get CSSFontFaceRule_():CSSFontFaceRule { return null; }
	public function set CSSFontFaceRule_(value:CSSFontFaceRule):void { }

	[JavascriptProperty(name="CSSHostRule")]
	public function get CSSHostRule_():CSSHostRule { return null; }
	public function set CSSHostRule_(value:CSSHostRule):void { }

	[JavascriptProperty(name="CSSImportRule")]
	public function get CSSImportRule_():CSSImportRule { return null; }
	public function set CSSImportRule_(value:CSSImportRule):void { }

	[JavascriptProperty(name="CSSMediaRule")]
	public function get CSSMediaRule_():CSSMediaRule { return null; }
	public function set CSSMediaRule_(value:CSSMediaRule):void { }

	[JavascriptProperty(name="CSSPageRule")]
	public function get CSSPageRule_():CSSPageRule { return null; }
	public function set CSSPageRule_(value:CSSPageRule):void { }

	[JavascriptProperty(name="CSSStyleRule")]
	public function get CSSStyleRule_():CSSStyleRule { return null; }
	public function set CSSStyleRule_(value:CSSStyleRule):void { }

	public function get CSSStyleDeclaration():Object { return null; }
	public function set CSSStyleDeclaration(value:Object):void { }

	public function get MediaList():Object { return null; }
	public function set MediaList(value:Object):void { }

	[JavascriptProperty(name="Counter")]
	public function get Counter_():Counter { return null; }
	public function set Counter_(value:Counter):void { }

	public function get CSSRuleList():Object { return null; }
	public function set CSSRuleList(value:Object):void { }

	[JavascriptProperty(name="Rect")]
	public function get Rect_():Rect { return null; }
	public function set Rect_(value:Rect):void { }

	[JavascriptProperty(name="RGBColor")]
	public function get RGBColor_():RGBColor { return null; }
	public function set RGBColor_(value:RGBColor):void { }

	public function get StyleSheetList():Object { return null; }
	public function set StyleSheetList(value:Object):void { }

	public function get DOMException():Object { return null; }
	public function set DOMException(value:Object):void { }

	public function get DOMStringList():Object { return null; }
	public function set DOMStringList(value:Object):void { }

	[JavascriptProperty(name="DOMImplementation")]
	public function get DOMImplementation_():DOMImplementation { return null; }
	public function set DOMImplementation_(value:DOMImplementation):void { }

	[JavascriptProperty(name="DOMSettableTokenList")]
	public function get DOMSettableTokenList_():DOMSettableTokenList { return null; }
	public function set DOMSettableTokenList_(value:DOMSettableTokenList):void { }

	public function get DOMTokenList():Object { return null; }
	public function set DOMTokenList(value:Object):void { }

	[JavascriptProperty(name="DocumentFragment")]
	public function get DocumentFragment_():DocumentFragment { return null; }
	public function set DocumentFragment_(value:DocumentFragment):void { }

	[JavascriptProperty(name="Document")]
	public function get Document_():Document { return null; }
	public function set Document_(value:Document):void { }

	[JavascriptProperty(name="Node")]
	public function get Node_():Node { return null; }
	public function set Node_(value:Node):void { }

	public function get NodeList():Object { return null; }
	public function set NodeList(value:Object):void { }

	public function get PropertyNodeList():Object { return null; }
	public function set PropertyNodeList(value:Object):void { }

	public function get NamedNodeMap():Object { return null; }
	public function set NamedNodeMap(value:Object):void { }

	[JavascriptProperty(name="CharacterData")]
	public function get CharacterData_():CharacterData { return null; }
	public function set CharacterData_(value:CharacterData):void { }

	[JavascriptProperty(name="Attr")]
	public function get Attr_():Attr { return null; }
	public function set Attr_(value:Attr):void { }

	[JavascriptProperty(name="Element")]
	public function get Element_():Element { return null; }
	public function set Element_(value:Element):void { }

	[JavascriptProperty(name="Text")]
	public function get Text_():Text { return null; }
	public function set Text_(value:Text):void { }

	[JavascriptProperty(name="Comment")]
	public function get Comment_():Comment { return null; }
	public function set Comment_(value:Comment):void { }

	[JavascriptProperty(name="CDATASection")]
	public function get CDATASection_():CDATASection { return null; }
	public function set CDATASection_(value:CDATASection):void { }

	[JavascriptProperty(name="DocumentType")]
	public function get DocumentType_():DocumentType { return null; }
	public function set DocumentType_(value:DocumentType):void { }

	[JavascriptProperty(name="Notation")]
	public function get Notation_():Notation { return null; }
	public function set Notation_(value:Notation):void { }

	[JavascriptProperty(name="Entity")]
	public function get Entity_():Entity { return null; }
	public function set Entity_(value:Entity):void { }

	[JavascriptProperty(name="EntityReference")]
	public function get EntityReference_():EntityReference { return null; }
	public function set EntityReference_(value:EntityReference):void { }

	public function get Path():DOMPath { return null; }
	public function set Path(value:DOMPath):void { }

	[JavascriptProperty(name="ProcessingInstruction")]
	public function get ProcessingInstruction_():ProcessingInstruction { return null; }
	public function set ProcessingInstruction_(value:ProcessingInstruction):void { }

	[JavascriptProperty(name="HTMLContentElement")]
	public function get HTMLContentElement_():HTMLContentElement { return null; }
	public function set HTMLContentElement_(value:HTMLContentElement):void { }

	[JavascriptProperty(name="HTMLShadowElement")]
	public function get HTMLShadowElement_():HTMLShadowElement { return null; }
	public function set HTMLShadowElement_(value:HTMLShadowElement):void { }

	[JavascriptProperty(name="Selection")]
	public function get Selection_():Selection { return null; }
	public function set Selection_(value:Selection):void { }

	[JavascriptProperty(name="Window")]
	public function get Window__():Window { return null; }
	public function set Window__(value:Window):void { }

	[JavascriptProperty(name="HTMLDocument")]
	public function get HTMLDocument_():HTMLDocument { return null; }
	public function set HTMLDocument_(value:HTMLDocument):void { }

	[JavascriptProperty(name="HTMLElement")]
	public function get HTMLElement_():HTMLElement { return null; }
	public function set HTMLElement_(value:HTMLElement):void { }

	[JavascriptProperty(name="HTMLAnchorElement")]
	public function get HTMLAnchorElement_():HTMLAnchorElement { return null; }
	public function set HTMLAnchorElement_(value:HTMLAnchorElement):void { }

	[JavascriptProperty(name="HTMLAppletElement")]
	public function get HTMLAppletElement_():HTMLAppletElement { return null; }
	public function set HTMLAppletElement_(value:HTMLAppletElement):void { }

	[JavascriptProperty(name="HTMLAreaElement")]
	public function get HTMLAreaElement_():HTMLAreaElement { return null; }
	public function set HTMLAreaElement_(value:HTMLAreaElement):void { }

	[JavascriptProperty(name="HTMLBRElement")]
	public function get HTMLBRElement_():HTMLBRElement { return null; }
	public function set HTMLBRElement_(value:HTMLBRElement):void { }

	[JavascriptProperty(name="HTMLBaseElement")]
	public function get HTMLBaseElement_():HTMLBaseElement { return null; }
	public function set HTMLBaseElement_(value:HTMLBaseElement):void { }

	[JavascriptProperty(name="HTMLBaseFontElement")]
	public function get HTMLBaseFontElement_():HTMLBaseFontElement { return null; }
	public function set HTMLBaseFontElement_(value:HTMLBaseFontElement):void { }

	[JavascriptProperty(name="HTMLBodyElement")]
	public function get HTMLBodyElement_():HTMLBodyElement { return null; }
	public function set HTMLBodyElement_(value:HTMLBodyElement):void { }

	[JavascriptProperty(name="HTMLButtonElement")]
	public function get HTMLButtonElement_():HTMLButtonElement { return null; }
	public function set HTMLButtonElement_(value:HTMLButtonElement):void { }

	[JavascriptProperty(name="HTMLCanvasElement")]
	public function get HTMLCanvasElement_():HTMLCanvasElement { return null; }
	public function set HTMLCanvasElement_(value:HTMLCanvasElement):void { }

	[JavascriptProperty(name="HTMLDListElement")]
	public function get HTMLDListElement_():HTMLDListElement { return null; }
	public function set HTMLDListElement_(value:HTMLDListElement):void { }

	[JavascriptProperty(name="HTMLDataListElement")]
	public function get HTMLDataListElement_():HTMLDataListElement { return null; }
	public function set HTMLDataListElement_(value:HTMLDataListElement):void { }

	[JavascriptProperty(name="HTMLDialogElement")]
	public function get HTMLDialogElement_():HTMLDialogElement { return null; }
	public function set HTMLDialogElement_(value:HTMLDialogElement):void { }

	[JavascriptProperty(name="HTMLDirectoryElement")]
	public function get HTMLDirectoryElement_():HTMLDirectoryElement { return null; }
	public function set HTMLDirectoryElement_(value:HTMLDirectoryElement):void { }

	[JavascriptProperty(name="HTMLDivElement")]
	public function get HTMLDivElement_():HTMLDivElement { return null; }
	public function set HTMLDivElement_(value:HTMLDivElement):void { }

	[JavascriptProperty(name="HTMLEmbedElement")]
	public function get HTMLEmbedElement_():HTMLEmbedElement { return null; }
	public function set HTMLEmbedElement_(value:HTMLEmbedElement):void { }

	[JavascriptProperty(name="HTMLFieldSetElement")]
	public function get HTMLFieldSetElement_():HTMLFieldSetElement { return null; }
	public function set HTMLFieldSetElement_(value:HTMLFieldSetElement):void { }

	[JavascriptProperty(name="HTMLFontElement")]
	public function get HTMLFontElement_():HTMLFontElement { return null; }
	public function set HTMLFontElement_(value:HTMLFontElement):void { }

	[JavascriptProperty(name="HTMLFormElement")]
	public function get HTMLFormElement_():HTMLFormElement { return null; }
	public function set HTMLFormElement_(value:HTMLFormElement):void { }

	[JavascriptProperty(name="HTMLFrameElement")]
	public function get HTMLFrameElement_():HTMLFrameElement { return null; }
	public function set HTMLFrameElement_(value:HTMLFrameElement):void { }

	[JavascriptProperty(name="HTMLFrameSetElement")]
	public function get HTMLFrameSetElement_():HTMLFrameSetElement { return null; }
	public function set HTMLFrameSetElement_(value:HTMLFrameSetElement):void { }

	[JavascriptProperty(name="HTMLHRElement")]
	public function get HTMLHRElement_():HTMLHRElement { return null; }
	public function set HTMLHRElement_(value:HTMLHRElement):void { }

	[JavascriptProperty(name="HTMLHeadElement")]
	public function get HTMLHeadElement_():HTMLHeadElement { return null; }
	public function set HTMLHeadElement_(value:HTMLHeadElement):void { }

	[JavascriptProperty(name="HTMLHeadingElement")]
	public function get HTMLHeadingElement_():HTMLHeadingElement { return null; }
	public function set HTMLHeadingElement_(value:HTMLHeadingElement):void { }

	[JavascriptProperty(name="HTMLHtmlElement")]
	public function get HTMLHtmlElement_():HTMLHtmlElement { return null; }
	public function set HTMLHtmlElement_(value:HTMLHtmlElement):void { }

	[JavascriptProperty(name="HTMLIFrameElement")]
	public function get HTMLIFrameElement_():HTMLIFrameElement { return null; }
	public function set HTMLIFrameElement_(value:HTMLIFrameElement):void { }

	[JavascriptProperty(name="HTMLImageElement")]
	public function get HTMLImageElement_():HTMLImageElement { return null; }
	public function set HTMLImageElement_(value:HTMLImageElement):void { }

	[JavascriptProperty(name="HTMLInputElement")]
	public function get HTMLInputElement_():HTMLInputElement { return null; }
	public function set HTMLInputElement_(value:HTMLInputElement):void { }

	[JavascriptProperty(name="HTMLKeygenElement")]
	public function get HTMLKeygenElement_():HTMLKeygenElement { return null; }
	public function set HTMLKeygenElement_(value:HTMLKeygenElement):void { }

	[JavascriptProperty(name="HTMLLIElement")]
	public function get HTMLLIElement_():HTMLLIElement { return null; }
	public function set HTMLLIElement_(value:HTMLLIElement):void { }

	[JavascriptProperty(name="HTMLLabelElement")]
	public function get HTMLLabelElement_():HTMLLabelElement { return null; }
	public function set HTMLLabelElement_(value:HTMLLabelElement):void { }

	[JavascriptProperty(name="HTMLLegendElement")]
	public function get HTMLLegendElement_():HTMLLegendElement { return null; }
	public function set HTMLLegendElement_(value:HTMLLegendElement):void { }

	[JavascriptProperty(name="HTMLLinkElement")]
	public function get HTMLLinkElement_():HTMLLinkElement { return null; }
	public function set HTMLLinkElement_(value:HTMLLinkElement):void { }

	[JavascriptProperty(name="HTMLMapElement")]
	public function get HTMLMapElement_():HTMLMapElement { return null; }
	public function set HTMLMapElement_(value:HTMLMapElement):void { }

	[JavascriptProperty(name="HTMLMarqueeElement")]
	public function get HTMLMarqueeElement_():HTMLMarqueeElement { return null; }
	public function set HTMLMarqueeElement_(value:HTMLMarqueeElement):void { }

	[JavascriptProperty(name="HTMLMenuElement")]
	public function get HTMLMenuElement_():HTMLMenuElement { return null; }
	public function set HTMLMenuElement_(value:HTMLMenuElement):void { }

	[JavascriptProperty(name="HTMLMetaElement")]
	public function get HTMLMetaElement_():HTMLMetaElement { return null; }
	public function set HTMLMetaElement_(value:HTMLMetaElement):void { }

	[JavascriptProperty(name="HTMLMeterElement")]
	public function get HTMLMeterElement_():HTMLMeterElement { return null; }
	public function set HTMLMeterElement_(value:HTMLMeterElement):void { }

	[JavascriptProperty(name="HTMLModElement")]
	public function get HTMLModElement_():HTMLModElement { return null; }
	public function set HTMLModElement_(value:HTMLModElement):void { }

	[JavascriptProperty(name="HTMLOListElement")]
	public function get HTMLOListElement_():HTMLOListElement { return null; }
	public function set HTMLOListElement_(value:HTMLOListElement):void { }

	[JavascriptProperty(name="HTMLObjectElement")]
	public function get HTMLObjectElement_():HTMLObjectElement { return null; }
	public function set HTMLObjectElement_(value:HTMLObjectElement):void { }

	[JavascriptProperty(name="HTMLOptGroupElement")]
	public function get HTMLOptGroupElement_():HTMLOptGroupElement { return null; }
	public function set HTMLOptGroupElement_(value:HTMLOptGroupElement):void { }

	[JavascriptProperty(name="HTMLOptionElement")]
	public function get HTMLOptionElement_():HTMLOptionElement { return null; }
	public function set HTMLOptionElement_(value:HTMLOptionElement):void { }

	[JavascriptProperty(name="HTMLOutputElement")]
	public function get HTMLOutputElement_():HTMLOutputElement { return null; }
	public function set HTMLOutputElement_(value:HTMLOutputElement):void { }

	[JavascriptProperty(name="HTMLParagraphElement")]
	public function get HTMLParagraphElement_():HTMLParagraphElement { return null; }
	public function set HTMLParagraphElement_(value:HTMLParagraphElement):void { }

	[JavascriptProperty(name="HTMLParamElement")]
	public function get HTMLParamElement_():HTMLParamElement { return null; }
	public function set HTMLParamElement_(value:HTMLParamElement):void { }

	[JavascriptProperty(name="HTMLPreElement")]
	public function get HTMLPreElement_():HTMLPreElement { return null; }
	public function set HTMLPreElement_(value:HTMLPreElement):void { }

	[JavascriptProperty(name="HTMLProgressElement")]
	public function get HTMLProgressElement_():HTMLProgressElement { return null; }
	public function set HTMLProgressElement_(value:HTMLProgressElement):void { }

	[JavascriptProperty(name="HTMLQuoteElement")]
	public function get HTMLQuoteElement_():HTMLQuoteElement { return null; }
	public function set HTMLQuoteElement_(value:HTMLQuoteElement):void { }

	[JavascriptProperty(name="HTMLScriptElement")]
	public function get HTMLScriptElement_():HTMLScriptElement { return null; }
	public function set HTMLScriptElement_(value:HTMLScriptElement):void { }

	public function get HTMLSelectElement():Object { return null; }
	public function set HTMLSelectElement(value:Object):void { }

	[JavascriptProperty(name="HTMLSpanElement")]
	public function get HTMLSpanElement_():HTMLSpanElement { return null; }
	public function set HTMLSpanElement_(value:HTMLSpanElement):void { }

	[JavascriptProperty(name="HTMLStyleElement")]
	public function get HTMLStyleElement_():HTMLStyleElement { return null; }
	public function set HTMLStyleElement_(value:HTMLStyleElement):void { }

	[JavascriptProperty(name="HTMLTableCaptionElement")]
	public function get HTMLTableCaptionElement_():HTMLTableCaptionElement { return null; }
	public function set HTMLTableCaptionElement_(value:HTMLTableCaptionElement):void { }

	[JavascriptProperty(name="HTMLTableCellElement")]
	public function get HTMLTableCellElement_():HTMLTableCellElement { return null; }
	public function set HTMLTableCellElement_(value:HTMLTableCellElement):void { }

	[JavascriptProperty(name="HTMLTableColElement")]
	public function get HTMLTableColElement_():HTMLTableColElement { return null; }
	public function set HTMLTableColElement_(value:HTMLTableColElement):void { }

	[JavascriptProperty(name="HTMLTableElement")]
	public function get HTMLTableElement_():HTMLTableElement { return null; }
	public function set HTMLTableElement_(value:HTMLTableElement):void { }

	[JavascriptProperty(name="HTMLTableRowElement")]
	public function get HTMLTableRowElement_():HTMLTableRowElement { return null; }
	public function set HTMLTableRowElement_(value:HTMLTableRowElement):void { }

	[JavascriptProperty(name="HTMLTableSectionElement")]
	public function get HTMLTableSectionElement_():HTMLTableSectionElement { return null; }
	public function set HTMLTableSectionElement_(value:HTMLTableSectionElement):void { }

	[JavascriptProperty(name="HTMLTemplateElement")]
	public function get HTMLTemplateElement_():HTMLTemplateElement { return null; }
	public function set HTMLTemplateElement_(value:HTMLTemplateElement):void { }

	[JavascriptProperty(name="HTMLTextAreaElement")]
	public function get HTMLTextAreaElement_():HTMLTextAreaElement { return null; }
	public function set HTMLTextAreaElement_(value:HTMLTextAreaElement):void { }

	[JavascriptProperty(name="HTMLTitleElement")]
	public function get HTMLTitleElement_():HTMLTitleElement { return null; }
	public function set HTMLTitleElement_(value:HTMLTitleElement):void { }

	[JavascriptProperty(name="HTMLUListElement")]
	public function get HTMLUListElement_():HTMLUListElement { return null; }
	public function set HTMLUListElement_(value:HTMLUListElement):void { }

	public function get HTMLCollection():Object { return null; }
	public function set HTMLCollection(value:Object):void { }

	public function get HTMLAllCollection():Object { return null; }
	public function set HTMLAllCollection(value:Object):void { }

	public function get HTMLFormControlsCollection():Object { return null; }
	public function set HTMLFormControlsCollection(value:Object):void { }

	[JavascriptProperty(name="HTMLOptionsCollection")]
	public function get HTMLOptionsCollection_():HTMLOptionsCollection { return null; }
	public function set HTMLOptionsCollection_(value:HTMLOptionsCollection):void { }

	public function get HTMLPropertiesCollection():Object { return null; }
	public function set HTMLPropertiesCollection(value:Object):void { }

	[JavascriptProperty(name="HTMLUnknownElement")]
	public function get HTMLUnknownElement_():HTMLUnknownElement { return null; }
	public function set HTMLUnknownElement_(value:HTMLUnknownElement):void { }

	public function get Image():HTMLImageElement { return null; }
	public function set Image(value:HTMLImageElement):void { }

	public function get Option():HTMLOptionElement { return null; }
	public function set Option(value:HTMLOptionElement):void { }

	[JavascriptProperty(name="MediaKeyError")]
	public function get MediaKeyError_():MediaKeyError { return null; }
	public function set MediaKeyError_(value:MediaKeyError):void { }

	[JavascriptProperty(name="MediaKeyEvent")]
	public function get MediaKeyEvent_():MediaKeyEvent { return null; }
	public function set MediaKeyEvent_(value:MediaKeyEvent):void { }

	[JavascriptProperty(name="HTMLTrackElement")]
	public function get HTMLTrackElement_():HTMLTrackElement { return null; }
	public function set HTMLTrackElement_(value:HTMLTrackElement):void { }

	[JavascriptProperty(name="TextTrack")]
	public function get TextTrack_():TextTrack { return null; }
	public function set TextTrack_(value:TextTrack):void { }

	[JavascriptProperty(name="TextTrackCue")]
	public function get TextTrackCue_():TextTrackCue { return null; }
	public function set TextTrackCue_(value:TextTrackCue):void { }

	public function get TextTrackCueList():Object { return null; }
	public function set TextTrackCueList(value:Object):void { }

	public function get TextTrackList():Object { return null; }
	public function set TextTrackList(value:Object):void { }

	[JavascriptProperty(name="TrackEvent")]
	public function get TrackEvent_():TrackEvent { return null; }
	public function set TrackEvent_(value:TrackEvent):void { }

	public function get Audio():HTMLAudioElement { return null; }
	public function set Audio(value:HTMLAudioElement):void { }

	[JavascriptProperty(name="HTMLAudioElement")]
	public function get HTMLAudioElement_():HTMLAudioElement { return null; }
	public function set HTMLAudioElement_(value:HTMLAudioElement):void { }

	[JavascriptProperty(name="HTMLMediaElement")]
	public function get HTMLMediaElement_():HTMLMediaElement { return null; }
	public function set HTMLMediaElement_(value:HTMLMediaElement):void { }

	[JavascriptProperty(name="HTMLVideoElement")]
	public function get HTMLVideoElement_():HTMLVideoElement { return null; }
	public function set HTMLVideoElement_(value:HTMLVideoElement):void { }

	[JavascriptProperty(name="MediaError")]
	public function get MediaError_():MediaError { return null; }
	public function set MediaError_(value:MediaError):void { }

	[JavascriptProperty(name="TimeRanges")]
	public function get TimeRanges_():TimeRanges { return null; }
	public function set TimeRanges_(value:TimeRanges):void { }

	[JavascriptProperty(name="HTMLSourceElement")]
	public function get HTMLSourceElement_():HTMLSourceElement { return null; }
	public function set HTMLSourceElement_(value:HTMLSourceElement):void { }

	[JavascriptProperty(name="MediaController")]
	public function get MediaController_():MediaController { return null; }
	public function set MediaController_(value:MediaController):void { }

	[JavascriptProperty(name="HTMLIntentElement")]
	public function get HTMLIntentElement_():HTMLIntentElement { return null; }
	public function set HTMLIntentElement_(value:HTMLIntentElement):void { }

	[JavascriptProperty(name="CanvasPattern")]
	public function get CanvasPattern_():CanvasPattern { return null; }
	public function set CanvasPattern_(value:CanvasPattern):void { }

	[JavascriptProperty(name="CanvasGradient")]
	public function get CanvasGradient_():CanvasGradient { return null; }
	public function set CanvasGradient_(value:CanvasGradient):void { }

	[JavascriptProperty(name="CanvasRenderingContext2D")]
	public function get CanvasRenderingContext2D_():CanvasRenderingContext2D { return null; }
	public function set CanvasRenderingContext2D_(value:CanvasRenderingContext2D):void { }

	[JavascriptProperty(name="ImageData")]
	public function get ImageData_():ImageData { return null; }
	public function set ImageData_(value:ImageData):void { }

	[JavascriptProperty(name="TextMetrics")]
	public function get TextMetrics_():TextMetrics { return null; }
	public function set TextMetrics_(value:TextMetrics):void { }

	[JavascriptProperty(name="WebGLActiveInfo")]
	public function get WebGLActiveInfo_():WebGLActiveInfo { return null; }
	public function set WebGLActiveInfo_(value:WebGLActiveInfo):void { }

	[JavascriptProperty(name="WebGLBuffer")]
	public function get WebGLBuffer_():WebGLBuffer { return null; }
	public function set WebGLBuffer_(value:WebGLBuffer):void { }

	[JavascriptProperty(name="WebGLFramebuffer")]
	public function get WebGLFramebuffer_():WebGLFramebuffer { return null; }
	public function set WebGLFramebuffer_(value:WebGLFramebuffer):void { }

	[JavascriptProperty(name="WebGLProgram")]
	public function get WebGLProgram_():WebGLProgram { return null; }
	public function set WebGLProgram_(value:WebGLProgram):void { }

	[JavascriptProperty(name="WebGLRenderbuffer")]
	public function get WebGLRenderbuffer_():WebGLRenderbuffer { return null; }
	public function set WebGLRenderbuffer_(value:WebGLRenderbuffer):void { }

	[JavascriptProperty(name="WebGLRenderingContext")]
	public function get WebGLRenderingContext_():WebGLRenderingContext { return null; }
	public function set WebGLRenderingContext_(value:WebGLRenderingContext):void { }

	[JavascriptProperty(name="WebGLShader")]
	public function get WebGLShader_():WebGLShader { return null; }
	public function set WebGLShader_(value:WebGLShader):void { }

	[JavascriptProperty(name="WebGLShaderPrecisionFormat")]
	public function get WebGLShaderPrecisionFormat_():WebGLShaderPrecisionFormat { return null; }
	public function set WebGLShaderPrecisionFormat_(value:WebGLShaderPrecisionFormat):void { }

	[JavascriptProperty(name="WebGLTexture")]
	public function get WebGLTexture_():WebGLTexture { return null; }
	public function set WebGLTexture_(value:WebGLTexture):void { }

	[JavascriptProperty(name="WebGLUniformLocation")]
	public function get WebGLUniformLocation_():WebGLUniformLocation { return null; }
	public function set WebGLUniformLocation_(value:WebGLUniformLocation):void { }

	[JavascriptProperty(name="DOMStringMap")]
	public function get DOMStringMap_():DOMStringMap { return null; }
	public function set DOMStringMap_(value:DOMStringMap):void { }

	[JavascriptProperty(name="ArrayBuffer")]
	public function get ArrayBuffer_():ArrayBuffer { return null; }
	public function set ArrayBuffer_(value:ArrayBuffer):void { }

	[JavascriptProperty(name="ArrayBufferView")]
	public function get ArrayBufferView_():ArrayBufferView { return null; }
	public function set ArrayBufferView_(value:ArrayBufferView):void { }

	[JavascriptProperty(name="Int8Array")]
	public function get Int8Array_():Vector.<int> { return null; }
	public function set Int8Array_(value:Vector.<int>):void { }

	[JavascriptProperty(name="Uint8Array")]
	public function get Uint8Array_():Vector.<uint> { return null; }
	public function set Uint8Array_(value:Vector.<uint>):void { }

	[JavascriptProperty(name="Uint8ClampedArray")]
	public function get Uint8ClampedArray_():Vector.<uint> { return null; }
	public function set Uint8ClampedArray_(value:Vector.<uint>):void { }

	[JavascriptProperty(name="Int16Array")]
	public function get Int16Array_():Vector.<int> { return null; }
	public function set Int16Array_(value:Vector.<int>):void { }

	[JavascriptProperty(name="Uint16Array")]
	public function get Uint16Array_():Vector.<uint> { return null; }
	public function set Uint16Array_(value:Vector.<uint>):void { }

	[JavascriptProperty(name="Int32Array")]
	public function get Int32Array_():Vector.<int> { return null; }
	public function set Int32Array_(value:Vector.<int>):void { }

	[JavascriptProperty(name="Uint32Array")]
	public function get Uint32Array_():Vector.<uint> { return null; }
	public function set Uint32Array_(value:Vector.<uint>):void { }

	[JavascriptProperty(name="Float32Array")]
	public function get Float32Array_():Vector.<Number> { return null; }
	public function set Float32Array_(value:Vector.<Number>):void { }

	[JavascriptProperty(name="Float64Array")]
	public function get Float64Array_():Vector.<Number> { return null; }
	public function set Float64Array_(value:Vector.<Number>):void { }

	[JavascriptProperty(name="DataView")]
	public function get DataView_():DataView { return null; }
	public function set DataView_(value:DataView):void { }

	public function get Event():DomEvent { return null; }
	public function set Event(value:DomEvent):void { }

	[JavascriptProperty(name="BeforeLoadEvent")]
	public function get BeforeLoadEvent_():BeforeLoadEvent { return null; }
	public function set BeforeLoadEvent_(value:BeforeLoadEvent):void { }

	[JavascriptProperty(name="CompositionEvent")]
	public function get CompositionEvent_():CompositionEvent { return null; }
	public function set CompositionEvent_(value:CompositionEvent):void { }

	[JavascriptProperty(name="CustomEvent")]
	public function get CustomEvent_():CustomEvent { return null; }
	public function set CustomEvent_(value:CustomEvent):void { }

	[JavascriptProperty(name="ErrorEvent")]
	public function get ErrorEvent_():ErrorEvent { return null; }
	public function set ErrorEvent_(value:ErrorEvent):void { }

	[JavascriptProperty(name="HashChangeEvent")]
	public function get HashChangeEvent_():HashChangeEvent { return null; }
	public function set HashChangeEvent_(value:HashChangeEvent):void { }

	[JavascriptProperty(name="KeyboardEvent")]
	public function get KeyboardEvent_():KeyboardEvent { return null; }
	public function set KeyboardEvent_(value:KeyboardEvent):void { }

	[JavascriptProperty(name="MessageEvent")]
	public function get MessageEvent_():MessageEvent { return null; }
	public function set MessageEvent_(value:MessageEvent):void { }

	[JavascriptProperty(name="MouseEvent")]
	public function get MouseEvent_():MouseEvent { return null; }
	public function set MouseEvent_(value:MouseEvent):void { }

	[JavascriptProperty(name="MutationEvent")]
	public function get MutationEvent_():MutationEvent { return null; }
	public function set MutationEvent_(value:MutationEvent):void { }

	[JavascriptProperty(name="OverflowEvent")]
	public function get OverflowEvent_():OverflowEvent { return null; }
	public function set OverflowEvent_(value:OverflowEvent):void { }

	[JavascriptProperty(name="PopStateEvent")]
	public function get PopStateEvent_():PopStateEvent { return null; }
	public function set PopStateEvent_(value:PopStateEvent):void { }

	[JavascriptProperty(name="PageTransitionEvent")]
	public function get PageTransitionEvent_():PageTransitionEvent { return null; }
	public function set PageTransitionEvent_(value:PageTransitionEvent):void { }

	[JavascriptProperty(name="ProgressEvent")]
	public function get ProgressEvent_():ProgressEvent { return null; }
	public function set ProgressEvent_(value:ProgressEvent):void { }

	[JavascriptProperty(name="TextEvent")]
	public function get TextEvent_():TextEvent { return null; }
	public function set TextEvent_(value:TextEvent):void { }

	[JavascriptProperty(name="TransitionEvent")]
	public function get TransitionEvent_():TransitionEvent { return null; }
	public function set TransitionEvent_(value:TransitionEvent):void { }

	[JavascriptProperty(name="UIEvent")]
	public function get UIEvent_():UIEvent { return null; }
	public function set UIEvent_(value:UIEvent):void { }

	[JavascriptProperty(name="WheelEvent")]
	public function get WheelEvent_():WheelEvent { return null; }
	public function set WheelEvent_(value:WheelEvent):void { }

	[JavascriptProperty(name="XMLHttpRequestProgressEvent")]
	public function get XMLHttpRequestProgressEvent_():XMLHttpRequestProgressEvent { return null; }
	public function set XMLHttpRequestProgressEvent_(value:XMLHttpRequestProgressEvent):void { }

	[JavascriptProperty(name="DeviceMotionEvent")]
	public function get DeviceMotionEvent_():DeviceMotionEvent { return null; }
	public function set DeviceMotionEvent_(value:DeviceMotionEvent):void { }

	[JavascriptProperty(name="DeviceOrientationEvent")]
	public function get DeviceOrientationEvent_():DeviceOrientationEvent { return null; }
	public function set DeviceOrientationEvent_(value:DeviceOrientationEvent):void { }

	[JavascriptProperty(name="Touch")]
	public function get Touch_():Touch { return null; }
	public function set Touch_(value:Touch):void { }

	[JavascriptProperty(name="TouchEvent")]
	public function get TouchEvent_():TouchEvent { return null; }
	public function set TouchEvent_(value:TouchEvent):void { }

	public function get TouchList():Object { return null; }
	public function set TouchList(value:Object):void { }

	[JavascriptProperty(name="StorageEvent")]
	public function get StorageEvent_():StorageEvent { return null; }
	public function set StorageEvent_(value:StorageEvent):void { }

	[JavascriptProperty(name="SpeechInputEvent")]
	public function get SpeechInputEvent_():SpeechInputEvent { return null; }
	public function set SpeechInputEvent_(value:SpeechInputEvent):void { }

	[JavascriptProperty(name="WebGLContextEvent")]
	public function get WebGLContextEvent_():WebGLContextEvent { return null; }
	public function set WebGLContextEvent_(value:WebGLContextEvent):void { }

	[JavascriptProperty(name="DeviceProximityEvent")]
	public function get DeviceProximityEvent_():DeviceProximityEvent { return null; }
	public function set DeviceProximityEvent_(value:DeviceProximityEvent):void { }

	[JavascriptProperty(name="AutocompleteErrorEvent")]
	public function get AutocompleteErrorEvent_():AutocompleteErrorEvent { return null; }
	public function set AutocompleteErrorEvent_(value:AutocompleteErrorEvent):void { }

	public function get EventException():Object { return null; }
	public function set EventException(value:Object):void { }

	[JavascriptProperty(name="Clipboard")]
	public function get Clipboard_():Clipboard { return null; }
	public function set Clipboard_(value:Clipboard):void { }

	[JavascriptProperty(name="Worker")]
	public function get Worker_():Worker { return null; }
	public function set Worker_(value:Worker):void { }

	[JavascriptProperty(name="SharedWorker")]
	public function get SharedWorker_():SharedWorker { return null; }
	public function set SharedWorker_(value:SharedWorker):void { }

	[JavascriptProperty(name="File")]
	public function get File_():File { return null; }
	public function set File_(value:File):void { }

	public function get FileList():Object { return null; }
	public function set FileList(value:Object):void { }

	[JavascriptProperty(name="Blob")]
	public function get Blob_():Blob { return null; }
	public function set Blob_(value:Blob):void { }

	[JavascriptProperty(name="NodeFilter")]
	public function get NodeFilter_():NodeFilter { return null; }
	public function set NodeFilter_(value:NodeFilter):void { }

	[JavascriptProperty(name="Range")]
	public function get Range_():Range { return null; }
	public function set Range_(value:Range):void { }

	public function get RangeException():Object { return null; }
	public function set RangeException(value:Object):void { }

	[JavascriptProperty(name="EventSource")]
	public function get EventSource_():EventSource { return null; }
	public function set EventSource_(value:EventSource):void { }

	public function get XMLDocument():Document { return null; }
	public function set XMLDocument(value:Document):void { }

	[JavascriptProperty(name="DOMParser")]
	public function get DOMParser_():DOMParser { return null; }
	public function set DOMParser_(value:DOMParser):void { }

	[JavascriptProperty(name="XMLSerializer")]
	public function get XMLSerializer_():XMLSerializer { return null; }
	public function set XMLSerializer_(value:XMLSerializer):void { }

	[JavascriptProperty(name="XMLHttpRequest")]
	public function get XMLHttpRequest_():XMLHttpRequest { return null; }
	public function set XMLHttpRequest_(value:XMLHttpRequest):void { }

	[JavascriptProperty(name="XMLHttpRequestUpload")]
	public function get XMLHttpRequestUpload_():XMLHttpRequestUpload { return null; }
	public function set XMLHttpRequestUpload_(value:XMLHttpRequestUpload):void { }

	public function get XMLHttpRequestException():Object { return null; }
	public function set XMLHttpRequestException(value:Object):void { }

	[JavascriptProperty(name="XSLTProcessor")]
	public function get XSLTProcessor_():XSLTProcessor { return null; }
	public function set XSLTProcessor_(value:XSLTProcessor):void { }

	[JavascriptProperty(name="MessagePort")]
	public function get MessagePort_():MessagePort { return null; }
	public function set MessagePort_(value:MessagePort):void { }

	[JavascriptProperty(name="MessageChannel")]
	public function get MessageChannel_():MessageChannel { return null; }
	public function set MessageChannel_(value:MessageChannel):void { }

	public function get Plugin():Object { return null; }
	public function set Plugin(value:Object):void { }

	public function get PluginArray():Object { return null; }
	public function set PluginArray(value:Object):void { }

	[JavascriptProperty(name="MimeType")]
	public function get MimeType_():MimeType { return null; }
	public function set MimeType_(value:MimeType):void { }

	public function get MimeTypeArray():Object { return null; }
	public function set MimeTypeArray(value:Object):void { }

	[JavascriptProperty(name="ClientRect")]
	public function get ClientRect_():ClientRect { return null; }
	public function set ClientRect_(value:ClientRect):void { }

	public function get ClientRectList():Object { return null; }
	public function set ClientRectList(value:Object):void { }

	[JavascriptProperty(name="Storage")]
	public function get Storage_():Storage { return null; }
	public function set Storage_(value:Storage):void { }

	[JavascriptProperty(name="XPathEvaluator")]
	public function get XPathEvaluator_():XPathEvaluator { return null; }
	public function set XPathEvaluator_(value:XPathEvaluator):void { }

	[JavascriptProperty(name="XPathResult")]
	public function get XPathResult_():XPathResult { return null; }
	public function set XPathResult_(value:XPathResult):void { }

	public function get XPathException():Object { return null; }
	public function set XPathException(value:Object):void { }

	[JavascriptProperty(name="SVGZoomEvent")]
	public function get SVGZoomEvent_():SVGZoomEvent { return null; }
	public function set SVGZoomEvent_(value:SVGZoomEvent):void { }

	[JavascriptProperty(name="SVGAElement")]
	public function get SVGAElement_():SVGAElement { return null; }
	public function set SVGAElement_(value:SVGAElement):void { }

	[JavascriptProperty(name="SVGAngle")]
	public function get SVGAngle_():SVGAngle { return null; }
	public function set SVGAngle_(value:SVGAngle):void { }

	[JavascriptProperty(name="SVGAnimatedAngle")]
	public function get SVGAnimatedAngle_():SVGAnimatedAngle { return null; }
	public function set SVGAnimatedAngle_(value:SVGAnimatedAngle):void { }

	[JavascriptProperty(name="SVGAnimatedBoolean")]
	public function get SVGAnimatedBoolean_():SVGAnimatedBoolean { return null; }
	public function set SVGAnimatedBoolean_(value:SVGAnimatedBoolean):void { }

	[JavascriptProperty(name="SVGAnimatedEnumeration")]
	public function get SVGAnimatedEnumeration_():SVGAnimatedEnumeration { return null; }
	public function set SVGAnimatedEnumeration_(value:SVGAnimatedEnumeration):void { }

	[JavascriptProperty(name="SVGAnimatedInteger")]
	public function get SVGAnimatedInteger_():SVGAnimatedInteger { return null; }
	public function set SVGAnimatedInteger_(value:SVGAnimatedInteger):void { }

	[JavascriptProperty(name="SVGAnimatedLength")]
	public function get SVGAnimatedLength_():SVGAnimatedLength { return null; }
	public function set SVGAnimatedLength_(value:SVGAnimatedLength):void { }

	[JavascriptProperty(name="SVGAnimatedLengthList")]
	public function get SVGAnimatedLengthList_():SVGAnimatedLengthList { return null; }
	public function set SVGAnimatedLengthList_(value:SVGAnimatedLengthList):void { }

	[JavascriptProperty(name="SVGAnimatedNumber")]
	public function get SVGAnimatedNumber_():SVGAnimatedNumber { return null; }
	public function set SVGAnimatedNumber_(value:SVGAnimatedNumber):void { }

	[JavascriptProperty(name="SVGAnimatedNumberList")]
	public function get SVGAnimatedNumberList_():SVGAnimatedNumberList { return null; }
	public function set SVGAnimatedNumberList_(value:SVGAnimatedNumberList):void { }

	[JavascriptProperty(name="SVGAnimatedPreserveAspectRatio")]
	public function get SVGAnimatedPreserveAspectRatio_():SVGAnimatedPreserveAspectRatio { return null; }
	public function set SVGAnimatedPreserveAspectRatio_(value:SVGAnimatedPreserveAspectRatio):void { }

	[JavascriptProperty(name="SVGAnimatedRect")]
	public function get SVGAnimatedRect_():SVGAnimatedRect { return null; }
	public function set SVGAnimatedRect_(value:SVGAnimatedRect):void { }

	[JavascriptProperty(name="SVGAnimatedString")]
	public function get SVGAnimatedString_():SVGAnimatedString { return null; }
	public function set SVGAnimatedString_(value:SVGAnimatedString):void { }

	[JavascriptProperty(name="SVGAnimatedTransformList")]
	public function get SVGAnimatedTransformList_():SVGAnimatedTransformList { return null; }
	public function set SVGAnimatedTransformList_(value:SVGAnimatedTransformList):void { }

	[JavascriptProperty(name="SVGCircleElement")]
	public function get SVGCircleElement_():SVGCircleElement { return null; }
	public function set SVGCircleElement_(value:SVGCircleElement):void { }

	[JavascriptProperty(name="SVGClipPathElement")]
	public function get SVGClipPathElement_():SVGClipPathElement { return null; }
	public function set SVGClipPathElement_(value:SVGClipPathElement):void { }

	[JavascriptProperty(name="SVGColor")]
	public function get SVGColor_():SVGColor { return null; }
	public function set SVGColor_(value:SVGColor):void { }

	[JavascriptProperty(name="SVGCursorElement")]
	public function get SVGCursorElement_():SVGCursorElement { return null; }
	public function set SVGCursorElement_(value:SVGCursorElement):void { }

	[JavascriptProperty(name="SVGDefsElement")]
	public function get SVGDefsElement_():SVGDefsElement { return null; }
	public function set SVGDefsElement_(value:SVGDefsElement):void { }

	[JavascriptProperty(name="SVGDescElement")]
	public function get SVGDescElement_():SVGDescElement { return null; }
	public function set SVGDescElement_(value:SVGDescElement):void { }

	[JavascriptProperty(name="SVGDocument")]
	public function get SVGDocument_():SVGDocument { return null; }
	public function set SVGDocument_(value:SVGDocument):void { }

	[JavascriptProperty(name="SVGElement")]
	public function get SVGElement_():SVGElement { return null; }
	public function set SVGElement_(value:SVGElement):void { }

	[JavascriptProperty(name="SVGElementInstance")]
	public function get SVGElementInstance_():SVGElementInstance { return null; }
	public function set SVGElementInstance_(value:SVGElementInstance):void { }

	[JavascriptProperty(name="SVGElementInstanceList")]
	public function get SVGElementInstanceList_():SVGElementInstanceList { return null; }
	public function set SVGElementInstanceList_(value:SVGElementInstanceList):void { }

	[JavascriptProperty(name="SVGEllipseElement")]
	public function get SVGEllipseElement_():SVGEllipseElement { return null; }
	public function set SVGEllipseElement_(value:SVGEllipseElement):void { }

	[JavascriptProperty(name="SVGForeignObjectElement")]
	public function get SVGForeignObjectElement_():SVGForeignObjectElement { return null; }
	public function set SVGForeignObjectElement_(value:SVGForeignObjectElement):void { }

	public function get SVGException():Object { return null; }
	public function set SVGException(value:Object):void { }

	[JavascriptProperty(name="SVGGElement")]
	public function get SVGGElement_():SVGGElement { return null; }
	public function set SVGGElement_(value:SVGGElement):void { }

	[JavascriptProperty(name="SVGGradientElement")]
	public function get SVGGradientElement_():SVGGradientElement { return null; }
	public function set SVGGradientElement_(value:SVGGradientElement):void { }

	[JavascriptProperty(name="SVGImageElement")]
	public function get SVGImageElement_():SVGImageElement { return null; }
	public function set SVGImageElement_(value:SVGImageElement):void { }

	[JavascriptProperty(name="SVGLength")]
	public function get SVGLength_():SVGLength { return null; }
	public function set SVGLength_(value:SVGLength):void { }

	[JavascriptProperty(name="SVGLengthList")]
	public function get SVGLengthList_():SVGLengthList { return null; }
	public function set SVGLengthList_(value:SVGLengthList):void { }

	[JavascriptProperty(name="SVGLinearGradientElement")]
	public function get SVGLinearGradientElement_():SVGLinearGradientElement { return null; }
	public function set SVGLinearGradientElement_(value:SVGLinearGradientElement):void { }

	[JavascriptProperty(name="SVGLineElement")]
	public function get SVGLineElement_():SVGLineElement { return null; }
	public function set SVGLineElement_(value:SVGLineElement):void { }

	[JavascriptProperty(name="SVGMarkerElement")]
	public function get SVGMarkerElement_():SVGMarkerElement { return null; }
	public function set SVGMarkerElement_(value:SVGMarkerElement):void { }

	[JavascriptProperty(name="SVGMaskElement")]
	public function get SVGMaskElement_():SVGMaskElement { return null; }
	public function set SVGMaskElement_(value:SVGMaskElement):void { }

	[JavascriptProperty(name="SVGMatrix")]
	public function get SVGMatrix_():SVGMatrix { return null; }
	public function set SVGMatrix_(value:SVGMatrix):void { }

	[JavascriptProperty(name="SVGMetadataElement")]
	public function get SVGMetadataElement_():SVGMetadataElement { return null; }
	public function set SVGMetadataElement_(value:SVGMetadataElement):void { }

	[JavascriptProperty(name="SVGNumber")]
	public function get SVGNumber_():SVGNumber { return null; }
	public function set SVGNumber_(value:SVGNumber):void { }

	[JavascriptProperty(name="SVGNumberList")]
	public function get SVGNumberList_():SVGNumberList { return null; }
	public function set SVGNumberList_(value:SVGNumberList):void { }

	[JavascriptProperty(name="SVGPaint")]
	public function get SVGPaint_():SVGPaint { return null; }
	public function set SVGPaint_(value:SVGPaint):void { }

	[JavascriptProperty(name="SVGPathElement")]
	public function get SVGPathElement_():SVGPathElement { return null; }
	public function set SVGPathElement_(value:SVGPathElement):void { }

	[JavascriptProperty(name="SVGPathSeg")]
	public function get SVGPathSeg_():SVGPathSeg { return null; }
	public function set SVGPathSeg_(value:SVGPathSeg):void { }

	[JavascriptProperty(name="SVGPathSegArcAbs")]
	public function get SVGPathSegArcAbs_():SVGPathSegArcAbs { return null; }
	public function set SVGPathSegArcAbs_(value:SVGPathSegArcAbs):void { }

	[JavascriptProperty(name="SVGPathSegArcRel")]
	public function get SVGPathSegArcRel_():SVGPathSegArcRel { return null; }
	public function set SVGPathSegArcRel_(value:SVGPathSegArcRel):void { }

	[JavascriptProperty(name="SVGPathSegClosePath")]
	public function get SVGPathSegClosePath_():SVGPathSegClosePath { return null; }
	public function set SVGPathSegClosePath_(value:SVGPathSegClosePath):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicAbs")]
	public function get SVGPathSegCurvetoCubicAbs_():SVGPathSegCurvetoCubicAbs { return null; }
	public function set SVGPathSegCurvetoCubicAbs_(value:SVGPathSegCurvetoCubicAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicRel")]
	public function get SVGPathSegCurvetoCubicRel_():SVGPathSegCurvetoCubicRel { return null; }
	public function set SVGPathSegCurvetoCubicRel_(value:SVGPathSegCurvetoCubicRel):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicSmoothAbs")]
	public function get SVGPathSegCurvetoCubicSmoothAbs_():SVGPathSegCurvetoCubicSmoothAbs { return null; }
	public function set SVGPathSegCurvetoCubicSmoothAbs_(value:SVGPathSegCurvetoCubicSmoothAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicSmoothRel")]
	public function get SVGPathSegCurvetoCubicSmoothRel_():SVGPathSegCurvetoCubicSmoothRel { return null; }
	public function set SVGPathSegCurvetoCubicSmoothRel_(value:SVGPathSegCurvetoCubicSmoothRel):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticAbs")]
	public function get SVGPathSegCurvetoQuadraticAbs_():SVGPathSegCurvetoQuadraticAbs { return null; }
	public function set SVGPathSegCurvetoQuadraticAbs_(value:SVGPathSegCurvetoQuadraticAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticRel")]
	public function get SVGPathSegCurvetoQuadraticRel_():SVGPathSegCurvetoQuadraticRel { return null; }
	public function set SVGPathSegCurvetoQuadraticRel_(value:SVGPathSegCurvetoQuadraticRel):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticSmoothAbs")]
	public function get SVGPathSegCurvetoQuadraticSmoothAbs_():SVGPathSegCurvetoQuadraticSmoothAbs { return null; }
	public function set SVGPathSegCurvetoQuadraticSmoothAbs_(value:SVGPathSegCurvetoQuadraticSmoothAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticSmoothRel")]
	public function get SVGPathSegCurvetoQuadraticSmoothRel_():SVGPathSegCurvetoQuadraticSmoothRel { return null; }
	public function set SVGPathSegCurvetoQuadraticSmoothRel_(value:SVGPathSegCurvetoQuadraticSmoothRel):void { }

	[JavascriptProperty(name="SVGPathSegLinetoAbs")]
	public function get SVGPathSegLinetoAbs_():SVGPathSegLinetoAbs { return null; }
	public function set SVGPathSegLinetoAbs_(value:SVGPathSegLinetoAbs):void { }

	[JavascriptProperty(name="SVGPathSegLinetoHorizontalAbs")]
	public function get SVGPathSegLinetoHorizontalAbs_():SVGPathSegLinetoHorizontalAbs { return null; }
	public function set SVGPathSegLinetoHorizontalAbs_(value:SVGPathSegLinetoHorizontalAbs):void { }

	[JavascriptProperty(name="SVGPathSegLinetoHorizontalRel")]
	public function get SVGPathSegLinetoHorizontalRel_():SVGPathSegLinetoHorizontalRel { return null; }
	public function set SVGPathSegLinetoHorizontalRel_(value:SVGPathSegLinetoHorizontalRel):void { }

	[JavascriptProperty(name="SVGPathSegLinetoRel")]
	public function get SVGPathSegLinetoRel_():SVGPathSegLinetoRel { return null; }
	public function set SVGPathSegLinetoRel_(value:SVGPathSegLinetoRel):void { }

	[JavascriptProperty(name="SVGPathSegLinetoVerticalAbs")]
	public function get SVGPathSegLinetoVerticalAbs_():SVGPathSegLinetoVerticalAbs { return null; }
	public function set SVGPathSegLinetoVerticalAbs_(value:SVGPathSegLinetoVerticalAbs):void { }

	[JavascriptProperty(name="SVGPathSegLinetoVerticalRel")]
	public function get SVGPathSegLinetoVerticalRel_():SVGPathSegLinetoVerticalRel { return null; }
	public function set SVGPathSegLinetoVerticalRel_(value:SVGPathSegLinetoVerticalRel):void { }

	[JavascriptProperty(name="SVGPathSegList")]
	public function get SVGPathSegList_():SVGPathSegList { return null; }
	public function set SVGPathSegList_(value:SVGPathSegList):void { }

	[JavascriptProperty(name="SVGPathSegMovetoAbs")]
	public function get SVGPathSegMovetoAbs_():SVGPathSegMovetoAbs { return null; }
	public function set SVGPathSegMovetoAbs_(value:SVGPathSegMovetoAbs):void { }

	[JavascriptProperty(name="SVGPathSegMovetoRel")]
	public function get SVGPathSegMovetoRel_():SVGPathSegMovetoRel { return null; }
	public function set SVGPathSegMovetoRel_(value:SVGPathSegMovetoRel):void { }

	[JavascriptProperty(name="SVGPatternElement")]
	public function get SVGPatternElement_():SVGPatternElement { return null; }
	public function set SVGPatternElement_(value:SVGPatternElement):void { }

	[JavascriptProperty(name="SVGPoint")]
	public function get SVGPoint_():SVGPoint { return null; }
	public function set SVGPoint_(value:SVGPoint):void { }

	[JavascriptProperty(name="SVGPointList")]
	public function get SVGPointList_():SVGPointList { return null; }
	public function set SVGPointList_(value:SVGPointList):void { }

	[JavascriptProperty(name="SVGPolygonElement")]
	public function get SVGPolygonElement_():SVGPolygonElement { return null; }
	public function set SVGPolygonElement_(value:SVGPolygonElement):void { }

	[JavascriptProperty(name="SVGPolylineElement")]
	public function get SVGPolylineElement_():SVGPolylineElement { return null; }
	public function set SVGPolylineElement_(value:SVGPolylineElement):void { }

	[JavascriptProperty(name="SVGPreserveAspectRatio")]
	public function get SVGPreserveAspectRatio_():SVGPreserveAspectRatio { return null; }
	public function set SVGPreserveAspectRatio_(value:SVGPreserveAspectRatio):void { }

	[JavascriptProperty(name="SVGRadialGradientElement")]
	public function get SVGRadialGradientElement_():SVGRadialGradientElement { return null; }
	public function set SVGRadialGradientElement_(value:SVGRadialGradientElement):void { }

	[JavascriptProperty(name="SVGRect")]
	public function get SVGRect_():SVGRect { return null; }
	public function set SVGRect_(value:SVGRect):void { }

	[JavascriptProperty(name="SVGRectElement")]
	public function get SVGRectElement_():SVGRectElement { return null; }
	public function set SVGRectElement_(value:SVGRectElement):void { }

	[JavascriptProperty(name="SVGRenderingIntent")]
	public function get SVGRenderingIntent_():SVGRenderingIntent { return null; }
	public function set SVGRenderingIntent_(value:SVGRenderingIntent):void { }

	[JavascriptProperty(name="SVGScriptElement")]
	public function get SVGScriptElement_():SVGScriptElement { return null; }
	public function set SVGScriptElement_(value:SVGScriptElement):void { }

	[JavascriptProperty(name="SVGStopElement")]
	public function get SVGStopElement_():SVGStopElement { return null; }
	public function set SVGStopElement_(value:SVGStopElement):void { }

	[JavascriptProperty(name="SVGStringList")]
	public function get SVGStringList_():SVGStringList { return null; }
	public function set SVGStringList_(value:SVGStringList):void { }

	[JavascriptProperty(name="SVGStyleElement")]
	public function get SVGStyleElement_():SVGStyleElement { return null; }
	public function set SVGStyleElement_(value:SVGStyleElement):void { }

	[JavascriptProperty(name="SVGSVGElement")]
	public function get SVGSVGElement_():SVGSVGElement { return null; }
	public function set SVGSVGElement_(value:SVGSVGElement):void { }

	[JavascriptProperty(name="SVGSwitchElement")]
	public function get SVGSwitchElement_():SVGSwitchElement { return null; }
	public function set SVGSwitchElement_(value:SVGSwitchElement):void { }

	[JavascriptProperty(name="SVGSymbolElement")]
	public function get SVGSymbolElement_():SVGSymbolElement { return null; }
	public function set SVGSymbolElement_(value:SVGSymbolElement):void { }

	[JavascriptProperty(name="SVGTextContentElement")]
	public function get SVGTextContentElement_():SVGTextContentElement { return null; }
	public function set SVGTextContentElement_(value:SVGTextContentElement):void { }

	[JavascriptProperty(name="SVGTextElement")]
	public function get SVGTextElement_():SVGTextElement { return null; }
	public function set SVGTextElement_(value:SVGTextElement):void { }

	[JavascriptProperty(name="SVGTextPathElement")]
	public function get SVGTextPathElement_():SVGTextPathElement { return null; }
	public function set SVGTextPathElement_(value:SVGTextPathElement):void { }

	[JavascriptProperty(name="SVGTextPositioningElement")]
	public function get SVGTextPositioningElement_():SVGTextPositioningElement { return null; }
	public function set SVGTextPositioningElement_(value:SVGTextPositioningElement):void { }

	[JavascriptProperty(name="SVGTitleElement")]
	public function get SVGTitleElement_():SVGTitleElement { return null; }
	public function set SVGTitleElement_(value:SVGTitleElement):void { }

	[JavascriptProperty(name="SVGTransform")]
	public function get SVGTransform_():SVGTransform { return null; }
	public function set SVGTransform_(value:SVGTransform):void { }

	[JavascriptProperty(name="SVGTransformList")]
	public function get SVGTransformList_():SVGTransformList { return null; }
	public function set SVGTransformList_(value:SVGTransformList):void { }

	[JavascriptProperty(name="SVGTRefElement")]
	public function get SVGTRefElement_():SVGTRefElement { return null; }
	public function set SVGTRefElement_(value:SVGTRefElement):void { }

	[JavascriptProperty(name="SVGTSpanElement")]
	public function get SVGTSpanElement_():SVGTSpanElement { return null; }
	public function set SVGTSpanElement_(value:SVGTSpanElement):void { }

	[JavascriptProperty(name="SVGUnitTypes")]
	public function get SVGUnitTypes_():SVGUnitTypes { return null; }
	public function set SVGUnitTypes_(value:SVGUnitTypes):void { }

	[JavascriptProperty(name="SVGUseElement")]
	public function get SVGUseElement_():SVGUseElement { return null; }
	public function set SVGUseElement_(value:SVGUseElement):void { }

	[JavascriptProperty(name="SVGViewElement")]
	public function get SVGViewElement_():SVGViewElement { return null; }
	public function set SVGViewElement_(value:SVGViewElement):void { }

	[JavascriptProperty(name="SVGViewSpec")]
	public function get SVGViewSpec_():SVGViewSpec { return null; }
	public function set SVGViewSpec_(value:SVGViewSpec):void { }

	[JavascriptProperty(name="SVGZoomAndPan")]
	public function get SVGZoomAndPan_():SVGZoomAndPan { return null; }
	public function set SVGZoomAndPan_(value:SVGZoomAndPan):void { }

	[JavascriptProperty(name="SVGAnimateColorElement")]
	public function get SVGAnimateColorElement_():SVGAnimateColorElement { return null; }
	public function set SVGAnimateColorElement_(value:SVGAnimateColorElement):void { }

	[JavascriptProperty(name="SVGAnimateElement")]
	public function get SVGAnimateElement_():SVGAnimateElement { return null; }
	public function set SVGAnimateElement_(value:SVGAnimateElement):void { }

	[JavascriptProperty(name="SVGAnimateMotionElement")]
	public function get SVGAnimateMotionElement_():SVGAnimateMotionElement { return null; }
	public function set SVGAnimateMotionElement_(value:SVGAnimateMotionElement):void { }

	[JavascriptProperty(name="SVGAnimateTransformElement")]
	public function get SVGAnimateTransformElement_():SVGAnimateTransformElement { return null; }
	public function set SVGAnimateTransformElement_(value:SVGAnimateTransformElement):void { }

	[JavascriptProperty(name="SVGMPathElement")]
	public function get SVGMPathElement_():SVGMPathElement { return null; }
	public function set SVGMPathElement_(value:SVGMPathElement):void { }

	[JavascriptProperty(name="SVGSetElement")]
	public function get SVGSetElement_():SVGSetElement { return null; }
	public function set SVGSetElement_(value:SVGSetElement):void { }

	[JavascriptProperty(name="SVGAltGlyphDefElement")]
	public function get SVGAltGlyphDefElement_():SVGAltGlyphDefElement { return null; }
	public function set SVGAltGlyphDefElement_(value:SVGAltGlyphDefElement):void { }

	[JavascriptProperty(name="SVGAltGlyphElement")]
	public function get SVGAltGlyphElement_():SVGAltGlyphElement { return null; }
	public function set SVGAltGlyphElement_(value:SVGAltGlyphElement):void { }

	[JavascriptProperty(name="SVGAltGlyphItemElement")]
	public function get SVGAltGlyphItemElement_():SVGAltGlyphItemElement { return null; }
	public function set SVGAltGlyphItemElement_(value:SVGAltGlyphItemElement):void { }

	[JavascriptProperty(name="SVGFontElement")]
	public function get SVGFontElement_():SVGFontElement { return null; }
	public function set SVGFontElement_(value:SVGFontElement):void { }

	[JavascriptProperty(name="SVGFontFaceElement")]
	public function get SVGFontFaceElement_():SVGFontFaceElement { return null; }
	public function set SVGFontFaceElement_(value:SVGFontFaceElement):void { }

	[JavascriptProperty(name="SVGFontFaceFormatElement")]
	public function get SVGFontFaceFormatElement_():SVGFontFaceFormatElement { return null; }
	public function set SVGFontFaceFormatElement_(value:SVGFontFaceFormatElement):void { }

	[JavascriptProperty(name="SVGFontFaceNameElement")]
	public function get SVGFontFaceNameElement_():SVGFontFaceNameElement { return null; }
	public function set SVGFontFaceNameElement_(value:SVGFontFaceNameElement):void { }

	[JavascriptProperty(name="SVGFontFaceSrcElement")]
	public function get SVGFontFaceSrcElement_():SVGFontFaceSrcElement { return null; }
	public function set SVGFontFaceSrcElement_(value:SVGFontFaceSrcElement):void { }

	[JavascriptProperty(name="SVGFontFaceUriElement")]
	public function get SVGFontFaceUriElement_():SVGFontFaceUriElement { return null; }
	public function set SVGFontFaceUriElement_(value:SVGFontFaceUriElement):void { }

	[JavascriptProperty(name="SVGGlyphElement")]
	public function get SVGGlyphElement_():SVGGlyphElement { return null; }
	public function set SVGGlyphElement_(value:SVGGlyphElement):void { }

	[JavascriptProperty(name="SVGGlyphRefElement")]
	public function get SVGGlyphRefElement_():SVGGlyphRefElement { return null; }
	public function set SVGGlyphRefElement_(value:SVGGlyphRefElement):void { }

	[JavascriptProperty(name="SVGHKernElement")]
	public function get SVGHKernElement_():SVGHKernElement { return null; }
	public function set SVGHKernElement_(value:SVGHKernElement):void { }

	[JavascriptProperty(name="SVGMissingGlyphElement")]
	public function get SVGMissingGlyphElement_():SVGMissingGlyphElement { return null; }
	public function set SVGMissingGlyphElement_(value:SVGMissingGlyphElement):void { }

	[JavascriptProperty(name="SVGVKernElement")]
	public function get SVGVKernElement_():SVGVKernElement { return null; }
	public function set SVGVKernElement_(value:SVGVKernElement):void { }

	[JavascriptProperty(name="SVGComponentTransferFunctionElement")]
	public function get SVGComponentTransferFunctionElement_():SVGComponentTransferFunctionElement { return null; }
	public function set SVGComponentTransferFunctionElement_(value:SVGComponentTransferFunctionElement):void { }

	[JavascriptProperty(name="SVGFEBlendElement")]
	public function get SVGFEBlendElement_():SVGFEBlendElement { return null; }
	public function set SVGFEBlendElement_(value:SVGFEBlendElement):void { }

	[JavascriptProperty(name="SVGFEColorMatrixElement")]
	public function get SVGFEColorMatrixElement_():SVGFEColorMatrixElement { return null; }
	public function set SVGFEColorMatrixElement_(value:SVGFEColorMatrixElement):void { }

	[JavascriptProperty(name="SVGFEComponentTransferElement")]
	public function get SVGFEComponentTransferElement_():SVGFEComponentTransferElement { return null; }
	public function set SVGFEComponentTransferElement_(value:SVGFEComponentTransferElement):void { }

	[JavascriptProperty(name="SVGFECompositeElement")]
	public function get SVGFECompositeElement_():SVGFECompositeElement { return null; }
	public function set SVGFECompositeElement_(value:SVGFECompositeElement):void { }

	[JavascriptProperty(name="SVGFEConvolveMatrixElement")]
	public function get SVGFEConvolveMatrixElement_():SVGFEConvolveMatrixElement { return null; }
	public function set SVGFEConvolveMatrixElement_(value:SVGFEConvolveMatrixElement):void { }

	[JavascriptProperty(name="SVGFEDiffuseLightingElement")]
	public function get SVGFEDiffuseLightingElement_():SVGFEDiffuseLightingElement { return null; }
	public function set SVGFEDiffuseLightingElement_(value:SVGFEDiffuseLightingElement):void { }

	[JavascriptProperty(name="SVGFEDisplacementMapElement")]
	public function get SVGFEDisplacementMapElement_():SVGFEDisplacementMapElement { return null; }
	public function set SVGFEDisplacementMapElement_(value:SVGFEDisplacementMapElement):void { }

	[JavascriptProperty(name="SVGFEDistantLightElement")]
	public function get SVGFEDistantLightElement_():SVGFEDistantLightElement { return null; }
	public function set SVGFEDistantLightElement_(value:SVGFEDistantLightElement):void { }

	[JavascriptProperty(name="SVGFEDropShadowElement")]
	public function get SVGFEDropShadowElement_():SVGFEDropShadowElement { return null; }
	public function set SVGFEDropShadowElement_(value:SVGFEDropShadowElement):void { }

	[JavascriptProperty(name="SVGFEFloodElement")]
	public function get SVGFEFloodElement_():SVGFEFloodElement { return null; }
	public function set SVGFEFloodElement_(value:SVGFEFloodElement):void { }

	[JavascriptProperty(name="SVGFEFuncAElement")]
	public function get SVGFEFuncAElement_():SVGFEFuncAElement { return null; }
	public function set SVGFEFuncAElement_(value:SVGFEFuncAElement):void { }

	[JavascriptProperty(name="SVGFEFuncBElement")]
	public function get SVGFEFuncBElement_():SVGFEFuncBElement { return null; }
	public function set SVGFEFuncBElement_(value:SVGFEFuncBElement):void { }

	[JavascriptProperty(name="SVGFEFuncGElement")]
	public function get SVGFEFuncGElement_():SVGFEFuncGElement { return null; }
	public function set SVGFEFuncGElement_(value:SVGFEFuncGElement):void { }

	[JavascriptProperty(name="SVGFEFuncRElement")]
	public function get SVGFEFuncRElement_():SVGFEFuncRElement { return null; }
	public function set SVGFEFuncRElement_(value:SVGFEFuncRElement):void { }

	[JavascriptProperty(name="SVGFEGaussianBlurElement")]
	public function get SVGFEGaussianBlurElement_():SVGFEGaussianBlurElement { return null; }
	public function set SVGFEGaussianBlurElement_(value:SVGFEGaussianBlurElement):void { }

	[JavascriptProperty(name="SVGFEImageElement")]
	public function get SVGFEImageElement_():SVGFEImageElement { return null; }
	public function set SVGFEImageElement_(value:SVGFEImageElement):void { }

	[JavascriptProperty(name="SVGFEMergeElement")]
	public function get SVGFEMergeElement_():SVGFEMergeElement { return null; }
	public function set SVGFEMergeElement_(value:SVGFEMergeElement):void { }

	[JavascriptProperty(name="SVGFEMergeNodeElement")]
	public function get SVGFEMergeNodeElement_():SVGFEMergeNodeElement { return null; }
	public function set SVGFEMergeNodeElement_(value:SVGFEMergeNodeElement):void { }

	[JavascriptProperty(name="SVGFEMorphologyElement")]
	public function get SVGFEMorphologyElement_():SVGFEMorphologyElement { return null; }
	public function set SVGFEMorphologyElement_(value:SVGFEMorphologyElement):void { }

	[JavascriptProperty(name="SVGFEOffsetElement")]
	public function get SVGFEOffsetElement_():SVGFEOffsetElement { return null; }
	public function set SVGFEOffsetElement_(value:SVGFEOffsetElement):void { }

	[JavascriptProperty(name="SVGFEPointLightElement")]
	public function get SVGFEPointLightElement_():SVGFEPointLightElement { return null; }
	public function set SVGFEPointLightElement_(value:SVGFEPointLightElement):void { }

	[JavascriptProperty(name="SVGFESpecularLightingElement")]
	public function get SVGFESpecularLightingElement_():SVGFESpecularLightingElement { return null; }
	public function set SVGFESpecularLightingElement_(value:SVGFESpecularLightingElement):void { }

	[JavascriptProperty(name="SVGFESpotLightElement")]
	public function get SVGFESpotLightElement_():SVGFESpotLightElement { return null; }
	public function set SVGFESpotLightElement_(value:SVGFESpotLightElement):void { }

	[JavascriptProperty(name="SVGFETileElement")]
	public function get SVGFETileElement_():SVGFETileElement { return null; }
	public function set SVGFETileElement_(value:SVGFETileElement):void { }

	[JavascriptProperty(name="SVGFETurbulenceElement")]
	public function get SVGFETurbulenceElement_():SVGFETurbulenceElement { return null; }
	public function set SVGFETurbulenceElement_(value:SVGFETurbulenceElement):void { }

	[JavascriptProperty(name="SVGFilterElement")]
	public function get SVGFilterElement_():SVGFilterElement { return null; }
	public function set SVGFilterElement_(value:SVGFilterElement):void { }

	[JavascriptProperty(name="FormData")]
	public function get FormData_():FormData { return null; }
	public function set FormData_(value:FormData):void { }

	[JavascriptProperty(name="FileError")]
	public function get FileError_():FileError { return null; }
	public function set FileError_(value:FileError):void { }

	[JavascriptProperty(name="FileReader")]
	public function get FileReader_():FileReader { return null; }
	public function set FileReader_(value:FileReader):void { }

	[JavascriptProperty(name="URL")]
	public function get URL_():URL { return null; }
	public function set URL_(value:URL):void { }
	public function toString():String { return '';}
}

}