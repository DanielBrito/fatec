algoritmo "ex27"
// Função : A concessionária de veículos CARANGO está vendendo os seus veículos com desconto. Faça um algoritmo que
            // calcule e exiba o valor do desconto e o valor a ser pago pelo cliente. O desconto deverá ser calculado sobre o valor
            // do veículo de acordo com o combustível (álcool \u2013 25%, gasolina \u2013 21% ou diesel \u201314%). Com valor do veículo zero
            // encerra entrada de dados. Informe total de desconto e total pago pelos clientes.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
desconto, valorPago, valorVeiculo: real
totalDesconto, totalPago: real
combustivel, opc: caractere

inicio
// Seção de Comandos
valorVeiculo <- 1
opc <- "x"
enquanto valorVeiculo <> 0 faca
    limpatela
    escreva("Digite o valor do veículo: ")
    leia(valorVeiculo)
    se valorVeiculo <> 0 entao
        escreval("Digite o combustível")
        escreva("(G)asolina / (A)lcool / (D)iesel: ")
        leia(combustivel)
        escolha combustivel
            caso "A"
                desconto <- 0.25 * valorVeiculo
            caso "G"
                desconto <- 0.21 * valorVeiculo
            caso "D"
                desconto <- 0.14 * valorVeiculo
            outrocaso
                escreval("Combustível inválido!")
                escreval("Não haverão descontos!")
                desconto <- 0
        fimescolha
        valorPago <- valorVeiculo - desconto
        totalDesconto <- totalDesconto + desconto
        totalPago <- totalPago + valorPago
        escreval("Desconto no veículo: ",desconto)
        escreval("Valor total a ser pago: ",valorPago)
        escreval("Tecle enter para continuar...")
        leia(opc)
    fimse
fimenquanto
limpatela
escreval("Resumo geral: ")
escreval("Total de descontos: ",totalDesconto)
escreval("Total Pago pelos clientes: ",totalPago)

fimalgoritmo
