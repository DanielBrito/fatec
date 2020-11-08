#include<stdio.h>
#include<conio.h>

int main ()
{
    char string[100]; // String, até 99 caracteres
    int i, cont;
    printf("Digite uma frase: ");
    gets(string); // Lê a string
    printf("\nFrase digitada: %s", string);
    cont = 0;
    for (i=0; string[i] != '\0'; i=i+1)
    {
        if(string[i] == 'c') // Se a letra for 'c'
        cont = cont+1; // Incrementa o contador de caracteres
    }
    printf("\n\nNumero de caracteres 'c' = %d", cont);
    _getch();
}
