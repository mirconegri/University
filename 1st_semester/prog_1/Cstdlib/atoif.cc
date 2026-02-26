// atoi

int my_atoi(const char* str) {
    int ris = 0;
    int i = 0;
    int segno = 1;

    // Gestione dell'eventuale segno
    if (str[0] == '-') {
        segno = -1;
        i++;
    }

    // Scorrimento della stringa carattere per carattere
    while (str[i] != '\0') {
        // Controllo che il carattere sia un numero
        if (str[i] >= '0' && str[i] <= '9') {
            // Conversione: sottraendo '0' (48 ASCII) ottengo il valore intero
            ris = ris * 10 + (str[i] - '0');
        }
        i++;
    }

    return ris * segno;
}

// atof
double myAtof(const char* text) {
    int index = 0;
    double sign = 1.0;
    double value = 0.0;
    double decimalFactor = 0.1;

    while (text[index] == ' ') {
        index++;
    }

    if (text[index] == '-') {
        sign = -1;
        index++;
    } else if (text[index] == '+') {
        index++;
    }

    while (text[index] >= '0' && text[index] <= '9') {
        value = value * 10 + (text[index] - '0');
        index++;
    }

    if (text[index] == '.') {
        index++;
        while (text[index] >= '0' && text[index] <= '9') {
            value += (text[index] - '0') * decimalFactor;
            decimalFactor *= 0.1;
            index++;
        }
    }

    return value * sign;
}