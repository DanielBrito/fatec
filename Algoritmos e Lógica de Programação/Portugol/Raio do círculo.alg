algoritmo "Calcula �rea do circulo"
// Fun��o :
// Autor :
// Data : 21/8/2012
// Se��o de Declara��es 
var area, raio: real

inicio
// Se��o de Comandos

escreva("Entre com o raio do c�rculo: ")
leia (raio)

se raio > 0 entao
   area <-PI*(raio^2)
   escreva("A �rea do c�rculo de raio",raio," �",area)
fimse

se raio <=0 entao
   escreva("Raio n�o pode ser nulo ou negativo!")
fimse

fimalgoritmo
