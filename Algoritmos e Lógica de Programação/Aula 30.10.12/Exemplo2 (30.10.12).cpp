#include<stdio.h>
#include<conio.h>

int main()
{
    int num;
    printf("Digite um valor: ");
    scanf("%d", &num);
    
    switch(num)
       {
          case 9: printf("O numero e 9.\n"); break;
          case 10: printf("O numero e 10.\n"); break;
          case 11: printf("O numero e 11.\n"); break;
          default: printf("O numero nao e nem 9, nem 10 e nem 11.\n");
       }
getch();
}
