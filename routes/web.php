<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\GuruController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\KelasController;
use App\Http\Controllers\NilaiController;
use App\Http\Controllers\SiswaController;
use App\Http\Controllers\AlumniController;
use App\Http\Controllers\PendaftaranController;
use App\Http\Controllers\RiwayatNgajarController;


// ===============================
// AUTH (TANPA MIDDLEWARE)
// ===============================
Route::get('/login', [AuthController::class, 'loginPage'])->name('login');
Route::post('/login', [AuthController::class, 'processLogin'])->name('login.process');
Route::post('/logout', [AuthController::class, 'logout'])->name('logout');

// ===============================
// HALAMAN DASHBOARD BERDASARKAN ROLE (WAJIB LOGIN)
// ===============================
Route::middleware('checkislogin')->group(function () {

    Route::get('/guru/dashboard', fn() => view('guru.dashboard'))->name('guru.dashboard');
    Route::get('/siswa/dashboard', fn() => view('siswa.dashboard'))->name('siswa.dashboard');

});


// ===============================
// ADMIN AREA (PROTECTED)
// ===============================
Route::prefix('admin')
    ->middleware(['web', 'checkislogin'])
    ->group(function () {

        Route::get('/', fn() => view('admin.index'))->name('admin.index');

        // CRUD
        Route::resource('guru', GuruController::class)->parameters(['guru'=>'id_guru']);
        Route::resource('siswa', SiswaController::class)->parameters(['siswa'=>'id_siswa']);
        Route::resource('kelas', KelasController::class)->except(['show']);

        // Pendaftaran
        Route::get('pendaftaran', [PendaftaranController::class,'index'])->name('pendaftaran.index');
        Route::get('pendaftaran/terima/{id}', [PendaftaranController::class,'terima'])->name('pendaftaran.terima');
        Route::get('pendaftaran/tolak/{id}', [PendaftaranController::class,'tolak'])->name('pendaftaran.tolak');

        // Riwayat Ngajar
        Route::resource('riwayat', RiwayatNgajarController::class)->only(['index','create','store','destroy']);

        // Alumni
        Route::resource('alumni', AlumniController::class)->only(['index','create','store','destroy']);

        // Nilai
        Route::get('nilai', [NilaiController::class,'index'])->name('nilai.index');
        Route::get('nilai/create', [NilaiController::class,'create'])->name('nilai.create');
        Route::post('nilai', [NilaiController::class,'store'])->name('nilai.store');
        Route::get('nilai/hapus/{id_siswa}/{id_kelas}', [NilaiController::class,'destroy'])->name('nilai.destroy');

    });
    route::group(['middleware' => ['checkrole:admin']], function() {
        Route::get('users', [UserController::class, 'index'])->name('users.list');
    Route::resource('users', UserController::class);

    });
