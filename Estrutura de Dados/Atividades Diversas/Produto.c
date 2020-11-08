#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

struct Produto
{
    int cod;
    float preco;         	// 10.00
    float lucro;         	// 10% = 0.10
    float total;                // 12*(10.00 x 1.10)
};

void leProd(struct Produto *q)
{
    int i;

    printf("\tInsira os dados\n\n");

    for(i=0 ; i<3 ; i++)
    {
        printf("Codigo: ");
        scanf("%d", &q->cod);
        printf("Preco: ");
        scanf("%f", &q->preco);
        q++;
        
        printf("\n");
    }
}

void mostraProd(struct Produto *q)
{
    int i;

    printf("\n\n\tNovo preco (lucro)\n");

    for(i=0 ; i<3 ; i++)
    {
        printf("Codigo: %d - Preco: %.2f\n", q->cod, q->preco);
        q++;
    }
}

void aumenta(struct Produto *p)
{
    int i;

    for(i=0 ; i<3 ; i++)
    {
        p->preco*=1.10;
        p++;
    }

}


main()
{
    struct Produto prod [3];

    leProd(&prod[0]);

    aumenta(&prod[0]);

    mostraProd(&prod[0]);

    printf("\n\n\n");

    system("PAUSE");
    return 0;
}
