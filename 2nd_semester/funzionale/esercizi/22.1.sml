datatype Albero = Foglia of int 
                | Nodo of int * Albero * Albero 
                | Vuoto;

fun  tutti_percorsi(a : Albero) = 
    let
        fun esplora(Vuoto) = []
        | esplora(Foglia n) = [[n]]
        | esplora(Nodo(n,sx,dx)) = 
            let 
                val persx = esplora(sx)
                val perdx = esplora(dx)
            in 
                map (fn percorsi => n::percorsi ) (persx @ perdx)
            end
    in
        esplora(a)
    end;


(* 'lista_percorsi' è la lista che abbiamo ottenuto prima (es. [[10,5,2], [10,15]])
   'condizione' è una funzione che riceve un percorso e restituisce true o false.
*)


fun filtra_percorsi ([], condizione) = []
  | filtra_percorsi (percorso_corrente :: resto_dei_percorsi, condizione) =

      if (condizione (percorso_corrente)) then
          percorso_corrente :: filtra_percorsi (resto_dei_percorsi, condizione)
      
      else
          filtra_percorsi (resto_dei_percorsi, condizione);



val albers = Nodo(10, Nodo(5, Foglia 2, Vuoto), Foglia 15);
val res = tutti_percorsi(albers); 

fun lunghezza_maggiore_di_2 (percorso) = 
    length(percorso) > 2;

val lung_magg = lunghezza_maggiore_di_2 ([3,4,5,2]);

val new_res = res @ [[40,3,5,6,7,4]];
val percorsi_filtrati = filtra_percorsi(new_res, lunghezza_maggiore_di_2);