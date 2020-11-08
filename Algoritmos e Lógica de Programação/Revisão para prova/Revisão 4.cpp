#include<stdio.h> // importa biblioteca que possui funcoes de entrada e saida
#include<conio.h> // importa biblioteca que possui funcoes de manipulacao de caracteres na tela

int square(int x) //define a função de nome 'square' cuja variavel e o inteiro 'x'
{ //inicia-se o bloco de funçoes da função 'square'
    printf("O quadrado e %d.", (x*x)); //exibe na tela o quadrado do valor digitado no lugar de '%d'
    return(0); //retorna o valor '0'
} //Finaliza o bloco de intruçções da função 'square'
int main() //define-se a função de nome 'main' (principal)
{ //inicia-se o bloco de instruções da função 'main'
    int num; //define-se a variavel 'num' que é do tipo inteiro
    printf("Entre com um numero: "); //exibe a frase entre aspas solicitando
                                    // ao usuário a entrada de um numero
    scanf("%d", &num); //Lê número digitado pelo usuário e armazena na variavel 'num'
    printf("\n\n"); //pula duas linhas na tela
    square(num); //retorna o resultado da função 'square' no lugar de '%d'
    getch(); //Aguarda que o usuario aperte alguma tecla para encerrar o programa.
} //Finaliza o bloco de instruções da função 'main'
