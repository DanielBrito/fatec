CREATE DATABASE daniel_cd

USE daniel_cd

CREATE TABLE musica(
	cod_musica INT NOT NULL,
	nome_musica VARCHAR(60) NOT NULL,
	duracao DECIMAL(4,2) NOT NULL
);

CREATE TABLE autor(
	cod_autor INT NOT NULL PRIMARY KEY,
	nome_autor VARCHAR(60) NOT NULL
);

CREATE TABLE musica_autor(
	cod_musica INT NOT NULL,
	cod_autor INT NOT NULL,
);

CREATE TABLE faixa(
	cod_cd INT NOT NULL,
	cod_musica INT NOT NULL,
	numero_faixa INT NOT NULL PRIMARY KEY
);

CREATE TABLE item_cd(
	cod_cd INT NOT NULL,
	numero_faixa INT NOT NULL,
	cod_faixa INT NOT NULL
);

CREATE TABLE gravadora(
	cod_gravadora INT NOT NULL PRIMARY KEY,
	nome_gravadora VARCHAR(60) NOT NULL,
	endereco VARCHAR(60) NOT NULL,
	telefone INT NOT NULL,
	contato VARCHAR(60) NOT NULL,
	url VARCHAR(60) NOT NULL
);

CREATE TABLE cd_categoria(
	cod_categoria INT NOT NULL PRIMARY KEY,
	menor_preco DECIMAL NOT NULL,
	maior_preco DECIMAL NOT NULL
);

CREATE TABLE cd(
	cod_cd INT NOT NULL PRIMARY KEY,
	cod_gravadora INT NOT NULL,
	nome_cd VARCHAR(60) NOT NULL,
	preco_venda DECIMAL NOT NULL,
	data_lancamento DATETIME NOT NULL,
	cd_indicado INT NOT NULL
);

ALTER TABLE musica
	ADD PRIMARY KEY (cod_musica);

ALTER TABLE musica_autor
	ADD FOREIGN KEY (cod_musica)
	REFERENCES musica;

ALTER TABLE musica_autor
	ADD FOREIGN KEY (cod_autor)
	REFERENCES autor;

ALTER TABLE faixa
	ADD FOREIGN KEY (cod_cd)
	REFERENCES cd;

ALTER TABLE faixa
	ADD FOREIGN KEY (cod_musica)
	REFERENCES musica;

ALTER TABLE item_cd
	ADD FOREIGN KEY (cod_cd)
	REFERENCES cd;

ALTER TABLE item_cd
	ADD FOREIGN KEY (numero_faixa)
	REFERENCES faixa;

ALTER TABLE item_cd
	ADD FOREIGN KEY (cod_faixa)
	REFERENCES faixa;

ALTER TABLE cd
	ADD FOREIGN KEY (cod_gravadora)
	REFERENCES gravadora;

ALTER TABLE cd
	ADD FOREIGN KEY (cd_indicado)
	REFERENCES cd;

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (1, 'Ser�', 2.28);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (2, 'Ainda � cedo', 3.55);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (3, 'Gera��o Coca-Cola', 2.20);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (4, 'Eduardo e M�nica', 4.32);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (5, 'Tempo Perdido', 5.00);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (6, '�ndios', 4.23);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (7, 'Que pa�s � este', 3.04);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (8, 'Faroeste Caboclo', 9.03);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (9, 'H� Tempos', 3.16);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (10, 'Pais e Filhos', 5.06);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (11, 'Meninos e Meninas', 3.22);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (12, 'Vento no litoral', 6.06);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (13, 'Perfei��o', 4.35);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (14, 'Giz', 3.20);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (15, 'Dezesseis', 5.28);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (16, 'Antes das Seis', 3.09);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (17, 'Meninos, Eu vi', 3.25);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (18, 'Eu te amo', 3.06);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (19, 'Plano na Mangueira', 2.23);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (20, 'A Violeira', 2.54);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (21, 'Anos dourados', 2.56);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (22, 'Olha, Maria', 3.55);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (23, 'Biscate', 3.20);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (24, 'Retrato em Preto e Branco', 3.03);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (25, 'Falando de amor', 3.20);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (26, 'Pois �', 2.46);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (27, 'Noite dos Mascarados', 2.42);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (28, 'Sabi�', 3.20);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (29, 'Imagina', 2.52);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (30, 'Bate-Boca', 4.41);

