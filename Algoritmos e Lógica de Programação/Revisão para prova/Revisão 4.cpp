#include<stdio.h> // importa biblioteca que possui funcoes de entrada e saida
#include<conio.h> // importa biblioteca que possui funcoes de manipulacao de caracteres na tela

int square(int x) //define a fun��o de nome 'square' cuja variavel e o inteiro 'x'
{ //inicia-se o bloco de fun�oes da fun��o 'square'
    printf("O quadrado e %d.", (x*x)); //exibe na tela o quadrado do valor digitado no lugar de '%d'
    return(0); //retorna o valor '0'
} //Finaliza o bloco de intru���es da fun��o 'square'
int main() //define-se a fun��o de nome 'main' (principal)
{ //inicia-se o bloco de instru��es da fun��o 'main'
    int num; //define-se a variavel 'num' que � do tipo inteiro
    printf("Entre com um numero: "); //exibe a frase entre aspas solicitando
                                    // ao usu�rio a entrada de um numero
    scanf("%d", &num); //L� n�mero digitado pelo usu�rio e armazena na variavel 'num'
    printf("\n\n"); //pula duas linhas na tela
    square(num); //retorna o resultado da fun��o 'square' no lugar de '%d'
    getch(); //Aguarda que o usuario aperte alguma tecla para encerrar o programa.
} //Finaliza o bloco de instru��es da fun��o 'main'
