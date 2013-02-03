
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/canvas/DOMPath.idl

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


package randori.webkit.html.canvas
{


[JavaScript(export=false, name="DOMPath")]
/**
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 */
public class DOMPath
{
	public function closePath():void {}
	/**
	*  @param x (optional argument, default value is <code>0</code>)
	*  @param y (optional argument, default value is <code>0</code>)
	*/
	public function moveTo(x:Number=0, y:Number=0):void {}
	/**
	*  @param x (optional argument, default value is <code>0</code>)
	*  @param y (optional argument, default value is <code>0</code>)
	*/
	public function lineTo(x:Number=0, y:Number=0):void {}
	/**
	*  @param cpx (optional argument, default value is <code>0</code>)
	*  @param cpy (optional argument, default value is <code>0</code>)
	*  @param x (optional argument, default value is <code>0</code>)
	*  @param y (optional argument, default value is <code>0</code>)
	*/
	public function quadraticCurveTo(cpx:Number=0, cpy:Number=0, x:Number=0, y:Number=0):void {}
	/**
	*  @param cp1x (optional argument, default value is <code>0</code>)
	*  @param cp1y (optional argument, default value is <code>0</code>)
	*  @param cp2x (optional argument, default value is <code>0</code>)
	*  @param cp2y (optional argument, default value is <code>0</code>)
	*  @param x (optional argument, default value is <code>0</code>)
	*  @param y (optional argument, default value is <code>0</code>)
	*/
	public function bezierCurveTo(cp1x:Number=0, cp1y:Number=0, cp2x:Number=0, cp2y:Number=0, x:Number=0, y:Number=0):void {}
	/**
	*  @param x1 (optional argument, default value is <code>0</code>)
	*  @param y1 (optional argument, default value is <code>0</code>)
	*  @param x2 (optional argument, default value is <code>0</code>)
	*  @param y2 (optional argument, default value is <code>0</code>)
	*  @param radius (optional argument, default value is <code>0</code>)
	*/
	public function arcTo(x1:Number=0, y1:Number=0, x2:Number=0, y2:Number=0, radius:Number=0):void {}
	/**
	*  @param x (optional argument, default value is <code>0</code>)
	*  @param y (optional argument, default value is <code>0</code>)
	*  @param width (optional argument, default value is <code>0</code>)
	*  @param height (optional argument, default value is <code>0</code>)
	*/
	public function rect(x:Number=0, y:Number=0, width:Number=0, height:Number=0):void {}
	/**
	*  @param x (optional argument, default value is <code>0</code>)
	*  @param y (optional argument, default value is <code>0</code>)
	*  @param radius (optional argument, default value is <code>0</code>)
	*  @param startAngle (optional argument, default value is <code>0</code>)
	*  @param endAngle (optional argument, default value is <code>0</code>)
	*  @param anticlockwise (optional argument, default value is <code>false</code>)
	*/
	public function arc(x:Number=0, y:Number=0, radius:Number=0, startAngle:Number=0, endAngle:Number=0, anticlockwise:Boolean=false):void {}
}

}