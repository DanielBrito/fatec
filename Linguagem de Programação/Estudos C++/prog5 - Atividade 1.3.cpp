#include<iostream>
#include<conio.h>

using namespace std;

int main (void)
{
    system("cls");
    cout<<"Digite o raio da lata de oleo: ";
    float raio;
    cin>>raio;
    cout<<"\n";
    cout<<"Digite a altura da lata de oleo: ";
    float altura;
    cin>>altura;
    cout<<"\n\n";
    float volume=((3.14159*(raio*raio))*altura);
    cout<<"O volume da lata de oleo e: ";
    cout<<volume;
    cout<<"\n\n";
    system("Pause");
    return 0;
}
