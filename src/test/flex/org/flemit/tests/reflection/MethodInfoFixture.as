package org.flemit.tests.reflection
{
	import org.flemit.reflection.*;
	import org.flexunit.Assert;
	
	public class MethodInfoFixture
	{
		public function MethodInfoFixture()
		{
		}
		
		[Test]
		public function test_getCallingMethod_returnsThisMethod() : void
		{
			var method : MethodInfo = MethodInfo.getCallingMethod();
			
			Assert.assertEquals("test_getCallingMethod_returnsThisMethod", method.name);
			Assert.assertEquals(Type.getType(MethodInfoFixture), method.owner);
		}
		
		[Test]
		public function test_getCallingMethod_fromNestedFunction_returnsOuterMethod() : void
		{
			function testFunction() : void
			{
				var method : MethodInfo = MethodInfo.getCallingMethod();
			
				Assert.assertEquals("test_getCallingMethod_fromNestedFunction_returnsOuterMethod", method.name);
				Assert.assertEquals(Type.getType(MethodInfoFixture), method.owner);
			}
			
			testFunction();
		}
		
		[Test]
		public function test_getCallingMethod_fromAnonymousFunction_returnsOuterMethod() : void
		{
			var func : Function = function() : void
			{
				var method : MethodInfo = MethodInfo.getCallingMethod();
			
				Assert.assertEquals("test_getCallingMethod_fromAnonymousFunction_returnsOuterMethod", method.name);
				Assert.assertEquals(Type.getType(MethodInfoFixture), method.owner);
			}
			
			func();
		}

	}
}