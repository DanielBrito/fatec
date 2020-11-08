/*

3) CRIE TRES NOVAS OPÇÕES DE MENU NO PROGRAMA VETOR DA PRIMEIRA AULA PARA CLASSIFICAR O
   VETOR, IMPRIMIR CRESCENTE E DECRESCENTE.

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

int x[n];
int i = -1;

int ordenar(int x[])
{
    int i, j, aux;

    for (i=0;i<n;i++)
        for (j=i;j<n;j++)
            if (x[i] > x[j] )
            {
                aux = x[i];
                x[i] = x[j];
                x[j] = aux;
            }
}


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
    cout << "*** 4 - Imprimir estrutura (crescente)" << endl;
    cout << "*** 5 - Imprimir estrutura (decrescente)" << endl;
    cout << "*** 6 - Finalizar"          << endl;
    cout << "\n \n - Item > ";   cin >> op;

    return op;
}


void executa_menu()
{
    int valor, op = -1;
    while (op != 6)
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

        else if (op==4)
        {
            ordenar(x[i]);

            cout << "*** Crescente *** \n" << endl;

            for (i=0;i<n;i++)
            cout << x[i] << endl;
        }

        else if (op==5)
        {
            ordenar(x[i]);

            cout << "*** Decrescente *** \n" << endl;

            for (i=n;i>=0;i--)
            cout << x[i] << endl;
        }
     }
}


int main()
{
    executa_menu();
    return 0;
}
