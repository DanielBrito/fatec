algoritmo "Classifica��o de atletas"
// Fun��o :
// Autor :
// Data : 28/08/2012
// Se��o de Declara��es 
var
nome, categoria: caractere
idade: inteiro

inicio
// Se��o de Comandos

escreva("Nome do atleta: ")
leia(nome)

escreva("Idade do atleta: ")
leia(idade)

escolha idade
caso 5, 6, 7, 8, 9, 10
     categoria <- "Infantil"

caso 11, 12, 13, 14, 15
     categoria <- "Juvenil"
     
caso 16, 17, 18, 19, 20
     categoria <- "Junior"
     
caso 21, 22, 23, 24, 25
     categoria <- "Profissional"
     
outrocaso
         categoria <- "FAIXA INV�LIDA"

fimescolha

escreva("Categoria: ", categoria)
escreval

fimalgoritmo
