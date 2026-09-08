
fun take [] = []
  | take (head::L) = 
        head :: skip L
            
and skip [] = []
  | skip (_::L) = 
        take L

val ret = take([1,2,3,4,5]);