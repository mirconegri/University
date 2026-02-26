#include <iostream>
#include "stack_int.h"

/*
    Verifica se la stack è vuota.
    Ritorna true se non ci sono nodi, false altrimenti.
*/
bool isEmpty(Stack &stack);

/*
    Inizializza la stack.
    Imposta il puntatore a NULL, rendendo la stack vuota.
*/
bool init(Stack &stack) {
    stack = NULL;
    return true;
}

/*
    Restituisce l'elemento in cima alla stack senza rimuoverlo.
    - stack: stack da cui leggere
    - n: variabile in cui salvare il valore in cima
    Ritorna false se la stack è vuota.
*/
bool top(Stack &stack, int &n) {
    bool result;

    if (isEmpty(stack)) {
        result = false;
    }
    else {
        n = stack->value;
        result = true;
    }
    return result;
}

/*
    Inserisce un nuovo elemento in cima alla stack (operazione di push).
    - stack: stack su cui inserire
    - n: valore da inserire
*/
bool push(Stack &stack, int n) {

    // Crea un nuovo nodo che punta all'attuale cima
    Node * newNode = new Node{n, stack};

    // Aggiorna la cima della stack
    stack = newNode;
    
    return true;
}

/*
    Rimuove l'elemento in cima alla stack (operazione di pop).
    - stack: stack da cui rimuovere
    - value: variabile in cui salvare il valore rimosso
    Ritorna false se la stack è vuota.
*/
bool pop(Stack &stack, int &value) {
    bool result;

    if (isEmpty(stack)) {
        result = false;
    }
    else {
        // Salva il nodo in cima
        Node *topNode = stack;

        // Salva il valore del nodo rimosso
        value = topNode->value;

        // Sposta la cima al nodo successivo
        stack = stack->next;

        // Libera la memoria del nodo rimosso
        delete topNode;

        result = true;
    }
    return result;
}

/*
    Svuota completamente la stack.
    Rimuove tutti gli elementi e libera la memoria.
*/
void deinit(Stack &stack) {
    int tmp;
    while (pop(stack, tmp));
    stack = NULL;
}

/*
    Controlla se la stack è vuota.
    Ritorna true se stack == NULL.
*/
bool isEmpty(Stack &stack) {
    return stack == NULL;
}
