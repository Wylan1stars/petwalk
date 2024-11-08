<?php

$conn= mysqli_connect("localhost", "root", "", "petwalk");

if(isset($_POST['regis'])){
    if(strlen($_POST['nombre']) >= 1 && strlen($_POST['email']) >= 1){
        $nombre = trim($_POST['nombre']);
        $apellido = trim($_POST['apellido']);
        $email = trim($_POST['email']);
        $contra = trim($_POST['contra']);
        $direc = trim($_POST['direc']);
        $expe = trim($_POST['expe']);
        $consul = "INSERT INTO registrarse_paseador(nombre, apellido, correo, contraseña, direccion, experiencia) VALUES ('$nombre','$apellido','$email','$contra','$direc','$expe')";
        $resul = mysqli_query($conn, $consul);
        if($resul){
            echo "¡Te registraste!";
        } else {
            echo "¡No te has podido registrar! :(";
        }
    }
}
?>