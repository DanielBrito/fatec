algoritmo "Calcula área do circulo"
// Função :
// Autor :
// Data : 21/8/2012
// Seção de Declarações 
var area, raio: real

inicio
// Seção de Comandos

escreva("Entre com o raio do círculo: ")
leia (raio)

se raio > 0 entao
   area <-PI*(raio^2)
   escreva("A área do círculo de raio",raio," é",area)
fimse

se raio <=0 entao
   escreva("Raio não pode ser nulo ou negativo!")
fimse

fimalgoritmo
