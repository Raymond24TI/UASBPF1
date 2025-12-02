<?php
namespace App\Http\Controllers;

use App\Models\Kelas;
use App\Models\Siswa;
use Illuminate\Http\Request;

class SiswaController extends Controller
{
public function index(Request $request)
{
    $kelas = Kelas::all();

    $query = Siswa::with('kelas')->orderBy('id_siswa', 'desc');

    // Filter kelas
    if ($request->kelas_id != '') {
        $query->where('id_kelas', $request->kelas_id);
    }

    // Search (berlaku untuk id_siswa, nama, email)
    if ($request->search != '') {
        $search = $request->search;
        $query->where(function ($q) use ($search) {
            $q->where('id_siswa', 'LIKE', "%$search%")
              ->orWhere('nama_siswa', 'LIKE', "%$search%")
              ->orWhere('email', 'LIKE', "%$search%");
        });
    }

    // Pagination 5 per page
    $data = $query->paginate(5);

    return view('admin.siswa.index', compact('data', 'kelas'));
}


    public function create()
    {
        $kelas = Kelas::all();
        return view('admin.siswa.tambah', compact('kelas'));
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'nama_siswa'       => 'required|string',
            'id_kelas'         => 'required|int|exists:kelas,id_kelas',
            'alamat'           => 'nullable|string',
            'email'            => 'required|email|unique:siswa,email',
            'no_telp'          => 'nullable|string|max:20',
            'nama_wali'        => 'nullable|string',
            'password'         => 'required|min:6',
            'tempat_tgl_lahir' => 'nullable|date',
        ]);

        // Encrypt password
        $data['password'] = bcrypt($data['password']);

        Siswa::create($data);

        return redirect()->route('siswa.index')->with('success', 'Siswa berhasil ditambahkan');
    }

    public function edit($id)
    {
        $s     = Siswa::findOrFail($id);
        $kelas = Kelas::all();
        return view('admin.siswa.edit', compact('s', 'kelas'));
    }

    public function update(Request $request, $id)
    {
        $s    = Siswa::findOrFail($id);
        $data = $request->validate([
            'nama_siswa'       => 'required|string',
            'nama_wali'        => 'nullable|string',
            'email'            => 'required|email|unique:siswa,email,' . $id . ',id_siswa',
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

        $s->update($data);
        return redirect()->route('siswa.index')->with('success', 'Siswa diperbarui');
    }

    public function destroy($id)
    {
        Siswa::findOrFail($id)->delete();
        return redirect()->route('siswa.index')->with('success', 'Siswa dihapus');
    }
}
