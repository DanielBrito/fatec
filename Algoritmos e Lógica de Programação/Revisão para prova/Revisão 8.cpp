#include<stdio.h> //Importa a biblioteca que contem fun��es de entrada e saida de dados
#include<conio.h> //Importa a biblioteca que contem fun��es de manipula��o de caracteres na tela

int main() // define uma fun��o de nome 'main'(principal retorno � um 'inteiro'
{ // Inicia-se o bloco de instru��es da fun��o 'main'
    char Ch; // define a variavel Ch como do tipo caractere
    Ch='D'; //Atribui o Caractere 'D' a variavel Ch
    printf("%c", Ch); //mostra na tela por meio do %d o valor que foi atribuido a variavel Ch
    getche();//Aguarda que o usu�rio digite algo para finalizar o programa
} //Finaliza o bloco de instru��es da fun��o 'main'

/*
int main() // define uma fun��o de nome 'main'(principal retorno � um 'inteiro'
{ // Inicia-se o bloco de instru��es da fun��o 'main'
    char Ch; // define a variavel Ch como do tipo caractere
    Ch='D'; //Atribui o Caractere 'D' a variavel Ch
    printf("%d", Ch); //Imprime o caractere como inteiro
    getch();//Aguarda que o usu�rio digite algo para finalizar o programa
} //Finaliza o bloco de instru��es da fun��o 'main'
*/
