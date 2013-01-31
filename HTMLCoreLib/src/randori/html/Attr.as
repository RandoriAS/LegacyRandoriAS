package randori.html
{
	[JavaScript(export=false,name="Attr")]
	public class Attr extends Node
	{
		public var isId:Boolean;
		public var name:String;
		public var ownerElement:Element;
		public var specified:Boolean;
		public var value:String;

		public function Attr()
		{
			super();
		}
	}
}