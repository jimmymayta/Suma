<?php

namespace App\Http\Controllers;

use App\Usuarios;
use Illuminate\Http\Request;

class UsuarioHistorialController extends Controller {
    public function UsuarioHistorial() {
        $products['products'] = Usuarios::all();
        return view('Principal.Historial', $products);
    }
}
