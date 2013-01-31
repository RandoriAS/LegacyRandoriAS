package randori.html
{
	[JavaScript(export=false,name="Window")]
	public class Window
	{
		public function setTimeout(handler:Function, timeout:int):int { return 0; }
		public function setInterval(handler:Function, timeout:int):int { return 0; }
		public function open():Window { return null; }
	}
}