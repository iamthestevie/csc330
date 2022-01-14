(* 1. ML Variable Bindings and Expressions *)

(* Variable Bindings *)
val x = 34;
(* static environment: x : int *)
(* dynamic environment: x --> 34 *)

val y = 17;
(* static environment: x : int, y : int *)
(* dynamic environment: x --> 34, y --> 17 *)

val z = (x + y) + (y + 2);
(* static environment: x : int, y : int, z : int *)
(* dynamic environment: x --> 34, y --> 17, z --> 70 *)

val w = z + 1;
(* static environment: x : int, y : int, z : int, w : int *)
(* dynamic environment: x --> 34, y --> 17, z --> 70, w --> 71 *)

(* Conditionals *)
(* if z < 0 results in a bool *)
(*
 - the expressions that follow the then and else can be of any type,
   but they must match in type.
 - Evaluation of this expression:
 1. z is looked up as a value of 70 with type int.
 2. 70 < 0 is evaluated and results in false.
 3. then is skipped and the else is evaluated.
 4. 70(int) is assigned to abs_of_z.
*)

val abs_of_z = if z < 0 then 0 - z else z;
(* static environment: ..., abs_of_z : int *)
(* dynamic environment: ..., abs_of_z --> 70 *)

(* doing the above conditional in a function *)
val abs_of_z_simpler = abs z;
