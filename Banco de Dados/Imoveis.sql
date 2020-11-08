CREATE DATABASE bd_imoveis;

USE bd_imoveis;

CREATE TABLE compradores (
	cd_comprador INTEGER NOT NULL,
	nm_comprador VARCHAR(50)NOT NULL,
	nm_enderecocomprador VARCHAR(50) NOT NULL,
	nr_cpfcomprador VARCHAR(15) NOT NULL,
	cd_cidade INTEGER NOT NULL,
	cd_bairro INTEGER NOT NULL,
	sg_estado VARCHAR(2) NOT NULL,
	tel_comprador VARCHAR(15) NOT NULL,
	PRIMARY KEY(cd_comprador)
);


CREATE TABLE estado (
	sg_estado VARCHAR(2) NOT NULL,
	nm_estado VARCHAR(50) NOT NULL,
	PRIMARY KEY(sg_estado)
);


CREATE TABLE vendedor (
	cd_vendedor INTEGER NOT NULL,
	nm_vendedor VARCHAR(50) NOT NULL,
	nm_enderecovendedor VARCHAR(50) NOT NULL,
	nr_cpf VARCHAR(15)NOT NULL,
	cd_cidade INTEGER NOT NULL,
	cd_bairro INTEGER NOT NULL,
	sg_estado VARCHAR(2) NOT NULL,
	telefone VARCHAR(15) NOT NULL,
	data_nasc DATETIME NOT NULL,
	PRIMARY KEY(cd_vendedor)
);


CREATE TABLE oferta (
	cd_oferta INTEGER NOT NULL,
	cd_imovel INTEGER NOT NULL,
	cd_comprador INTEGER NOT NULL,
	vl_oferta DECIMAL(7, 2) NOT NULL,
	dt_oferta DATETIME NOT NULL,
	PRIMARY KEY(cd_oferta)
);


CREATE TABLE faixa_imovel (
	cd_faixa INTEGER NOT NULL,
	nm_faixa VARCHAR(50) NOT NULL,
	vl_minimo decimal(7, 2) NOT NULL,
	vl_maximo decimal(7, 2) NOT NULL,
	PRIMARY KEY(cd_faixa)
);


CREATE TABLE cidade (
	cd_cidade INTEGER NOT NULL,
	nm_cidade VARCHAR(50) NOT NULL,
	sg_estado VARCHAR(2) NOT NULL,
	PRIMARY KEY(cd_cidade)
);


CREATE TABLE bairro (
	cd_bairro INTEGER NOT NULL,
	nm_bairro VARCHAR(50) NOT NULL,
	cd_cidade INTEGER NOT NULL,
	sg_estado VARCHAR(2)NOT NULL,
	PRIMARY KEY(cd_bairro)
);



CREATE TABLE imovel (
	cd_imovel INTEGER NOT NULL,
	cd_vendedor INTEGER NOT NULL,
	cd_bairro INTEGER NOT NULL,
	cd_cidade INTEGER NOT NULL,
	sg_estado VARCHAR(2) NOT NULL,
	nm_endereco VARCHAR(50) NOT NULL,
	nr_areautil DECIMAL(7, 2) NOT NULL,
	nr_areatotal DECIMAL(7, 2) NOT NULL,
	vl_preco DECIMAL(7, 2) NOT NULL,
	cd_oferta INTEGER NOT NULL,
	st_vendido VARCHAR(15) NOT NULL,
	data_lancto DATETIME NOT NULL,
	PRIMARY KEY(cd_imovel)
);


/* Adicionando chaves estrangeiras */
ALTER TABLE compradores ADD FOREIGN KEY (cd_cidade) REFERENCES cidade (cd_cidade);
ALTER TABLE compradores ADD FOREIGN KEY (cd_bairro) REFERENCES bairro (cd_bairro);
ALTER TABLE compradores ADD FOREIGN KEY (sg_estado) REFERENCES estado (sg_estado);

ALTER TABLE vendedor ADD FOREIGN KEY (cd_cidade) REFERENCES cidade (cd_cidade);
ALTER TABLE vendedor ADD FOREIGN KEY (cd_bairro) REFERENCES bairro (cd_bairro);
ALTER TABLE vendedor ADD FOREIGN KEY (sg_estado) REFERENCES estado (sg_estado);

ALTER TABLE cidade ADD FOREIGN KEY (sg_estado) REFERENCES estado (sg_estado);

ALTER TABLE oferta ADD FOREIGN KEY (cd_imovel) REFERENCES imovel (cd_imovel);
ALTER TABLE oferta ADD FOREIGN KEY (cd_comprador) REFERENCES compradores (cd_comprador);

ALTER TABLE bairro ADD FOREIGN KEY (cd_cidade) REFERENCES cidade (cd_cidade);
ALTER TABLE bairro ADD FOREIGN KEY (sg_estado) REFERENCES estado (sg_estado);

ALTER TABLE imovel ADD FOREIGN KEY (cd_vendedor) REFERENCES vendedor (cd_vendedor);
ALTER TABLE imovel ADD FOREIGN KEY (cd_bairro) REFERENCES bairro (cd_bairro);
ALTER TABLE imovel ADD FOREIGN KEY (cd_cidade) REFERENCES cidade (cd_cidade);
ALTER TABLE imovel ADD FOREIGN KEY (sg_estado) REFERENCES estado (sg_estado);
ALTER TABLE imovel ADD FOREIGN KEY (cd_oferta) REFERENCES oferta (cd_oferta);







/*1. Inserindo os Estados Brasileiros em Tabela Estado*/
INSERT INTO estado VALUES ('AC', 'Acre');
INSERT INTO estado VALUES ('AL', 'Alagoas');
INSERT INTO estado VALUES ('AP', 'Amapa');
INSERT INTO estado VALUES ('AM', 'Amazonas');
INSERT INTO estado VALUES ('BA', 'Bahia');
INSERT INTO estado VALUES ('CE', 'Ceara');
INSERT INTO estado VALUES ('DF', 'Distrito Federal');
INSERT INTO estado VALUES ('ES', 'Espirito Santo');
INSERT INTO estado VALUES ('GO', 'Goias');
INSERT INTO estado VALUES ('MA', 'Maranhao');
INSERT INTO estado VALUES ('MT', 'Mato Grosso');
INSERT INTO estado VALUES ('MS', 'Mato Grosso do Sul');
INSERT INTO estado VALUES ('MG', 'Minas Gerais');
INSERT INTO estado VALUES ('PA', 'Para');
INSERT INTO estado VALUES ('PB', 'Paraiba');
INSERT INTO estado VALUES ('PR', 'Parana');
INSERT INTO estado VALUES ('PE', 'Pernambuco');
INSERT INTO estado VALUES ('PI', 'Piaui');
INSERT INTO estado VALUES ('RJ', 'Rio de Janeiro');
INSERT INTO estado VALUES ('RN', 'Rio Grande do Norte');
INSERT INTO estado VALUES ('RS', 'Rio Grande do Sul');
INSERT INTO estado VALUES ('RO', 'Rondônia');
INSERT INTO estado VALUES ('RR', 'Roraima');
INSERT INTO estado VALUES ('SC', 'Santa Catarina');
INSERT INTO estado VALUES ('SP', 'Sao Paulo');
INSERT INTO estado VALUES ('SE', 'Sergipe');
INSERT INTO estado VALUES ('TO', 'Tocantins');
 


/*2. Inserindo as Capitais Brasileiras e os 4 principais 
municipios de cada Estado na Tabela Cidade*/

INSERT INTO cidade VALUES(1, 'Cruzeiro do Sul', 'AC');
INSERT INTO cidade VALUES(2, 'Feijo', 'AC');
INSERT INTO cidade VALUES(3, 'Rio Branco', 'AC');
INSERT INTO cidade VALUES(4, 'Sena Madureira', 'AC');
INSERT INTO cidade VALUES(5, 'Tarauaca', 'AC');

INSERT INTO cidade VALUES(6, 'Arapiraca', 'AL');
INSERT INTO cidade VALUES(7, 'Maceio', 'AL');
INSERT INTO cidade VALUES(8, 'Palmeira dos indios', 'AL');
INSERT INTO cidade VALUES(9, 'Rio Largo', 'AL');
INSERT INTO cidade VALUES(10, 'Uniao dos Palmares', 'AL');



INSERT INTO cidade VALUES(11, 'Manaus', 'AM');
INSERT INTO cidade VALUES(12, 'Parintins', 'AM');
INSERT INTO cidade VALUES(13, 'Itacoatiara', 'AM');
INSERT INTO cidade VALUES(14, 'Manacapuru', 'AM');
INSERT INTO cidade VALUES(15, 'Coari', 'AM');

INSERT INTO cidade VALUES(16, 'Macapa', 'AP');
INSERT INTO cidade VALUES(17, 'Santana', 'AP');
INSERT INTO cidade VALUES(18, 'Laranjal do Jari', 'AP');
INSERT INTO cidade VALUES(19, 'Oiapoque', 'AP');
INSERT INTO cidade VALUES(20, 'Mazagao', 'AP');

INSERT INTO cidade VALUES(21, 'Salvador', 'BA');
INSERT INTO cidade VALUES(22, 'Feira de Santana', 'BA');
INSERT INTO cidade VALUES(23, 'Vitoria da Conquista', 'BA');
INSERT INTO cidade VALUES(24, 'Camacari', 'BA');
INSERT INTO cidade VALUES(25, 'Itabuna', 'BA');

INSERT INTO cidade VALUES(26, 'Fortaleza', 'CE');
INSERT INTO cidade VALUES(27, 'Caucaia', 'CE');
INSERT INTO cidade VALUES(28, 'Juazeiro do Norte', 'CE');
INSERT INTO cidade VALUES(29, 'Maracanau', 'CE');
INSERT INTO cidade VALUES(30, 'Sobral', 'CE');

INSERT INTO cidade VALUES(31, 'Brasilia', 'DF');
INSERT INTO cidade VALUES(32, 'Brazlandia', 'DF');
INSERT INTO cidade VALUES(33, 'Candangolandia', 'DF');
INSERT INTO cidade VALUES(34, 'Ceilandia', 'DF');
INSERT INTO cidade VALUES(35, 'Gama', 'DF');

