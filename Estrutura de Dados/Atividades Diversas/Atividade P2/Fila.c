#include<stdlib.h>
#include<stdio.h>

typedef struct campo
{
    int valor;
    struct campo *prox;
} *ptrCampo;

void iniciaFila(ptrCampo *l)
{
    *l = NULL;
}

/*=============inserçao de valores===================*/

void insere(ptrCampo *l, int numero)
{
    ptrCampo n = (ptrCampo)malloc(sizeof(struct campo));
    (*n).valor = numero;

    if(*l)
    {
        (*n).prox = (**l).prox;
        (**l).prox = n;
    }
    else
	(*n).prox = n;
	*l = n;
}

/*=================exclusão de valores===============*/

void retira(ptrCampo *l)
{
    ptrCampo aux;

    if(*l == (**l).prox)
    {
        aux = *l;
    	free(aux);
    	*l = NULL;
	}
	else
    {
		aux = (**l).prox;
		(**l).prox = (*aux).prox;
		free(aux);
    }
}

/*==============impressao de valores=====================*/

void imprime(struct campo l)
{
    ptrCampo aux;
    aux = l.prox;

    printf("Fila: [");
    printf("%d", (*aux).valor);

    while((*aux).prox != l.prox)
    {
        aux = (*aux).prox;
        printf("%5d", (*aux).valor);
	}
    printf("]\n");
}

/*=====================MENU========================*/

main()
{
    ptrCampo f;
    int opcao;
    iniciaFila(&f);

    printf("1: Inserir\t2: Remover\t3: Exibir\t0: Sair\nOpcao escolhida: ");
    scanf("%d", &opcao);

    while(opcao)
        {
            switch(opcao)
            {
                case 1:
                {
                    int s;
                    printf("Valor: ");
                    scanf("%d", &s);
                    insere(&f, s);
                    break;
                }

                case 2:
                if(f)
                    retira(&f);
                else
                    printf("Fila vazia!\n");
                break;

                case 3:
                if(f)
                    imprime(*f);
                else
                    printf("Fila vazia!\n");
                break;

                default:
                    printf("Opcao invalida!\n");
            }

            printf("Opcao escolhida: ");
            scanf("%d", &opcao);

        }
}
