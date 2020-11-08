#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    double n1, n2, resultado;
    char continua;
    char op;
    
    do{
        system("CLS");
        cout << "Calculadora\n================\n";
        cout << "1-Soma \n";
        cout << "2-Subtração \n";
        cout << "3-Multiplicação \n";
        cout << "4-Divisão \n";
        cout << "5-Resto \n";
        cin >> op;
        
        cout << "Informe N1: ";
        cin >> n1;
        
        cout << "Informe N2: ";
        cin >> n2;

        resultado = 0 ;
        switch(op){
                   case '1':
                        resultado = n1 + n2;
                        break;                                   
                   case '2':
                        resultado = n1 - n2;
                        break;          
                   case '3':
                        resultado = n1 * n2;
                        break;                                   
                   case '4':
                   {
                        if(n2 != 0){
                           resultado = n1 / n2;
                        }
                        break;                                   
                   }
                   case '5':
                   {
                        resultado = (int)n1 % (int)n2;
                        break;     
                   }     
        }
        cout << "Resultado=" << resultado << " \n \n";                
        cout << "Deseja continuar S/N ? ";
        cin >> continua;                                                
    } while(continua=='S' || continua=='s');
        
    
    
    
    system("PAUSE");
    return EXIT_SUCCESS;
}
