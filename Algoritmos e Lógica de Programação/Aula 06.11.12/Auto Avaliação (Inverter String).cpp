#include<stdio.h>
#include<conio.h>
#include<strings.h>

/* A definição destas constantes é útil para sempre que quisermos alterar o valor do tamanho 
   das strings, apenas termos que modificar esta parte, caso contrário teriamos de percorrer o 
   programa à procura de ocorrências para estes valores */

#define SIZE1 100
#define SIZE2 100

int main () 
{
     int i, j;
     char string1[SIZE1], string2[SIZE2];
     
     printf("Introduza uma string:\n");
     gets(string1);
     
     i=strlen(string1);
     string2[i]='\0'; /* Esta atribuição define o fim da string com o caracter \0 */
     
     for (i-=1, j=0 ; i>=0 ; i--, j++) {
         string2[j]=string1[i];
     }
        
     printf("\nA string invertida e: %s", string2);
     getch();
}


