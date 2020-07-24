<?php

namespace App\Http\Controllers;

use App\Usuarios;
use Illuminate\Http\Request;

class UsuarioComprasController extends Controller {
    public function UsuarioCompras() {
        //$products['products'] = Usuarios::all();
        return view('Principal.Compras');

        //$data['products'] = Product::orderBy('id','desc')->paginate(10);

        //return view('product.list',$data);
    }
}
