/*Programa em para preencher um vetor de 5 posi��es, e ordenar em ordem
crescente todos os elementos*/
#include <stdio.h>
#include <conio.h>
int vetnum[50],n=50,i,j,aux;/*vetor, contadores, variavel auxiliar p/ troca
de elementos no vetor*/
int main ()
{
    for(i=0;i<5;i++)//coleta de dados
    {
        printf("Digite o valor %d: ",i+1);
        scanf("%d",&vetnum[i]);
    }
    for(i=0;i<n;i++)/*Executa o for abaixo por 5 vezes para que ordene
todo o vetor*/
        for(j=0;j<n;j++)/*Troca a posi��o x pela posi��o x+1 at� o
x ser o penultimo elemento do vetor para trocar com o ultimo*/
        {
            if(vetnum[j]>vetnum[j+1])/*se a posi��o atual for maior
que a posi��o posterior*/
            {
                aux=vetnum[j+1];//auxiliar recebe posi��o posterior
                vetnum[j+1]=vetnum[j];//P.Posterior recebe P.Atual
                vetnum[j]=aux;//P.Atual
            }
        }
    for(i=0;i<n;i++)//imprime os elementos ordenados para o usu�rio
    printf("O Valor %d: %d\n",i+1,vetnum[i]);
    getch(); 
}
