algoritmo "Matriz"
// Fun��o :
// Autor :
// Data : 15/4/2013
// Se��o de Declara��es 
var
alunos: vetor [1..10] de literal
notas: vetor [1..10,1..5] de real
linha: inteiro
coluna: inteiro
inicio
EscrevaL("PROGRAMA PARA CADASTRAMENTO DE NOTAS:")
para linha de 1 ate 10 passo 1 faca
     Escreva("Entre com o Nome do Aluno", linha, ": ")
     leia(alunos[linha])
     para coluna de 1 ate 4 passo 1 faca
        Escreva("Entre com a Nota", coluna, " do Aluno ", alunos[linha], " ")
        leia(notas[linha,coluna])
     fimpara
     notas[linha,5] <- ( notas[linha,1] + notas[linha,2] + notas[linha,3] + notas[linha,4] ) / 4
fimpara
para linha de 1 ate 10 faca
     Escreval("Media do Aluno: ", alunos[linha], " �          " , notas[linha,5])
     se (notas[linha,5] >= 6) entao
         escreva("APROVADO")
     senao
         se((notas[linha,5] < 6) E (notas[linha,5] >= 4)) entao
            escreva("RECUPERA�AO")
         senao
            escreva("REPROVADO")
         fimse
     fimse
fimpara
// Se��o de Comandos
fimalgoritmo
