#include<stdio.h>
#include<conio.h>


int main()
{
    int segundos;
    float seg_dec;
    
    printf("Digite um numero de segundos: ");
    scanf("%d", &segundos);
    {
    seg_dec=segundos;
    }
    printf("\n");
    printf("%d segundos representam %d segundos.", segundos, segundos);
    printf("\n");
    printf("%d segundos representam %.2f minutos.", segundos, seg_dec/60);
    printf("\n");
    printf("%d segundos representam %.2f horas.", segundos, seg_dec/3600);
    getch();
}


/* RESPOSTA DO LIVRO

main()
{
      long int n_segundos;
      printf("Introduza um No de segundos: ");
      scanf("%ld", &n_segundos);
      printf("Horas: %d\n", (int) n_segundos/3600);
      printf("Minutos: %d\n", (int) (n_segundos%3600/60));
      printf("Segundos: %d\n", (int) n_segundos %60);
      getch();
}*/
