algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 28/8/2012
// Se��o de Declara��es 
var
num1,num2,result:real
op:caractere
inicio
// Se��o de Comandos 
escreva ("Entre com um numero: ")
leia (num1)
escreva ("Entre com outro numero: ")
leia (num2)
escreva ("Qual opera��o voc� deseja realizar? (* / + -) ")
leia (op)
escolha op
caso "*"
result <- num1 *num2
caso "/"
result <- num1/num2
caso "+"
result <- num1+num2
caso "-"
result <-num1-num2
outrocaso
escreva ("Opera��o inv�lida")
op<-"f"
fimescolha
se op<>"f" entao
escreva ("O resultado �:",result)
fimse
fimalgoritmo
