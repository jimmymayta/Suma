<?php

namespace App\Http\Controllers;

use App\Usuarios;
use App\Personal;
use Illuminate\Http\Request;
//use App\Http\Controllers\SumaController;

class LoginController extends Controller {
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function Login() {
        return view('Principal.Login');
    }

    public function Auto(Request $request) {
        $Solicitud = $request->all();

        $Personal = Personal::all();
        foreach ($Personal as $Per) {
            //echo $Per['ci_per'];
            // 231231231 1993-12-13
            if ($Solicitud['Usuario'] == $Per['ci_per'] && $Solicitud['Contrasena'] == $Per['fechanacimiento_per'] ) {
                //echo $Per['ci_per']." - ".$Per['fechanacimiento_per'];
                var_dump($Personal[0]);
                echo 'Correcto';
                //return view('/Principal.Suma')->with('Usu', $Usu);
            }
        }

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
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
