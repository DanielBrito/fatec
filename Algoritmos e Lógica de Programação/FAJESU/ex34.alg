algoritmo "ex34"
// Função : A escola \u201cAPRENDER\u201d faz o pagamento de seus professores por hora/aula. Faça um algoritmo que calcule e exiba o
            // salário de um professor. Sabe-se que o valor da hora/aula segue a tabela abaixo:
            // Professor Nível 1 R$12,00 por hora/aula
            // Professor Nível 2 R$17,00 por hora/aula
            // Professor Nível 3 R$25,00 por hora/aula
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
nivel, horas: inteiro
inicio
// Seção de Comandos
escreval(">>>>> Escola APRENDER <<<<<")
escreva("Digite o nível do professor (1/2/3): ")
leia(nivel)
escreva("Digite o número de horas trabalhadas: ")
leia(horas)

se nivel = 1 entao
    escreval("O professor ganha",horas*12)
senao
    se nivel = 2 entao
        escreval("O professor ganha",horas*17)
    senao
        escreva("O professor ganha",horas*25)
    fimse
fimse

fimalgoritmo