INSERT INTO gravadora
VALUES (1, 'EMI', 'ROD. DUTRA, KM 29.08', 55659856, '8965-7894', 'emi@emi-music.com.br');

INSERT INTO gravadora
VALUES (2, 'POLYGRAM', 'ROD. IMIGRANTES, KM 29.08', 99659856, '7595-7894', 'polygram@music.com.br');

INSERT INTO gravadora
VALUES (3, 'BMG', 'ROD. ANCHIETA, KM 289.8', 99654456, '7595-7894', 'bmg@music.com.br');

INSERT INTO gravadora
VALUES (4, 'SOM LIVRE', 'AV. SAO JOSE, KM 289.8', 99657806, '7895-7004', 'somlivre@music.com.br');

INSERT INTO gravadora
VALUES (5, 'EPIC', 'AV. ALDA, N 89', 58793321, '8965-4789', 'epic@music.com.br');

INSERT INTO gravadora
VALUES (6, 'IMMORTAL', 'AV. BRASIL, N 90', 52158966, '5489-9632', 'immortal@music.com.br');

INSERT INTO gravadora
VALUES (7, 'VIBE', 'RUA AUGUSTA, N 87', 21458796, '5478-3210', 'vibe@music.com.br');

INSERT INTO gravadora
VALUES (8, 'BRISA', 'RUA JAMAICA, N 74', 21586985, '1236-5896', 'brisa@music.com');

INSERT INTO cd
VALUES (1, 1, 'Mais do Mesmo', -5.00, 1985-02-03, 1);

INSERT INTO cd
VALUES (2, 3, 'Bate Boca', -15.00, 1999-08-07, 2);

INSERT INTO cd
VALUES (3, 4, 'Elis Regina-Essa Mulher', -18.00, 1986-05-25, 3);

INSERT INTO cd
VALUES (4, 3, 'A forca que nunca seca', 5.25, 1981-07-15, 4);

INSERT INTO cd
VALUES (5, 4, 'Perfil', 20.99, 1987-01-02, 5);

INSERT INTO cd
VALUES (6, 2, 'Barry Manilow Greatest Hits', 25.00, 1958-12-18, 1);

INSERT INTO cd
VALUES (7, 5, 'Listen Without Prejudice', 28.00, 1975-06-11, 7);

INSERT INTO autor
VALUES (1, 'Renato Russo');

INSERT INTO autor
VALUES (2, 'Tom Jobim');

INSERT INTO autor
VALUES (3, 'Chico Buarque');

INSERT INTO autor
VALUES (4, 'Dado Villa-Lobos');

INSERT INTO autor
VALUES (5, 'Marcelo Bonf�');

INSERT INTO autor
VALUES (6, 'Ico Ouro Preto');

INSERT INTO autor
VALUES (7, 'Vin�cius de Moraes');

INSERT INTO musica_autor
VALUES (1, 1);

INSERT INTO musica_autor
VALUES (1, 4);

INSERT INTO musica_autor
VALUES (1, 5);

INSERT INTO musica_autor
VALUES (2, 1);

INSERT INTO musica_autor
VALUES (2, 4);

INSERT INTO musica_autor
VALUES (2, 5);

INSERT INTO musica_autor
VALUES (2, 6);

INSERT INTO musica_autor
VALUES (3, 1);

INSERT INTO musica_autor
VALUES (4, 1);

INSERT INTO musica_autor
VALUES (5, 1);

INSERT INTO musica_autor
VALUES (6, 1);

INSERT INTO musica_autor
VALUES (7, 1);

INSERT INTO musica_autor
VALUES (8, 1);

INSERT INTO musica_autor
VALUES (9, 1);

INSERT INTO musica_autor
VALUES (9, 4);

INSERT INTO musica_autor
VALUES (10, 1);

INSERT INTO musica_autor
VALUES (10, 4);

INSERT INTO musica_autor
VALUES (10, 5);

INSERT INTO musica_autor
VALUES (11, 1);

INSERT INTO musica_autor
VALUES (11, 4);

