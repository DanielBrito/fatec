	# STORED PROCEDURE #

- ATIVIDADE:
  
  - Calcular 
   
    - Primos
    - Fibonacci
    - M�dia FATEC
    -IR


- Utilizando DML e DQL com Stored Procedure:
  
  - Inserindo dados

    CREATE PROCEDURE sp_inseremusica @cod INT,
                                     @nome VARCHAR(40),
                                     @tempo DURACAO(4,2) AS
    INSERT INTO musica(cod_musica, nome_musica, duracao)
    VALUES(@cod, @nome, @tempo);


-> DESAFIO
   
   - Criar sp para:
   
     - Altera��o, exclus�o da tabela musica
     - Apresentar as musicas que iniciem pela letra que informar.