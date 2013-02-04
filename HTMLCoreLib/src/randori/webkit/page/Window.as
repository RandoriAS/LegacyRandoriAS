
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/page/DOMWindow.idl

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modify the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) 2013 Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com) for the Randori
  framework for large enterprise Javascript applications.

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
import randori.webkit.css.CSSStyleDeclaration;
import randori.webkit.css.CSSRuleList;
import randori.webkit.loader.appcache.DOMApplicationCache;
import randori.webkit.storage.Storage;
import randori.webkit.css.StyleSheet;
import randori.webkit.css.CSSStyleSheet;
import randori.webkit.css.CSSValue;
import randori.webkit.css.CSSPrimitiveValue;
import randori.webkit.css.CSSValueList;
import randori.webkit.css.CSSRule;
import randori.webkit.css.CSSCharsetRule;
import randori.webkit.css.CSSFontFaceRule;
import randori.webkit.css.CSSImportRule;
import randori.webkit.css.CSSMediaRule;
import randori.webkit.css.CSSPageRule;
import randori.webkit.css.CSSStyleRule;
import randori.webkit.css.MediaList;
import randori.webkit.css.Counter;
import randori.webkit.css.Rect;
import randori.webkit.css.RGBColor;
import randori.webkit.css.StyleSheetList;
import randori.webkit.dom.DOMStringList;
import randori.webkit.dom.DOMImplementation;
import randori.webkit.html.DOMSettableTokenList;
import randori.webkit.html.DOMTokenList;
import randori.webkit.dom.DocumentFragment;
import randori.webkit.dom.Node;
import randori.webkit.dom.NodeList;
import randori.webkit.dom.PropertyNodeList;
import randori.webkit.dom.NamedNodeMap;
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
import randori.webkit.html.HTMLModElement;
import randori.webkit.html.HTMLOListElement;
import randori.webkit.html.HTMLObjectElement;
import randori.webkit.html.HTMLOptGroupElement;
import randori.webkit.html.HTMLOptionElement;
import randori.webkit.html.HTMLOutputElement;
import randori.webkit.html.HTMLParagraphElement;
import randori.webkit.html.HTMLParamElement;
import randori.webkit.html.HTMLPreElement;
import randori.webkit.html.HTMLQuoteElement;
import randori.webkit.html.HTMLScriptElement;
import randori.webkit.html.HTMLSelectElement;
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
import randori.webkit.html.HTMLCollection;
import randori.webkit.html.HTMLAllCollection;
import randori.webkit.html.HTMLFormControlsCollection;
import randori.webkit.html.HTMLOptionsCollection;
import randori.webkit.html.HTMLPropertiesCollection;
import randori.webkit.html.HTMLUnknownElement;
import randori.webkit.html.MediaKeyError;
import randori.webkit.html.MediaKeyEvent;
import randori.webkit.html.HTMLTrackElement;
import randori.webkit.html.track.TextTrack;
import randori.webkit.html.track.TextTrackCue;
import randori.webkit.html.track.TextTrackCueList;
import randori.webkit.html.track.TextTrackList;
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
import randori.webkit.dom.TouchList;
import randori.webkit.storage.StorageEvent;
import randori.webkit.html.canvas.WebGLContextEvent;
import randori.webkit.modules.proximity.DeviceProximityEvent;
import randori.webkit.dom.AutocompleteErrorEvent;
import randori.webkit.dom.Clipboard;
import randori.webkit.workers.Worker;
import randori.webkit.workers.SharedWorker;
import randori.webkit.fileapi.File;
import randori.webkit.fileapi.FileList;
import randori.webkit.fileapi.Blob;
import randori.webkit.dom.NodeFilter;
import randori.webkit.dom.Range;
import randori.webkit.xml.DOMParser;
import randori.webkit.xml.XMLSerializer;
import randori.webkit.xml.XMLHttpRequest;
import randori.webkit.xml.XMLHttpRequestUpload;
import randori.webkit.xml.XSLTProcessor;
import randori.webkit.plugins.Plugin;
import randori.webkit.plugins.MimeType;
import randori.webkit.dom.ClientRect;
import randori.webkit.dom.ClientRectList;
import randori.webkit.xml.XPathEvaluator;
import randori.webkit.xml.XPathResult;
import randori.webkit.svg.SVGZoomEvent;
import randori.webkit.html.FormData;
import randori.webkit.fileapi.FileError;
import randori.webkit.fileapi.FileReader;
import randori.webkit.html.URL;

