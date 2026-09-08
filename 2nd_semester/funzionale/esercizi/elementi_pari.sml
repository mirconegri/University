(*
Scrivere una funzione Standard ML, chiamata `elementi_pari`, 
che ha tipo `'a list -> 'a list`. La funzione riceve come 
parametro una lista e ritorna una lista contenente gli 
elementi in posizione pari (il secondo, il quarto, ecc.), 
senza cambiarne l'ordine .

*Esempio:* `elementi_pari [1,5,2,10]` ritorna `[5,10]`
*)

fun elementi_pari [] = [] 
  | elementi_pari [n] = []
  | elementi_pari (pari::dispari::lista_rim) = 
        dispari :: elementi_pari lista_rim


val ret = elementi_pari [1,5,2,10,8]