algoritmo "ex22"
// Função : Faça um algoritmo que receba o preço de custo e o preço de venda de 40 produtos. Mostre como resultado se
            // houve lucro, prejuízo ou empate para cada produto. Informe media de preço de custo e do preço de venda.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
x: inteiro
precoVenda, precoCusto: real
mediaCusto, mediaVenda: real

inicio
// Seção de Comandos 
para x de 1 ate 40 faca
    limpatela
    escreva("Digite o preço de custo: ")
    leia(precoCusto)
    mediaCusto <- mediaCusto + precoCusto
    escreva("Digite o preço de venda: ")
    leia(precoVenda)
    mediaVenda <- mediaVenda + precoVenda
    
    se precoVenda < precoCusto entao
        escreval("Houve prejuízo na venda")
    senao
        se precoVenda = precoCusto entao
            escreval("Houve empate na venda")
        fimse
        se precoVenda > precoCusto entao
            escreval("Houve lucro na venda")
        fimse
    fimse
    
fimpara

limpatela
escreval("A média de preço de custo foi: ",mediaCusto/40)
escreval("A média de preço de venda foi: ",mediaVenda/40)

fimalgoritmo
