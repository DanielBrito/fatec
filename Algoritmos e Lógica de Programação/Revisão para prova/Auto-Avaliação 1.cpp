#include<stdio.h>
#include<conio.h>

int soma (int x, int y)
{
    return(x+y);
}

int main()
{
int saida;
saida=soma(3,3);
printf("A soma e: %d", saida);
getch();
}
