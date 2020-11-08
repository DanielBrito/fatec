#include<stdio.h>
#include<conio.h>
#include<stdlib.h>
#include<time.h>

struct Registro
{
    int codigo;
    int valor;
};

void cadRegistro(struct Registro *q)
{
    int i;

    for (i=0; i<100; i++)
    {
        printf("\n\n");
        printf("Codigo: %d", &q->codigo);
        printf("\n");
        printf("Valor: %d", &q->valor);

        q = rand();
    }
}


void main()
{
    struct Registro reg[100];
    int op, cod;

    printf("\t- AVALIACAO P1 - ESTRUTURA DE DADOS -\n\n\n");

    do
    {
        printf("\t-> Escolha a opcao desejada: ");
        printf("\n\n\t\t1 - Busca iterativa\n\t\t2 - Busca recursiva\n\t\t3 - Busca binaria\n");
        printf("\t\t4 - Ordenacao mergesort\n\t\t5 - Ordenacao quicksort\n\t\t6 - Todos os registros");
        printf("\n\t\t0 - Sair");
        printf("\n\n\t\t- Opcao desejada: ");
        scanf("%d", &op);

        switch(op)
        {
            case 0: system("cls"); system("PAUSE"); return 0;

            case 1:

            case 2: break;

            case 3: break;

            case 4: break;

            case 5: break;

            case 6: cadRegistro(&reg[0]); break;
        }

    printf("\n\n\n");

    }while (op!=0);

    system("PAUSE");
    return 0;
}
