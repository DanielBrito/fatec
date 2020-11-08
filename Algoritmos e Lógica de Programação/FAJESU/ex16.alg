algoritmo "ex16"
// Função : Escrever um algoritmo que leia o nome e as três notas obtidas por um aluno durante o semestre. Calcular a sua
            // média (aritmética), informar o nome e sua menção aprovado (media >= 7), Reprovado (media <= 5) e Recuperação
            // (media entre 5.1 a 6.9).
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
nome: caractere
n1, n2, n3, media: real

inicio
// Seção de Comandos 
escreval("Sistema de médias")
escreva("Digite a primeira nota: ")
leia(n1)
escreva("Digite a segunda nota: ")
leia(n2)
escreva("Digite a terceria nota: ")
leia(n3)
media <- (n1 + n2 + n3) / 3

se media >= 7 entao
   escreval("Aluno aprovado!")
senao
   se media <= 5 entao
      escreval("Aluno reprovado!")
   senao
      escreval("Aluno em recuperação...")
   fimse
fimse

fimalgoritmo
