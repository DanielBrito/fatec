algoritmo "semnome"
// Função :
// Autor :
// Data : 29/04/2013
// Seção de Declarações 
var
   notas:Vetor[1..10, 1..4] de real
   mediaSala, mediaAluno: real
   acima, abaixo : inteiro
   cont,cont2 : inteiro
inicio
   mediaSala := 0
   acima := 0
   abaixo := 0
   cont := 1

   
   enquanto cont <= 10 faca
     cont2 :=1
     mediaAluno:=0;
     enquanto cont2 <= 3 faca
          escreva("Informe a nota do aluno ", cont, " da prova P", cont2 ,"= ")
          leia(notas[cont,cont2])
          mediaAluno:= mediaAluno + notas[cont,cont2]
          cont2 := cont2 + 1
     fimenquanto
     notas[cont,4] := (mediaAluno/3)
     escreval("Media do aluno:", notas[cont,4])
     
     mediaSala:= mediaSala + notas[cont,4]
     cont:=cont + 1
   fimenquanto
   
   mediaSala := mediaSala / 10
   
   cont := 1
   enquanto cont <= 10 faca
     se (notas[cont,4] > mediaSala) entao
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
