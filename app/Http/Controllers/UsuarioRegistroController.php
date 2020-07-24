<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Personal;

class UsuarioRegistroController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function UsuarioRegistro()
    {
        return view('Usuario.UsuarioRegistro');
    }

    public function Registro(Request $request)
    {
        //$input = Input::only('Usuario', 'Contrasena');
        //$name = $request->Usuario;
        $Solicitud = $request->all();
        //echo $Solicitud['Usuario'] . "<br>";
        //echo $Solicitud['Contrasena'] . "<br>";

        $Personal = Personal::all();
        foreach ($Personal as $Per) {
            //echo $Per['ci_per'];
            if ($Solicitud['Usuario'] == $Per['ci_per'] && $Solicitud['Contrasena'] == $Per['fechanacimiento_per'] ) {
                //echo $Per['ci_per']." - ".$Per['fechanacimiento_per'];
                $Usu = $Solicitud['Usuario'];
                return view('/Principal.Suma')->with('Usu', $Usu);
            }
        }
        //$Personal = $Personal[0];
        //return $Personal['ci_per']." - ".$Personal['fechanacimiento_per'];
        return 'Error';
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param \Illuminate\Http\Request $request
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param int $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
