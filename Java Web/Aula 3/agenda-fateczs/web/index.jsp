<%-- 
    Document   : index
    Created on : 19/02/2014, 13:50:14
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body>
    <h> <FONT COLOR=ff0000 size="6"><b>Formulário de Inscrição</b></FONT> </h>
        <p></p>
        <p></p>
        <p></p>
        <h1>
            <form name = "form1" action = "NewServlet" method = "POST">
                Nome: <input type="text" name="nome" value="" size="20"<p><br> 
                
                CPF: <input type="text" name="cpf" value="" size="20"<p><br>
                
                Password: <input type="password" name="pass" value="" size="20"/>
                <input type="submit" value="Enviar" name="btEnviar" />
            </form>
        </h1>
    </body>
</html>
