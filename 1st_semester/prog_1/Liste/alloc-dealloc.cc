// dealloc testa

void remove_first(node * &s) {
    node * n = s;
    if (s != NULL) {
        s = s->next;
        delete n;
    }
}

// dealloc coda

void search_remove(node* &p, int val){
    if (p != NULL) {
        node* q = p;
        if (q->dato == val) {
            p = p->next;
            delete q;
        } else {
            while(q->next != NULL) {
                if (q->next->dato == val) {
                    node* r = q->next;
                    q->next = q->next->next;
                    delete r;
                    return;
                }
                q = q->next;
            }
        }
    }
}

// alloc in testa

void insert_first(node * &s, int v) {
    node * n = new node;
    n->dato = v;
    n->next = s;
    s = n;
}

// alloc in coda

void insert_last_recursive(node* &s, int valore) {
    if (s == nullptr) {
        s = new node;      
        s->dato = valore;  
        s->next = nullptr; 
        return;
    }
    insert_last_recursive(s->next, valore);
}