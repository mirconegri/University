datatype ctree =  Empty
                | Leaf of char
                | Node of char * ctree * ctree


    fun esplore_tree (Empty) = ("","")
      | esplore_tree (Leaf a) = (str(a),"")
      | esplore_tree (Node(n,sx,dx)) = 
      let  
        val (foglia_sx,nodi_sx) = esplore_tree (sx);
        val (foglia_dx,nodi_dx) = esplore_tree (dx);
      in
        (foglia_sx ^ foglia_dx, str(n) ^ nodi_sx ^ nodi_dx)
      end





val albero_gigante = 
    Node(#"w",
        Node(#"o",
            Leaf(#"h"),
            Leaf(#"e")
        ),
        Node(#"r",
            Node(#"l",
                Leaf(#"l"),
                Leaf(#"l")
            ),
            Node(#"d",
                Empty,
                Leaf(#"o")
            )
        )
    )

val res = esplore_tree albero_gigante