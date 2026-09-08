(*
Si scriva una funzione `noduplen` (tipo 'a list -> int) 
che riceve una lista e ritorna il numero di elementi 
senza considerare i duplicati 
(adiacenti) .
*Esempio:* `noduplen ["pera", "pera", "pera", "pera"]` dà `1` .
*)

fun noduplen [b] = 1
  | noduplen [] = 0
  | noduplen (a::b::lista) = 
        if a <> b then 1 + noduplen(b::lista)
                      else 0 + noduplen(b::lista)