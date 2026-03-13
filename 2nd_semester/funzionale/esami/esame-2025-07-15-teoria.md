# Esame teorico dell'appello di luglio 2025 (15/07/2025)

## Domanda 1
Data la seguente lambda-expression, quali sono le variabili free?
```haskell
λa. (λb. b f (λc. d c a g))
```

Scegli un'alternativa:

- a) f
- b) b
- c) Nessuna delle altre risposte
- d) a, b & c
- e) d, f & g

## Domanda 2
Il type system di un linguaggio.

Scegli un'alternativa:

- a) Include anche la specifica di quando effettuare il controllo dei tipi (se staticamente o dinamicamente);
- b) È definito solo dai meccanismi di controllo dei tipi, cioè equivalenza, compatibilità e inferenza;
- c) È definito solo da (i) la definizione dei tipi predefiniti, (ii) i meccanismi per definire nuovi tipi e (iii) i meccanismi di controllo dei tipi (equivalenza, compatibilità e inferenza);
- d) Include solo la definizione dei tipi predefiniti e i meccanismi per definire nuovi tipi;
- e) Nessuna delle altre risposte.

## Domanda 3
Dato il seguente il seguente pseudo-codice. Cosa viene stampato se x e y sono passati per reference e z per valore?
```c
void f(int x, int y, int z)
{
  y = y + 5;
  y = x + z + 5;
  print(x, y, z);
}

main()
{
  int a = 10;
  int b = 15;
  f(a, a, a + b);
  print(a,b);
}
```

Scegli un'alternativa:

- a) 10 45 25 (\n) 40 15
- b) 40 40 25 (\n) 40 15
- c) Nessuna delle altre risposte
- d) 10 40 25 (\n) 10 15
- e) 45 45 25 (\n) 45 15

## Domanda 4
Dato il frammento di programma (espresso in pseudo-codice) riportato di seguito, qual è il valore di ritorno di ```third()```, assumendo scoping dinamico?
```c
int r, s, t;
void first(void)
{
  r = 5;
  s = 9;
}

void second(void)
{
  int s;
  first();
  s = 2;
  t = 50;
}

int third(void){
  int r;
  r = 10;
  s = 20;
  t = r + s;
  second();
  return t - s - r;
}
```

Scegli un'alternativa:

- a) 31
- b) Non è possibile dirlo
- c) 25
- d) Nessuna delle altre risposte
- e) 43

## Domanda 5
In ML, qual è il risultato di ```foldl op ^ "a" ["b", "c", "d"]``` ?

Scegli un'alternativa:

- a) ```"bcda"```
- b) ```["ab", "ac", "ad"]```
- c) ```["ba", "ca", "da"]```
- d) Nessuna delle altre risposte
- e) ```dcba```

## Domanda 6
Quale/i delle seguenti affermazioni relative ai comandi è/sono vera/e e quale/i falsa/i?

- I comandi sono tipici dei linguaggi funzionali (V / F)
- Un comando è un'entità sintattica la cui valutazione restituisce sempre un valore (V / F)
- I comandi sono tipici dei linguaggi imperativi (V / F)
- Un comando modifica lo stato (V / F)
- Un comando è un'entità sintattica la cui valutazione non necessariamente restituisce un valore ma può avere side effects (V / F)

## Domanda 7
Quale/i delle seguenti affermazioni sulla Programmazione Funzionale è/sono vera/e e quale/i falsa/e?

- Una delle caratteristiche principali della Programmazione Funzionale è che non ci sono side effect (V / F)
- Una delle caratteristiche della Programmazione Funzionale è che i programmi vengono eseguiti (V / F)
- Una delle caratteristiche della Programmazione Funzionale è il ruolo importante ricoperto dalle funzioni (V / F)
- Una delle caratteristiche della Programmazione Funzionale è l'utilizzo della ricorsione (V / F)
- Una delle caratteristiche della Programmazione Funzionale è che i programmi vengono valutati (V / F)

## Domanda 8
In Prolog, cosa restituiscono le seguenti queries (```true``` o ```false```)?

- ```?- 8 is 5+3.```
- ```?- 5+1 = 4+2.```
- ```?- 5+1 is 6.```
- ```?- 5+1 is 4+2.```
- ```?- 4 = 3+1.```

## Domanda 9
Quando si parla di aliasing?

Scegli un'alternativa:

- a) Quando si vuole indicare un oggetto complesso;
- b) Nessuna delle altre risposte;
- c) Quando il nome dell'oggetto è ereditato dall'environment globale;
- d) Quando un unico nome può essere associato a più di un oggetto;
- e) Quando un unico oggetto può avere più di un nome.

## Domanda 10
Quale delle seguenti affermazioni definisce correttamente una funzione di ordine superiore?

Scegli un'alternativa:

- a) Nessuna delle altre risposte;
- b) Una funzione che accetta altre funzioni come argomenti e/o restituisce una funzione come risultato;
- c) Una funzione che non accetta alcun argomento e non restistuisce alcun valore;
- d) Una funzione che deve essere chiamata un numero di volte superiore a uno durante l'escuzione del programma;
- e) Una funzione che può essere chiamata solo una volta durante l'esecuzione del programma.

## Domanda 11
Qual è il modo corretto per creare una ```List``` di numeri interi in Scala che contenga i valori 10, 20 e 30?

Scegli un'alternativa:

- a) ```val myNumbers = {10, 20, 30}```
- b) ```val myNumbers = (10, 20, 30)```
- c) ```val myNumbers = List(10, 20, 30)```
- d) ```val myNumbers = [10, 20, 30]```
- e) Nessuna delle altre risposte.

## Domanda 12
```β```-riducendo ```(λa. ab)(λc. ca)(λc. ca)``` si ottiene

Scegli un'alternativa:

- a) Nessuna delle altre risposte
- b) ```(λa. ab)aa```
- c) ```aab```
- d) La riduzione non termina
- e) ```ba(λc. ca)```

## Domanda 13
Quando un programma esegue un blocco di codice (per esempio il corpo di una funzione), quale affermazione è vera riguardo alle variabili dichiarate all'interno di tale blocco?

Scegli un'alternativa:

- a) Devono essere dichiarate a livello globale per poter essere utilizzate dentro il blocco;
- b) Mantengono il loro valore e sono accessibili anche dopo che il blocco ha terminato l'esecuzione;
- c) Vengono create e sono attive solo per la durata dell'esecuzione di quel blocco specifico;
- d) Diventano immediatamente disponibili e modificabili in qualsiasi altra parte del programma;
- e) Nessuna delle altre risposte.

## Domanda 14
In ML, il costrutto ```:>```:

Scegli un'alternativa:

- a) È usato per specificare l’implementazione della struttura;
- b) È usato per definire funzioni polimorfiche;
- c) Nessuna delle altre risposte;
- d) È usato per nascondere le componenti di una lista;
- e) È usato per nascondere le componenti di una struttura che non sono visibili nella signature.

## Domanda 15
In ML, qual è il tipo di ```SOME [1, 5, 7];```

Scegli un'alternativa:

- a) ```int list option```
- b) ```int list```
- c) ```(int * int * int) option```
- d) Nessuna delle altre risposte
- e) ```'a list option```
