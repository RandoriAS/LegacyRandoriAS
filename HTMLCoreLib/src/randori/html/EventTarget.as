package randori.html
{
	import flash.events.Event;

	[JavaScript(export=false)]
	public class EventTarget
	{
		public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void{};
		
		public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void{};
		
		public function dispatchEvent(event:Event):Boolean{return false;};
		
		public function EventTarget()
		{
			super();
		}
	}
}