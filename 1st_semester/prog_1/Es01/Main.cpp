#include <iostream>
#include <fstream>
using namespace std;

int main(int argc, char* argv[]){
    
    if (argc != 4) {
        cout << "Usage: " << argv[0] << " <numero> <input> <output>" << endl; // occhio al numero 4
        return 1;
    }
    
    // 2. Conversione da stringa a intero
    int N = atoi(argv[1]);


    fstream input, output;
    input.open(argv[1], ios::in);
    if(input.fail()){
        cerr<<"Error during file opening"<<endl;
        return -2;
    }
    output.open(argv[2], ios::out);
    if(output.fail()){
        cerr<<"Error during file opening"<<endl;
        input.close();
        return -2;
    }

    
    // 4. Logica "Divisione per 10" (Esempio: estrazione cifre)
    // Utile per conversioni o per analizzare un numero cifra per cifra
    int temp = N;
    while (temp > 0) {
        int cifra = temp % 10; // Prende l'ultima cifra a destra
        // Fai qualcosa con la cifra...
        temp = temp / 10;      // Rimuove l'ultima cifra
    }


    //da controllare
    char word[];

    while(input>>word){

    }

    char riga[];
    while(input.getline(riga)){

    }
    
    // deallocazione 

    for (int i = 0; i < R; i++) {
        delete[] m[i];
    }

    delete[] m;

    //fine da controllare

    input.close();
    output.close();
    return 0;
}
