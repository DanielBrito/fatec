/* Programa que l� um numero digitado pelo usu�rio e o exibe na tela*/

#include<stdio.h> //Importa a biblioteca e fun��es de entrada e saida de dados
#include<conio.h> //Importa a biblioteca que manipula caracteres na tela

int main() //Declara o tipo da fun��o 'int' e seu nome 'main'
{ //Inicia-se o bloco de instru��es
   int x; //Declara��o de vari�vel
   scanf("%d", &x); //L� um valor digitado pelo usu�rio e rmazena na variavel 'x'
   printf("%d", x); //Exibe o valor digitado pelo usu�rio
   getch();/*Fun��o cuja fun��o � esperar que o usu�rio 
            *pressione uma tecla para finalizar o programa*/
} //Finaliza o bloco de instru��es
