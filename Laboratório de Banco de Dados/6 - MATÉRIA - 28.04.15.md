	# UNIÃO DE TABELAS #

Para que se possa pesquisar mai de uma tabela utilizado vário SELECT's.

Pode-se fazer três operações:

- UNIÃO (UNION/UNION ALL);

- INTERSECÇÃO (INTERSECT);

- EXCEÇÃO (EXCEPTION).

Regra básica: utilizar quantidade de colunas e tipos de dados iguais, simultaneamente.

	SINTAXE:

	SELECT col11, col12
	FROM tabela
   UNION
	SELECT col21, col22
	FROM tabela2;

-> UNION: União de tabelas onde há o agrupamento dos dados da primeira coluna.



	- EXERCÍCIO 1 -

Apresente os autores e músicas.
	
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



-> INTERSECT: A cláusula permite checar as linhas que estão em ambos SELECT's.

