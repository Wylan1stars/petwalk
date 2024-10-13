<?php

$server = "localhost";
$user = "root";
$pass = "";
$db = "petwalk";

$conexion = mysqli_connect($server, $user, $pass, $db);

if(!$conexion) {
    die ("No se pudo conectar a la base de datos". mysqli_error());
} else {
    echo "conexion exitosa";
}
mysqli_close($conexion);
?>