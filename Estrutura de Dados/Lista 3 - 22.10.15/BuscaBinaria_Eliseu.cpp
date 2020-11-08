#include "iostream"
#include "math.h"
#include "stdlib.h"
#include "conio.h"
#define n 10
using namespace std;
int  buscaBinaria (int x, int v[]) 
{ 
   int e, m, d; 
   e = -1; d = n;  // atenção!
   while (e < d-1) 
   {  m = (e + d)/2;
      if (v[m] == x) return m; // caso encontre já retorna
      else
         if (x > v[m]) 
           e = m;  // altera esquerda caso esteja à direita
           else 
           d = m;  // altera direita caso esteja à esquerda
   }
   return -1; // retorna -1 se não encontrar 
}



int main() { 

int v[] = {-1, 0, 1, 2, 3, 110}, valor, pos;


    
     
// pesquisa o valor a ser econtrado chamando a função 
do {
    system("cls");
    for (int i =0; i< 6;i++ ) 
        cout << "posicao " << i << " valor " << v[i] << endl;         
        
        
                       
    cout << "\n \n \n \n Digite o Valor para pesquisar:"; cin >> valor;
    pos = buscaBinaria(valor, v);
    if (pos > -1) 
         cout << "encontrado " << v[pos] << " na posicao " << pos << endl;
    else 
         cout << "valor inexistente no vetor... \n";
         
   } while (getche() != 27) ;
    
   
    return 0;}
