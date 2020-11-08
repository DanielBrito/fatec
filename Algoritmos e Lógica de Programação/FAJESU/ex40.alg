algoritmo "ex40"
// Função :
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
mat1: vetor[1..4,1..4] de inteiro
mat2: vetor[1..4,1..4] de inteiro
x, y: inteiro
soma1, soma2: inteiro

inicio
// Seção de Comandos

// Recebimento dos valores da matriz
para x de 1 ate 4 faca
    para y de 1 ate 4 faca
        escreva("Digite o valor",x,"-",y,": ")
        leia(mat1[x,y])
    fimpara
fimpara

// Troca entre as posições entre duas matrizes
para x de 1 ate 4 faca
    mat2[1,x] <- mat1[4,x]
    mat2[4,x] <- mat1[1,x]
fimpara

para x de 1 ate 4 faca
    mat2[2,x] <- mat1[2,x]
    mat2[3,x] <- mat1[3,x]
fimpara

// Impressão dos valores das matrizes
limpatela
escreval("Matriz original: ")
para x de 1 ate 4 faca
    escreval(mat1[x,1],mat1[x,2],mat1[x,3],mat1[x,4])
fimpara
escreval("Matriz modificada: ")
para x de 1 ate 4 faca
    escreval(mat2[x,1],mat2[x,2],mat2[x,3],mat2[x,4])
fimpara
escreval("")

// Soma entre os termos das matrizes
para x de 1 ate 4 faca
    para y de 1 ate 4 faca
        soma1 <- soma1 + mat1[x,y]
    fimpara
fimpara
para x de 1 ate 4 faca
    para y de 1 ate 4 faca
        soma2 <- soma2 + mat2[x,y]
    fimpara
fimpara

// Resultado final
escreval("")
escreval("Soma da matriz 1 + matriz 2 = ",soma1+soma2)
escreval("Soma dos valores da matriz 1 menos a soma da matriz 2 = ",soma1-soma2)


 
fimalgoritmo
