<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="widthz=device-width, initial-scale=1.0">
    <title>Tabla de Multiplicar</title>
</head>
<body>

	if (isset($_POST['n'])) {
  $n = $_POST['n'];

  // Verificar si es un número entre 1 y 10
  if (is_numeric($n)) {
      echo "<h3>Tabla de multiplicar del $n</h3>";
      echo "<table border='1' cellpadding='5'>";
      for ($i = 1; $i <= 10; $i++) {
          $mult = $n * $i;
          echo "<tr>";
          echo "<td>$n x $i = $mult</td>";
          echo "</tr>";
      }
      echo "</table>";
  }
}
    <form action="tabla_multiplicar.php" method="POST">
        <label for="n">Intro el numero para obtener la tabla:</label>
        <input type="number" name="n" id="n">
        <input type="submit" value="Calcular Tabla">
    </form>
</body>
</html>