#include<stdio.h>
#include<conio.h>

main()
{
      int dia, mes, ano;
      printf("Digite uma data no formato 'aaaa-mm-dd': ");
      scanf("%d-%d-%d", &ano, &mes, &dia);
      printf("A data digitada foi: %d/%d/%d", dia, mes, ano);
      getch();
}
      
