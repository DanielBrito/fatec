#include <stdio.h>
#include <conio.h>

int mensagem () // Função simples: Só imprime Ola!
{
    printf("Ola!");
    return(0);
}
int main ()
{
    mensagem ();
    printf("\nEu estou vivo!\n");
    // return(0);
    _getch();
}
