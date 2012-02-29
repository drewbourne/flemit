package org.flemit.tests
{
	import org.flemit.tests.bytecode.ByteCodeWriterFixture;
	
	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class FLemitTestSuite
	{
		public var swfOutput : SWFOutputFixture; 
		public var swfReader : SWFReaderFixture;
		public var byteCodeWriter : ByteCodeWriterFixture;
	}
}