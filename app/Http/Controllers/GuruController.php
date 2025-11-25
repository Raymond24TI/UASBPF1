<?php
namespace App\Http\Controllers;

use App\Models\Guru;
use App\Models\Kelas;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class GuruController extends Controller
{
    public function index()
    {
        // Ambil semua data guru sesuai database kamu
        $data = Guru::orderBy('id_guru', 'desc')->get();

        // Kirim ke view
        return view('admin.guru.index', compact('data'));

            $search = $request->search;

    $data = Guru::orderBy('id_guru', 'desc')
        ->when($search, function ($query, $search) {
            return $query->where('nama_guru', 'like', "%$search%")
                         ->orWhere('email', 'like', "%$search%");
        })
        ->get();

    return view('admin.guru.index', compact('data', 'search'));
    }

    public function create()
    {
        $kelas = Kelas::all();
        return view('admin.guru.tambah', compact('kelas'));
    }

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
        return redirect()->route('guru.index')->with('success', 'Guru ditambahkan');
    }

    public function edit($id)
    {
        $guru     = Guru::findOrFail($id);
        $kelas = Kelas::all();
        return view('admin.guru.edit', compact('guru', 'kelas'));
    }

    public function update(Request $request, $id)
    {
        $guru    = Guru::findOrFail($id);
        $data = $request->validate([
            'nama_guru'        => 'required|string',
            'email'            => 'required|email|unique:guru,email,' . $id . ',id_guru',
            'no_telp'          => 'nullable',
            'password'         => 'nullable|min:6',
            'id_kelas'         => 'nullable|int',
            'alamat'           => 'nullable',
            'tempat_tgl_lahir' => 'nullable|date',
        ]);

        if (! empty($data['password'])) {
            $data['password'] = bcrypt($data['password']);
        } else {
            unset($data['password']);
        }

        $guru->update($data);
        return redirect()->route('guru.index')->with('success', 'Guru diperbarui');
    }

    public function destroy($id)
    {
        Guru::findOrFail($id)->delete();
        return redirect()->route('guru.index')->with('success', 'Guru dihapus');
    }
}
