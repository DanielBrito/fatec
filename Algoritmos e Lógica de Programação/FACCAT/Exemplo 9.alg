algoritmo "semnome"
// Função :
// Autor :
// Data : 19/09/12
// Seção de Declarações
var
nota: inteiro
i: inteiro
contador: inteiro
inicio
// Seção de Comandos
contador<-0

para i de 1 ate 10 passo 1 faca
   escreva("Digite a nota do", i,"° aluno: ")
   leia(nota)
   se nota>=6 entao
      contador<-contador+1
   fimse
fimpara
escreval
escreval("O número de alunos aprovados é: ", contador,".")
escreval
fimalgoritmo
