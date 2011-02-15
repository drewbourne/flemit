package org.flemit.bytecode
{
	import org.flemit.reflection.*;
	
	
	public interface IByteCodeLayoutBuilder
	{
		function registerType(type : Type) : void;
		function registerMethodBody(method : MethodInfo, methodBody : DynamicMethod) : void;
		
		function createLayout() : IByteCodeLayout;
	}
}