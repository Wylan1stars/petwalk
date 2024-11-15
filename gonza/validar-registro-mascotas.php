<?php
$conexion = mysqli_connect("localhost","root","","petwalk") or die ("Error!");
?>
<?php

if(isset($_POST['registrar'])){
$nombre = $_POST['nombre'];
$peso = $_POST['peso'];
$edad = $_POST['edad'];
$raza = $_POST['raza'];
$fecha_nacimiento = $_POST['fecha_nac'];
$genero = $_POST['genero'];
$esterilizado = $_POST['esterilizado'];
$salud = $_POST['salud'];

$consulta = "INSERT INTO mascotas (nombre, peso, edad, raza, fecha_nac, genero, esterilizado, salud)
             VALUES ('$nombre', '$peso', '$edad', '$raza', '$fecha_nacimiento', '$genero', '$esterilizado', '$salud')";


$ejecutar = mysqli_query($conexion, $consulta);
    if ($ejecutar) {
            echo '<h3>Mascota registrada exitosamente</h3>';
    } else {
            echo '<h3>Hubo un problema, la mascota no pudo ser registrada</h3>';
    }
}

    

mysqli_close($conexion);
?>

