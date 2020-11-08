<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>Formulário de Contatos</div>
        <form name="form1" action = mostradados.jsp method="POST">
            <br>Nome: <input type="text" name="nome" value="" size="25" /><br>
            <br>Telefone: <input type="text" name="telefone" value="" size="12" /><br>
            <br>E-mail: <input type="text" name="email" value="" size="20" /><br>
            <br><br><input type="submit" value="Enviar" name="btEnviar" />
        </form>
    </body>
</html>
