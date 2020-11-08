#include<iostream>
using namespace std;

int main()
{
    double temperatura [25];
    int i;
    double soma = 0;
    double media = 0;
    double maior = 0;
    double menor = 1000000;

    for (i = 0; i <= 23; i++)
    {
        cout << "Digite a temperatura as " << i << ":00 : ";
        cin >> temperatura[i];    
    }
    cout << "\n";

    for (i = 0; i <= 23; i++)
    {
         soma += temperatura[i];
         
         if (temperatura[i] > maior)
         {
            maior = temperatura[i];
         }
         
         if (temperatura[i] < menor)
         {
            menor = temperatura[i];
         }
    }     
    media = soma / 24;
    
    cout << "A media das temperaturas e: " << media << endl;
    cout << "A maior temperatura e: " << maior << endl;
    cout << "O menor temperatura e: " << menor << endl;
    cout << "\n";

    system("pause");
    return 0;
}
