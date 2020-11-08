#include<stdio.h> //importa a biblioteca que contem funcoes de entrada e saida
#include<conio.h> //manipular caracteres na tela, especificar cor de caracter e de fundo. 

int main() //declara o nome da função 'main' e informa o seu tipo 'int'
{ //Inicia-se o bloco de funçoes
   int dias; // Declaração de variavel do tipo 'int'
   float anos; // declaracao de variavel do tipo 'float'
   
   printf("Entre com um numero de dias: "); //entrada de dados
   scanf("%d", &dias); //leitura de dados
   
   anos=dias/365.25; //conversao de dias para anos
   
   printf("\n\n%d dias equivalem a %.2f anos.\n", dias, anos); //saida de dados
   getch(); //Espera que algo seja digitado e logo após finaliza o programa
}
   
