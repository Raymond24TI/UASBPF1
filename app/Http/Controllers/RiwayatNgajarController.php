<?php

namespace App\Http\Controllers;

use App\Models\RiwayatNgajar;
use App\Models\Guru;
use App\Models\Kelas;
use Illuminate\Http\Request;

class RiwayatNgajarController extends Controller
{
    public function index()
    {
        $riwayat = RiwayatNgajar::with(['guru','kelas'])->orderBy('id_riwayat','desc')->get();
        return view('admin.riwayat_pengajar.index', compact('riwayat'));
    }

    public function create()
    {
        $guru = Guru::all();
        $kelas = Kelas::all();
        return view('admin.riwayat_pengajar.create', compact('guru','kelas'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'id_guru'=>'required|int',
            'id_kelas'=>'required|int',
            'keterangan'=>'nullable|string',
            'tanggal'=>'required|date',
            'alamat'=>'nullable|string'
        ]);
        RiwayatNgajar::create($data);
        return redirect()->route('riwayat.index')->with('success','Riwayat ditambahkan');
    }

    public function destroy($id)
    {
        RiwayatNgajar::findOrFail($id)->delete();
        return redirect()->route('riwayat.index')->with('success','Riwayat dihapus');
    }
}
