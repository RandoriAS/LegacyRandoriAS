
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSPrimitiveValue.idl

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


package randori.webkit.css
{


[JavaScript(export=false, name="CSSPrimitiveValue")]
public class CSSPrimitiveValue extends CSSValue
{
	public static const CSS_UNKNOWN:uint = 0;
	public static const CSS_NUMBER:uint = 1;
	public static const CSS_PERCENTAGE:uint = 2;
	public static const CSS_EMS:uint = 3;
	public static const CSS_EXS:uint = 4;
	public static const CSS_PX:uint = 5;
	public static const CSS_CM:uint = 6;
	public static const CSS_MM:uint = 7;
	public static const CSS_IN:uint = 8;
	public static const CSS_PT:uint = 9;
	public static const CSS_PC:uint = 10;
	public static const CSS_DEG:uint = 11;
	public static const CSS_RAD:uint = 12;
	public static const CSS_GRAD:uint = 13;
	public static const CSS_MS:uint = 14;
	public static const CSS_S:uint = 15;
	public static const CSS_HZ:uint = 16;
	public static const CSS_KHZ:uint = 17;
	public static const CSS_DIMENSION:uint = 18;
	public static const CSS_STRING:uint = 19;
	public static const CSS_URI:uint = 20;
	public static const CSS_IDENT:uint = 21;
	public static const CSS_ATTR:uint = 22;
	public static const CSS_COUNTER:uint = 23;
	public static const CSS_RECT:uint = 24;
	public static const CSS_RGBCOLOR:uint = 25;
	public static const CSS_VW:uint = 26;
	public static const CSS_VH:uint = 27;
	public static const CSS_VMIN:uint = 28;

	public function get primitiveType():uint { return 0; }
	public function setFloatValue(unitType:uint=0, floatValue:Number=0):void {}
	public function getFloatValue(unitType:uint=0):Number { return 0;}
	public function setStringValue(stringType:uint=0, stringValue:String=''):void {}
	public function getStringValue():String { return '';}
	public function getCounterValue():Counter { return null;}
	public function getRectValue():Rect { return null;}
	public function getRGBColorValue():RGBColor { return null;}
}

}