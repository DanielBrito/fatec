algoritmo "ex26"
// Função : Faça um algoritmo que leia um número de 1 a 5 e escreva por extenso. Caso o usuário digite um número que não
            // esteja neste intervalo, exibir mensagem: número inválido.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
numero: inteiro
inicio
// Seção de Comandos 
escreva("Digite um número de 1 a 5: ")
leia(numero)
escolha numero
caso 1
    escreval("Um")
caso 2
    escreval("Dois")
caso 3
    escreval("Três")
caso 4
    escreval("Quatro")
caso 5
    escreval("Cinco")
outrocaso
    escreval("Número Inválido!!!")
fimescolha

fimalgoritmo
