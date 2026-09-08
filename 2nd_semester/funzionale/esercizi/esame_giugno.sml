
datatype color = Black 
      | Red;

datatype rbtree = Empty 
                | Node of color * rbtree * rbtree 
                | Leaf of color;

fun radice_nera Empty = true 
  | radice_nera (Node(Black,left,right)) = true
  | radice_nera (Node(Red,left,right)) = false
  | radice_nera (Leaf Black) = true
  | radice_nera (Leaf Red)   = false


fun check_hight_black Empty = 1
  | check_hight_black (Leaf Black) = 1
  | check_hight_black (Leaf Red) = 0
  | check_hight_black (Node(Black,left,right)) =
        1 + Int.max(check_hight_black left,check_hight_black right)
  | check_hight_black (Node(Red,left,right)) = 
        Int.max(check_hight_black left,check_hight_black right)

fun check Empty = 1
  | check (Leaf color) = 1
  | check (Node(color,left,right)) =
        1 + Int.max(check left,check right)





(* ==========================================
   ALBERI VALIDI
   ========================================== *)

(* 1. Albero vuoto: di default è valido e la radice è considerata nera *)
val t_valid_1 = Empty;

(* 2. Singola foglia nera *)
val t_valid_2 = Leaf Black;

(* 3. Albero RBT completo e valido. 
      Radice nera. Figli rossi. Nipoti neri.
      Altezza nera uguale in tutti i rami (bilanciato).
        B
       / \
      R   R
     / \ / \
    B  B B  B
*)
val t_valid_3 = Node(Black,
                     Node(Red, Leaf Black, Leaf Black),
                     Node(Red, Leaf Black, Leaf Black));


(* ==========================================
   ALBERI INVALIDI (Per testare gli errori)
   ========================================== *)

(* 4. Errore: La radice è rossa. 
      (Deve fallire la prima funzione) *)
val t_err_root = Node(Red, Leaf Black, Leaf Black);

(* 5. Errore: Due nodi rossi consecutivi. 
      Il figlio sinistro (Red) ha a sua volta un figlio sinistro (Red).
      (Deve fallire la seconda funzione)
        B
       / \
      R   B
     / \
    R   B
*)
val t_err_double_red = Node(Black,
                            Node(Red, Leaf Red, Leaf Black),
                            Leaf Black);

(* 6. Errore: Sbilanciato (Black-Height diversa).
      Il sottoalbero sinistro ha altezza nera maggiore rispetto al destro.
      (Deve fallire la funzione di bilanciamento)
        B
       / \
      B   B
     / \
    B   B
*)
val t_err_unbalanced = Node(Black,
                            Node(Black, Leaf Black, Leaf Black),
                            Leaf Black);

(* 7. Errore Misto: Radice rossa e sbilanciato. *)
val t_err_mixed = Node(Red,
                       Node(Black, Leaf Black, Empty),
                       Empty);



val res_giusto = radice_nera t_valid_1; 
val res_sbagliato = radice_nera t_err_root; 

val res_altezza_3 = check_hight_black t_valid_3; 
val res_altezza_3_non_uniforme = check_hight_black t_err_unbalanced; 

val res_altezza_3_check = check t_valid_3; 
val res_altezza_3_non_uniforme_check = check t_err_unbalanced; 