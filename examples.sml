type id = string

datatype binop = PLUS | MINUS | TIMES | DIV

datatype stm
  = SKIP
  | SEQ of stm * stm
  | ASSIGN of id * exp
  | PRINT of exp

and exp
  = VAR of id
  | NUM of int
  | BINOP of exp * binop * exp

val prog = SEQ(
      ASSIGN("a", BINOP(NUM 5, PLUS, NUM 3)),
      PRINT(VAR "a"))

fun binopToString PLUS = "PLUS"
  | binopToString MINUS = "MINUS"
  | binopToString TIMES = "TIMES"
  | binopToString DIV = "DIV"

fun stmToString SKIP = "SKIP"
  | stmToString (SEQ (stm1, stm2)) =
      let
        val stm1Str = stmToString stm1
        val stm2Str = stmToString stm2
      in
        String.concat ["SEQ (", stm1Str, ", ", stm2Str, ")"]
      end
  | stmToString (ASSIGN (x, e)) =
      String.concat ["ASSIGN (", x, ", ", expToString e, ")"]
  | stmToString (PRINT e) =
      String.concat ["PRINT (", expToString e, ")"]

and expToString (VAR x) = "VAR " ^ x
  | expToString (NUM n) = "NUM " ^ Int.toString n
  | expToString (BINOP (e1, oper, e2)) =
      let
        val e1Str = expToString e1
        val e2Str = expToString e2
        val operStr = binopToString oper
      in
        String.concat ["BINOP (", e1Str, ", ", operStr, ", ", e2Str, ")"]
      end

