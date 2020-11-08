#include "tArv.h"
#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
//====================================================================================
// fun��o para posicionamento dos caracteres na tela
void gotoxy(int x, int y){
     COORD coord;
     HANDLE handle;
     handle = GetStdHandle(STD_OUTPUT_HANDLE);
     coord.X = x;
     coord.Y = y;
     SetConsoleCursorPosition(handle, coord);
}
//====================================================================================
void exibir_arvore(tArv T, int col, int lin, int desloc){

  if (T == NULL) return;
  gotoxy(col, lin);
  printf("(%d)\n", T->info);
  if (T->esq != NULL)
     exibir_arvore(T->esq, col - desloc, lin + 2, desloc / 2 + 1);
  if (T->dir != NULL)
     exibir_arvore(T->dir, col + desloc, lin + 2, desloc / 2 + 1);
}
//====================================================================================
//Recebe como entrada o ponteiro para a arvore e o faz apontar para null
void cria_arvore(tArv *t){
   *t = NULL;
}
//====================================================================================
// Vefirica se a �rvore � nula
int arvore_vazia(tArv t){
    return (t == NULL);
}
//====================================================================================
void inserir(tArv *t, int dado){
  int ok;
  if (*t == NULL) {                                 // se t aponta para null, a inser��o � na raiz...
    *t = (tnoarv *) malloc(sizeof(tnoarv));
    if (*t == NULL) return;
    (*t)->esq = NULL;
    (*t)->dir = NULL;
    (*t)->info = dado;
  }
  if (dado < (*t)->info) {              // Se o dado a ser inserido for menor que o n� atual, recursividade � esquerda
     inserir(&((*t)->esq), dado);
  }
  else{
    if (dado > (*t)->info) {            // Se o dado a ser inserido for menor que o n� atual, recursividade � direita
       inserir(&((*t)->dir), dado);
    }
  }
}
//===============================================================================================
void remover(tArv *raiz, int valor){
    tArv aux;
    if(!arvore_vazia(*raiz)){
       if(valor < (*raiz)->info){ // se o valor que ser� removido for menor que o n� atual,
           remover(&((*raiz)->esq), valor); // faz recursividade � esquerda
       }else{
            if(valor > (*raiz)->info){ // se o valor que ser� removido for menor que o n� atual,
                 remover(&((*raiz)->dir), valor); // faz recursividade � direita.
             }else{ // encontrou
                if( !arvore_vazia((*raiz)->esq) && !arvore_vazia((*raiz)->dir) ){ // quando o n� a ser removido for encontrado,
                                                // verificamos se os n�s filhos da esquerda e direita n�o s�o null.
                     aux = minimo((*raiz)->dir); // se n�o forem null, buscamos o menor n� a artir do n� da direita.
                     (*raiz)->info = (aux->info);
                     remover(&(*raiz)->dir, (*raiz)->info);
                }else{ 
                       aux = *raiz; // caso os n� da direita e da esqueda, ou somente o da direita, precisamos apenas remover
                                    // o n� atual e fazer ajustar os ponteiros 
                       if(arvore_vazia((*raiz)->esq)) // se o n� da esquerda for vazio
                           *raiz = (*raiz)->dir; // o n� pai do atual, apontar� para o filho da direita do n� atual.
                       else *raiz = (*raiz)->esq; // se o n� da esquerda n�o for vazio.
                                                  // o n� pai do atual, apontar� para o filho da esquerda do n� atual.
                free(aux);
                }
            }     
       } 
    }  
}
//===============================================================================================
tArv minimo(tArv T){// procura o n� com valor m�nimo
    if(arvore_vazia(T)){
       return NULL;
    }else{
          if( arvore_vazia(T->esq) ){
              return T;
          }else{
              return minimo(T->esq);
          }
    }
}
//===============================================================================================
tArv maximo(tArv T){// procura o n� com valor m�ximo
     if( !arvore_vazia(T) ){
       while( !arvore_vazia(T->dir) ){
          T = T->dir;
       }
     }
       return T;
}
//====================================================================================
// A fun��o pesquisa nos n�s da �rvore o valor passado como par�metro, caso o valor esteja
// na �rvore, ela retorna este n� que est� o valor.
tArv busca_elemento(tArv t, int dado){

     tArv achou;
     if (arvore_vazia(t)) return NULL;
     if (t->info == dado) return t;
         achou = busca_elemento(t->esq, dado);
     if (arvore_vazia(achou))
         achou = busca_elemento(t->dir, dado);
     return achou;
}

//====================================================================================
void remove_arvore(tArv *T) {             //Remove n� pelo endere�o dado

  if (*T == NULL) return;
  remove_arvore(&(*T)->esq);                    //Percorre todos os elemetos da esquerda at� se deparar com null
  remove_arvore(&(*T)->dir);                    //Agora percorre a direita
  free(*T);                                     //Remove o n� atual e aponta para null
  *T = NULL;
}
//====================================================================================
// Faz uma c�pia da �rvore
void copia_arvore (tArv a, tArv *r){
   int aux;
      if (a != NULL){
          aux = a->info;
          inserir(&(*r), aux);
          copia_arvore(a->esq, &(*r));
          copia_arvore(a->dir, &(*r));
      }
  }
//====================================================================================
void exibe_emordem(tArv t){

  if (t == NULL) return ;
  if (t->esq != NULL)
      exibe_emordem(t->esq);
  printf("(%d)", t->info);
  if (t->dir != NULL)
      exibe_emordem(t->dir);
}
