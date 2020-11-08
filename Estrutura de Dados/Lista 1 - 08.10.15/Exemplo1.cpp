#include "iostream"
#include "string.h"
#include "windows.h"
#include "stdlib.h"
#include "math.h"
#include "iomanip"
#include "conio.h"

#define n 100

using namespace std;

/* Estrutura de dados
   Aula 1 - Vetores e Busca */

int x[n], i=-1;

void inserir_valor(int valor)
{ // inicio
    i++;
    x[i] = valor;
} // fim inserir


int procura_indice(int valor)
{
    for(int indice=0 ; indice<=i ; indice++)
    {
        if(x[indice] == valor)
        {
            return indice;
        } // fim if
    } // fim for

    return -1;
} // fim procura


int imprimir()
{
    system("cls");

    cout << "*** Dados da estrutura *** \n\n\n" << endl;

    for(int j=0 ; j<=i ; j++)
    {
        cout << "valor " << x[j] << " no indice " << j << endl;
    } // fim for
    getch();
} // fim imprimir

int tela()
{
    int op = -1;

    system("cls");

    cout << "*** Estrutura vetor ***" << endl;
    cout << "*** 1 - Inserir valor" << endl;
    cout << "*** 2 - Buscar indice" << endl;
    cout << "*** 3 - Imprimir estrutura" << endl;
    cout << "*** 4 - Finalizar" << endl;
    cout << "*** \n \n \n item> "; cin >> op;

    return op;
 }

void executa_menu()
{
     int valor, op = -1;

     while(op!=4)
     {
         op = tela(); // chama a tela

         if(op==1)
         {
            system("cls");
            cout << "Digite um valor (inteiro): ";
            cin >> valor;
            inserir_valor(valor);
         } // fim op==1

         else if (op==2)
         {
             system("cls");
             cout << "Digite o valor a ser procurado: ";
             cin >> valor;

             if(procura_indice(valor) != -1)
                cout << "Valor existente no indice " << procura_indice(valor) << endl;
             else
                cout << "Valor inexistente na estrutura!" << endl;

             getch();

             else if(op==3)

                 imprimir();
        }
    } // fim while
} // fim void menu


int main()
{
    executa_menu();

    return 0;
}
