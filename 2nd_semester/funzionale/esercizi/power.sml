
fun power (inter,0) = 1 
  | power (inter,esp) = 
        inter * power(inter,esp-1)

val primo = power (1,3);
val secondo = power (2,4);