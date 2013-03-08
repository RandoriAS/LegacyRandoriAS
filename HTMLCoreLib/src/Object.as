package {

	dynamic public class Object {
		public static const length:int = 1;

		public function Object() {
			return;
		}

		public function isPrototypeOf(p:*=null):Boolean {
			return false;
		}

		public function hasOwnProperty(p:*=null):Boolean {
			return false;
		}

		public function propertyIsEnumerable(p:*=null):Boolean {
			return false;
		}

	}
}
