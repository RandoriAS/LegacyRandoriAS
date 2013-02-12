package randori.sizzlejs {
	import randori.webkit.dom.Document;
	import randori.webkit.dom.Element;

	[JavaScript(export="false", name="Sizzle")]
	public final class Sizzle {

		[JavaScriptMethod(name="")]
		public static function select(selector:String, DOMElement:Element, results:Array=null):Vector.<Element> {
			return null;
		}

		[JavaScriptMethod(name="")]
		public static function select2(selector:String, DOMElement:Document, results:Array=null):Vector.<Element> {
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

		[JavaScriptProperty(name="selectors.cacheLength")]
		public static var cacheLength:int;
	}
}
