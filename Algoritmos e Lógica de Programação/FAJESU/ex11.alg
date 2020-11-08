algoritmo "ex11"
// Função : Faça um algoritmo que receba o preço de custo de um produto e mostre o valor de venda. Sabe-se que o preço de
            // custo receberá um acréscimo de acordo com um percentual informado pelo usuário.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
custo, venda, percent: real

inicio
// Seção de Comandos
escreva("Digite o custo do produto: ")
leia(custo)
escreva("Digite o percentual para venda: ")
leia(percent)
percent <- (percent/100) * custo
venda <- custo + percent
escreval("O valor de venda é: ",venda)

fimalgoritmo
