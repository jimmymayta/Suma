<!doctype html >
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no,
    initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http - equiv="X-UA-Compatible" content="ie=edge">
    <title> Registro</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('images/1000855.svg') }}"/>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
</head>
<body>
<h1> Login </h1><br>

<form action="/Auto" method="post">
    @csrf
    <label for="">Usuarios</label>
    <input type="text" name="Usuario" placeholder="CI"><br>
    <label for="">Contrasena</label>
    <input type="text" name="Contrasena" placeholder="2020-07-09">
    <input type="submit">
</form>
<script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
<script src="{{ asset('js/popper.min.js') }}"></script>
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>
