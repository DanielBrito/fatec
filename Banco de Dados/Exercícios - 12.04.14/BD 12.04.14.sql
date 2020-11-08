create DATABASE daniel_cd;

USE daniel_cd;

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
	VALUES (1, 'Será', 2.28);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (2, 'Ainda é cedo', 3.55);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (3, 'Geração Coca-Cola', 2.20);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (4, 'Eduardo e Mônica', 4.32);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (5, 'Tempo Perdido', 5.00);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (6, 'Índios', 4.23);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (7, 'Que país é este', 3.04);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (8, 'Faroeste Caboclo', 9.03);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (9, 'Há Tempos', 3.16);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (10, 'Pais e Filhos', 5.06);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (11, 'Meninos e Meninas', 3.22);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (12, 'Vento no litoral', 6.06);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (13, 'Perfeição', 4.35);

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
	VALUES (26, 'Pois é', 2.46);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (27, 'Noite dos Mascarados', 2.42);

INSERT INTO musica(cod_musica, nome_musica, duracao)
	VALUES (28, 'Sabiá', 3.20);

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
VALUES (5, 'Marcelo Bonfá');

INSERT INTO autor
VALUES (6, 'Ico Ouro Preto');

INSERT INTO autor
VALUES (7, 'Vinícius de Moraes');

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