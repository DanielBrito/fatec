#include<iostream>
using namespace std;

int main()
{
    int resultados[10][3];
    int i, j;
    int op;
    double mandante = 0, empate = 0, visitante = 0;
    
    for (i = 1; i <= 10; i++)
    {
        cout << "> Partida numero " << i << endl;
        cout << "1 - Vitoria do Time da casa "; 
        cout << "\n2 - Empate";
        cout << "\n3 - Vitoria do Time visitante\n";
        cout << "APOSTA: ";
        cin >> op;
        
        if(op!=1 && op!=2 && op!=3)
           {
              cout << "Aposta invalida!\n";
              system("pause");
              return 0;
           }
        else
        if(op == 1)
        {
              resultados[i][op] = 1;
              mandante++;      
        }   
        if(op == 2)
        {
              resultados[i][op] = 2; 
              empate++;     
        }
        if(op == 3)
        {
              resultados[i][op] = 3;  
              visitante++;    
        }  
    } 
    cout << "\n";
    
    cout << "O percentual de vitorias do mandante foi de: " << (mandante / 10) * 100 << "%" << endl;
    cout << "O percentual de empates foi de: " << (empate / 10) * 100 << "%" << endl;
    cout << "O percentual de vitorias do visitante foi de: " << (visitante / 10) * 100 << "%" << endl;
    cout << "\n";  

    system("pause");
    return 0;
}
