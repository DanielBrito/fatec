algoritmo "Divis�o"
// Fun��o :
// Autor :
// Data : 29/08/2012
// Se��o de Declara��es 
var
divs, divd, quoc: real

inicio
// Se��o de Comandos

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

escreva("O resultado da divis�o de ", divd, " por ", divs, " �: ", quoc, ".")

escreval

fimalgoritmo
