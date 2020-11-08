/*

2)	FAÇA UM ALGORITMO EM C++ PARA ARMAZENAR UM VETOR DO TIPO STRING AO FINAL
    IMPRIMI-LO EM ORDEM CRESCENTE OU DECRESCENTE. UTILIZAR FUNÇÕES PARA REALIZAR A TAREFA.

*/


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	char nome[5][30], aux[30];
	int i = 0;


	for(i = 0; i < 5; i++)
    {
        printf("Entre com o %do nome: ", i + 1);
        fgets(nome[i], 30, stdin);
	}

 	int j;

 	/* ORDENANDO EM ORDEM CRESCENTE */

 	for(j=1; j<5; j++)
 	{
        strcpy(aux,nome[j]);
        i = j-1;

        while(i >= 0 && strcmp(nome[i], aux) > 0)
        {
            strcpy(nome[i+1],nome[i]);
            i--;
        }
        strcpy(nome[i+1],aux);
 	}

	printf("\n\nNomes em ordem alfabetica (crescente): \n");
	for(i = 0; i < 5; i++)
    {
        printf("%s",nome[i]);
	}

	/* ORDENANDO EM ORDEM DECRESCENTE */


    for(j=1; j<5; j++)
 	{
        strcpy(aux,nome[j]);
        i = j-1;

        while(i >= 0 && strcmp(nome[i], aux) > 0)
        {
            strcpy(nome[i+1],nome[i]);
            i--;
        }
        strcpy(nome[i+1],aux);
 	}


	printf("\n\nNomes em ordem alfabetica (descrescente): \n");
	for(i=0 ; i < 5 ; i++)
    {
        printf("%s", nome[i]);
    }

	return 0;
}
