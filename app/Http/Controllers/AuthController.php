<?php

namespace App\Http\Controllers;

use App\Models\Guru;
use App\Models\Admin;
use App\Models\Siswa;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    // =======================
    // 1. LOGIN PAGE
    // =======================
    public function loginPage()
    {
        if (Auth::check()) { // Cek apakah user sudah login
            $role = session('role'); // Role masih dari session
            return match ($role) {
                'admin' => redirect()->route('admin.index'),
                'guru'  => redirect()->route('guru.dashboard'),
                'siswa' => redirect()->route('siswa.dashboard'),
                default => view('auth.login'),
            };
        }

        return view('auth.login');
    }

    // =======================
    // 2. LOGIN PROCESS
    // =======================
    public function processLogin(Request $request)
    {
        $request->validate([
            'username' => 'required',
            'password' => 'required',
        ]);

        $username = $request->username;
        $password = $request->password;

        // --- LOGIN ADMIN ---
        $admin = Admin::where('nama_admin', $username)->first();
        if ($admin && Hash::check($password, $admin->password)) {
            Auth::loginUsingId($admin->id_admin);
            session([
                'role' => 'admin',
                'id'   => $admin->id_admin,
                'nama_admin' => $admin->nama_admin
            ]);
            $request->session()->regenerate();
            return redirect()->route('admin.index')->with('success', 'Selamat datang admin!');
        }

        // --- LOGIN GURU ---
        $guru = Guru::where('email', $username)->first();
        if ($guru && Hash::check($password, $guru->password)) {
            Auth::loginUsingId($guru->id_guru);
            session([
                'role' => 'guru',
                'id'   => $guru->id_guru,
                'nama' => $guru->nama_guru
            ]);
            $request->session()->regenerate();
            return redirect()->route('guru.dashboard')->with('success', 'Login berhasil sebagai guru!');
        }

        // --- LOGIN SISWA ---
        $siswa = Siswa::where('email', $username)->first();
        if ($siswa && Hash::check($password, $siswa->password)) {
            Auth::loginUsingId($siswa->id_siswa);
            session([
                'role' => 'siswa',
                'id'   => $siswa->id_siswa,
                'nama' => $siswa->nama_siswa
            ]);
            $request->session()->regenerate();
            return redirect()->route('siswa.dashboard')->with('success', 'Login berhasil sebagai siswa!');
        }

        return back()->with('error', 'Username atau password salah.');
    }

    // =======================
    // 3. LOGOUT
    // =======================
    public function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('login')->with('success', 'Berhasil logout.');
    }
}
