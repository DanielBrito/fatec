/*

1) Criar um programa em C++ para inserir, buscar e imprimir um valor em uma estrutura de dados homogênea do tipo vetor.

*/

#include "iostream"
#include "string.h"
#include "windows.h"
#include "stdlib.h"
#include "math.h"
#include "iomanip"
#include "conio.h"
#define n 100

using namespace std;

int x[n], i= -1;


void inserir_valor(int valor)
{
    i++;
    x[i] = valor;
}


int procura_indice(int valor)
{
    for (int indice=0; indice<=i; indice++)
    {
        if ( x[indice] == valor )
        {
                      return indice;
        }
    }
    return -1;
}


void imprimir()
{
    system("cls");
    cout << "*** Dados da estrutura *** \n \n \n " << endl;
    for (int j=0;j<=i;j++)
    {
        cout << "valor " << x[j] << " no indice " << j << endl;
    }
    getch();
}


int tela ()
{
    int op = -1;

    system("cls");

    cout << "*** Estrutura Vetor *** "   << endl;
    cout << "*** 1 - Inserir valor"      << endl;
    cout << "*** 2 - Buscar indice"      << endl;
    cout << "*** 3 - Imprimir estrutura" << endl;
    cout << "*** 4 - Finalizar"          << endl;
    cout << "\n \n - Item > ";   cin >> op;

    return op;
}


void executa_menu()
{
    int valor, op = -1;
    while (op != 4)
    {
        op = tela();

        if (op==1)
        {
            system("cls");
            cout << "Digite valor(inteiro):";
            cin >> valor;
            inserir_valor(valor);
        }
        else if (op==2)
        {
            system("cls");
            cout << "Digite valor a ser procurado:";
            cin >> valor;

        if ( procura_indice(valor) != -1 )
            cout << "Valor existente no indice " << procura_indice(valor) << endl;
        else
            cout << "Valor inexistente na estrutra!" << endl;

            getch();
        }

        else if (op==3)
        {
            imprimir();
        }
     }
}


int main()
{
    executa_menu();
    return 0;
}
