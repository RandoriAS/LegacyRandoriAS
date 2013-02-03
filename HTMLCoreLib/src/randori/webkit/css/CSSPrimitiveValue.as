
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSPrimitiveValue.idl

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


package randori.webkit.css
{


[JavaScript(export="false", name="CSSPrimitiveValue")]
/**
 *  <p>
 *  The <code>CSSPrimitiveValue</code> interface represents a single
 *  CSS value. This
 *  interface may be used to determine the value of a specific style property
 *  currently set in a block or to set a specific style property explicitly
 *  within the block. An instance of this interface might be obtained from
 *  the <code>getPropertyCSSValue</code> method of the
 *  <code>CSSStyleDeclaration</code> interface. A
 *  <code>CSSPrimitiveValue</code> object only occurs in a context of a CSS
 *  property.
 *  </p><p>
 *  Conversions are allowed between absolute values (from millimeters to
 *  centimeters, from degrees to radians, and so on) but not between relative
 *  values. (For example, a pixel value cannot be converted to a centimeter
 *  value.) Percentage values can't be converted since they are relative to
 *  the parent value (or another property value). There is one exception for
 *  color percentage values: since a color percentage value is relative to
 *  the range 0-255, a color percentage value can be converted to a number;
 *  (see also the <code>RGBColor</code> interface).
 *  </p>
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#values
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q13
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#percentage-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#length-units
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q19
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q19
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q19
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q20
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q20
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q21
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#q21
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#strings
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#uri
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#value-def-identifier
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/generate.html#x16
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#counter
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/visufx.html#value-def-shape
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/syndata.html#color-units
 *  @see randori.webkit.css.CSSValue
 */
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
	/**
	*  @param unitType (optional argument, default value is <code>undefined</code>)
	*  @param floatValue (optional argument, default value is <code>undefined</code>)
	*/
	public function setFloatValue(unitType:uint=undefined, floatValue:Number=undefined):void {}
	/**
	*  @param unitType (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Number</code> instance.
	*/
	public function getFloatValue(unitType:uint=undefined):Number { return 0;}
	/**
	*  @param stringType (optional argument, default value is <code>undefined</code>)
	*  @param stringValue (optional argument, default value is <code>undefined</code>)
	*/
	public function setStringValue(stringType:uint=undefined, stringValue:String=undefined):void {}
	/**
	*  @return A <code>String</code> instance.
	*/
	public function getStringValue():String { return '';}
	/**
	*  @return A <code>Counter</code> instance.
	*/
	public function getCounterValue():Counter { return null;}
	/**
	*  @return A <code>Rect</code> instance.
	*/
	public function getRectValue():Rect { return null;}
	/**
	*  @return A <code>RGBColor</code> instance.
	*/
	public function getRGBColorValue():RGBColor { return null;}
}

}