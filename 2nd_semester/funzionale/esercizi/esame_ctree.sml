
datatype ctree = Empty | Leaf of char | Node of char * ctree * ctree;

fun get_words Empty = ("","")
  | get_words (Leaf(carattere)) = (str carattere,"")
  | get_words (Node(carattere,sx,dx)) = 
    let
        val (stringa_sx,_) = get_words sx
        val (stringa_dx,_) = get_words dx
    in 
        (stringa_sx^stringa_dx,str(carattere))
    end;