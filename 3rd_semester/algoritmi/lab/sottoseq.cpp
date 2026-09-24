
#include<iostream>
#include <fstream>

using namespace std;

int main(){

    int N = 0;
    ifstream in("input.txt");
    in>>N;
    
    int arr[N];
    int somma = 0;
    int max = 0;

    for (int i = 0; i < N; i++){
        
        in>>arr[i];

        if (somma + arr[i] > somma)  {
            somma += arr[i];
            max = somma;
        }
        else {
            somma = 0;
        }
    }

    ofstream out("output.txt");
    out<<max<<endl;

    return 0;
}