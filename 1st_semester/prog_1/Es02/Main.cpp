struct node {
    int info;
    node* next;
};

// Scorrimento/Lettura (SOLO lettura, passo per valore)

void stampa_ricorsiva(node* head) {
    if (head == NULL) return; // Caso base
    
    cout << head->info << " "; // Azione
    stampa_ricorsiva(head->next); // Passo ricorsivo
}

// Rimozione/Modifica (Passaggio per RIFERIMENTO Node* &)
// Importante: usare & permette di modificare il puntatore 'next' del nodo precedente

void rimuovi_elemento(node* &head, int target) {
    if (head == NULL) return; // Caso base: fine lista

    if (head->info == target) {
        node* temp = head;
        head = head->next; // "Salto" il nodo (modifico il puntatore reale)
        delete temp;       // Libero memoria
        rimuovi_elemento(head, target); // Continuo se devo rimuoverne altri
        // Nota: se rimuovo, la 'head' è già avanzata, quindi ricorsione sulla nuova head
    } else {
        rimuovi_elemento(head->next, target); // Passo al prossimo
    }
}

// Aggiunta in coda ricorsiva

void aggiungi_coda(node* &head, int valore) {
    if (head == NULL) {
        head = new node;
        head->info = valore;
        head->next = NULL;
        return;
    }
    aggiungi_coda(head->next, valore);
}

// puntatori


// Rimozione elemento (Ritorna la nuova testa)
// Se il nodo corrente va rimosso, ritorno il suo 'next'.
// Altrimenti, attacco il risultato della ricorsione e ritorno me stesso.

node* rimuovi_valore(node* head, int target) {
    if (head == NULL) return NULL; // Caso base

    if (head->info == target) {
        node* temp = head->next;
        delete head;            // Dealloco il nodo attuale
        // Nota: Qui chiamo la ricorsione su temp perché head non esiste più
        return rimuovi_valore(temp, target); 
    } else {
        // Collega il nodo corrente al risultato dell'elaborazione del resto della lista
        head->next = rimuovi_valore(head->next, target);
        return head; // Ritorno me stesso (che non sono stato rimosso)
    }
}

// Inserimento ordinato (Ritorna la nuova testa)

node* inserisci_ordinato(node* head, int valore) {
    // Caso base: lista finita O trovato il punto di inserimento (valore < head->info)
    if (head == NULL || valore < head->info) {
        node* nuovo = new node;
        nuovo->info = valore;
        nuovo->next = head;
        return nuovo; // Questo nodo diventa la nuova testa (o il next del precedente)
    }

    // Passo ricorsivo: "aggiusta" il resto della lista
    head->next = inserisci_ordinato(head->next, valore);
    return head;
}