package org.flemit.reflection
{
    import org.flemit.bytecode.BCNamespace;
    import org.flemit.bytecode.Multiname;
    import org.flemit.bytecode.NamespaceKind;
    import org.flemit.bytecode.QualifiedName;
    
    
    public class MemberInfo
    {
        private var _owner:Type;
        private var _name:String;
        private var _fullName:String;
        private var _ns:String;
        private var _visibility:uint;
        private var _qname:QualifiedName;
        private var _isStatic:Boolean;
        private var _isOverride:Boolean;
        
        public function MemberInfo(owner:Type, name:String, fullName:String, visibility:uint, isStatic:Boolean, isOverride:Boolean,
            ns:String)
        {
            _name = name;
            _visibility = visibility;
            _owner = owner;
            _isStatic = isStatic;
            _isOverride = isOverride;
            _ns = ns || "";
            
            _qname = (_visibility == MemberVisibility.PUBLIC)
                ? new QualifiedName(new BCNamespace(_ns, NamespaceKind.PACKAGE_NAMESPACE), name)
                : new QualifiedName(new BCNamespace(owner.packageName + ':' + owner.name, _visibility), name);
            
            _fullName = (fullName != null)
                ? fullName
                : (owner.isInterface)
                ? owner.fullName.concat('/', owner.fullName, ':', name)
                : owner.fullName.concat('/', name);
        
        }
        
        public function get name():String
        {
            return _name;
        }
        
        public function get fullName():String
        {
            return _fullName;
        }
        
        public function get ns():String
        {
            return _ns;
        }
        
        public function get visibility():uint
        {
            return _visibility;
        }
        
        public function get isStatic():Boolean
        {
            return _isStatic;
        }
        
        public function get isOverride():Boolean
        {
            return _isOverride;
        }
        
        public function get qname():QualifiedName
        {
            return _qname;
        }
        
        public function get owner():Type
        {
            return _owner;
        }
    }
}