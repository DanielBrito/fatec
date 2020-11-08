#include <stdio.h>
#include <conio.h>

int square (int x)  // Calcula o quadrado de x
{
    printf("O quadrado de %d.", (x*x));
    return(0);
}
int main ()
{
    int num;
    printf("Entre com um numero: ");
    scanf("%d", &num);
    printf("\n\n");
    square(num);
    _getch();
}
