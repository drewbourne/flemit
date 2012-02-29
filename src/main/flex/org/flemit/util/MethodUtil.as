package org.flemit.util
{
	import org.flemit.reflection.*;
	
	public class MethodUtil
	{
		public static function getRequiredArgumentCount(method :  MethodInfo) : uint
		{
			var i : uint = 0;
			
			for (; i<method.parameters.length; i++)
			{
				var param : ParameterInfo = method.parameters[i];
				
				if (param.optional)
				{
					return i;
				}
			}
			
			return method.parameters.length;
		}
	}
}