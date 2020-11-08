#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int vetor1[10];
    int vetor2[10];
    int vetor3[10];
    
    for (int i=0; i<10; i++){
        cout << "\nInforme o numero: " << i << " : ";
        cin >> vetor1[i];
        // Associando valor ao 2º vetor
        if ((i % 2)==0){
               vetor2[i] = vetor1[i]*2;
        }else{
              vetor2[i] = vetor1[i]*3;
        }
        // Associando valor ao 3º vetor
        vetor3[9-i] = vetor1[i];
    }
    for(int j=0; j<10; j++){
       cout << j << " := " << vetor1[j] << " => " << vetor2[j] << "=>" << vetor3[j] << "\n";
    }
    system("PAUSE");
    return EXIT_SUCCESS;
}
