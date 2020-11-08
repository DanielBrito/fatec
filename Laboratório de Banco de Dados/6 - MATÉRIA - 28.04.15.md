	# UNI�O DE TABELAS #

Para que se possa pesquisar mai de uma tabela utilizado v�rio SELECT's.

Pode-se fazer tr�s opera��es:

- UNI�O (UNION/UNION ALL);

- INTERSEC��O (INTERSECT);

- EXCE��O (EXCEPTION).

Regra b�sica: utilizar quantidade de colunas e tipos de dados iguais, simultaneamente.

	SINTAXE:

	SELECT col11, col12
	FROM tabela
   UNION
	SELECT col21, col22
	FROM tabela2;

-> UNION: Uni�o de tabelas onde h� o agrupamento dos dados da primeira coluna.



	- EXERC�CIO 1 -

Apresente os autores e m�sicas.
	
	SELECT cod_autor, nome_autor
	FROM autor
   UNION
	SELECT cod_musica, nome_musica
	FROM musica;



-> UNION ALL: Agrupar por conjuntos.

	SELECT cod_autor, nome_autor
	FROM autor
   UNION ALL
	SELECT cod_musica, nome_musica
	FROM musica;



-> INTERSECT: A cl�usula permite checar as linhas que est�o em ambos SELECT's.

