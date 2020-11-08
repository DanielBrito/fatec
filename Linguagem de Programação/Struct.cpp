#include <cstdlib>
#include <iostream>

using namespace std;

 struct Ficha{
     int codigo;
     char sexo;
     double altura;
     double peso;
     int idade;
     };

int main(){
   Ficha pessoas[10];
   Ficha p1;
   
   for(int i=0; i<10;i++){
      cout << "Informe o codigo:";
      cin >> pessoas[i].codigo;
        cout << "Informe o sexo:";
        cin >> pessoas[i].sexo;
        cout << "Informe a altura:";
        cin >> pessoas[i].altura;
        cout << "Informe o peso:";
        cin >> pessoas[i].peso;
        cout << "Informe a idade:";
        cin >> pessoas[i].idade;
        }   
      
   
   return 0;  
}
