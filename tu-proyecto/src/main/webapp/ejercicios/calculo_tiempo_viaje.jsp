<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cálculo Tiempo Viaje</title>
    <link rel="stylesheet" type="text/css" href="../estilos/principal.css">
</head>
<body>

<%
    // Capturamos los parámetros de distancia y velocidad
    String tdistance = request.getParameter("tdistance");
    String average_speed = request.getParameter("average_speed");

    // Comprobamos si se han recibido los parámetros y si no están vacíos
    if (tdistance != null && average_speed != null && !tdistance.isEmpty() && !average_speed.isEmpty()) {
        try {
            // Convertimos las cadenas a double para realizar cálculos
            double distance = Double.parseDouble(tdistance);
            double speed = Double.parseDouble(average_speed);

            // Validamos que la velocidad no sea cero para evitar división por cero
            if (speed != 0) {
                // Cálculo del tiempo: tiempo = distancia / velocidad
                double time = distance / speed;
%>
                <!-- Mostramos el tiempo estimado para el viaje -->
                <h1>El tiempo que vas a tardar es <%= time %> horas</h1>
                <a href="calculo_tiempo_viaje.jsp">Volver</a>
<%
            } else {
%>
                <!-- Mensaje de error si la velocidad es cero -->
                <h3>Error: La velocidad no puede ser cero.</h3>
                <a href="calculo_tiempo_viaje.jsp">Volver</a>
<%
            }
        } catch (NumberFormatException e) {
%>
            <!-- Mensaje de error si la entrada no es un número válido -->
            <h3>Error: Por favor ingresa valores numéricos válidos para la distancia y la velocidad.</h3>
            <a href="calculo_tiempo_viaje.jsp">Volver</a>
<%
        }
    } else {
        // Si los parámetros no están presentes, mostramos el formulario
%>
    <!-- Formulario para ingresar distancia y velocidad -->
    <form method="POST">
        <label for="tdistance">Introduce la distancia total a recorrer (en km):</label>
        <input type="number" name="tdistance" id="tdistance" step="0.1" required>
        <br><br>
        
        <label for="average_speed">Introduce la velocidad promedio (en km/h):</label>
        <input type="number" name="average_speed" id="average_speed" step="0.1" required>
        <br><br>
        
        <input type="submit" value="Calcular Tiempo">
    </form>
    
    <a href="../index.jsp">Volver</a>
<%
    }
%>

</body>
</html>
