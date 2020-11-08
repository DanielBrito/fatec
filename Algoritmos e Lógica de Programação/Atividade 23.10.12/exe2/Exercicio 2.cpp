#include<stdio.h>
#include<conio.h>

int main()
{
    int num_dep;
    float sal_bruto, desc_INSS, desc_IR, sal_liquido, horas_trab, sal_hora;
    
    printf("---------- CALCULO DO SALARIO LIQUIDO ----------\n");
    printf("\n");
    printf("Informe a quantidade de horas trabalhadas: ");
    scanf("%f", &horas_trab);
    printf("\n");
    printf("Informe o salario-hora: ");
    scanf("%f", &sal_hora);
    printf("\n");
    printf("Informe o numero de dependentes: ");
    scanf("%d", &num_dep);
    printf("\n");
    printf("\n");
    
    sal_bruto=horas_trab*sal_hora+(50*num_dep);
    
    {
    if (sal_bruto<=1000)
       desc_INSS=(sal_bruto*8.5)/100;
    else
       desc_INSS=(sal_bruto*9)/100;
    }
    
    {
    if (sal_bruto<=500)
    desc_IR=0;
    else
    if (sal_bruto<=1000)
    desc_IR=(sal_bruto*5)/100;
    else
    desc_IR=(sal_bruto*7)/100;
    }    
    
    sal_liquido=sal_bruto-desc_INSS-desc_IR;
    
    printf("SALARIO BRUTO: R$ %.2f\n", sal_bruto);
    printf("DESCONTO INSS: %.2f\n", desc_INSS);
    printf("DESCONTO IR: %.2f\n", desc_IR);
    printf("SALARIO LIQUIDO: R$ %.2f\n", sal_liquido);
    printf("\n");
    printf("------------------------------------------------\n");
    
    getch();
}
    
