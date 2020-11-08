algoritmo "ex38"
// Função :
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
nota1, nota2, nota3: real
media: real
nome, classificacao: caractere
matricula: inteiro

inicio
// Seção de Comandos 
escreva("Digite o nome: ")
leia(nome)
escreva("Informe a matrícula: ")
leia(matricula)
escreva("Digite a nota do trabalho de laboratório: ")
leia(nota1)
escreva("Digite a nota da avaliação semestral: ")
leia(nota2)
escreva("Digite a nota do exame final: ")
leia(nota3)

media <- ((nota1 * 2) + (nota2 * 3) + (nota3 * 5))/10

se media >= 8.10 entao
    classificacao <- "A"
senao
    se media >= 7.8 entao
        classificacao <- "B"
    senao
        se media >= 6.7 entao
            classificacao <- "C"
        senao
            se media >= 5.6 entao
                classificacao <- "D"
            fimse
        fimse
    fimse
fimse
se media < 5.6 entao
    classificacao <- "R"
fimse

limpatela
escreval("Nome: ",nome)
escreval("Matrícula: ",matricula)
escreval("Nota final: ",media)
escreval("Classificação: ",classificacao)


fimalgoritmo
