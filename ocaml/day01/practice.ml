(*
open Core.Std

Practice: https://ocaml.org/learn/tutorials/data_types_and_matching.zh.html#_6
*)
type expr = Plus of expr * expr      (* means a + b *)
  | Minus of expr * expr     (* means a - b *)
  | Times of expr * expr     (* means a * b *)
  | Divide of expr * expr    (* means a / b *)
  | Product of expr list     (* means a * b * c * ... *)
  | Value of string          (* "x", "y", "n", etc. *);;


let rec to_string e =
  match e with
    | Plus (left, right) ->
       "(" ^ to_string left ^ " + " ^ to_string right ^ ")"
    | Minus (left, right) ->
       "(" ^ to_string left ^ " - " ^ to_string right ^ ")"
    | Times (left, right) ->
       "(" ^ to_string left ^ " * " ^ to_string right ^ ")"
    | Divide (left, right) ->
       "(" ^ to_string left ^ " / " ^ to_string right ^ ")"
    | Product left ->
        let join = fun a b -> Value (to_string a ^ " * " ^ to_string b) in
        "(" ^ to_string (List.fold_left join (List.hd left) (List.tl left)) ^ ")"
    | Value v -> v;;

let print_expr e =
    print_endline (to_string e);;

print_expr(Times (Value "n", Plus (Value "x", Product [Plus (Value "a", Value "b"); Value "c"])));;
