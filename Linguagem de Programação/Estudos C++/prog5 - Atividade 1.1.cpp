#include<iostream>
#include<conio.h>

using namespace std;

int main (void)
{
    system("cls");
    cout << "Digite a 1a nota: ";
    float n1;
    cin >> n1;
    cout << "\n";
    cout << "Digite a 2a nota: ";
    float n2;
    cin >> n2;
    cout << "\n\n";
    float media=((n1+n2)/2);
    cout << "A media final e: ";
    cout << media;
    cout << "\n\n";
    system ("Pause"); // ou getch();
    return 0; // ou getch();
}
