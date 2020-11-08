/* Programa que lê um numero digitado pelo usuário e o exibe na tela*/

#include<stdio.h> //Importa a biblioteca e funções de entrada e saida de dados
#include<conio.h> //Importa a biblioteca que manipula caracteres na tela

int main() //Declara o tipo da função 'int' e seu nome 'main'
{ //Inicia-se o bloco de instruções
   int x; //Declaração de variável
   scanf("%d", &x); //Lê um valor digitado pelo usuário e rmazena na variavel 'x'
   printf("%d", x); //Exibe o valor digitado pelo usuário
   getch();/*Função cuja função é esperar que o usuário 
            *pressione uma tecla para finalizar o programa*/
} //Finaliza o bloco de instruções
