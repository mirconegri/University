// Struttra di riferimento

struct node {
    int dato; // o val
    node* next;
};

// inserimento rec in coda

void insert_last_recursive(nodo* &s, int valore) {

    if (s == nullptr) {
        s = new nodo;      
        s->dato = valore;  
        s->next = nullptr; 
        return;
    }

    insert_node_recursive(s->next, valore);
}

// inserimento in coda


void insert_last(nodo * & p, int n) {

    nodo * r = new nodo;
    r->dato = n;
    r->next = NULL;
    if (p != NULL) {
        node * q = p;
        while(q->next != NULL) {
            q = q->next;
        }
        q->next = r;
    }
    else {
        p = r;
    }
}

// inserimento in testa 

void insert_first(node * &s, int v) {
    node * n = new node;
    n->dato = v;
    n->next = s;
    s = n;
}

node * insert_first(node*s, int v) {
    node * n = new node;
    n->dato = v;
    n->next = s;
    return n;
}

// lista ordinata

void insert_order(nodo * &p, int inform){
    if ((p==NULL) || (p->dato >= inform)) {
        insert_first(p, inform);
    }
    else {
    nodo* q=p;
    while ((q->next != NULL) && (q->next->dato <= inform)) {
        q=q->next;
    }
    nodo* r = new nodo;
    r->dato = inform;
    r->next = q->next;
    q->next = r;
    }
}


