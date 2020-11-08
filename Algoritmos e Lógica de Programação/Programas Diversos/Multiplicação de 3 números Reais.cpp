#include <stdio.h>
#include <conio.h>
int mult (float a, float b, float c)  // Multiplica 3 numeros
{
    printf("%f", a*b*c);
    return(0);
}

int main ()
{
    float x, y;
          x=23.5;
          y=12.9;
          mult(x, y, 3.87);
          _getch();
          }
