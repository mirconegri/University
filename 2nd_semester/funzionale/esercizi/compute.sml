(*
Si consideri il seguente tipo di dato, che rappresenta una semplice espressione 
avente due argomenti `x` e `y`:
`datatype Expr = X | Y | Avg of Expr * Expr | Mul of Expr * Expr` .
Il costruttore `X` rappresenta il primo argomento, `Y` il secondo, `Avg` 
rappresenta la media intera tra due espressioni, e `Mul` il prodotto. 
Scrivere una funzione per valutare l'espressione.
*)

datatype Expr = X | Y | Avg of Expr * Expr | Mul of Expr * Expr

fun compute_normale X x y = x
  | compute_normale Y x y = y
  | compute_normale (Avg(e1, e2)) x y = (compute_normale e1 x y + compute_normale e2 x y) div 2
  | compute_normale (Mul(e1, e2)) x y = (compute_normale e1 x y * compute_normale e2 x y);
  