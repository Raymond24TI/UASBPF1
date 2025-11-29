<?php
namespace App\Http\Controllers;

use App\Models\Guru;
use App\Models\Kelas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class GuruController extends Controller
{
    // ===========================
    // INDEX + SEARCH + PAGINATION
    // ===========================
    public function index(Request $request)
    {
        $search = $request->search;

        $data = Guru::orderBy('id_guru', 'desc')
            ->when($search, function ($query, $search) {
                $query->where(function ($q) use ($search) {
                    $q->where('nama_guru', 'like', "%$search%")
                      ->orWhere('email', 'like', "%$search%");
                });
            })
            ->paginate(10)
            ->appends(['search' => $search]); // agar pagination tetap bawa search

        return view('admin.guru.index', compact('data', 'search'));
    }

    // ===========================
    // TAMPIL FORM TAMBAH
    // ===========================
    public function create()
    {
        $kelas = Kelas::all();
        return view('admin.guru.tambah', compact('kelas'));
    }

    // ===========================
    // PROSES SIMPAN GURU BARU
    // ===========================
    public function store(Request $request)
    {
        $data = $request->validate([
            'nama_guru'        => 'required|string',
            'email'            => 'required|email|unique:guru,email',
            'no_telp'          => 'nullable',
            'password'         => 'required|min:6',
            'id_kelas'         => 'nullable|int',
            'alamat'           => 'nullable',
            'tempat_tgl_lahir' => 'nullable|date',
        ]);

        $data['password'] = Hash::make($data['password']);

        Guru::create($data);

        return redirect()->route('guru.index')->with('success', 'Guru berhasil ditambahkan.');
    }

    // ===========================
    // TAMPIL FORM EDIT
    // ===========================
    public function edit($id)
    {
        $guru  = Guru::findOrFail($id);
        $kelas = Kelas::all();
        return view('admin.guru.edit', compact('guru', 'kelas'));
    }

    // ===========================
    // PROSES UPDATE DATA
    // ===========================
    public function update(Request $request, $id)
    {
        $guru = Guru::findOrFail($id);

        $data = $request->validate([
            'nama_guru'        => 'required|string',
            'email'            => 'required|email|unique:guru,email,' . $id . ',id_guru',
            'no_telp'          => 'nullable',
            'password'         => 'nullable|min:6',
            'id_kelas'         => 'nullable|int',
            'alamat'           => 'nullable',
            'tempat_tgl_lahir' => 'nullable|date',
        ]);

        // Jika password diisi baru, hash ulang
        if (!empty($data['password'])) {
            $data['password'] = Hash::make($data['password']);
        } else {
            unset($data['password']); // jangan update password jika kosong
        }

        $guru->update($data);

        return redirect()->route('guru.index')->with('success', 'Data guru berhasil diperbarui.');
    }

    // ===========================
    // HAPUS DATA GURU
    // ===========================
    public function destroy($id)
    {
        Guru::findOrFail($id)->delete();

        return redirect()->route('guru.index')->with('success', 'Data guru berhasil dihapus.');
    }
}
