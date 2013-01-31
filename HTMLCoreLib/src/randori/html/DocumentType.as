package randori.html
{
	public class DocumentType extends Node
	{
		public var entities:NamedNodeMap;
		public var internalSubset:String;
		public var name:String;
		public var notations:NamedNodeMap;
		public var publicId:String;
		public var systemId:String;

		public function DocumentType()
		{
			super();
		}
	}
}