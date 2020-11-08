#include <stdio.h>
#include <conio.h>

int main()
{
  int vetnum[5],n=5,i,j,x;
 
  for(i=0;i<5;i++)
    {
        printf("Digite o valor %d: ",i+1);
        scanf("%d",&vetnum[i]);
    }
 
  for(i=1;i<=n-1;i++) 
  {
     j=i;
 
    while(j>0 && vetnum[j]<vetnum[j-1])
    {
       x=vetnum[j];
       vetnum[j]=vetnum[j-1];
       vetnum[j-1]=x;
 
       j--;
    }
  }
 
   printf("Os numeros digitados em ordem crescente:\n");
 
   for(i=0;i<n;i++)
      printf("%d\n", vetnum[i]);
 
  getch();
  return 0;
}
