<?php
$conexion = mysqli_connect("localhost","root","","petwalk") or die ("Error!");
?>
<?php

if(isset($_POST['registrar'])){
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];

$consulta = "INSERT INTO propietario (nombre, apellido, correo, contrasena)
            VALUES ('$nombre', '$apellido', '$correo', '$contrasena')";


$ejecutar = mysqli_query($conexion, $consulta);
    if ($ejecutar) {
            echo '<h3>Usuario registrado exitosamente</h3>';
    } else {
            echo '<h3>Hubo un problema, el usuario no pudo ser registrado</h3>';
    }
}

    

mysqli_close($conexion);
?>

