algoritmo "ex28"
// Função : Escrever um algoritmo para uma empresa que decide dar um reajuste a seus 584 funcionários de acordo com os
            // seguintes critérios:
               // a) 50% para aqueles que ganham menos do que três salários mínimos;
               // b) 20% para aqueles que ganham entre três até dez salários mínimos;
               // c) 15% para aqueles que ganham acima de dez até vinte salários mínimos;
               // d) 10% para os demais funcionários.
            // Leia o nome do funcionário, seu salário e o valor do salário mínimo. Calcule o seu novo salário reajustado. Escrever o
               // nome do funcionário, o reajuste e seu novo salário. Calcule quanto à empresa vai aumentar sua folha de pagamento.
// Autor :
// Data : 1/12/2010
// Seção de Declarações 
var
salarioMinimo, novoSalario, reajuste, reajusteTotal, folha, novaFolha, calc, salario: real
nome, opc: caractere
x: inteiro

inicio
// Seção de Comandos
opc <- "x"
escreval("<><><><><> Sistema de reajuste salarial <><><><><>")
escreva("Digite o valor atual do salário mínimo: ")
leia(salarioMinimo)
para x de 1 ate 584 faca
    limpatela
    escreva("Digite o nome: ")
    leia(nome)
    escreva("Digite o salário: ")
    leia(salario)
    calc <- salarioMinimo * 3
    se salario < calc entao
        reajuste <- 0.50 // Reajuste de 50%
        reajusteTotal <- reajuste + (reajuste * salario) // Valor total de reajuste
        folha <- folha + salario // Folha de pagamento antiga
        novoSalario <- salario + (reajuste * salario) // Salário reajustado
        novaFolha <- novaFolha + novoSalario // Nova folha de pagamento
        
        limpatela
        escreval(">>> Nome: ",nome)
        escreval(">>> Reajuste = 50%: ",reajuste*salario)
        escreval(">>> Novo salário: ",novoSalario)
        escreval(">>> Tecle enter para continuar...")
        leia(opc)
    senao
        calc <- salarioMinimo * 10
        se salario <= calc entao
            reajuste <- 0.20 // Reajuste de 20%
            reajusteTotal <- reajuste + (reajuste * salario) // Valor total de reajuste
            folha <- folha + salario // Folha de pagamento antiga
            novoSalario <- salario + (reajuste * salario) // Salário reajustado
            novaFolha <- novaFolha + novoSalario // Nova folha de pagamento

            limpatela
            escreval(">>> Nome: ",nome)
            escreval(">>> Reajuste = 20%: ",reajuste*salario)
            escreval(">>> Novo salário: ",novoSalario)
            escreval(">>> Tecle enter para continuar...")
            leia(opc)
        senao
            calc <- salarioMinimo * 20
            se salario <= calc entao
                reajuste <- 0.15 // Reajuste de 15%
                reajusteTotal <- reajuste + (reajuste * salario) // Valor total de reajuste
                folha <- folha + salario // Folha de pagamento antiga
                novoSalario <- salario + (reajuste * salario) // Salário reajustado
                novaFolha <- novaFolha + novoSalario // Nova folha de pagamento

                limpatela
                escreval(">>> Nome: ",nome)
                escreval(">>> Reajuste = 15%: ",reajuste*salario)
                escreval(">>> Novo salário: ",novoSalario)
                escreval(">>> Tecle enter para continuar...")
                leia(opc)
            senao
                reajuste <- 0.10 // Reajuste de 10%
                reajusteTotal <- reajuste + (reajuste * salario) // Valor total de reajuste
                folha <- folha + salario // Folha de pagamento antiga
                novoSalario <- salario + (reajuste * salario) // Salário reajustado
                novaFolha <- novaFolha + novoSalario // Nova folha de pagamento

                limpatela
                escreval(">>> Nome: ",nome)
                escreval(">>> Reajuste = 10%: ",reajuste*salario)
                escreval(">>> Novo salário: ",novoSalario)
                escreval(">>> Tecle enter para continuar...")
                leia(opc)
            fimse
        fimse
    fimse
fimpara
escreval("")
escreval("A empresa aumentou a folha de pagamento em:",novaFolha - folha," Reais")

fimalgoritmo
