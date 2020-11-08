			  # TRIGGERS #

Gatilhos são subrotinas utilizadas em DML com acionamento automático.

Controlando as ações realizadas no banco de dados através de tabelas
especiais existentes nas plataformas INSERTED e DELETED.


CREATE TRIGGER tr_nome
ON tabela
FOR [INSERT | UPDATE | DELETE ] AS
<sentença>


Para se criar um trigger há necessidades da criação de uma tabela
AUDITORIA, onde controle:

USUARIO		VARCHAR(40)	     usuário ativo
AÇÃO		VARCHAR(20)          'cadastrou', 'alterou', 'excluiu'
DATA		DATETIME             data do sistema
CODIGO	        INT                  PK ou FK que sofre ação


1) CREATE TRIGGER tr_auditorinserecd
ON cd
FOR INSERT AS
INSERT INTO auditoria
SELECT SUSER_SNAME(),
       'cadastrou',
       GETDATE(),
       cod_cd
FROM INSERTED;


- COntrole de alteração:

	CREATE TRIGGER tr_audalteramusica
	ON musica
	FOR UPDATE AS
	   INSERT INTO auditoria
	   SELECT SUSER_SNAME(),
           'alterou, musica',
           GETDATE()
           cod_musica
        FROM DELETED;



