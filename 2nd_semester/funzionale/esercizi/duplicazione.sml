fun duplicate [] = []
  | duplicate (head::L) =
        head::head::duplicate(L)

val res = duplicate([1,2,3,4]);