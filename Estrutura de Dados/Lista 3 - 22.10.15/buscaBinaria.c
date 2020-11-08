#include <cstdlib>
#include <iostream>

using namespace std;

int pesquisaBinaria (int vet[], int chave, int tam){
     int inf=0;
     int sup= tam-1;
     int meio;
     
     while (inf <= sup){
           
           meio = (inf + sup)/2;
           
           if (chave == vet[meio]){
                     return meio;
                     
                     }
           else if (chave < vet[meio]){
                sup = meio-1;
                                
                }
           else
               inf = meio+1;
                     
           
           }
     return -1;        
    }


int main(int argc, char *argv[])
{
    int tam1 = 5;  
    int vet1[]={1,2,3,4,5};   
    int chave1, resultado;
    
    
    cout << "Digite chave: "; 
    cin >> chave1;
    
    pesquisaBinaria(vet1, chave1, tam1);
    
  
    resultado = pesquisaBinaria(vet1, chave1, tam1);
    if (resultado != -1)
    {
        cout << "A chave encontra-se no INDICE: "; cout << resultado;
        }
        else
        cout << "A chave nao foi encontrada.";
        
    
    cout << "\n\n\n";
    system("PAUSE");
    return EXIT_SUCCESS;
}

