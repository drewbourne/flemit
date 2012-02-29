package org.flemit.tests.reflection
{
	import org.flemit.reflection.Type;
	import org.flexunit.Assert;
	
	public class TypeFixture
	{
		public function TypeFixture()
		{
		}
		
		[Test]
		public function test_getType_XML_supported() : void
		{
			var xml : XML = new XML();
			
			var type : Type = Type.getType(xml);
			
			Assert.assertNotNull(type);
		}
		
		[Test]
		public function test_class_support() : void 
		{
			var classType : Type = Type.getType(Class);
			var fixtureType : Type = Type.getType(TypeFixture);
			
			var ret : Boolean = classType.isAssignableFrom(fixtureType);
			
			Assert.assertTrue(ret);
		}

	}
}