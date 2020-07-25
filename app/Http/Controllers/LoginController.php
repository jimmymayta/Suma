<?php

namespace App\Http\Controllers;

use App\Usuarios;
use App\Personal;
use Illuminate\Http\Request;
//use App\Http\Controllers\SumaController;
use App\Providers\RouteServiceProvider;
use Illuminate\Foundation\Auth\AuthenticatesUsers;

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
                $Personal = array($Per['id_per'], $Per['id_usu'], $Per['ci_per'], $Per['iddep_per'],
                    $Per['nombres_per'], $Per['apellidos_per'], $Per['idgen_per'], $Per['imagen_per'],
                    $Per['fechanacimiento_per'], $Per['celtel_per'], $Per['mail_per'], $Per['idest_per'],
                    $Per['id_gru'], $Per['idper_per']);
                //protected $redirectTo = RouteServiceProvider::HOME;
                //return view('/Principal.Suma')->with('Usu', $Usu);
                return redirect()->action('SumaController@Suma');
            }
        }
        return 'Error de ususario : prueba con usuario:231231231  y password:1993-12-13';

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
