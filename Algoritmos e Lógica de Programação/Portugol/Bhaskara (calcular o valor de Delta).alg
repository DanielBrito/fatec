algoritmo "semnome"
// Fun��o : Algoritmo
// Autor :  Glauco/Leandro
// Data : 21/8/2012
// Se��o de Declara��es
var
A,B,C,Delta,X,XPos,XNeg: real
inicio
// Se��o de Comandos
   escreval ("Valor de A")
leia(A)
   escreval ("Valor de B")
leia(B)
   escreval ("Valor de C")
leia(C)

Delta <- B^2-4*A*C
 escreval ("Valor de Delta:", Delta)
 
se  <0 entao
   escreval ("N�o existir�o ra�zes reais para Bhaskara")
fimse
se Delta=0 entao
   escreval ("Existir� uma raiz real para Bhaskara")
fimse
se Delta>0 entao
   escreval ("Existir�o duas ra�zes reais para Bhaskara")
fimse
fimalgoritmo