[JavaScript(export="false", name="Window")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
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
	public function getComputedStyle(element:Element=undefined, pseudoElement:String=undefined):CSSStyleDeclaration { return null;}
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param pseudoElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSRuleList</code> instance.
	*/
	public function getMatchedCSSRules(element:Element=undefined, pseudoElement:String=undefined):CSSRuleList { return null;}

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

	[JavascriptProperty(name="CSSValueList")]
	/**
	*  @see randori.webkit.css.CSSValueList
	*/
	public function get CSSValueList_():CSSValueList { return null; }
	public function set CSSValueList_(value:CSSValueList):void { }

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

	[JavascriptProperty(name="CSSStyleDeclaration")]
	/**
	*  @see randori.webkit.css.CSSStyleDeclaration
	*/
	public function get CSSStyleDeclaration_():CSSStyleDeclaration { return null; }
	public function set CSSStyleDeclaration_(value:CSSStyleDeclaration):void { }

	[JavascriptProperty(name="MediaList")]
	/**
	*  @see randori.webkit.css.MediaList
	*/
	public function get MediaList_():MediaList { return null; }
	public function set MediaList_(value:MediaList):void { }

	[JavascriptProperty(name="Counter")]
	/**
	*  @see randori.webkit.css.Counter
	*/
	public function get Counter_():Counter { return null; }
	public function set Counter_(value:Counter):void { }

	[JavascriptProperty(name="CSSRuleList")]
	/**
	*  @see randori.webkit.css.CSSRuleList
	*/
	public function get CSSRuleList_():CSSRuleList { return null; }
	public function set CSSRuleList_(value:CSSRuleList):void { }

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

	[JavascriptProperty(name="StyleSheetList")]
	/**
	*  @see randori.webkit.css.StyleSheetList
	*/
	public function get StyleSheetList_():StyleSheetList { return null; }
	public function set StyleSheetList_(value:StyleSheetList):void { }

	public function get DOMException():Object { return null; }
	public function set DOMException(value:Object):void { }

	[JavascriptProperty(name="DOMStringList")]
	/**
	*  @see randori.webkit.dom.DOMStringList
	*/
	public function get DOMStringList_():DOMStringList { return null; }
	public function set DOMStringList_(value:DOMStringList):void { }

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

	[JavascriptProperty(name="DOMTokenList")]
	/**
	*  @see randori.webkit.html.DOMTokenList
	*/
	public function get DOMTokenList_():DOMTokenList { return null; }
	public function set DOMTokenList_(value:DOMTokenList):void { }

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

	[JavascriptProperty(name="NodeList")]
	/**
	*  @see randori.webkit.dom.NodeList
	*/
	public function get NodeList_():NodeList { return null; }
	public function set NodeList_(value:NodeList):void { }

	[JavascriptProperty(name="PropertyNodeList")]
	/**
	*  @see randori.webkit.dom.PropertyNodeList
	*/
	public function get PropertyNodeList_():PropertyNodeList { return null; }
	public function set PropertyNodeList_(value:PropertyNodeList):void { }

	[JavascriptProperty(name="NamedNodeMap")]
	/**
	*  @see randori.webkit.dom.NamedNodeMap
	*/
	public function get NamedNodeMap_():NamedNodeMap { return null; }
	public function set NamedNodeMap_(value:NamedNodeMap):void { }

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

	[JavascriptProperty(name="HTMLSelectElement")]
	/**
	*  @see randori.webkit.html.HTMLSelectElement
	*/
	public function get HTMLSelectElement_():HTMLSelectElement { return null; }
	public function set HTMLSelectElement_(value:HTMLSelectElement):void { }

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

	[JavascriptProperty(name="HTMLCollection")]
	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public function get HTMLCollection_():HTMLCollection { return null; }
	public function set HTMLCollection_(value:HTMLCollection):void { }

	[JavascriptProperty(name="HTMLAllCollection")]
	/**
	*  @see randori.webkit.html.HTMLAllCollection
	*/
	public function get HTMLAllCollection_():HTMLAllCollection { return null; }
	public function set HTMLAllCollection_(value:HTMLAllCollection):void { }

	[JavascriptProperty(name="HTMLFormControlsCollection")]
	/**
	*  @see randori.webkit.html.HTMLFormControlsCollection
	*/
	public function get HTMLFormControlsCollection_():HTMLFormControlsCollection { return null; }
	public function set HTMLFormControlsCollection_(value:HTMLFormControlsCollection):void { }

	[JavascriptProperty(name="HTMLOptionsCollection")]
	/**
	*  @see randori.webkit.html.HTMLOptionsCollection
	*/
	public function get HTMLOptionsCollection_():HTMLOptionsCollection { return null; }
	public function set HTMLOptionsCollection_(value:HTMLOptionsCollection):void { }

	[JavascriptProperty(name="HTMLPropertiesCollection")]
	/**
	*  @see randori.webkit.html.HTMLPropertiesCollection
	*/
	public function get HTMLPropertiesCollection_():HTMLPropertiesCollection { return null; }
	public function set HTMLPropertiesCollection_(value:HTMLPropertiesCollection):void { }

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

	[JavascriptProperty(name="TextTrackCueList")]
	/**
	*  @see randori.webkit.html.track.TextTrackCueList
	*/
	public function get TextTrackCueList_():TextTrackCueList { return null; }
	public function set TextTrackCueList_(value:TextTrackCueList):void { }

	[JavascriptProperty(name="TextTrackList")]
	/**
	*  @see randori.webkit.html.track.TextTrackList
	*/
	public function get TextTrackList_():TextTrackList { return null; }
	public function set TextTrackList_(value:TextTrackList):void { }

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

	[JavascriptProperty(name="TouchList")]
	/**
	*  @see randori.webkit.dom.TouchList
	*/
	public function get TouchList_():TouchList { return null; }
	public function set TouchList_(value:TouchList):void { }

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

	[JavascriptProperty(name="FileList")]
	/**
	*  @see randori.webkit.fileapi.FileList
	*/
	public function get FileList_():FileList { return null; }
	public function set FileList_(value:FileList):void { }

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

	[JavascriptProperty(name="Plugin")]
	/**
	*  @see randori.webkit.plugins.Plugin
	*/
	public function get Plugin_():Plugin { return null; }
	public function set Plugin_(value:Plugin):void { }

	[JavascriptProperty(name="PluginArray")]
	/**
	*  @see randori.webkit.plugins.PluginArray
	*/
	public function get PluginArray_():Object { return null; }
	public function set PluginArray_(value:Object):void { }

	[JavascriptProperty(name="MimeType")]
	/**
	*  @see randori.webkit.plugins.MimeType
	*/
	public function get MimeType_():MimeType { return null; }
	public function set MimeType_(value:MimeType):void { }

	[JavascriptProperty(name="MimeTypeArray")]
	/**
	*  @see randori.webkit.plugins.MimeTypeArray
	*/
	public function get MimeTypeArray_():Object { return null; }
	public function set MimeTypeArray_(value:Object):void { }

	[JavascriptProperty(name="ClientRect")]
	/**
	*  @see randori.webkit.dom.ClientRect
	*/
	public function get ClientRect_():ClientRect { return null; }
	public function set ClientRect_(value:ClientRect):void { }

	[JavascriptProperty(name="ClientRectList")]
	/**
	*  @see randori.webkit.dom.ClientRectList
	*/
	public function get ClientRectList_():ClientRectList { return null; }
	public function set ClientRectList_(value:ClientRectList):void { }

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
}

}