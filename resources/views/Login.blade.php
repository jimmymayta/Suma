<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('images/1000855.svg') }}"/>
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
</head>
<body><br><br>
<div class="container ">
    <div class="row justify-content-center">
        <form class="col-12 col-sm-10 col-md-8 col-lg-6 col-xl-4 ">
            <h1>Login</h1>

            <div class="form-group">
                <label for="exampleInputEmail1">Usuario</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <small id="emailHelp" class="form-text text-muted">Puede que sea tu correo electronico</small>
            </div>

            <div class="form-group">
                <label for="exampleInputPassword1">Contraseña</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
            </div>

            <button type="submit" class="btn btn-primary">Igresar</button>
        </form>
    </div>
</div>

<script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
<script src="{{ asset('js/popper.min.js') }}"></script>
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>



















