<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro mascotas - PetWalk</title>
    <link rel="stylesheet" href="css/global.css">
    <link rel="stylesheet" href="css/registro-mascotas.css">
</head>
<body>
    <header>
        <a href="index.html"><img src="images/logo.jpg" alt="PetWalk" class="logo"></a>
        <h1>Registrar mascotas</h1>
    </header>

    <section class="register-form">
        <h2>Regístra a tu mascota</h2>
        <form action="registro-mascotas.php" method="POST">
            <label for="name">Nombre :</label>
            <input type="text" id="name" name="nombre" required>

            <label for="peso">Peso:</label>
            <input type="text" id="peso" name="peso" required>

            <label for="edad">Edad:</label>
            <input type="text" id="edad" name="edad" required>

            <label for="raza">Raza:</label>
            <input type="text" id="raza" name="raza" required>

            <label for="fecha_nac">Fecha de nacimiento</label>
            <input type="text" id="fecha_nac" name="fecha_nac" required>

            <label for="genero">Genero:</label>
            <input type="text" id="genero" name="genero" required>

            <label for="esterilizado">Esterilizado:</label>
            <input type="text" id="esterilizado" name="esterilizado" required>
            
            <label for="salud">Salud:</label>
            <input type="text" id="salud" name="salud" required>
            

            <button type="submit">Registrar</button>
        </form>
    </section>

</body>
</html>
