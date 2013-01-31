package randori.html
{
	[JavaScript(export=false,name="DOMImplementation")]
	public class DOMImplementation
	{
		public function createCSSStyleSheet(title:String, media:String):CssStyleSheet { return null; };
		public function createDocument(namespaceURI:String, qualifiedName:String, doctype:DocumentType):Document { return null; }
		public function createDocumentType(qualifiedName:String, publicId:String, systemId:String):DocumentType { return null; }
		public function createHTMLDocument(title:String):HtmlDocument { return null; }
		public function hasFeature( feature:String , version:String ):Boolean { return false; }

		public function DOMImplementation()
		{
		}
	}
}