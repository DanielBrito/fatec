#include<stdio.h>

#include<stdlib.h>

#include<conio.h>

main()

{

	float preco[150], precoNF, NFPreco_Produto[150]; //Vetores e variáveis que trabalham com preço	 

	int a=0, x=0, v=0, rel=0, y, i, aux, cod_exclui, troca; //Declaração de variáveis utilizadas para leitura, gravação, exlclusão e ordenar vetores

	int codigo[150], estoque[150], codigoNF[150], codigoVenda[v], NFCod_Produto[150], NFCod[150], NFEstoque_Produto[150], procura_cod, procura_est, vetor_ref; //Declaração de Vetores diversos

	int op_Menu_Pricipal, op_Menu_Estoque, op_Menu_Venda, op_Menu_Relat, opGeral, teste, teste_est; //Variavéis de Menus e condições

		 

	//Aqui começa o programa	 

	do //Do voltado para repetição geral do programa, voltando sempre ao menu principal em alguma hora

	{

	printf ("SIGVER - SISTEMA DE GERENCIAMENTO DE VENDAS, ESTOQUE E RELATORIOS\n\nInforme o que voce deseja fazer:\n[1] - Gerenciar Estoque\n[2] - Registrar Venda\n[3] - Gerar Relatorio\n[4] - Sair\nSua escolha: "); //Interface com o usuário

	scanf ("%d", &op_Menu_Pricipal); //Captura de variável do menu principal

	system ("cls");

	 

	 switch (op_Menu_Pricipal) //Leitura de variável para aplicação da condição

	 {

	 case 1:

		do //Repetição com objetivo de poder voltar a este menu após alguma alteração de dados dentro do mesmo

		{		

		printf ("SIGVER - GERENCIAMENTO DE ESTOQUE\n\nO que voce desejar fazer:\n[1] - Incluir novo cadastro\n[2] - Alterar cadastro especifico\n[3] - Excluir cadastro\n[4] - Voltar\nSua escolha: "); //Interface com o usuário

		scanf ("%d", &op_Menu_Estoque); //Captura da variável do menu Estoque

		system ("cls");

		   switch (op_Menu_Estoque)  //Leitura de variável para aplicação da condição

		   {

		   case 1:

			  do // Repetição com objetivo para informar novo cadastro

			  {

			  printf ("SIGVER - GERENCIAMENTO DE ESTOQUE\n\nINCLUSAO DE NOVO CADASTRO\n\n");

			  teste=0;	

				 do //Voltada para teste de condição CÓDIGO (Se o código existir, informar erro e repetir)

				 {

				 teste=0;

				 printf ("Informe o codigo do produto: ");

				 scanf ("%d", &codigo[x]);

				 for (i=0; i<x; i++)

				 {

					if (codigo[x]==codigo[i])

					{

					printf ("ERRO - O codigo ja existe\n");  

					teste=1;

					}	   

				 }

				 }

				 while(teste==1); //Fim de condição CÓDIGO			 

				 do //Voltada para teste de condição PREÇO (Se for "- ou =0", informar erro e repetir)

				 {

				 teste=0;

				 printf ("Informe o preco unitario: ");

				 scanf ("%f", &preco[x]);

					if (preco[x]<=0)

					{

					printf ("ERRO - Preco invalido\n");

					teste=1;

					}

				 }

				 while (teste==1); //Fim de condição PREÇO

				 do //Voltada para teste de condição QUANTIDADE EM ESTOQUE (Se for negativo, informar erro e repetir)

				 {

				 teste=0;

				 printf ("Informe a quantidade de produtos no estoque: ");

				 scanf ("%d", &estoque[x]);

					if (estoque[x]<0)

					{

					printf ("ERRO - Estoque negativo\n");

					teste=1;

					}

				 }

				 while (teste==1);//Fim de condição QUANTIDADE EM ESTOQUE

			  printf ("\n\nDeseja incluir novo produto?\n[1] - Sim\n[2] - Nao\nSua Escolha: "); 

			  scanf ("%d", &teste); //Captura de variável para repetição de inclusao

			  x++; //Incrementada para mudar a posição de gravação dos vetores

			  rel++; //Incrementada para a geração de relatórios, que será feita mais a frente

			  system ("cls");

			  }			 

			  while (teste==1); //Fim da repetição para inclusão de novo produto

			  system ("cls");

			  printf ("SIGVER - SISTEMA DE GERENCIAMENTO DE VENDAS, ESTOQUE E RELATORIOS\n\nO que deseja fazer:\n[1] - Voltar ao Gerenciador de Estoque\n[2] - Voltar ao Menu Pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral); //Tomada de decisão, voltar ao menu principal ou ao menu anterior

			  break;

		   case 2:

			  do //Repetição com objetivo para alterar algum cadastro

			  {

			  printf ("SIGVER - GERENCIAMENTO DE ESTOQUE\n\nALTERACAO DE CADASTRO ESPECIFICO");

			  teste=0;

				 if (x==0) //Voltada para procurar se possui alguma coisa em estoque

				 {

				 printf ("Nenhum produto em estoque\n");

				 }				

				 else

				 {

		   			printf ("\n\nInforme o codigo do produto: ");

		   			scanf ("%d", &procura_cod);

					for (i=0; i<x; i++)

		   			{

		   			teste=0;

 						   if (procura_cod==codigo[i])

		   				 {

				 		 do //Voltada para teste de condição PREÇO (Se for "- ou =0", informar erro e repetir)

				   		   {

				 		   teste=0;

				 		   printf ("Informe o preco unitario: ");

				 		   scanf ("%f", &preco[i]);

							  if (preco[x]<=0)

						 	{

						 	printf ("ERRO - Preco invalido\n");

						 	teste=1;

						 	}

						 }

				 		   while (teste==1); //Fim de condição PREÇO

				 		   do //Voltada para teste de condição QUANTIDADE EM ESTOQUE (Se for negativo, informar erro e repetir)

				 		   {

				 		   teste=0;

				 		   printf ("Informe a quantidade de produtos no estoque: ");

				 		   scanf ("%d", &estoque[i]);

						 		if (estoque[x]<0)

						 	{

						   	printf ("ERRO - Estoque negativo\n");

						   	teste=1;

						   	}

				 		   }

				 		   while (teste==1);//Fim de condição QUANTIDADE EM ESTOQUE

				 		   teste=1;

				 		   i=x;

 	   		 		   }

	   			   }

   					 if (teste==0)

				  {

					printf ("\nERRO - Codigo nao encontrado\n");

				  }

				  }

			  printf ("\nDeseja alterar outro cadastro?\n[1] - Sim\n[2] - Nao\nSua escolha: ");

			  scanf ("%d", &teste); //Captura de variável para repetição de alteração

			  system ("cls");

			  }

			  while (teste==1); //Fim da repetição para alterção de cadastro

			  

			  system ("cls");

			  printf ("SIGVER - SISTEMA DE GERENCIAMENTO DE VENDAS, ESTOQUE E RELATORIOS\n\nO que deseja fazer:\n[1] - Voltar ao Gerenciador de Estoque\n[2] - Voltar ao Menu Pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral);

		   break;

		   case 3:

			  do  //Voltada a repetição e exclusão

			  {

				printf ("SIGVER - GERENCIAMENTO DE ESTOQUE\n\nEXCLUSAO DE CADASTRO\n");

			  printf ("Informe o codigo a ser excluido: ");

			  scanf ("%d", &procura_cod);

			  teste=0;

				 for (i=0; i<x; i++) //Ele procura o código

				 {

			   		if (procura_cod==codigo[i])

			   		{

					printf ("Codigo Encontrado!\nExcluido com sucesso!");

					teste=1;

	 				cod_exclui=i;

	 				i=x;

					   for (i=cod_exclui; i<x; i++) //Reordena os vetores e exclui o selecionado(executa a exclusão)

   					   {

			 		   codigo[i]=codigo[i+1]; //Exclui o código selecionado

					   preco[i]=preco[i+1]; //Exclui o preço referente ao código selecionado

					   estoque[i]=estoque[i+1]; //Exclui a quantidade de estoque referente ao código selecionado

	   				   }

					rel=rel-1; //Atualiza o vetor, já que agora temos menos um item registrado

					x=x-1;  //Atualiza o vetor, já que agora temos menos um item registrado

					}

				}

					  

 				 if (teste==0)

 				 {

	   			 printf ("Codigo nao encontrado!"); 

				 }

			  printf ("\n\nDeseja excluir outro cadastro?\n[1] - Sim\n[2] - Nao\nSua Escolha:");

			  scanf ("%d", &teste);

			  system ("cls");

			  }

			  while (teste==1); //Condiciona se vai excluir outro ou não

			  system ("cls");

			  printf ("SIGVER - SISTEMA DE GERENCIAMENTO DE VENDAS, ESTOQUE E RELATORIOS\n\nO que deseja fazer:\n[1] - Voltar ao Gerenciador de Estoque\n[2] - Voltar ao Menu Pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral);

		   break;

		   case 4:

			  opGeral=2; //Atualizada para que possa se retornar ao menu principal

		   break;

		   default:

			  printf ("Opcao invalida\n\n");

			  printf ("SIGVER - SISTEMA DE GERENCIAMENTO DE VENDAS, ESTOQUE E RELATORIOS\n\nO que deseja fazer:\n[1] - Voltar ao Gerenciador de estoque\n[2] - Voltar ao menu pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral);

		   break;

		   }

		system ("cls");

		}

		while (opGeral==1);

	 break;

	 case 2:

		do

		{

		printf ("SIGVER - VENDAS\n\nO que voce desejar fazer:\n[1] - Registrar Venda\n[2] - Ver Nota Fiscal Especifica\n[3] - Relatorio de NFs\n[4] - Voltar\nSua escolha: ");

		scanf ("%d", &op_Menu_Venda); //Captura de variavel do menu venda

		system ("cls");

		   switch (op_Menu_Venda) //Leitura de variável para aplicação da condição

		   {

		   case 1:

			  do

			  { 

   			  printf ("SIGVER - VENDAS\n\nREGISTRAR VENDA\n");  

				 do //Repetição de procura e gravação do número da NF

				 {

				 teste=0;

				 printf ("Informe o codigo da NF: ");

				 scanf ("%d", &procura_cod);

				 for (i=0; i<=v; i++)

				 {

					if (procura_cod==NFCod[i])

					{

					teste=1;

					i=v+1;

					}

					else

					{

			 		   if (i==v)

			 		   {

	   					 NFCod[v]=procura_cod;

	   					 teste=0;

					   }

			 		}	   

				 }

				 if (teste==1)

				 {

 				   printf ("ERRO - O codigo ja existe\n");

 				   }

				 }

				 while(teste==1); //Voltada para teste de condição (Se o código da NF já existir, informar erro e repetir)

				 do

				 {

				 printf ("\nInforme o codigo do produto: ");

				 scanf ("%d", &procura_cod);

					for (i=0; i<x; i++)

					{

					   if (procura_cod==codigo[i])

					   {

					   printf ("Codigo encontrado!!\n");

					   vetor_ref=i;

					   i=x;

					   teste=0;

					   NFCod_Produto[v]=procura_cod;  //Grava no vetor o código do produto vendido, para futuras consultas

					   }

					   else

					   {

					   teste=1;

					   }		   

					}

					if (teste==1)

					{

					printf ("Codigo nao encontrado!!\n");

					}

				 }

				 while(teste==1); //Fim da condição de teste de CÓDIGO DE NF

				 do //Verifica se o numero de procutos vendidos tem em estoque (se n tiver informa erro)

				 {

				 teste_est=0;

				 printf ("Informe a quantidade de produtos vendidos: ");

				 scanf ("%d", &procura_est);

					if (procura_est<=0)

					{

					printf ("ERRO - Estoque invalido\n");

					teste_est=1;

					}

					else

					{

					   if (procura_est>estoque[vetor_ref])

					   {

					   printf ("ERRO - Nao ha esta quantidade em estoque\n");

					   teste_est=1;

					   }

					   else

					   {

 	   				   estoque[vetor_ref]=estoque[vetor_ref]-procura_est;

 					   NFEstoque_Produto[v]=procura_est;  //Grava no vetor a quantidade vendida, para futuras consultas

					   }

					}

				 }

				 while (teste_est==1); //Fim da condição TESTE DE ESTOQUE

					   

					precoNF=procura_est*preco[vetor_ref]; //Gera o preço da VENDA

				 	printf ("O total da nota e de: %.2f\n\n", precoNF); 

					NFPreco_Produto[v]=precoNF; //Grava no vetor o preço, para futuras consultas

   				

				   v++;	//Atualiza V, que é utilizado para mudar o loval de gravação no vetor, no caso de ser feita uma nova venda, O uso dela está relacionado a geração das NF´s



			  printf ("\nDeseja registrar outra venda?\n[1] - Sim\n[2] - Nao\nSua escolha: ");

			  scanf ("%d", &teste);

			  system ("cls");

			  }

			  while (teste==1);

			  printf ("SIGVER - VENDAS\n\nO que deseja fazer:\n[1] - Voltar ao menu de Vendas\n[2] - Voltar ao menu pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral);   

		   break;			

		   case 2:

			  do

			  {

			   	  do //Voltada para repetição de procura por NF, caso o código digitado não existir

			   	  {

			   	  printf ("Informe o codigo da NF: ");

			   	  scanf ("%d", &procura_cod);

			   	  if (v==0) //Procura para ver se existem vendas e consequentemente NF´s registradas

			   	  {

   	 	   		  printf ("Nao existem notas fiscais registradas\n");

				  }

				  else

				  {	 

					   teste=0;

					 for (i=0; i<=v; i++) //Faz a procura no vetor, se n encontarm informa erro e repete

			   		 {

				   	 if (procura_cod==NFCod[i])

						{

						 printf ("O codigo da NF e: %d\n", NFCod[i]);

						 printf ("O codigo do produto vendido e: %d\n", NFCod_Produto[i]);

						 printf ("A quantidade vendida e: %d\n", NFEstoque_Produto[i]);

						 printf ("O preco da NF e: %.2f\n", NFPreco_Produto[i]);

						 teste=1;

						}

 				 		 }

 				 		 {

						if (teste==0)

						{

					 	printf ("\nERRO - Codigo nao encontrado\n");

					 	}

					 }

 				 		 

				  }

			   	  }

					 while (teste==0);

			  printf ("\nDeseja ver outra NF?\n[1] - Sim\n[2] - Nao\nSua escolha: ");

			  scanf ("%d", &teste);

			  system ("cls");

			  }

			  while(teste==1);

			  printf ("SIGVER - VENDAS\n\nO que deseja fazer:\n[1] - Voltar ao menu de Vendas\n[2] - Voltar ao menu pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral);

		   break;

		   case 3:

   			  do //Uso do metodo bolha para ordenar codigos

   			  {

				  troca=0;

   				 for (i=0; i<v; i++)

   				 {

					  if (NFCod[i]>NFCod[i+1])

				   	{

				 	aux=NFCod[i+1];

				 	NFCod[i+1]=NFCod[i];

				 	NFCod[i]=aux;

				 	troca=1;

				 	}

				 }

			  }

			  while (troca==1); //Fim do uso do metodo bolha

			  printf ("##CODIGO NF  # COD.PROD. VENDIDO #  QTI. VENDIDA  #  PRECO TOTAL ##\n\n");

			  for (i=0; i<v; i++)

			  {

			  printf ("##	%d	#		%d		 #	   %d	   #	 %.2f	 ##\n", NFCod[i], NFCod_Produto[i], NFEstoque_Produto[i], NFPreco_Produto[i]);

			  }		

			  printf ("\nRelatorio concluido\n\n");

			  printf ("\nSIGVER - VENDAS\n\nO que deseja fazer:\n[1] - Voltar ao menu de Vendas\n[2] - Voltar ao menu pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral);

		   break;

		   case 4:

		   		opGeral=2;

   		   break;

		   default:

			  printf ("Opcao invalida\n\n");

			  printf ("\nO que deseja fazer:\n[1] - Voltar ao menu de Vendas\n[2] - Voltar ao menu pricipal\nSua escolha: ");

			  scanf ("%d", &opGeral);

		   break;		   

		   }

		system ("cls");

		}

		while (opGeral==1);

	 break;

	 case 3:

		do

		{

		printf ("SIGVER - RELATORIOS\n\nQual tipo de relatorio que voce deseja gerar:\n[1] - Estoque completo\n[2] - Produto especifico\n[3] - Estoque zerado\n[4] - Voltar\nSua escolha: "); 

		scanf ("%d", &op_Menu_Relat); //Captura de variável do menu relatorios

		system ("cls");

		   switch (op_Menu_Relat)//Leitura de variável para aplicação da condição

		   {

		   case 1:

			  printf ("SIGVER - RELATORIOS\n\nRELATORIO COMPLETO DE ESTOQUE\n\n");

				 if (x==0) 

				 {

				 printf ("Nenhum produto em estoque\n");

				 }

				 else

				 {	

				 do //Metodo bolha, para ordenar os codigos

				 {	

		 	 	 troca=0;

   					for (i=0; i<rel; i++)

					  {

						 if (codigo[i]>codigo[i+1])

 			 		   {

	 		 		   aux=codigo[i+1];

	 		 		   codigo[i+1]=codigo[i];

	 		 		   codigo[i]=aux;

	 		 		   

	 		 		   aux=preco[i+1];

	 		 		   preco[i+1]=preco[i];

	 		 		   preco[i]=aux;

	 		 		   	 		 		   

					   aux=estoque[i+1];

	 		 		   estoque[i+1]=estoque[i];

	 		 		   estoque[i]=aux;

					   troca=1;

	 		 		   }

	   			   }

   				 }

				 while (troca==1); //Fim do uso do metodo bolha	

					for (i=0; i<rel; i++) //Geração do relatório utilizando a pesquisa em vetores

					{

					printf ("||Codigo: %d\t||Preco: R$ %.2f\t||Quantidade em Estoque:%d\n", codigo[i], preco[i], estoque[i]);

					}

				 }

		   printf ("\nO que deseja fazer:\n[1] - Voltar ao Menu Relatorio\n[2] - Voltar ao Menu Pricipal\nSua escolha: ");

		   scanf ("%d", &opGeral);

		   break;

		   case 2:

			  printf ("SIGVER - RELATORIOS\n\nRELATORIO DE PRODUTO ESPECIFICO\n");

				 if (x==0)

				 {

				 printf ("\nNenhum produto em estoque\n");

				 }

				 else

				 {

					printf ("Informe o codigo: ");

					scanf ("%d", &procura_cod);

					for (i=0;i<=x; i++) //Procura do código do produto pedido

					{

					   if (procura_cod==codigo[i])

					   {

					printf ("\n||Codigo: %d\t||Preco: R$ %.2f\t||Quantidade em Estoque:%d\n", codigo[i], preco[i], estoque[i]);

					   i=x+1;

					   }

					   else

					   {

						   if (i==x)

						   {

						   printf ("\nCodigo nao encotrado\n");

						   }

					   }

					}

				 }

		   printf ("\nO que deseja fazer:\n[1] - Voltar ao Menu Relatorio\n[2] - Voltar ao Menu Pricipal\nSua escolha: ");

		   scanf ("%d", &opGeral);				   

		   break;

		   case 3:

			  printf ("SIGVER - RELATORIOS\n\nRELATORIO DE PRODUTOS COM ESTOQUE ZERADO\n\n");

			  teste=0;

				 if (x==0)

				 {

				 printf ("\nNenhum produto em estoque\n");

				 }

				 else

				 {	  

					printf ("Estao com o estoque zerado os seguintes produtos:\n");		

				 do //Metodo bolha, para ordenar os codigos

				 {	

		 	 	 troca=0;

   					for (i=0; i<rel; i++)

					  {

						 if (codigo[i]>codigo[i+1])

 			 		   {

	 		 		   aux=codigo[i+1];

	 		 		   codigo[i+1]=codigo[i];

	 		 		   codigo[i]=aux;

	 		 		   

	 		 		   aux=preco[i+1];

	 		 		   preco[i+1]=preco[i];

	 		 		   preco[i]=aux;

	 		 		   }

	   			   }

   				 }

				 while (troca==1); //Fim do uso do metodo bolha			

					for (i=0; i<rel; i++) //Procura produtos com estoque igual a 0 e os informa

					{

					   if (estoque[i]==0)

					   {

					   printf ("# Codigo: %d # Preco: %.2f #\n", codigo[i], preco[i]);

					   teste=1;

					   }

					}

					if (teste==0)

					{

 			 		printf ("Nao ha nenhum produto com estoque zerado");

					  }

				 }

		   printf ("\nO que deseja fazer:\n[1] - Voltar ao Menu Relatorio\n[2] - Voltar ao Menu Pricipal\nSua escolha: ");

		   scanf ("%d", &opGeral);

		   break;

		   case 4:

			  opGeral=2;

		   default:

			  printf ("Opcao invalida\n\n");

		   break;	   

		   }

		system ("cls");

		}

		while (opGeral==1);

	 break;

	 case 4:

		printf ("SIGVER - SISTEMA DE GERENCIAMENTO DE VENDAS, ESTOQUE E RELATORIOS\n\nObrigado por utilizar este software\n\n"); //Mensagem final

		opGeral=0;

		system ("pause");

	 break;

	 default:

		printf ("Opcao invalida\n\n");

		system ("pause");

		system ("cls");

		opGeral=2;

	 break;

	 }

	}

	while (opGeral==2);   //Fim do Do-While para repetição geral do sistema (votar ao menu principal)


}
