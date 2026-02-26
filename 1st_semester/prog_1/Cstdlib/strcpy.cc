char* mia_strcpy(char* dest, const char* src) {
    // Salvataggio dell'indirizzo iniziale per il ritorno
    char* ptr = dest;

    // Copia dei caratteri finché src non punta a '\0'
    while (*src != '\0') {
        *dest = *src;
        dest++;
        src++;
    }

    // Inserimento del terminatore nullo
    *dest = '\0';

    return ptr;
}