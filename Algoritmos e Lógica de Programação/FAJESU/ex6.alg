algoritmo "ex6"
// Função : Ler dois valores para as variáveis A e B, e efetuar as trocas dos valores de forma que a variável A passe a possuir o
            // valor da variável B e a variável B passe a possuir o valor da variável A. Apresentar os valores trocados.
// Autor :
// Data : 30/11/2010
// Seção de Declarações 
var
a, b, troca: inteiro

inicio
// Seção de Comandos
escreva("Digite o valor(numérico) da variável A: ")
leia(a)
escreva("Digite o valor(numérico) da variável B: ")
leia(b)
troca <- a
a <- b
b <- troca
limpatela
escreval("===========================")
escreval("O novo valor de A é: ",a)
escreval("O novo valor de B é: ",b)
escreval("===========================")

 
fimalgoritmo
