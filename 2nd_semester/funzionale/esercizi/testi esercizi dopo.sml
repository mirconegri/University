Ecco la raccolta completa degli esercizi di programmazione presenti nei documenti d'esame che mi hai fornito, dai quali ho accuratamente escluso tutti quelli che hai già inserito nei tuoi appunti (ovvero `suffixes`/`prefixes`, `sum_binary`, `get_words`, `sommali`, `eval` per i cicli FOR e l'esercizio `all_paths`).

Li ho formattati e ripuliti per renderli pronti all'uso e allo studio.

---

### 1. Conteggio con Tuple negli Alberi (`count_even`)

**Testo del problema:**
Dato il seguente tipo di dato che definisce la struttura di un albero binario:
`datatype Ptree = Empty | PLeaf of int*string | PNode of int* string * Ptree * Ptree`
Scrivere una funzione `count_even (Ptree -> int)` che, dato un `Ptree`, restituisce quanti numeri interi pari compaiono come primo argomento della coppia all'interno del `Ptree` .
*Esempio:* `count_even(PNode(2,"good",PNode(3,"good",PLeaf(6,"bad"),PLeaf(7,"bad")), Node(5,"bad",PLeaf(1,"good"),Empty))) = 2` .

---

### 2. Valutazione di Espressioni Matematiche (`compute`)

**Testo del problema (Luglio 2015):**
Si consideri il seguente tipo di dato, che rappresenta una semplice espressione avente due argomenti `x` e `y`:
`datatype Expr = X | Y | Avg of Expr * Expr | Mul of Expr * Expr` .
Il costruttore `X` rappresenta il primo argomento, `Y` il secondo, `Avg` rappresenta la media intera tra due espressioni, e `Mul` il prodotto. Scrivere una funzione per valutare l'espressione.



**Soluzione:**

```sml
val rec compute = fn X => (fn x => fn y => x) 
  | Y => (fn x => fn y => y) 
  | Avg(e1, e2) => (fn x => fn y => ((compute e1 x y) + (compute e2 x y)) div 2) 
  | Mul(e1, e2) => (fn x => fn y => (compute e1 x y) * (compute e2 x y));

```

*(Tipo: `Expr -> int -> int -> int`)* .

---

### 3. Filtraggio Posizioni Pari (`elementi_pari`)

**Testo del problema (Agosto 2015):**
Scrivere una funzione Standard ML, chiamata `elementi_pari`, che ha tipo `'a list -> 'a list`. La funzione riceve come parametro una lista e ritorna una lista contenente gli elementi in posizione pari (il secondo, il quarto, ecc.), senza cambiarne l'ordine .
*Esempio:* `elementi_pari [1,5,2,10]` ritorna `[5,10]`.

**Soluzione:**

```sml
val rec elementi_pari = fn [] => [] 
  | [v] => [] 
  | a::(b::l) => b::(elementi_pari l);

```

