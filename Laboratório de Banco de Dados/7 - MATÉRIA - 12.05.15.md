	# UNIÃO EXTERNA (OUTER JOIN) #

Quando uma linha não satisfaz a condição de união entre as tabelas,
a linha não será mostrada.

Há três tipos de união externa:

	- LEFT OUTER JOIN

	- RIGHT OUTER JOIN

	- FULL OUTER JOIN


-> LEFT OUTER JOIN

A união pela esquerda incluirá linhas da primeira tabela na expressão de união.

Se colocar a chave estrangeira na primeira tabela, terá o resultado equivalente
ao INNER JOIN.

	EX.: SELECT cd.cod_cd, cd.nome_cd, grav.cod_grav, grav.nome_grav
	     FROM cd LEFT OUTER JOIN gravadora
             ON cd.cod_grav = grav.cod_grav;

