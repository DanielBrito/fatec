algoritmo "Loteria Esportiva"
// Autor : Daniel Brito
// Data : 13/09/2012
// Se��o de Declara��es:

//Escrever um algoritmo que l� um vetor G(13) que � o gabarito de um teste de
//loteria esportiva, contendo os valores 1 (coluna 1), 2 (coluna 2) e 3 (coluna
//do meio). Ler, a seguir, para cada apostador, o n�mero de seu cart�o e um vetor
//Resposta R(13). Verificar para cada apostador o n�mero de acertos e escrever o
//n�mero do apostador e seu n�mero de acertos. Se tiver 13 acertos, acrescentar
//a mensagem: "GANHADOR, PARAB�NS!".

var
vet_gabarito:vetor[1..13,1..3]de inteiro // alterar para gabarito
vet_resposta:vetor[1..14,1..3]de inteiro // alterar para resposta
ind_linha,ind_coluna, resultado, num_acertos, num_cartao:inteiro

inicio
escreval("|||||||||||||||||||| LOTERIA ESPORTIVA ||||||||||||||||||||")
escreval
escreval("Legenda:")
escreval("Digite [1] para 'coluna1' - 'Vit�ria do time da casa'.")
escreval("Digite [3] para 'coluna2' - 'Empate'.")
escreval("Digite [2] para 'coluna3' - 'Vit�ria do time visitante'.")
escreval
escreva("- GABARITO:")
escreval
para ind_linha de 1 ate 13 passo 1 faca
   escreva("Digite o resultado do ",ind_linha,"� jogo: ")
   leia(resultado)
   vet_gabarito[ind_linha, resultado] <-1
fimpara

limpatela

escreval("|||||||||||||||||||| LOTERIA ESPORTIVA ||||||||||||||||||||")
escreval
escreval("Legenda:")
escreval("Digite [1] para 'coluna1' - 'Vit�ria do time da casa'.")
escreval("Digite [3] para 'coluna2' - 'Empate'.")
escreval("Digite [2] para 'coluna3' - 'Vit�ria do time visitante'.")
escreval
ind_linha<-0

escreva("DIGITE O N�MERO DO SEU CART�O: ")
leia(num_cartao)
escreval

escreval("- APOSTA:")
para ind_linha de 1 ate 13 passo 1 faca
   escreva("Digite o resultado do ",ind_linha,"� jogo: ")
   leia(resultado)
   vet_resposta[ind_linha, resultado]<-1
fimpara

limpatela

escreval("|||||||||||||||||||| LOTERIA ESPORTIVA ||||||||||||||||||||")
escreval
escreva("- RESULTADO:")
escreval
para ind_linha de 1 ate 13 passo 1 faca
   para ind_coluna de 1 ate 3 passo 1 faca
      se (vet_gabarito[ind_linha,ind_coluna]=1) e (vet_resposta[ind_linha,ind_coluna]=1) entao
         num_acertos <- num_acertos + 1
      fimse
   fimpara
fimpara
escreval
se num_acertos = 13 entao
   escreva("GANHADOR, PARAB�NS! Voc� acertou o resultado dos 13 jogos!")
   escreval
senao
   escreva("Jogador n�", num_cartao,", voc� acertou o resultado de ", num_acertos, " jogo(s).")
   escreval
fimse
fimalgoritmo
