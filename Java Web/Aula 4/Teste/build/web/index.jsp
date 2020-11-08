<%-- 
    Document   : index
    Created on : 19/02/2014, 19:47:26
    Author     : lab6aluno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BANCO JAVA</title>
    </head>
    <body>
        <h1>
            <h> <FONT COLOR="ff0000" size="6"> <b> BANCO JAVA: FORMULÁRIO </b> </FONT> </h>
            
            <h1>
                <form name="form1" action="NewServlet" method="POST">
                    <FONT size="5"> Nome: </FONT> <input type="text" name="nome" value="" size="50" />
                        
                    <FONT size="5"> Valor de Saque: R$ </FONT> <input type="text" name="saque" value="" size="15" />
                    
                    <FONT size="5"> Valor de Depósito: R$ </FONT> <input type="text" name="deposito" value="" size="15" />
                    
                    <input type="submit" value="Realizar Operação" name="btOperação" />
            </h1>
            
        </h1>
    </body>
</html>
