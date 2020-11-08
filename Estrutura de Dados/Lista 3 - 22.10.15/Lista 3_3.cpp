/*

3 - INSIRA MAIS UMA OPÇÃO DE MENU PARA EFETUAR UMA BUSCA BINÁRIA NO EXERCÍCIO DA PRIMEIRA AULA.

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

int x[n], i = -1, tam = 0;

void inserir_valor(int valor)
{
    i++;

    x[i] = valor;

    tam++;
}


int pesquisa_binaria (int vet[], int chave, int tam)
{
    int inf = 0;
    int sup = tam-1;
    int meio;

    while (inf <= sup)
    {

        meio = (inf + sup)/2;

        if (chave == vet[meio])
        {
            return meio;
        }
        else if (chave < vet[meio])
        {
            sup = meio-1;
        }
        else
            inf = meio+1;
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
            cout << "Digite um valor: ";
            cin >> valor;
            inserir_valor(valor);
        }
        else if (op==2)
        {
            system("cls");

            int valor, resultado, tam;

            cout << "Digite valor a ser procurado: ";
            cin >> valor;

            resultado = pesquisa_binaria(x, valor, tam);

            if (resultado != -1)
            {
                cout << "A valor encontra-se no indice: "; cout << resultado;
            }
            else
                cout << "A valor nao foi encontrado.";

            cout << "\n\n\n";

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
