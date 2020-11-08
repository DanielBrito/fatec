#include<stdio.h>
#include<conio.h>

int main()
{
   char string[100];
   printf("Digite seu nome: ");
   gets(string);
   printf("\n\nOla %s!", string);
   getch();
}
