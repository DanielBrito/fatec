algoritmo "Cálculo de Equação do 2º grau"
// Função :
// Autor : Daniel Brito
// Data : 28/08/2012
// Seção de Declarações 
var
a,b,c,del,x1p,x2n: real

inicio
// Seção de Comandos

escreva("Entre com o coeficiente a (a<>0): ")
leia(a)
se a=0 entao
escreva("Não é uma equação do 2º grau!")
senao

escreva("Entre com o coeficiente b: ")
leia(b)

escreva("Entre com o coeficiente c: ")
leia(c)

del<- b^2-4*a*c
escreval("O valor de delta é: ",del)

se del<0 entao
escreval("Não existe raíz de delta!")

senao
x1p<- (((-1*(b))+(del^(1/2))))/(2*a)
x2n<- (((-1*(b))-(del^(1/2))))/(2*a)

escreval("O valor de x1 é: ",x1p)
escreval("O valor de x2 é: ",x2n)

fimse
fimse

fimalgoritmo

