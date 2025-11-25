<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RiwayatNgajar extends Model
{
    protected $table = 'riwayat_ngajar';
    protected $primaryKey = 'id_riwayat';
    protected $fillable = ['id_guru','id_kelas','keterangan','tanggal','alamat'];
    public $timestamps = false;

    public function guru()
    {
        return $this->belongsTo(Guru::class, 'id_guru', 'id_guru');
    }

    public function kelas()
    {
        return $this->belongsTo(Kelas::class, 'id_kelas', 'id_kelas');
    }

}
