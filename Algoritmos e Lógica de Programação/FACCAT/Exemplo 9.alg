algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 19/09/12
// Se��o de Declara��es
var
nota: inteiro
i: inteiro
contador: inteiro
inicio
// Se��o de Comandos
contador<-0

para i de 1 ate 10 passo 1 faca
   escreva("Digite a nota do", i,"� aluno: ")
   leia(nota)
   se nota>=6 entao
      contador<-contador+1
   fimse
fimpara
escreval
escreval("O n�mero de alunos aprovados �: ", contador,".")
escreval
fimalgoritmo
