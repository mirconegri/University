fun aux1 ([],[],1) = [1]
  | aux1 ([],[],0) = []
  | aux1 (L1,[],f) = aux1 (L1,[0],f)
  | aux1 ([],L2,f) = aux1 ([0],L2,f)
  | aux1 (head_l1::L1,head_l2::L2,f) = 
  let
    val addiction = head_l1 + head_l2 + f;
    val new_bit = addiction mod 2;
    val curry = addiction div 2;
  in
    new_bit :: aux1(L1,L2,curry)
  end;

fun sum_binary (L1,L2) = rev(aux1(rev(L1),rev(L2),0));


val esempio = sum_binary([1,1],[1,0,1,1,1]);  