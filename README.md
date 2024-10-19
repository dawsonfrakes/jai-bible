## Keywords

```jai
Any
bool
break
case
cast
cast,no_check
Code
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
inline
int
interface
is_constant
it
it_index
null
operator
s8, s16, s32, s64, s128
size_of
string
struct
then
true
Type
type_info
type_of
u8, u16, u32, u64, u128
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
#assert cond "msg";
#bake_constant x;
#bake_argument x;
#caller_code
#caller_location
#code x;
#code,null;
() #compile_time
() #compiler;
if #complete x == { ... }
() #c_call
() #dump
() #elsewhere
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
#insert,scope();
() #intrinsic;
#library
#library,no_static_library
#library,system
#load "file";
#location(x)
#modify x
#module_parameters(x)(x);
() #no_context;
#no_reset decl;
#procedure_of_call x;
#run x;
#run,host x;
#run,stallable x;
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
