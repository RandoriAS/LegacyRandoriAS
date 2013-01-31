package randori.html
{
	public class HtmlElement extends Element
	{
		public var accessKey:String;
		public var children:HtmlCollection;
		public var classList:DomTokenList;
		public var className:String;
		public var contentEditable:String;
		public var dir:String;
		public var draggable:Boolean;
		public var hidden:Boolean;
		public var id:String;
		public var innerHTML:String;
		public var innerText:String;
		public var isContentEditable:Boolean;
		public var itemId:String;
		public var itemProp:DOMSettableTokenList;
		public var itemRef:DOMSettableTokenList;
		public var itemScope:Boolean;
		public var itemType:DOMSettableTokenList;
		public var itemValue:Object;
		public var lang:String;
		public var outerHTML:String;
		public var outerText:String;
		public var spellcheck:Boolean;
		public var tabIndex:int;
		public var title:String;
		public var translate:Boolean;
		
		public function click():void {return;} 
		public function insertAdjacentElement(where:String, element:Element):Element {return null;} 
		public function insertAdjacentHTML(where:String, html:String):void {return;} 
		public function insertAdjacentText(where:String, text:String):void {return;} 

		public function HtmlElement()
		{
			super();
		}
	}
}