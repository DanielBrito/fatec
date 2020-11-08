#include "tArv.h"
#include <stdio.h>
#include <stdlib.h>
#include <windows.h>
//====================================================================================
// função para posicionamento dos caracteres na tela
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
// Vefirica se a árvore é nula
int arvore_vazia(tArv t){
    return (t == NULL);
}
//====================================================================================
void inserir(tArv *t, int dado){
  int ok;
  if (*t == NULL) {                                 // se t aponta para null, a inserção é na raiz...
    *t = (tnoarv *) malloc(sizeof(tnoarv));
    if (*t == NULL) return;
    (*t)->esq = NULL;
    (*t)->dir = NULL;
    (*t)->info = dado;
  }
  if (dado < (*t)->info) {              // Se o dado a ser inserido for menor que o nó atual, recursividade à esquerda
     inserir(&((*t)->esq), dado);
  }
  else{
    if (dado > (*t)->info) {            // Se o dado a ser inserido for menor que o nó atual, recursividade à direita
       inserir(&((*t)->dir), dado);
    }
  }
}
//===============================================================================================
void remover(tArv *raiz, int valor){
    tArv aux;
    if(!arvore_vazia(*raiz)){
       if(valor < (*raiz)->info){ // se o valor que será removido for menor que o nó atual,
           remover(&((*raiz)->esq), valor); // faz recursividade á esquerda
       }else{
            if(valor > (*raiz)->info){ // se o valor que será removido for menor que o nó atual,
                 remover(&((*raiz)->dir), valor); // faz recursividade á direita.
             }else{ // encontrou
                if( !arvore_vazia((*raiz)->esq) && !arvore_vazia((*raiz)->dir) ){ // quando o nó a ser removido for encontrado,
                                                // verificamos se os nós filhos da esquerda e direita não são null.
                     aux = minimo((*raiz)->dir); // se não forem null, buscamos o menor nó a artir do nó da direita.
                     (*raiz)->info = (aux->info);
                     remover(&(*raiz)->dir, (*raiz)->info);
                }else{ 
                       aux = *raiz; // caso os nó da direita e da esqueda, ou somente o da direita, precisamos apenas remover
                                    // o nó atual e fazer ajustar os ponteiros 
                       if(arvore_vazia((*raiz)->esq)) // se o nó da esquerda for vazio
                           *raiz = (*raiz)->dir; // o nó pai do atual, apontará para o filho da direita do nó atual.
                       else *raiz = (*raiz)->esq; // se o nó da esquerda não for vazio.
                                                  // o nó pai do atual, apontará para o filho da esquerda do nó atual.
                free(aux);
                }
            }     
       } 
    }  
}
//===============================================================================================
tArv minimo(tArv T){// procura o nó com valor mínimo
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
tArv maximo(tArv T){// procura o nó com valor máximo
     if( !arvore_vazia(T) ){
       while( !arvore_vazia(T->dir) ){
          T = T->dir;
       }
     }
       return T;
}
//====================================================================================
// A função pesquisa nos nós da árvore o valor passado como parâmetro, caso o valor esteja
// na árvore, ela retorna este nó que está o valor.
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
void remove_arvore(tArv *T) {             //Remove nó pelo endereço dado

  if (*T == NULL) return;
  remove_arvore(&(*T)->esq);                    //Percorre todos os elemetos da esquerda até se deparar com null
  remove_arvore(&(*T)->dir);                    //Agora percorre a direita
  free(*T);                                     //Remove o nó atual e aponta para null
  *T = NULL;
}
//====================================================================================
// Faz uma cópia da árvore
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
