#include<stdio.h>
#include<conio.h>

int main ()
{
    char str1[100];
    char str2[100];
    char aux;
    
    printf("String 1: ");
    gets(str1);
    printf("String 2: ");
    gets(str2);
    printf("\n");
    printf("\nA 2a letra da String 1 e: %c", str1[1]);
    printf("\nA 2a letra da String 2 e: %c", str2[1]);
    
    aux = str2[1];
    str2[1] = str1[1];
    str1[1] = aux;
    
    printf("\n\n%s", str1);
    printf("\n%s", str2);
    _getch();
}
