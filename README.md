
# Compilers Recitation 2024-03-20

## Topics:

* SML/NJ; smlnj.org

* resources (links on website):
  + SML Basis Library documentation (also see
     https://github.com/SMLFamily/BasisLibrary/wiki)
  + SML/NJ Library documentation (https://smlnj.org/doc/smlnj-lib)
  + CM and LPT manuals

* core language features
  + basic expressions:
       - alphanumeric and symbolic identifiers
       - function application syntax (left associative)
       - "let val" with simple patterns
  + basic types: int, word, bool, char, string, unit
  + basic type constructors: ->, *, records
  + datatypes
  + pattern matching: "as" patterns, "_"
  + val/fun bindings with complicated patterns
  + use of "and" to connect mutually recursive definitions (datatypes and functions)
  + higher-order programming: scope, closures
  + exceptions: raise, handle; tracing exceptions;
    [`Fail`](https://smlfamily.github.io/Basis/general.html#SIG:GENERAL.Fail:EXN),
    [`Bind`](https://smlfamily.github.io/Basis/general.html#SIG:GENERAL.Bind:EXN),
    and [`Match`](https://smlfamily.github.io/Basis/general.html#SIG:GENERAL.Match:EXN)
  + references
  + some useful Basis Library functions:
       - [String.concat](https://smlfamily.github.io/Basis/string.html#SIG:STRING.concat:VAL),
         [String.concatWith](https://smlfamily.github.io/Basis/string.html#SIG:STRING.concatWith:VAL),
         and [String.concatWithMap](https://github.com/SMLFamily/BasisLibrary/wiki/2015-003d-STRING)
       - [List.map](https://smlfamily.github.io/Basis/list.html#SIG:LIST.map:VAL),
         [List.foldl](https://smlfamily.github.io/Basis/list.html#SIG:LIST.foldl:VAL),
         [List.foldr](https://smlfamily.github.io/Basis/list.html#SIG:LIST.foldr:VAL),
         [List.app](https://smlfamily.github.io/Basis/list.html#SIG:LIST.app:VAL),
         [List.all](https://smlfamily.github.io/Basis/list.html#SIG:LIST.all:VAL),
         [List.exists](https://smlfamily.github.io/Basis/list.html#SIG:LIST.exists:VAL)

* debugging type errors (add type constraints)

* use exceptions for place holders in incomplete code

* Modules
* CM (see `foo.sml` and `sources.cm`)
* ml-build

* SML/NJ Library
  + [ORD_MAP](https://www.smlnj.org/doc/smlnj-lib/Util/sig-ORD_MAP.html)
  + [ORD_SET](https://www.smlnj.org/doc/smlnj-lib/Util/sig-ORD_SET.html)
