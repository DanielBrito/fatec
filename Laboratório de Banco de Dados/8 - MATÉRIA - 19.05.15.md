	# STORED PROCEDURE #

Procedimentos são subrotinas utilizadas para customizar processos com 
comandos de linguagem de programação com ou sem passagens de parâmetros
possibilitando retornar a solicitação e/ou necessidade do cliente.

Para os procedimentos precisa colocar antes do nome da procedure:

	sp_nome_procedure (versão inglês)
	proc_nome_procedure (versão português)

	SINTAXE: CREATE PROCEDURE sp_nome AS
		 subrotina;
	
	Onde:
	
	> Deve-se declarar as variáveis:
	  
	  DECLARE @variavel TIPO
	
	> Quando atribuir valores e/ou cálculos usar:
	
	  SET @variavel = 10

	> Se necessário operador de decisão:

	  IF.../ELSE IF

	  Lembrando, se houver mais de um comando usar BEGIN/END.

	> Operador de Loop:

	  WHILE

	> Comando de saída:

	  PRINT()


	EX.: CREATE PROCEDURE sp_saudacao AS
	     DECLARE @msg VARCHAR(25)
	     SET @msg = 'Hello World'
	     PRINT @msg;

	> Para executar as procedures:

	  EXEC sp_saudaca0;

