datatype 'a btree = Empty 
        | Node of 'a * 'a btree * 'a btree;

val mioAlbero = 
    Node(4, 
        Empty, 
        Node(6, Empty, Empty)
    );

fun height Empty = 0
  | height (Node(_,l,r)) = 
    let 
        val sx = height l
        val dx = height r
    in 
        1 + (if sx > dx then sx else dx)
    end;

height mioAlbero;