/* gobject-introspection-1.0.vapi generated by vapigen, do not modify. */

[CCode (cprefix = "GI", gir_namespace = "GIRepository", gir_version = "2.0", lower_case_cprefix = "g_")]
namespace GI {
	[CCode (cheader_filename = "girepository.h")]
	public class ArgInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected ArgInfo ();
		public int get_closure ();
		public int get_destroy ();
		public GI.Direction get_direction ();
		public GI.Transfer get_ownership_transfer ();
		public GI.ScopeType get_scope ();
		public GI.TypeInfo get_type ();
		public bool is_caller_allocates ();
		public bool is_optional ();
		public bool is_return_value ();
		public bool is_skip ();
		public void load_type (out unowned GI.TypeInfo type);
		public bool may_be_null ();
	}

	[CCode (cheader_filename = "girepository.h", copy_function = "g_base_info_unref", free_function = "g_base_info_unref", lower_case_csuffix = "base_info_gtype", type_id = "g_base_info_gtype_get_type ()")]
	[Compact]
	public class BaseInfo {
		[CCode (cname = "g_base_info_equal")]
		public bool equal (GI.BaseInfo info2);
		[CCode (cname = "g_base_info_get_attribute")]
		public unowned string get_attribute (string name);
		[CCode (cname = "g_base_info_get_container")]
		public unowned GI.BaseInfo get_container ();
		[CCode (cname = "g_base_info_get_name")]
		public unowned string get_name ();
		[CCode (cname = "g_base_info_get_namespace")]
		public unowned string get_namespace ();
		[CCode (cname = "g_base_info_get_type")]
		public GI.InfoType get_type ();
		[CCode (cname = "g_base_info_get_typelib")]
		public unowned GI.Typelib get_typelib ();
		[CCode (cname = "g_base_info_is_deprecated")]
		public bool is_deprecated ();
		[CCode (cname = "g_base_info_iterate_attributes")]
		public bool iterate_attributes (GI.AttributeIter iterator, out unowned string name, out unowned string value);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class CallableInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected CallableInfo ();
		public bool can_throw_gerror ();
		public GI.ArgInfo get_arg (int n);
		public GI.Transfer get_caller_owns ();
		public GI.Transfer get_instance_ownership_transfer ();
		public int get_n_args ();
		public unowned string get_return_attribute (string name);
		public GI.TypeInfo get_return_type ();
		public bool invoke (void* function, GI.Argument in_args, int n_in_args, GI.Argument out_args, int n_out_args, GI.Argument return_value, bool is_method, bool @throws) throws GLib.Error;
		public bool is_method ();
		public bool iterate_return_attributes (GI.AttributeIter iterator, out unowned string name, out unowned string value);
		public void load_arg (int n, out unowned GI.ArgInfo arg);
		public void load_return_type (out unowned GI.TypeInfo type);
		public bool may_return_null ();
		public bool skip_return ();
	}
	[CCode (cheader_filename = "girepository.h")]
	public class CallbackInfo : GI.CallableInfo {
		[CCode (has_construct_function = false)]
		protected CallbackInfo ();
	}
	[CCode (cheader_filename = "girepository.h")]
	public class ConstantInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected ConstantInfo ();
		public GI.TypeInfo get_type ();
		public int get_value (ref GI.Argument @value);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class EnumInfo : GI.RegisteredTypeInfo {
		[CCode (has_construct_function = false)]
		protected EnumInfo ();
		public unowned string get_error_domain ();
		public GI.FunctionInfo get_method (int n);
		public int get_n_methods ();
		public int get_n_values ();
		public GI.TypeTag get_storage_type ();
		public GI.ValueInfo get_value (int n);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class FieldInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected FieldInfo ();
		public GI.FieldInfoFlags get_flags ();
		public int get_offset ();
		public int get_size ();
		public GI.TypeInfo get_type ();
		public bool get_field (void* mem, ref GI.Argument @value);
		public bool set_field (void* mem, GI.Argument @value);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class FunctionInfo : GI.CallableInfo {
		[CCode (has_construct_function = false)]
		protected FunctionInfo ();
		public GI.FunctionInfoFlags get_flags ();
		public GI.PropertyInfo get_property ();
		public unowned string get_symbol ();
		public GI.VFuncInfo get_vfunc ();
		public bool invoke (GI.Argument[]? in_args, GI.Argument[]? out_args, out GI.Argument return_value) throws InvokeError;
	}
	[CCode (cheader_filename = "girepository.h")]
	public class InterfaceInfo : GI.RegisteredTypeInfo {
		[CCode (has_construct_function = false)]
		protected InterfaceInfo ();
		public GI.FunctionInfo find_method (string name);
		public GI.SignalInfo find_signal (string name);
		public GI.VFuncInfo find_vfunc (string name);
		public GI.ConstantInfo get_constant (int n);
		public GI.StructInfo get_iface_struct ();
		public GI.FunctionInfo get_method (int n);
		public int get_n_constants ();
		public int get_n_methods ();
		public int get_n_prerequisites ();
		public int get_n_properties ();
		public int get_n_signals ();
		public int get_n_vfuncs ();
		public GI.BaseInfo get_prerequisite (int n);
		public GI.PropertyInfo get_property (int n);
		public GI.SignalInfo get_signal (int n);
		public GI.VFuncInfo get_vfunc (int n);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class ObjectInfo : GI.RegisteredTypeInfo {
		[CCode (has_construct_function = false)]
		protected ObjectInfo ();
		public GI.FunctionInfo find_method (string name);
		public GI.FunctionInfo find_method_using_interfaces (string name, out GI.ObjectInfo implementor);
		public GI.SignalInfo find_signal (string name);
		public GI.VFuncInfo find_vfunc (string name);
		public GI.VFuncInfo find_vfunc_using_interfaces (string name, out GI.ObjectInfo implementor);
		public bool get_abstract ();
		public GI.StructInfo get_class_struct ();
		public GI.ConstantInfo get_constant (int n);
		public GI.FieldInfo get_field (int n);
		public bool get_fundamental ();
		public unowned string get_get_value_function ();
		public GI.InterfaceInfo get_interface (int n);
		public GI.FunctionInfo get_method (int n);
		public int get_n_constants ();
		public int get_n_fields ();
		public int get_n_interfaces ();
		public int get_n_methods ();
		public int get_n_properties ();
		public int get_n_signals ();
		public int get_n_vfuncs ();
		public GI.ObjectInfo get_parent ();
		public GI.PropertyInfo get_property (int n);
		public unowned string get_ref_function ();
		public unowned string get_set_value_function ();
		public GI.SignalInfo get_signal (int n);
		public unowned string get_type_init ();
		public unowned string get_type_name ();
		public unowned string get_unref_function ();
		public GI.VFuncInfo get_vfunc (int n);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class PropertyInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected PropertyInfo ();
		public GLib.ParamFlags get_flags ();
		public GI.Transfer get_ownership_transfer ();
		public GI.TypeInfo get_type ();
	}
	[CCode (cheader_filename = "girepository.h")]
	public class RegisteredTypeInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected RegisteredTypeInfo ();
		public GLib.Type get_g_type ();
		public unowned string get_type_init ();
		public unowned string get_type_name ();
	}
	[CCode (cheader_filename = "girepository.h", lower_case_csuffix = "irepository", type_id = "g_irepository_get_type ()")]
	public class Repository : GLib.Object {
		[CCode (has_construct_function = false)]
		protected Repository ();
		public static bool dump (string arg) throws GLib.Error;
		public GLib.List<string> enumerate_versions (string namespace_);
		public static GLib.Quark error_quark ();
		public GI.EnumInfo find_by_error_domain (GLib.Quark domain);
		public GI.BaseInfo find_by_gtype (GLib.Type gtype);
		public GI.BaseInfo find_by_name (string namespace_, string name);
		public unowned string get_c_prefix (string namespace_);
		public static unowned GI.Repository get_default ();
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_dependencies (string namespace_);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_immediate_dependencies (string namespace_);
		public GI.BaseInfo get_info (string namespace_, int index);
		[CCode (array_length = false, array_null_terminated = true)]
		public string[] get_loaded_namespaces ();
		public int get_n_infos (string namespace_);
		public static unowned GLib.SList<string> get_search_path ();
		public unowned string get_shared_library (string namespace_);
		public unowned string get_typelib_path (string namespace_);
		public unowned string get_version (string namespace_);
		public bool is_registered (string namespace_, string? version);
		public unowned string load_typelib (GI.Typelib typelib, GI.RepositoryLoadFlags flags) throws GLib.Error;
		public static void prepend_library_path (string directory);
		public static void prepend_search_path (string directory);
		public unowned GI.Typelib require (string namespace_, string? version, GI.RepositoryLoadFlags flags) throws GLib.Error;
		public unowned GI.Typelib require_private (string typelib_dir, string namespace_, string? version, GI.RepositoryLoadFlags flags) throws GLib.Error;
	}
	[CCode (cheader_filename = "girepository.h")]
	public class SignalInfo : GI.CallableInfo {
		[CCode (has_construct_function = false)]
		protected SignalInfo ();
		public GI.VFuncInfo get_class_closure ();
		public GLib.SignalFlags get_flags ();
		public bool true_stops_emit ();
	}
	[CCode (cheader_filename = "girepository.h")]
	public class StructInfo : GI.RegisteredTypeInfo {
		[CCode (has_construct_function = false)]
		protected StructInfo ();
		public GI.FieldInfo find_field (string name);
		public GI.FunctionInfo find_method (string name);
		public size_t get_alignment ();
		public GI.FieldInfo get_field (int n);
		public GI.FunctionInfo get_method (int n);
		public int get_n_fields ();
		public int get_n_methods ();
		public size_t get_size ();
		public bool is_foreign ();
		public bool is_gtype_struct ();
	}
	[CCode (cheader_filename = "girepository.h", lower_case_csuffix = "type_info")]
	public class TypeInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected TypeInfo ();
		public int get_array_fixed_size ();
		public int get_array_length ();
		public GI.ArrayType get_array_type ();
		public GI.BaseInfo get_interface ();
		public GI.TypeInfo get_param_type (int n);
		public GI.TypeTag get_tag ();
		public bool is_pointer ();
		public bool is_zero_terminated ();
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "g_typelib", free_function = "g_typelib_free")]
	[Compact]
	public class Typelib {
		public Typelib.new_from_mapped_file(GLib.MappedFile mfile) throws GLib.Error;
		public unowned string get_namespace ();
		public bool symbol (string symbol_name, void* symbol);
	}
	[CCode (cheader_filename = "girepository.h")]
	public class UnionInfo : GI.RegisteredTypeInfo {
		[CCode (has_construct_function = false)]
		protected UnionInfo ();
		public GI.FunctionInfo find_method (string name);
		public size_t get_alignment ();
		public GI.ConstantInfo get_discriminator (int n);
		public int get_discriminator_offset ();
		public GI.TypeInfo get_discriminator_type ();
		public GI.FieldInfo get_field (int n);
		public GI.FunctionInfo get_method (int n);
		public int get_n_fields ();
		public int get_n_methods ();
		public size_t get_size ();
		public bool is_discriminated ();
	}
	[CCode (cheader_filename = "girepository.h")]
	[Compact]
	public class UnresolvedInfo {
		
	}
	[CCode (cheader_filename = "girepository.h")]
	public class VFuncInfo : GI.CallableInfo {
		[CCode (has_construct_function = false)]
		protected VFuncInfo ();
		public GI.VFuncInfoFlags get_flags ();
		public GI.FunctionInfo get_invoker ();
		public int get_offset ();
		public GI.SignalInfo get_signal ();
	}
	[CCode (cheader_filename = "girepository.h")]
	public class ValueInfo : GI.BaseInfo {
		[CCode (has_construct_function = false)]
		protected ValueInfo ();
		public int64 get_value ();
	}
	[CCode (cheader_filename = "girepository.h")]
	public struct Argument {
		public bool v_boolean;
		public int8 v_int8;
		public uint8 v_uint8;
		public int16 v_int16;
		public uint16 v_uint16;
		public int32 v_int32;
		public uint32 v_uint32;
		public int64 v_int64;
		public uint64 v_uint64;
		public float v_float;
		public double v_double;
		public short v_short;
		public ushort v_ushort;
		public int v_int;
		public uint v_uint;
		public long v_long;
		public ulong v_ulong;
		public ssize_t v_ssize;
		public size_t v_size;
		public weak string v_string;
		public void* v_pointer;
	}
	[CCode (cheader_filename = "girepository.h", has_type_id = false)]
	public struct AttributeIter {
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_ARRAY_TYPE_", has_type_id = false)]
	public enum ArrayType {
		C,
		ARRAY,
		PTR_ARRAY,
		BYTE_ARRAY
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_DIRECTION_", has_type_id = false)]
	public enum Direction {
		IN,
		OUT,
		INOUT
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_FIELD_IS_", has_type_id = false)]
	[Flags]
	public enum FieldInfoFlags {
		READABLE,
		WRITABLE
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_FUNCTION_", has_type_id = false)]
	[Flags]
	public enum FunctionInfoFlags {
		IS_METHOD,
		IS_CONSTRUCTOR,
		IS_GETTER,
		IS_SETTER,
		WRAPS_VFUNC,
		THROWS
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_INFO_TYPE_", has_type_id = false)]
	public enum InfoType {
		INVALID,
		FUNCTION,
		CALLBACK,
		STRUCT,
		BOXED,
		ENUM,
		FLAGS,
		OBJECT,
		INTERFACE,
		CONSTANT,
		INVALID_0,
		UNION,
		VALUE,
		SIGNAL,
		VFUNC,
		PROPERTY,
		FIELD,
		ARG,
		TYPE,
		UNRESOLVED;
		public unowned string to_string ();
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "G_IREPOSITORY_ERROR_", has_type_id = false)]
	public enum RepositoryError {
		TYPELIB_NOT_FOUND,
		NAMESPACE_MISMATCH,
		NAMESPACE_VERSION_CONFLICT,
		LIBRARY_NOT_FOUND
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "G_IREPOSITORY_LOAD_FLAG_", has_type_id = false)]
	[Flags]
	public enum RepositoryLoadFlags {
		[CCode (cname = "G_IREPOSITORY_LOAD_FLAG_LAZY")]
		IREPOSITORY_LOAD_FLAG_LAZY
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_SCOPE_TYPE_", has_type_id = false)]
	public enum ScopeType {
		INVALID,
		CALL,
		ASYNC,
		NOTIFIED
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_TRANSFER_", has_type_id = false)]
	public enum Transfer {
		NOTHING,
		CONTAINER,
		EVERYTHING
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_TYPE_TAG_", has_type_id = false)]
	public enum TypeTag {
		VOID,
		BOOLEAN,
		INT8,
		UINT8,
		INT16,
		UINT16,
		INT32,
		UINT32,
		INT64,
		UINT64,
		FLOAT,
		DOUBLE,
		GTYPE,
		UTF8,
		FILENAME,
		ARRAY,
		INTERFACE,
		GLIST,
		GSLIST,
		GHASH,
		ERROR,
		UNICHAR;
		public unowned string to_string ();
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "GI_VFUNC_", has_type_id = false)]
	[Flags]
	public enum VFuncInfoFlags {
		MUST_CHAIN_UP,
		MUST_OVERRIDE,
		MUST_NOT_OVERRIDE,
		THROWS
	}
	[CCode (cheader_filename = "girepository.h", cprefix = "G_INVOKE_ERROR_", has_type_id = false)]
	public errordomain InvokeError {
		FAILED,
		SYMBOL_NOT_FOUND,
		ARGUMENT_MISMATCH
	}
	[CCode (cheader_filename = "girepository.h")]
	public static GI.BaseInfo info_new (GI.InfoType type, GI.BaseInfo container, GI.Typelib typelib, uint32 offset);
	[CCode (cheader_filename = "girepository.h")]
	public static GLib.Quark invoke_error_quark ();
}