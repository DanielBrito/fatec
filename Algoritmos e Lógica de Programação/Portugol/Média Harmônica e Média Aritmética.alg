algoritmo "Vetores - M�dia Harm�nica e M�dia Aritm�tica "
// Fun��o : Fazer algoritmo que l� as notas finais de um grupo de 8 alunos de uma classe
//          e calcule a m�dia harm�nica e m�dia aritm�tica da classe. Prever reprocesamento.
// Autor :
// Data : 04/09/2012
// Se��o de Declara��es 
var
nota: vetor [1..8] de real
i, x: inteiro
media, mh: real
inicio
// Se��o de Comandos
x<-1
enquanto x=1 faca
media<-0
mh<-0
escreval("Informe 8  notas os alunos: ")
para i de 1 ate 8 faca
escreva ("Informe a nota do ", i, ".o aluno: ")
leia(nota[i])
media<-media+NOTA[i]
mh<-(mh+1/nota[i])
fimpara
para i de 1 ate 8 faca
escreval
escreval("A nota do ", i, ".o aluno digitada foi: ", nota[i])
fimpara
media<-media/(i-1)
mh<-(i-1)/mh
escreval
escreval("M�dia das notas dos ", i-1, " alunos: ", media, " �: ", mh, ".")
escreva("Para continuar digite (1); Para terminar digite (2)")
leia(x)
fimenquanto

repita
escreval
escreva("Entre com a nota do primeiro aluno: ")


fimalgoritmo
