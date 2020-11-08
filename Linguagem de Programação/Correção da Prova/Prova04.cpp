#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int numeros[20];
    int maiorSeq = 0;
    int indiceMaior = 0;
    int resto;
    int contador = -1;
    
    for(int i=0; i < 20 ; i++){
            cout << "\nInforme o N" << i << ":";
            cin >> numeros[i];         
            
            resto = numeros[i] % 2;
            if(resto ==0){
              contador++;
              if(contador > maiorSeq ){
                 maiorSeq = contador;                          
                 indiceMaior = i;                                      
              }                
            } else {
              contador = -1;
            }
    }
    cout << "Maior Sequencia Par =" << (maiorSeq+1) << "\n";
    for(int j = (indiceMaior - maiorSeq); j <= indiceMaior; j++){
            cout << numeros[j] << ", ";       
    }
    
    
    system("PAUSE");
    return EXIT_SUCCESS;
}
