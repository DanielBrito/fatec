			  # TRIGGERS #

Gatilhos s�o subrotinas utilizadas em DML com acionamento autom�tico.

Controlando as a��es realizadas no banco de dados atrav�s de tabelas
especiais existentes nas plataformas INSERTED e DELETED.


CREATE TRIGGER tr_nome
ON tabela
FOR [INSERT | UPDATE | DELETE ] AS
<senten�a>


Para se criar um trigger h� necessidades da cria��o de uma tabela
AUDITORIA, onde controle:

USUARIO		VARCHAR(40)	     usu�rio ativo
A��O		VARCHAR(20)          'cadastrou', 'alterou', 'excluiu'
DATA		DATETIME             data do sistema
CODIGO	        INT                  PK ou FK que sofre a��o


1) CREATE TRIGGER tr_auditorinserecd
ON cd
FOR INSERT AS
INSERT INTO auditoria
SELECT SUSER_SNAME(),
       'cadastrou',
       GETDATE(),
       cod_cd
FROM INSERTED;


- COntrole de altera��o:

	CREATE TRIGGER tr_audalteramusica
	ON musica
	FOR UPDATE AS
	   INSERT INTO auditoria
	   SELECT SUSER_SNAME(),
           'alterou, musica',
           GETDATE()
           cod_musica
        FROM DELETED;



