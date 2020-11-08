#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    //informar 3 números e descobrir utilizado seleção encadeada
    //qual o maior, menor e o do meio    
    double a,b,c, maior, menor, medio;
            
    maior = 0;
    menor = 0;
    medio = 0;        
            
    cout << "Informe o primeiro número: ";
    cin >> a;
    cout << "Informe o segundo número: ";
    cin >> b;
    cout << "Informe o terceiro número: ";
    cin >> c;
    
    if(a>b && a>c){
           maior = a;
           if(b>c){
                   menor = c;
                   medio = b;
           } else {
                   menor = b;
                   medio = c;
           }             
    } else {
      if(b>c){
             maior = b;        
             if(a>c){
                medio = a;
                menor = c;               
             } else {
                medio = c;
                menor = a;             
             }
      } else {
             maior = c;
             if(a>b){
                medio = a;
                menor = b;               
             } else {
                medio = b;
                menor = a;             
             }
      }        
    }
    
    cout << "Menor =" << menor;
    cout << "Medio =" << medio;
    cout << "Maior =" << maior;
        
    system("PAUSE");
    return EXIT_SUCCESS;
}
