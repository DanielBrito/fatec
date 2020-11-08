algoritmo "semnome"
// Função :
// Autor :
// Data : 29/04/2013
// Seção de Declarações 
var
   notas:Vetor[1..10] de real
   mediaSala: real
   acima, abaixo : inteiro
   cont : inteiro
inicio
   mediaSala := 0
   acima := 0
   abaixo := 0
   cont := 1
   
   enquanto cont <= 10 faca
     escreva("Informe a nota do aluno ", cont, "= ")
     leia(notas[cont])
     mediaSala:= mediaSala + notas[cont]
     cont:=cont + 1
   fimenquanto
   
   mediaSala := mediaSala / 10
   
   cont := 1
   enquanto cont <= 10 faca
     se (notas[cont] > mediaSala) entao
        acima := acima + 1
     senao
          abaixo:=  abaixo+1
     fimse
     cont:= cont + 1
   fimenquanto
   escreval("media sala:", mediaSala)
   escreval("acima da media:", acima)
   escreval("abaixo ou igual a media:", abaixo)

fimalgoritmo
