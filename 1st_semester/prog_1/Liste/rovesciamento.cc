// rovesciamento

node * reverse(node * x) {
    node * t;
    node * y = x;
    node * r = NULL;
    while ( y != NULL ) {
        t = y->next;
        y->next = r;
        r = y;
        y = t;
    }
    return r;
}

// rovesciamento rec

node* reverse_aux(node* current, node* prev) {
    if (current == nullptr) {
        return prev;
    }

    node* next_node = current->next;
    current->next = prev;
    
    return reverse_aux(next_node, current);
}

node * reverse(node* x) {
    return reverse_aux(x, nullptr);
}