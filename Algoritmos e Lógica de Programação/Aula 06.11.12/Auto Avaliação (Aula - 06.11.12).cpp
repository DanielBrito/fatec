#include<stdio.h>
#include<conio.h>

int main()
{
   int num[10];
   int count=0;
   int totalnums;
   do
      {
      //if count>9;
      //}
      //break;
      //}
         printf("Entre com um numero (-999 para terminar): ");
         scanf("%d", &num[count]);
         count++;
      } while (num[count-1]!=-999 && count<10);
   totalnums=count;
   printf("\n\n\nOs numeros que voce digitou foram:\n\n");
   for (count=0; count<totalnums;count++)
      printf(" %d", num[count]);
      getch();
}
