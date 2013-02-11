package randori.sizzlejs {
	import randori.webkit.dom.Document;
	import randori.webkit.dom.Element;

	[Javascript(export="false", name="Sizzle")]
	public final class Sizzle {

		[JavascriptMethod(name="")]
		public static function Sizzle(selector:String, DOMElement:Element, results:Array=null):Vector.<Element> {
			return null;
		}

		[JavascriptMethod(name="")]
		public static function Sizzle2(selector:String, DOMElement:Document, results:Array=null):Vector.<Element> {
			return null;
		}

		public static function matchesSelector(element:Element, selector:String):Boolean {
			return false;
		}

		public static function matches(selector:String, elements:Vector.<Element>):Vector.<Element> {
			return null;
		}

		public static function compile(selector:String):void {
		}

		[JavascriptProperty(name="selectors.cacheLength")]
		public static var cacheLength:int;
	}
}
