#include "iostream"
#include "conio.h"
#include "stdlib.h"
#include "math.h"

using namespace std;

int x[5] = {-1, 10, 3, 4 , 5}, aux, i, j;

int main()
{
    for (i=0;i<5;i++)
        for (j=i;j<5;j++)
            if (x[i] > x[j] )
            {
                aux = x[i];
                x[i] = x[j];
                x[j] = aux;
            }

    cout << "*** Crescente *** \n" << endl;

    for (i=0;i<5;i++)
          cout << x[i] << endl;

    cout << "\n\n*** Descrecente *** \n" << endl;

    for (i=4;i>=0;i--)
         cout << x[i] << endl;

    getch();

    return 0;
}
