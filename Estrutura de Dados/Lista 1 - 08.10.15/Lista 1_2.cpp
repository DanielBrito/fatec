/*

2) Criar um programa em C++ para inserir, buscar e imprimir uma lista de nomes em um vetor.

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

char lista[n];
int i = -1;

void inserir_nome(char lista, char nome)
{
    lista = nome;
}

/*
int procura_nome(char nome)
{
    for(int indice=0 ; indice<=i ; i++)
    {
        if(strcmp(lista[i], nome[i])!=0)
        {
            return i;
        }
    }
    return -1;
}
*/

void imprimir()
{
    system("cls");

    cout << "Dados da estrutura *** \n\n\n" << endl;
    for(int j=0; j<=i ; j++)
    {
        cout << "Nome " << lista[j] << " no indice " << j << endl;
    }
    getch();
}


int tela()
{
    int op=-1;

    system("cls");

    cout << "*** Estrutura Vetor ***" << endl;
    cout << "*** 1 - Inserir nome" << endl;
    cout << "*** 2 - Buscar nome" << endl;
    cout << "*** 3 - Imprimir estrutura" << endl;
    cout << "*** 4 - Finalizar" << endl;
    cout << "\n\n- Item > "; cin >> op;

    return op;
}


void executa_menu()
{
    int op=-1;
    char nome[100];

    while(op!=4)
    {
        op = tela();

        if(op==1)
        {
            system("cls");

            cout << "Digite o nome: ";
            cin >> nome;
            inserir_nome(nome);
        }

        else if(op==2)
        {
            system("cls");

            cout << "Digite o nome a ser procurado: ";
            cin >> nome;

            if(procura_nome(nome)!=-1)
                cout << "Nome existente no indice " << procura_nome(nome) << endl;
            else
                cout << "Nome inexistente na estrutura!" << endl;

            getch();
        }

        else if(op==3)
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
