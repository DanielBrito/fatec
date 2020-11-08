algoritmo "semnome"
// Função :
// Autor :
// Data : 28/8/2012
// Seção de Declarações 
var
num1,num2,result:real
op:caractere
inicio
// Seção de Comandos 
escreva ("Entre com um numero: ")
leia (num1)
escreva ("Entre com outro numero: ")
leia (num2)
escreva ("Qual operação você deseja realizar? (* / + -) ")
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
escreva ("Operação inválida")
op<-"f"
fimescolha
se op<>"f" entao
escreva ("O resultado é:",result)
fimse
fimalgoritmo
