<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Suma Acumulativa</title>
    <link rel="stylesheet" type="text/css" href="../estilos/principal.css">
</head>
<body>
<%
    // Capturamos el parámetro 'n' que llega desde el formulario
    String nStr = request.getParameter("n");
    int resultado = 0; 

    // Comprobamos si se ha recibido el parámetro y si no está vacío
    if (nStr != null && !nStr.isEmpty()) {
        try {
            // Convertimos el valor a un número entero
            int n = Integer.parseInt(nStr);

            // Realizamos la suma acumulativa de 1 hasta n
            for (int i = 1; i <= n; i++) {
                resultado += i;     
            }
%>
            <!-- Mostramos el resultado de la suma acumulativa -->
            <h1>El resultado de la suma acumulativa es: <%= resultado %></h1>
            <a href="suma_acumulativa.jsp">Volver</a>
<%
        } catch (NumberFormatException e) {
%>
            <!-- Mensaje de error si la conversión falla -->
            <h3 class="error">Por favor, ingrese un número válido.</h3>
            <a href="suma_acumulativa.jsp">Volver</a>
<%
        }
    } else {
%> 
    <!-- Formulario para ingresar el número para hacer la suma acumulativa -->
    <form method="POST">
        <label for="n">Introduce un número N:</label>
        <input type="number" name="n" id="n" required>
        <input type="submit" value="Calcular Suma">
    </form>
    <a href="../index.jsp">Volver</a>
<%
    }
%>
</body>
</html>