INSERT INTO cidade VALUES(36, 'Vitoria', 'ES');
INSERT INTO cidade VALUES(37, 'Serra', 'ES');
INSERT INTO cidade VALUES(38, 'Vila Velha', 'ES');
INSERT INTO cidade VALUES(39, 'Cariacica', 'ES');
INSERT INTO cidade VALUES(40, 'Cachoeiro de Itapemirim', 'ES');

INSERT INTO cidade VALUES(41, 'Goiania', 'GO');
INSERT INTO cidade VALUES(42, 'Aparecida de Goiania', 'GO');
INSERT INTO cidade VALUES(43, 'Anapolis', 'GO');
INSERT INTO cidade VALUES(44, 'Rio Verde', 'GO');
INSERT INTO cidade VALUES(45, 'Luziania', 'GO');

INSERT INTO cidade VALUES(46, 'Sao Luis', 'MA');
INSERT INTO cidade VALUES(47, 'Imperatriz', 'MA');
INSERT INTO cidade VALUES(48, 'Sao Jose de Ribamar', 'MA');
INSERT INTO cidade VALUES(49, 'Caxias', 'MA');
INSERT INTO cidade VALUES(50, 'Santa Inês', 'MA');

INSERT INTO cidade VALUES(51, 'Belo Horizonte', 'MG');
INSERT INTO cidade VALUES(52, 'Uberlandia', 'MG');
INSERT INTO cidade VALUES(53, 'Contagem', 'MG');
INSERT INTO cidade VALUES(54, 'Juiz de Fora', 'MG');
INSERT INTO cidade VALUES(55, 'Betim', 'MG');

INSERT INTO cidade VALUES(56, 'Campo Grande', 'MS');
INSERT INTO cidade VALUES(57, 'Dourados', 'MS');
INSERT INTO cidade VALUES(58, 'Três Lagoas', 'MS');
INSERT INTO cidade VALUES(59, 'Corumba', 'MS');
INSERT INTO cidade VALUES(60, 'Ponta Pora', 'MS');

INSERT INTO cidade VALUES(61, 'Cuiaba', 'MT');
INSERT INTO cidade VALUES(62, 'Varzea Grandes', 'MT');
INSERT INTO cidade VALUES(63, 'Rondonopolis', 'MT');
INSERT INTO cidade VALUES(64, 'Sinop', 'MT');
INSERT INTO cidade VALUES(65, 'Tangara da Serra', 'MT');

INSERT INTO cidade VALUES(66, 'Belem', 'PA');
INSERT INTO cidade VALUES(67, 'Ananindeua', 'PA');
INSERT INTO cidade VALUES(68, 'Santarem', 'PA');
INSERT INTO cidade VALUES(69, 'Maraba', 'PA');
INSERT INTO cidade VALUES(70, 'Castanhal', 'PA');

INSERT INTO cidade VALUES(71, 'Joao Pessoa', 'PB');
INSERT INTO cidade VALUES(72, 'Campina Grande', 'PB');
INSERT INTO cidade VALUES(73, 'Santa Rita', 'PB');
INSERT INTO cidade VALUES(74, 'Patos', 'PB');
INSERT INTO cidade VALUES(75, 'Bayeux', 'PB');

INSERT INTO cidade VALUES(76, 'Curitiba', 'PR');
INSERT INTO cidade VALUES(77, 'Londrina', 'PR');
INSERT INTO cidade VALUES(78, 'Maringa', 'PR');
INSERT INTO cidade VALUES(79, 'Ponta Grossa', 'PR');
INSERT INTO cidade VALUES(80, 'Cascavel', 'PR');

INSERT INTO cidade VALUES(81, 'Recife', 'PE');
INSERT INTO cidade VALUES(82, 'Jaboatao dos Guararapes', 'PE');
INSERT INTO cidade VALUES(83, 'Olinda', 'PE');
INSERT INTO cidade VALUES(84, 'Caruaru', 'PE');
INSERT INTO cidade VALUES(85, 'Petrolina', 'PE');

INSERT INTO cidade VALUES(86, 'Teresina', 'PI');
INSERT INTO cidade VALUES(87, 'Parnaiba', 'PI');
INSERT INTO cidade VALUES(88, 'Picos', 'PI');
INSERT INTO cidade VALUES(89, 'Piripiri', 'PI');
INSERT INTO cidade VALUES(90, 'Floriano', 'PI');

INSERT INTO cidade VALUES(91, 'Rio de Janeiro', 'RJ');
INSERT INTO cidade VALUES(92, 'Sao Goncalo', 'RJ');
INSERT INTO cidade VALUES(93, 'Duque de Caxias', 'RJ');
INSERT INTO cidade VALUES(94, 'Nova Iguacu', 'RJ');
INSERT INTO cidade VALUES(95, 'Niteroi', 'RJ');

INSERT INTO cidade VALUES(96, 'Natal', 'RN');
INSERT INTO cidade VALUES(97, 'Mossoro', 'RN');
INSERT INTO cidade VALUES(98, 'Parnamirim', 'RN');
INSERT INTO cidade VALUES(99, 'Sao Goncalo do Amarante', 'RN');
INSERT INTO cidade VALUES(100, 'Macaiba', 'RN');

INSERT INTO cidade VALUES(101, 'Porto Alegre', 'RS');
INSERT INTO cidade VALUES(102, 'Caxias do Sul', 'RS');
INSERT INTO cidade VALUES(103, 'Pelotas', 'RS');
INSERT INTO cidade VALUES(104, 'Canoas', 'RS');
INSERT INTO cidade VALUES(105, 'Santa Maria', 'RS');

INSERT INTO cidade VALUES(106, 'Porto Velho', 'RO');
INSERT INTO cidade VALUES(107, 'Ji-Parana', 'RO');
INSERT INTO cidade VALUES(108, 'Ariquemes', 'RO');
INSERT INTO cidade VALUES(109, 'Vilhena', 'RO');
INSERT INTO cidade VALUES(110, 'Cacoal', 'RO');

INSERT INTO cidade VALUES(111, 'Boa Vista', 'RR');
INSERT INTO cidade VALUES(112, 'Rorainopolis', 'RR');
INSERT INTO cidade VALUES(113, 'Caracarai', 'RR');
INSERT INTO cidade VALUES(114, 'Alto Alegre', 'RR');
INSERT INTO cidade VALUES(115, 'Mucajai', 'RR');

INSERT INTO cidade VALUES(116, 'Florianopolis', 'SC');
INSERT INTO cidade VALUES(117, 'Joinville', 'SC');
INSERT INTO cidade VALUES(118, 'Blumenau', 'SC');
INSERT INTO cidade VALUES(119, 'Sao Jose', 'SC');
INSERT INTO cidade VALUES(120, 'Criciuma', 'SC');

INSERT INTO cidade VALUES(121, 'Sao Paulo', 'SP');
INSERT INTO cidade VALUES(122, 'Guarulhos', 'SP');
INSERT INTO cidade VALUES(123, 'Campinas', 'SP');
INSERT INTO cidade VALUES(124, 'Sao Bernardo do Campo', 'SP');
INSERT INTO cidade VALUES(125, 'Santo Andre', 'SP');

INSERT INTO cidade VALUES(126, 'Aracaju', 'SE');
INSERT INTO cidade VALUES(127, 'Nossa Senhora do Socorro', 'SE');
INSERT INTO cidade VALUES(128, 'Lagarto', 'SE');
INSERT INTO cidade VALUES(129, 'Itabaiana', 'SE');
INSERT INTO cidade VALUES(130, 'Sao Cristovao', 'SE');

INSERT INTO cidade VALUES(131, 'Palmas', 'TO');
INSERT INTO cidade VALUES(132, 'Araguaina', 'TO');
INSERT INTO cidade VALUES(133, 'Gurupi', 'TO');
INSERT INTO cidade VALUES(134, 'Augustinopolis', 'TO');
INSERT INTO cidade VALUES(135, 'Taguatinga', 'TO');



/*3. Inserindo os Principais Bairros de cada Cidade em 
Tabela Bairros */

INSERT INTO bairro VALUES(1, 'Floresta', 1, 'AC');
INSERT INTO bairro VALUES(2, 'Conquista', 1, 'AC');
INSERT INTO bairro VALUES(3, 'Remanso', 2, 'AC');
INSERT INTO bairro VALUES(4, 'Telegrafo', 2, 'AC');
INSERT INTO bairro VALUES(5, 'Vila Militar', 3, 'AC');
INSERT INTO bairro VALUES(6, 'Sao Felipe', 3, 'AC');
INSERT INTO bairro VALUES(7, 'Corcovado', 4, 'AC');
INSERT INTO bairro VALUES(8, 'Xapuri', 4, 'AC');
INSERT INTO bairro VALUES(9, 'Vila Regente', 5, 'AC');
INSERT INTO bairro VALUES(10, 'Passo do Feijo', 5, 'AC');

INSERT INTO bairro VALUES(11, 'Jacintinho', 6, 'AL');
INSERT INTO bairro VALUES(12, 'Benedito Bentes', 6, 'AL');
INSERT INTO bairro VALUES(13, 'Zelia Barbosa', 7, 'AL');
INSERT INTO bairro VALUES(14, 'Verdes Campos', 7, 'AL');
INSERT INTO bairro VALUES(15, 'Sao Cristovao', 8, 'AL');
INSERT INTO bairro VALUES(16, 'Xucurus', 8, 'AL');
INSERT INTO bairro VALUES(17, 'Aeroporto', 9, 'AL');
INSERT INTO bairro VALUES(18, 'Cucau', 9, 'AL');
INSERT INTO bairro VALUES(19, 'Serra da Barriga', 10, 'AL');
INSERT INTO bairro VALUES(20, 'Ponte Jatoba', 10, 'AL');

