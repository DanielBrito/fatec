#include<stdio.h>
#include<conio.h>

int main ()
{
    char Ch;
    scanf("\n%c", &Ch);
    printf("\nVoce pressionou a tecla %c", Ch);
    printf("\n",Ch); // Imprime o caractere como inteiro
    printf("\n%c",Ch); // Imprime o caractere como caractere
    _getch();
}
