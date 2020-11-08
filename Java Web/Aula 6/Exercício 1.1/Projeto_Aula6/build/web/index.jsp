<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Formulario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div>Formulário de Contatos</div>
        <form name="form1" action="PrimeiraServet" method="POST">
            <br>Nome: <input type="text" name="nome" value="" size="25" /><br>
            <br>Telefone: <input type="text" name="telefone" value="" size="12" /><br>
            <br>E-mail: <input type="text" name="email" value="" size="20" /><br>
            <br><br><input type="submit" value="Enviar" name="btEnviar" />
        </form>
    </body>
</html>

