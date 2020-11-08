#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <windows.h>
#include "tArv.h"

/*
  Autor: Thales Suzuki
  Projeto: Árvore Binária de busca
*/

void reset();
void menu(tArv *);

int main()
{
    int elemento;
    char aux;
    tArv t;
    cria_arvore(&t);
do{
    system("CLS");
    puts("\n   :: Utilize a tecla (+) para inserir e (-) para remover");
    puts("\n===============================================================================\n\n");
    gotoxy(2,23); puts("<ESC> para sair.  <B> para exibir menu.               Arvore Binaria");

    if(t==NULL){
        gotoxy(32,4); puts("ARVORE VAZIA");
    }else{
        exibir_arvore(t,32,4,15);gotoxy(1,1);
    }

    aux = getch();
    if(aux == '+'){
        gotoxy(2,1);
        printf("Inserir elemento:                                       "); gotoxy(20,1);
        scanf("%d",&elemento);
        inserir(&t,elemento);
    }
    if(aux == '-'){
        gotoxy(2,1);
        printf("Remover elemento:                                       "); gotoxy(20,1);
        scanf("%d",&elemento);
        remover(&t,elemento);
    }
    if((aux == 'b') || (aux == 'B')){
        menu(&t);
    }
}while(aux != 27);
    return 0;
}

//================================================================================================

void reset(){
     system("cls");
     puts("\n==============================  Arvore Binaria ================================\n\n");
     gotoxy(0,20);
     puts("\n================================================================================");
     gotoxy(0,4);
}
void menu(tArv *t){
    char aux;
    int posicaoY=9;
     reset();
     gotoxy(2,4); puts("[ ] Verificar existencia de elemento");
     gotoxy(2,5); puts("[ ] Copiar arvore");
     gotoxy(2,6); puts("[ ] Esvaziar arvore");
     gotoxy(2,7); puts("[ ] Exibir em nivel");
     gotoxy(2,8); puts("[ ] Exibir em ordem crescente");
     gotoxy(2,9); puts("[O] Voltar");
     gotoxy(0,23);
     printf("  Utilize as teclas + e - para selecionar a opcao ::     ");
     do{
       aux = getch();
       if((aux == '-') && (posicaoY<9)){
            gotoxy(3, posicaoY);   printf(" ");
            gotoxy(3, ++posicaoY); printf("O");
        }
        if((aux == '+') && (posicaoY>4)){
            gotoxy(3, posicaoY);     printf(" ");
            gotoxy(3, --(posicaoY)); printf("O");
        }
        gotoxy(52,23);
     }while(aux != 13);
     reset();
     tArv r;
     cria_arvore(&r);
     switch(posicaoY){
        
        // outras opções não estão implementadas
        int  dado;
        case 4:     //::::: Verificar existencia de elemento"
                printf("Informe o elemento para a busca: ");
                scanf("%d",&dado);
                r = busca_elemento(*t,dado);
                if(r != NULL)
                    printf("\nO elemento ja esta inserido.");
                else
                    printf("\nElemento nao encontrado.\n");
                break;
        case 5:     //::::: Copiar arvore

                copia_arvore(*t,&r);
                exibir_arvore(r,32,4,15);
                puts("Copia da arvore");
                break;
       case 6:     //::::: Esvaziar arvore
                remove_arvore(t);
                break;
       /* Não implementada...
       case 7:     //::::: Exibir em nível
                exibe_emnivel(*t);
                break;*/
       case 8:     //::::: Exibir em ordem crescente
                exibe_emordem(*t);
                break;
     }
     puts("");
    system("PAUSE");
}

