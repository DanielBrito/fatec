algoritmo "ex39"
// Função :
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
idade, grupo: inteiro
nome, grupoRisco: caractere
inicio
// Seção de Comandos 
escreva("Digite o nome: ")
leia(nome)
escreva("Digite a idade: ")
leia(idade)
escreval("Informe o Grupo de risco: ")
escreval("(B)aixo / (M)édio / (A)lto ")
leia(grupoRisco)

se (idade >= 17) e (idade <= 70) entao

se idade <= 20 entao
    escolha grupoRisco
        caso "B"
            grupo <- 1
        caso "M"
            grupo <- 2
        caso "A"
            grupo <- 3
    fimescolha
senao
    se idade <= 24 entao
        escolha grupoRisco
            caso "B"
                grupo <- 2
            caso "M"
                grupo <- 3
            caso "A"
                grupo <- 4
        fimescolha
    senao
        se idade <= 34 entao
            escolha grupoRisco
                caso "B"
                    grupo <- 3
                caso "M"
                    grupo <- 4
                caso "A"
                    grupo <- 5
            fimescolha
        senao
            se idade <= 64 entao
                escolha grupoRisco
                    caso "B"
                        grupo <- 4
                    caso "M"
                        grupo <- 5
                    caso "A"
                        grupo <- 6
                fimescolha
            senao
                escolha grupoRisco
                    caso "B"
                        grupo <- 2
                    caso "M"
                        grupo <- 3
                    caso "A"
                        grupo <- 4
                fimescolha
            fimse
        fimse
    fimse
fimse

senao
    escreval("Idade fora da cobertura!")
fimse

escreval("Nome: ",nome)
escreval("Idade: ",idade)
escreval("Categoria: ",grupo)

fimalgoritmo
