<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no,
    initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registro</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('images/1000855.svg') }}"/>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
</head>
<body>
<h1>Regsitros de ususario</h1><br>

<form action="/RegistroUsuario" method="post">
    @csrf
    <label for="">Nombre</label>
    <input type="text" name="Nombres" required><br>
    <label for="">Apellidos</label>
    <input type="text" name="Apellidos" required><br>
    <label for="">genero</label>
    <select name="Genero" required>
        <option value='1'>Femenino</option>
        <option value='2'>Masculino</option>
    </select><br>
    <label for="">Imagen</label>
    <input src type="file" name="Imagen"><br>
    <label for="">Fecha nacimiento</label>
    <input type="date" value="" name="FechaNacimiento" required><br>
    <label for="">Celular o telefono</label>
    <input type="number" name="CelTel" required><br>
    <label for="">Correo electronico</label>
    <input type="email" name="Mail" required><br>
    <input type="submit">
</form>
<script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
<script src="{{ asset('js/popper.min.js') }}"></script>
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>
