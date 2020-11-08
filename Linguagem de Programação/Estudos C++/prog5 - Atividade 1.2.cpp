#include<iostream>
#include<conio.h>

using namespace std;

int main (void)
{
    system("cls");
    cout<<"Digite e temperatura em graus Celsius: ";
    float graus_c;
    cin >> graus_c;
    cout << "\n\n";
    float graus_f = ((((9*graus_c)+160))/5);
    cout<<"A temperatura em Fahrenheit e: ";
    cout<<graus_f;
    cout<<"\n\n";
    system("Pause");
    return 0;
}
