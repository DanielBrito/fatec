algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 19/09/12
// Se��o de Declara��es
var
val1, val2, soma, opcao: inteiro

inicio
// Se��o de Comandos
opcao<-1
enquanto opcao=1 faca
   limpatela
   escreva("Digite um valor: ")
   leia(val1)
   escreva("Digite outro valor: ")
   leia(val2)

   soma<-val1+val2

   escreval
   escreval("A soma de",val1," +",val2," �",soma,".")
   escreval
   escreval
   escreva("Novo c�lculo? 1-SIM ou 2-N�O: ")
   leia(opcao)
fimenquanto
escreval
escreval("Fim dos c�lculos!")
escreval
fimalgoritmo
