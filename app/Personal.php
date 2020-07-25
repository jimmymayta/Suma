<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Personal extends Model
{
    protected $table = 'personal';
    protected $primaryKey = 'id_per';
    public $timestamps = false;
    protected $fillable = ['id_per', 'id_usu', 'ci_per','iddep_per', 'nombres_per',
        'apellidos_per', 'idgen_per', 'imagen_per', 'fechanacimiento_per', 'celtel_per',
        'mail_per', 'idest_per', 'id_gru'];
}
