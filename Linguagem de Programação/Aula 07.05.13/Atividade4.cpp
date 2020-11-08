#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int vetor1[20];
    int numAntigo, contador, recorde, indiceAux;
    for(int i=0; i<20; i++){
            cout << "\nInforme o numero " << i << ": ";
            cin >> vetor1[i];
    }
    numAntigo = 0;
    recorde = 0;
    contador = 0;
    for(int i=0; i<20; i++){
       if(vetor1[i] >= numAntigo){
          contador++;
          if(contador>recorde){
             recorde=contador;
             indiceAux=i;
          }
       }else{
          contador=0;
       }
       numAntigo=vetor1[i];
    }
    cout << "\n" << "Recorde: " << recorde << " => ";
    for(int i=(indiceAux-recorde); i<indiceAux; i++){
       cout << vetor1[1] << ",";
    }
    system("PAUSE");
    return EXIT_SUCCESS;
}
