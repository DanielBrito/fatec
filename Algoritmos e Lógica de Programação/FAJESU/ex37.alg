algoritmo "ex37"
// Função :
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
nome, sexo: caractere
idade, x: inteiro
altura, peso: real

inicio
// Seção de Comandos 
escreva("Digite o nome: ")
leia(nome)
x <- 1
enquanto x = 1 faca
    escreva("Digite o sexo (F/M): ")
    leia(sexo)
    se sexo = "F" entao
        x <- 0
    fimse
    se sexo = "M" entao
        x <- 0
    fimse
fimenquanto
escreva("Digite a altura: ")
leia(altura)
escreva("Digite a idade: ")
leia(idade)
se sexo = "M" entao
    se altura > 1.70 entao
        se idade <= 20 entao
            peso <- (72.7 * altura) - 58
        senao
            se idade <= 39 entao
                peso <- (72.7 * altura) - 53
            senao
                peso <- (72.7 * altura) - 45
            fimse
        fimse
    senao
        se altura <= 1.70 entao
            se idade <= 40 entao
                peso <- (72.7 * altura) - 50
            senao
                peso <- (72.7 * altura) - 58
            fimse
        fimse
    fimse
senao
    se altura > 1.50 entao
        peso <- (62.1 * altura) - 44.7
    senao
        se idade >= 35 entao
            peso <- (62.1 * altura) - 45
        senao
            peso <- (62.1 * altura) - 49
        fimse
    fimse
fimse

limpatela
escreval("Nome: ",nome)
escreval("Peso Ideal: ",peso)



fimalgoritmo
