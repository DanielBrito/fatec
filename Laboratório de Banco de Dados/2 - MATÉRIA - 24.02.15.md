## FUN��ES STRING ##

Ferramentas utilizadas para manipula��o customizada da base de dados.

- LOWER(): converter a base em caracteres min�sculos

	Ex.: SELECT cod_cd, LOWER(nome_cd)
	     FROM cd
             WHERE preco_venda < 0;

	Ex.: SELECT cod_musica, LOWER(nome_musica)
             FROM musica
             WHERE duracao BETWEEN 2 AND 4;

D1: Converter dados dos autores em min�sculo de in�cio com vogal


D2: Converter dados das gravadoras em min�sculo das gravadoras pares


- UPPER(): converter a base em caracteres mai�sculos
	
	EX.: SELECT *, UPPER(nome_cd)
             FROM cd
             WHERE preco_venda >= 0;

	EX.: SELECT UPPER(nome_musica), duracao
             FROM musica
             WHERE cod_musica%2 = 1;

D1: Apresente nome da gravadora em min�sculo e demais campos em mai�sculo.	


## FILTROS ##

- Operadores relacionais:

Utiliza-se cl�usula WHERE com condi��es relacionais.

OPERADOR	CONDI��O

=		musica = 1
<		preco < 10
<=		duracao <= 3
>		gravadora > 2
>=		autor >= 4
<>		faixa <> 5

Sintaxe:

SELECT [*|coluna]
FROM tabela
WHERE condi��o;

Onde condi��o requer:

coluna	operador  valor

______________________________________________________________________________________

- EXERC�CIO -

SELECT *
FROM musica
WHERE cod_musica = 1;

SELECT *
FROM cd
WHERE preco_venda < 10;

SELECT *
FROM musica
WHERE duracao <= 3;

SELECT *
FROM gravadora
WHERE cod_gravadora > 2;

SELECT *
FROM autor
WHERE cod_autor >= 4;

SELECT *
FROM faixa
WHERE cod_faixa <> 5

______________________________________________________________________________________

## OPERADORES L�GICOS ##

- AND

COND1	COND2	=

V	V	V
V	F	F
F	V	F
F	F	F

- OR

COND1	COND2	=

V	V	V
V	F	V
F	V	V
F	F	F

- NOT

COND	=

V	F
F	V


Exe1 - Quais m�sicas com dura��o na faixa 2 e 3 (2.00 at� 3.59)?

SELECT *
FROM musica duracao >= 2 AND duracao < 4;


Exe2 - Quais m�sicas com dura��o menor que 2 e maior que 3?

SELECT *
FROM musica 
WHERE duracao < 2 OR duracao > 3;


Exe3 - Quais CDs com pre�o negativo e maior que 28.00?

SELECT *
FROM musica
WHERE preco_venda < 0 OR preco_venda > 28.00;

______________________________________________________________________________________

## OPERADORES ESPECIAIS ##

- BETWEEN: Simplifica��o da condi��o AND.


Exe1 - Quais CDs com data de lan�amento no s�culo XX?

SELECT *
FROM cd
WHERE data_lancamento BETWEEN '1901-01-01' AND '2000-31-12';


Exe2 - Quais Cds com pre�o entre 10.00 e 25.00?


- IN: Permite comparar o valor de uma coluna com um conjunto de valores. Substitui 
      uma s�rie de compara��es seguidas da cl�usula OR.

	EX.: SELECT *
             FROM autor
             WHERE cod_autor IN(1,5,7);


	EX.: SELECT nome_musica, duracao
	     FROM musica
             WHERE cod_musica IN(1,3,5,7,9,11,13,17,19,23,27);


Exe1 - Quais as m�sicas das faixas 1,4,10,14,16?


- LIKE: Podemos comparar cadeias de caracteres utilizando compara��o com:

	- caracter %: substitui 0,1 ou mais char
	- caracter _: substitui 1 char

EXPRESS�O		EXPLICA��O

LIKE 'E%'		m�sica que inicie por 'E'
LIKE '%0'		autor que termine por 'O'
LIKE '%i%'		cd que tenha letra 'i'
LIKE 'E _ _'		gravadora com 3 letras, 1� 'E'
LIKE '_ _ _ _ L'	cd com 6 letras , �ltima 'L'


- IS NULL: retorna colunas que n�o tenham dados.

	ATEN��O: Verificar se na estrutura a constraint � NULL!

	EX.: SELECT *
             FROM gravadora
             WHERE endereco IS NULL;

Obs.: Muito utilizaso na jun��o de tabelas com RIGHT/LEFT OUTER JOIN; conjunto exce��o;


Exe1 - Modificar a estrutura da gravadora

	endereco NULL
	ALTER TABLE gravadora
	ALTER COLUMN endereco varchar(255) NULL;