#include <stdio.h>
#include <conio.h>

int main()
{
    int Dias; // Declara��o de vari�veis
    float Anos;
    printf("Entre com o numero de dias: "); // Entrada de dados
    scanf("%d", &Dias);
    Anos=Dias/365.25; //Convers�o Dias->Anos
    printf("\n\n %d dias equivalem a %f anos.\n", Dias, Anos);
    _getch();
    return(0);
}
