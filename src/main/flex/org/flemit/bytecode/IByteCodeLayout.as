package org.flemit.bytecode
{
	import flash.utils.IDataOutput;
	
	
	public interface IByteCodeLayout
	{
		function write(output : IDataOutput) : void;		
	}
}