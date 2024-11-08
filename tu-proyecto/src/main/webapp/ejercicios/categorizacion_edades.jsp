<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clasificación por Edad</title>
    <link rel="stylesheet" type="text/css" href="../estilos/principal.css">
</head>

<body>

<%
    // Capturamos el parámetro 'old' que llega desde el formulario
    String oldStr = request.getParameter("old"); 

    // Comprobamos si se ha recibido el parámetro y si no está vacío
    if (oldStr != null && !oldStr.isEmpty()) {
        try {
            // Convertimos el valor a un número entero
            int old = Integer.parseInt(oldStr);

            // Determinamos la categoría según la edad
            String category = "";
            if (old < 12) {
                category = "Infante";
            } else if (old >= 12 && old <= 17) {
                category = "Adolescente";
            } else if (old >= 18 && old <= 60) {
                category = "Adulto";
            } else {
                category = "Anciano";
            }
%>    
        <!-- Mostramos la categoría -->
        <h1>Tu categoría es: <%= category %></h1>
        <a href="categorizacion_edades.jsp">Volver</a>
<%
        } catch (NumberFormatException e) {
%>
            <!-- Mensaje de error si la conversión falla -->
            <h3 class="error">Por favor, ingrese una edad válida.</h3>
            <a href="categorizacion_edades.jsp">Volver</a>
<%
        }
    } else {
%>    
    <!-- Formulario para ingresar la edad -->
    <form method="POST">
        <label for="old">Introduce tu edad:</label>
        <input type="number" name="old" id="old" required>
        <br><br>
        <input type="submit" value="Enviar">
    </form>
    
    <a href="../index.jsp">Volver</a>
<%
    }
%>

</body>
</html>
