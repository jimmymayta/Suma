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
    public function UsuarioRegistro(Request $request)
    {
        //$Solicitud = $request->all();
        //echo $Solicitud['Nombres'];
        //$Personal = new Personal;
        //$Personal->id_usu = 1;
        //$Personal->nombres_per = $Solicitud['Nombres'];
        //$Personal->save();
        echo "Registro en proceso";

        //$request->file('Images')->store('public');
        //dd("subido y guardado");
        //$image = $request->file('Imagen');
        //$image->move(public_path("ImagesUser/"), $image->getClientOriginalName());

        //$user = new Categorias($request->all());
        //if ($request->hasFile('Imagen')){
         //   $file = $request->file("Imagen");
        //    //$nombrearchivo  = str_slug($request->slug).".".$file->getClientOriginalExtension();
        //    $nombrearchivo  = $file->getClientOriginalName();
         //   $file->move(public_path("ImagesUser/"),$nombrearchivo);
        //    //$user->Imagen = $nombrearchivo;
        //}
        //$Solicitud = $request->all();

        //return var_dump($request);
    }

    public function Registro()
    {
        return view('Usuario.UsuarioRegistro');
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
