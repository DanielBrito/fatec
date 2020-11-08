#include <stdio.h>
#include <conio.h>
 
int main()
{
   int vetnum[5],n=5,i,j,x,min;
   
   for(i=0;i<5;i++)
    {
        printf("Digite o valor %d: ",i+1);
        scanf("%d",&vetnum[i]);
    }
 
   for (i=0;i<(n-1);i++ )
   {
      min=i;
 
      for (j=i+1;j<n;j++)
      {
         if (vetnum[min]>vetnum[j] )
            min = j;
      }
      
      if (min!=i)
      {
         x=vetnum[i];
         vetnum[i]=vetnum[min];
         vetnum[min]=x;
      }
   }
 
   printf("Os numeros digitados em ordem crescente:\n");
 
   for(i=0;i<n;i++)
      printf("%d\n", vetnum[i]);
    
   getch();
   return 0;
}
