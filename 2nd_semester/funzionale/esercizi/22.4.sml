

fun suffissi "" = []
  | suffissi stringa = stringa :: suffissi(implode(tl(explode stringa)));


val res_suf = suffissi "ciao";  

fun aux [] = []
  | aux (a::lista) = [a] :: map (fn p => a::p) (aux(lista));

fun prefissi "" = []
  | prefissi stringa = map implode (aux(explode(stringa)));

val res_pref = prefissi "ciao";  
