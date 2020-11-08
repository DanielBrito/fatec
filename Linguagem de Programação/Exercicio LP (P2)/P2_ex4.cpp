#include<iostream>
using namespace std;

int main()
{
    int passageiros[25];
    int i;
    double soma = 0;
    double media = 0;
    int maior = 0;
    int menor = 1000000;
    int maior_hora = 0;
    int menor_hora = 0;

    for (i = 0; i <= 23; i++)
    {
        cout << "Digite a quantidade de passageiros as " << i << ":00h: ";
        cin >> passageiros[i];    
    }
    cout << "\n";

    for (i = 0; i <= 23; i++)
    {
         soma += passageiros[i];
         
         if (passageiros[i] > maior)
         {
            maior = passageiros[i];
            maior_hora = i;
         }
         
         if (passageiros[i] < menor)
         {
            menor = passageiros[i];
            menor_hora = i;
         }
    }     
    media = soma / 24;
    
    cout << "A media de passageiros do dia foi de: " << media << endl;
    cout << "A maior quantidade de passageiros registrada foi de: " << maior << " passageiros as " << maior_hora << ":00" << endl;
    cout << "A menor quantidade de passageiros registrada foi de: " << menor << " passageiros as " << menor_hora << ":00" << endl;
    cout << "\n";
    
    system("pause");
    return 0;
}
