	# UNI�O EXTERNA (OUTER JOIN) #

Quando uma linha n�o satisfaz a condi��o de uni�o entre as tabelas,
a linha n�o ser� mostrada.

H� tr�s tipos de uni�o externa:

	- LEFT OUTER JOIN

	- RIGHT OUTER JOIN

	- FULL OUTER JOIN


-> LEFT OUTER JOIN

A uni�o pela esquerda incluir� linhas da primeira tabela na express�o de uni�o.

Se colocar a chave estrangeira na primeira tabela, ter� o resultado equivalente
ao INNER JOIN.

	EX.: SELECT cd.cod_cd, cd.nome_cd, grav.cod_grav, grav.nome_grav
	     FROM cd LEFT OUTER JOIN gravadora
             ON cd.cod_grav = grav.cod_grav;

