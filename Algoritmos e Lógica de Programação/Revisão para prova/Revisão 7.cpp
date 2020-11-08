#include<stdio.h>
#include<conio.h>

float prod(float x, float y)
{
   return(x*y);
}

int main()
{
   float saida;
   saida=prod(45.2, 0.0067);
   printf("A saida e: %f\n", saida);
   getch();
}
