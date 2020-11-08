#include<stdio.h>
#include<conio.h>

int main()
{
char nome [100];
float valor_m3, tam_pisc_m3, custotal, comp, larg, prof;

printf(" --------------- ORCAMENTO --------------- ");
printf("\n");
printf("\n");
printf("Digite o seu nome: ");
gets(nome);
printf("\n");
printf("Entre com o valor do comprimento (m): ");
scanf("%f", &comp);
printf("\n");
printf("Entre com o valor da largura (m): ");
scanf("%f", &larg);
printf("\n");
printf("Entre com o valor da profundidade (m): ");
scanf("%f", &prof);
printf("\n");

tam_pisc_m3=comp*larg*prof;

printf("- O tamanho da piscina e %.2f m%c\n", tam_pisc_m3, 252);
printf("\n");

printf("Digite o valor da construcao por m%c: R$ ", 252);
scanf("%f", &valor_m3);
printf("\n");
printf("\n");

custotal=tam_pisc_m3*valor_m3;

printf("------------------------------------------");
printf("\n");
printf("\n");

printf("USUARIO: %s\n\n", nome);
printf("COMPRIMENTO: \t%.2f m\n", comp);
printf("LARGURA: \t%.2f m\n", larg);
printf("PROFUNDIDADE: \t%.2f m\n", prof);
printf("TAMANHO: \t%.2f m%c\n", tam_pisc_m3, 252);
printf("CUSTO POR m%c: \tR$ %.2f\n", 252, valor_m3);
printf("CUSTO TOTAL: \tR$ %.2f\n", custotal);

getch();
}
