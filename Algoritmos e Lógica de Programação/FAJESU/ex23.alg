algoritmo "ex23"
// Função : Faça um algoritmo que receba um número e mostre uma mensagem caso este número sege maior que 80, menor
            // que 25 ou igual a 40.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
numero: inteiro

inicio
// Seção de Comandos 
escreva("Digite um número: ")
leia(numero)

se numero > 80 entao
    escreval("O número é maior que 80")
senao
    se numero < 25 entao
        escreval("O número é menor que 25")
    senao
        se numero = 40 entao
            escreval("O número é igual a 40")
        fimse
    fimse
fimse

fimalgoritmo
