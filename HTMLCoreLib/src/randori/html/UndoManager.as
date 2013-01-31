package randori.html
{
	
	[JavaScript(export=false,name="UndoManager")]
	public class UndoManager
	{
		public function clearRedo():void {};
		public function clearUndo():void {};
		public function redo():void {};
		public function undo():void {};

		public function UndoManager()
		{
			super();
		}
	}
}