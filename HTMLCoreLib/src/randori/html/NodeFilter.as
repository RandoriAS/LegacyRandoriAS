package randori.html
{
	[JavaScript(export=false,name="NodeFilter")]
	public class NodeFilter
	{
		public static const FILTER_ACCEPT:uint = 1;
		public static const FILTER_REJECT:uint = 2;
		public static const FILTER_SKIP:uint = 3;
		
		public static const SHOW_ALL:uint = 0xFFFFFFF;
		public static const SHOW_ELEMENT:uint = 0x00000001;
		public static const SHOW_ATTRIBUTE:uint = 0x00000002;
		public static const SHOW_TEXT:uint = 0x00000004;
		public static const SHOW_CDATA_SECTION:uint = 0x00000008;
		public static const SHOW_ENTITY_REFERENCE:uint = 0x00000010;
		public static const SHOW_ENTITY:uint = 0x00000020;
		public static const SHOW_PROCESSING_INSTRUCTION:uint = 0x00000040;
		public static const SHOW_COMMENT:uint = 0x00000080;
		public static const SHOW_DOCUMENT:uint = 0x00000100;
		public static const SHOW_DOCUMENT_TYPE:uint = 0x00000200;
		public static const SHOW_DOCUMENT_FRAGMENT:uint = 0x00000400;
		public static const SHOW_NOTATION:uint = 0x00000800;
		public function acceptNode(node:Node):int { return 0; }
		
		public function NodeFilter()
		{
			super();
		}
	}
}