algoritmo "Identificador de mês"
// Função :
// Autor :
// Data : 28/08/2012
// Seção de Declarações 
var
mes: inteiro
ext: caractere

inicio
// Seção de Comandos

escreva("Digite o número do mês: ")
leia(mes)

escolha(mes)

caso 1
        ext <- "Janeiro"
caso 2
        ext <- "Fevereiro"
caso 3
        ext <- "Março"
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
         ext <- "Mês Inválido!"

fimescolha
         
escreva("O mês correspondente é: ", ext)

fimalgoritmo
