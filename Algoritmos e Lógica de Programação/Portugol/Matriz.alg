algoritmo "Matriz"
// Função :
// Autor :
// Data : 11/09/2012
// Seção de Declarações 
var
VALORES: VETOR [1..3,1..3] de real
somaLinha3, somaColuna2, somaDiagPrinc, somaDiagSecu, somaTudo: REAL
i, j: INTEIRO // os índices sempre inteiros
inicio
// Seção de Comandos
somaLinha3 <- 0
somaColuna2 <- 0
somaDiagPrinc <- 0
somaDiagSecu <- 0
somaTudo <- 0
   para i de 1 ate 3 faca
   para j de 1 ate 3 faca
escreva("Digite um valor para matriz  ")
leia(VALORES [i, j])
somaTudo <- VALORES [i, j] + somaTudo

se i=3 entao
somaLinha3 <- VALORES [i, j] + somaLinha3
fimse

se j=2 entao
somaColuna2 <- VALORES [i, j] + somaColuna2
fimse

se i=j entao
somaDiagPrinc <- VALORES [i, j] + somaDiagPrinc
fimse

se j=4-i entao
somaDiagSecu <- VALORES [i, j] + somaDiagSecu
fimse
fimpara
fimpara

para i de 1 ate 3 faca
para j de 1 ate 3 faca
escreva (VALORES[i, j])
fimpara
escreval
fimpara

escreval("A soma de todos os elementos é ", somaTudo)
escreval("A soma dos elementos da linha 3 é ", somaLinha3)
escreval("A soma dos elementos da coluna 2 é ", somaColuna2)
escreval("A soma dos elementos da diagonal principal é ", somaDiagPrinc)
escreval("A soma dos elementos da diagonal secundária é ", somaDiagSecu)

fimalgoritmo
