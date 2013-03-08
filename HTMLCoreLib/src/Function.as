package 
{
    dynamic public class Function extends Object
    {
        public static const length:int = 1;

        public function Function(){
		}

		public function get length():int { return 0;}

		public function call(thisArg:*=null, ... args):*;

		public function apply(thisArg:*=null, argArray:*=null):*;

		public function toString():String{ return null;}
		
    }
}
