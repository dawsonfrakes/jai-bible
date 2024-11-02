# The Language

## Table of Contents

- [Keywords](#keywords)
- [Compiler Defines](#compiler-defines)
- [Directives](#directives)
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
#insert
#insert,scope
#insert_internal
#intrinsic
#library
#library,link_always
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
