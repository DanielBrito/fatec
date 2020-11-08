algoritmo "ex12"
// Função : O custo ao consumidor de um carro novo é a soma do custo de fábrica com a percentagem do distribuidor e dos
            // impostos (aplicados, primeiro os impostos sobre o custo de fábrica, e depois a percentagem do distribuidor sobre o
            // resultado). Supondo que a percentagem do distribuidor seja de 28% e os impostos 45%. Escrever um algoritmo que
            // leia o custo de fábrica de um carro e informe o custo ao consumidor do mesmo.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
custoFabrica, custoFinal: real

inicio
// Seção de Comandos

escreva("Informe o custo de fábrica do veículo: ")
leia(custoFabrica)
custoFinal <- custoFabrica + (0.28 * custoFabrica) + (0.45 * custoFabrica)
custoFinal <- custoFinal + (0.45 * custoFinal)
escreval("O custo para o consumidor final é de: ",custoFinal)



fimalgoritmo
