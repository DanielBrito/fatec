algoritmo "C�lculo de Equa��o do 2� grau"
// Fun��o :
// Autor : Daniel Brito
// Data : 28/08/2012
// Se��o de Declara��es 
var
a,b,c,del,x1p,x2n: real

inicio
// Se��o de Comandos

escreva("Entre com o coeficiente a (a<>0): ")
leia(a)
se a=0 entao
escreva("N�o � uma equa��o do 2� grau!")
senao

escreva("Entre com o coeficiente b: ")
leia(b)

escreva("Entre com o coeficiente c: ")
leia(c)

del<- b^2-4*a*c
escreval("O valor de delta �: ",del)

se del<0 entao
escreval("N�o existe ra�z de delta!")

senao
x1p<- (((-1*(b))+(del^(1/2))))/(2*a)
x2n<- (((-1*(b))-(del^(1/2))))/(2*a)

escreval("O valor de x1 �: ",x1p)
escreval("O valor de x2 �: ",x2n)

fimse
fimse

fimalgoritmo