INSERT INTO musica_autor
VALUES (11, 5);

INSERT INTO musica_autor
VALUES (12, 1);

INSERT INTO musica_autor
VALUES (12, 4);

INSERT INTO musica_autor
VALUES (12, 5);

INSERT INTO musica_autor
VALUES (13, 1);

INSERT INTO musica_autor
VALUES (13, 4);

INSERT INTO musica_autor
VALUES (13, 5);

INSERT INTO musica_autor
VALUES (14, 1);

INSERT INTO musica_autor
VALUES (14, 4);

INSERT INTO musica_autor
VALUES (14, 5);

INSERT INTO musica_autor
VALUES (15, 1);

INSERT INTO musica_autor
VALUES (15, 4);

INSERT INTO musica_autor
VALUES (15, 5);

INSERT INTO musica_autor
VALUES (16, 1);

INSERT INTO musica_autor
VALUES (16, 4);

INSERT INTO musica_autor
VALUES (16, 5);

INSERT INTO musica_autor
VALUES (17, 2);

INSERT INTO musica_autor
VALUES (17, 3);

INSERT INTO musica_autor
VALUES (18, 2);

INSERT INTO musica_autor
VALUES (18, 3);

INSERT INTO musica_autor
VALUES (19, 2);

INSERT INTO musica_autor
VALUES (19, 3);

INSERT INTO musica_autor
VALUES (20, 2);

INSERT INTO musica_autor
VALUES (20, 3);

INSERT INTO musica_autor
VALUES (21, 2);

INSERT INTO musica_autor
VALUES (22, 3);

INSERT INTO musica_autor
VALUES (22, 7);

INSERT INTO musica_autor
VALUES (23, 3);

INSERT INTO musica_autor
VALUES (24, 2);

INSERT INTO musica_autor
VALUES (24, 3);

INSERT INTO musica_autor
VALUES (25, 2);

INSERT INTO musica_autor
VALUES (26, 2);

INSERT INTO musica_autor
VALUES (26, 3);

INSERT INTO musica_autor
VALUES (27, 3);

INSERT INTO musica_autor
VALUES (28, 2);

INSERT INTO musica_autor
VALUES (28, 3);

INSERT INTO musica_autor
VALUES (29, 2);

INSERT INTO musica_autor
VALUES (29, 3);

INSERT INTO musica_autor
VALUES (30, 3);

INSERT INTO faixa
VALUES (1, 1, 1);

INSERT INTO faixa
VALUES (1, 2, 2);

INSERT INTO faixa
VALUES (1, 3, 3);

INSERT INTO faixa
VALUES (1, 4, 4);

INSERT INTO faixa
VALUES (1, 5, 5);

INSERT INTO faixa
VALUES (1, 6, 6);

INSERT INTO faixa
VALUES (1, 7, 7);

INSERT INTO faixa
VALUES (1, 8, 8);

INSERT INTO faixa
VALUES (1, 9, 9);

INSERT INTO faixa
VALUES (1, 10, 10);

INSERT INTO faixa
VALUES (1, 11, 11);

INSERT INTO faixa
VALUES (1, 12, 12);

INSERT INTO faixa
VALUES (1, 13, 13);

INSERT INTO faixa
VALUES (1, 14, 14);

INSERT INTO faixa
VALUES (1, 15, 15);

INSERT INTO faixa
VALUES (1, 16, 16);

INSERT INTO faixa
VALUES (2, 1, 17);

INSERT INTO faixa
VALUES (2, 2, 18);

INSERT INTO faixa
VALUES (2, 3, 19);

INSERT INTO faixa
VALUES (2, 4, 20);

INSERT INTO faixa
VALUES (2, 5, 21);

INSERT INTO faixa
VALUES (2, 6, 22);

INSERT INTO faixa
VALUES (2, 7, 23);

INSERT INTO faixa
VALUES (2, 8, 24);

INSERT INTO faixa
VALUES (2, 9, 25);

INSERT INTO faixa
VALUES (2, 10, 26);

INSERT INTO faixa
VALUES (2, 11, 27);

INSERT INTO faixa
VALUES (2, 12, 28);

INSERT INTO faixa
VALUES (2, 13, 29);

INSERT INTO faixa
VALUES (2, 14, 30);

