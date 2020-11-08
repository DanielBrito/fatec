#include<stdio.h>
#include<conio.h>

int main()
{
    int i, j;
    printf("Informe dois numeros (cada um sendo 0 ou 1):\n");
    scanf("\n%d\n%d", &i, &j);
    printf("\nComparacao logica enrre os numeros: \n");
    printf("\n%d AND %d = %d\n", i, j, i && j);
    printf("%d OR %d = %d\n", i, j, i || j);
    printf("NOT %d = %d\n", i, !i);
    getch();
}
