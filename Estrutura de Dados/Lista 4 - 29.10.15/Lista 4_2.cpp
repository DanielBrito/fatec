/*

2) ADAPTE O PROGRAMA INICIAL COM VETOR INSERINDO AS FUNÇÕES DO PROGRAMA DE IMPLEMENTAÇÃO
DA PILHA. MANTENHA AS OPÇÕES ORIGINAIS DO PROGRAMA INICIAL, PORÉM ACRESCENTE AS OPÇÕES
PARA TRATAMENTO DE UMA PILHA NAQUELE PROGRAMA USANDO UM VETOR CHAMADO PILHA DO TIPO STRING.

*/


#include "iostream"
#include "math.h"
#include "stdlib.h"
#include "conio.h"
#include "string"

#define N 3


/* ESTRUTURA DA PILHA */

struct pilha
{
    int topo;
    char nomes[N][10];
};


/* CRIAR PILHA */

pilha criar_pilha()
{
    pilha p;

    p.topo = -1;

    return p;
}


/* PILHA VAZIA */

int pilha_vazia(pilha p)
{
    if(p.topo==-1)

        return true;

        return false;
}


/* PILHA CHEIA */

int pilha_cheia(pilha p)
{
    if(p.topo==N-1)

        return true;

        return false;
}


/* INSERIR NOME */

int pop(pilha &p, char val[50])
{
    if(p.topo==N-1)

        return false;

    p.topo++;

    strcpy(p.nomes[p.topo], val);

    return true;
}


/* REMOVER NOME */

int push(pilha &p)
{
    if(p.topo==-1)

        return false;

    p.topo--;

    return true;
}


/* DESENVOLVER FUNÇÃO

    EXIBIR PILHA */


/* EXIBIR VALOR REMOVIDO */

int top(pilha p, char val[50])
{
    if(pilha_vazia(p)==true)

        return false;

    strcpy(val, p.nomes[p.topo]);

    return true;
}


int tela()
{
    int op;

    system("cls");

    cout << "\t*** ESTRUTURA - PILHA ***\n\n\n";
    cout << " 1 - Empilhar nome...\n";
    cout << " 2 - Desempilhar nome...\n";
    cout << " 3 - Exibir pilha...\n";
    cout << " 4 - Sair...\n\n";

    cout << "   - Opcao: ";
    cin >> op;

    return op;
}


void trata_menu_pilha()
{
    pilha p;
    p = criar_pilha();
    char nomes[50];
    int op;
    p.topo = -1;

    do
    {
        op = tela();

        if(op==1)
        {
            system("cls");

            cout << "\n\n TEXTO: ";
            cin >> nomes;

            pop(p, nomes);
        }
        else if(op==2)
        {
            push(nomes);
        }
        else if(op==3)
        {
            /*EXIBIR PILHA */
        }

    }while(op!=4);

}

int main()
{
    trata_menu_pilha();
    return 0;
}