INSERT INTO bairro VALUES(21, 'Alvorada', 11, 'AP');
INSERT INTO bairro VALUES(22, 'Buritizal', 11, 'AP');
INSERT INTO bairro VALUES(23, 'Capuchinhos', 12, 'AP');
INSERT INTO bairro VALUES(24, 'Conceicao', 12, 'AP');
INSERT INTO bairro VALUES(25, 'Castanheira', 13, 'AP');
INSERT INTO bairro VALUES(26, 'Agreste', 13, 'AP');
INSERT INTO bairro VALUES(27, 'Carrapicho ', 14, 'AP');
INSERT INTO bairro VALUES(28, 'Fazendinha', 14, 'AP');
INSERT INTO bairro VALUES(29, 'Vila Carvao', 15, 'AP');
INSERT INTO bairro VALUES(30, 'Vila de Mazagao Velho', 15, 'AP');

INSERT INTO bairro VALUES(31, 'Presidente Vargas', 16, 'AM');
INSERT INTO bairro VALUES(32, 'Gloria', 16, 'AM');
INSERT INTO bairro VALUES(33, 'Petropolis', 17, 'AM');
INSERT INTO bairro VALUES(34, 'Coroado', 17, 'AM');
INSERT INTO bairro VALUES(35, 'Crespo', 18, 'AM');
INSERT INTO bairro VALUES(36, 'Vila Buriti', 18, 'AM');
INSERT INTO bairro VALUES(37, 'Aleixo ', 19, 'AM');
INSERT INTO bairro VALUES(38, 'Novo Israel', 19, 'AM');
INSERT INTO bairro VALUES(39, 'Lago Azul', 20, 'AM');
INSERT INTO bairro VALUES(40, 'Gilberto Mestrinho', 20, 'AM');

INSERT INTO bairro VALUES(41, 'Alto do Macaco', 21, 'BA');
INSERT INTO bairro VALUES(42, 'Boca da Mata', 21, 'BA');
INSERT INTO bairro VALUES(43, 'Capelinha', 22, 'BA');
INSERT INTO bairro VALUES(44, 'Dom Avelar', 22, 'BA');
INSERT INTO bairro VALUES(45, 'Canabrava', 23, 'BA');
INSERT INTO bairro VALUES(46, 'Alto de Ondina', 23, 'BA');
INSERT INTO bairro VALUES(47, 'Narandiba ', 24, 'BA');
INSERT INTO bairro VALUES(48, 'Ogunja', 24, 'BA');
INSERT INTO bairro VALUES(49, 'Sao Pedro', 25, 'BA');
INSERT INTO bairro VALUES(50, 'Luis Anselmo', 25, 'BA');

INSERT INTO bairro VALUES(51, 'Parque Araxa', 26, 'CE');
INSERT INTO bairro VALUES(52, 'Mondubim', 26, 'CE');
INSERT INTO bairro VALUES(53, 'Coacu', 27, 'CE');
INSERT INTO bairro VALUES(54, 'Bom Futuro', 27, 'CE');
INSERT INTO bairro VALUES(55, 'Quintino Cunha', 28, 'CE');
INSERT INTO bairro VALUES(56, 'Siqueira', 28, 'CE');
INSERT INTO bairro VALUES(57, 'Narandiba ', 29, 'CE');
INSERT INTO bairro VALUES(58, 'Genibau', 29, 'CE');
INSERT INTO bairro VALUES(59, 'Jardim America', 30, 'CE');
INSERT INTO bairro VALUES(60, 'Vila Pery', 30, 'CE');

INSERT INTO bairro VALUES(61, 'Asa Sul', 31, 'DF');
INSERT INTO bairro VALUES(62, 'Granja do Torto', 31, 'DF');
INSERT INTO bairro VALUES(63, 'Vila Planalto', 32, 'DF');
INSERT INTO bairro VALUES(64, 'Lago Norte', 32, 'DF');
INSERT INTO bairro VALUES(65, 'Guara', 33, 'DF');
INSERT INTO bairro VALUES(66, 'Nucleo Bandeirante', 33, 'DF');
INSERT INTO bairro VALUES(67, 'Militar Urbano ', 34, 'DF');
INSERT INTO bairro VALUES(68, 'Industrias Graficas', 34, 'DF');
INSERT INTO bairro VALUES(69, 'Noroeste', 35, 'DF');
INSERT INTO bairro VALUES(70, 'Ventosa', 35, 'DF');

INSERT INTO bairro VALUES(71, 'Quadro', 36, 'ES');
INSERT INTO bairro VALUES(72, 'Piedade', 36, 'ES');
INSERT INTO bairro VALUES(73, 'Santa Cecilia', 37, 'ES');
INSERT INTO bairro VALUES(74, 'Sao Cristovao', 37, 'ES');
INSERT INTO bairro VALUES(75, 'Ilha do Frade', 38, 'ES');
INSERT INTO bairro VALUES(76, 'Santa Luiza', 38, 'ES');
INSERT INTO bairro VALUES(77, 'Jardim da Penha ', 39, 'ES');
INSERT INTO bairro VALUES(78, 'Republica', 39, 'ES');
INSERT INTO bairro VALUES(79, 'Ilha das Caieiras', 40, 'ES');
INSERT INTO bairro VALUES(80, 'Jardim Camburi', 40, 'ES');

INSERT INTO bairro VALUES(81, 'Asa Branca', 41, 'GO');
INSERT INTO bairro VALUES(82, 'Gentil Meireles', 41, 'GO');
INSERT INTO bairro VALUES(83, 'Itatiaia', 42, 'GO');
INSERT INTO bairro VALUES(84, 'Monte Verde', 42, 'GO');
INSERT INTO bairro VALUES(85, 'Perim', 43, 'GO');
INSERT INTO bairro VALUES(86, 'Pompeia', 43, 'GO');
INSERT INTO bairro VALUES(87, 'Urias Magalhaes ', 44, 'GO');
INSERT INTO bairro VALUES(88, 'Recanto do Bosque', 44, 'GO');
INSERT INTO bairro VALUES(89, 'Emilio Povoa', 45, 'GO');
INSERT INTO bairro VALUES(90, 'Crimeia Oeste', 45, 'GO');

INSERT INTO bairro VALUES(91, 'Cohab Anil I', 46, 'MA');
INSERT INTO bairro VALUES(92, 'Lira', 46, 'MA');
INSERT INTO bairro VALUES(93, 'Maracana', 47, 'MA');
INSERT INTO bairro VALUES(94, 'Jaracati', 47, 'MA');
INSERT INTO bairro VALUES(95, 'Itaqui', 48, 'MA');
INSERT INTO bairro VALUES(96, 'Ponta do Farol', 48, 'MA');
INSERT INTO bairro VALUES(97, 'Sa Viana ', 49, 'MA');
INSERT INTO bairro VALUES(98, 'Guarapuava', 49, 'MA');
INSERT INTO bairro VALUES(99, 'Vila Embratel', 50, 'MA');
INSERT INTO bairro VALUES(100, 'Vinhais', 50, 'MA');

INSERT INTO bairro VALUES(101, 'Despraiado', 51, 'MT');
INSERT INTO bairro VALUES(102, 'Jardim Cuiaba', 51, 'MT');
INSERT INTO bairro VALUES(103, 'Popular', 52, 'MT');
INSERT INTO bairro VALUES(104, 'Coophamil', 52, 'MT');
INSERT INTO bairro VALUES(105, 'Verdao', 53, 'MT');
INSERT INTO bairro VALUES(106, 'Novo Terceiro', 53, 'MT');
INSERT INTO bairro VALUES(107, 'Quilombo ', 54, 'MT');
INSERT INTO bairro VALUES(108, 'Jardim Santa Isabel', 54, 'MT');
INSERT INTO bairro VALUES(109, 'Jardim Beira Rio', 55, 'MT');
INSERT INTO bairro VALUES(110, 'Barra do Pari', 55, 'MT');

INSERT INTO bairro VALUES(111, 'Lageado', 56, 'MS');
INSERT INTO bairro VALUES(112, 'Parati', 56, 'MS');
INSERT INTO bairro VALUES(113, 'Jardim Paulista', 57, 'MS');
INSERT INTO bairro VALUES(114, 'Pioneiros', 57, 'MS');
INSERT INTO bairro VALUES(115, 'Lageado', 58, 'MS');
INSERT INTO bairro VALUES(116, 'Guanandi', 58, 'MS');
INSERT INTO bairro VALUES(117, 'Taquarussu ', 59, 'MS');
INSERT INTO bairro VALUES(118, 'America', 59, 'MS');
INSERT INTO bairro VALUES(119, 'Monte Libano', 60, 'MS');
INSERT INTO bairro VALUES(120, 'Indubrasil', 60, 'MS');

INSERT INTO bairro VALUES(121, 'Afonso Pena', 61, 'MG');
INSERT INTO bairro VALUES(122, 'Katia', 61, 'MG');
INSERT INTO bairro VALUES(123, 'Carlos Prates', 62, 'MG');
INSERT INTO bairro VALUES(124, 'Diamante', 62, 'MG');
INSERT INTO bairro VALUES(125, 'Minaslandia ', 63, 'MG');
INSERT INTO bairro VALUES(126, 'Estoril', 63, 'MG');
INSERT INTO bairro VALUES(127, 'Fernao Dias', 64, 'MG');
INSERT INTO bairro VALUES(128, 'Floramar', 64, 'MG');
INSERT INTO bairro VALUES(129, 'Miramar', 65, 'MG');
INSERT INTO bairro VALUES(130, 'Gameleira', 65, 'MG');

INSERT INTO bairro VALUES(131, 'Caruara', 66, 'PA');
INSERT INTO bairro VALUES(132, 'Maracaja', 66, 'PA');
INSERT INTO bairro VALUES(133, 'Bonfim', 67, 'PA');
INSERT INTO bairro VALUES(134, 'Ariramba', 67, 'PA');
INSERT INTO bairro VALUES(135, 'Praia Grande', 68, 'PA');
INSERT INTO bairro VALUES(136, 'Sao Francisco', 68, 'PA');
INSERT INTO bairro VALUES(137, 'Sucurijuquara', 69, 'PA');
INSERT INTO bairro VALUES(138, 'Vila', 69, 'PA');
INSERT INTO bairro VALUES(139, 'Paraiso', 70, 'PA');
INSERT INTO bairro VALUES(140, 'Itaiteua', 70, 'PA');

