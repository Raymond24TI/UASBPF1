<?php

namespace App\Models;

use Illuminate\Foundation\Auth\User as Authenticatable;

class Siswa extends Authenticatable
{
    protected $table = 'siswa';
    protected $primaryKey = 'id_siswa';
    public $incrementing = true;
    protected $keyType = 'int';
    protected $fillable = [
        'nama_siswa','nama_wali','email','no_telp','password','id_kelas','alamat','tempat_tgl_lahir','nama_kelas'
    ];
    public $timestamps = false;

    protected $hidden = ['password'];

    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas', 'id_kelas');
    }

    public function nilai()
    {
        return $this->hasMany(Nilai::class, 'id_siswa', 'id_siswa');
    }
}
