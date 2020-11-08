algoritmo "Loteria Esportiva"
// Autor : Daniel Brito
// Data : 13/09/2012
// Seção de Declarações:

//Escrever um algoritmo que lê um vetor G(13) que é o gabarito de um teste de
//loteria esportiva, contendo os valores 1 (coluna 1), 2 (coluna 2) e 3 (coluna
//do meio). Ler, a seguir, para cada apostador, o número de seu cartão e um vetor
//Resposta R(13). Verificar para cada apostador o número de acertos e escrever o
//número do apostador e seu número de acertos. Se tiver 13 acertos, acrescentar
//a mensagem: "GANHADOR, PARABÉNS!".

var
vet_gabarito:vetor[1..13,1..3]de inteiro // alterar para gabarito
vet_resposta:vetor[1..14,1..3]de inteiro // alterar para resposta
ind_linha,ind_coluna, resultado, num_acertos, num_cartao:inteiro
x: inteiro

inicio
x<-1
enquanto x=1 faca

   escreval("|||||||||||||||||||| LOTERIA ESPORTIVA ||||||||||||||||||||")
   escreval
   escreval("Legenda:")
   escreval("Digite [1] para 'coluna1' - 'Vitória do time da casa'.")
   escreval("Digite [3] para 'coluna2' - 'Empate'.")
   escreval("Digite [2] para 'coluna3' - 'Vitória do time visitante'.")
   escreval
   escreva("- GABARITO:")
   escreval

   ind_linha<-0

   para ind_linha de 1 ate 13 passo 1 faca
      escreva("Digite o resultado do ",ind_linha,"º jogo: ")
      leia(resultado)
      se(resultado<=0) ou (resultado>=4) entao
         escreval("NÚMERO INVÁLIDO!")
      fimalgoritmo
   senao
      vet_gabarito[ind_linha, resultado] <-1
   fimse
fimpara

limpatela

escreval("|||||||||||||||||||| LOTERIA ESPORTIVA ||||||||||||||||||||")
escreval
escreval("Legenda:")
escreval("Digite [1] para 'coluna1' - 'Vitória do time da casa'.")
escreval("Digite [3] para 'coluna2' - 'Empate'.")
escreval("Digite [2] para 'coluna3' - 'Vitória do time visitante'.")
escreval

ind_linha<-0

escreva("DIGITE O NÚMERO DO SEU CARTÃO: ")
leia(num_cartao)
se num_cartao=0 entao
   escreval("NÚMERO INVÁLIDO!")
fimalgoritmo
senao
escreval

escreval("- APOSTA:")
para ind_linha de 1 ate 13 passo 1 faca
   escreva("Digite o resultado do ",ind_linha,"º jogo: ")
   leia(resultado)
   se (resultado<=0) ou (resultado>=4) entao
      escreval("NÚMERO INVÁLIDO!")
   fimalgoritmo
senao
   vet_resposta[ind_linha, resultado]<-1

fimse
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
escreva("GANHADOR, PARABÉNS! Você acertou o resultado dos 13 jogos!")
escreval
escreval
escreva("Para jogar novamente digite [1], para sair digite [2]: ")
leia (x)
escreval
senao
escreva("Jogador nº", num_cartao,", você acertou o resultado de ", num_acertos, " jogo(s).")
escreval
escreval
escreva("Para jogar novamente digite [1], para sair digite [2]: ")
leia (x)
limpatela
fimse
fimse
fimenquanto

fimalgoritmo

