algoritmo "ex10"
// Função : A Loja Mamão com Açúcar está vendendo seus produtos em 5 (cinco) prestações sem juros. Faça um algoritmo que
            // receba um valor de uma compra e mostre o valor das prestações.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
compra, prestacao: real

inicio
// Seção de Comandos 
escreval("========== Loja Mamão com Açúcar ==========")
escreva("Digite o valor da compra: ")
leia(compra)
prestacao <- compra/5
escreval("O cliente deverá pagar 5 prestações de R$",prestacao," cada")

fimalgoritmo
