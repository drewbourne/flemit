package org.flemit.bytecode
{

	import org.flemit.util.ClassUtility;
	
	
	public class Multiname implements IEqualityComparable
	{
		private var _kind : uint;
		
		public function Multiname(kind : uint)
		{
			ClassUtility.assertAbstract(this, Multiname);
			
			_kind = kind;
		}
		
		public function get kind() : uint
		{
			return _kind;
		}
		
		public function equals(object : Object) : Boolean
		{
			return false;
		}
	}
}