INSERT INTO cd_categoria
VALUES (1, 10, 20);

INSERT INTO cd_categoria
VALUES (2, 20, 40);

INSERT INTO cd_categoria
VALUES (3, 30, 60);

INSERT INTO cd_categoria
VALUES (4, 11, 22);

INSERT INTO cd_categoria
VALUES (5, 15, 30);

INSERT INTO cd_categoria
VALUES (6, 25, 50);

INSERT INTO cd_categoria
VALUES (7, 21, 42);

INSERT INTO cd_categoria
VALUES (8, 22, 44);

INSERT INTO cd_categoria
VALUES (9, 9, 18);

INSERT INTO cd_categoria
VALUES (10, 5, 10);

'############################### FIM #################################'

SELECT * 
FROM cd
WHERE preco_venda IN (10, 15, 28);

select * from cd;

select nome_cd, data_lancamento
from cd
where data_lancamento between '1905/06/01' AND '2014/01/01'; 

select *
from musica

select nome_musica, duracao
from musica
where duracao between '3' and '9';


select * from autor

select nome_autor from autor like 'a%';

SELECT DATEADD(DAY, 15, data_lancamento), data_lancamento
FROM cd;

SELECT DATEADD(QUARTER, 1, GETDATE());

SELECT DATEDIFF(DAY, data_lancamento,GETDATE()), data_lancamento
FROM cd;

SELECT DATEDIFF(MONTH, data_lancamento, GETDATE())
FROM cd;


SELECT DATENAME(MONTH, '1993-01-04');


SELECT UPPER(nome_gravadora) nome, endereco,
	   LOWER(url) site
FROM gravadora;


SELECT UPPER(nome_musica)
FROM musica
WHERE LEN(nome_musica)<13;


SELECT LEN(nome_musica)
FROM musica;


SELECT LEFT('FATEC ZONA SUL', 5);


SELECT RIGHT('FATEC ZONA SUL', 3);

SELECT nome_cd, preco_venda
FROM cd
WHERE preco_venda > (SELECT AVG(preco_venda) FROM cd);

SELECT cod_cd, nome_cd, preco_venda
FROM cd
WHERE preco_venda IN (SELECT MIN(preco_venda) FROM cd GROUP BY cod_gravadora);

SELECT cod_cd, nome_cd, cod_gravadora, cd_indicado
FROM cd
WHERE(cod_gravadora, cd_indicado)IN(SELECT cod_gravadora, MIN (cd_indicado) FROM cd GROUP BY cod_gravadora);

SELECT nome_cd, preco_venda, cod_gravadora
FROM cd
WHERE cod_gravadora=(SELECT cod_gravadora FROM cd WHERE cod_cd = 2 AND preco_venda > (SELECT preco_venda FROM cd WHERE cod_cd = 5));

SELECT MAX(preco_venda)
FROM cd GROUP BY cod_gravadora
HAVING MIN(preco_venda)>(SELECT AVG(preco_venda) FROM cd);

SELECT nome_gravadora
FROM gravadora
WHERE cod_gravadora = 3;

SELECT nome_autor
FROM cd
WHERE cod_cd = 1;

'AULA 01/09/14'

SELECT cod_autor, nome_autor
FROM autor
WHERE cod_autor < 10

UNION
	SELECT cod_autor, nome_autor
	FROM autor
	WHERE cod_autor < 15;


SELECT cod_autor, nome_autor
FROM autor
WHERE cod_autor <10

UNION
	SELECT cod_musica, nome_musica
	FROM musica
	WHERE cod_musica < 15;


SELECT cod_autor, nome_autor
FROM autor
WHERE cod_autor < 10

INTERSECT
	SELECT cod_autor, nome_autor
	FROM autor
	WHERE cod_autor < 15;

SELECT cod_autor, nome_autor
FROM autor
WHERE cod_autor <10

INTERSECT
	SELECT cod_musica, nome_musica
	FROM musica
	WHERE cod_musica < 15;


SELECT cod_autor, nome_autor
FROM autor
WHERE cod_autor < 10

EXCEPT
	SELECT cod_autor, nome_autor
	FROM autor
	WHERE cod_autor < 15;

