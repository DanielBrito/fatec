#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    //informar 3 n�meros e descobrir utilizado sele��o encadeada
    //qual o maior, menor e o do meio    
    double a,b,c, maior, menor, medio;
            
    maior = 0;
    menor = 0;
    medio = 0;        
            
    cout << "Informe o primeiro n�mero: ";
    cin >> a;
    cout << "Informe o segundo n�mero: ";
    cin >> b;
    cout << "Informe o terceiro n�mero: ";
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
