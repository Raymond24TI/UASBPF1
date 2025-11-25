<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pendaftaran extends Model
{
    protected $table = 'pendaftaran'; // jika ada
    protected $primaryKey = 'id'; // sesuaikan bila berbeda
    protected $fillable = ['nama','nama_wali','no_hp','usia','alamat','status'];
    public $timestamps = false;
}
