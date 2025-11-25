<?php

namespace App\Http\Controllers;

use App\Models\Siswa;
use App\Models\Kelas;
use Illuminate\Http\Request;

class SiswaController extends Controller
{
    public function index()
    {
        // Ambil semua data siswa
        $data = Siswa::orderBy('id_siswa', 'desc')->get();

        // Kirim ke view
        return view('admin.siswa.index', compact('data'));
        // atau bisa juga: return view('admin.siswa.index', ['data' => $data]);
    }


    public function create()
    {
        $kelas = Kelas::all();
        return view('admin.siswa.tambah', compact('kelas'));
    }

public function store(Request $request)
{
    $data = $request->validate([
        'nama_siswa'=>'required|string',
        'id_kelas'=>'required|int|exists:kelas,id_kelas',
        'alamat'=>'nullable|string',
        'email'=>'required|email|unique:siswa,email',
        'no_telp'=>'nullable|string|max:20',
        'nama_wali'=>'nullable|string',
        'password'=>'required|min:6',
        'tempat_tgl_lahir'=>'nullable|date',
    ]);

    // Encrypt password
    $data['password'] = bcrypt($data['password']);

    Siswa::create($data);

    return redirect()->route('siswa.index')->with('success','Siswa berhasil ditambahkan');
}


    public function edit($id)
    {
        $s = Siswa::findOrFail($id);
        $kelas = Kelas::all();
        return view('admin.siswa.edit', compact('s','kelas'));
    }

    public function update(Request $request, $id)
    {
        $s = Siswa::findOrFail($id);
        $data = $request->validate([
            'nama_siswa'=>'required|string',
            'nama_wali'=>'nullable|string',
            'email'=>'required|email|unique:siswa,email,'.$id.',id_siswa',
            'no_telp'=>'nullable',
            'password'=>'nullable|min:6',
            'id_kelas'=>'nullable|int',
            'alamat'=>'nullable',
            'tempat_tgl_lahir'=>'nullable|date'
        ]);
        if(!empty($data['password'])) $data['password'] = bcrypt($data['password']);
        else unset($data['password']);
        $s->update($data);
        return redirect()->route('siswa.index')->with('success','Siswa diperbarui');
    }

    public function destroy($id)
    {
        Siswa::findOrFail($id)->delete();
        return redirect()->route('siswa.index')->with('success','Siswa dihapus');
    }
}
