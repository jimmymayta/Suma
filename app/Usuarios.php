<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Usuarios extends Model {
    protected $table = 'user';
    protected $primaryKey = 'id';
    public $timestamps = false;
    protected $fillable = ['nombres', 'apellidos', 'usuario', 'password', 'fecha_registro'];
}
















