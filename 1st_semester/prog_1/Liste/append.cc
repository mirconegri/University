// append

void append(node* &lista1, node* lista2) {

    if (lista1 == nullptr) {
        lista1 = lista2;
        return;
    }
    if (lista2 == nullptr) {
        return;
    }

    node* temp = lista1;
    while (temp->next != nullptr) {
        temp = temp->next;
    }

    temp->next = lista2;
}

// append rec

void append_recursive(node* &lista1, node* lista2) {

    if (lista1 == nullptr) {
        lista1 = lista2;
        return;
    }
    
    append_recursive(lista1->next, lista2);
}