#include<stdio.h>
#include<conio.h>
#include<string.h>

int main()
{
   int size;
   char str[100];
   printf("Entre com uma string: ");
   gets(str);
   size=strlen(str);
   printf("\n\nA string que voce digitou tem tamanho %d.", size);
   getch();
}
