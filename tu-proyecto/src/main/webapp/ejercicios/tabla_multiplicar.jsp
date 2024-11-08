<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabla de Multiplicar</title>
    <link rel="stylesheet" type="text/css" href="../estilos/principal.css">
</head>
<body>

<%
    // Capturamos el parámetro 'n' que llega desde el formulario
    String nStr = request.getParameter("n");

    // Comprobamos si se ha recibido el parámetro y si no está vacío
    if (nStr != null && !nStr.isEmpty()) {
        try {
            // Convertimos el valor a un número entero
            int n = Integer.parseInt(nStr);
%>

            <!-- Mostramos la tabla de multiplicar de 'n' -->
            <h3>Tabla de multiplicar del <%= n %></h3>
            <table border="1" cellpadding="5">
<%
            // Generamos la tabla de multiplicar
            for (int i = 1; i <= 10; i++) {
                int mult = n * i;
%>
                <tr>
                    <td><%= n %> x <%= i %> = <%= mult %></td>
                </tr>
<%
            }
%>
            </table>
            <a href="tabla_multiplicar.jsp">Volver</a>
<%
        } catch (NumberFormatException e) {
%>
            <!-- Mensaje de error si la entrada no es un número válido -->
            <h3 class="error">Error: Por favor ingresa un valor numérico válido.</h3>
            <a href="tabla_multiplicar.jsp">Volver</a>
<%
        }
    } else {
%>
    <!-- Formulario para ingresar el número para la tabla de multiplicación -->
    <form method="POST">
        <label for="n">Introduce el número para obtener la tabla:</label>
        <input type="number" name="n" id="n" required>
        <input type="submit" value="Calcular Tabla">
    </form>
    <a href="../index.jsp">Volver</a>
<%
    }
%>

</body>
</html>
