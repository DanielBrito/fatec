#ifndef TARV_H_INCLUDED
#define TARV_H_INCLUDED

typedef struct noarv {
        struct noarv* esq;
        int info;                           // Declaração da estrutura do nó da árvore
        struct noarv*dir;
        }tnoarv;
typedef tnoarv* tArv;

// Declaração das funções

void cria_arvore(tArv *t);
void gotoxy(int x, int y);
void inserir(tArv *, int);
void remove_avl(tArv *,int);
void copia_arvore(tArv t, tArv *r);
void remover(tArv *, int );
void exibir_arvore(tArv T, int col, int lin, int desloc);
tArv  busca_elemento(tArv t, int dado);
void remove_arvore(tArv *T);
int arvore_vazia(tArv t);
tArv minimo(tArv T);
tArv maximo(tArv T);
void exibe_emordem(tArv t);

#endif
