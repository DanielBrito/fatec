#include<stdio.h>
#include<conio.h>

int main ()
{
    char string[100];
    printf("Digite uma string: ");
    gets (string);
    printf("\n\nVoce digitou %s", string);
    _getch();
}
