#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define ITENS 4 //usado para facilitar o debug

int nome_cont=0; //indexer
char nome[ITENS][20];
float dados[ITENS][3]; //ID;qtd;valor

void imprime(){
    /* Usei essa função para realizar o debug do código
     * Imprime uma matriz de dados bidimensional com formatação. */

    int i,j;
    for(i=0;i<ITENS;i++){
        printf("%s ",nome[(int)dados[i][0]]);
        for(j=0;j<3;j++){
            printf("%.2f ", dados[i][j]);
        }
        printf("\n");
    }
}

void ordena(int index){
    /* ordena valores numa matriz bidimensional com 3 colunas
     * recebe como parâmetro o index a ser usado para a ordenação*/

    int h,i,j;
    float tmp;
    for(h=0;h<ITENS;h++){ //passa varias vezes pela matriz
        for(i=0;i<ITENS-1-h;i++){ //compara o valor atual com o próximo para todos os valores.
                                  //-h é usado para melhorar desempenho
            if (dados[i][index] > dados[i+1][index]){
                for(j=0;j<3;j++){
                    tmp = dados[i][j];
                    dados[i][j] = dados[i+1][j];
                    dados[i+1][j] = tmp;
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
        if (strstr(nome[i], busca) != NULL){ // usei strstr() para buscar strings incompletas, assim não precisam ser extatamente iguais
            printf("%s\t%.0f\t\t%.2f\n",nome[i],dados[i][1],dados[i][2]);
            cont++;
        }
    }
    if (cont ==0){
        printf("Nenhum dado encontrado!\n");
    }
}

void busca_vq(int index, float busca){
    /* Busca valores reais numa matriz e imprime os dados encontrados
     * caso mais de uma ocorrência seja encontrada, todas serão impressas */

    int i,j,cont=0;
    printf("%s\t%s\t%s\n","nome", "quantidade", "valor");
    ordena(index);
    for(i=0;i<ITENS;i++){
        if (dados[i][index] == busca){
            printf("%s\t%.0f\t\t%.2f\n",nome[(int)dados[i][0]],dados[i][1],dados[i][2]);
            cont += 1;
        }
        if (dados[i][index] > busca) { // melhora o desempenho
            break;
        }
    }
    if (cont ==0){
        printf("Nenhum dado encontrado!\n");
    }
}

int main(){
    char trigger = 's';
    int i, escolha;
    float busca_f;
    char busca_s[20];
    for(i=0; i<ITENS; i++) // coleta os dados
    {
        printf("nome: ");
        scanf("%s", &nome[i]);
        dados[i][0] = i;
        printf("quantidade: ");
        scanf("%f", &dados[i][1]);
        printf("valor: ");
        scanf("%f", &dados[i][2]);
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
