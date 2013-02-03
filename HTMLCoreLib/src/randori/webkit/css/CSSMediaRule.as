
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/css/CSSMediaRule.idl

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


[JavaScript(export="false", name="CSSMediaRule")]
/**
 *  <p>
 *  The <code>CSSMediaRule</code> interface represents a @media
 *  rule in a CSS style sheet. A <code>@media</code> rule can be
 *  used to delimit style rules for specific media types.
 *  </p>
 *  @author RandoriAS
 *  @version 1.0
 *  @productversion RandoriAS 1.0
 *  @since 1.0
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/media.html#at-media-rule
 *  @see http://www.w3.org/TR/1998/REC-CSS2-19980512/media.html#media-types
 *  @see randori.webkit.css.CSSRule
 */
public class CSSMediaRule extends CSSRule
{

	/**
	*  @see randori.webkit.css.MediaList
	*/
	public function get media():MediaList { return null; }

	/**
	*  @see randori.webkit.css.CSSRuleList
	*/
	public function get cssRules():CSSRuleList { return null; }
	/**
	*  @param rule (optional argument, default value is <code>undefined</code>)
	*  @param index (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public function insertRule(rule:String=undefined, index:uint=undefined):uint { return 0;}
	/**
	*  @param index (optional argument, default value is <code>undefined</code>)
	*/
	public function deleteRule(index:uint=undefined):void {}
}

}