INSERT INTO bairro VALUES(141, 'Bairro dos Ipês', 71, 'PB');
INSERT INTO bairro VALUES(142, 'Jardim Esther', 71, 'PB');
INSERT INTO bairro VALUES(143, 'Pedro Gondir', 72, 'PB');
INSERT INTO bairro VALUES(144, 'Roger', 72, 'PB');
INSERT INTO bairro VALUES(145, 'Costa e Silva', 73, 'PB');
INSERT INTO bairro VALUES(146, 'Agua Fria', 73, 'PB');
INSERT INTO bairro VALUES(147, 'Jardim Mangu', 74, 'PB');
INSERT INTO bairro VALUES(148, 'Grama', 74, 'PB');
INSERT INTO bairro VALUES(149, 'Joao Paulo II', 75, 'PB');
INSERT INTO bairro VALUES(150, 'Jardim Sao Paulo', 75, 'PB');

INSERT INTO bairro VALUES(151, 'Bairro Novo', 76, 'PR');
INSERT INTO bairro VALUES(152, 'Boa Vista', 76, 'PR');
INSERT INTO bairro VALUES(153, 'Fazendinha-Portao', 77, 'PR');
INSERT INTO bairro VALUES(154, 'Matriz', 77, 'PR');
INSERT INTO bairro VALUES(155, 'Pinheirinho', 78, 'PR');
INSERT INTO bairro VALUES(156, 'Santa Felicidade', 78, 'PR');
INSERT INTO bairro VALUES(157, 'Boqueirao', 79, 'PR');
INSERT INTO bairro VALUES(158, 'Santa Candida', 79, 'PR');
INSERT INTO bairro VALUES(159, 'Taboao', 80, 'PR');
INSERT INTO bairro VALUES(160, 'Pilarzinho', 80, 'PR');

INSERT INTO bairro VALUES(161, 'Aflitos', 81, 'PE');
INSERT INTO bairro VALUES(162, 'Afogados', 81, 'PE');
INSERT INTO bairro VALUES(163, 'Dois Irmaos', 82, 'PE');
INSERT INTO bairro VALUES(164, 'Estancia', 82, 'PE');
INSERT INTO bairro VALUES(165, 'Jaqueira', 83, 'PE');
INSERT INTO bairro VALUES(166, 'Caxanga', 83, 'PE');
INSERT INTO bairro VALUES(167, 'Alto 13 de Maio', 84, 'PE');
INSERT INTO bairro VALUES(168, 'Bongi', 84, 'PE');
INSERT INTO bairro VALUES(169, 'Hipodromo', 85, 'PE');
INSERT INTO bairro VALUES(170, 'Ipiranga', 85, 'PE');

INSERT INTO bairro VALUES(171, 'Marques', 86, 'PI');
INSERT INTO bairro VALUES(172, 'Porenquanto', 86, 'PI');
INSERT INTO bairro VALUES(173, 'Cristo Rei', 87, 'PI');
INSERT INTO bairro VALUES(174, 'Matinha', 87, 'PI');
INSERT INTO bairro VALUES(175, 'Vermelha', 88, 'PI');
INSERT INTO bairro VALUES(176, 'Matadouro', 88, 'PI');
INSERT INTO bairro VALUES(177, 'Nova Brasilia', 89, 'PI');
INSERT INTO bairro VALUES(178, 'Olarias', 89, 'PI');
INSERT INTO bairro VALUES(179, 'Santo Antonio', 90, 'PI');
INSERT INTO bairro VALUES(180, 'Ininga', 90, 'PI');

INSERT INTO bairro VALUES(181, 'Sao Cristovao', 91, 'RJ');
INSERT INTO bairro VALUES(182, 'Saude', 91, 'RJ');
INSERT INTO bairro VALUES(183, 'Vasco da Gama', 92, 'RJ');
INSERT INTO bairro VALUES(184, 'Rio Comprido', 92, 'RJ');
INSERT INTO bairro VALUES(185, 'Gamboa', 93, 'RJ');
INSERT INTO bairro VALUES(186, 'Caju', 93, 'RJ');
INSERT INTO bairro VALUES(187, 'Santa Teresa', 94, 'RJ');
INSERT INTO bairro VALUES(188, 'Botafogo', 94, 'RJ');
INSERT INTO bairro VALUES(189, 'Lagoa', 95, 'RJ');
INSERT INTO bairro VALUES(190, 'Gavea', 95, 'RJ');

INSERT INTO bairro VALUES(191, 'Alecrim', 96, 'RN');
INSERT INTO bairro VALUES(192, 'Capim Macio', 96, 'RN');
INSERT INTO bairro VALUES(193, 'Guarapes', 97, 'RN');
INSERT INTO bairro VALUES(194, 'Areia Preta', 97, 'RN');
INSERT INTO bairro VALUES(195, 'Cidade Alta', 98, 'RN');
INSERT INTO bairro VALUES(196, 'Felipe Camarao', 98, 'RN');
INSERT INTO bairro VALUES(197, 'Nordeste', 99, 'RN');
INSERT INTO bairro VALUES(198, 'Nova Descoberta', 99, 'RN');
INSERT INTO bairro VALUES(199, 'Tirol', 100, 'RN');
INSERT INTO bairro VALUES(200, 'Salinas', 100, 'RN');

INSERT INTO bairro VALUES(201, 'Farroupilha', 101, 'RS');
INSERT INTO bairro VALUES(202, 'Gloria', 101, 'RS');
INSERT INTO bairro VALUES(203, 'Cristal', 102, 'RS');
INSERT INTO bairro VALUES(204, 'Espirito Santo', 102, 'RS');
INSERT INTO bairro VALUES(205, 'Ipanema', 103, 'RS');
INSERT INTO bairro VALUES(206, 'Marcilio Dias', 103, 'RS');
INSERT INTO bairro VALUES(207, 'Medianeira', 104, 'RS');
INSERT INTO bairro VALUES(208, 'Partenon', 104, 'RS');
INSERT INTO bairro VALUES(209, 'Menino Deus', 105, 'RS');
INSERT INTO bairro VALUES(210, 'Restinga', 105, 'RS');

INSERT INTO bairro VALUES(211, 'Caiari', 106, 'RO');
INSERT INTO bairro VALUES(212, 'Areia Branca', 106, 'RO');
INSERT INTO bairro VALUES(213, 'Aeroclube', 107, 'RO');
INSERT INTO bairro VALUES(214, 'Jardim Santana', 107, 'RO');
INSERT INTO bairro VALUES(215, 'Nova Floresta', 108, 'RO');
INSERT INTO bairro VALUES(216, 'Roque', 108, 'RO');
INSERT INTO bairro VALUES(217, 'Tucumanzal', 109, 'RO');
INSERT INTO bairro VALUES(218, 'Mariana', 109, 'RO');
INSERT INTO bairro VALUES(219, 'Esperanca da Comunidade', 110, 'RO');
INSERT INTO bairro VALUES(220, '4 de Janeiro', 110, 'RO');

INSERT INTO bairro VALUES(221, 'Mecejana', 111, 'RR');
INSERT INTO bairro VALUES(222, 'Jardim Floresta ', 111, 'RR');
INSERT INTO bairro VALUES(223, 'Cauame ', 112, 'RR');
INSERT INTO bairro VALUES(224, 'Jardim Santana', 112, 'RR');
INSERT INTO bairro VALUES(225, 'Nova Cidade', 113, 'RR');
INSERT INTO bairro VALUES(226, '31 de Marco', 113, 'RR');
INSERT INTO bairro VALUES(227, 'Jardim Tropical', 114, 'RR');
INSERT INTO bairro VALUES(228, 'Bairro dos Estados', 114, 'RR');
INSERT INTO bairro VALUES(229, 'Buritis', 115, 'RR');
INSERT INTO bairro VALUES(230, 'Tancredo Neves', 115, 'RR');

INSERT INTO bairro VALUES(231, 'Campeche', 116, 'SC');
INSERT INTO bairro VALUES(232, 'Canasvieiras', 116, 'SC');
INSERT INTO bairro VALUES(233, 'Ratones ', 117, 'SC');
INSERT INTO bairro VALUES(234, 'Monte Cristo', 117, 'SC');
INSERT INTO bairro VALUES(235, 'Itacorubi', 118, 'SC');
INSERT INTO bairro VALUES(236, 'Capivari', 118, 'SC');
INSERT INTO bairro VALUES(237, 'Pantanal', 119, 'SC');
INSERT INTO bairro VALUES(238, 'Ingleses Centro', 119, 'SC');
INSERT INTO bairro VALUES(239, 'Jurere Leste', 120, 'SC');
INSERT INTO bairro VALUES(240, 'Ressacada', 120, 'SC');

INSERT INTO bairro VALUES(241, 'Santo Amaro', 121, 'SP');
INSERT INTO bairro VALUES(242, 'Jardins', 121, 'SP');
INSERT INTO bairro VALUES(243, 'Bom Clima ', 122, 'SP');
INSERT INTO bairro VALUES(244, 'Cocaia', 122, 'SP');
INSERT INTO bairro VALUES(245, 'Itapegica', 123, 'SP');
INSERT INTO bairro VALUES(246, 'Paraventi', 123, 'SP');
INSERT INTO bairro VALUES(247, 'Pimentas', 124, 'SP');
INSERT INTO bairro VALUES(248, 'Vila Izabel', 124, 'SP');
INSERT INTO bairro VALUES(249, 'Jardim Munhoz', 125, 'SP');
INSERT INTO bairro VALUES(250, 'Jardim Lenize', 125, 'SP');

INSERT INTO bairro VALUES(251, 'Getulio Vargas', 126, 'SE');
INSERT INTO bairro VALUES(252, 'Inacio Barbosa', 126, 'SE');
INSERT INTO bairro VALUES(253, 'Salgado Filho', 127, 'SE');
INSERT INTO bairro VALUES(254, 'Jabotiana', 127, 'SE');
INSERT INTO bairro VALUES(255, 'Pereira Lobo', 128, 'SE');
INSERT INTO bairro VALUES(256, 'Olaria', 128, 'SE');
INSERT INTO bairro VALUES(257, 'Getimana', 129, 'SE');
INSERT INTO bairro VALUES(258, 'Dezoito do Forte', 129, 'SE');
INSERT INTO bairro VALUES(259, 'Soledade', 130, 'SE');
INSERT INTO bairro VALUES(260, 'Siqueira Campos', 130, 'SE');

