algoritmo "semnome"
// Função :
// Autor :
// Data : 28/8/2012
// Seção de Declarações 
var
num1,num2,result:real
op:caracter
inicio
escreval("Digite um número:")
leia(num1)
escreval("Escolha a operação:")
leia(op)
escreval("Digite o próximo número:")
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



// Seção de Comandos 
fimalgoritmo
