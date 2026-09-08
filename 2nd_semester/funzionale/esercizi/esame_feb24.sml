(*Testo
Scrivere una funzione prefixes (di tipo string -> string list ) che presa in input una stringa, ritorni una lista di tutti i prefissi della stringa,
compresa la stringa stessa ed esclusa la stringa vuota.
nota: esista una funzione map che permette appendere un elemento a ogni elementi da lista
Esempi:
> prefixes "ciao";
val it : ["c" , "ci", "cia", "ciao"];
> prefixes "";
val it : [];
> prefixes "hi world";
val it : ["h", "hi", "hi ", "hi w", "hi wo", "hi wor", "hi worl", "hi world"]*)


fun aux [] = []
  | aux (M as head::tail) =
        M :: aux(tail)

fun prefixes stringa = 
        map implode (map rev (rev(aux(rev(explode(stringa))))));



fun aux2 [] = []
  | aux2 (M as head::tail) =
        M :: aux2(tail)

fun suffixes "" = []
  | suffixes stringa =
        map implode (aux2(explode stringa))
