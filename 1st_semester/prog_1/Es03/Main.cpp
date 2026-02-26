// Supponiamo di avere le funzioni: push, pop, top, isEmpty, init, deinit

// Calcolare somma/rimuovere elementi mantenendo l'ordine
// Senza stack di supporto (usando lo stack di ricorsione)

void lavora_stack(Stack &s) {
    if (isEmpty(s)) return; // Caso base

    int val = pop(s); // Estraggo per scendere in profondità

    // --- (Discesa) Qui i dati vengono salvati nello stack delle chiamate ---
    
    lavora_stack(s); // Chiamata ricorsiva

    // --- (Risalita) Qui siamo tornati indietro ---
    // Se devi rimettere a posto l'elemento:
    push(s, val); 
    
    // Se dovevi filtrare (es. rimuovi i pari), faresti:
    // if (val % 2 != 0) push(s, val); 
}

// Con Stack di supporto (Iterativo)

void lavora_iterativo(Stack &s) {
    Stack temp; init(temp);
    
    // 1. Svuoto s in temp (l'ordine si inverte!)
    while (!isEmpty(s)) {
        int val = top(s);
        pop(s);
        // Elabora 'val' qui se serve
        push(temp, val);
    }

    // 2. Riverso temp in s (l'ordine torna originale)
    while (!isEmpty(temp)) {
        push(s, top(temp));
        pop(temp);
    }
    deinit(temp);
}

// puntatori 

// Funzioni base (assunte): initStack, push, pop, isEmpty

// Esempio: Creare un NUOVO stack che contiene solo i valori pari di quello originale.
// L'originale (s) viene svuotato man mano (o ripristinato se richiesto).

Stack* filtra_pari(Stack* &s) {
    if (isEmpty(s)) {
        return initStack(); // Ritorna NULL/Stack vuoto
    }

    int val = pop(s); // Estraggo dall'originale

    // Chiamata ricorsiva: ottengo il risultato del resto dello stack
    Stack* risultato_parziale = filtra_pari(s);

    // Fase di RISALITA (Backtracking)
    // Decido se aggiungere 'val' al nuovo stack 'risultato_parziale'
    if (val % 2 == 0) {
        push(risultato_parziale, val);
    }
    
    // Opzionale: Se devi ripristinare 's' come nell'esercizio mandato:
    // push(s, val); 

    return risultato_parziale;
}

// Creare uno stack di somme progressive
// (Simile alla logica di esercizio3_sol_v1.cpp)

void crea_somme_aux(Stack* &s, Stack* &res, int somma_corrente) {
    if (isEmpty(s)) return;

    int val = pop(s);
    somma_corrente += val; // Aggiorno accumulatore in discesa
    
    crea_somme_aux(s, res, somma_corrente);
    
    // In risalita costruisco il risultato e ripristino l'originale
    push(s, val);           // Ripristino originale
    push(res, somma_corrente); // Costruisco nuovo stack
}

Stack* genera_stack_somme(Stack* &s) {
    Stack* nuovo = initStack();
    crea_somme_aux(s, nuovo, 0);
    return nuovo;
}