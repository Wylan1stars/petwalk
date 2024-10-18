<?php
$conn= mysqli_connect("localhost", "root", "", "petwalk");

if(!$conn){
    die("La conexion fallo: ". mysqli_connect_error());
}

$nombre= $_POST['nombre'];
$contra= $_POST['contra'];
$query= "SELECT * FROM `login` WHERE `nombre`= '$nombre' AND `contraseña`= '$contra'";
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