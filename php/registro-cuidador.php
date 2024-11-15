<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Cuidador - PetWalk</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/registro-cuidador.css">
</head>
<body>
    <header>
        <a href="index.html"><img src="images/logo.jpg" alt="PetWalk" class="logo"></a>
        <h1>Crear Cuenta - Cuidador</h1>
    </header>

    <section class="register-form">
        <h2>Regístrate como Cuidador</h2>
        <form method="POST" action="validar-registro-paseador.php">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required>

            <label for="apellido">Apellido:</label>
            <input type="text" id="apellido" name="apellido" required>

            <label for="dni">Dni:</label>
            <input type="text" id="dni" name="dni" required>

            <label for="direccion">direccion:</label>
            <input type="text" id="direccion" name="direccion" required>


            <label for="correo">Correo electrónico:</label>
            <input type="email" id="correo" name="correo" required>


            <label for="contrasena">Contraseña:</label>
            <input type="password" id="contrasena" name="contrasena" required>

            <button type="submit" name="registrar">Registrarse</button>
        </form>
        <p>¿Ya tienes cuenta? <a href="login-cuidador.php">Inicia sesión aquí</a></p>
    </section>

</body>
</html>
