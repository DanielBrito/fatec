algoritmo "Situação de estudante"
// Função :
// Autor :
// Data : 22/08/12
// Seção de Declarações 
var

P1, P2, TB, media: real

inicio
// Seção de Comandos

escreva("Entre com o valor da P1: ")
leia(P1)

escreval

escreva("Entre com o valor da P2: ")
leia(P2)

escreval

escreva("Entre com o valor do TB: ")
leia(TB)

escreval

media<- ((((P1*0.8)+(P2*0.8))/2)+(0.2*TB))

se media>=6.0 entao
   escreval("Aluno aprovado! Média: ", media)
fimse

se media<=3.9 entao
   escreval("Aluno reprovado! Média: ", media)
fimse

se (media > 4.0) e (media < 5.9)  entao
   escreval("Realizar Exame! Média: ", media)
fimse

fimalgoritmo
