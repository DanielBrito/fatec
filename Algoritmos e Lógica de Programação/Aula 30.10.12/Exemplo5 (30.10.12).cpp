#include<stdio.h>

int main()
{
    long int i;
    printf("\n"); // Imprime o caracter de alerta (um beep)
    for (i=0; i<10000000; i++); // Espera 10.000.000 de intera��es
    printf("\a"); // Imprime outro caracter de alerta
    return(0);
}
