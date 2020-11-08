#include<stdio.h>
#include<conio.h>
#include<string.h>

int main()
{
   char str1[100], str2[100];
   printf("Entre com uma string: ");
   gets(str1);
   strcpy(str2, "Voce digitou a string ");
   strcat(str2, str1);
   printf("\n\n%s", str2);
   getch();
}
