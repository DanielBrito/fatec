#include<stdio.h>
#include<conio.h>

main()
{
      int dia, mes, ano;
      printf("Digite o dia (dd): ");
      scanf("%d", &dia);
      printf("\nDigite o mes (mm): ");
      scanf("%d", &mes);
      printf("\nDigite o ano (aaaa): ");
      scanf("%d", &ano);
      printf("\n\n");
      printf("A data digitada foi: '%d/%d/%d'", dia, mes, ano);
      getch();
}
