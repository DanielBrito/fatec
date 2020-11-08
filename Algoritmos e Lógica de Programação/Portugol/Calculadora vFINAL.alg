algoritmo "Calculadora vFINAL"
// Função :
// Autor :
// Data : 29/08/2012
// Seção de Declarações 
var
num1, num2, result:real
oper: caractere

inicio
// Seção de Comandos
escreva("Digite um valor: ")
leia(num1)
escreva("Digite outro valor: ")
leia(num2)
escreva ("Qual operação você deseja realizar? (+ - * /): ")
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
         escreva("Operação Inválida! ")
fimescolha

escreva("O resultado da operação: ", num1, " ", oper, num2, " = ", result, ".")

escreval

fimalgoritmo
