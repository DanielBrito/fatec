#include<stdio.h>

int main()
{
    int count;
    char ch;
    printf("Digite uma letra - <X para sair> ");
    for(count=1;;count++)
    {
       scanf("%c", &ch);
       if (ch=='X' || ch=='x') break;
       printf("\nLetra: %c \n", ch);
       scanf("%c", &ch);
    }
    return(0);
}
