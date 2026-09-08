
fun maxList ([x:real]) = x 
  | maxList (x::L) =
        let
            val m = maxList(L)
        in
            if x > m then x else m
        end;

val res = maxList [1.2,1.6,5.4,2.0];