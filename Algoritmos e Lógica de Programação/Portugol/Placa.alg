algoritmo "Informações veiculares"
// Função :
// Autor :
// Data : 28/8/2012
// Seção de Declarações
// - Elabore um algoritmo que solicite o final da chapa de um carro e forneça o dia do rodízio em
//                                  [SP, o prazo de inspeção veicular e o prazo de licenciamento.
var
placa:inteiro
iv,rod,lic:caractere
inicio
// Seção de Comandos
escreva("Entre com o final da placa: ")
leia (placa)
escolha placa
caso 0
iv<- "31 de Dezembro"
lic<- "Dezembro"
rod<- "Sexta"
caso 1
iv<- "30 de Abril"
lic<- "Abril"
rod<- "Segunda"
caso 2
iv<- "31 de Maio"
lic<- "Maio"
rod<- "Segunda"
caso 3
iv<- "30 de Junho"
lic<- "Junho"
rod<- "Terça"
caso 4
iv<- "31 de Julho"
lic<- "Julho"
rod<- "Terça"
caso 5
iv<- "31 de Agosto"
lic<- "Agosto"
rod<- "Quarta"
caso 6
iv<- "31 de Agosto"
lic<- "Agosto"
rod<- "Quarta"
caso 7
iv<- "30 de Setembro"
lic<- "Setembro"
rod<- "Quinta"
caso 8
iv<- "31 de Outubro"
lic<- "Outubro"
rod<- "Quinta"
caso 9
iv<- "30 de Novembro"
lic<- "Novembro"
rod<- "Sexta"

fimescolha

escreval("Se o final de sua placa é ",placa,": o dia do seu rodízio é ", rod,";")
escreval("o mês de licenciamento é ",lic,"; e o prazo de inspeção é ", iv, ".")

fimalgoritmo
