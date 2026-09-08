
(*Dato il seguente tipo di dato che definisce la struttura di un albero binario:
datatype Ptree = Empty | PLeaf of int*string | PNode of int* string * Ptree * Ptree
Scrivere una funzione count_even (Ptree -> int) che, dato un Ptree, restituisce quanti 
numeri interi pari compaiono come primo argomento della coppia all'interno del Ptree .
Esempio: 
count_even(PNode(2,"good",PNode(3,"good",PLeaf(6,"bad"),PLeaf(7,"bad")),
            Node(5,"bad",PLeaf(1,"good"),Empty))) = 2 *)


datatype Ptree = Empty | PLeaf of int*string | PNode of int* string * Ptree * Ptree

fun aux numero = 
    if numero mod 2 <> 0 then 0 else 1

fun count_even (Empty) = 0
  | count_even (PLeaf (numero,stringa)) = aux numero 
  | count_even (PNode (numero,stringa,sinistra,destra)) = 
        let 
            val scendi_sinistra = count_even(sinistra)
            val scendi_destra = count_even(destra) 
        in
            aux numero + scendi_destra + scendi_sinistra
        end

val res = count_even(PNode(2,"good",PNode(3,"good",PLeaf(6,"bad"),PLeaf(7,"bad")),
            PNode(5,"bad",PLeaf(1,"good"),Empty)))