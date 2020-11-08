#include<iostream>
using namespace std;

int main()
{
    double embalagem [10][4];
    int i, j;
  
    for (i = 1; i <= 10; i++)
    {
        cout << "\n";
        cout << "Pacote numero " << i << endl;
        for (j = 1; j <= 4; j++)
        {
            cout << "Digite a altura: ";
            cin >> embalagem[i][j];   
            cout << "Digite a largura: ";
            cin >> embalagem[i][j + 1];
            cout << "Digite a profundidade: ";
            cin >> embalagem[i][j + 2];       
                 
            embalagem[i][j + 3] = embalagem[i][j] * embalagem[i][j + 1] * embalagem[i][j + 2];
            cout << "O volume da embalagem e: " << embalagem[i][j + 3] << " m3" << endl;
            break;       
        }      
    } 
    cout << "\n";
 
    for (i = 1; i <= 10; i++)
    {
        if(embalagem[i][4] > 100)
        {
            cout << "O pacote numero " << i << " tem o volume maior do que 100m3, porque tem: " << embalagem[i][4] << "m3" << endl;               
        }    
    }
    cout << "\n";

    system("pause");
    return 0;
}
