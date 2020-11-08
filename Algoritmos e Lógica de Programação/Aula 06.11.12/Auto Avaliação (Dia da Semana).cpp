#include<stdio.h>
#include<conio.h>

int main()
{
  int n_dia;
  
  printf("Entre com um numero correspondente ao dia da semana: ");
  scanf("%d", &n_dia);
  switch (n_dia)
  {
     case 1 : printf("O numero %d corresponde a domingo.", n_dia); break;
     case 2 : printf("O numero %d corresponde a segunda.", n_dia); break;
     case 3 : printf("O numero %d corresponde a terca.", n_dia); break;
     case 4 : printf("O numero %d corresponde a quarta.", n_dia); break;
     case 5 : printf("O numero %d corresponde a quinta.", n_dia); break;
     case 6 : printf("O numero %d corresponde a sexta.", n_dia); break;
     case 7 : printf("O numero %d corresponde a sabado.", n_dia); break;
     default: printf("O numero nao corresponde a nenhum dia da semana.");
  }
  
  getch();
}
