algoritmo "MediaHarmonica"
// Fun��o :
// Autor :
// Data : 04/09/2012
// Se��o de Declara��es 
var
a, b, c, MH, i: real
NOME: caractere

inicio
// Se��o de Comandos 
i <- 1
repita
   escreva("Entre com o nome do aluno: ")
   leia (nome)
   escreval
   escreval("- Entre com as notas das tr�s provas:")
   escreval
   escreva("Digite a primeira nota: ")
   leia (a)
   escreva("Digite a segunda nota: ")
   leia (b)
   escreva("Digite a terceira nota: ")
   leia (c)
   
   MH<-3/(1/a + 1/b + 1/c)

   escreval ("A m�dia harm�nica do aluno: ", NOME, " � ", MH, ".")
   escreval
   i<-i+1
ate i>4

fimalgoritmo
