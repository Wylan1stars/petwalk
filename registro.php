<?php

$conn= mysqli_connect("localhost", "root", "", "petwalk");

if(isset($_POST['regis'])){
    if(strlen($_POST['nombre']) >= 1 && strlen($_POST['email']) >= 1){
        $nombre = trim($_POST['nombre']);
        $email = trim($_POST['email']);
        $fechareg = date("d/m/y");
        $consul = "INSERT INTO login(nombre, email, fecha_reg) VALUES ('$nombre','$email','$fechareg')";
        $resul = mysqli_query($conn, $consul);
        if($resul){
            echo "¡Te registraste!";
        } else {
            echo "¡No te has podido registrar! :(";
        }
    }
}
?>