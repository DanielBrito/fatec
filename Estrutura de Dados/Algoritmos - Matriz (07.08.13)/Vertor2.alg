algoritmo "ordenacao"
// Função :
// Autor :
// Data : 15/4/2013
// Seção de Declarações 
var

valores: vetor[1..5] de inteiro
i,j : inteiro
x: inteiro

inicio

para i de 1 ate 5 faca
     escreva("Entre com o valor da posição", i , " ")
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
     escreval("Valor da Posição", i, " = ", valores[i])
fimpara

// Seção de Comandos
fimalgoritmo
