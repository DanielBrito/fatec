algoritmo "Vetores"
// Fun��o :
// Autor :
// Data : 04/09/2012
// Se��o de Declara��es 
var
numero: vetor [1..6] de real
i,conta_neg: inteiro
inicio
// Se��o de Comandos
conta_neg<-0
   para i de 1 ate 6 faca
      leia (numero[i])
   se numero[i] <0 entao
conta_neg<-conta_neg+1
   fimse
   fimpara
escreval
para i de 1 ate 6 faca
escreva(numero[i])
fimpara
escreval
escreval
escreva("Total de n�meros negativos: ", conta_neg)

fimalgoritmo
