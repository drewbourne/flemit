package org.flemit.tests
{
	import org.flemit.tests.reflection.MethodInfoFixture;
	import org.flemit.tests.reflection.TypeFixture;
	
	[Suite]
	[RunWith("org.flexunit.runners.Suite")]
	public class ReflectionTestSuite
	{
		public var methodInfo : MethodInfoFixture; 
		public var type : TypeFixture; 
	}
}