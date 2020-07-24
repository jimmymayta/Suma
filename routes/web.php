<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () { return view('welcome'); });
// Auth::routes();
// Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', 'SumaController@Suma')->name('/'); //Pagina principal para usuarios no logueados
Route::get('/Login', 'LoginController@Login')->name('Login'); //Login de usuario
Route::get('/Suma', 'SumaController@Suma')->name('/'); //Pagina Principal para usuario logueados
Route::get('/Registro', 'UsuarioRegistroController@UsuarioRegistro')->name('Registro'); //pagina de registor de usuario, lo cual va varios cambios
Route::get('/Suma.Information', 'InformationController@Information')->name('Suma.Information');

Route::get('/Compras', 'UsuarioComprasController@UsuarioCompras')->name('Compras'); // ruta compras - Prueba
Route::get('/Historial', 'UsuarioHistorialController@UsuarioHistorial')->name('Historia'); //ruta Historial - prueba















