<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>El Mayor de 3</title>
    <link rel="stylesheet" type="text/css" href="../estilos/principal.css">
</head>

<body>

<%
    // Capturamos los parámetros de los números
    String number1 = request.getParameter("number1");
    String number2 = request.getParameter("number2");    
    String number3 = request.getParameter("number3");        

    // Comprobamos si se han recibido los parámetros y si no están vacíos
    if (number1 != null && number2 != null && number3 != null && !number1.isEmpty() && !number2.isEmpty() && !number3.isEmpty()) {
        try {
            // Convertimos las cadenas a double para realizar cálculos
            double number1fl = Double.parseDouble(number1);
            double number2fl = Double.parseDouble(number2);
            double number3fl = Double.parseDouble(number3);

            // Lógica para encontrar el número mayor
            double max = Math.max(number1fl, Math.max(number2fl, number3fl));
%>    
            <!-- Mostramos el número más grande -->
            <h1">El número más grande es: <%= max %></h1>
            <br>
            <a href="calculo_tiempo_viaje.jsp">Volver</a>
<%
        } catch (NumberFormatException e) {
%>
            <!-- Mensaje de error si la conversión falla -->
            <h3 class="error">Por favor, ingrese números válidos.</h3>
            <a href="calculo_tiempo_viaje.jsp">Volver</a>
<%
        }
    } else {
%>    
    <!-- Formulario para ingresar los números -->
    <form method="POST">
        <label for="number1">Introduce el primer número:</label>
        <input type="number" name="number1" id="number1" step="0.1" required>
        <br><br>
        <label for="number2">Introduce el segundo número:</label>
        <input type="number" name="number2" id="number2" step="0.1" required>
        <br><br>
        <label for="number3">Introduce el tercer número:</label>
        <input type="number" name="number3" id="number3" step="0.1" required>
        <br><br>
        <input type="submit" value="Enviar">
    </form>
    
    <a href="../index.jsp">Volver</a>
<%
    }
%>

</body>
</html>
