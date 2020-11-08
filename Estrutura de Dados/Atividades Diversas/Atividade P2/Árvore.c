#include <stdio.h>
#include <stdlib.h>
#define MALLOC(x) ((x *) malloc (sizeof(x)))
#define TRUE 1

struct arv_bin
{
    char info;
    struct arv_bin *esquerda;
    struct arv_bin *direita;
};

typedef struct arv_bin bin_t;

void preordem(bin_t *);
void incluir (void);
void exibir_pre (void);
bin_t *raiz;
bin_t *arvore(bin_t *, bin_t *, char);

int main (void)
{
  int op;
  raiz=NULL;
  for (;;)
  {
      system ("cls");
      printf ("######## MENU ########");
      printf ("\n\n1. Insere");
      printf ("\n2. Exibe");
      printf ("\n3. Sair");
      printf ("\n\nOpcao escolhida: ");
      scanf ("%d",&op);

      fflush(stdin);
      switch (op)
      {
          case 1 : incluir();
          break;

          case 2 : exibir_pre();
          break;

          case 3 : exit(0);

          default: printf ("\nOpcao invalida");
           break;
      }
   }

}

void incluir (void)
{
    char s[80];
    while(TRUE)
    {
        printf("\nLETRA: ");
        scanf("%s",&s);

        if (!raiz)
        {
            raiz = arvore(raiz,raiz, *s);
        }
        else
        {
            arvore(raiz,raiz,*s);
        }

        printf("\nContinua ([s] - Sim ou [n] - Nao): ");
        scanf("%s",&s);

        if(*s!='s') break;
    };
}

bin_t *arvore (bin_t *ra, bin_t *r, char info)
{
    if(!r)
    {
        r = MALLOC(bin_t);

        if (!r)
        {
            printf("Sem memória");
            exit(0);
        }

        r->esquerda = NULL;
        r->direita = NULL;
        r->info=info;

        if(!ra)
        {
            printf("\nEssa letra eh a raiz");
            return r;
        }

        if(info < ra->info)
        {
            ra->esquerda=r;
            printf("\nEssa letra entrou a esqueda de %c",ra->info);
        }
        else
        {
            ra->direita = r;
            printf("\nEssa letra entrou a direita %c",ra->info);
        }
        return r;
    }

    if(info < ra->info) arvore(r,r->esquerda,info);
    else arvore(r,r->direita,info);
}

void exibir_pre (void)
{
    char b[80];
    preordem(raiz);
    printf("\n\nPressione qualquer tecla para retornar ao MENU: ");
    scanf("%s",&b);
}

void preordem (bin_t *leo)
{
    if (leo!=NULL)
    {
        printf("%c",leo->info);
        preordem(leo->esquerda);
        preordem(leo->direita);
    }
}
