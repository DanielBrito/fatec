// Busca simples usando método bolha
// Autor - Paulo Henrique

#include<stdio.h>
#include<stdlib.h>
#include<time.h>

#define TAM 5

main()
{
    int vetor[TAM];
    int x = 0;
    int y = 0;
    int aux = 0;

    // Preenchimento do vetor


    for(x=0; x<TAM; x++)
    {
        printf("Entre com um inteiro para o vetor [%d]: ", x);
        scanf("%d", &aux);
        vetor[x] = aux;
    }


    //Coloca em ordem crescente (1, 2, 3, 4, 5, ...)

    for(x=0; x<TAM; x++)
    {
        for(y=x+1; y<TAM; y++) //Sempre 1 elemento à frente
        {
            //Se o (x>(x+1)) então o x passa para frente (ordem crescente)
            if(vetor[x] > vetor[y])
            {
                aux = vetor[x];
                vetor[x] = vetor[y];
                vetor[y] = aux;
            }
        }
    } //Fim da ordenação

    //Exibe os elementos ordenados
    printf("\n\nElementos ordenados (Crescente):");

    for(x=0; x<TAM; x++)
    {
        printf("\nVetor [%d] = %d", x, vetor[x]); //Exibe o vetor ordenado
    }

    //Coloca em ordem decrescente (10, 9, 8, 7, ...)
    for(x=0; x<TAM; x++)
    {
        for(y=x+1; y<TAM; y++)
        {
            if(vetor[y] > vetor[x])
            {
                aux = vetor[y];
                vetor[y] = vetor[x];
                vetor[x] = aux;
            }
        }
    } //Fim da ordenação

    //Exibe elementos ordenados
    printf("\n\nElementos ordenados (Descrescente):");

    for(x=0; x<TAM; x++)
    {
        printf("\nVetor [%d] = %d", x, vetor[x]); //Exibe o vetor ordenado
    }

    printf("\n\n");

    system("PAUSE");
    return 0;
}
