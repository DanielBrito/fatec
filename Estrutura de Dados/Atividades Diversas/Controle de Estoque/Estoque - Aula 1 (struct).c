//Procura produtos em uma matriz

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ITENS 4 //usado para facilitar o debug

typedef struct { // cria um novo tipo de variável de tipo struct chamada Item
    char nome[20];
    int id;
    float quantidade, valor;
} Item;
Item itens[ITENS];

void imprime(){
    /* Usei essa função para realizar o debug do código*/

    int i,j;
    for(i=0;i<ITENS;i++){
        printf("%s ",itens[i].nome);
        printf("%d ",itens[i].id);
        printf("%.2f ",itens[i].quantidade);
        printf("%.2f ",itens[i].valor);
        printf("\n");
    }
}

void ordena(int index){
    /* recebe como parâmetro o index a ser usado para a ordenação
     * index == 1 quantidade
     * index == 2 valor */

    int h,i,j;
    Item tmp;
    for(h=0;h<ITENS;h++){ //passa varias vezes pela matriz
        for(i=0;i<ITENS-1-h;i++){ //compara o valor atual com o próximo para todos os valores.
            if (index == 1){                      //-h é usado para melhorar desempenho
                if (itens[i].quantidade > itens[i+1].quantidade){
                    for(j=0;j<3;j++){
                        tmp = itens[i];
                        itens[i] = itens[i+1];
                        itens[i+1] = tmp;
                    }
                }
            }
            else {
                if (itens[i].valor > itens[i+1].valor){
                    for(j=0;j<3;j++){
                        tmp = itens[i];
                        itens[i] = itens[i+1];
                        itens[i+1] = tmp;
                    }
                }
            }
        }
    }
}

void busca_str(char busca[20]){
    /* Busca uma string na matriz e imprime os dados encontrados
     * caso mais de uma ocorrência seja encontrada, todas serão impressas */

    int i,cont=0;
    printf("%s\t%s\t%s\n","nome", "quantidade", "valor");
    for(i=0;i<ITENS;i++){
        if (strstr(itens[i].nome, busca) != NULL){ // usei strstr() para buscar strings incompletas, assim não precisam ser extatamente iguais
            printf("%s\t%.0f\t\t%.2f\n",itens[i].nome,itens[i].quantidade,itens[i].valor);
            cont++;
        }
    }
    if (cont == 0){
        printf("Nenhum dado encontrado!\n");
    }
}

void busca_vq(int index, float busca){
    /* Busca valores reais numa matriz e imprime os dados encontrados
     * caso mais de uma ocorrência seja encontrada, todas serão impressas
     * index == 1 quantidade
     * index == 2 valor */

    int i,j,cont=0;
    printf("%s\t%s\t%s\n","nome", "quantidade", "valor");
    ordena(index);
    for(i=0;i<ITENS;i++){
        if (index == 1){
            if (itens[i].quantidade == busca){
                printf("%s\t%.0f\t\t%.2f\n",itens[i].nome,itens[i].quantidade,itens[i].valor);
                cont += 1;
            }
            if (itens[i].quantidade > busca) { // melhora o desempenho, só funciona se o vetor estiver ordenado
                break;
            }
        }
        else{
            if (itens[i].valor == busca){
                printf("%s\t%.0f\t\t%.2f\n",itens[i].nome,itens[i].quantidade,itens[i].valor);
                cont += 1;
            }
            if (itens[i].valor > busca) { // melhora o desempenho, só funciona se o vetor estiver ordenado
                break;
            }
        }
    }
    if (cont == 0){
            printf("Nenhum dado encontrado!\n");
        }
}

int main(){
    char trigger = 's';
    int i, escolha;
    float busca_f;
    char busca_s[20];
    for(i=0; i<ITENS; i++) // coleta os dados digitados pelo usuário
    {
        printf("nome: ");
        scanf("%s", &itens[i].nome);
        itens[i].id = i;
        printf("quantidade: ");
        scanf("%f", &itens[i].quantidade);
        printf("valor: ");
        scanf("%f", &itens[i].valor);
    }
    imprime();
    while (trigger == 's'){
    do{
        printf("Deseja buscar por qual campo?\n1- nome\n2- quantidade\n3- valor\n");
        scanf("%d", &escolha);
        if (escolha == 1){
            printf("Qual o nome a ser buscado? ");
            scanf("%s", &busca_s);
            busca_str(busca_s);
        }
        else if (escolha == 2){
            printf("Qual a quantidade a ser buscada? ");
            scanf("%f", &busca_f);
            busca_vq(1,busca_f);
        }
        else if (escolha == 3){
            printf("Qual o valor a ser buscado? ");
            scanf("%f", &busca_f);
            busca_vq(2,busca_f);
        }
        else printf("Escolha 1, 2 ou 3\n\n");
        } while (escolha != 1 & escolha != 2 & escolha != 3);

     printf("Deseja fazer outra busca? (s / n)");
     scanf("%s", &trigger);
    }
    #if defined (__WIN32)
        system("PAUSE");
    #endif
    return 0;

}