INSERT INTO bairro VALUES(261, 'Orla', 131, 'TO');
INSERT INTO bairro VALUES(262, 'Jardim Aureny I', 131, 'TO');
INSERT INTO bairro VALUES(263, 'Buritirana', 132, 'TO');
INSERT INTO bairro VALUES(264, 'Bertaville', 132, 'TO');
INSERT INTO bairro VALUES(265, 'Santa Helena', 133, 'TO');
INSERT INTO bairro VALUES(266, 'Morada do Sol', 133, 'TO');
INSERT INTO bairro VALUES(267, 'Jardim Taquari', 134, 'TO');
INSERT INTO bairro VALUES(268, 'Maria Rosa', 134, 'TO');
INSERT INTO bairro VALUES(269, 'Lago Sul', 135, 'TO');
INSERT INTO bairro VALUES(270, 'Taquarucu do Porto', 135, 'TO');



/*4. Inserindo dados de 10 compradores */
INSERT INTO compradores VALUES (
	1,
	'Fernando Teixeira',
	'Rua Hortolandia, 445',
	'399.898.563-66',
	121,
	241,
	'SP',
	'(11)5897-4151'
);

INSERT INTO compradores VALUES (
	2,
	'Claudia Goncalves',
	'Alameda Santana, 632',
	'365.145.791-95',
	126,
	251,
	'SE',
	'(79)2654-9885'
);

INSERT INTO compradores VALUES (
	3,
	'Maria Conceicao',
	'Avenida Ipanema, 789',
	'153.664.987-41',
	91,
	181,
	'RJ',
	'(21)4798-5123'
);

INSERT INTO compradores VALUES (
	4,
	'Andre Sergio',
	'Rua Sao Rafael, 347',
	'459.654.136-23',
	71,
	141,
	'PB',
	'(83)6987-1245'
);

INSERT INTO compradores VALUES (
	5,
	'William Soares',
	'Avenida Antonio Ramos, 731',
	'349.458.193-74',
	56,
	111,
	'MS',
	'(66)4903-2399'
);

INSERT INTO compradores VALUES (
	6,
	'Sabrina Almeida',
	'Rua Francisca Joana, 632',
	'789.359.746-41',
	131,
	261,
	'TO',
	'(63)6543-7852'
);

INSERT INTO compradores VALUES (
	7,
	'Walter Cunha',
	'Alameda Humberto Garcia, 98',
	'269.417.526-87',
	61,
	121,
	'MG',
	'(37)4874-6541'
);

INSERT INTO compradores VALUES (
	8,
	'Gabriela Paiva',
	'Avenida Potiguar, 786',
	'987.456.147.27',
	110,
	219,
	'RO',
	'(69)3254-8974'
);

INSERT INTO compradores VALUES (
	9,
	'Gilson Oliveira',
	'Rua Guaramomis, 343',
	'781.657.134-46',
	27,
	53,
	'CE',
	'(88)6589-1465'
);

INSERT INTO compradores VALUES (
	10,
	'Humberto Guimaraes',
	'Alameda dos Oliveiras, 146',
	'987.654.125-43',
	87,
	173,
	'PI',
	'(86)5621-4597'
);



/*5. Inserindo Dados de 15 vendedores */
INSERT INTO vendedor VALUES (
	1,
	'Mario Santana',
	'Travessa da Morte, 541',
	'463.521.463-98',
	118,
	236,
	'SC',
	'(47)5411-9874',
	'24/09/1973'
);

INSERT INTO vendedor VALUES (
	2,
	'Ronaldo Demetrio',
	'Avenida Iguarapes, 231',
	'897.415.874-54',
	115,
	230,
	'RR',
	'(95)5414-9814',
	'07/04/1977'
);

INSERT INTO vendedor VALUES (
	3,
	'Michelle Ferreira',
	'Rua Campos, 467',
	'541.465.974-51',
	25,
	50,
	'BA',
	'(75)6514-9124',
	'09/08/1980'
);

INSERT INTO vendedor VALUES (
	4,
	'Kaue Morais',
	'Rua Jabuticaba, 345',
	'741.415.974-91',
	98,
	196,
	'RN',
	'(84)5514-9624',
	'29/02/1984'
);

INSERT INTO vendedor VALUES (
	5,
	'Fernanda Takahama',
	'Rua Guararapoava, 874',
	'445.475.964-94',
	8,
	15,
	'AL',
	'(82)5654-9644',
	'21/07/1972'
);

INSERT INTO vendedor VALUES (
	6,
	'Igor Novaes',
	'Rua Trajanilda, 416',
	'845.471.664-34',
	35,
	70,
	'DF',
	'(61)5654-9644',
	'25/12/1970'
);

INSERT INTO vendedor VALUES (
	7,
	'Emerson Duarte',
	'Alameda Santos, 416',
	'345.971.264-36',
	124,
	248,
	'SP',
	'(11)5511-9674',
	'29/10/1984'
);

INSERT INTO vendedor VALUES (
	8,
	'Eduardo Ernesto',
	'Avenida 4 de Setembro, 716',
	'145.761.464-31',
	55,
	109,
	'MT',
	'(66)5571-7684',
	'11/07/1989'
);

INSERT INTO vendedor VALUES (
	9,
	'Luiza Pires',
	'Avenida Tropical, 741',
	'345.469.464-39',
	15,
	29,
	'AP',
	'(96)6572-7484',
	'15/09/1987'
);

INSERT INTO vendedor VALUES (
	10,
	'Cristina Teixeira',
	'Avenida Magal, 21',
	'765.969.434-59',
	2,
	3,
	'AC',
	'(68)8512-8484',
	'16/02/1984'
);

INSERT INTO vendedor VALUES (
	11,
	'Jhonny Torres',
	'Travessa Zerbinatti, 654',
	'967.967.534-79',
	37,
	74,
	'ES',
	'(27)2512-9484',
	'24/09/1988'
);

INSERT INTO vendedor VALUES (
	12,
	'Lucas Rocha',
	'Rua Rafael Ramos, 478',
	'661.368.987-19',
	48,
	95,
	'MA',
	'(98)2452-1456',
	'14/03/1985'
);

INSERT INTO vendedor VALUES (
	13,
	'Priscila Cavalcante',
	'Avenida Ponte Preta, 543',
	'461.567.989-69',
	69,
	138,
	'PA',
	'(94)3442-4696',
	'26/01/1970'
);

INSERT INTO vendedor VALUES (
	14,
	'Joao Doria',
	'Avenida Palmares, 1100',
	'767.597.189-64',
	74,
	148,
	'PB',
	'(83)4442-7646',
	'28/04/1974'
);

INSERT INTO vendedor VALUES (
	15,
	'Regina Magalhaes',
	'Rua Olivia, 341',
	'864.397.189-34',
	93,
	185,
	'RJ',
	'(21)5647-7821',
	'19/06/1978'
);



/*6. Inserindo ofertas dos compradores */

INSERT INTO oferta VALUES (
	1,
	1,
	1,
	2000000.00,
	'05/05/2014',
);

INSERT INTO oferta VALUES (
	2,
	2,
	1,
	2000000.10,
	'05/05/2014',
);

INSERT INTO oferta VALUES (
	3,
	3,
	1,
	2000000.20,
	'01/03/2014',
);

INSERT INTO oferta VALUES (
	4,
	4,
	1,
	2000000.30,
	'01/07/2014',
);

INSERT INTO oferta VALUES (
	5,
	5,
	1,
	3000000.40,
	'10/08/2014',
);
	
INSERT INTO oferta VALUES (
	6,
	4,
	2,
	1000500.00,
	'07/04/2014',
);

INSERT INTO oferta VALUES (
	7,
	6,
	2,
	1005000.00,
	'28/05/2014',
);

INSERT INTO oferta VALUES (
	8,
	8,
	2,
	1500000.00,
	'19/06/2014',
);

INSERT INTO oferta VALUES (
	9,
	2,
	2,
	1050000.00,
	'22/07/2014',
);

INSERT INTO oferta VALUES (
	10,
	1,
	2,
	109000.00,
	'29/08/2014',
);

INSERT INTO oferta VALUES (
	11,
	1,
	3,
	2000500.00,
	'15/04/2014',
);

INSERT INTO oferta VALUES (
	12,
	15,
	3,
	2000000.00,
	'18/05/2014',
);

INSERT INTO oferta VALUES (
	13,
	9,
	3,
	2005000.00,
	'14/06/2014',
);

INSERT INTO oferta VALUES (
	14,
	10,
	3,
	2500000.00,
	'14/07/2014',
);

INSERT INTO oferta VALUES (
	15,
	11,
	3,
	2000050.00,
	'16/08/2014',
);

INSERT INTO oferta VALUES (
	16,
	1,
	4,
	2500500.00,
	'26/04/2014',
);

INSERT INTO oferta VALUES (
	17,
	1,
	4,
	2400500.00,
	'30/05/2014',
);

INSERT INTO oferta VALUES (
	18,
	1,
	4,
	2300500.00,
	'04/04/2014',
);

INSERT INTO oferta VALUES (
	19,
	1,
	4,
	2200500.00,
	'04/02/2014',
);

INSERT INTO oferta VALUES (
	20,
	1,
	4,
	2100000.00,
	'15/04/2014',
);

INSERT INTO oferta VALUES (
	21,
	1,
	5,
	2151507.00,
	'15/03/2014',
);


INSERT INTO oferta VALUES (
	22,
	16,
	5,
	2320000.00,
	'04/04/2014',
);

INSERT INTO oferta VALUES (
	23,
	11,
	5,
	2120000.00,
	'04/05/2014',
);

INSERT INTO oferta VALUES (
	24,
	21,
	5,
	2130000.00,
	'04/06/2014',
);

INSERT INTO oferta VALUES (
	25,
	19,
	5,
	2170000.00,
	'04/07/2014',
);

INSERT INTO oferta VALUES (
	26,
	5,
	6,
	2180000.00,
	'04/08/2014',
);

INSERT INTO oferta VALUES (
	27,
	19,
	6,
	2190000.00,
	'04/04/2014',
);

