algoritmo "Vetores - Média Harmônica e Média Aritmética "
// Função : Fazer algoritmo que lê as notas finais de um grupo de 8 alunos de uma classe
//          e calcule a média harmônica e média aritmética da classe. Prever reprocesamento.
// Autor :
// Data : 04/09/2012
// Seção de Declarações 
var
nota: vetor [1..8] de real
i, x: inteiro
media, mh: real
inicio
// Seção de Comandos
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
escreval("Média das notas dos ", i-1, " alunos: ", media, " é: ", mh, ".")
escreva("Para continuar digite (1); Para terminar digite (2)")
leia(x)
fimenquanto

repita
escreval
escreva("Entre com a nota do primeiro aluno: ")


fimalgoritmo
