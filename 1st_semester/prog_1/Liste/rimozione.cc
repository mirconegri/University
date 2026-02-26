// rimuovi specifico

node * remove_element(node *x) {

	node * y = x->next;
	x->next = y->next;
	y->next = NULL;
	return y;  // necessaria dealloc
}
// delete y


// rimozione in testa

void remove_first(nodo * &s) {

	nodo * n = s;
	if (s != NULL) {
		s = s->next;
	delete n;
	}
}

nodo * remove_first(nodo * s) {
	nodo * n = s;
	if (s != NULL) {
		s = s->next;
		delete n;
	}
	return s;
} // attenzione a come invocata


// rimozione elemento particolare 

void search_remove(nodo* &p, int val){
	if (p != NULL) {
		nodo* q = p;
		if (q->dato == val) {
			p = p->next;
			delete q;
		}
		else {
		while(q->next != NULL) {
			if (q->next->dato == val) {
				nodo* r = q->next;
				q->next = q->next->next;
				delete r;
				return;
			}
			if (q->next != NULL) {
				q=q->next;
			}
		}
		}
	}
}