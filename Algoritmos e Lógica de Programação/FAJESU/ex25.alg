algoritmo "ex25"
// Função : Faça um algoritmo que leia dois números e identifique se são iguais ou diferentes. Caso eles sejam iguais imprima
          // uma mensagem dizendo que eles são iguais. Caso sejam diferentes, informe qual número é o maior, e uma
          // mensagem que são diferentes.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
num1, num2: inteiro

inicio
// Seção de Comandos 
escreva("Digite o primeiro número: ")
leia(num1)
escreva("Digite o segundo número: ")
leia(num2)
se num1 = num2 entao
    escreval("Os números são iguais!")
senao
    se num1 > num2 entao
        escreval("O número",num1," é maior que o número",num2)
        escreval("Eles são diferentes!!!")
    senao
        escreval("O número",num2," é maior que o número",num1)
        escreval("Eles são diferentes!!!")
    fimse
fimse

fimalgoritmo
