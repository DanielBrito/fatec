algoritmo "ordenacao"
// Fun��o :
// Autor :
// Data : 15/4/2013
// Se��o de Declara��es 
var

valores: vetor[1..5] de inteiro
i,j : inteiro
x: inteiro

inicio

para i de 1 ate 5 faca
     escreva("Entre com o valor da posi��o", i , " ")
     leia(valores[i])
fimpara

para i de 1 ate 4 faca
     para j de i + 1 ate 5 faca
          se(valores[i] > valores[j]) entao
             x <- valores[i]
             valores[i] <- valores[j]
             valores[j] <- x
          fimse
     fimpara
fimpara

para i de 1 ate 5 faca
     escreval("Valor da Posi��o", i, " = ", valores[i])
fimpara

// Se��o de Comandos
fimalgoritmo