SELECT cod_autor, nome_autor
FROM autor
WHERE cod_autor <10

EXCEPT
	SELECT cod_musica, nome_musica
	FROM musica
	WHERE cod_musica < 15;

'Quais gravadoras tem cd?'

SELECT cod_gravadora
FROM gravadora
	INTERSECT
SELECT cod_gravadora
FROM cd;

'Quais gravadoras n�o tem cd?'

SELECT cod_gravadora
FROM cd
	EXCEPT
SELECT cod_gravadora
FROM gravadora;

'Quais os autores que est�o no CD 1'

SELECT cod_musica from faixa WHERE cod_cd = 1
	INTERSECT
SELECT cod_musica FROM musica_autor
	INTERSECT
select cod_autor FROM musica_autor WHERE cod_musica < 17;


'AULA 08/10/14'

SELECT cd.cod_cd, cd.nome_cd, gravadora.cod_gravadora, gravadora.nome_gravadora
FROM cd, gravadora
WHERE cd.cod_gravadora = gravadora.cod_gravadora;


SELECT cd.cod_cd, cd.nome_cd, gravadora.cod_gravadora, gravadora.nome_gravadora
FROM cd INNER JOIN gravadora
ON cd.cod_gravadora = gravadora.cod_gravadora;


SELECT autor.nome_autor, musica_autor.cod_musica
FROM autor INNER JOIN musica_autor
ON autor.cod_autor = musica_autor.cod_autor
WHERE musica_autor.cod_musica % 2 != 0


'AULA DE 17/03/15'


SELECT nome_cd, preco_venda
FROM cd
WHERE preco_venda > (SELECT AVG(preco_venda) FROM cd);


' -> DESAFIO: Quais as gravadoras e CDs (nome) com pre�o que tenham 
     o pre�o maior que a m�dia dos pre�os por gravadora.'

SELECT cod_gravadora, nome_cd, preco_venda
FROM cd
WHERE preco_venda > (SELECT AVG(preco_venda)
					 FROM cd
					 WHERE cod_gravadora IN (SELECT cod_gravadora
								             FROM gravadora));


' Quais as m�sicas do CD 1?'

SELECT COUNT(*)
FROM musica
WHERE cod_musica IN (SELECT cod_musica
                     FROM faixa);


' Apresentar a gravadora do CD 2 e seus respectivos CDs 
  que tenha(m) os pre�os menores que o pre�o do CD 5. '


SELECT nome_gravadora
FROM gravadora
WHERE cod_gravadora IN (SELECT cod_gravadora
                        FROM cd
                        WHERE cod_gravadora = (SELECT cod_gravadora
                                               FROM cd
                                               WHERE cod_cd = 2 AND preco_venda < (SELECT preco_venda
                                                                                   FROM cd
                                                                                   WHERE cod_cd = 5)));


' Apresentar os autores da gravadora 2. '

SELECT nome_autor
FROM autor
WHERE cod_autor IN (SELECT cod_autor
                    FROM musica_autor
                    WHERE cod_musica IN (SELECT cod_musica
                                         FROM faixa
                                         WHERE cod_cd = 2));


' Apresentar a m�sica que cont�m "MENINOS. '

SELECT *
FROM musica_autor
WHERE cod_musica IN (SELECT cod_musica
                     FROM musica
                     WHERE nome_musica LIKE 'menino');


				'#### AULA DE 24/03/15 ####'


CREATE VIEW VCD AS
SELECT cod_cd, nome_cd, preco_venda
FROM cd;


CREATE VIEW vmusica(codigo, nome, duracao) AS
SELECT cod_musica, nome_musica, duracao
FROM musica;


SELECT * 
FROM VCD;


' DESAFIO 1 '

CREATE VIEW Exe1 AS
SELECT preco_venda = (preco_venda + (preco_venda * 0.25))
FROM cd;

SELECT *
FROM Exe1;

			'AULA DE 31/03/14'


SELECT cod_gravadora, nome_cd, preco_venda
FROM cd
WHERE cod_gravadora = 2;


SELECT *
FROM cd
WHERE cod_gravadora != 2;


