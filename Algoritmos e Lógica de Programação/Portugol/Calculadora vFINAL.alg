algoritmo "Calculadora vFINAL"
// Fun��o :
// Autor :
// Data : 29/08/2012
// Se��o de Declara��es 
var
num1, num2, result:real
oper: caractere

inicio
// Se��o de Comandos
escreva("Digite um valor: ")
leia(num1)
escreva("Digite outro valor: ")
leia(num2)
escreva ("Qual opera��o voc� deseja realizar? (+ - * /): ")
leia(oper)

escolha oper
caso "+"
result <- num1+num2
caso "-"
result <- num1-num2
caso "*"
result <- num1*num2
caso "/"
     se num2=0 entao
     escreva("Erro! Entre com um denominador diferente de 0!")
senao
result <- num1/num2
fimse
outrocaso
         escreva("Opera��o Inv�lida! ")
fimescolha

escreva("O resultado da opera��o: ", num1, " ", oper, num2, " = ", result, ".")

escreval

fimalgoritmo