INSERT INTO oferta VALUES (
	28,
	19,
	6,
	2170000.00,
	'04/05/2014',
);

INSERT INTO oferta VALUES (
	29,
	11,
	6,
	2270000.00,
	'04/06/2014',
);

INSERT INTO oferta VALUES (
	30,
	10,
	6,
	2370000.00,
	'04/07/2014',
);

INSERT INTO oferta VALUES (
	31,
	1,
	7,
	2470000.00,
	'04/08/2014',
);

INSERT INTO oferta VALUES (
	32,
	20,
	7,
	2910000.00,
	'04/04/2014',
);

INSERT INTO oferta VALUES (
	33,
	18,
	7,
	2120000.00,
	'04/05/2014',
);

INSERT INTO oferta VALUES (
	34,
	10,
	7,
	2130000.00,
	'04/06/2014',
);

INSERT INTO oferta VALUES (
	35,
	19,
	7,
	2140000.00,
	'04/07/2014',
);

INSERT INTO oferta VALUES (
	36,
	21,
	8,
	2150000.00,
	'04/08/2014',
);

INSERT INTO oferta VALUES (
	37,
	21,
	8,
	2155000.00,
	'04/04/2014',
);

INSERT INTO oferta VALUES (
	38,
	21,
	8,
	2154000.00,
	'04/05/2014',
);

INSERT INTO oferta VALUES (
	39,
	21,
	8,
	2153000.00,
	'04/06/2014',
);

INSERT INTO oferta VALUES (
	40,
	21,
	8,
	2152000.00,
	'04/07/2014',
);

INSERT INTO oferta VALUES (
	41,
	21,
	9,
	2151000.00,
	'04/08/2014',
);

INSERT INTO oferta VALUES (
	42,
	1,
	9,
	2151100.00,
	'04/04/2014',
);

INSERT INTO oferta VALUES (
	43,
	2,
	9,
	2151200.00,
	'04/05/2014',
);

INSERT INTO oferta VALUES (
	44,
	22,
	9,
	2151300.00,
	'04/06/2014',
);

INSERT INTO oferta VALUES (
	45,
	27,
	9,
	2151400.00,
	'04/07/2014',
);

INSERT INTO oferta VALUES (
	47,
	250,
	10,
	7151500.00,
	'04/04/2014',
);

INSERT INTO oferta VALUES (
	48,
	249,
	10,
	7151500.00,
	'04/05/2014',
);

INSERT INTO oferta VALUES (
	49,
	248,
	10,
	7151500.00,
	'04/06/2014',
);

INSERT INTO oferta VALUES (
	50,
	247,
	10,
	7151500.00,
	'04/07/2014',
);

INSERT INTO oferta VALUES (
	46,
	245,
	10,
	7151500.00,
	'04/08/2014',
);






