## VISÕES (VIEW) ##

Modelo especial de enxergar os dados de uma ou mais tabelas.

Objeto de banco criado a partir do comando SELECT, é armazenado no dicionário de dados e possui a mesma estrutura de uma tabela com exceção de linhas de visão.

Seus dados sempre estarão atualizados.


-> Por que utilizar? 

	- restringir acesso aos dados
	- busca complexa torna-se simples
	- independência de dados
	- dados mostrados de maneira diferente
	- eliminação de códigos


-> Classificação

	-> Simples
	
	   - dados extraídos de uma tabela
	   - sem funções
	   - sem agrupamento
	   - comandos DML


	-> Complexas
	   
	   - dados extraídos de várias tabelas
	   - pode conter função
	   - pode conter agrupamento


-> Criação de visão:

	SINTAXE: CREATE VIEW nome AS
                 SUBQUERY,

	EX.: CREATE VIEW VCD AS
	     SELECT codigo_cd, nome_cd, preco_venda
	     FROM cd;


	     CREATE VIEW vmusica(codigo, nome, duracao) AS
	     SELECT codigo_musica, nome_musica, duracao
	     FROM musica;



* DESAFIO *

-> Apresente uma VIEW que:

	1) Permita aumentar os preços em 25%
	
	2) Apresente as gravadoras, nomes dos CD's e preços dos CD's da mesma gravadora do CD 2 
	   que tenham o preço maior que CD 5.
	
	3) Quais os CDs e faixas das músicas que tenham 'AMOR'?

	4) Qual o maior preco de cada gravadora, onde seu maior preco seja menor 
	   que a média dos preços dos CDs que tenham gravadora?

