algoritmo "ex35"
// Função :
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
idade: inteiro

inicio
// Seção de Comandos 
escreva("Digite a idade do nadador: ")
leia(idade)
escolha idade
    caso 5,6,7
        escreval("Infantil A")
    caso 8,9,10
        escreval("Infantil B")
    caso 11,12,13
        escreval("Juvenil A")
    caso 14,15,16,17
        escreval("Juvenil B")
    caso 18,19,20,21,22,23,24,25
        escreval("Sênior")
    outrocaso
        escreval("Idade fora da faixa etária")
fimescolha

fimalgoritmo
