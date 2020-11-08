#include<stdio.h> //Importa a biblioteca que contem funções de entrada e saida de dados
#include<conio.h> //Importa a biblioteca que contem funções de manipulação de caracteres na tela

int main() // define uma função de nome 'main'(principal retorno é um 'inteiro'
{ // Inicia-se o bloco de instruções da função 'main'
    char Ch; // define a variavel Ch como do tipo caractere
    Ch='D'; //Atribui o Caractere 'D' a variavel Ch
    printf("%c", Ch); //mostra na tela por meio do %d o valor que foi atribuido a variavel Ch
    getche();//Aguarda que o usuário digite algo para finalizar o programa
} //Finaliza o bloco de instruções da função 'main'

/*
int main() // define uma função de nome 'main'(principal retorno é um 'inteiro'
{ // Inicia-se o bloco de instruções da função 'main'
    char Ch; // define a variavel Ch como do tipo caractere
    Ch='D'; //Atribui o Caractere 'D' a variavel Ch
    printf("%d", Ch); //Imprime o caractere como inteiro
    getch();//Aguarda que o usuário digite algo para finalizar o programa
} //Finaliza o bloco de instruções da função 'main'
*/
