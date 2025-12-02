<?php

namespace App\Http\Controllers;

use App\Models\Alumni;
use App\Models\Siswa;
use App\Models\Kelas;
use Illuminate\Http\Request;

class AlumniController extends Controller
{
    public function index()
    {
        $alumni = Alumni::orderBy('id_alumni','desc')->get();
        $pageData['alumni'] = Alumni::simplePaginate(2);
        return view('admin.alumni.index', $pageData);
    }

    public function create()
    {
        $siswa = Siswa::all();
        $kelas = Kelas::all();
        return view('admin.alumni.create', compact('siswa','kelas'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'id_siswa'=>'required|int',
            'id_kelas'=>'required|int',
            'nama_siswa'=>'required|string',
            'alamat'=>'nullable|string',
            'tanggal_keluar'=>'required|date'
        ]);
        Alumni::create($data);
        return redirect()->route('alumni.index')->with('success','Alumni ditambahkan');
    }

    public function destroy($id)
    {
        Alumni::findOrFail($id)->delete();
        return redirect()->route('alumni.index')->with('success','Alumni dihapus');
    }

    public function edit($id)
{
    $alumni = Alumni::findOrFail($id);
    $kelas = Kelas::all();

    return view('admin.alumni.edit', compact('alumni', 'kelas'));
}

public function update(Request $request, $id)
{
    $request->validate([
        'nama_siswa' => 'required',
        'email' => 'required|email',
        'id_kelas' => 'required',
        'alamat' => 'required',
        'tahun_lulus' => 'required|digits:4',
    ]);

    Alumni::where('id_alumni', $id)->update([
        'nama_siswa' => $request->nama_siswa,
        'email' => $request->email,
        'id_kelas' => $request->id_kelas,
        'alamat' => $request->alamat,
        'tahun_lulus' => $request->tahun_lulus,
    ]);

    return redirect()->route('alumni.index')->with('success', 'Data alumni berhasil diperbarui.');
}

}
