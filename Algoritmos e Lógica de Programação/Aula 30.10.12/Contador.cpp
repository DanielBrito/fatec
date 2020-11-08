#include<stdio.h>
#include<conio.h>

int main()
{
    int index = 0, contador;
    char letras[5] = "Joao";
    for (contador = 0; contador < 1000; contador++)
    {
        if (contador%5 == 0 && contador != 0)
        {
             (index==3)? index=0: ++index;
             printf("%c ", letras [index], contador);
        }
        else 
        {
             printf("%c", letras [index]);
        }

    }
     getch();
     return(0);
       
}
