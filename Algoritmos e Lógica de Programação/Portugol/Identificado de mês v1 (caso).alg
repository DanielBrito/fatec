algoritmo "Identificador de m�s"
// Fun��o :
// Autor :
// Data : 28/08/2012
// Se��o de Declara��es 
var
mes: inteiro
ext: caractere

inicio
// Se��o de Comandos

escreva("Digite o n�mero do m�s: ")
leia(mes)

escolha(mes)

caso 1
        ext <- "Janeiro"
caso 2
        ext <- "Fevereiro"
caso 3
        ext <- "Mar�o"
caso 4
        ext <- "Abril"
caso 5
        ext <- "Maio"
caso 6
        ext <- "Junho"
caso 7
        ext <- "Julho"
caso 8
        ext <- "Agosto"
caso 9
        ext <- "Setembro"
caso 10
        ext <- "Outubro"
caso 11
        ext <- "Novembro"
caso 12
        ext <- "Dezembro"
outrocaso
         ext <- "M�s Inv�lido!"

fimescolha
         
escreva("O m�s correspondente �: ", ext)

fimalgoritmo
