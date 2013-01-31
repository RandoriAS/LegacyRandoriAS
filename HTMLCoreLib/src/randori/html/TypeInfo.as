package randori.html
{
	[JavaScript(export=false,name="TypeInfo")]
	public class TypeInfo
	{
		public static const DERIVATION_RESTRICTION:uint = 0x00000001;
		public static const DERIVATION_EXTENSION:uint = 0x00000002;
		public static const DERIVATION_UNION:uint = 0x00000004;
		public static const DERIVATION_LIST:uint = 0x00000008;

		public var typeName:String;
		public var typeNamespace:String;
		
		public function isDerivedFrom(typeNamespaceArg:String, typeNameArg:String, derivationMethod:int):Boolean { return false; };
			
		public function TypeInfo()
		{
			super();
		}
	}
}