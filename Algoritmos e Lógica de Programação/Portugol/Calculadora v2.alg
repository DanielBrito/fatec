algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 28/8/2012
// Se��o de Declara��es 
var
num1,num2,result:real
op:caracter
inicio
escreval("Digite um n�mero:")
leia(num1)
escreval("Escolha a opera��o:")
leia(op)
escreval("Digite o pr�ximo n�mero:")
leia(num2)
escolha(op)
caso("+")
result<-num1+num2
caso("-")
result<-num1-num2
caso("*")
result<-num1*num2
caso("/")
result<-num1/num2
fimescolha
escreval("O resultado de: ",num1," ",op,num2," = ",result)



// Se��o de Comandos 
fimalgoritmo