SELECT cod_gravadora, nome_cd, preco_venda
FROM cd
WHERE cod_gravadora <> 2 AND preco_venda < ANY (SELECT preco_venda
							                    FROM cd
							                    WHERE cod_gravadora=2);


			'AULA 28/04/15'

	SELECT cod_autor, nome_autor
	FROM autor
UNION
	SELECT cod_musica, nome_musica
	FROM musica;


	SELECT cod_autor, nome_autor
	FROM autor
UNION ALL
	SELECT cod_musica, nome_musica
	FROM musica;


	SELECT cod_cd, nome_cd
	FROM cd
UNION ALL
	SELECT cod_gravadora, nome_gravadora
	FROM gravadora;


'Quais os CDs com pre�o menor que R$10,00 e os CDs com pre�o maior que R$20,00?'

	SELECT cod_cd, preco_venda
	FROM cd
	WHERE preco_venda < 10
UNION ALL
	SELECT cod_cd, preco_venda
	FROM cd
	WHERE preco_venda > 20;


'Apresente as m�sicas do CD1 e as m�sicas que n�o estejam nos CDs 1 e 2'

	SELECT cod_musica, nome_musica
	FROM musica
	WHERE cod_musica IN (SELECT cod_musica
                         FROM faixa
				         WHERE cod_cd=1);


'Apresente as m�sicas do CD1 e as m�sicas que n�o estejam nos CDs pares'

	SELECT cod_musica, nome_musica
	FROM musica
	WHERE cod_musica IN (SELECT cod_musica
                         FROM faixa
				         WHERE cod_cd=1)
INTERSECT
	SELECT cod_musica, nome_musica
	FROM musica
	WHERE cod_musica IN (SELECT cod_musica
		                 FROM faixa
                         WHERE cod_cd%2<>0);


'Quais os CDs que t�m gravadora?'

	SELECT cod_gravadora
	FROM cd
INTERSECT
	SELECT cod_gravadora
	FROM gravadora;


			' - DESAFIO -
Apresente os autores das faixas pares do CD1 e os mesmos que apare�am nas faixa �mpares do CD2. '


			/*  AULA DE 12/05/15  */

SELECT cd.cod_cd, cd.nome_cd, gravadora.cod_gravadora, gravadora.nome_gravadora
FROM cd LEFT OUTER JOIN gravadora 
ON cd.cod_gravadora = gravadora.cod_gravadora;

SELECT cd.cod_cd, cd.nome_cd, gravadora.cod_gravadora, gravadora.nome_gravadora
FROM cd RIGHT OUTER JOIN gravadora 
ON cd.cod_gravadora = gravadora.cod_gravadora;

SELECT cd.cod_cd, cd.nome_cd, gravadora.cod_gravadora, gravadora.nome_gravadora
FROM gravadora LEFT OUTER JOIN cd
ON cd.cod_gravadora = gravadora.cod_gravadora;

SELECT cd.cod_cd, cd.nome_cd, gravadora.cod_gravadora, gravadora.nome_gravadora
FROM cd RIGHT OUTER JOIN gravadora 
ON cd.cod_gravadora = gravadora.cod_gravadora
WHERE cd.cod_cd IS NULL;


'D1) Apresente as m�sicas (c�digo e nome) do CD 1'

SELECT musica.cod_musica, musica.nome_musica, faixa.cod_cd
FROM faixa LEFT OUTER JOIN musica
/*     FK                    PK   */
ON faixa.cod_musica = musica.cod_musica
WHERE faixa.cod_cd = 1;


SELECT musica.cod_musica, musica.nome_musica, faixa.cod_cd
FROM faixa RIGHT OUTER JOIN musica
/*     PK                     FK   */
ON faixa.cod_musica = musica.cod_musica
WHERE faixa.cod_cd = 1;


'D2) Apresente as m�sicas (c�digo e nome) do CD 1 (+ c�digo e nome)'

SELECT musica.cod_musica, musica.nome_musica, faixa.cod_cd, cd.cod_cd, cd.nome_cd
FROM musica RIGHT OUTER JOIN faixa
/*     PK                     FK   */
ON faixa.cod_musica = musica.cod_musica
LEFT OUTER  JOIN cd
ON faixa.cod_cd = cd.cod_cd
WHERE faixa.cod_cd = 1;


