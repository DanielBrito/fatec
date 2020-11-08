algoritmo "Classificação de atletas"
// Função :
// Autor :
// Data : 28/08/2012
// Seção de Declarações 
var
nome, categoria: caractere
idade: inteiro

inicio
// Seção de Comandos

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
         categoria <- "FAIXA INVÁLIDA"

fimescolha

escreva("Categoria: ", categoria)
escreval

fimalgoritmo
