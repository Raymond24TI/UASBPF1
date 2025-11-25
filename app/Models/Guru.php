<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Guru extends Authenticatable
{
    protected $table = 'guru';
    protected $primaryKey = 'id_guru';
    public $incrementing = true;
    protected $keyType = 'int';
    protected $fillable = [
        'nama_guru','email','no_telp','password','id_kelas','alamat','tempat_tgl_lahir','nama_kelas'
    ];
    public $timestamps = false;

    protected $hidden = ['password'];

    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas', 'id_kelas');
    }
}
