#include <cstdlib>
#include <iostream>

using namespace std;

int main(int argc, char *argv[])
{
    int op=0;
    double valor=0;
    double saldo=0;
    double historico[100];
    int indice=0;
    
    do{
        system("cls");
        cout << "Escolha uma opcao \n";
        cout << "1-Credito\n2-Debito\n3-Saldo\n4-Extrato\n0-Sair\n";
        cin >> op;
        
        if(op>0){
           if(op==1){
              cout << "Informe o valor a ser depositado: ";
              cin >> valor;
              saldo=saldo+valor;
              historico[indice]=valor;
              indice++;
           }
           if(op==2){
              cout << "Informe o valor a ser sacado: ";
              cin >> valor;
              if (valor<=saldo){
                 saldo = saldo-valor;
                 
              historico[indice]=(valor*-1);
              indice++;
           } else {
                 cout << "Saldo insuficiente: " << saldo;
           }
        }
        if(op==3){
           cout << "Saldo atual: " << saldo;
           system ("PAUSE");
        }
        if (op==4){
           for (int i=0; i<indice;i++){
               cout << i << " => " << historico[i] << "\n";
        }
               system("PAUSE");
                
         
       }
       }
       }while(op>0);
        
    system("PAUSE");
    return EXIT_SUCCESS;
}
