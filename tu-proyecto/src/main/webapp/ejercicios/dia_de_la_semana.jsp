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
    // Capturamos el parámetro 'day' que llega desde el formulario
    String day = request.getParameter("day"); 

    // Comprobamos si se ha recibido el parámetro y si no está vacío
    if (day != null && !day.isEmpty()) {
        String dayName = "";

        // Dependiendo del valor del parámetro 'day', asignamos el nombre del día
        switch (day) {
            case "1":
                dayName = "Lunes";
                break;
            case "2":
                dayName = "Martes";
                break;
            case "3":
                dayName = "Miércoles";
                break;
            case "4":
                dayName = "Jueves";
                break;
            case "5":
                dayName = "Viernes";
                break;
            case "6":
                dayName = "Sábado";
                break;
            case "7":
                dayName = "Domingo";
                break;
            default:
                dayName = "Valor no válido. Ingresa un número entre 1 y 7.";
                break;
        }
%>    
        <!-- Mostramos el nombre del día -->
        <h1>El día es: <%= dayName %></h1>
        <a href="mayor_de_tres.jsp">Volver</a>
<%
    } else {
%>    
    <!-- Formulario para ingresar el día de la semana -->
    <form method="POST">
        <label for="day">Introduce un número del 1 al 7:</label>
        <input type="number" name="day" id="day" min="1" max="7" required>
        <br>
        <input type="submit" value="Enviar">
    </form>
    
    <a href="../index.jsp">Volver</a>
<%
    }
%>

</body>
</html>
