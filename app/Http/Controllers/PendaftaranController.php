<?php
namespace App\Http\Controllers;

use App\Models\Pendaftaran;

class PendaftaranController extends Controller
{
    public function index()
    {
        $pendaftar = Pendaftaran::orderBy('id', 'desc')->paginate(10);

        return view('admin.pendaftaran.index', compact('pendaftar'));
    }

    public function terima($id)
    {
        $p         = Pendaftaran::findOrFail($id);
        $p->status = 'diterima';
        $p->save();

        return redirect()->route('pendaftaran.index')
            ->with('success', 'Pendaftar berhasil diterima!');
    }
    public function tolak($id)
    {
        $p         = Pendaftaran::findOrFail($id);
        $p->status = 'ditolak';
        $p->save();

        return redirect()->route('pendaftaran.index')
            ->with('success', 'Pendaftar berhasil ditolak!');
    }

}
