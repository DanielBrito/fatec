#include<stdio.h>
#include<conio.h>

int main ()
{
    char str[10] = "Joao";
    printf("\n\nString: %s", str);
    printf("\nSegunda letra: %c", str[1]);
    str[1]='u';
    printf("\nAgora a segunda letra e: %c", str[1]);
    printf("\n\nString resultante: %s", str);
    _getch();
}
