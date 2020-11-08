algoritmo "Vetores"
// Função :
// Autor :
// Data : 04/09/2012
// Seção de Declarações 
var
numero: vetor [1..6] de real
i,conta_neg: inteiro
inicio
// Seção de Comandos
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
escreva("Total de números negativos: ", conta_neg)

fimalgoritmo
