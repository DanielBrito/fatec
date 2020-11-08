## SUBQUERIES ##

Uma busca dentro de outra.

	SINTAXE:
 	SELECT coluna (Obs.: 1° SELECT - O que será visto)
	FROM tabela
	WHERE coluna expressão comando em linha de grupo (SELECT coluna FROM tabela WHERE condição) (Obs.: 2° SELECT - filtros lógicos)


	EX.: SELECT nome_cd, preco_venda
	     FROM cd
	     WHERE preco_venda > (SELECT AVG(preco_venda) FROM cd);


-> DESAFIO: Quais as gravadoras e CD's (nome) com preço tenham o preço maior que a média dos preços por gravadora.

-> Exercício: Quais as músicas do CD 1?  

-> Qual a gravadora das músicas do CD 1?