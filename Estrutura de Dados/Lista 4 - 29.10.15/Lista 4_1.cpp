/*

1) FAÇA UM PROGRAMA EM C++ CONTENDO AS FUNÇÕES DE IMPLEMENTAÇÃO DE UMA PILHA:

CRIAR PILHA
EMPILHAR
DESEMPILHAR
CHECAR_PILHA_VAZIA
CHECAR_PILHA_CHEIA
EXIBIR_VALOR_EMPILHADO
EXIBIR_VALOR_DESEMPILHADO
EXIBIR_PILHA
CRIE AS FUNÇÕES PARA TRATAMENTO DE MENU E TELA

*/

#include "iostream"
#include "math.h"
#include "stdlib.h"
#include "conio.h"

#define n 5

using namespace std;

struct pilha
{
    int topo;
    float dado[n];
};

struct pilha p;


bool vazia()
{
    if (p.topo==-1)
    return 1;
    else
    return 0;
}


bool cheia()
{
    if (p.topo==n)
        return 1;
    else
        return 0;
}


float ler_valor()
{
    float valor;

    system("cls");

    cout << "- Valor: ";
    cin >> valor;

    return valor;
}


void pop(float valor)
{
    if (!cheia())
    {
        p.topo ++;
        p.dado[p.topo]=valor;
        cout << "\n  Valor "<< p.dado[p.topo] << " inserido na posicao " << p.topo << " da pilha.\n";
    }
    else
        cout << "\n\tPilha cheia!\n";

        getch();
}


void push()
{
    if ( !vazia() )
    {
        system("cls");

        cout << "\n\tValor "<< p.dado[p.topo] << " sera removido da posicao " << p.topo << " da pilha.\n";
        p.topo --;
    }
    else
        system("cls");

        cout << " \n\tPilha vazia!\n";

     getch();
}


void ViewPilha()
{
    system("cls");

    int i=p.topo;

    if ( !vazia() )
    do
    {
        cout << "\n\tValor " << p.dado[i] << " na posicao " << i << " da pilha.\n";
        i--;
    } while (i > -1);

    else
        cout << "\n\tPilha vazia!\n";
}


int tela()
{
    int op;

    system("cls");

    cout << "\t*** PILHA *** \n\n" << endl;
    cout << "1 - Empilhar...\n" << endl;
    cout << "2 - Desempilhar...\n" << endl;
    cout << "3 - Exibir Pilha...\n" << endl;
    cout << "4 - Sair...\n" << endl;
    cout << "  > Opcao: ";
    cin >> op;

    return op;
}


void trata_menu_pilha()
{
    int op;
    p.topo = -1;
    float valor;

    do
    {
        op = tela();

        if (op ==1)
        {
            valor = ler_valor();
            pop(valor);
        }
        else if (op == 2)
        {
            push();
        }
        else if (op == 3)
        {
            ViewPilha(); getch();
        }
    } while (op != 4) ;
}


int main()
{
    trata_menu_pilha();
    return 0;
}
