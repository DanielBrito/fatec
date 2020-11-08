algoritmo "ex5"
// Função : Escrever um algoritmo que leia o nome de um aluno e as notas das três provas que ele obteve no semestre. No final
            // informar o nome do aluno e a sua média (aritmética)
// Autor :
// Data : 30/11/2010
// Seção de Declarações 
var
aluno: caractere
notas: vetor[1..3] de real
x: inteiro
media: real

inicio
// Seção de Comandos
escreval("============== Média de alunos ==============")
escreva("Digite o nome do aluno: ")
leia(aluno)
para x de 1 ate 3 faca
     escreva("Digite a ",x,"º nota ")
     leia(notas[x])
fimpara
media <- (notas[1] + notas[2] + notas[3]) / 3
limpatela
escreval("==============", aluno," ==============")
escreval(">>> Média: ",media)
escreval("=======================================")

 
fimalgoritmo
