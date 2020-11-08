algoritmo "ex8"
// Função : Elaborar um algoritmo que efetue a apresentação do valor da conversão em real (R$) de um valor lido em dólar
            // (US$). O algoritmo deverá solicitar o valor da cotação do dólar e também a quantidade de dólares disponíveis com o usuário.
// Autor :
// Data : 30/11/2010
// Seção de Declarações 
var
rs, us, cotacao, dolaDisponivel: real

inicio
// Seção de Comandos
escreval("========= Cotação do Dólar ==========")
escreva("Qual a cotação atual do dólar? ")
leia(cotacao)
escreva("Quantos dólares você possui? ")
leia(us)
rs <- us/cotacao
limpatela
escreval(us," Dólares equivalem á: ",rs," R$")
 
fimalgoritmo
