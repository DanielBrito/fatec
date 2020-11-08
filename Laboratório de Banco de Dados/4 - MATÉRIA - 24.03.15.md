## VIS�ES (VIEW) ##

Modelo especial de enxergar os dados de uma ou mais tabelas.

Objeto de banco criado a partir do comando SELECT, � armazenado no dicion�rio de dados e possui a mesma estrutura de uma tabela com exce��o de linhas de vis�o.

Seus dados sempre estar�o atualizados.


-> Por que utilizar? 

	- restringir acesso aos dados
	- busca complexa torna-se simples
	- independ�ncia de dados
	- dados mostrados de maneira diferente
	- elimina��o de c�digos


-> Classifica��o

	-> Simples
	
	   - dados extra�dos de uma tabela
	   - sem fun��es
	   - sem agrupamento
	   - comandos DML


	-> Complexas
	   
	   - dados extra�dos de v�rias tabelas
	   - pode conter fun��o
	   - pode conter agrupamento


-> Cria��o de vis�o:

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

	1) Permita aumentar os pre�os em 25%
	
	2) Apresente as gravadoras, nomes dos CD's e pre�os dos CD's da mesma gravadora do CD 2 
	   que tenham o pre�o maior que CD 5.
	
	3) Quais os CDs e faixas das m�sicas que tenham 'AMOR'?

	4) Qual o maior preco de cada gravadora, onde seu maior preco seja menor 
	   que a m�dia dos pre�os dos CDs que tenham gravadora?

