
int binToDec(int bin) {
    int dec = 0;
    while (bin > 0) {
        dec = dec + (bin % 10);
        bin = bin / 10;
        if (bin > 0) dec = dec * 2;
    }
    return dec;
}

int binToDec(const char bin[]) {
    int dec = 0;
    for (int i = 0; bin[i] != '\0'; i++) {
        dec = dec * 2 + (bin[i] - '0');
    }
    return dec;
}

int decToBin(int n) {
    int bin = 0;
    int pos = 1;
    while (n > 0) {
        bin += (n % 2) * pos;
        n /= 2;
        pos *= 10;
    }
    return bin;
}

void decToBin(int n, char bin[]) {
    int i = 0;
    while (n > 0) {
        bin[i++] = (n % 2) + '0';
        n /= 2;
    }
    bin[i] = '\0';

    // inversione
    for (int j = 0; j < i / 2; j++) {
        char tmp = bin[j];
        bin[j] = bin[i - j - 1];
        bin[i - j - 1] = tmp;
    }
}
