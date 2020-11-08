#include <stdio.h>
#include <conio.h>

int main()
{
    int Dias; // Declaração de variáveis
    float Anos;
    printf("Entre com o numero de dias: "); // Entrada de dados
    scanf("%d", &Dias);
    Anos=Dias/365.25; //Conversão Dias->Anos
    printf("\n\n %d dias equivalem a %f anos.\n", Dias, Anos);
    _getch();
    return(0);
}
