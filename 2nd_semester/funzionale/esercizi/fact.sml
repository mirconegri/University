
fun num 1 = 1 
  | num n = 
        n * num(n-1)

val ret = num 10;