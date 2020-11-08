#include<stdio.h>
#include<conio.h>

int main()
{
   int num[100];
   int count=0;
   int totalnums;
   do
      {
         printf("Entre com um numero (-999 para terminar):\n");
         scanf("%d", &num[count]);
         count++;
      } while (num[count-1]!=-999);
   totalnums=count-1;
   printf("\n\n\nOs numeros que voce digitou foram:\n\n");
   for (count=0; count<totalnums;count++)
      printf(" %d", num[count]);
      getch();
}
