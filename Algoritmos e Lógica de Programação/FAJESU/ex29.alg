algoritmo "ex29"
// Função : Faça um algoritmo que receba o número do mês e mostre o mês correspondente. Valide mês inválido
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
mes: inteiro

inicio
// Seção de Comandos 
escreval("Digite o número do mês: ")
leia(mes)
escolha mes
caso 1
    escreval("Janeiro")
caso 2
    escreval("Fevereiro")
caso 3
    escreval("Março")
caso 4
    escreval("Abril")
caso 5
    escreval("Maio")
caso 6
    escreval("Junho")
caso 7
    escreval("Julho")
caso 8
    escreval("Agosto")
caso 9
    escreval("Setembro")
caso 10
    escreval("Outubro")
caso 11
    escreval("Novembro")
caso 12
    escreval("Dezembro")
outrocaso
    escreval("Mês inválido!")
fimescolha

fimalgoritmo