/*7. Cadastrando 1 imóvel por bairro */
INSERT INTO imovel VALUES (
	1,
	15,
	1,
	1,
	'AC',
	'R Rio de Janeiro, 684',
	500,00,
	2.000,
	2000000,00,
	1,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	2,
	15,
	2,
	1,
	'AC',
	'Av Coronel Mâncio Lima, 715',
	400,00,
	2.500,
	2000500,00,
	2
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	3,
	15,
	3,
	2,
	'AC',
	'Av Avelino Chaves, 1434',
	450,00,
	2.400,
	2000500,00,
	3
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	4,
	15,
	4,
	2,
	'AC',
	'Av Tancredo Neves, 263',
	440,00,
	2.800,
	2000100,00,
	4
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	5,
	15,
	5,
	3,
	'AC',
	'Rua Seis de Agosto, 663',
	400,00,
	2.230.00,
	2000000,00,
	5
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	6,
	15,
	6,
	3,
	'AC',
	'Rod BR-364, 141',
	1000.00,
	2.230.00,
	2900000,00,
	6
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	7,
	15,
	7,
	4,
	'AC',
	'Rod BR-364, 1785',
	100000,
	205.00,
	200900.00,
	7
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	8,
	15,
	8,
	4,
	'AC',
	'R 24 de Janeiro, 2022',
	600,00,
	2230.00,
	500000,00,
	8
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	9,
	15,
	9,
	5,
	'AC',
	'R Angelim, 41 ',
	530,00,
	1830.00,
	2100000,00,
	9
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	10,
	15,
	10,
	5,
	'AC',
	'Av Marechal Deodoro, 39',
	600,00,
	2030.00,
	200000,00,
	10
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	11,
	15,
	11,
	6,
	'AL',
	'Av Juca Sampaio, 1785',
	300.00,
	630.00,
	1900000,00,
	11
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	12,
	15,
	12,
	6,
	'AL',
	'R B 37, 514',
	1000,00,
	2230,
	2200000,00,
	12
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	13,
	15,
	13,
	7,
	'AL',
	'R Lindinalva Eulália de Farias, 46',
	440,00,
	1230.00,
	2000000,00,
	13
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	14,
	15,
	14,
	7,
	'AL',
	'Av Vereador João Saturnino de Almeida, 280',
	5600.00,
	1030.00,
	2900000,00,
	14
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	15,
	15,
	15,
	8,
	'AL',
	'Lgo São Cristovão, 17 ',
	400,00,
	730.00,
	2000100,00,
	15
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	16,
	15,
	16,
	8,
	'AL',
	'Praca do Rosario, 141',
	530.00,
	630.00,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	17,
	15,
	17,
	9,
	'AL',
	'Avenida João Davino, 95 ',
	430.00,
	2230.00,
	2100000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	18,
	15,
	18,
	9,
	'AL',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	19,
	14,
	19,
	10,
	'AL',
	'Rua Demócrito Gracindo,110',
	300,00,
	630.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	20,
	14,
	20,
	10,
	'AP',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	21,
	14,
	21,
	11,
	'AP',
	'Rod Duque de Caxias, 799 - km-2,5',
	1500,00,
	2230.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	22,
	14,
	22,
	11,
	'AP',
	'Av Miguel Faustino Picanço, 453 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	23,
	14,
	23,
	12,
	'AP',
	'Av Fab, 2851',
	600,00,
	730.00,
	2000000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	24,
	14,
	24,
	12,
	'AP',
	'Av Joaquim Silva do Amaral, 2666',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	25,
	14,
	25,
	13,
	'AP',
	'Av Água Branca, 341',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	26,
	14,
	26,
	13,
	'AP',
	'R Goiás, 1213 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	27,
	14,
	27,
	14,
	'AP',
	'Av Colares Moreira, 27 - qd-100 lj-2 lj-7 ',
	100.00,
	100.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	28,
	14,
	28,
	14,
	'AP',
	'Rod Salvador Diniz, 1818',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	29,
	14,
	29,
	15,
	'AP',
	'Av Fortaleza, 1639 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	30,
	14,
	30,
	15,
	'AP',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	31,
	14,
	31,
	16,
	'AM',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	32,
	14,
	32,
	16,
	'AM',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	33,
	14,
	33,
	17,
	'AM',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	34
	14,
	34,
	17,
	'AM',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	35,
	14,
	35,
	18,
	'AM',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	36,
	14,
	36,
	18,
	'AM',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	37,
	13,
	37,
	19,
	'AM',
	'R Rio de Janeiro, 684',
	500,00,
	2.000,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	38,
	13,
	38,
	19,
	'AM',
	'Av Coronel Mâncio Lima, 715',
	400,00,
	2.500,
	2000500,00,
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	39,
	13,
	39,
	20,
	'AM',
	'Av Avelino Chaves, 1434',
	450,00,
	2.400,
	2000500,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	40,
	13,
	40,
	20,
	'AM',
	'Av Tancredo Neves, 263',
	440,00,
	2.800,
	2000100,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	41,
	13,
	41,
	21,
	'BA',
	'Rua Seis de Agosto, 663',
	400,00,
	2.230.00,
	2000000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	42,
	13,
	42,
	21,
	'BA',
	'Rod BR-364, 141',
	1000.00,
	2.230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	43,
	13,
	43,
	22,
	'BA',
	'Rod BR-364, 1785',
	100000,
	205.00,
	2.009.00.00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	44,
	13,
	44,
	22,
	'BA',
	'R 24 de Janeiro, 2022',
	600,00,
	2230.00,
	5000.00,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	45,
	13,
	45,
	23,
	'BA',
	'R Angelim, 41 ',
	530,00,
	1830.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	46,
	13,
	46,
	23,
	'BA',
	'Av Marechal Deodoro, 39',
	600,00,
	2030.00,
	200000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	47,
	13,
	47,
	24,
	'BA',
	'Av Juca Sampaio, 1785',
	300,00,
	2.30,
	1900000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	48,
	13,
	48,
	24,
	'BA',
	'R B 37, 514',
	1000,00,
	2.230,
	2200000,00,
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	49,
	13,
	49,
	25,
	'BA',
	'R Lindinalva Eulália de Farias, 46',
	440,00,
	1.230.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	50,
	13,
	50,
	25,
	'BA',
	'Av Vereador João Saturnino de Almeida, 280',
	5600.00,
	1030.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	51,
	13,
	51,
	26,
	'CE',
	'Lgo São Cristovão, 17 ',
	400,00,
	730.00,
	2000100,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	52,
	13,
	52,
	26,
	'CE',
	'Praca do Rosario, 141',
	530.00,
	630.00,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	53,
	13,
	53,
	27,
	'CE',
	'Avenida João Davino, 95 ',
	430.00,
	2230.00,
	2100000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	54,
	13,
	54,
	27,
	'CE',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	55,
	12,
	55,
	28,
	'CE',
	'Rua Demócrito Gracindo,110',
	300,00,
	630.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	56,
	12,
	56,
	28,
	'CE',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	57,
	12,
	57,
	29,
	'CE',
	'Rod Duque de Caxias, 799 - km-2,5',
	1500,00,
	2230.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	58,
	12,
	58,
	29,
	'CE',
	'Av Miguel Faustino Picanço, 453 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	59,
	12,
	59,
	30,
	'CE',
	'Av Fab, 2851',
	600,00,
	730.00,
	2000000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	60,
	12,
	60,
	30,
	'CE',
	'Av Joaquim Silva do Amaral, 2666',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	61,
	12,
	61,
	31,
	'DF',
	'Av Água Branca, 341',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	62,
	15,
	62,
	31,
	'DF',
	'R Goiás, 1213 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	63,
	12,
	63,
	32,
	'DF',
	'Av Colares Moreira, 27 - qd-100 lj-2 lj-7 ',
	100.00,
	100.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	64,
	12,
	64,
	32,
	'DF',
	'Rod Salvador Diniz, 1818',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	65,
	12,
	65,
	33,
	'DF',
	'Av Fortaleza, 1639 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	66,
	12,
	66,
	33,
	'DF',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	67,
	12,
	67,
	34,
	'DF',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	68,
	12,
	68,
	34,
	'DF',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	69,
	12,
	69,
	35,
	'DF',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	70
	12,
	70,
	35,
	'DF',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	71,
	12,
	71,
	36,
	'ES',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	72,
	12,
	72,
	36,
	'ES',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	73,
	15,
	73,
	37,
	'ES',
	'R Rio de Janeiro, 684',
	500,00,
	2.000,
	2000000,00,
	1,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	74,
	15,
	74,
	37,
	'ES',
	'Av Coronel Mâncio Lima, 715',
	400,00,
	2.500,
	2000500,00,
	2
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	75,
	15,
	75,
	38,
	'ES',
	'Av Avelino Chaves, 1434',
	450,00,
	2.400,
	2000500,00,
	3
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	76,
	15,
	76,
	38,
	'ES',
	'Av Tancredo Neves, 263',
	440,00,
	2.800,
	2000100,00,
	4
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	79,
	15,
	79,
	39,
	'ES',
	'Rua Seis de Agosto, 663',
	400,00,
	2.230.00,
	2000000,00,
	5
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	80,
	15,
	80,
	40,
	'ES',
	'Rod BR-364, 141',
	1000.00,
	2.230.00,
	2900000,00,
	6
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	81,
	15,
	81,
	40,
	'ES',
	'Rod BR-364, 1785',
	100000,
	205.00,
	200900.00,
	7
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	82,
	15,
	82,
	41,
	'GO',
	'R 24 de Janeiro, 2022',
	600,00,
	2230.00,
	500000,00,
	8
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	83,
	15,
	83,
	42,
	'GO',
	'R Angelim, 41 ',
	530,00,
	1830.00,
	2100000,00,
	9
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	84,
	15,
	84,
	42,
	'GO',
	'Av Marechal Deodoro, 39',
	600,00,
	2030.00,
	200000,00,
	10
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	85,
	15,
	85,
	43,
	'GO',
	'Av Juca Sampaio, 1785',
	300.00,
	630.00,
	1900000,00,
	11
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	86,
	15,
	86,
	43,
	'GO',
	'R B 37, 514',
	1000,00,
	2230,
	2200000,00,
	12
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	87,
	15,
	87,
	44,
	'GO',
	'R Lindinalva Eulália de Farias, 46',
	440,00,
	1230.00,
	2000000,00,
	13
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	88,
	15,
	88,
	44,
	'GO',
	'Av Vereador João Saturnino de Almeida, 280',
	5600.00,
	1030.00,
	2900000,00,
	14
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	89,
	15,
	89,
	45,
	'GO',
	'Lgo São Cristovão, 17 ',
	400,00,
	730.00,
	2000100,00,
	15
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	90,
	15,
	90,
	45,
	'GO',
	'Praca do Rosario, 141',
	530.00,
	630.00,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	91,
	15,
	91,
	46,
	'MA',
	'Avenida João Davino, 95 ',
	430.00,
	2230.00,
	2100000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	92,
	15,
	92,
	46,
	'MA',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	93,
	14,
	93,
	47,
	'MA',
	'Rua Demócrito Gracindo,110',
	300,00,
	630.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	94,
	14,
	94,
	47,
	'MA',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	95,
	14,
	95,
	48,
	'MA',
	'Rod Duque de Caxias, 799 - km-2,5',
	1500,00,
	2230.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	96,
	14,
	96,
	48,
	'MA',
	'Av Miguel Faustino Picanço, 453 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	97,
	14,
	97,
	49,
	'MA',
	'Av Fab, 2851',
	600,00,
	730.00,
	2000000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	98,
	14,
	98,
	49,
	'MA',
	'Av Joaquim Silva do Amaral, 2666',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	99,
	14,
	99,
	50,
	'MA',
	'Av Água Branca, 341',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	100,
	14,
	100,
	50,
	'MA',
	'R Goiás, 1213 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	101,
	14,
	101,
	51,
	'MT',
	'Av Colares Moreira, 27 - qd-100 lj-2 lj-7 ',
	100.00,
	100.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	102,
	102,
	28,
	51,
	'MT',
	'Rod Salvador Diniz, 1818',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	103,
	14,
	103,
	52,
	'MT',
	'Av Fortaleza, 1639 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	104,
	14,
	104,
	52,
	'MT',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	105,
	14,
	105,
	53,
	'MT',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	106,
	14,
	106,
	53,
	'MT',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	107,
	14,
	107,
	54,
	'MT',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	108
	14,
	34,
	54,
	'MT',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	109,
	14,
	109,
	55,
	'MT',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	110,
	14,
	110,
	55,
	'MT',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	111,
	13,
	11,
	56,
	'MS',
	'R Rio de Janeiro, 684',
	500,00,
	2.000,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	112,
	13,
	112,
	56,
	'MS',
	'Av Coronel Mâncio Lima, 715',
	400,00,
	2.500,
	2000500,00,
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	113,
	13,
	113,
	57,
	'MS',
	'Av Avelino Chaves, 1434',
	450,00,
	2.400,
	2000500,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	114,
	13,
	114,
	57,
	'MS',
	'Av Tancredo Neves, 263',
	440,00,
	2.800,
	2000100,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	115,
	13,
	115,
	58,
	'MS',
	'Rua Seis de Agosto, 663',
	400,00,
	2.230.00,
	2000000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	116,
	13,
	116,
	58,
	'MS',
	'Rod BR-364, 141',
	1000.00,
	2.230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	117,
	117,
	43,
	59,
	'MS',
	'Rod BR-364, 1785',
	100000,
	205.00,
	2.009.00.00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	118,
	13,
	118,
	59,
	'MS',
	'R 24 de Janeiro, 2022',
	600,00,
	2230.00,
	5000.00,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	119,
	13,
	119,
	60,
	'MS',
	'R Angelim, 41 ',
	530,00,
	1830.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	120,
	13,
	120,
	60,
	'MS',
	'Av Marechal Deodoro, 39',
	600,00,
	2030.00,
	200000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	121,
	13,
	121,
	61,
	'MG',
	'Av Juca Sampaio, 1785',
	300,00,
	2.30,
	1900000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	122,
	13,
	122,
	61,
	'MG',
	'R B 37, 514',
	1000,00,
	2.230,
	2200000,00,
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	123,
	13,
	123,
	62,
	'MG',
	'R Lindinalva Eulália de Farias, 46',
	440,00,
	1.230.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	124,
	13,
	124,
	62,
	'MG',
	'Av Vereador João Saturnino de Almeida, 280',
	5600.00,
	1030.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	125,
	13,
	125,
	63,
	'MG',
	'Lgo São Cristovão, 17 ',
	400,00,
	730.00,
	2000100,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	126,
	13,
	126,
	63,
	'MG',
	'Praca do Rosario, 141',
	530.00,
	630.00,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	127,
	13,
	127,
	64,
	'MG',
	'Avenida João Davino, 95 ',
	430.00,
	2230.00,
	2100000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	128,
	13,
	128,
	65,
	'MG',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	129,
	12,
	129,
	65,
	'MG',
	'Rua Demócrito Gracindo,110',
	300,00,
	630.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	130,
	12,
	130,
	66,
	'PA',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	131,
	12,
	131,
	66,
	'PA',
	'Rod Duque de Caxias, 799 - km-2,5',
	1500,00,
	2230.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	132,
	12,
	132,
	67,
	'PA',
	'Av Miguel Faustino Picanço, 453 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	133,
	12,
	133,
	67,
	'PA',
	'Av Fab, 2851',
	600,00,
	730.00,
	2000000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	134,
	12,
	134,
	68,
	'PA',
	'Av Joaquim Silva do Amaral, 2666',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	135,
	12,
	135,
	68,
	'PA',
	'Av Água Branca, 341',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	136,
	15,
	136,
	69,
	'PA',
	'R Goiás, 1213 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	137,
	12,
	137,
	69,
	'PA',
	'Av Colares Moreira, 27 - qd-100 lj-2 lj-7 ',
	100.00,
	100.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	138,
	12,
	138,
	70,
	'PA',
	'Rod Salvador Diniz, 1818',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	139,
	12,
	139,
	70,
	'PA',
	'Av Fortaleza, 1639 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	140,
	12,
	140,
	71,
	'PB',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	141,
	12,
	141,
	71,
	'PB',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	142,
	12,
	142,
	72,
	'PB',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	143,
	12,
	143,
	72,
	'PB',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	144
	12,
	144,
	73,
	'PB',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	145,
	12,
	145,
	73,
	'PB',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	146,
	12,
	146,
	74,
	'PB',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);



