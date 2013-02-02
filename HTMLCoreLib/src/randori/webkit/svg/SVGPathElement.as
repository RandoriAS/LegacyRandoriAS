
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/svg/SVGPathElement.idl

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


[JavaScript(export=false, name="SVGPathElement")]
public class SVGPathElement extends SVGStyledElement implements SVGTests, SVGLangSpace, SVGExternalResourcesRequired, SVGTransformable
{

	public function get pathLength():SVGAnimatedNumber { return null; }
	public function getTotalLength():Number { return 0;}
	public function getPointAtLength(distance:Number=0):SVGPoint { return null;}
	public function getPathSegAtLength(distance:Number=0):uint { return 0;}
	public function createSVGPathSegClosePath():SVGPathSegClosePath { return null;}
	public function createSVGPathSegMovetoAbs(x:Number=0, y:Number=0):SVGPathSegMovetoAbs { return null;}
	public function createSVGPathSegMovetoRel(x:Number=0, y:Number=0):SVGPathSegMovetoRel { return null;}
	public function createSVGPathSegLinetoAbs(x:Number=0, y:Number=0):SVGPathSegLinetoAbs { return null;}
	public function createSVGPathSegLinetoRel(x:Number=0, y:Number=0):SVGPathSegLinetoRel { return null;}
	public function createSVGPathSegCurvetoCubicAbs(x:Number=0, y:Number=0, x1:Number=0, y1:Number=0, x2:Number=0, y2:Number=0):SVGPathSegCurvetoCubicAbs { return null;}
	public function createSVGPathSegCurvetoCubicRel(x:Number=0, y:Number=0, x1:Number=0, y1:Number=0, x2:Number=0, y2:Number=0):SVGPathSegCurvetoCubicRel { return null;}
	public function createSVGPathSegCurvetoQuadraticAbs(x:Number=0, y:Number=0, x1:Number=0, y1:Number=0):SVGPathSegCurvetoQuadraticAbs { return null;}
	public function createSVGPathSegCurvetoQuadraticRel(x:Number=0, y:Number=0, x1:Number=0, y1:Number=0):SVGPathSegCurvetoQuadraticRel { return null;}
	public function createSVGPathSegArcAbs(x:Number=0, y:Number=0, r1:Number=0, r2:Number=0, angle:Number=0, largeArcFlag:Boolean=false, sweepFlag:Boolean=false):SVGPathSegArcAbs { return null;}
	public function createSVGPathSegArcRel(x:Number=0, y:Number=0, r1:Number=0, r2:Number=0, angle:Number=0, largeArcFlag:Boolean=false, sweepFlag:Boolean=false):SVGPathSegArcRel { return null;}
	public function createSVGPathSegLinetoHorizontalAbs(x:Number=0):SVGPathSegLinetoHorizontalAbs { return null;}
	public function createSVGPathSegLinetoHorizontalRel(x:Number=0):SVGPathSegLinetoHorizontalRel { return null;}
	public function createSVGPathSegLinetoVerticalAbs(y:Number=0):SVGPathSegLinetoVerticalAbs { return null;}
	public function createSVGPathSegLinetoVerticalRel(y:Number=0):SVGPathSegLinetoVerticalRel { return null;}
	public function createSVGPathSegCurvetoCubicSmoothAbs(x:Number=0, y:Number=0, x2:Number=0, y2:Number=0):SVGPathSegCurvetoCubicSmoothAbs { return null;}
	public function createSVGPathSegCurvetoCubicSmoothRel(x:Number=0, y:Number=0, x2:Number=0, y2:Number=0):SVGPathSegCurvetoCubicSmoothRel { return null;}
	public function createSVGPathSegCurvetoQuadraticSmoothAbs(x:Number=0, y:Number=0):SVGPathSegCurvetoQuadraticSmoothAbs { return null;}
	public function createSVGPathSegCurvetoQuadraticSmoothRel(x:Number=0, y:Number=0):SVGPathSegCurvetoQuadraticSmoothRel { return null;}

	public function get pathSegList():SVGPathSegList { return null; }

	public function get normalizedPathSegList():SVGPathSegList { return null; }

	public function get animatedPathSegList():SVGPathSegList { return null; }

	public function get animatedNormalizedPathSegList():SVGPathSegList { return null; }

	public function get requiredFeatures():SVGStringList { return null; }

	public function get requiredExtensions():SVGStringList { return null; }

	public function get systemLanguage():SVGStringList { return null; }
	public function hasExtension(extension:String=''):Boolean { return false;}

	public function get xmllang():String { return ''; }
	public function set xmllang(value:String):void { }

	public function get xmlspace():String { return ''; }
	public function set xmlspace(value:String):void { }

	public function get externalResourcesRequired():SVGAnimatedBoolean { return null; }

	public function get transform():SVGAnimatedTransformList { return null; }

	public function get nearestViewportElement():SVGElement { return null; }

	public function get farthestViewportElement():SVGElement { return null; }
	public function getBBox():SVGRect { return null;}
	public function getCTM():SVGMatrix { return null;}
	public function getScreenCTM():SVGMatrix { return null;}
	public function getTransformToElement(element:SVGElement=null):SVGMatrix { return null;}
}

}