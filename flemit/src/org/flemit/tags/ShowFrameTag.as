package org.flemit.tags
{
	import org.flemit.ISWFOutput;
	import org.flemit.Tag;
	
	
	public class ShowFrameTag extends Tag
	{
		public static const TAG_ID : int = 0x1;
		
		private var _name : String;
		
		public function ShowFrameTag()
		{
			super(TAG_ID);
		}
		
		public override function writeData(output : ISWFOutput) : void
		{
		}
	}
}