<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no,
    initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registro</title>
    <link rel="shortcut icon" type="image/x-icon" href="{{ asset('images/1000855.svg') }}" />
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
</head>
<!--Hay que mejorar esta aprte para que muestre en un lista con su propia imagn los productos comprados-->
<body><br>
    <div class="container">
        <div class="card text-center">
            <div class="card-header">
                <ul class="nav nav-tabs card-header-tabs">
                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('/') }}">Mi Mercado</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link active" href="{{ route('Compras') }}">Compras</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="{{ route('Historia') }}">Hisotrial</a>
                    </li>

                </ul>
            </div>
            <div class="card-body">
                <h5 class="card-title">Compras</h5>
                <p class="card-text">Mira los productos que comraste hoy</p>

                <div class="row row-cols-1 row-cols-md-3">

                </div>

            </div>
        </div>
        <br>
        <div class="row row-cols-1 row-cols-md-2">
                @foreach($products as $pro)
                <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title">{{ $pro->nombres }}</h5>
                    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="card-link">Card link</a>
                    <a href="#" class="card-link">Another link</a>
                </div>
                </div>
                @endforeach

        </div>
    </div>

    <script src="{{ asset('js/jquery-3.5.1.min.js') }}"></script>
    <script src="{{ asset('js/popper.min.js') }}"></script>
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
</body>
</html>
