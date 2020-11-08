algoritmo "semnome"
// Função : Algoritmo
// Autor :  Glauco/Leandro
// Data : 21/8/2012
// Seção de Declarações
var
A,B,C,Delta,X,XPos,XNeg: real
inicio
// Seção de Comandos
   escreval ("Valor de A")
leia(A)
   escreval ("Valor de B")
leia(B)
   escreval ("Valor de C")
leia(C)

Delta <- B^2-4*A*C
 escreval ("Valor de Delta:", Delta)
 
se  <0 entao
   escreval ("Não existirão raízes reais para Bhaskara")
fimse
se Delta=0 entao
   escreval ("Existirá uma raiz real para Bhaskara")
fimse
se Delta>0 entao
   escreval ("Existirão duas raízes reais para Bhaskara")
fimse
fimalgoritmo
