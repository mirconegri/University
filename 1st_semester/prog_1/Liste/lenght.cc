// lista NULL

int length (nodo * s) {
    int l = 0;
    for( ; s != NULL; s = s->next){
        l++;
    }
    return l;
}

// lista NULL rec

int length(Stack * s) {
    // Caso base: il puntatore è nullo, la lista/stack è finita
    if (isEmpty(s)) {
        return 0;
    }

    // Passo ricorsivo: 1 (nodo corrente) + lunghezza della coda
    return 1 + length(s->next);
}

// isEmpty()

bool isEmpty(Stack * s) {
    return (s == nullptr);
}


// lista circolare

int length (nodo * s, nodo * x) {
int l = 0;
if (s != NULL) {
l = 1;
for( s = s->next; s != x; s = s->next){
    l++;
}
return l;
}
}