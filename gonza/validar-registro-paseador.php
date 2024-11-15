<?php
$conexion = mysqli_connect("localhost","root","","petwalk") or die ("Error!");
?>
<?php

if(isset($_POST['registrar'])){
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$dni = $_POST['dni'];
$direccion = $_POST['direccion'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];

$consulta = "INSERT INTO paseador (nombre, apellido, dni, direccion, correo, contrasena)
            VALUES ('$nombre', '$apellido', '$dni', '$direccion', '$correo', '$contrasena')";


$ejecutar = mysqli_query($conexion, $consulta);
    if ($ejecutar) {
            echo '<h3>Paseador registrado exitosamente</h3>';
    } else {
            echo '<h3>Hubo un problema, el paseador no pudo ser registrado</h3>';
    }
}

    

mysqli_close($conexion);
?>

