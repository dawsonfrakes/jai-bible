# The Language

## Table of Contents

- [Keywords](#keywords)
- [Compiler Defines](#compiler-defines)
- [Directives](#directives)
- [Compiler Builtins](#compiler-builtins)
- [Precedence](#precedence)
- [Loops](#loops)

## Keywords

```jai
Any
bool
break
case
cast
cast,force
cast,FORCE
cast,no_check
cast,trunc
Code
code_of
Context
context
continue
else
enum
enum_flags
false
float
float32
float64
for
remove
if
ifx
initializer_of
inline
int
interface
is_constant
it
it_index
no_inline
null
operator
push_context
push_context,defer_pop
s8
s16
s32
s64
size_of
string
struct
then
true
Type
type_info
type_of
u8
u16
u32
u64
union
using
using,except
using,map
using,only
while
xx
```

## Compiler Defines

```jai
CPU
MACHINE_OPTIONS_SIZE
OS
TEMPORARY_STORAGE_SIZE
```

## Directives

```jai
#add_context
#align
#as
#asm
#assert
#bytes
#bake_constants
#bake_arguments
#c_call
#caller_code
#caller_location
#char
#code
#code,typed
#code,null
#compile_time
#compiler
#complete
#cpp_method
#cpp_return_type_is_non_pod
#deprecated
#discard
#dump
#dynamic_specialize
#elsewhere
#entry_point
#exists
#expand
#file
#filepath
#foreign
#if
#ifx
#import
#import,dir
#import,file
#import,string
#import,unshared
#insert
#insert,scope()
#insert_internal
#intrinsic
#library
#library,link_always
#library,no_dll
#library,no_static_library
#library,system
#line
#load
#location
#modify
#module_parameters
#must
#no_abc
#no_alias
#no_aoc
#no_call
#no_debug
#no_padding
#no_context
#no_reset
#place
#placeholder
#poke_name
#procedure_name
#procedure_of_call
#program_export
#run
#run,host
#run,stallable
#runtime_support
#scope_export
#scope_file
#scope_module
#specified
#string
#symmetric
#system_library
#this
#through
#type
#type,distinct
#type,isa
#type_info_no_size_complaint
#type_info_none
#type_info_procedures_are_void_pointers
```

## Compiler Builtins

```jai
write_string :: (s: string, to_standard_error := false) #no_context #compiler;
write_strings :: (strings: ..string, to_standard_error := false) #no_context #compiler;
compile_time_debug_break :: () #no_context #compiler;
get_current_workspace :: () -> Workspace #compiler;
get_name :: (w: Workspace = -1) -> string #compiler;
compiler_create_workspace :: (name := "") -> Workspace #compiler;
compiler_destroy_workspace :: (w: Workspace) #compiler;
compiler_begin_intercept :: (w: Workspace, flags: Intercept_Flags = 0) #compiler;
compiler_end_intercept :: (w: Workspace) #compiler;
compiler_wait_for_message :: () -> *Message #compiler;
compiler_modify_procedure :: (w: Workspace, body: *Code_Procedure_Body) #compiler;
compiler_make_procedure_live :: (w: Workspace, header: *Code_Procedure_Header) #compiler;
compiler_custom_link_command_is_complete :: (w: Workspace) #compiler;
compiler_get_struct_location :: (w: Workspace, info: *Type_Info_Struct) -> Source_Code_Location #compiler;
compiler_set_workspace_status :: (status: Workspace_Status, w: Workspace = -1) #compiler;
get_runtime_info :: (w: Workspace = -1) -> Runtime_Info #compiler;
get_type_table :: (w: Workspace = -1) -> [] *Type_Info;
add_build_file :: (filename: string, w: Workspace, loc := #caller_location) #compiler;
add_build_string :: (data: string, w: Workspace, code := #code,null, loc := #caller_location) #compiler;
add_build_string_scoped_by_message :: (data: string, w: Workspace, message: *Message, loc := #caller_location) #compiler;
get_build_options :: (w: Workspace = -1) -> Build_Options #compiler;
set_build_options :: (options: Build_Options, w: Workspace = -1, loc := #caller_location) #compiler;
remap_import :: (w: Workspace, host_module_name: string, import_name: string, replacement_name: string) #compiler;
provide_import :: (w: Workspace, message: *Message_Failed_Import, type: Provided_Import_Type, value: string) #compiler;
set_build_options_dc :: (options: Build_Options_During_Compile, w: Workspace = -1) #compiler;
add_global_data :: (data: [] u8, segment: Data_Segment_Index, user_segment: *Data_Segment = null, w: Workspace = -1) -> [] u8 #compiler;
add_data_segment :: (section_name: string, characteristics := Data_Segment_Characteristics.READ | .WRITE, alignment: s32 = 16, w: Workspace = -1) -> (segment: *Data_Segment, actual_segment_will_be_created: bool) #compiler;
compiler_get_version_info :: (version_info_return: *Version_Info) -> string #compiler;
compiler_report :: (message: string, loc := #caller_location, mode := Report.ERROR) #compiler;
compiler_report_errors_for_unresolved_identifiers :: (filename: string, w: Workspace = -1) #compiler;
compiler_report_errors_for_untyped_declarations_with_these_notes :: (w: Workspace, labels: .. string) #compiler;
compiler_set_memory_breakpoint :: (pointer: *void) #compiler;
compiler_add_library_search_directory :: (path: string) #compiler;
compiler_get_nodes :: (code: Code) -> (root: *Code_Node, expressions: [] *Code_Node) #compiler;
compiler_get_code :: (node: *Code_Node, code_to_copy_scope_from: Code = #code,null) -> Code #compiler;
compiler_set_type_info_flags :: (type: Type, flags: Type_Info_Flags) #compiler;
get_root_type :: (code: Code) -> (status: Get_Root_Type_Status, type: Type) #compiler;
get_type :: (ti: *Type_Info) -> Type #compiler;
developer_debug :: (x: *void) #compiler;
get_toplevel_command_line :: () -> [] string #compiler;
compiler_get_base_path :: () -> string #compiler;
```

## Precedence

```jai
note: under construction...
0: ~
1: &
2: |
3: << >>
4: == !=
5: &&
6: ||
```

## Loops

```jai
// for [<[=exp]] [*[=exp]] [:iterator] [name[, index] :] iterable body
//     where < = reversed, * = by pointer, iterator = a for_expansion, name replaces `it`, index replaces `it_index`
// while [name :=] condition body
//     where name can be used in break/continue statements

for int.[5, 10, 15] print("%: %\n", it_index, it);
for <=false *=false value, index : int.[5, 10, 15] print("%: %\n", index, value);
for j: 4..5 for i: 1..3 break j; // can break by name. note: end of ranges are INCLUSIVE!
while true print("Welcome to a world of endless wonder.\n");
```

## Based on

- [The Pure sh Bible](https://github.com/dylanaraps/pure-sh-bible)
- [Modern OpenGL Guide](https://github.com/fendevel/Guide-to-Modern-OpenGL-Functions)
