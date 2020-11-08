Funções String:

- ASCII(): retorna o código ASCII do string informado.

	Ex.: SELECT ASCII('A'),
                    ASCII('B'),
                    ASCII('AB');


-> Desafio: Informe seu nome apresentando-o em ASCII!


- UPPER(): retorna valores string em maiúsculo.

	Ex.: SELECT UPPER (nome_musica), nome_musica
	     FROM musica;


- LOWER(): retorna string em minúsculo.

	Ex.: SELECT UPPER(nome_gravadora), endereco, LOWER(url)
	     FROM gravadora;


- LEN(): retorna o tamanho da string.

	-> Músicas com menos de 15 letras.


- LEFT(): retorna a parte da esquerda da string.

	Ex.: SELECT LEFT(endereco, 3)
	     FROM gravadora;

-> Desafio: Apresentar apenas seu primeiro nome de 'FATEC ZONA SUL'


- SUBSTRING: retorna parte da palavra contado:

	- esquerda para direita valores positivos
	- direita para esquerda valores negativos