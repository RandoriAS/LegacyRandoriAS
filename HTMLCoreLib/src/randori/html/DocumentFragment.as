package randori.html
{
	[JavaScript(export=false,name="DocumentFragment")]
	public class DocumentFragment extends Node
	{
		public function querySelector(selectors:String):Element {return null;}
		public function querySelectorAll(selectors:String):NodeList {return null;}

		public function DocumentFragment()
		{
			super();
		}
	}
}