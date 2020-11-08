#include<iostream>
using namespace std;

int main()
{
    int numeros[20];
    int maior_seq = 0;
    int indice_maior = 0;
    int resto;
    int cont = -1;

    for(int i=0; i < 20 ; i++)
    {
          cout << "Informe o numero " << i + 1 << ": "; 
          cin >> numeros[i];         
            
          resto = numeros[i] % 3;
          if(resto == 0)
          {
              cont++;
              if(cont > maior_seq)
              {
                 maior_seq = cont;                          
                 indice_maior = i;                                      
              }                
          } 
          else 
          {
              cont = -1;
          }
    }
    cout << "\n";
 
    cout << "A maior sequencia de numeros multiplos de 3 e: " <<(maior_seq + 1) << ".\n";

    cout << "Os numeros da sequencia sao: ";
    for(int j = (indice_maior - maior_seq); j <= indice_maior; j++)
    {
            cout << numeros[j] << ", ";       
    }
    cout << "." << endl;
    cout << "\n" << endl;

    system("pause");
    return 0;
}
