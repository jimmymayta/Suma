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
<body><br>
<div class="container">
    <div class="card text-center">
        <div class="card-header">
            <ul class="nav nav-tabs card-header-tabs">
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('/') }}">Mi Mercado</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link " href="{{ route('Compras') }}">Compras</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link active" href="{{ route('Historia') }}">Hisotrial</a>
                </li>
            </ul>
        </div>
        <div class="card-body">
            <h5 class="card-title">Historial de compras</h5>
            <p class="card-text">Mira tu historial, aca podras manejar un control sobre todos tus productos
                compradoss</p>

            <div class="row row-cols-1 row-cols-md-3">

            </div>

        </div>
    </div>
    <br>

    @foreach($products as $pro)
        <div class="card">
            <div class="card-body">
                {{ $pro->id }}. {{ $pro->nombres }} {{ $pro->apellidos }}<br>Mira tu historial, aca podras manejar un control sobre todos tus productos compradoss
            </div>
        </div>
    @endforeach
</div>

<script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
<script src="{{ asset('js/popper.min.js') }}"></script>
<script src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>