'D3) Apresente as m�sicas (c�digo e nome) do CD 1 (+ c�digo e nome) e os autores (c�digo e nome)'

SELECT musica.cod_musica, musica.nome_musica, faixa.cod_cd, cd.cod_cd, cd.nome_cd
FROM musica RIGHT OUTER JOIN faixa
/*     PK                     FK   */
ON faixa.cod_musica = musica.cod_musica
LEFT OUTER  JOIN cd
ON faixa.cod_cd = cd.cod_cd
WHERE faixa.cod_cd = 1;

'D4) Apresente as m�sicas (c�digo e nome) do CD 1 (+ c�digo e nome) e os autores (c�digo e nome)'
     'de sua gravadora (c�digo e nome)'


'D5) Quais as m�sicas (c�digo e nome) dos autores �mpares'


'D6) Quais autores (c�digo e nome) das m�sicas pares?'


'D7) Cadastrar 3 m�sicas e 3 autores. Apresentar as m�sicas que n�o possuem autores'
     'e os autores que n�o possuem m�sica.'


'D8) Quais as m�sicas que n�o est�o gravadas?'


	/*     AULA DE 19/05/15      */

CREATE PROCEDURE sp_saudacao AS
DECLARE @msg VARCHAR(25)
SET @msg = 'Hello World'
PRINT @msg;

EXEC sp_saudacao;


'Criar uma sp que permita somar 2 numeros:'

CREATE PROCEDURE sp_soma AS
BEGIN
	DECLARE @A INT
	DECLARE @B INT
	DECLARE @RES INT

	SET @A = 7
	SET @B = 5
	SET @RES = @A+@B

	PRINT @RES
END;

EXEC sp_soma;

' PASSAGEM DE PAR�METRO DE ENTRADA'

CREATE PROCEDURE sp_soma2 @A INT, @B INT AS
DECLARE @RES INT
SET @RES = @A + @B
PRINT @RES;

EXEC sp_soma2 7, 5;

ALTER PROCEDURE sp_soma2 @A INT,
                         @B INT,
                         @RES INT OUTPUT AS
SET @RES = @A + @B;

DECLARE @RES INT
EXEC sp_soma2 7, 5, @RES OUTPUT
PRINT @RES;


'CALCULADORA'

CREATE PROCEDURE sp_som @A FLOAT, @B FLOAT AS
DECLARE @RES FLOAT
SET @RES = @A + @B
PRINT @RES;

CREATE PROCEDURE sp_sub @A FLOAT, @B FLOAT AS
DECLARE @RES FLOAT
SET @RES = @A - @B
PRINT @RES;

CREATE PROCEDURE sp_mul @A FLOAT, @B FLOAT AS
DECLARE @RES FLOAT
SET @RES = @A * @B
PRINT @RES;

CREATE PROCEDURE sp_div @A FLOAT, @B FLOAT AS
DECLARE @RES FLOAT
SET @RES = @A / @B
PRINT @RES;

CREATE PROCEDURE calculadora @OP CHAR,
                             @A FLOAT, 
                             @B FLOAT,
                             @SAIDA FLOAT OUTPUT AS                             
IF @OP = '+'
	EXEC sp_som @A, @B
ELSE
IF @OP = '-'
	EXEC sp_sub @A, @B
ELSE
IF @OP = '*'
	EXEC sp_mul @A, @B
ELSE
IF @OP = '/'
	EXEC sp_div @A, @B
ELSE
	PRINT 'N�O EXISTE';

DECLARE SAIDA FLOAT
EXEC sp_calculadora
PRINT @SAIDA;


    /*         AULA 26/05/15          */

CREATE PROCEDURE sp_inseremusica @cod INT,
                                 @nome VARCHAR(40),
                                 @tempo DECIMAL(4,2) AS
INSERT INTO musica(cod_musica, nome_musica, duracao)
VALUES(@cod, @nome, @tempo);

EXEC sp_inseremusica 35, 'Hino FATEC', 8.03;
EXEC sp_inseremusica 40, 'Asfalto', 8.03;
EXEC sp_inseremusica 45, 'Meu Bairro', 8.03;


CREATE PROCEDURE sp_insereautor @cod INT,
                                @nome VARCHAR(40) AS
