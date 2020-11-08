<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados Bancários</title>
    </head>
    <body>
        <h1>
        <form
            name = "Formulario1" action = "PrimeiraServlet" method = "POST">
            Preencha os dados abaixo:
            <br>
            <br>
            Nome: <input type ="text" name="nome" value="" size="30"/> <br>
            CPF: <input type="text" name="cpf" value="" size="30" /> <br>
            Conta: <input type="text" name="conta" value="" size="30" /> <br>
            Senha: <input type="password" name="senha" value="" size="30" /> <br>
            <br>
            <br>
            <input type="submit" value="Exibir" name="btExibir"/>            
        </form>
        </h1>
    </body>
</html>
