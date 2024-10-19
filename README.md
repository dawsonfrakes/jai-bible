# The Language

## Table of Contents

- [Keywords](#keywords)
- [Directives](#directives)
- [Loops](#loops)

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
OS
operator
push_context
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
#insert
#insert_internal
#insert,scope
#intrinsic
#library
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

## Loops

```jai
// for [<[=exp]] [*[=exp]] [name[, index] :] iterable body
//     where < = reversed, * = by pointer, name subsides it, index subsides it_index

// An example...
for int.[5, 10, 15] print("%: %\n", it_index, it);

// or for maximum verbosity...
for <=false *=false value, index : int.[5, 10, 15] print("%: %\n", index, value);

// can loop over ranges (note: end is INCLUSIVE!)
// can be continued and breaked by index name
for j: 4..5 for i: 1..3 break j;

// while [name :=] condition body

// such as
while true print("Welcome to a world of endless wonder.\n");
```

## Based on

- [The Pure sh Bible](https://github.com/dylanaraps/pure-sh-bible)
- [Modern OpenGL Guide](https://github.com/fendevel/Guide-to-Modern-OpenGL-Functions)
