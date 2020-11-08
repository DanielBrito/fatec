algoritmo "semnome"
// Função :
// Autor :
// Data : 19/09/12
// Seção de Declarações
var
nota: inteiro
i: inteiro
contadora, contadorr: inteiro
inicio
// Seção de Comandos
contadora<-0
contadorr<-0

para i de 1 ate 10 passo 1 faca
   escreva("Digite a nota do", i,"° aluno: ")
   leia(nota)
   se nota>=6 entao
      contadora<-contadora+1
   fimse
   se nota<=5 entao
      contadorr<-contadorr+1
   fimse
fimpara
escreval
escreval("O número de alunos aprovados é: ", contadora,".")
escreval
escreval("O número de alunos reprovados é: ", contadorr,".")
escreval
fimalgoritmo