*(Si noti l'uso del pattern matching per scartare `a` e tenere `b`)*.

---

### 4. Gestione Code al Pronto Soccorso (`arriva`)

**Testo del problema (Settembre 2015):**
Si consideri il seguente tipo di dato: 
`datatype codice = rosso of string | giallo of string | verde of string;` . 
Rappresenta un paziente in arrivo al pronto soccorso, 
dove la stringa è il cognome e i costruttori la gravità 
(rosso: massima urgenza, verde: minima).

**Soluzione (Inserimento ordinato per priorità):**

```sml
val rec arriva = fn [] => (fn x => [x]) 
  | (verde n)::l => (fn (verde nn) => (verde n)::(arriva l (verde nn)) 
                      | x => x::((verde n)::l)) 
  | (giallo n)::l => (fn (verde nn) => (giallo n)::(arriva l (verde nn)) 
                       | (giallo nn) => (giallo n)::(arriva l (giallo nn)) 
                       | x => x::((giallo n)::l)) 
  | (rosso n)::l => (fn x => (rosso n)::(arriva l x));

```

*(Tipo: `codice list -> codice -> codice list`)* .

---

### 5. Istogramma su Intervalli Reali (`hist`)

**Testo del problema (Giugno 2016 - 1° Turno):**
Si scriva una funzione `hist` (tipo `real list -> real * real -> int`) che riceve una lista di `real l` ed una coppia di `real (c, d)`. Ritorna il numero di elementi compresi nell'intervallo `(c - d, c + d)`, estremi esclusi .
*Esempio:* `hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.5)` deve dare `1`.

**Soluzione:**

```sml
val rec hist = fn [] => (fn (c:real, d:real) => 0) 
  | (e :: l) => (fn (c:real, d:real) => 
      if (e > (c-d) andalso e < (c+d)) then 1 + hist l (c, d) 
      else 0 + hist l (c, d));

```

.

---

### 6. Conteggio Elementi Unici (`noduplen`)

**Testo del problema (Giugno 2016 - 2° Turno):**
Si scriva una funzione `noduplen` (tipo `''a list -> int`) 
che riceve una lista e ritorna il numero di elementi 
senza considerare i duplicati 
(adiacenti) .
*Esempio:* `noduplen ["pera", "pera", "pera", "pera"]` dà `1` .

**Soluzione:**

```sml
val rec noduplen = fn [] => 0 
  | [a] => 1 
  | a::(b::l) => if (a <> b) then 1 + noduplen (b::l) 
                 else 0 + noduplen (b::l);

```

.

---

### 7. Variabili Libere nel Lambda Calcolo (`is_free`)

**Testo del problema (Luglio 2016 - 1° Turno):**
Dato il tipo `datatype lambda_expr = Var of string | Lambda of string * lambda_expr | [cite_start]Apply of lambda_expr * lambda_expr;` . Scrivere una funzione `is_free` per determinare se una variabile è libera in una data espressione.

**Soluzione:**

```sml
val rec is_free = fn s => fn Var v => s = v 
  | Lambda (v, e) => if (s = v) then false else is_free s e 
  | Apply (e1, e2) => (is_free s e1) orelse (is_free s e2);

```

*(Tipo: `string -> lambda_expr -> bool`)* .

---

### 8. Valutazione con Ambiente (`eval` e `semplifica`)

**Testo del problema (Luglio 2016 - 2° Turno):**
Basandosi sul tipo di dato espressione, scrivere una funzione `eval` che calcoli il risultato usando un ambiente (lista di coppie nome-valore) per risolvere le variabili .

**Soluzione:**

```sml
val rec cerca = fn s => fn [] => 0 
  | (s1, v)::l => if s1 = s then v else cerca s l;

val rec eval = fn env => fn costante n => n 
  | variabile s => cerca s env 
  | somma (a1, a2) => (eval env a1) + (eval env a2) 
  | sottrazione (a1, a2) => (eval env a1) - (eval env a2) 
  | prodotto (a1, a2) => (eval env a1) * (eval env a2) 
  | divisione (a1, a2) => (eval env a1) div (eval env a2) 
  | var (v, e1, e2) => eval ((v, eval env e1)::env) e2;

```

.

---

### 9. Insiemi Rappresentati come Funzioni (`intersezione` e `unione`)

**Testo del problema (Agosto 2016 e Febbraio 2017):**
In ML un insieme può essere rappresentato da una funzione: `type insiemediinteri = int -> bool;` . Una funzione vuota è `fn n => false`. Data la funzione di appertenenza `contiene`, scrivere le funzioni `intersezione` e `unione` .

**Soluzioni:**

```sml
(* Intersezione *)
val intersezione = fn i1:insiemediinteri => fn i2:insiemediinteri => 
  (fn n => ((contiene i1 n) andalso (contiene i2 n)) ):insiemediinteri;

(* Unione *)
val unione = fn i1:insiemediinteri => fn i2:insiemediinteri => 
  (fn n => ((contiene i1 n) orelse (contiene i2 n)) ):insiemediinteri;

```

.

---

### 10. L'Ambiente come Closure (`lega`)

**Testo del problema (Settembre 2017):**
Dato `datatype intonil = Nil | [cite_start]Int of int` ed un ambiente definito come `type ambiente = string -> intonil` . Scrivere una funzione `lega` che associa un nome a un valore intero, restituendo il nuovo ambiente aggiornato .

**Soluzione:**

```sml
val lega = fn e:ambiente => fn nome => fn valore => 
  (fn n => if (n = nome) then (Int valore) else (e n)): ambiente;

```

.