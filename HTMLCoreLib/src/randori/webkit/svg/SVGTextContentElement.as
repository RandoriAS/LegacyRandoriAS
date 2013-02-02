
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGTextContentElement.idl

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


package randori.webkit.svg
{


[JavaScript(export=false, name="SVGTextContentElement")]
public class SVGTextContentElement extends SVGStyledElement implements SVGTests, SVGLangSpace, SVGExternalResourcesRequired
{
	public static const LENGTHADJUST_UNKNOWN:uint = 0;
	public static const LENGTHADJUST_SPACING:uint = 1;
	public static const LENGTHADJUST_SPACINGANDGLYPHS:uint = 2;

	public function get textLength():SVGAnimatedLength { return null; }

	public function get lengthAdjust():SVGAnimatedEnumeration { return null; }
	public function getNumberOfChars():uint { return 0;}
	public function getComputedTextLength():Number { return 0;}
	public function getSubStringLength(offset:uint=0, length:uint=0):Number { return 0;}
	public function getStartPositionOfChar(offset:uint=0):SVGPoint { return null;}
	public function getEndPositionOfChar(offset:uint=0):SVGPoint { return null;}
	public function getExtentOfChar(offset:uint=0):SVGRect { return null;}
	public function getRotationOfChar(offset:uint=0):Number { return 0;}
	public function getCharNumAtPosition(point:SVGPoint=null):uint { return 0;}
	public function selectSubString(offset:uint=0, length:uint=0):void {}

	public function get requiredFeatures():SVGStringList { return null; }

	public function get requiredExtensions():SVGStringList { return null; }

	public function get systemLanguage():SVGStringList { return null; }
	public function hasExtension(extension:String=''):Boolean { return false;}

	public function get xmllang():String { return ''; }
	public function set xmllang(value:String):void { }

	public function get xmlspace():String { return ''; }
	public function set xmlspace(value:String):void { }

	public function get externalResourcesRequired():SVGAnimatedBoolean { return null; }
}

}