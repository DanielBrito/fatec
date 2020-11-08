algoritmo "ex7"
// Função : Ler uma temperatura em graus Celsius e apresentá-la convertida em graus Fahrenheit. A fórmula de conversão é:
            // F=(9*C+160) / 5, sendo F a temperatura em Fahrenheit e C a temperatura em Celsius.
// Autor :
// Data : 30/11/2010
// Seção de Declarações 
var
cel, far: real

inicio
// Seção de Comandos
escreval("=-=-=-=-=- Tabela de conversão: Celcius -> Fahrenheit -=-=-=-=-=")
escreva("Digite a temperatura em Celcius: ")
leia(cel)
far <- (9*cel+160)/5
escreval("A nova temperatura é: ",far,"ºF")
 
fimalgoritmo
