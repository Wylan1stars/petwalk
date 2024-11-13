<?php
$conn= mysqli_connect("localhost", "root", "", "petwalk");

if(!$conn){
    die("La conexion fallo: ". mysqli_connect_error());
}

$email= $_POST['email'];
$contra= $_POST['contra'];
$rol = $_POST['rol'];

if ($rol == 'propietario') {
    $tabla = 'registrarse_propietario';
} elseif ($rol == 'paseador') {
    $tabla = 'registrarse_paseador';
} else {
    echo "Rol no válido.";
    exit;
}

$query= "SELECT * FROM `$tabla` WHERE `correo`= '$email' AND `contraseña`= '$contra'";
$result= mysqli_query($conn, $query);

if(mysqli_num_rows($result) > 0){
    session_start();
    $_SESSION['logged_in']= true;
    header("Location: dashboard.php");
} else {
    echo "Nombre de usuario o contraseña invalidos";
}

mysqli_close($conn);
?>