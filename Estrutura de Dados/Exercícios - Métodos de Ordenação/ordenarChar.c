#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
	char nome[5][30], aux[30];
	int i = 0;


	for(i = 0; i < 5; i++)
    {
        printf("Entre com o %dº nome: ", i + 1);
        fgets(nome[i], 30, stdin);
	}

 	int j;

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

	printf("\n\nNomes em ordem alfabetica: \n");
	for(i = 0; i < 5; i++)
    {
        printf("\n%s",nome[i]);
	}
	return 0;
}
