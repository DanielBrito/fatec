algoritmo "ex31"
// Função : Escrever um algoritmo que leia três valores inteiros distintos e os escreva em ordem crescente
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
num1, num2, num3: inteiro
ordena: vetor[1..3] de inteiro

inicio
// Seção de Comandos
escreva("Digite o primeiro número: ")
leia(num1)
escreva("Digite o segundo número: ")
leia(num2)
escreva("Digite o terceiro número: ")
leia(num3)

se num1 > num2 entao
    ordena[3] <- num1
    ordena[2] <- num2
    se num3 > num1 entao
        ordena[3] <- num3
        ordena[2] <- num1
        ordena[1] <- num2
    senao
        se num3 > num2 entao
            ordena[3] <- num1
            ordena[2] <- num3
            ordena[1] <- num2
        senao
            ordena[3] <- num1
            ordena[2] <- num2
            ordena[1] <- num3
        fimse
    fimse
senao
    ordena[3] <- num2
    ordena[2] <- num1
    se num3 > num2 entao
        ordena[3] <- num3
        ordena[2] <- num2
        ordena[1] <- num1
    senao
        se num3 > num1 entao
            ordena[3] <- num2
            ordena[2] <- num3
            ordena[1] <- num1
        senao
            ordena[3] <- num2
            ordena[2] <- num1
            ordena[1] <- num3
        fimse
    fimse
fimse

escreval("Os números em ordem crescente são: ")
escreval(">",ordena[1])
escreval(">",ordena[2])
escreval(">",ordena[3])
fimalgoritmo
