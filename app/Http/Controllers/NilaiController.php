<?php

namespace App\Http\Controllers;

use App\Models\Nilai;
use App\Models\Siswa;
use App\Models\Kelas;
use Illuminate\Http\Request;

class NilaiController extends Controller
{
    public function index()
    {
        $nilai = Nilai::with(['siswa','kelas'])->get();
        return view('admin.nilai.index', compact('nilai'));
    }

    public function create()
    {
        $siswa = Siswa::all();
        $kelas = Kelas::all();
        return view('admin.nilai.create', compact('siswa','kelas'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'id_siswa'=>'required|int',
            'id_kelas'=>'required|int',
            'nilai'=>'required|int',
            'Kehadiran'=>'required|in:hadir,alpha,izin',
            'waktu'=>'nullable|date'
        ]);
        if(empty($data['waktu'])) $data['waktu'] = now();
        Nilai::create($data);
        return redirect()->route('nilai.index')->with('success','Nilai disimpan');
    }

    public function destroy($id_siswa, $id_kelas)
    {
        // jika composite PK: hapus record sesuai kedua kolom
        Nilai::where('id_siswa',$id_siswa)->where('id_kelas',$id_kelas)->delete();
        return redirect()->route('nilai.index')->with('success','Nilai dihapus');
    }
}