INSERT INTO imovel VALUES (
	147,
	14,
	147,
	74,
	'PB',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	148
	14,
	148,
	75,
	'PB',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	149,
	14,
	149,
	75,
	'PB',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	150,
	14,
	150,
	76,
	'PR',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	151,
	13,
	151,
	76,
	'PR',
	'R Rio de Janeiro, 684',
	500,00,
	2.000,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	152,
	13,
	152,
	77,
	'PR',
	'Av Coronel Mâncio Lima, 715',
	400,00,
	2.500,
	2000500,00,
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	153,
	13,
	153,
	77,
	'PR',
	'Av Avelino Chaves, 1434',
	450,00,
	2.400,
	2000500,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	154,
	13,
	154,
	78,
	'PR',
	'Av Tancredo Neves, 263',
	440,00,
	2.800,
	2000100,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	155,
	13,
	155,
	78,
	'PR',
	'Rua Seis de Agosto, 663',
	400,00,
	2.230.00,
	2000000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	156,
	13,
	156,
	79,
	'PR',
	'Rod BR-364, 141',
	1000.00,
	2.230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	157,
	157,
	43,
	79,
	'PR',
	'Rod BR-364, 1785',
	100000,
	205.00,
	2.009.00.00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	158,
	13,
	158,
	80,
	'PR',
	'R 24 de Janeiro, 2022',
	600,00,
	2230.00,
	5000.00,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	159,
	13,
	159,
	80,
	'PR',
	'R Angelim, 41 ',
	530,00,
	1830.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	160,
	13,
	160,
	81,
	'PE',
	'Av Marechal Deodoro, 39',
	600,00,
	2030.00,
	200000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	161,
	13,
	161,
	81,
	'PE',
	'Av Juca Sampaio, 1785',
	300,00,
	2.30,
	1900000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	162,
	13,
	162,
	82,
	'PE',
	'R B 37, 514',
	1000,00,
	2.230,
	2200000,00,
	'A venda',
	02/05/2014
);

INSERT INTO imovel VALUES (
	163,
	13,
	163,
	82,
	'PE',
	'R Lindinalva Eulália de Farias, 46',
	440,00,
	1.230.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	164,
	13,
	164,
	83,
	'PE',
	'Av Vereador João Saturnino de Almeida, 280',
	5600.00,
	1030.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	165,
	13,
	165,
	83,
	'PE',
	'Lgo São Cristovão, 17 ',
	400,00,
	730.00,
	2000100,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	166,
	13,
	166,
	84,
	'PE',
	'Praca do Rosario, 141',
	530.00,
	630.00,
	2000000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	167,
	13,
	167,
	84,
	'PE',
	'Avenida João Davino, 95 ',
	430.00,
	2230.00,
	2100000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	168,
	13,
	168,
	85,
	'PE',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	169,
	12,
	169,
	86,
	'PE',
	'Rua Demócrito Gracindo,110',
	300,00,
	630.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	170,
	12,
	170,
	86,
	'PE',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	171,
	12,
	171,
	87,
	'PE',
	'Rod Duque de Caxias, 799 - km-2,5',
	1500,00,
	2230.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	172,
	12,
	172,
	87,
	'PE',
	'Av Miguel Faustino Picanço, 453 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	173,
	12,
	173,
	88,
	'PE',
	'Av Fab, 2851',
	600,00,
	730.00,
	2000000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	174,
	12,
	174,
	88,
	'PE',
	'Av Joaquim Silva do Amaral, 2666',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	175,
	12,
	175,
	89,
	'PE',
	'Av Água Branca, 341',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	176,
	15,
	176,
	89,
	'PE',
	'R Goiás, 1213 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	177,
	12,
	177,
	90,
	'PE',
	'Av Colares Moreira, 27 - qd-100 lj-2 lj-7 ',
	100.00,
	100.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	178,
	12,
	178,
	90,
	'PE',
	'Rod Salvador Diniz, 1818',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	179,
	12,
	179,
	91,
	'RJ',
	'Av Fortaleza, 1639 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	180,
	12,
	180,
	91,
	'RJ',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	181,
	12,
	181,
	92,
	'RJ',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	182,
	12,
	182,
	92,
	'RJ',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	183,
	12,
	183,
	93,
	'RJ',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	184
	12,
	184,
	93,
	'RJ',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	185,
	12,
	185,
	94,
	'RJ',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	186,
	12,
	186,
	94,
	'RJ',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	187,
	13,
	187,
	95,
	'RJ',
	'Avenida João Davino, 95 ',
	430.00,
	2230.00,
	2100000,00,
	'A venda',
	02/04/2014
);

INSERT INTO imovel VALUES (
	188,
	13,
	188,
	95,
	'RJ',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	189,
	12,
	189,
	96,
	'RJ',
	'Rua Demócrito Gracindo,110',
	300,00,
	630.00,
	2000000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	190,
	12,
	190,
	96,
	'RN',
	'Praça Agamenon Magalhães, s/n',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	191,
	12,
	191,
	97,
	'RN',
	'Rod Duque de Caxias, 799 - km-2,5',
	1500,00,
	2230.00,
	2100000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	192,
	12,
	192,
	97,
	'RN',
	'Av Miguel Faustino Picanço, 453 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/06/2014
);

INSERT INTO imovel VALUES (
	193,
	12,
	193,
	98,
	'RN',
	'Av Fab, 2851',
	600,00,
	730.00,
	2000000,00,
	'A venda',
	02/07/2014
);

INSERT INTO imovel VALUES (
	194,
	12,
	194,
	98,
	'RN',
	'Av Joaquim Silva do Amaral, 2666',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	195,
	12,
	195,
	99,
	'RN',
	'Av Água Branca, 341',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	196,
	15,
	196,
	99,
	'RN',
	'R Goiás, 1213 ',
	1000,00,
	2023.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	197,
	12,
	197,
	100,
	'RN',
	'Av Colares Moreira, 27 - qd-100 lj-2 lj-7 ',
	100.00,
	100.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	198,
	12,
	198,
	100,
	'RN',
	'Rod Salvador Diniz, 1818',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	199,
	12,
	199,
	101,
	'RN',
	'Av Fortaleza, 1639 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	200,
	12,
	200,
	101,
	'RN',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	201,
	12,
	201,
	102,
	'RS',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	202,
	12,
	202,
	102,
	'RS',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	203,
	12,
	203,
	103,
	'RS',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	204
	12,
	204,
	103,
	'RS',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	205,
	12,
	205,
	104,
	'RS',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	206,
	12,
	206,
	104,
	'RS',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	207,
	12,
	207,
	105,
	'RS',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	208,
	12,
	208,
	105,
	'RS',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	209,
	12,
	209,
	105,
	'RS',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	210,
	12,
	210,
	106,
	'RS',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	211,
	12,
	211,
	106,
	'RO',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	212,
	12,
	212,
	107,
	'RO',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	213,
	12,
	213,
	107,
	'RO',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	214,
	12,
	214,
	108,
	'RO',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	215,
	15,
	215,
	108,
	'RO',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	216,
	12,
	216,
	109,
	'RO',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	217,
	12,
	217,
	109,
	'RO',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	218
	12,
	218,
	110,
	'RO',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	219,
	12,
	219,
	110,
	'RO',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	220,
	12,
	220,
	111,
	'RO',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	221,
	12,
	221,
	111,
	'RR',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	222,
	12,
	222,
	112,
	'RR',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	223,
	12,
	223,
	112,
	'RR',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	224,
	12,
	224,
	113,
	'RR',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	225,
	12,
	225,
	113,
	'RR',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	226,
	12,
	226,
	113,
	'RR',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	227,
	12,
	227,
	114,
	'RR',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	228,
	12,
	228,
	114,
	'RR',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	229,
	12,
	229,
	115,
	'RR',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	230,
	12,
	230,
	115,
	'RR',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	231,
	12,
	231,
	116,
	'SC',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	232,
	12,
	232,
	116,
	'SC',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	233,
	12,
	233,
	117,
	'SC',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	234,
	12,
	234,
	117,
	'SC',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	235,
	15,
	235,
	118,
	'SC',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	236,
	12,
	236,
	118,
	'SC',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	237,
	12,
	237,
	119,
	'SC',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	238
	12,
	238,
	119,
	'SC',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	239,
	12,
	239,
	120,
	'SC',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	240,
	12,
	240,
	120,
	'SC',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	241,
	12,
	241,
	121,
	'SP',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	242,
	12,
	242,
	121,
	'SP',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	243,
	12,
	243,
	122,
	'SP',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	244,
	12,
	244,
	123,
	'SP',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	245,
	12,
	245,
	123,
	'SP',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	246,
	12,
	246,
	123,
	'SP',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	247,
	12,
	247,
	124,
	'SP',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	248
	12,
	248,
	124,
	'SP',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	249,
	12,
	249,
	125,
	'SP',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	250,
	12,
	250,
	125,
	'SP',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	251,
	12,
	251,
	126,
	'SE',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	252,
	12,
	252,
	126,
	'SE',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	253,
	12,
	253,
	127,
	'SE',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	254,
	12,
	254,
	127,
	'SE',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	255,
	12,
	255,
	128,
	'SE',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	256,
	12,
	256,
	128,
	'SE',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	257,
	12,
	257,
	129,
	'SE',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	258,
	12,
	258,
	129,
	'SE',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	259,
	12,
	259,
	130,
	'SE',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	260,
	12,
	260,
	130,
	'SE',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	261,
	12,
	261,
	131,
	'TO',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	262,
	12,
	262,
	131,
	'TO',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	263,
	12,
	263,
	132,
	'TO',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	264,
	12,
	264,
	132,
	'TO',
	'Av. 7 de Setembro, 03',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	265,
	15,
	265,
	133,
	'TO',
	'R Santa Quitéria, 261 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	266,
	12,
	266,
	133,
	'TO',
	'Av Álvaro Maia, 364 ',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	267,
	12,
	267,
	134,
	'TO',
	'R Bernardo Michiles, 1345',
	1000,00,
	20230.00,
	2900000,00,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	268
	12,
	268,
	134,
	'TO',
	'R Sete Quedas, 185 ',
	1000,00,
	20230.00,
	2900000,00,
	35,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	269,
	12,
	269,
	135,
	'TO',
	'Av Silves, 2035',
	1000,00,
	20230.00,
	2900000,00,
	51,
	'A venda',
	02/08/2014
);

INSERT INTO imovel VALUES (
	270,
	12,
	270,
	135,
	'TO',
	'R Rio Quixito, 86',
	1000,00,
	20230.00,
	2900000,00,
	200,
	'A venda',
	02/08/2014
);


/*8. Inserindo os seguintes dados na Tabela Faixa_Imovel:
cdfaixa	nmfaixa	vlminimo	vlmaximo
1		baixo	0			105000
2		medio	105001		180000
3		alto	180001		999999*/
INSERT INTO faixa_imovel VALUES (1, 'baixo', 0.00, 105000.00);
INSERT INTO faixa_imovel VALUES (2, 'medio', 105001.00, 180000.00);
INSERT INTO faixa_imovel VALUES (3, 'alto', 180001.00, 999999.00);