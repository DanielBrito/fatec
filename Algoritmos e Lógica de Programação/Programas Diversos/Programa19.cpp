#include<stdio.h>
#include<conio.h>

int main()
{
    int i, j;
    printf("Entre com o 1o numero inteiro: ");
    scanf("%d", &i);
    printf("Entre com o 2o numero inteiro: ");
    scanf("%d", &j);
    printf("\nA comparacao entre os numeros digitados: %d e %d\n", i, j);
    printf("\nPara 0 - Falso e 1 - Verdadeiro");
    printf("\n\n%d == %d e %d\n", i, j, i==j);
    printf("\n\n%d != %d e %d\n", i, j, i!=j);
    printf("\n\n%d <= %d e %d\n", i, j, i<=j);
    printf("\n\n%d >= %d e %d\n", i, j, i>=j);
    printf("\n\n%d < %d e %d\n", i, j, i<j);
    printf("\n\n%d > %d e %d\n", i, j, i>j);
    getch();
}
