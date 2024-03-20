
(* A Tour of SML *)

(* Comments in Standard ML are denoted using the '(*' and '*)' tokens
 * There are no line comments, and these block comments support nesting
 *)

(** Expressions and Definitions **)

(* Variables are defined using the `val` keyword *)

val myInt : int = 10 * 20
val myFloat : real = 3.1415
val myString : string = "This is a string! It supports escapes!\n"
val myBool : bool = myInt > 20
val myChar : char = #"x"

(* `int` is the standard integer type.
 * It supports addition ( + ), subtraction ( - ), multiplication ( * ),
 * comparisons ( < > <= >= )
 *)

(* Oddities *)

(* Negation is written `~` *)

val negOne = ~1
val posOne = ~negOne
val posOne = abs negOne

(* Modulo is written `mod`, and division is written `div`, both are infix *)

val thisIsThree = 10 div 3
val thisIsTwo = 10 mod 4

(* Strings can be concatenated using ( ^ ) *)

val greeting = "Hello" ^ " " ^ "World!"
val goodbye = String.concat ["Goodbye", " ", "World!"]

(* Equality is written `=`, and inequality is written `<>`.
 * These operators work on more than just integers *)

val thisIsFalse : bool = 10 = 20
val thisIsTrue : bool = 10 <> 20
val canCompareChars : bool = #"A" = #"\065"
val canCompareStrings : bool = "ASDF" <> "foo bar baz"
val canCompareBools : bool = canCompareChars = canCompareStrings

(* As can be seen above, type annotations are not required, and SML will
 * infer the types.
 * However, it is sometimes worthwhile to add type annotations, because
 * they can improve error messages. *)

(** Lists **)

val myIntList : int list = [1, 2, 3, 4]
val myStringList : string list = ["first", "second", "third"]

(* `::` takes an element and a list, and prepends the list with that element *)
val prepended = 10 :: myIntList

(* `@` takes two lists, and concatenates the lists together *)
val appending = myIntList @ [5, 6, 7]

(** Oddities **)

(* Type constructors (such as `list`) are written *after* the type they contain
 * ex. `int list`, not `list int`!
 *
 * Lists (and most datatypes in SML) are immutable!
 *)

(** Functions **)

(* Named functions are defined using `fun` *)

fun square x = x * x
(* val square : int -> int *)

(* Anonymous functions are defined using `fn`
 * (note that ' is valid for use in identifiers) *)

val square' = fn x => x * x
(* val square' : int -> int *)

(* Functions with multiple arguments *)
(* This can be done in two ways in SML
 * One common method is to use a tuple *)

fun area (width, height) = width * height
(* val area : int * int -> int *)

(* Another is to *curry* the argument *)

fun prefixWith pre msg = pre ^ " " ^ msg
(* val prefixWith : string -> string -> string *)

val greetings = List.map (prefixWith "Hello") ["Earth", "Mars", "Jupiter"]
(* val greetings : string list = ["Hello Earth", "Hello Mars", "Hello Jupiter"] *)

(* The type can be read as a function that takes a string and returns another
 * function, which takes a string to another string *)


