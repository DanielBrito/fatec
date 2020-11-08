## SUBQUERIES ##

Uma busca dentro de outra.

	SINTAXE:
 	SELECT coluna (Obs.: 1� SELECT - O que ser� visto)
	FROM tabela
	WHERE coluna express�o comando em linha de grupo (SELECT coluna FROM tabela WHERE condi��o) (Obs.: 2� SELECT - filtros l�gicos)


	EX.: SELECT nome_cd, preco_venda
	     FROM cd
	     WHERE preco_venda > (SELECT AVG(preco_venda) FROM cd);


-> DESAFIO: Quais as gravadoras e CD's (nome) com pre�o tenham o pre�o maior que a m�dia dos pre�os por gravadora.

-> Exerc�cio: Quais as m�sicas do CD 1?  

-> Qual a gravadora das m�sicas do CD 1?