(* 4 - Shadowing *)

(* 
Shadowing is when we add a variable into our environment that was
alread there
*)

val a = 10;

(* static environment: a : int
   dynamic environment: a --> 10 *)

val b = a * 2;

(* a : int, b : ing
   a --> 10, b --> 20 *)

val a = 5; (* this is not an assignment statement *)

(* a --> 5, b --> 20 *)

val c = b;

(* a -> 5, b -> 20, c -> 20 *)

val d = a;

(* a -> 5, b -> 20, c -> 20, d -> 5 *)

val a = a + 1;

(* a -> 6, ... *)
(*
we are now shadowing that a mapped to 5 in a previous env
and a mapped to 10 in an even previous environment.
*)

(* Cannot forward reference:
val g = f -3; will fail to type check because f is not yet in thestatic env. *)

val f = a * 2;

(* ..., f -> 12 *)

