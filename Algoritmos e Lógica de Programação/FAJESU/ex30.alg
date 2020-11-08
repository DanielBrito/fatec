algoritmo "ex30"
// Função : Faça um algoritmo que receba o nome a idade, o sexo e salário fixo de um funcionário. Mostre o nome e o salário líquido:
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
nome, sexo: caractere
idade, x: inteiro
salario: real

inicio
// Seção de Comandos 
escreva("Digite o nome do funcionário: ")
leia(nome)
x <- 1
enquanto x = 1 faca
    escreva("Digite o sexo (F/M): ")
    leia(sexo)
    se sexo <> "F" entao
        se sexo <> "M" entao
            x <- 1
        senao
            x <- 0
        fimse
    senao
        x <- 0
    fimse
fimenquanto
escreva("Digite a idade: ")
leia(idade)
escreva("Digite o salário: ")
leia(salario)
se sexo = "M" entao
    se idade >= 30 entao
        salario <- salario + 100
    senao
        salario <- salario + 50
    fimse
senao
    se idade >= 30 entao
        salario <- salario + 200
    senao
        salario <- salario + 80
    fimse
fimse
limpatela

escreval(">>> Nome: ",nome)
escreval(">>> Salário: ",salario)



fimalgoritmo
