#include<iostream>
using namespace std;

int main()
{
    double pessoa[5][3];
    int i, j;
  
    for (i = 1; i <= 5; i++)
    {
        cout << "Pessoa numero " << i << endl;
        for (j = 1; j <= 3; j++)
        {
            cout << "Digite a altura: ";
            cin >> pessoa[i][j];   
            cout << "Digite o peso: ";
            cin >> pessoa[i][j + 1];   
                      
            pessoa[i][j + 2] = pessoa[i][j + 1] / (pessoa[i][j] * pessoa[i][j]);
            cout << "O IMC da pessoa numero " << i << " e: " << pessoa[i][j + 2] << endl;
            break;       
        }      
    } 
    cout << "\n";

    for (i = 1; i <= 5; i++)
    {
        if(pessoa[i][3] > 25)
        {
                        
            cout << "A pessoa numero " << i << " deve perder " << (pessoa[i][3] - 25) / 0.4444 << "Kg para chegar ao IMC 25." << endl;               
        }    
    }
    cout << "\n";
    
    system("pause");
    return 0;
}
