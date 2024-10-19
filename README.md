## Keywords

```jai
Any
bool
break
CPU
case
cast
cast,no_check
Code
code_of
Context
context
continue
else
enum
enum_flags
false
float, float32, float64
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
OS
operator
push_context
s8, s16, s32, s64
size_of
string
struct
then
true
Type
type_info
type_of
u8, u16, u32, u64
union
using
using,except
using,map
using,only
while
xx
```

## Directives

```jai
#add_context decl;
#align
#as
#asm
#assert cond "msg";
#bytes
#bake_constants x;
#bake_arguments x;
() #c_call
#caller_code
#caller_location
#char
#code x;
#code,null;
() #compile_time
() #compiler;
if #complete x == { ... }
#cpp_method
#cpp_return_type_is_non_pod
#deprecated
#discard
() #dump
#dynamic_specialize
() #elsewhere
#entry_point
#expand
#file
#filepath
() #foreign
#if cond x;
#ifx ...
#import "module";
#import,dir "";
#import,file "";
#import,string "";
#insert x;
#insert_internal
#insert,scope();
() #intrinsic;
#library
#library,no_static_library
#library,system
#line
#load "file";
#location(x)
#modify x
#module_parameters(x)(x);
#must
#no_abc
#no_alias
#no_aoc
#no_debug
#no_padding
() #no_context;
#no_reset decl;
#place
#placeholder
#poke_name
#procedure_name
#procedure_of_call x;
#program_export
#run x;
#run,host x;
#run,stallable x;
#runtime_support
#scope_export
#scope_file
#scope_module
enum #specified {}
#string delim\n...delim
#symmetric
#system_library
#this
#through;
#type x;
#type,distinct x;
#type,isa x;
#type_info_no_size_complaint
#type_info_none
#type_info_procedures_are_void_pointers
```

## Loops

```jai
// for [<] [*] [name[, index] :] iterable body
//     where < = reversed, * = by pointer, name subsides it, index subsides it_index
// For example...
for int.[5, 10, 15] print("%: %\n", it_index, it);
```
