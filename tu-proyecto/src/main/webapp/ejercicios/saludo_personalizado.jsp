<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Saludo Personalizado</title>
</head>
<body>

<%
    // Capturamos los parámetros de nombre y apellido
    String name = request.getParameter("name");
    String surname = request.getParameter("surname");

    // Comprobamos si se han recibido los parámetros
    if (name != null && surname != null && !name.isEmpty() && !surname.isEmpty()) {
%>
    <!-- Salida del saludo con nombre y apellido -->
    <h1>¡Hola <%= name %> <%= surname %>!</h1>
    
    <a href="saludo_personalizado.jsp">Volver</a>
<%	
    } else {
%>
    <!-- Formulario para solicitar nombre y apellido -->
    <form method="POST">
        <label for="name">Introduce tu nombre:</label>
        <input type="text" name="name" id="name" required>
        <br><br>
        
        <label for="surname">Introduce tu primer apellido:</label>
        <input type="text" name="surname" id="surname" required>
        <br><br>
        
        <input type="submit" value="Enviar">
    </form>
    
    <a href="../index.jsp">Volver</a>
<%
    }
%>

</body>
</html>
