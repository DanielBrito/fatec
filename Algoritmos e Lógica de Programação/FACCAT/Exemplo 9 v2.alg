algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 19/09/12
// Se��o de Declara��es
var
nota: inteiro
i: inteiro
contadora, contadorr: inteiro
inicio
// Se��o de Comandos
contadora<-0
contadorr<-0

para i de 1 ate 10 passo 1 faca
   escreva("Digite a nota do", i,"� aluno: ")
   leia(nota)
   se nota>=6 entao
      contadora<-contadora+1
   fimse
   se nota<=5 entao
      contadorr<-contadorr+1
   fimse
fimpara
escreval
escreval("O n�mero de alunos aprovados �: ", contadora,".")
escreval
escreval("O n�mero de alunos reprovados �: ", contadorr,".")
escreval
fimalgoritmo