INSERT INTO autor(cod_autor, nome_autor)
VALUES (@cod, @nome);

EXEC sp_insereautor 100, 'FATEC Zona Sul';
EXEC sp_insereautor 99, 'Dead Fish';
EXEC sp_insereautor 98, 'Flicts';


CREATE PROCEDURE sp_inseregravadora @cod INT,
	                                @nome VARCHAR(60),
	                                @endereco VARCHAR(60),
	                                @telefone INT,
	                                @contato VARCHAR(60),
	                                @url VARCHAR(60)AS
INSERT INTO gravadora(cod_gravadora, nome_gravadora, endereco, telefone, contato, url)
VALUES (@cod, @nome, @endereco, @telefone, @contato, @url);

EXEC sp_inseregravadora 20, 'Hangar 110', 'Rua Antonio Miranda, 110', 59336197, 'hangar@gmail.com', 'www.hangar.com.br';
EXEC sp_inseregravadora 30, 'Red Star', 'Rua Bandeira Negra', 77, 77777777, 'redstar@riseup.com', 'www.redstar.com.br';


CREATE PROCEDURE sp_inserecd2 @cod INT,
                             @cod_gravadora INT,
	                         @nome VARCHAR(60),
	                         @preco_venda DECIMAL,
	                         @data_lancamento DATETIME,
	                         @cd_indicado INT AS
INSERT INTO cd(cod_cd, cod_gravadora, nome_cd, preco_venda, data_lancamento, cd_indicado)
VALUES (@cod, @cod_gravadora, @nome, @preco_venda, @data_lancamento, @cd_indicado);

EXEC sp_inserecd2 50, 20, 'Contra Todos', 20.00, 2009-06-11, 51;  /*ERRO*/
EXEC sp_inserecd2 60, 30, 'Singelos Confrontos', 25.00, 2012-06-11, 61;  /*ERRO*/


CREATE PROCEDURE sp_like2 @letra VARCHAR(40) AS
SELECT *
FROM musica
WHERE nome_musica LIKE @letra;

EXEC sp_like2 "A%";


/* Criar uma sp onde -> Informando o c�digo do cd dever� 
apresentar os nomes das m�sicas e dos respectivos autores */

CREATE PROCEDURE sp_join @cod INT AS
SELECT musica.nome_musica,
       autor.nome_autor,
       faixa.cod_cd
FROM autor RIGHT OUTER JOIN musica_autor
ON autor.cod_autor = musica_autor.cod_autor
LEFT OUTER JOIN musica
ON musica_autor.cod_musica = musica.cod_musica
INNER JOIN faixa
ON faixa.cod_musica = musica.cod_musica
WHERE faixa.cod_cd = @cod;

EXEC sp_join 2;

/*    MAT�RIA DE 02/06/15     */

CREATE TABLE AUDITORIA(
	usuario VARCHAR(40), /*usu�rio ativo*/
	acao VARCHAR(20), /*cadastrou, alterou, excluiu*/
	data DATETIME, /*data do sistema*/
	codigo INT /*PK ou FK que sofre a��o*/
); 


CREATE TRIGGER tr_auditorinserecd
ON cd
FOR INSERT AS
INSERT INTO auditoria
SELECT SUSER_SNAME(),
       'cadastrou',
       GETDATE(),
       cod_cd
FROM INSERTED;


INSERT INTO cd
VALUES (30, 2, 'Asfalto', 30.45, 2012-07-07, 2);


SELECT * FROM auditoria;


CREATE TABLE AUDITORIA_2(
	usuario VARCHAR(40), /*usu�rio ativo*/
	acao VARCHAR(40), /*cadastrou, alterou, excluiu*/
	data DATETIME, /*data do sistema*/
	codigo INT /*PK ou FK que sofre a��o*/
); 


CREATE TRIGGER tr_auditorinserecd_2
ON cd
FOR INSERT AS
INSERT INTO auditoria
SELECT SUSER_SNAME(),
       'cadastrou, CD',
       GETDATE(),
       cod_cd
FROM INSERTED;


INSERT INTO cd
VALUES (31, 2, 'Autonomia', 28.45, 2013-02-04, 2);


SELECT * FROM auditoria_2;