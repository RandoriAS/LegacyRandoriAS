
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

[JavaScript(export="false", name="Window")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class Window
{

	/**
	*  @see randori.webkit.page.Screen
	*/
	public function get screen():Screen { return null; }

	/**
	*  @see randori.webkit.page.History
	*/
	public function get history():History { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public function get locationbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public function get menubar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public function get personalbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public function get scrollbars():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public function get statusbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public function get toolbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.Navigator
	*/
	public function get navigator():Navigator { return null; }

	/**
	*  @see randori.webkit.page.Navigator
	*/
	public function get clientInformation():Navigator { return null; }

	/**
	*  @see randori.webkit.page.Crypto
	*/
	public function get crypto():Crypto { return null; }

	/**
	*  @see randori.webkit.page.Location
	*/
	public function get location():Location { return null; }
	public function set location(value:Location):void { }

	/**
	*  @see randori.webkit.dom.DomEvent
	*/
	public function get event():DomEvent { return null; }
	/**
	*  @return A <code>Selection</code> instance.
	*/
	public function getSelection():Selection { return null;}

	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get frameElement():Element { return null; }
	public function focus():void {}
	public function blur():void {}
	public function close():void {}
	public function print():void {}
	public function stop():void {}
	/**
	*  @param url
	*  @param name
	*  @param options (optional argument, default value is <code>''</code>)
	*  @return A <code>Window</code> instance.
	*/
	public function open(url:String, name:String, options:String=''):Window { return null;}
	/**
	*  @param url
	*  @param dialogArgs (optional argument, default value is <code>null</code>)
	*  @param featureArgs (optional argument, default value is <code>''</code>)
	*  @return A <code>Object</code> instance.
	*/
	public function showModalDialog(url:String, dialogArgs:Object=null, featureArgs:String=''):Object { return null;}
	/**
	*  @param message (optional argument, default value is <code>undefined</code>)
	*/
	public function alert(message:String=undefined):void {}
	/**
	*  @param message (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function confirm(message:String=undefined):Boolean { return false;}
	/**
	*  @param message (optional argument, default value is <code>undefined</code>)
	*  @param defaultValue (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function prompt(message:String=undefined, defaultValue:String=undefined):String { return '';}
	/**
	*  @param string (optional argument, default value is <code>undefined</code>)
	*  @param caseSensitive (optional argument, default value is <code>undefined</code>)
	*  @param backwards (optional argument, default value is <code>undefined</code>)
	*  @param wrap (optional argument, default value is <code>undefined</code>)
	*  @param wholeWord (optional argument, default value is <code>undefined</code>)
	*  @param searchInFrames (optional argument, default value is <code>undefined</code>)
	*  @param showDialog (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function find(string:String=undefined, caseSensitive:Boolean=undefined, backwards:Boolean=undefined, wrap:Boolean=undefined, wholeWord:Boolean=undefined, searchInFrames:Boolean=undefined, showDialog:Boolean=undefined):Boolean { return false;}

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
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function scrollBy(x:uint=undefined, y:uint=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function scrollTo(x:uint=undefined, y:uint=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function scroll(x:uint=undefined, y:uint=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function moveBy(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function moveTo(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function resizeBy(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param width (optional argument, default value is <code>undefined</code>)
	*  @param height (optional argument, default value is <code>undefined</code>)
	*/
	public function resizeTo(width:Number=undefined, height:Number=undefined):void {}

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

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get self():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get window():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get frames():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get opener():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get parent():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public function get top():Window { return null; }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get document():Document { return null; }
	/**
	*  @param query
	*  @return A <code>MediaQueryList</code> instance.
	*/
	public function matchMedia(query:String):MediaQueryList { return null;}

	/**
	*  @see randori.webkit.css.StyleMedia
	*/
	public function get styleMedia():StyleMedia { return null; }
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param pseudoElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSStyleDeclaration</code> instance.
	*/
	public function getComputedStyle(element:Element=undefined, pseudoElement:String=undefined):Object { return null;}
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param pseudoElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSRuleList</code> instance.
	*/
	public function getMatchedCSSRules(element:Element=undefined, pseudoElement:String=undefined):Object { return null;}

	public function get devicePixelRatio():Number { return 0; }

	/**
	*  @see randori.webkit.loader.appcache.DOMApplicationCache
	*/
	public function get applicationCache():DOMApplicationCache { return null; }

	/**
	*  @see randori.webkit.storage.Storage
	*/
	public function get sessionStorage():Storage { return null; }

	/**
	*  @see randori.webkit.storage.Storage
	*/
	public function get localStorage():Storage { return null; }

	public function get orientation():uint { return 0; }

	/**
	*  @see randori.webkit.page.Console
	*/
	public function get console():Console { return null; }
	/**
	*  @param message
	*  @param targetOrigin
	*  @param messagePorts
	*/
	public function postMessage(message:Object, targetOrigin:String, messagePorts:Array):void {}

	/**
	*  @see randori.webkit.page.Performance
	*/
	public function get performance():Performance { return null; }
	/**
	*  @param handler (optional argument, default value is <code>undefined</code>)
	*  @param timeout (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public function setTimeout(handler:Object=undefined, timeout:uint=undefined):uint { return 0;}
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
	*  @param callback
	*  @return A <code>uint</code> instance.
	*/
	public function requestAnimationFrame(callback:Object):uint { return 0;}
	/**
	*  @param id
	*/
	public function cancelAnimationFrame(id:uint):void {}
	/**
	*  @param string (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function atob(string:String=undefined):String { return '';}
	/**
	*  @param string (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public function btoa(string:String=undefined):String { return '';}

	/**
	*  Function that accepts an event of type <code>AbortEvent</code>.
	*/
	public function get onabort():Function { return null; }
	public function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>BeforeunloadEvent</code>.
	*/
	public function get onbeforeunload():Function { return null; }
	public function set onbeforeunload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>BlurEvent</code>.
	*/
	public function get onblur():Function { return null; }
	public function set onblur(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>CanplayEvent</code>.
	*/
	public function get oncanplay():Function { return null; }
	public function set oncanplay(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>CanplaythroughEvent</code>.
	*/
	public function get oncanplaythrough():Function { return null; }
	public function set oncanplaythrough(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ChangeEvent</code>.
	*/
	public function get onchange():Function { return null; }
	public function set onchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ClickEvent</code>.
	*/
	public function get onclick():Function { return null; }
	public function set onclick(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ContextmenuEvent</code>.
	*/
	public function get oncontextmenu():Function { return null; }
	public function set oncontextmenu(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DblclickEvent</code>.
	*/
	public function get ondblclick():Function { return null; }
	public function set ondblclick(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragEvent</code>.
	*/
	public function get ondrag():Function { return null; }
	public function set ondrag(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragendEvent</code>.
	*/
	public function get ondragend():Function { return null; }
	public function set ondragend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragenterEvent</code>.
	*/
	public function get ondragenter():Function { return null; }
	public function set ondragenter(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragleaveEvent</code>.
	*/
	public function get ondragleave():Function { return null; }
	public function set ondragleave(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragoverEvent</code>.
	*/
	public function get ondragover():Function { return null; }
	public function set ondragover(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragstartEvent</code>.
	*/
	public function get ondragstart():Function { return null; }
	public function set ondragstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DropEvent</code>.
	*/
	public function get ondrop():Function { return null; }
	public function set ondrop(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DurationchangeEvent</code>.
	*/
	public function get ondurationchange():Function { return null; }
	public function set ondurationchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>EmptiedEvent</code>.
	*/
	public function get onemptied():Function { return null; }
	public function set onemptied(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>EndedEvent</code>.
	*/
	public function get onended():Function { return null; }
	public function set onended(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>FocusEvent</code>.
	*/
	public function get onfocus():Function { return null; }
	public function set onfocus(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>HashchangeEvent</code>.
	*  @see randori.webkit.dom.HashChangeEvent
	*/
	public function get onhashchange():Function { return null; }
	public function set onhashchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>InputEvent</code>.
	*/
	public function get oninput():Function { return null; }
	public function set oninput(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>InvalidEvent</code>.
	*/
	public function get oninvalid():Function { return null; }
	public function set oninvalid(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>KeydownEvent</code>.
	*/
	public function get onkeydown():Function { return null; }
	public function set onkeydown(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>KeypressEvent</code>.
	*/
	public function get onkeypress():Function { return null; }
	public function set onkeypress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>KeyupEvent</code>.
	*/
	public function get onkeyup():Function { return null; }
	public function set onkeyup(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadEvent</code>.
	*/
	public function get onload():Function { return null; }
	public function set onload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadeddataEvent</code>.
	*/
	public function get onloadeddata():Function { return null; }
	public function set onloadeddata(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadedmetadataEvent</code>.
	*/
	public function get onloadedmetadata():Function { return null; }
	public function set onloadedmetadata(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadstartEvent</code>.
	*/
	public function get onloadstart():Function { return null; }
	public function set onloadstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MessageEvent</code>.
	*  @see randori.webkit.dom.MessageEvent
	*/
	public function get onmessage():Function { return null; }
	public function set onmessage(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MousedownEvent</code>.
	*/
	public function get onmousedown():Function { return null; }
	public function set onmousedown(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MousemoveEvent</code>.
	*/
	public function get onmousemove():Function { return null; }
	public function set onmousemove(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MouseoutEvent</code>.
	*/
	public function get onmouseout():Function { return null; }
	public function set onmouseout(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MouseoverEvent</code>.
	*/
	public function get onmouseover():Function { return null; }
	public function set onmouseover(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MouseupEvent</code>.
	*/
	public function get onmouseup():Function { return null; }
	public function set onmouseup(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MousewheelEvent</code>.
	*/
	public function get onmousewheel():Function { return null; }
	public function set onmousewheel(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OfflineEvent</code>.
	*/
	public function get onoffline():Function { return null; }
	public function set onoffline(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OnlineEvent</code>.
	*/
	public function get ononline():Function { return null; }
	public function set ononline(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PagehideEvent</code>.
	*/
	public function get onpagehide():Function { return null; }
	public function set onpagehide(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PageshowEvent</code>.
	*/
	public function get onpageshow():Function { return null; }
	public function set onpageshow(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PauseEvent</code>.
	*/
	public function get onpause():Function { return null; }
	public function set onpause(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PlayEvent</code>.
	*/
	public function get onplay():Function { return null; }
	public function set onplay(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PlayingEvent</code>.
	*/
	public function get onplaying():Function { return null; }
	public function set onplaying(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PopstateEvent</code>.
	*  @see randori.webkit.dom.PopStateEvent
	*/
	public function get onpopstate():Function { return null; }
	public function set onpopstate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ProgressEvent</code>.
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public function get onprogress():Function { return null; }
	public function set onprogress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>RatechangeEvent</code>.
	*/
	public function get onratechange():Function { return null; }
	public function set onratechange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ResizeEvent</code>.
	*/
	public function get onresize():Function { return null; }
	public function set onresize(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ScrollEvent</code>.
	*/
	public function get onscroll():Function { return null; }
	public function set onscroll(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SeekedEvent</code>.
	*/
	public function get onseeked():Function { return null; }
	public function set onseeked(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SeekingEvent</code>.
	*/
	public function get onseeking():Function { return null; }
	public function set onseeking(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SelectEvent</code>.
	*/
	public function get onselect():Function { return null; }
	public function set onselect(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>StalledEvent</code>.
	*/
	public function get onstalled():Function { return null; }
	public function set onstalled(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>StorageEvent</code>.
	*  @see randori.webkit.storage.StorageEvent
	*/
	public function get onstorage():Function { return null; }
	public function set onstorage(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SubmitEvent</code>.
	*/
	public function get onsubmit():Function { return null; }
	public function set onsubmit(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SuspendEvent</code>.
	*/
	public function get onsuspend():Function { return null; }
	public function set onsuspend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TimeupdateEvent</code>.
	*/
	public function get ontimeupdate():Function { return null; }
	public function set ontimeupdate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>UnloadEvent</code>.
	*/
	public function get onunload():Function { return null; }
	public function set onunload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>VolumechangeEvent</code>.
	*/
	public function get onvolumechange():Function { return null; }
	public function set onvolumechange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>WaitingEvent</code>.
	*/
	public function get onwaiting():Function { return null; }
	public function set onwaiting(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ResetEvent</code>.
	*/
	public function get onreset():Function { return null; }
	public function set onreset(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SearchEvent</code>.
	*/
	public function get onsearch():Function { return null; }
	public function set onsearch(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TransitionendEvent</code>.
	*/
	public function get ontransitionend():Function { return null; }
	public function set ontransitionend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OrientationchangeEvent</code>.
	*/
	public function get onorientationchange():Function { return null; }
	public function set onorientationchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchstartEvent</code>.
	*/
	public function get ontouchstart():Function { return null; }
	public function set ontouchstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchmoveEvent</code>.
	*/
	public function get ontouchmove():Function { return null; }
	public function set ontouchmove(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchendEvent</code>.
	*/
	public function get ontouchend():Function { return null; }
	public function set ontouchend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchcancelEvent</code>.
	*/
	public function get ontouchcancel():Function { return null; }
	public function set ontouchcancel(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DevicemotionEvent</code>.
	*  @see randori.webkit.dom.DeviceMotionEvent
	*/
	public function get ondevicemotion():Function { return null; }
	public function set ondevicemotion(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DeviceorientationEvent</code>.
	*  @see randori.webkit.dom.DeviceOrientationEvent
	*/
	public function get ondeviceorientation():Function { return null; }
	public function set ondeviceorientation(value:Function):void { }
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
	public function captureEvents():void {}
	public function releaseEvents():void {}

	[JavascriptProperty(name="StyleSheet")]
	/**
	*  @see randori.webkit.css.StyleSheet
	*/
	public function get StyleSheet_():StyleSheet { return null; }
	public function set StyleSheet_(value:StyleSheet):void { }

	[JavascriptProperty(name="CSSStyleSheet")]
	/**
	*  @see randori.webkit.css.CSSStyleSheet
	*/
	public function get CSSStyleSheet_():CSSStyleSheet { return null; }
	public function set CSSStyleSheet_(value:CSSStyleSheet):void { }

	[JavascriptProperty(name="CSSValue")]
	/**
	*  @see randori.webkit.css.CSSValue
	*/
	public function get CSSValue_():CSSValue { return null; }
	public function set CSSValue_(value:CSSValue):void { }

	[JavascriptProperty(name="CSSPrimitiveValue")]
	/**
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public function get CSSPrimitiveValue_():CSSPrimitiveValue { return null; }
	public function set CSSPrimitiveValue_(value:CSSPrimitiveValue):void { }

	/**
	*  @see randori.webkit.css.CSSValueList
	*/
	public function get CSSValueList():Object { return null; }
	public function set CSSValueList(value:Object):void { }

	[JavascriptProperty(name="CSSRule")]
	/**
	*  @see randori.webkit.css.CSSRule
	*/
	public function get CSSRule_():CSSRule { return null; }
	public function set CSSRule_(value:CSSRule):void { }

	[JavascriptProperty(name="CSSCharsetRule")]
	/**
	*  @see randori.webkit.css.CSSCharsetRule
	*/
	public function get CSSCharsetRule_():CSSCharsetRule { return null; }
	public function set CSSCharsetRule_(value:CSSCharsetRule):void { }

	[JavascriptProperty(name="CSSFontFaceRule")]
	/**
	*  @see randori.webkit.css.CSSFontFaceRule
	*/
	public function get CSSFontFaceRule_():CSSFontFaceRule { return null; }
	public function set CSSFontFaceRule_(value:CSSFontFaceRule):void { }

	[JavascriptProperty(name="CSSHostRule")]
	/**
	*  @see randori.webkit.css.CSSHostRule
	*/
	public function get CSSHostRule_():CSSHostRule { return null; }
	public function set CSSHostRule_(value:CSSHostRule):void { }

	[JavascriptProperty(name="CSSImportRule")]
	/**
	*  @see randori.webkit.css.CSSImportRule
	*/
	public function get CSSImportRule_():CSSImportRule { return null; }
	public function set CSSImportRule_(value:CSSImportRule):void { }

	[JavascriptProperty(name="CSSMediaRule")]
	/**
	*  @see randori.webkit.css.CSSMediaRule
	*/
	public function get CSSMediaRule_():CSSMediaRule { return null; }
	public function set CSSMediaRule_(value:CSSMediaRule):void { }

	[JavascriptProperty(name="CSSPageRule")]
	/**
	*  @see randori.webkit.css.CSSPageRule
	*/
	public function get CSSPageRule_():CSSPageRule { return null; }
	public function set CSSPageRule_(value:CSSPageRule):void { }

	[JavascriptProperty(name="CSSStyleRule")]
	/**
	*  @see randori.webkit.css.CSSStyleRule
	*/
	public function get CSSStyleRule_():CSSStyleRule { return null; }
	public function set CSSStyleRule_(value:CSSStyleRule):void { }

	/**
	*  @see randori.webkit.css.CSSStyleDeclaration
	*/
	public function get CSSStyleDeclaration():Object { return null; }
	public function set CSSStyleDeclaration(value:Object):void { }

	/**
	*  @see randori.webkit.css.MediaList
	*/
	public function get MediaList():Object { return null; }
	public function set MediaList(value:Object):void { }

	[JavascriptProperty(name="Counter")]
	/**
	*  @see randori.webkit.css.Counter
	*/
	public function get Counter_():Counter { return null; }
	public function set Counter_(value:Counter):void { }

	/**
	*  @see randori.webkit.css.CSSRuleList
	*/
	public function get CSSRuleList():Object { return null; }
	public function set CSSRuleList(value:Object):void { }

	[JavascriptProperty(name="Rect")]
	/**
	*  @see randori.webkit.css.Rect
	*/
	public function get Rect_():Rect { return null; }
	public function set Rect_(value:Rect):void { }

	[JavascriptProperty(name="RGBColor")]
	/**
	*  @see randori.webkit.css.RGBColor
	*/
	public function get RGBColor_():RGBColor { return null; }
	public function set RGBColor_(value:RGBColor):void { }

	/**
	*  @see randori.webkit.css.StyleSheetList
	*/
	public function get StyleSheetList():Object { return null; }
	public function set StyleSheetList(value:Object):void { }

	public function get DOMException():Object { return null; }
	public function set DOMException(value:Object):void { }

	/**
	*  @see randori.webkit.dom.DOMStringList
	*/
	public function get DOMStringList():Object { return null; }
	public function set DOMStringList(value:Object):void { }

	[JavascriptProperty(name="DOMImplementation")]
	/**
	*  @see randori.webkit.dom.DOMImplementation
	*/
	public function get DOMImplementation_():DOMImplementation { return null; }
	public function set DOMImplementation_(value:DOMImplementation):void { }

	[JavascriptProperty(name="DOMSettableTokenList")]
	/**
	*  @see randori.webkit.html.DOMSettableTokenList
	*/
	public function get DOMSettableTokenList_():DOMSettableTokenList { return null; }
	public function set DOMSettableTokenList_(value:DOMSettableTokenList):void { }

	/**
	*  @see randori.webkit.html.DOMTokenList
	*/
	public function get DOMTokenList():Object { return null; }
	public function set DOMTokenList(value:Object):void { }

	[JavascriptProperty(name="DocumentFragment")]
	/**
	*  @see randori.webkit.dom.DocumentFragment
	*/
	public function get DocumentFragment_():DocumentFragment { return null; }
	public function set DocumentFragment_(value:DocumentFragment):void { }

	[JavascriptProperty(name="Document")]
	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get Document_():Document { return null; }
	public function set Document_(value:Document):void { }

	[JavascriptProperty(name="Node")]
	/**
	*  @see randori.webkit.dom.Node
	*/
	public function get Node_():Node { return null; }
	public function set Node_(value:Node):void { }

	/**
	*  @see randori.webkit.dom.NodeList
	*/
	public function get NodeList():Object { return null; }
	public function set NodeList(value:Object):void { }

	/**
	*  @see randori.webkit.dom.PropertyNodeList
	*/
	public function get PropertyNodeList():Object { return null; }
	public function set PropertyNodeList(value:Object):void { }

	/**
	*  @see randori.webkit.dom.NamedNodeMap
	*/
	public function get NamedNodeMap():Object { return null; }
	public function set NamedNodeMap(value:Object):void { }

	[JavascriptProperty(name="CharacterData")]
	/**
	*  @see randori.webkit.dom.CharacterData
	*/
	public function get CharacterData_():CharacterData { return null; }
	public function set CharacterData_(value:CharacterData):void { }

	[JavascriptProperty(name="Attr")]
	/**
	*  @see randori.webkit.dom.Attr
	*/
	public function get Attr_():Attr { return null; }
	public function set Attr_(value:Attr):void { }

	[JavascriptProperty(name="Element")]
	/**
	*  @see randori.webkit.dom.Element
	*/
	public function get Element_():Element { return null; }
	public function set Element_(value:Element):void { }

	[JavascriptProperty(name="Text")]
	/**
	*  @see randori.webkit.dom.Text
	*/
	public function get Text_():Text { return null; }
	public function set Text_(value:Text):void { }

	[JavascriptProperty(name="Comment")]
	/**
	*  @see randori.webkit.dom.Comment
	*/
	public function get Comment_():Comment { return null; }
	public function set Comment_(value:Comment):void { }

	[JavascriptProperty(name="CDATASection")]
	/**
	*  @see randori.webkit.dom.CDATASection
	*/
	public function get CDATASection_():CDATASection { return null; }
	public function set CDATASection_(value:CDATASection):void { }

	[JavascriptProperty(name="DocumentType")]
	/**
	*  @see randori.webkit.dom.DocumentType
	*/
	public function get DocumentType_():DocumentType { return null; }
	public function set DocumentType_(value:DocumentType):void { }

	[JavascriptProperty(name="Notation")]
	/**
	*  @see randori.webkit.dom.Notation
	*/
	public function get Notation_():Notation { return null; }
	public function set Notation_(value:Notation):void { }

	[JavascriptProperty(name="Entity")]
	/**
	*  @see randori.webkit.dom.Entity
	*/
	public function get Entity_():Entity { return null; }
	public function set Entity_(value:Entity):void { }

	[JavascriptProperty(name="EntityReference")]
	/**
	*  @see randori.webkit.dom.EntityReference
	*/
	public function get EntityReference_():EntityReference { return null; }
	public function set EntityReference_(value:EntityReference):void { }

	/**
	*  @see randori.webkit.html.canvas.DOMPath
	*/
	public function get Path():DOMPath { return null; }
	public function set Path(value:DOMPath):void { }

	[JavascriptProperty(name="ProcessingInstruction")]
	/**
	*  @see randori.webkit.dom.ProcessingInstruction
	*/
	public function get ProcessingInstruction_():ProcessingInstruction { return null; }
	public function set ProcessingInstruction_(value:ProcessingInstruction):void { }

	[JavascriptProperty(name="HTMLContentElement")]
	/**
	*  @see randori.webkit.html.shadow.HTMLContentElement
	*/
	public function get HTMLContentElement_():HTMLContentElement { return null; }
	public function set HTMLContentElement_(value:HTMLContentElement):void { }

	[JavascriptProperty(name="HTMLShadowElement")]
	/**
	*  @see randori.webkit.html.shadow.HTMLShadowElement
	*/
	public function get HTMLShadowElement_():HTMLShadowElement { return null; }
	public function set HTMLShadowElement_(value:HTMLShadowElement):void { }

	[JavascriptProperty(name="Selection")]
	/**
	*  @see randori.webkit.page.Selection
	*/
	public function get Selection_():Selection { return null; }
	public function set Selection_(value:Selection):void { }

	[JavascriptProperty(name="Window")]
	/**
	*  @see randori.webkit.page.Window
	*/
	public function get Window__():Window { return null; }
	public function set Window__(value:Window):void { }

	[JavascriptProperty(name="HTMLDocument")]
	/**
	*  @see randori.webkit.html.HTMLDocument
	*/
	public function get HTMLDocument_():HTMLDocument { return null; }
	public function set HTMLDocument_(value:HTMLDocument):void { }

	[JavascriptProperty(name="HTMLElement")]
	/**
	*  @see randori.webkit.html.HTMLElement
	*/
	public function get HTMLElement_():HTMLElement { return null; }
	public function set HTMLElement_(value:HTMLElement):void { }

	[JavascriptProperty(name="HTMLAnchorElement")]
	/**
	*  @see randori.webkit.html.HTMLAnchorElement
	*/
	public function get HTMLAnchorElement_():HTMLAnchorElement { return null; }
	public function set HTMLAnchorElement_(value:HTMLAnchorElement):void { }

	[JavascriptProperty(name="HTMLAppletElement")]
	/**
	*  @see randori.webkit.html.HTMLAppletElement
	*/
	public function get HTMLAppletElement_():HTMLAppletElement { return null; }
	public function set HTMLAppletElement_(value:HTMLAppletElement):void { }

	[JavascriptProperty(name="HTMLAreaElement")]
	/**
	*  @see randori.webkit.html.HTMLAreaElement
	*/
	public function get HTMLAreaElement_():HTMLAreaElement { return null; }
	public function set HTMLAreaElement_(value:HTMLAreaElement):void { }

	[JavascriptProperty(name="HTMLBRElement")]
	/**
	*  @see randori.webkit.html.HTMLBRElement
	*/
	public function get HTMLBRElement_():HTMLBRElement { return null; }
	public function set HTMLBRElement_(value:HTMLBRElement):void { }

	[JavascriptProperty(name="HTMLBaseElement")]
	/**
	*  @see randori.webkit.html.HTMLBaseElement
	*/
	public function get HTMLBaseElement_():HTMLBaseElement { return null; }
	public function set HTMLBaseElement_(value:HTMLBaseElement):void { }

	[JavascriptProperty(name="HTMLBaseFontElement")]
	/**
	*  @see randori.webkit.html.HTMLBaseFontElement
	*/
	public function get HTMLBaseFontElement_():HTMLBaseFontElement { return null; }
	public function set HTMLBaseFontElement_(value:HTMLBaseFontElement):void { }

	[JavascriptProperty(name="HTMLBodyElement")]
	/**
	*  @see randori.webkit.html.HTMLBodyElement
	*/
	public function get HTMLBodyElement_():HTMLBodyElement { return null; }
	public function set HTMLBodyElement_(value:HTMLBodyElement):void { }

	[JavascriptProperty(name="HTMLButtonElement")]
	/**
	*  @see randori.webkit.html.HTMLButtonElement
	*/
	public function get HTMLButtonElement_():HTMLButtonElement { return null; }
	public function set HTMLButtonElement_(value:HTMLButtonElement):void { }

	[JavascriptProperty(name="HTMLCanvasElement")]
	/**
	*  @see randori.webkit.html.HTMLCanvasElement
	*/
	public function get HTMLCanvasElement_():HTMLCanvasElement { return null; }
	public function set HTMLCanvasElement_(value:HTMLCanvasElement):void { }

	[JavascriptProperty(name="HTMLDListElement")]
	/**
	*  @see randori.webkit.html.HTMLDListElement
	*/
	public function get HTMLDListElement_():HTMLDListElement { return null; }
	public function set HTMLDListElement_(value:HTMLDListElement):void { }

	[JavascriptProperty(name="HTMLDataListElement")]
	/**
	*  @see randori.webkit.html.HTMLDataListElement
	*/
	public function get HTMLDataListElement_():HTMLDataListElement { return null; }
	public function set HTMLDataListElement_(value:HTMLDataListElement):void { }

	[JavascriptProperty(name="HTMLDialogElement")]
	/**
	*  @see randori.webkit.html.HTMLDialogElement
	*/
	public function get HTMLDialogElement_():HTMLDialogElement { return null; }
	public function set HTMLDialogElement_(value:HTMLDialogElement):void { }

	[JavascriptProperty(name="HTMLDirectoryElement")]
	/**
	*  @see randori.webkit.html.HTMLDirectoryElement
	*/
	public function get HTMLDirectoryElement_():HTMLDirectoryElement { return null; }
	public function set HTMLDirectoryElement_(value:HTMLDirectoryElement):void { }

	[JavascriptProperty(name="HTMLDivElement")]
	/**
	*  @see randori.webkit.html.HTMLDivElement
	*/
	public function get HTMLDivElement_():HTMLDivElement { return null; }
	public function set HTMLDivElement_(value:HTMLDivElement):void { }

	[JavascriptProperty(name="HTMLEmbedElement")]
	/**
	*  @see randori.webkit.html.HTMLEmbedElement
	*/
	public function get HTMLEmbedElement_():HTMLEmbedElement { return null; }
	public function set HTMLEmbedElement_(value:HTMLEmbedElement):void { }

	[JavascriptProperty(name="HTMLFieldSetElement")]
	/**
	*  @see randori.webkit.html.HTMLFieldSetElement
	*/
	public function get HTMLFieldSetElement_():HTMLFieldSetElement { return null; }
	public function set HTMLFieldSetElement_(value:HTMLFieldSetElement):void { }

	[JavascriptProperty(name="HTMLFontElement")]
	/**
	*  @see randori.webkit.html.HTMLFontElement
	*/
	public function get HTMLFontElement_():HTMLFontElement { return null; }
	public function set HTMLFontElement_(value:HTMLFontElement):void { }

	[JavascriptProperty(name="HTMLFormElement")]
	/**
	*  @see randori.webkit.html.HTMLFormElement
	*/
	public function get HTMLFormElement_():HTMLFormElement { return null; }
	public function set HTMLFormElement_(value:HTMLFormElement):void { }

	[JavascriptProperty(name="HTMLFrameElement")]
	/**
	*  @see randori.webkit.html.HTMLFrameElement
	*/
	public function get HTMLFrameElement_():HTMLFrameElement { return null; }
	public function set HTMLFrameElement_(value:HTMLFrameElement):void { }

	[JavascriptProperty(name="HTMLFrameSetElement")]
	/**
	*  @see randori.webkit.html.HTMLFrameSetElement
	*/
	public function get HTMLFrameSetElement_():HTMLFrameSetElement { return null; }
	public function set HTMLFrameSetElement_(value:HTMLFrameSetElement):void { }

	[JavascriptProperty(name="HTMLHRElement")]
	/**
	*  @see randori.webkit.html.HTMLHRElement
	*/
	public function get HTMLHRElement_():HTMLHRElement { return null; }
	public function set HTMLHRElement_(value:HTMLHRElement):void { }

	[JavascriptProperty(name="HTMLHeadElement")]
	/**
	*  @see randori.webkit.html.HTMLHeadElement
	*/
	public function get HTMLHeadElement_():HTMLHeadElement { return null; }
	public function set HTMLHeadElement_(value:HTMLHeadElement):void { }

	[JavascriptProperty(name="HTMLHeadingElement")]
	/**
	*  @see randori.webkit.html.HTMLHeadingElement
	*/
	public function get HTMLHeadingElement_():HTMLHeadingElement { return null; }
	public function set HTMLHeadingElement_(value:HTMLHeadingElement):void { }

	[JavascriptProperty(name="HTMLHtmlElement")]
	/**
	*  @see randori.webkit.html.HTMLHtmlElement
	*/
	public function get HTMLHtmlElement_():HTMLHtmlElement { return null; }
	public function set HTMLHtmlElement_(value:HTMLHtmlElement):void { }

	[JavascriptProperty(name="HTMLIFrameElement")]
	/**
	*  @see randori.webkit.html.HTMLIFrameElement
	*/
	public function get HTMLIFrameElement_():HTMLIFrameElement { return null; }
	public function set HTMLIFrameElement_(value:HTMLIFrameElement):void { }

	[JavascriptProperty(name="HTMLImageElement")]
	/**
	*  @see randori.webkit.html.HTMLImageElement
	*/
	public function get HTMLImageElement_():HTMLImageElement { return null; }
	public function set HTMLImageElement_(value:HTMLImageElement):void { }

	[JavascriptProperty(name="HTMLInputElement")]
	/**
	*  @see randori.webkit.html.HTMLInputElement
	*/
	public function get HTMLInputElement_():HTMLInputElement { return null; }
	public function set HTMLInputElement_(value:HTMLInputElement):void { }

	[JavascriptProperty(name="HTMLKeygenElement")]
	/**
	*  @see randori.webkit.html.HTMLKeygenElement
	*/
	public function get HTMLKeygenElement_():HTMLKeygenElement { return null; }
	public function set HTMLKeygenElement_(value:HTMLKeygenElement):void { }

	[JavascriptProperty(name="HTMLLIElement")]
	/**
	*  @see randori.webkit.html.HTMLLIElement
	*/
	public function get HTMLLIElement_():HTMLLIElement { return null; }
	public function set HTMLLIElement_(value:HTMLLIElement):void { }

	[JavascriptProperty(name="HTMLLabelElement")]
	/**
	*  @see randori.webkit.html.HTMLLabelElement
	*/
	public function get HTMLLabelElement_():HTMLLabelElement { return null; }
	public function set HTMLLabelElement_(value:HTMLLabelElement):void { }

	[JavascriptProperty(name="HTMLLegendElement")]
	/**
	*  @see randori.webkit.html.HTMLLegendElement
	*/
	public function get HTMLLegendElement_():HTMLLegendElement { return null; }
	public function set HTMLLegendElement_(value:HTMLLegendElement):void { }

	[JavascriptProperty(name="HTMLLinkElement")]
	/**
	*  @see randori.webkit.html.HTMLLinkElement
	*/
	public function get HTMLLinkElement_():HTMLLinkElement { return null; }
	public function set HTMLLinkElement_(value:HTMLLinkElement):void { }

	[JavascriptProperty(name="HTMLMapElement")]
	/**
	*  @see randori.webkit.html.HTMLMapElement
	*/
	public function get HTMLMapElement_():HTMLMapElement { return null; }
	public function set HTMLMapElement_(value:HTMLMapElement):void { }

	[JavascriptProperty(name="HTMLMarqueeElement")]
	/**
	*  @see randori.webkit.html.HTMLMarqueeElement
	*/
	public function get HTMLMarqueeElement_():HTMLMarqueeElement { return null; }
	public function set HTMLMarqueeElement_(value:HTMLMarqueeElement):void { }

	[JavascriptProperty(name="HTMLMenuElement")]
	/**
	*  @see randori.webkit.html.HTMLMenuElement
	*/
	public function get HTMLMenuElement_():HTMLMenuElement { return null; }
	public function set HTMLMenuElement_(value:HTMLMenuElement):void { }

	[JavascriptProperty(name="HTMLMetaElement")]
	/**
	*  @see randori.webkit.html.HTMLMetaElement
	*/
	public function get HTMLMetaElement_():HTMLMetaElement { return null; }
	public function set HTMLMetaElement_(value:HTMLMetaElement):void { }

	[JavascriptProperty(name="HTMLMeterElement")]
	/**
	*  @see randori.webkit.html.HTMLMeterElement
	*/
	public function get HTMLMeterElement_():HTMLMeterElement { return null; }
	public function set HTMLMeterElement_(value:HTMLMeterElement):void { }

	[JavascriptProperty(name="HTMLModElement")]
	/**
	*  @see randori.webkit.html.HTMLModElement
	*/
	public function get HTMLModElement_():HTMLModElement { return null; }
	public function set HTMLModElement_(value:HTMLModElement):void { }

	[JavascriptProperty(name="HTMLOListElement")]
	/**
	*  @see randori.webkit.html.HTMLOListElement
	*/
	public function get HTMLOListElement_():HTMLOListElement { return null; }
	public function set HTMLOListElement_(value:HTMLOListElement):void { }

	[JavascriptProperty(name="HTMLObjectElement")]
	/**
	*  @see randori.webkit.html.HTMLObjectElement
	*/
	public function get HTMLObjectElement_():HTMLObjectElement { return null; }
	public function set HTMLObjectElement_(value:HTMLObjectElement):void { }

	[JavascriptProperty(name="HTMLOptGroupElement")]
	/**
	*  @see randori.webkit.html.HTMLOptGroupElement
	*/
	public function get HTMLOptGroupElement_():HTMLOptGroupElement { return null; }
	public function set HTMLOptGroupElement_(value:HTMLOptGroupElement):void { }

	[JavascriptProperty(name="HTMLOptionElement")]
	/**
	*  @see randori.webkit.html.HTMLOptionElement
	*/
	public function get HTMLOptionElement_():HTMLOptionElement { return null; }
	public function set HTMLOptionElement_(value:HTMLOptionElement):void { }

	[JavascriptProperty(name="HTMLOutputElement")]
	/**
	*  @see randori.webkit.html.HTMLOutputElement
	*/
	public function get HTMLOutputElement_():HTMLOutputElement { return null; }
	public function set HTMLOutputElement_(value:HTMLOutputElement):void { }

	[JavascriptProperty(name="HTMLParagraphElement")]
	/**
	*  @see randori.webkit.html.HTMLParagraphElement
	*/
	public function get HTMLParagraphElement_():HTMLParagraphElement { return null; }
	public function set HTMLParagraphElement_(value:HTMLParagraphElement):void { }

	[JavascriptProperty(name="HTMLParamElement")]
	/**
	*  @see randori.webkit.html.HTMLParamElement
	*/
	public function get HTMLParamElement_():HTMLParamElement { return null; }
	public function set HTMLParamElement_(value:HTMLParamElement):void { }

	[JavascriptProperty(name="HTMLPreElement")]
	/**
	*  @see randori.webkit.html.HTMLPreElement
	*/
	public function get HTMLPreElement_():HTMLPreElement { return null; }
	public function set HTMLPreElement_(value:HTMLPreElement):void { }

	[JavascriptProperty(name="HTMLProgressElement")]
	/**
	*  @see randori.webkit.html.HTMLProgressElement
	*/
	public function get HTMLProgressElement_():HTMLProgressElement { return null; }
	public function set HTMLProgressElement_(value:HTMLProgressElement):void { }

	[JavascriptProperty(name="HTMLQuoteElement")]
	/**
	*  @see randori.webkit.html.HTMLQuoteElement
	*/
	public function get HTMLQuoteElement_():HTMLQuoteElement { return null; }
	public function set HTMLQuoteElement_(value:HTMLQuoteElement):void { }

	[JavascriptProperty(name="HTMLScriptElement")]
	/**
	*  @see randori.webkit.html.HTMLScriptElement
	*/
	public function get HTMLScriptElement_():HTMLScriptElement { return null; }
	public function set HTMLScriptElement_(value:HTMLScriptElement):void { }

	/**
	*  @see randori.webkit.html.HTMLSelectElement
	*/
	public function get HTMLSelectElement():Object { return null; }
	public function set HTMLSelectElement(value:Object):void { }

	[JavascriptProperty(name="HTMLSpanElement")]
	/**
	*  @see randori.webkit.html.HTMLSpanElement
	*/
	public function get HTMLSpanElement_():HTMLSpanElement { return null; }
	public function set HTMLSpanElement_(value:HTMLSpanElement):void { }

	[JavascriptProperty(name="HTMLStyleElement")]
	/**
	*  @see randori.webkit.html.HTMLStyleElement
	*/
	public function get HTMLStyleElement_():HTMLStyleElement { return null; }
	public function set HTMLStyleElement_(value:HTMLStyleElement):void { }

	[JavascriptProperty(name="HTMLTableCaptionElement")]
	/**
	*  @see randori.webkit.html.HTMLTableCaptionElement
	*/
	public function get HTMLTableCaptionElement_():HTMLTableCaptionElement { return null; }
	public function set HTMLTableCaptionElement_(value:HTMLTableCaptionElement):void { }

	[JavascriptProperty(name="HTMLTableCellElement")]
	/**
	*  @see randori.webkit.html.HTMLTableCellElement
	*/
	public function get HTMLTableCellElement_():HTMLTableCellElement { return null; }
	public function set HTMLTableCellElement_(value:HTMLTableCellElement):void { }

	[JavascriptProperty(name="HTMLTableColElement")]
	/**
	*  @see randori.webkit.html.HTMLTableColElement
	*/
	public function get HTMLTableColElement_():HTMLTableColElement { return null; }
	public function set HTMLTableColElement_(value:HTMLTableColElement):void { }

	[JavascriptProperty(name="HTMLTableElement")]
	/**
	*  @see randori.webkit.html.HTMLTableElement
	*/
	public function get HTMLTableElement_():HTMLTableElement { return null; }
	public function set HTMLTableElement_(value:HTMLTableElement):void { }

	[JavascriptProperty(name="HTMLTableRowElement")]
	/**
	*  @see randori.webkit.html.HTMLTableRowElement
	*/
	public function get HTMLTableRowElement_():HTMLTableRowElement { return null; }
	public function set HTMLTableRowElement_(value:HTMLTableRowElement):void { }

	[JavascriptProperty(name="HTMLTableSectionElement")]
	/**
	*  @see randori.webkit.html.HTMLTableSectionElement
	*/
	public function get HTMLTableSectionElement_():HTMLTableSectionElement { return null; }
	public function set HTMLTableSectionElement_(value:HTMLTableSectionElement):void { }

	[JavascriptProperty(name="HTMLTemplateElement")]
	/**
	*  @see randori.webkit.html.HTMLTemplateElement
	*/
	public function get HTMLTemplateElement_():HTMLTemplateElement { return null; }
	public function set HTMLTemplateElement_(value:HTMLTemplateElement):void { }

	[JavascriptProperty(name="HTMLTextAreaElement")]
	/**
	*  @see randori.webkit.html.HTMLTextAreaElement
	*/
	public function get HTMLTextAreaElement_():HTMLTextAreaElement { return null; }
	public function set HTMLTextAreaElement_(value:HTMLTextAreaElement):void { }

	[JavascriptProperty(name="HTMLTitleElement")]
	/**
	*  @see randori.webkit.html.HTMLTitleElement
	*/
	public function get HTMLTitleElement_():HTMLTitleElement { return null; }
	public function set HTMLTitleElement_(value:HTMLTitleElement):void { }

	[JavascriptProperty(name="HTMLUListElement")]
	/**
	*  @see randori.webkit.html.HTMLUListElement
	*/
	public function get HTMLUListElement_():HTMLUListElement { return null; }
	public function set HTMLUListElement_(value:HTMLUListElement):void { }

	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get HTMLCollection():Object { return null; }
	public function set HTMLCollection(value:Object):void { }

	/**
	*  @see randori.webkit.html.HTMLAllCollection
	*/
	public function get HTMLAllCollection():Object { return null; }
	public function set HTMLAllCollection(value:Object):void { }

	/**
	*  @see randori.webkit.html.HTMLFormControlsCollection
	*/
	public function get HTMLFormControlsCollection():Object { return null; }
	public function set HTMLFormControlsCollection(value:Object):void { }

	[JavascriptProperty(name="HTMLOptionsCollection")]
	/**
	*  @see randori.webkit.html.HTMLOptionsCollection
	*/
	public function get HTMLOptionsCollection_():HTMLOptionsCollection { return null; }
	public function set HTMLOptionsCollection_(value:HTMLOptionsCollection):void { }

	/**
	*  @see randori.webkit.html.HTMLPropertiesCollection
	*/
	public function get HTMLPropertiesCollection():Object { return null; }
	public function set HTMLPropertiesCollection(value:Object):void { }

	[JavascriptProperty(name="HTMLUnknownElement")]
	/**
	*  @see randori.webkit.html.HTMLUnknownElement
	*/
	public function get HTMLUnknownElement_():HTMLUnknownElement { return null; }
	public function set HTMLUnknownElement_(value:HTMLUnknownElement):void { }

	/**
	*  @see randori.webkit.html.HTMLImageElement
	*/
	public function get Image():HTMLImageElement { return null; }
	public function set Image(value:HTMLImageElement):void { }

	/**
	*  @see randori.webkit.html.HTMLOptionElement
	*/
	public function get Option():HTMLOptionElement { return null; }
	public function set Option(value:HTMLOptionElement):void { }

	[JavascriptProperty(name="MediaKeyError")]
	/**
	*  @see randori.webkit.html.MediaKeyError
	*/
	public function get MediaKeyError_():MediaKeyError { return null; }
	public function set MediaKeyError_(value:MediaKeyError):void { }

	[JavascriptProperty(name="MediaKeyEvent")]
	/**
	*  @see randori.webkit.html.MediaKeyEvent
	*/
	public function get MediaKeyEvent_():MediaKeyEvent { return null; }
	public function set MediaKeyEvent_(value:MediaKeyEvent):void { }

	[JavascriptProperty(name="HTMLTrackElement")]
	/**
	*  @see randori.webkit.html.HTMLTrackElement
	*/
	public function get HTMLTrackElement_():HTMLTrackElement { return null; }
	public function set HTMLTrackElement_(value:HTMLTrackElement):void { }

	[JavascriptProperty(name="TextTrack")]
	/**
	*  @see randori.webkit.html.track.TextTrack
	*/
	public function get TextTrack_():TextTrack { return null; }
	public function set TextTrack_(value:TextTrack):void { }

	[JavascriptProperty(name="TextTrackCue")]
	/**
	*  @see randori.webkit.html.track.TextTrackCue
	*/
	public function get TextTrackCue_():TextTrackCue { return null; }
	public function set TextTrackCue_(value:TextTrackCue):void { }

	/**
	*  @see randori.webkit.html.track.TextTrackCueList
	*/
	public function get TextTrackCueList():Object { return null; }
	public function set TextTrackCueList(value:Object):void { }

	/**
	*  @see randori.webkit.html.track.TextTrackList
	*/
	public function get TextTrackList():Object { return null; }
	public function set TextTrackList(value:Object):void { }

	[JavascriptProperty(name="TrackEvent")]
	/**
	*  @see randori.webkit.html.track.TrackEvent
	*/
	public function get TrackEvent_():TrackEvent { return null; }
	public function set TrackEvent_(value:TrackEvent):void { }

	/**
	*  @see randori.webkit.html.HTMLAudioElement
	*/
	public function get Audio():HTMLAudioElement { return null; }
	public function set Audio(value:HTMLAudioElement):void { }

	[JavascriptProperty(name="HTMLAudioElement")]
	/**
	*  @see randori.webkit.html.HTMLAudioElement
	*/
	public function get HTMLAudioElement_():HTMLAudioElement { return null; }
	public function set HTMLAudioElement_(value:HTMLAudioElement):void { }

	[JavascriptProperty(name="HTMLMediaElement")]
	/**
	*  @see randori.webkit.html.HTMLMediaElement
	*/
	public function get HTMLMediaElement_():HTMLMediaElement { return null; }
	public function set HTMLMediaElement_(value:HTMLMediaElement):void { }

	[JavascriptProperty(name="HTMLVideoElement")]
	/**
	*  @see randori.webkit.html.HTMLVideoElement
	*/
	public function get HTMLVideoElement_():HTMLVideoElement { return null; }
	public function set HTMLVideoElement_(value:HTMLVideoElement):void { }

	[JavascriptProperty(name="MediaError")]
	/**
	*  @see randori.webkit.html.MediaError
	*/
	public function get MediaError_():MediaError { return null; }
	public function set MediaError_(value:MediaError):void { }

	[JavascriptProperty(name="TimeRanges")]
	/**
	*  @see randori.webkit.html.TimeRanges
	*/
	public function get TimeRanges_():TimeRanges { return null; }
	public function set TimeRanges_(value:TimeRanges):void { }

	[JavascriptProperty(name="HTMLSourceElement")]
	/**
	*  @see randori.webkit.html.HTMLSourceElement
	*/
	public function get HTMLSourceElement_():HTMLSourceElement { return null; }
	public function set HTMLSourceElement_(value:HTMLSourceElement):void { }

	[JavascriptProperty(name="MediaController")]
	/**
	*  @see randori.webkit.html.MediaController
	*/
	public function get MediaController_():MediaController { return null; }
	public function set MediaController_(value:MediaController):void { }

	[JavascriptProperty(name="HTMLIntentElement")]
	/**
	*  @see randori.webkit.html.HTMLIntentElement
	*/
	public function get HTMLIntentElement_():HTMLIntentElement { return null; }
	public function set HTMLIntentElement_(value:HTMLIntentElement):void { }

	[JavascriptProperty(name="CanvasPattern")]
	/**
	*  @see randori.webkit.html.canvas.CanvasPattern
	*/
	public function get CanvasPattern_():CanvasPattern { return null; }
	public function set CanvasPattern_(value:CanvasPattern):void { }

	[JavascriptProperty(name="CanvasGradient")]
	/**
	*  @see randori.webkit.html.canvas.CanvasGradient
	*/
	public function get CanvasGradient_():CanvasGradient { return null; }
	public function set CanvasGradient_(value:CanvasGradient):void { }

	[JavascriptProperty(name="CanvasRenderingContext2D")]
	/**
	*  @see randori.webkit.html.canvas.CanvasRenderingContext2D
	*/
	public function get CanvasRenderingContext2D_():CanvasRenderingContext2D { return null; }
	public function set CanvasRenderingContext2D_(value:CanvasRenderingContext2D):void { }

	[JavascriptProperty(name="ImageData")]
	/**
	*  @see randori.webkit.html.ImageData
	*/
	public function get ImageData_():ImageData { return null; }
	public function set ImageData_(value:ImageData):void { }

	[JavascriptProperty(name="TextMetrics")]
	/**
	*  @see randori.webkit.html.TextMetrics
	*/
	public function get TextMetrics_():TextMetrics { return null; }
	public function set TextMetrics_(value:TextMetrics):void { }

	[JavascriptProperty(name="WebGLActiveInfo")]
	/**
	*  @see randori.webkit.html.canvas.WebGLActiveInfo
	*/
	public function get WebGLActiveInfo_():WebGLActiveInfo { return null; }
	public function set WebGLActiveInfo_(value:WebGLActiveInfo):void { }

	[JavascriptProperty(name="WebGLBuffer")]
	/**
	*  @see randori.webkit.html.canvas.WebGLBuffer
	*/
	public function get WebGLBuffer_():WebGLBuffer { return null; }
	public function set WebGLBuffer_(value:WebGLBuffer):void { }

	[JavascriptProperty(name="WebGLFramebuffer")]
	/**
	*  @see randori.webkit.html.canvas.WebGLFramebuffer
	*/
	public function get WebGLFramebuffer_():WebGLFramebuffer { return null; }
	public function set WebGLFramebuffer_(value:WebGLFramebuffer):void { }

	[JavascriptProperty(name="WebGLProgram")]
	/**
	*  @see randori.webkit.html.canvas.WebGLProgram
	*/
	public function get WebGLProgram_():WebGLProgram { return null; }
	public function set WebGLProgram_(value:WebGLProgram):void { }

	[JavascriptProperty(name="WebGLRenderbuffer")]
	/**
	*  @see randori.webkit.html.canvas.WebGLRenderbuffer
	*/
	public function get WebGLRenderbuffer_():WebGLRenderbuffer { return null; }
	public function set WebGLRenderbuffer_(value:WebGLRenderbuffer):void { }

	[JavascriptProperty(name="WebGLRenderingContext")]
	/**
	*  @see randori.webkit.html.canvas.WebGLRenderingContext
	*/
	public function get WebGLRenderingContext_():WebGLRenderingContext { return null; }
	public function set WebGLRenderingContext_(value:WebGLRenderingContext):void { }

	[JavascriptProperty(name="WebGLShader")]
	/**
	*  @see randori.webkit.html.canvas.WebGLShader
	*/
	public function get WebGLShader_():WebGLShader { return null; }
	public function set WebGLShader_(value:WebGLShader):void { }

	[JavascriptProperty(name="WebGLShaderPrecisionFormat")]
	/**
	*  @see randori.webkit.html.canvas.WebGLShaderPrecisionFormat
	*/
	public function get WebGLShaderPrecisionFormat_():WebGLShaderPrecisionFormat { return null; }
	public function set WebGLShaderPrecisionFormat_(value:WebGLShaderPrecisionFormat):void { }

	[JavascriptProperty(name="WebGLTexture")]
	/**
	*  @see randori.webkit.html.canvas.WebGLTexture
	*/
	public function get WebGLTexture_():WebGLTexture { return null; }
	public function set WebGLTexture_(value:WebGLTexture):void { }

	[JavascriptProperty(name="WebGLUniformLocation")]
	/**
	*  @see randori.webkit.html.canvas.WebGLUniformLocation
	*/
	public function get WebGLUniformLocation_():WebGLUniformLocation { return null; }
	public function set WebGLUniformLocation_(value:WebGLUniformLocation):void { }

	[JavascriptProperty(name="DOMStringMap")]
	/**
	*  @see randori.webkit.dom.DOMStringMap
	*/
	public function get DOMStringMap_():DOMStringMap { return null; }
	public function set DOMStringMap_(value:DOMStringMap):void { }

	[JavascriptProperty(name="ArrayBuffer")]
	/**
	*  @see randori.webkit.html.canvas.ArrayBuffer
	*/
	public function get ArrayBuffer_():ArrayBuffer { return null; }
	public function set ArrayBuffer_(value:ArrayBuffer):void { }

	[JavascriptProperty(name="ArrayBufferView")]
	/**
	*  @see randori.webkit.html.canvas.ArrayBufferView
	*/
	public function get ArrayBufferView_():ArrayBufferView { return null; }
	public function set ArrayBufferView_(value:ArrayBufferView):void { }

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
	*  @see randori.webkit.html.canvas.Uint8ClampedArray
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

	/**
	*  @see randori.webkit.dom.DomEvent
	*/
	public function get Event():DomEvent { return null; }
	public function set Event(value:DomEvent):void { }

	[JavascriptProperty(name="BeforeLoadEvent")]
	/**
	*  @see randori.webkit.dom.BeforeLoadEvent
	*/
	public function get BeforeLoadEvent_():BeforeLoadEvent { return null; }
	public function set BeforeLoadEvent_(value:BeforeLoadEvent):void { }

	[JavascriptProperty(name="CompositionEvent")]
	/**
	*  @see randori.webkit.dom.CompositionEvent
	*/
	public function get CompositionEvent_():CompositionEvent { return null; }
	public function set CompositionEvent_(value:CompositionEvent):void { }

	[JavascriptProperty(name="CustomEvent")]
	/**
	*  @see randori.webkit.dom.CustomEvent
	*/
	public function get CustomEvent_():CustomEvent { return null; }
	public function set CustomEvent_(value:CustomEvent):void { }

	[JavascriptProperty(name="ErrorEvent")]
	/**
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get ErrorEvent_():ErrorEvent { return null; }
	public function set ErrorEvent_(value:ErrorEvent):void { }

	[JavascriptProperty(name="HashChangeEvent")]
	/**
	*  @see randori.webkit.dom.HashChangeEvent
	*/
	public function get HashChangeEvent_():HashChangeEvent { return null; }
	public function set HashChangeEvent_(value:HashChangeEvent):void { }

	[JavascriptProperty(name="KeyboardEvent")]
	/**
	*  @see randori.webkit.dom.KeyboardEvent
	*/
	public function get KeyboardEvent_():KeyboardEvent { return null; }
	public function set KeyboardEvent_(value:KeyboardEvent):void { }

	[JavascriptProperty(name="MessageEvent")]
	/**
	*  @see randori.webkit.dom.MessageEvent
	*/
	public function get MessageEvent_():MessageEvent { return null; }
	public function set MessageEvent_(value:MessageEvent):void { }

	[JavascriptProperty(name="MouseEvent")]
	/**
	*  @see randori.webkit.dom.MouseEvent
	*/
	public function get MouseEvent_():MouseEvent { return null; }
	public function set MouseEvent_(value:MouseEvent):void { }

	[JavascriptProperty(name="MutationEvent")]
	/**
	*  @see randori.webkit.dom.MutationEvent
	*/
	public function get MutationEvent_():MutationEvent { return null; }
	public function set MutationEvent_(value:MutationEvent):void { }

	[JavascriptProperty(name="OverflowEvent")]
	/**
	*  @see randori.webkit.dom.OverflowEvent
	*/
	public function get OverflowEvent_():OverflowEvent { return null; }
	public function set OverflowEvent_(value:OverflowEvent):void { }

	[JavascriptProperty(name="PopStateEvent")]
	/**
	*  @see randori.webkit.dom.PopStateEvent
	*/
	public function get PopStateEvent_():PopStateEvent { return null; }
	public function set PopStateEvent_(value:PopStateEvent):void { }

	[JavascriptProperty(name="PageTransitionEvent")]
	/**
	*  @see randori.webkit.dom.PageTransitionEvent
	*/
	public function get PageTransitionEvent_():PageTransitionEvent { return null; }
	public function set PageTransitionEvent_(value:PageTransitionEvent):void { }

	[JavascriptProperty(name="ProgressEvent")]
	/**
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public function get ProgressEvent_():ProgressEvent { return null; }
	public function set ProgressEvent_(value:ProgressEvent):void { }

	[JavascriptProperty(name="TextEvent")]
	/**
	*  @see randori.webkit.dom.TextEvent
	*/
	public function get TextEvent_():TextEvent { return null; }
	public function set TextEvent_(value:TextEvent):void { }

	[JavascriptProperty(name="TransitionEvent")]
	/**
	*  @see randori.webkit.dom.TransitionEvent
	*/
	public function get TransitionEvent_():TransitionEvent { return null; }
	public function set TransitionEvent_(value:TransitionEvent):void { }

	[JavascriptProperty(name="UIEvent")]
	/**
	*  @see randori.webkit.dom.UIEvent
	*/
	public function get UIEvent_():UIEvent { return null; }
	public function set UIEvent_(value:UIEvent):void { }

	[JavascriptProperty(name="WheelEvent")]
	/**
	*  @see randori.webkit.dom.WheelEvent
	*/
	public function get WheelEvent_():WheelEvent { return null; }
	public function set WheelEvent_(value:WheelEvent):void { }

	[JavascriptProperty(name="XMLHttpRequestProgressEvent")]
	/**
	*  @see randori.webkit.xml.XMLHttpRequestProgressEvent
	*/
	public function get XMLHttpRequestProgressEvent_():XMLHttpRequestProgressEvent { return null; }
	public function set XMLHttpRequestProgressEvent_(value:XMLHttpRequestProgressEvent):void { }

	[JavascriptProperty(name="DeviceMotionEvent")]
	/**
	*  @see randori.webkit.dom.DeviceMotionEvent
	*/
	public function get DeviceMotionEvent_():DeviceMotionEvent { return null; }
	public function set DeviceMotionEvent_(value:DeviceMotionEvent):void { }

	[JavascriptProperty(name="DeviceOrientationEvent")]
	/**
	*  @see randori.webkit.dom.DeviceOrientationEvent
	*/
	public function get DeviceOrientationEvent_():DeviceOrientationEvent { return null; }
	public function set DeviceOrientationEvent_(value:DeviceOrientationEvent):void { }

	[JavascriptProperty(name="Touch")]
	/**
	*  @see randori.webkit.dom.Touch
	*/
	public function get Touch_():Touch { return null; }
	public function set Touch_(value:Touch):void { }

	[JavascriptProperty(name="TouchEvent")]
	/**
	*  @see randori.webkit.dom.TouchEvent
	*/
	public function get TouchEvent_():TouchEvent { return null; }
	public function set TouchEvent_(value:TouchEvent):void { }

	/**
	*  @see randori.webkit.dom.TouchList
	*/
	public function get TouchList():Object { return null; }
	public function set TouchList(value:Object):void { }

	[JavascriptProperty(name="StorageEvent")]
	/**
	*  @see randori.webkit.storage.StorageEvent
	*/
	public function get StorageEvent_():StorageEvent { return null; }
	public function set StorageEvent_(value:StorageEvent):void { }

	[JavascriptProperty(name="SpeechInputEvent")]
	/**
	*  @see randori.webkit.page.SpeechInputEvent
	*/
	public function get SpeechInputEvent_():SpeechInputEvent { return null; }
	public function set SpeechInputEvent_(value:SpeechInputEvent):void { }

	[JavascriptProperty(name="WebGLContextEvent")]
	/**
	*  @see randori.webkit.html.canvas.WebGLContextEvent
	*/
	public function get WebGLContextEvent_():WebGLContextEvent { return null; }
	public function set WebGLContextEvent_(value:WebGLContextEvent):void { }

	[JavascriptProperty(name="DeviceProximityEvent")]
	/**
	*  @see randori.webkit.modules.proximity.DeviceProximityEvent
	*/
	public function get DeviceProximityEvent_():DeviceProximityEvent { return null; }
	public function set DeviceProximityEvent_(value:DeviceProximityEvent):void { }

	[JavascriptProperty(name="AutocompleteErrorEvent")]
	/**
	*  @see randori.webkit.dom.AutocompleteErrorEvent
	*/
	public function get AutocompleteErrorEvent_():AutocompleteErrorEvent { return null; }
	public function set AutocompleteErrorEvent_(value:AutocompleteErrorEvent):void { }

	public function get EventException():Object { return null; }
	public function set EventException(value:Object):void { }

	[JavascriptProperty(name="Clipboard")]
	/**
	*  @see randori.webkit.dom.Clipboard
	*/
	public function get Clipboard_():Clipboard { return null; }
	public function set Clipboard_(value:Clipboard):void { }

	[JavascriptProperty(name="Worker")]
	/**
	*  @see randori.webkit.workers.Worker
	*/
	public function get Worker_():Worker { return null; }
	public function set Worker_(value:Worker):void { }

	[JavascriptProperty(name="SharedWorker")]
	/**
	*  @see randori.webkit.workers.SharedWorker
	*/
	public function get SharedWorker_():SharedWorker { return null; }
	public function set SharedWorker_(value:SharedWorker):void { }

	[JavascriptProperty(name="File")]
	/**
	*  @see randori.webkit.fileapi.File
	*/
	public function get File_():File { return null; }
	public function set File_(value:File):void { }

	/**
	*  @see randori.webkit.fileapi.FileList
	*/
	public function get FileList():Object { return null; }
	public function set FileList(value:Object):void { }

	[JavascriptProperty(name="Blob")]
	/**
	*  @see randori.webkit.fileapi.Blob
	*/
	public function get Blob_():Blob { return null; }
	public function set Blob_(value:Blob):void { }

	[JavascriptProperty(name="NodeFilter")]
	/**
	*  @see randori.webkit.dom.NodeFilter
	*/
	public function get NodeFilter_():NodeFilter { return null; }
	public function set NodeFilter_(value:NodeFilter):void { }

	[JavascriptProperty(name="Range")]
	/**
	*  @see randori.webkit.dom.Range
	*/
	public function get Range_():Range { return null; }
	public function set Range_(value:Range):void { }

	public function get RangeException():Object { return null; }
	public function set RangeException(value:Object):void { }

	[JavascriptProperty(name="EventSource")]
	/**
	*  @see randori.webkit.page.EventSource
	*/
	public function get EventSource_():EventSource { return null; }
	public function set EventSource_(value:EventSource):void { }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public function get XMLDocument():Document { return null; }
	public function set XMLDocument(value:Document):void { }

	[JavascriptProperty(name="DOMParser")]
	/**
	*  @see randori.webkit.xml.DOMParser
	*/
	public function get DOMParser_():DOMParser { return null; }
	public function set DOMParser_(value:DOMParser):void { }

	[JavascriptProperty(name="XMLSerializer")]
	/**
	*  @see randori.webkit.xml.XMLSerializer
	*/
	public function get XMLSerializer_():XMLSerializer { return null; }
	public function set XMLSerializer_(value:XMLSerializer):void { }

	[JavascriptProperty(name="XMLHttpRequest")]
	/**
	*  @see randori.webkit.xml.XMLHttpRequest
	*/
	public function get XMLHttpRequest_():XMLHttpRequest { return null; }
	public function set XMLHttpRequest_(value:XMLHttpRequest):void { }

	[JavascriptProperty(name="XMLHttpRequestUpload")]
	/**
	*  @see randori.webkit.xml.XMLHttpRequestUpload
	*/
	public function get XMLHttpRequestUpload_():XMLHttpRequestUpload { return null; }
	public function set XMLHttpRequestUpload_(value:XMLHttpRequestUpload):void { }

	public function get XMLHttpRequestException():Object { return null; }
	public function set XMLHttpRequestException(value:Object):void { }

	[JavascriptProperty(name="XSLTProcessor")]
	/**
	*  @see randori.webkit.xml.XSLTProcessor
	*/
	public function get XSLTProcessor_():XSLTProcessor { return null; }
	public function set XSLTProcessor_(value:XSLTProcessor):void { }

	[JavascriptProperty(name="MessagePort")]
	/**
	*  @see randori.webkit.dom.MessagePort
	*/
	public function get MessagePort_():MessagePort { return null; }
	public function set MessagePort_(value:MessagePort):void { }

	[JavascriptProperty(name="MessageChannel")]
	/**
	*  @see randori.webkit.dom.MessageChannel
	*/
	public function get MessageChannel_():MessageChannel { return null; }
	public function set MessageChannel_(value:MessageChannel):void { }

	/**
	*  @see randori.webkit.plugins.Plugin
	*/
	public function get Plugin():Object { return null; }
	public function set Plugin(value:Object):void { }

	/**
	*  @see randori.webkit.plugins.PluginArray
	*/
	public function get PluginArray():Object { return null; }
	public function set PluginArray(value:Object):void { }

	[JavascriptProperty(name="MimeType")]
	/**
	*  @see randori.webkit.plugins.MimeType
	*/
	public function get MimeType_():MimeType { return null; }
	public function set MimeType_(value:MimeType):void { }

	/**
	*  @see randori.webkit.plugins.MimeTypeArray
	*/
	public function get MimeTypeArray():Object { return null; }
	public function set MimeTypeArray(value:Object):void { }

	[JavascriptProperty(name="ClientRect")]
	/**
	*  @see randori.webkit.dom.ClientRect
	*/
	public function get ClientRect_():ClientRect { return null; }
	public function set ClientRect_(value:ClientRect):void { }

	/**
	*  @see randori.webkit.dom.ClientRectList
	*/
	public function get ClientRectList():Object { return null; }
	public function set ClientRectList(value:Object):void { }

	[JavascriptProperty(name="Storage")]
	/**
	*  @see randori.webkit.storage.Storage
	*/
	public function get Storage_():Storage { return null; }
	public function set Storage_(value:Storage):void { }

	[JavascriptProperty(name="XPathEvaluator")]
	/**
	*  @see randori.webkit.xml.XPathEvaluator
	*/
	public function get XPathEvaluator_():XPathEvaluator { return null; }
	public function set XPathEvaluator_(value:XPathEvaluator):void { }

	[JavascriptProperty(name="XPathResult")]
	/**
	*  @see randori.webkit.xml.XPathResult
	*/
	public function get XPathResult_():XPathResult { return null; }
	public function set XPathResult_(value:XPathResult):void { }

	public function get XPathException():Object { return null; }
	public function set XPathException(value:Object):void { }

	[JavascriptProperty(name="SVGZoomEvent")]
	/**
	*  @see randori.webkit.svg.SVGZoomEvent
	*/
	public function get SVGZoomEvent_():SVGZoomEvent { return null; }
	public function set SVGZoomEvent_(value:SVGZoomEvent):void { }

	[JavascriptProperty(name="SVGAElement")]
	/**
	*  @see randori.webkit.svg.SVGAElement
	*/
	public function get SVGAElement_():SVGAElement { return null; }
	public function set SVGAElement_(value:SVGAElement):void { }

	[JavascriptProperty(name="SVGAngle")]
	/**
	*  @see randori.webkit.svg.SVGAngle
	*/
	public function get SVGAngle_():SVGAngle { return null; }
	public function set SVGAngle_(value:SVGAngle):void { }

	[JavascriptProperty(name="SVGAnimatedAngle")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedAngle
	*/
	public function get SVGAnimatedAngle_():SVGAnimatedAngle { return null; }
	public function set SVGAnimatedAngle_(value:SVGAnimatedAngle):void { }

	[JavascriptProperty(name="SVGAnimatedBoolean")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedBoolean
	*/
	public function get SVGAnimatedBoolean_():SVGAnimatedBoolean { return null; }
	public function set SVGAnimatedBoolean_(value:SVGAnimatedBoolean):void { }

	[JavascriptProperty(name="SVGAnimatedEnumeration")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedEnumeration
	*/
	public function get SVGAnimatedEnumeration_():SVGAnimatedEnumeration { return null; }
	public function set SVGAnimatedEnumeration_(value:SVGAnimatedEnumeration):void { }

	[JavascriptProperty(name="SVGAnimatedInteger")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedInteger
	*/
	public function get SVGAnimatedInteger_():SVGAnimatedInteger { return null; }
	public function set SVGAnimatedInteger_(value:SVGAnimatedInteger):void { }

	[JavascriptProperty(name="SVGAnimatedLength")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedLength
	*/
	public function get SVGAnimatedLength_():SVGAnimatedLength { return null; }
	public function set SVGAnimatedLength_(value:SVGAnimatedLength):void { }

	[JavascriptProperty(name="SVGAnimatedLengthList")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedLengthList
	*/
	public function get SVGAnimatedLengthList_():SVGAnimatedLengthList { return null; }
	public function set SVGAnimatedLengthList_(value:SVGAnimatedLengthList):void { }

	[JavascriptProperty(name="SVGAnimatedNumber")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedNumber
	*/
	public function get SVGAnimatedNumber_():SVGAnimatedNumber { return null; }
	public function set SVGAnimatedNumber_(value:SVGAnimatedNumber):void { }

	[JavascriptProperty(name="SVGAnimatedNumberList")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedNumberList
	*/
	public function get SVGAnimatedNumberList_():SVGAnimatedNumberList { return null; }
	public function set SVGAnimatedNumberList_(value:SVGAnimatedNumberList):void { }

	[JavascriptProperty(name="SVGAnimatedPreserveAspectRatio")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedPreserveAspectRatio
	*/
	public function get SVGAnimatedPreserveAspectRatio_():SVGAnimatedPreserveAspectRatio { return null; }
	public function set SVGAnimatedPreserveAspectRatio_(value:SVGAnimatedPreserveAspectRatio):void { }

	[JavascriptProperty(name="SVGAnimatedRect")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedRect
	*/
	public function get SVGAnimatedRect_():SVGAnimatedRect { return null; }
	public function set SVGAnimatedRect_(value:SVGAnimatedRect):void { }

	[JavascriptProperty(name="SVGAnimatedString")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedString
	*/
	public function get SVGAnimatedString_():SVGAnimatedString { return null; }
	public function set SVGAnimatedString_(value:SVGAnimatedString):void { }

	[JavascriptProperty(name="SVGAnimatedTransformList")]
	/**
	*  @see randori.webkit.svg.SVGAnimatedTransformList
	*/
	public function get SVGAnimatedTransformList_():SVGAnimatedTransformList { return null; }
	public function set SVGAnimatedTransformList_(value:SVGAnimatedTransformList):void { }

	[JavascriptProperty(name="SVGCircleElement")]
	/**
	*  @see randori.webkit.svg.SVGCircleElement
	*/
	public function get SVGCircleElement_():SVGCircleElement { return null; }
	public function set SVGCircleElement_(value:SVGCircleElement):void { }

	[JavascriptProperty(name="SVGClipPathElement")]
	/**
	*  @see randori.webkit.svg.SVGClipPathElement
	*/
	public function get SVGClipPathElement_():SVGClipPathElement { return null; }
	public function set SVGClipPathElement_(value:SVGClipPathElement):void { }

	[JavascriptProperty(name="SVGColor")]
	/**
	*  @see randori.webkit.svg.SVGColor
	*/
	public function get SVGColor_():SVGColor { return null; }
	public function set SVGColor_(value:SVGColor):void { }

	[JavascriptProperty(name="SVGCursorElement")]
	/**
	*  @see randori.webkit.svg.SVGCursorElement
	*/
	public function get SVGCursorElement_():SVGCursorElement { return null; }
	public function set SVGCursorElement_(value:SVGCursorElement):void { }

	[JavascriptProperty(name="SVGDefsElement")]
	/**
	*  @see randori.webkit.svg.SVGDefsElement
	*/
	public function get SVGDefsElement_():SVGDefsElement { return null; }
	public function set SVGDefsElement_(value:SVGDefsElement):void { }

	[JavascriptProperty(name="SVGDescElement")]
	/**
	*  @see randori.webkit.svg.SVGDescElement
	*/
	public function get SVGDescElement_():SVGDescElement { return null; }
	public function set SVGDescElement_(value:SVGDescElement):void { }

	[JavascriptProperty(name="SVGDocument")]
	/**
	*  @see randori.webkit.svg.SVGDocument
	*/
	public function get SVGDocument_():SVGDocument { return null; }
	public function set SVGDocument_(value:SVGDocument):void { }

	[JavascriptProperty(name="SVGElement")]
	/**
	*  @see randori.webkit.svg.SVGElement
	*/
	public function get SVGElement_():SVGElement { return null; }
	public function set SVGElement_(value:SVGElement):void { }

	[JavascriptProperty(name="SVGElementInstance")]
	/**
	*  @see randori.webkit.svg.SVGElementInstance
	*/
	public function get SVGElementInstance_():SVGElementInstance { return null; }
	public function set SVGElementInstance_(value:SVGElementInstance):void { }

	[JavascriptProperty(name="SVGElementInstanceList")]
	/**
	*  @see randori.webkit.svg.SVGElementInstanceList
	*/
	public function get SVGElementInstanceList_():SVGElementInstanceList { return null; }
	public function set SVGElementInstanceList_(value:SVGElementInstanceList):void { }

	[JavascriptProperty(name="SVGEllipseElement")]
	/**
	*  @see randori.webkit.svg.SVGEllipseElement
	*/
	public function get SVGEllipseElement_():SVGEllipseElement { return null; }
	public function set SVGEllipseElement_(value:SVGEllipseElement):void { }

	[JavascriptProperty(name="SVGForeignObjectElement")]
	/**
	*  @see randori.webkit.svg.SVGForeignObjectElement
	*/
	public function get SVGForeignObjectElement_():SVGForeignObjectElement { return null; }
	public function set SVGForeignObjectElement_(value:SVGForeignObjectElement):void { }

	public function get SVGException():Object { return null; }
	public function set SVGException(value:Object):void { }

	[JavascriptProperty(name="SVGGElement")]
	/**
	*  @see randori.webkit.svg.SVGGElement
	*/
	public function get SVGGElement_():SVGGElement { return null; }
	public function set SVGGElement_(value:SVGGElement):void { }

	[JavascriptProperty(name="SVGGradientElement")]
	/**
	*  @see randori.webkit.svg.SVGGradientElement
	*/
	public function get SVGGradientElement_():SVGGradientElement { return null; }
	public function set SVGGradientElement_(value:SVGGradientElement):void { }

	[JavascriptProperty(name="SVGImageElement")]
	/**
	*  @see randori.webkit.svg.SVGImageElement
	*/
	public function get SVGImageElement_():SVGImageElement { return null; }
	public function set SVGImageElement_(value:SVGImageElement):void { }

	[JavascriptProperty(name="SVGLength")]
	/**
	*  @see randori.webkit.svg.SVGLength
	*/
	public function get SVGLength_():SVGLength { return null; }
	public function set SVGLength_(value:SVGLength):void { }

	[JavascriptProperty(name="SVGLengthList")]
	/**
	*  @see randori.webkit.svg.SVGLengthList
	*/
	public function get SVGLengthList_():SVGLengthList { return null; }
	public function set SVGLengthList_(value:SVGLengthList):void { }

	[JavascriptProperty(name="SVGLinearGradientElement")]
	/**
	*  @see randori.webkit.svg.SVGLinearGradientElement
	*/
	public function get SVGLinearGradientElement_():SVGLinearGradientElement { return null; }
	public function set SVGLinearGradientElement_(value:SVGLinearGradientElement):void { }

	[JavascriptProperty(name="SVGLineElement")]
	/**
	*  @see randori.webkit.svg.SVGLineElement
	*/
	public function get SVGLineElement_():SVGLineElement { return null; }
	public function set SVGLineElement_(value:SVGLineElement):void { }

	[JavascriptProperty(name="SVGMarkerElement")]
	/**
	*  @see randori.webkit.svg.SVGMarkerElement
	*/
	public function get SVGMarkerElement_():SVGMarkerElement { return null; }
	public function set SVGMarkerElement_(value:SVGMarkerElement):void { }

	[JavascriptProperty(name="SVGMaskElement")]
	/**
	*  @see randori.webkit.svg.SVGMaskElement
	*/
	public function get SVGMaskElement_():SVGMaskElement { return null; }
	public function set SVGMaskElement_(value:SVGMaskElement):void { }

	[JavascriptProperty(name="SVGMatrix")]
	/**
	*  @see randori.webkit.svg.SVGMatrix
	*/
	public function get SVGMatrix_():SVGMatrix { return null; }
	public function set SVGMatrix_(value:SVGMatrix):void { }

	[JavascriptProperty(name="SVGMetadataElement")]
	/**
	*  @see randori.webkit.svg.SVGMetadataElement
	*/
	public function get SVGMetadataElement_():SVGMetadataElement { return null; }
	public function set SVGMetadataElement_(value:SVGMetadataElement):void { }

	[JavascriptProperty(name="SVGNumber")]
	/**
	*  @see randori.webkit.svg.SVGNumber
	*/
	public function get SVGNumber_():SVGNumber { return null; }
	public function set SVGNumber_(value:SVGNumber):void { }

	[JavascriptProperty(name="SVGNumberList")]
	/**
	*  @see randori.webkit.svg.SVGNumberList
	*/
	public function get SVGNumberList_():SVGNumberList { return null; }
	public function set SVGNumberList_(value:SVGNumberList):void { }

	[JavascriptProperty(name="SVGPaint")]
	/**
	*  @see randori.webkit.svg.SVGPaint
	*/
	public function get SVGPaint_():SVGPaint { return null; }
	public function set SVGPaint_(value:SVGPaint):void { }

	[JavascriptProperty(name="SVGPathElement")]
	/**
	*  @see randori.webkit.svg.SVGPathElement
	*/
	public function get SVGPathElement_():SVGPathElement { return null; }
	public function set SVGPathElement_(value:SVGPathElement):void { }

	[JavascriptProperty(name="SVGPathSeg")]
	/**
	*  @see randori.webkit.svg.SVGPathSeg
	*/
	public function get SVGPathSeg_():SVGPathSeg { return null; }
	public function set SVGPathSeg_(value:SVGPathSeg):void { }

	[JavascriptProperty(name="SVGPathSegArcAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegArcAbs
	*/
	public function get SVGPathSegArcAbs_():SVGPathSegArcAbs { return null; }
	public function set SVGPathSegArcAbs_(value:SVGPathSegArcAbs):void { }

	[JavascriptProperty(name="SVGPathSegArcRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegArcRel
	*/
	public function get SVGPathSegArcRel_():SVGPathSegArcRel { return null; }
	public function set SVGPathSegArcRel_(value:SVGPathSegArcRel):void { }

	[JavascriptProperty(name="SVGPathSegClosePath")]
	/**
	*  @see randori.webkit.svg.SVGPathSegClosePath
	*/
	public function get SVGPathSegClosePath_():SVGPathSegClosePath { return null; }
	public function set SVGPathSegClosePath_(value:SVGPathSegClosePath):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoCubicAbs
	*/
	public function get SVGPathSegCurvetoCubicAbs_():SVGPathSegCurvetoCubicAbs { return null; }
	public function set SVGPathSegCurvetoCubicAbs_(value:SVGPathSegCurvetoCubicAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoCubicRel
	*/
	public function get SVGPathSegCurvetoCubicRel_():SVGPathSegCurvetoCubicRel { return null; }
	public function set SVGPathSegCurvetoCubicRel_(value:SVGPathSegCurvetoCubicRel):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicSmoothAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoCubicSmoothAbs
	*/
	public function get SVGPathSegCurvetoCubicSmoothAbs_():SVGPathSegCurvetoCubicSmoothAbs { return null; }
	public function set SVGPathSegCurvetoCubicSmoothAbs_(value:SVGPathSegCurvetoCubicSmoothAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoCubicSmoothRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoCubicSmoothRel
	*/
	public function get SVGPathSegCurvetoCubicSmoothRel_():SVGPathSegCurvetoCubicSmoothRel { return null; }
	public function set SVGPathSegCurvetoCubicSmoothRel_(value:SVGPathSegCurvetoCubicSmoothRel):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoQuadraticAbs
	*/
	public function get SVGPathSegCurvetoQuadraticAbs_():SVGPathSegCurvetoQuadraticAbs { return null; }
	public function set SVGPathSegCurvetoQuadraticAbs_(value:SVGPathSegCurvetoQuadraticAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoQuadraticRel
	*/
	public function get SVGPathSegCurvetoQuadraticRel_():SVGPathSegCurvetoQuadraticRel { return null; }
	public function set SVGPathSegCurvetoQuadraticRel_(value:SVGPathSegCurvetoQuadraticRel):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticSmoothAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoQuadraticSmoothAbs
	*/
	public function get SVGPathSegCurvetoQuadraticSmoothAbs_():SVGPathSegCurvetoQuadraticSmoothAbs { return null; }
	public function set SVGPathSegCurvetoQuadraticSmoothAbs_(value:SVGPathSegCurvetoQuadraticSmoothAbs):void { }

	[JavascriptProperty(name="SVGPathSegCurvetoQuadraticSmoothRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegCurvetoQuadraticSmoothRel
	*/
	public function get SVGPathSegCurvetoQuadraticSmoothRel_():SVGPathSegCurvetoQuadraticSmoothRel { return null; }
	public function set SVGPathSegCurvetoQuadraticSmoothRel_(value:SVGPathSegCurvetoQuadraticSmoothRel):void { }

	[JavascriptProperty(name="SVGPathSegLinetoAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegLinetoAbs
	*/
	public function get SVGPathSegLinetoAbs_():SVGPathSegLinetoAbs { return null; }
	public function set SVGPathSegLinetoAbs_(value:SVGPathSegLinetoAbs):void { }

	[JavascriptProperty(name="SVGPathSegLinetoHorizontalAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegLinetoHorizontalAbs
	*/
	public function get SVGPathSegLinetoHorizontalAbs_():SVGPathSegLinetoHorizontalAbs { return null; }
	public function set SVGPathSegLinetoHorizontalAbs_(value:SVGPathSegLinetoHorizontalAbs):void { }

	[JavascriptProperty(name="SVGPathSegLinetoHorizontalRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegLinetoHorizontalRel
	*/
	public function get SVGPathSegLinetoHorizontalRel_():SVGPathSegLinetoHorizontalRel { return null; }
	public function set SVGPathSegLinetoHorizontalRel_(value:SVGPathSegLinetoHorizontalRel):void { }

	[JavascriptProperty(name="SVGPathSegLinetoRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegLinetoRel
	*/
	public function get SVGPathSegLinetoRel_():SVGPathSegLinetoRel { return null; }
	public function set SVGPathSegLinetoRel_(value:SVGPathSegLinetoRel):void { }

	[JavascriptProperty(name="SVGPathSegLinetoVerticalAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegLinetoVerticalAbs
	*/
	public function get SVGPathSegLinetoVerticalAbs_():SVGPathSegLinetoVerticalAbs { return null; }
	public function set SVGPathSegLinetoVerticalAbs_(value:SVGPathSegLinetoVerticalAbs):void { }

	[JavascriptProperty(name="SVGPathSegLinetoVerticalRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegLinetoVerticalRel
	*/
	public function get SVGPathSegLinetoVerticalRel_():SVGPathSegLinetoVerticalRel { return null; }
	public function set SVGPathSegLinetoVerticalRel_(value:SVGPathSegLinetoVerticalRel):void { }

	[JavascriptProperty(name="SVGPathSegList")]
	/**
	*  @see randori.webkit.svg.SVGPathSegList
	*/
	public function get SVGPathSegList_():SVGPathSegList { return null; }
	public function set SVGPathSegList_(value:SVGPathSegList):void { }

	[JavascriptProperty(name="SVGPathSegMovetoAbs")]
	/**
	*  @see randori.webkit.svg.SVGPathSegMovetoAbs
	*/
	public function get SVGPathSegMovetoAbs_():SVGPathSegMovetoAbs { return null; }
	public function set SVGPathSegMovetoAbs_(value:SVGPathSegMovetoAbs):void { }

	[JavascriptProperty(name="SVGPathSegMovetoRel")]
	/**
	*  @see randori.webkit.svg.SVGPathSegMovetoRel
	*/
	public function get SVGPathSegMovetoRel_():SVGPathSegMovetoRel { return null; }
	public function set SVGPathSegMovetoRel_(value:SVGPathSegMovetoRel):void { }

	[JavascriptProperty(name="SVGPatternElement")]
	/**
	*  @see randori.webkit.svg.SVGPatternElement
	*/
	public function get SVGPatternElement_():SVGPatternElement { return null; }
	public function set SVGPatternElement_(value:SVGPatternElement):void { }

	[JavascriptProperty(name="SVGPoint")]
	/**
	*  @see randori.webkit.svg.SVGPoint
	*/
	public function get SVGPoint_():SVGPoint { return null; }
	public function set SVGPoint_(value:SVGPoint):void { }

	[JavascriptProperty(name="SVGPointList")]
	/**
	*  @see randori.webkit.svg.SVGPointList
	*/
	public function get SVGPointList_():SVGPointList { return null; }
	public function set SVGPointList_(value:SVGPointList):void { }

	[JavascriptProperty(name="SVGPolygonElement")]
	/**
	*  @see randori.webkit.svg.SVGPolygonElement
	*/
	public function get SVGPolygonElement_():SVGPolygonElement { return null; }
	public function set SVGPolygonElement_(value:SVGPolygonElement):void { }

	[JavascriptProperty(name="SVGPolylineElement")]
	/**
	*  @see randori.webkit.svg.SVGPolylineElement
	*/
	public function get SVGPolylineElement_():SVGPolylineElement { return null; }
	public function set SVGPolylineElement_(value:SVGPolylineElement):void { }

	[JavascriptProperty(name="SVGPreserveAspectRatio")]
	/**
	*  @see randori.webkit.svg.SVGPreserveAspectRatio
	*/
	public function get SVGPreserveAspectRatio_():SVGPreserveAspectRatio { return null; }
	public function set SVGPreserveAspectRatio_(value:SVGPreserveAspectRatio):void { }

	[JavascriptProperty(name="SVGRadialGradientElement")]
	/**
	*  @see randori.webkit.svg.SVGRadialGradientElement
	*/
	public function get SVGRadialGradientElement_():SVGRadialGradientElement { return null; }
	public function set SVGRadialGradientElement_(value:SVGRadialGradientElement):void { }

	[JavascriptProperty(name="SVGRect")]
	/**
	*  @see randori.webkit.svg.SVGRect
	*/
	public function get SVGRect_():SVGRect { return null; }
	public function set SVGRect_(value:SVGRect):void { }

	[JavascriptProperty(name="SVGRectElement")]
	/**
	*  @see randori.webkit.svg.SVGRectElement
	*/
	public function get SVGRectElement_():SVGRectElement { return null; }
	public function set SVGRectElement_(value:SVGRectElement):void { }

	[JavascriptProperty(name="SVGRenderingIntent")]
	/**
	*  @see randori.webkit.svg.SVGRenderingIntent
	*/
	public function get SVGRenderingIntent_():SVGRenderingIntent { return null; }
	public function set SVGRenderingIntent_(value:SVGRenderingIntent):void { }

	[JavascriptProperty(name="SVGScriptElement")]
	/**
	*  @see randori.webkit.svg.SVGScriptElement
	*/
	public function get SVGScriptElement_():SVGScriptElement { return null; }
	public function set SVGScriptElement_(value:SVGScriptElement):void { }

	[JavascriptProperty(name="SVGStopElement")]
	/**
	*  @see randori.webkit.svg.SVGStopElement
	*/
	public function get SVGStopElement_():SVGStopElement { return null; }
	public function set SVGStopElement_(value:SVGStopElement):void { }

	[JavascriptProperty(name="SVGStringList")]
	/**
	*  @see randori.webkit.svg.SVGStringList
	*/
	public function get SVGStringList_():SVGStringList { return null; }
	public function set SVGStringList_(value:SVGStringList):void { }

	[JavascriptProperty(name="SVGStyleElement")]
	/**
	*  @see randori.webkit.svg.SVGStyleElement
	*/
	public function get SVGStyleElement_():SVGStyleElement { return null; }
	public function set SVGStyleElement_(value:SVGStyleElement):void { }

	[JavascriptProperty(name="SVGSVGElement")]
	/**
	*  @see randori.webkit.svg.SVGSVGElement
	*/
	public function get SVGSVGElement_():SVGSVGElement { return null; }
	public function set SVGSVGElement_(value:SVGSVGElement):void { }

	[JavascriptProperty(name="SVGSwitchElement")]
	/**
	*  @see randori.webkit.svg.SVGSwitchElement
	*/
	public function get SVGSwitchElement_():SVGSwitchElement { return null; }
	public function set SVGSwitchElement_(value:SVGSwitchElement):void { }

	[JavascriptProperty(name="SVGSymbolElement")]
	/**
	*  @see randori.webkit.svg.SVGSymbolElement
	*/
	public function get SVGSymbolElement_():SVGSymbolElement { return null; }
	public function set SVGSymbolElement_(value:SVGSymbolElement):void { }

	[JavascriptProperty(name="SVGTextContentElement")]
	/**
	*  @see randori.webkit.svg.SVGTextContentElement
	*/
	public function get SVGTextContentElement_():SVGTextContentElement { return null; }
	public function set SVGTextContentElement_(value:SVGTextContentElement):void { }

	[JavascriptProperty(name="SVGTextElement")]
	/**
	*  @see randori.webkit.svg.SVGTextElement
	*/
	public function get SVGTextElement_():SVGTextElement { return null; }
	public function set SVGTextElement_(value:SVGTextElement):void { }

	[JavascriptProperty(name="SVGTextPathElement")]
	/**
	*  @see randori.webkit.svg.SVGTextPathElement
	*/
	public function get SVGTextPathElement_():SVGTextPathElement { return null; }
	public function set SVGTextPathElement_(value:SVGTextPathElement):void { }

	[JavascriptProperty(name="SVGTextPositioningElement")]
	/**
	*  @see randori.webkit.svg.SVGTextPositioningElement
	*/
	public function get SVGTextPositioningElement_():SVGTextPositioningElement { return null; }
	public function set SVGTextPositioningElement_(value:SVGTextPositioningElement):void { }

	[JavascriptProperty(name="SVGTitleElement")]
	/**
	*  @see randori.webkit.svg.SVGTitleElement
	*/
	public function get SVGTitleElement_():SVGTitleElement { return null; }
	public function set SVGTitleElement_(value:SVGTitleElement):void { }

	[JavascriptProperty(name="SVGTransform")]
	/**
	*  @see randori.webkit.svg.SVGTransform
	*/
	public function get SVGTransform_():SVGTransform { return null; }
	public function set SVGTransform_(value:SVGTransform):void { }

	[JavascriptProperty(name="SVGTransformList")]
	/**
	*  @see randori.webkit.svg.SVGTransformList
	*/
	public function get SVGTransformList_():SVGTransformList { return null; }
	public function set SVGTransformList_(value:SVGTransformList):void { }

	[JavascriptProperty(name="SVGTRefElement")]
	/**
	*  @see randori.webkit.svg.SVGTRefElement
	*/
	public function get SVGTRefElement_():SVGTRefElement { return null; }
	public function set SVGTRefElement_(value:SVGTRefElement):void { }

	[JavascriptProperty(name="SVGTSpanElement")]
	/**
	*  @see randori.webkit.svg.SVGTSpanElement
	*/
	public function get SVGTSpanElement_():SVGTSpanElement { return null; }
	public function set SVGTSpanElement_(value:SVGTSpanElement):void { }

	[JavascriptProperty(name="SVGUnitTypes")]
	/**
	*  @see randori.webkit.svg.SVGUnitTypes
	*/
	public function get SVGUnitTypes_():SVGUnitTypes { return null; }
	public function set SVGUnitTypes_(value:SVGUnitTypes):void { }

	[JavascriptProperty(name="SVGUseElement")]
	/**
	*  @see randori.webkit.svg.SVGUseElement
	*/
	public function get SVGUseElement_():SVGUseElement { return null; }
	public function set SVGUseElement_(value:SVGUseElement):void { }

	[JavascriptProperty(name="SVGViewElement")]
	/**
	*  @see randori.webkit.svg.SVGViewElement
	*/
	public function get SVGViewElement_():SVGViewElement { return null; }
	public function set SVGViewElement_(value:SVGViewElement):void { }

	[JavascriptProperty(name="SVGViewSpec")]
	/**
	*  @see randori.webkit.svg.SVGViewSpec
	*/
	public function get SVGViewSpec_():SVGViewSpec { return null; }
	public function set SVGViewSpec_(value:SVGViewSpec):void { }

	[JavascriptProperty(name="SVGZoomAndPan")]
	/**
	*  @see randori.webkit.svg.SVGZoomAndPan
	*/
	public function get SVGZoomAndPan_():SVGZoomAndPan { return null; }
	public function set SVGZoomAndPan_(value:SVGZoomAndPan):void { }

	[JavascriptProperty(name="SVGAnimateColorElement")]
	/**
	*  @see randori.webkit.svg.SVGAnimateColorElement
	*/
	public function get SVGAnimateColorElement_():SVGAnimateColorElement { return null; }
	public function set SVGAnimateColorElement_(value:SVGAnimateColorElement):void { }

	[JavascriptProperty(name="SVGAnimateElement")]
	/**
	*  @see randori.webkit.svg.SVGAnimateElement
	*/
	public function get SVGAnimateElement_():SVGAnimateElement { return null; }
	public function set SVGAnimateElement_(value:SVGAnimateElement):void { }

	[JavascriptProperty(name="SVGAnimateMotionElement")]
	/**
	*  @see randori.webkit.svg.SVGAnimateMotionElement
	*/
	public function get SVGAnimateMotionElement_():SVGAnimateMotionElement { return null; }
	public function set SVGAnimateMotionElement_(value:SVGAnimateMotionElement):void { }

	[JavascriptProperty(name="SVGAnimateTransformElement")]
	/**
	*  @see randori.webkit.svg.SVGAnimateTransformElement
	*/
	public function get SVGAnimateTransformElement_():SVGAnimateTransformElement { return null; }
	public function set SVGAnimateTransformElement_(value:SVGAnimateTransformElement):void { }

	[JavascriptProperty(name="SVGMPathElement")]
	/**
	*  @see randori.webkit.svg.SVGMPathElement
	*/
	public function get SVGMPathElement_():SVGMPathElement { return null; }
	public function set SVGMPathElement_(value:SVGMPathElement):void { }

	[JavascriptProperty(name="SVGSetElement")]
	/**
	*  @see randori.webkit.svg.SVGSetElement
	*/
	public function get SVGSetElement_():SVGSetElement { return null; }
	public function set SVGSetElement_(value:SVGSetElement):void { }

	[JavascriptProperty(name="SVGAltGlyphDefElement")]
	/**
	*  @see randori.webkit.svg.SVGAltGlyphDefElement
	*/
	public function get SVGAltGlyphDefElement_():SVGAltGlyphDefElement { return null; }
	public function set SVGAltGlyphDefElement_(value:SVGAltGlyphDefElement):void { }

	[JavascriptProperty(name="SVGAltGlyphElement")]
	/**
	*  @see randori.webkit.svg.SVGAltGlyphElement
	*/
	public function get SVGAltGlyphElement_():SVGAltGlyphElement { return null; }
	public function set SVGAltGlyphElement_(value:SVGAltGlyphElement):void { }

	[JavascriptProperty(name="SVGAltGlyphItemElement")]
	/**
	*  @see randori.webkit.svg.SVGAltGlyphItemElement
	*/
	public function get SVGAltGlyphItemElement_():SVGAltGlyphItemElement { return null; }
	public function set SVGAltGlyphItemElement_(value:SVGAltGlyphItemElement):void { }

	[JavascriptProperty(name="SVGFontElement")]
	/**
	*  @see randori.webkit.svg.SVGFontElement
	*/
	public function get SVGFontElement_():SVGFontElement { return null; }
	public function set SVGFontElement_(value:SVGFontElement):void { }

	[JavascriptProperty(name="SVGFontFaceElement")]
	/**
	*  @see randori.webkit.svg.SVGFontFaceElement
	*/
	public function get SVGFontFaceElement_():SVGFontFaceElement { return null; }
	public function set SVGFontFaceElement_(value:SVGFontFaceElement):void { }

	[JavascriptProperty(name="SVGFontFaceFormatElement")]
	/**
	*  @see randori.webkit.svg.SVGFontFaceFormatElement
	*/
	public function get SVGFontFaceFormatElement_():SVGFontFaceFormatElement { return null; }
	public function set SVGFontFaceFormatElement_(value:SVGFontFaceFormatElement):void { }

	[JavascriptProperty(name="SVGFontFaceNameElement")]
	/**
	*  @see randori.webkit.svg.SVGFontFaceNameElement
	*/
	public function get SVGFontFaceNameElement_():SVGFontFaceNameElement { return null; }
	public function set SVGFontFaceNameElement_(value:SVGFontFaceNameElement):void { }

	[JavascriptProperty(name="SVGFontFaceSrcElement")]
	/**
	*  @see randori.webkit.svg.SVGFontFaceSrcElement
	*/
	public function get SVGFontFaceSrcElement_():SVGFontFaceSrcElement { return null; }
	public function set SVGFontFaceSrcElement_(value:SVGFontFaceSrcElement):void { }

	[JavascriptProperty(name="SVGFontFaceUriElement")]
	/**
	*  @see randori.webkit.svg.SVGFontFaceUriElement
	*/
	public function get SVGFontFaceUriElement_():SVGFontFaceUriElement { return null; }
	public function set SVGFontFaceUriElement_(value:SVGFontFaceUriElement):void { }

	[JavascriptProperty(name="SVGGlyphElement")]
	/**
	*  @see randori.webkit.svg.SVGGlyphElement
	*/
	public function get SVGGlyphElement_():SVGGlyphElement { return null; }
	public function set SVGGlyphElement_(value:SVGGlyphElement):void { }

	[JavascriptProperty(name="SVGGlyphRefElement")]
	/**
	*  @see randori.webkit.svg.SVGGlyphRefElement
	*/
	public function get SVGGlyphRefElement_():SVGGlyphRefElement { return null; }
	public function set SVGGlyphRefElement_(value:SVGGlyphRefElement):void { }

	[JavascriptProperty(name="SVGHKernElement")]
	/**
	*  @see randori.webkit.svg.SVGHKernElement
	*/
	public function get SVGHKernElement_():SVGHKernElement { return null; }
	public function set SVGHKernElement_(value:SVGHKernElement):void { }

	[JavascriptProperty(name="SVGMissingGlyphElement")]
	/**
	*  @see randori.webkit.svg.SVGMissingGlyphElement
	*/
	public function get SVGMissingGlyphElement_():SVGMissingGlyphElement { return null; }
	public function set SVGMissingGlyphElement_(value:SVGMissingGlyphElement):void { }

	[JavascriptProperty(name="SVGVKernElement")]
	/**
	*  @see randori.webkit.svg.SVGVKernElement
	*/
	public function get SVGVKernElement_():SVGVKernElement { return null; }
	public function set SVGVKernElement_(value:SVGVKernElement):void { }

	[JavascriptProperty(name="SVGComponentTransferFunctionElement")]
	/**
	*  @see randori.webkit.svg.SVGComponentTransferFunctionElement
	*/
	public function get SVGComponentTransferFunctionElement_():SVGComponentTransferFunctionElement { return null; }
	public function set SVGComponentTransferFunctionElement_(value:SVGComponentTransferFunctionElement):void { }

	[JavascriptProperty(name="SVGFEBlendElement")]
	/**
	*  @see randori.webkit.svg.SVGFEBlendElement
	*/
	public function get SVGFEBlendElement_():SVGFEBlendElement { return null; }
	public function set SVGFEBlendElement_(value:SVGFEBlendElement):void { }

	[JavascriptProperty(name="SVGFEColorMatrixElement")]
	/**
	*  @see randori.webkit.svg.SVGFEColorMatrixElement
	*/
	public function get SVGFEColorMatrixElement_():SVGFEColorMatrixElement { return null; }
	public function set SVGFEColorMatrixElement_(value:SVGFEColorMatrixElement):void { }

	[JavascriptProperty(name="SVGFEComponentTransferElement")]
	/**
	*  @see randori.webkit.svg.SVGFEComponentTransferElement
	*/
	public function get SVGFEComponentTransferElement_():SVGFEComponentTransferElement { return null; }
	public function set SVGFEComponentTransferElement_(value:SVGFEComponentTransferElement):void { }

	[JavascriptProperty(name="SVGFECompositeElement")]
	/**
	*  @see randori.webkit.svg.SVGFECompositeElement
	*/
	public function get SVGFECompositeElement_():SVGFECompositeElement { return null; }
	public function set SVGFECompositeElement_(value:SVGFECompositeElement):void { }

	[JavascriptProperty(name="SVGFEConvolveMatrixElement")]
	/**
	*  @see randori.webkit.svg.SVGFEConvolveMatrixElement
	*/
	public function get SVGFEConvolveMatrixElement_():SVGFEConvolveMatrixElement { return null; }
	public function set SVGFEConvolveMatrixElement_(value:SVGFEConvolveMatrixElement):void { }

	[JavascriptProperty(name="SVGFEDiffuseLightingElement")]
	/**
	*  @see randori.webkit.svg.SVGFEDiffuseLightingElement
	*/
	public function get SVGFEDiffuseLightingElement_():SVGFEDiffuseLightingElement { return null; }
	public function set SVGFEDiffuseLightingElement_(value:SVGFEDiffuseLightingElement):void { }

	[JavascriptProperty(name="SVGFEDisplacementMapElement")]
	/**
	*  @see randori.webkit.svg.SVGFEDisplacementMapElement
	*/
	public function get SVGFEDisplacementMapElement_():SVGFEDisplacementMapElement { return null; }
	public function set SVGFEDisplacementMapElement_(value:SVGFEDisplacementMapElement):void { }

	[JavascriptProperty(name="SVGFEDistantLightElement")]
	/**
	*  @see randori.webkit.svg.SVGFEDistantLightElement
	*/
	public function get SVGFEDistantLightElement_():SVGFEDistantLightElement { return null; }
	public function set SVGFEDistantLightElement_(value:SVGFEDistantLightElement):void { }

	[JavascriptProperty(name="SVGFEDropShadowElement")]
	/**
	*  @see randori.webkit.svg.SVGFEDropShadowElement
	*/
	public function get SVGFEDropShadowElement_():SVGFEDropShadowElement { return null; }
	public function set SVGFEDropShadowElement_(value:SVGFEDropShadowElement):void { }

	[JavascriptProperty(name="SVGFEFloodElement")]
	/**
	*  @see randori.webkit.svg.SVGFEFloodElement
	*/
	public function get SVGFEFloodElement_():SVGFEFloodElement { return null; }
	public function set SVGFEFloodElement_(value:SVGFEFloodElement):void { }

	[JavascriptProperty(name="SVGFEFuncAElement")]
	/**
	*  @see randori.webkit.svg.SVGFEFuncAElement
	*/
	public function get SVGFEFuncAElement_():SVGFEFuncAElement { return null; }
	public function set SVGFEFuncAElement_(value:SVGFEFuncAElement):void { }

	[JavascriptProperty(name="SVGFEFuncBElement")]
	/**
	*  @see randori.webkit.svg.SVGFEFuncBElement
	*/
	public function get SVGFEFuncBElement_():SVGFEFuncBElement { return null; }
	public function set SVGFEFuncBElement_(value:SVGFEFuncBElement):void { }

	[JavascriptProperty(name="SVGFEFuncGElement")]
	/**
	*  @see randori.webkit.svg.SVGFEFuncGElement
	*/
	public function get SVGFEFuncGElement_():SVGFEFuncGElement { return null; }
	public function set SVGFEFuncGElement_(value:SVGFEFuncGElement):void { }

	[JavascriptProperty(name="SVGFEFuncRElement")]
	/**
	*  @see randori.webkit.svg.SVGFEFuncRElement
	*/
	public function get SVGFEFuncRElement_():SVGFEFuncRElement { return null; }
	public function set SVGFEFuncRElement_(value:SVGFEFuncRElement):void { }

	[JavascriptProperty(name="SVGFEGaussianBlurElement")]
	/**
	*  @see randori.webkit.svg.SVGFEGaussianBlurElement
	*/
	public function get SVGFEGaussianBlurElement_():SVGFEGaussianBlurElement { return null; }
	public function set SVGFEGaussianBlurElement_(value:SVGFEGaussianBlurElement):void { }

	[JavascriptProperty(name="SVGFEImageElement")]
	/**
	*  @see randori.webkit.svg.SVGFEImageElement
	*/
	public function get SVGFEImageElement_():SVGFEImageElement { return null; }
	public function set SVGFEImageElement_(value:SVGFEImageElement):void { }

	[JavascriptProperty(name="SVGFEMergeElement")]
	/**
	*  @see randori.webkit.svg.SVGFEMergeElement
	*/
	public function get SVGFEMergeElement_():SVGFEMergeElement { return null; }
	public function set SVGFEMergeElement_(value:SVGFEMergeElement):void { }

	[JavascriptProperty(name="SVGFEMergeNodeElement")]
	/**
	*  @see randori.webkit.svg.SVGFEMergeNodeElement
	*/
	public function get SVGFEMergeNodeElement_():SVGFEMergeNodeElement { return null; }
	public function set SVGFEMergeNodeElement_(value:SVGFEMergeNodeElement):void { }

	[JavascriptProperty(name="SVGFEMorphologyElement")]
	/**
	*  @see randori.webkit.svg.SVGFEMorphologyElement
	*/
	public function get SVGFEMorphologyElement_():SVGFEMorphologyElement { return null; }
	public function set SVGFEMorphologyElement_(value:SVGFEMorphologyElement):void { }

	[JavascriptProperty(name="SVGFEOffsetElement")]
	/**
	*  @see randori.webkit.svg.SVGFEOffsetElement
	*/
	public function get SVGFEOffsetElement_():SVGFEOffsetElement { return null; }
	public function set SVGFEOffsetElement_(value:SVGFEOffsetElement):void { }

	[JavascriptProperty(name="SVGFEPointLightElement")]
	/**
	*  @see randori.webkit.svg.SVGFEPointLightElement
	*/
	public function get SVGFEPointLightElement_():SVGFEPointLightElement { return null; }
	public function set SVGFEPointLightElement_(value:SVGFEPointLightElement):void { }

	[JavascriptProperty(name="SVGFESpecularLightingElement")]
	/**
	*  @see randori.webkit.svg.SVGFESpecularLightingElement
	*/
	public function get SVGFESpecularLightingElement_():SVGFESpecularLightingElement { return null; }
	public function set SVGFESpecularLightingElement_(value:SVGFESpecularLightingElement):void { }

	[JavascriptProperty(name="SVGFESpotLightElement")]
	/**
	*  @see randori.webkit.svg.SVGFESpotLightElement
	*/
	public function get SVGFESpotLightElement_():SVGFESpotLightElement { return null; }
	public function set SVGFESpotLightElement_(value:SVGFESpotLightElement):void { }

	[JavascriptProperty(name="SVGFETileElement")]
	/**
	*  @see randori.webkit.svg.SVGFETileElement
	*/
	public function get SVGFETileElement_():SVGFETileElement { return null; }
	public function set SVGFETileElement_(value:SVGFETileElement):void { }

	[JavascriptProperty(name="SVGFETurbulenceElement")]
	/**
	*  @see randori.webkit.svg.SVGFETurbulenceElement
	*/
	public function get SVGFETurbulenceElement_():SVGFETurbulenceElement { return null; }
	public function set SVGFETurbulenceElement_(value:SVGFETurbulenceElement):void { }

	[JavascriptProperty(name="SVGFilterElement")]
	/**
	*  @see randori.webkit.svg.SVGFilterElement
	*/
	public function get SVGFilterElement_():SVGFilterElement { return null; }
	public function set SVGFilterElement_(value:SVGFilterElement):void { }

	[JavascriptProperty(name="FormData")]
	/**
	*  @see randori.webkit.html.FormData
	*/
	public function get FormData_():FormData { return null; }
	public function set FormData_(value:FormData):void { }

	[JavascriptProperty(name="FileError")]
	/**
	*  @see randori.webkit.fileapi.FileError
	*/
	public function get FileError_():FileError { return null; }
	public function set FileError_(value:FileError):void { }

	[JavascriptProperty(name="FileReader")]
	/**
	*  @see randori.webkit.fileapi.FileReader
	*/
	public function get FileReader_():FileReader { return null; }
	public function set FileReader_(value:FileReader):void { }

	[JavascriptProperty(name="URL")]
	/**
	*  @see randori.webkit.html.URL
	*/
	public function get URL_():URL { return null; }
	public function set URL_(value:URL):void { }
	/**
	*  @return A <code>String</code> instance.
	*/
	public function toString():String { return '';}
}

}