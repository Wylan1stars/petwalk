<?php

session_start();


$conexion = mysqli_connect("localhost","root","","petwalk") or die ("Error!");

$correo = $_POST['correo'];
$contrasena = $_POST['contrasena'];

$validar_login = mysqli_query($conexion, "SELECT * FROM propietario WHERE 
correo='$correo' and contrasena='$contrasena'");

if(mysqli_num_rows($validar_login) > 0){
    $_SESSION['correo'] = $correo;
    header("location: ../petwalk/bienvenido.php");
    exit;
}else{
    echo'
        <script>
            alert("El propietario no esta registrado, por favor verifique los datos introducidos");
            window.location = "../petwalk/login.php";
        </script>
    ';
    exit;
    
}
?>

