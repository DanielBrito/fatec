algoritmo "ex36"
// Função :
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
residencia, kw: inteiro
consumo: real

inicio
// Seção de Comandos 
escreval("Informe o tipo de residência: ")
escreval("1 - Residência")
escreval("2 - Comércio")
escreval("3 - Indústria")
leia(residencia)
escolha residencia
    caso 1
        escreva("Informe a quantidade de KW gastos no mês: ")
        leia(kw)
        consumo <- kw * 0.60
        escreval("Valor da conta: ",consumo)
    caso 2
        escreva("Informe a quantidade de KW gastos no mês: ")
        leia(kw)
        consumo <- kw * 0.48
        escreval("Valor da conta: ",consumo)
    caso 3
        escreva("Informe a quantidade de KW gastos no mês: ")
        leia(kw)
        consumo <- kw * 1.29
        escreval("Valor da conta: ",consumo)
    outrocaso
        escreval("Tipo de residência inválido!")
fimescolha
fimalgoritmo
