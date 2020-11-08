algoritmo "ex9"
// Função : Faça um algoritmo que receba um valor que foi depositado e exiba o valor com rendimento após um mês.
            // Considere fixo o juro da poupança em 0,70% a. m.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
correcao, deposito: real


inicio
// Seção de Comandos
escreval("Sistema de depósito do Banco do Oeste")
escreva("Digite o valor depositado: ")
leia(deposito)
correcao <- 0.7 * deposito
escreva("O rendimento do depósito após um mês é de: ",deposito+correcao)
 
fimalgoritmo
