```jai
// === Workspace Constants ===
IS_CROSS_COMPILING
MACHINE_OPTIONS_SIZE
OS
CPU
TEMPORARY_STORAGE_SIZE
_STACK_TRACE

// === Types ===
Type
Code
Any
void
bool
int
u8
u16
u32
u64
s8
s16
s32
s64
float
float32
float64
v128
string

// === Keywords ===
break
case
cast
code_of
continue
defer
else
enum
enum_flags
for
initializer_of
if
ifx
interface
is_constant
inline
no_inline
operator
push_context
remove
return
size_of
struct
then
type_info
type_of
union
using
while
xx

// === Values ===
context
false
null
true

// === Directives ===
#add_context
#align
#as
#asm
#assert
#bake_arguments
#bake_constants
#bytes
#c_call
#caller_code
#caller_location
#char
#code
#compiler
#compile_time
#complete
#Context
#cpp_method
#cpp_return_type_is_non_pod
#deprecated
#discard
#dump
#dynamic_specialize
#elsewhere
#entry_point
#expand
#exists
#file
#filepath
#foreign
#library
#system_library
#if
#ifx
#import
#insert
#intrinsic
#line
#load
#location
#modify
#module_parameters
#must
#no_abc
#no_aoc
#no_alias
#no_context
#no_debug
#no_padding
#no_reset
#place
#placeholder
#poke_name
#procedure_name
#procedure_of_call
#program_export
#run
#runtime_support
#scope_export
#scope_file
#scope_module
#specified
#string
#symmetric
#this
#through
#type
#type_info_no_size_complaint
#type_info_none
#type_info_procedures_are_void_pointers

// === Grammar (~ABNF) (In progress) ===
Declaration =  IDENTIFIER  ":" Type_Instantiation ";"
Declaration =/ IDENTIFIER [":" Type_Instantiation] (":" / "=") expression ";" Note*
Note = "@" 1*VCHAR
