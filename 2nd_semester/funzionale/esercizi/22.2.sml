datatype FOR = For of int * (int -> int);

fun eval (For(0,f)) = (fn x => x)
  | eval (For(x,f)) = 
  let
      val rest_eval = eval(For(x-1,f));
  in
      (fn x => f(rest_eval(x)))
  end

val res = eval(For(1,(fn x => 5*x)));
