	# STORED PROCEDURE #

Procedimentos s�o subrotinas utilizadas para customizar processos com 
comandos de linguagem de programa��o com ou sem passagens de par�metros
possibilitando retornar a solicita��o e/ou necessidade do cliente.

Para os procedimentos precisa colocar antes do nome da procedure:

	sp_nome_procedure (vers�o ingl�s)
	proc_nome_procedure (vers�o portugu�s)

	SINTAXE: CREATE PROCEDURE sp_nome AS
		 subrotina;
	
	Onde:
	
	> Deve-se declarar as vari�veis:
	  
	  DECLARE @variavel TIPO
	
	> Quando atribuir valores e/ou c�lculos usar:
	
	  SET @variavel = 10

	> Se necess�rio operador de decis�o:

	  IF.../ELSE IF

	  Lembrando, se houver mais de um comando usar BEGIN/END.

	> Operador de Loop:

	  WHILE

	> Comando de sa�da:

	  PRINT()


	EX.: CREATE PROCEDURE sp_saudacao AS
	     DECLARE @msg VARCHAR(25)
	     SET @msg = 'Hello World'
	     PRINT @msg;

	> Para executar as procedures:

	  EXEC sp_saudaca0;

