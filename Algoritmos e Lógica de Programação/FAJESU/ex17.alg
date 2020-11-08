algoritmo "ex17"
// Função : Ler 80 números e ao final informar quantos número(s) est(á)ão no intervalo entre 10 (inclusive) e 150 (inclusive).
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
x, num, intervalo: inteiro

inicio
// Seção de Comandos
para x de 1 ate 80 faca
     escreva("Digite um número: ")
     leia(num)
     se num >= 10 entao
        se num <= 150 entao
           intervalo <- intervalo + 1
        fimse
     fimse
fimpara

escreval("Ao total, foram digitados",intervalo,"números no intervalo entre 10 e 150")
 
fimalgoritmo
