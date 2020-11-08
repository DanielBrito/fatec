/*

2 - CRIE UM CÓDIGO C++ CONTENDO UMA STRUC PARA ARMAZENAR NOME, IDADE E SALÁRIO DE
    N PESSOAS. MONTE UMA ESTRUTURA DE MENU PARA ORGANIZAR POR ORDEM ALFABETICA DE NOME
    A STRUCT, INSERIR NOMES, E ENCONTRAR UM REGISTRO DA STRUCT POR NOME ATRAVÉS DE UM
    PROCESSO DE BUSCA BINÁRIA.

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

typedef struct Pessoa
{
    char nome[30];
    int idade;
    double salario;

};

struct Pessoa pessoa;


int tela()
{
    int op=-1;

    system("cls");

    cout << "*** Estrutura Vetor ***" << endl;
    cout << "*** 1 - Cadastrar nomes" << endl;
    cout << "*** 2 - Buscar nome" << endl;
    cout << "*** 3 - Imprimir cadastros" << endl;
    cout << "*** 4 - Finalizar" << endl;
    cout << "\n\n- Item > "; cin >> op;

    return op;
}


void executa_menu()
{
    int op=-1;

    while(op!=4)
    {
        op = tela();

        if(op==1)
        {
            system("cls");

            int i;
            Pessoa person;

            for(i=0 ; i<3 ; i++)
            {
                cout << "Digite o " << i+1 << "o nome: ";
                cin >> person.nome;

                cout << "Digite a idade: ";
                cin >> person.idade;

                cout << "Digite o salario: ";
                cin >> person.salario;

                cout << "\n";
            }
        }

        else if(op==2)
        {
            /*

            FAZER A BUSCA DE UM NOME UTILIZANDO O MÉTODO BINÁRIO!

            */
        }

        else if(op==3)
        {

            /* LISTAR NOMES POR ORDEM ALFABÉTICA - COM PROBLEMAS */

            char aux[30];
            int j;

            for(j=1; j<3; j++)
            {
                strcpy(aux,person.nome[j]);
                i = j-1;

                while(i >= 0 && strcmp(person.nome[i], aux) > 0)
                {
                    strcpy(person.nome[i+1],person.nome[i]);
                    i--;
                }
                strcpy(person.nome[i+1],aux);
            }

            cout << "\n\nCadastros em ordem alfabetica: \n";

            for(i=0; i<3; i++)
            {
                cout << "Nome: " << person.nome[i];
                cout << "Idade: " << person.idade[i];
                cout << "Salario: " << person.salario[i];

                cout << "\n";

            }

            return 0;
        }
    }
}



int main()
{
    executa_menu();
    return 0;
}
