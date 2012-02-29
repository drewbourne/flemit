package org.flemit.reflection
{
	import flash.system.ApplicationDomain;
	
	
	public interface ITypeProvider
	{
		function getType(cls : Class, applicationDomain : ApplicationDomain = null) : Type;
	}
}