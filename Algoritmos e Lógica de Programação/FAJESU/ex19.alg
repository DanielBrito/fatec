algoritmo "ex19"
// Função : Escrever um algoritmo que leia o nome e o sexo de 56 pessoas e informe o nome e se ela é homem ou mulher. No
            // final informe total de homens e de mulheres.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
nome, sexo: caractere
x, h, m: inteiro

inicio
// Seção de Comandos 
para x de 1 ate 5 faca
     limpatela
     escreva("Digite o nome: ")
     leia(nome)
     escreva("H - Homem ou M - Mulher: ")
     leia(sexo)
     escolha sexo
         caso "H"
              h <- h + 1
         caso "M"
              m <- m + 1
         outrocaso
              escreval("Sexo só pode ser H ou M!")
     fimescolha
fimpara
limpatela
escreval("Foram inseridos",h," Homens")
escreval("Foram inseridos",m," Mulheres")


fimalgoritmo
