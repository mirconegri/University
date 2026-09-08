

fun sommali [] n =  n
  | sommali [a] n = a + n 
  | sommali (s::_::lista) n = sommali lista (s+n);

fun sommali2 [] n = n
  | sommali2 [a] n = a + n
  | sommali2 (a::b::as) n = a + n

val ret1 = sommali [1,2,3,4] 2;  
val ret2 = sommali2 [1,2,3,4] 2;