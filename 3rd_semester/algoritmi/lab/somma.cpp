#include <fstream>
using namespace std;
int main(){
int N,M;
ifstream in("input.txt");
in>>N>>M;
ofstream out("output.txt");
int somma=N+M;
out<<somma<<"\n";
return 0;
}