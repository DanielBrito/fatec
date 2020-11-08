#include <stdio.h>
#include <stdlib.h>

int testa_angulo (float triangulo[3]);
int testa_triangulo (float triangulo[3]);
int testa_lados (float triangulo[3]);

int main(){
    /* Recebe valores da entrada padrão e armazena em uma matriz.
     * Usa o fato de vetores e matrizes serem passadas para funções como referências,
     * facilitando, assim, a passagem de um "objeto" triângulo para as funções de testes.*/

    int i,j, resultados[3][3];
    float triangulos[3][3];
    char tipo_lados[3][11] = {"escaleno", "isoceles", "equilatero"};
    char tipo_angulos[3][11] = {"acutangulo", "obtuso", "reto"};
    char eh_triangulo[2][19] = {"nao e um triangulo", "e um triangulo"};

    for (i=0;i<3;i++){
        for (j=0;j<3;j++){
            printf("Digite o %do lado do %do triangulo: ", j+1, i+1);
            scanf("%f", &triangulos[i][j]);
        }
    }
    for(i=0; i<3; i++){
        resultados[i][0] = testa_triangulo(triangulos[i]);
        if (resultados[i][0]==1){
            resultados[i][1] = testa_lados(triangulos[i]);
            resultados[i][2] = testa_angulo(triangulos[i]);
        }
        else { // próximos campo não fazem sentido se não for um triângulo.
            resultados[i][1] = -1;
            resultados[i][2] = -1;
        }
    }
    for(i=0; i<3; i++){
        if (resultados[i][0]==1) printf("O %do conjunto de valores %s %s %s\n", i+1, eh_triangulo[resultados[i][0]],tipo_lados[resultados[i][1]],tipo_angulos[resultados[i][2]]);
        else printf("O %do conjunto de valores %s\n", i+1, eh_triangulo[resultados[i][0]]);
    }

    #if defined (__WIN32)
        system("PAUSE");
    #endif

    return 0;
}

int testa_angulo (float triangulo[3]){
    /* Recebe um vetor com 3 valores que formem um triângulo e testa o tipo de triângulo
     * Retorna 0 for um acutângulo, 1 se for obtusângulo ou 2 se for reto */

    float lado_maior, lado2, lado3, hip, cats;

    if (triangulo[0] > triangulo[1]){
        lado_maior = triangulo[0];

        if (triangulo[2] > triangulo[0]){
            lado2 = lado_maior;
            lado_maior = triangulo[2];
            lado3 = triangulo[1];
        }
        else {
            lado2 = triangulo[1];
            lado3 = triangulo[2];
        }
    }
    else {
        lado_maior = triangulo[1];

        if (triangulo[2] > triangulo[1]){
            lado2 = lado_maior;
            lado_maior = triangulo[2];
            lado3 = triangulo[0];
        }
        else {
            lado2 = triangulo[0];
            lado3 = triangulo[2];
        }
    }
    hip = lado_maior*lado_maior;
    cats = lado2*lado2 + lado3*lado3;
    if (cats > hip) return 0; // acutângulo
    else if (cats < hip) return 1; // obtusângulo
    else return 2; // reto
}

int testa_triangulo (float triangulo[3]){
    /* Recebe um vetor com 3 valores e testa se formam um triângulo
     * Retorna 0 se não formarem um triângulo e 1 se formarem. */

    float l1,l2,l3;
    l1 = triangulo[0];
    l2 = triangulo[1];
    l3 = triangulo[2];
    if (l1 < l2+l3 && l2 < l1+l3 && l3 < l2+l1) return 1; // é triângulo
    else return 0; // não é triângulo
}

int testa_lados (float triangulo[3]){
    /* Recebe um vetor com 3 valores que formem um triângulo e testa o tipo de triângulo
     * Retorna 0 se for escaleno, 1 se for isóceles e 2 se for equilátero */

    float l1,l2,l3;
    l1 = triangulo[0];
    l2 = triangulo[1];
    l3 = triangulo[2];
    if (l1 != l2 && l2 != l3 && l1 != l3) return 0; // escaleno
    else if(l1 == l2 && l2 == l3 && l1 == l3) return 2; // equilátero
    else return 1; //isóceles
}
