<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dados digitados</title>
    </head>
    <body>
        <h1>Nome: ${param.nome}</h1>
        <h1>Telefone: ${param.telefone}</h1>
        <c:if test="${not empty param.email}">
        <a href="mailto:${param.email}">${param.email}</a>
        </c:if>
        <c:if test="${empty param.email}">
        E-mail não informado
        </c:if>

    </body></html>

    </body>
</html>

