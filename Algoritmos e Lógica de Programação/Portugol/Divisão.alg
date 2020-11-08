algoritmo "Divisão"
// Função :
// Autor :
// Data : 29/08/2012
// Seção de Declarações 
var
divs, divd, quoc: real

inicio
// Seção de Comandos

escreva("Digite o valor do dividendo: ")
leia(divd)

se divd=0 entao
   escreva("Digite um valor maior que 0!")
senao

escreva("Digite o valor do divisor: ")
leia(divs)

se divs=0 entao
   escreva("Digite um valor maior que 0!")
fimse
fimse

quoc <- divd/divs

escreva("O resultado da divisão de ", divd, " por ", divs, " é: ", quoc, ".")

escreval

fimalgoritmo
