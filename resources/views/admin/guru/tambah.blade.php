@extends('templates.app')
@section('content')

<div class="container mt-5">
    <div class="card shadow-lg p-4 rounded-4">
        <h3 class="text-center mb-4 fw-bold">Tambah Data Guru</h3>

        <!-- Alert jika ada error -->
        @if ($errors->any())
            <div class="alert alert-danger">
                <ul class="mb-0">
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <!-- Form Tambah -->
        <form action="{{ route('guru.store') }}" method="POST">
            @csrf

            <div class="mb-3">
                <label for="nama_guru" class="form-label fw-semibold">Nama Guru</label>
                <input type="text" name="nama_guru" class="form-control" id="nama_guru"
                       value="{{ old('nama_guru') }}" required>
            </div>

            <div class="mb-3">
                <label for="email" class="form-label fw-semibold">Email</label>
                <input type="email" name="email" class="form-control" id="email"
                       value="{{ old('email') }}" required>
            </div>

            <div class="mb-3">
                <label for="no_telp" class="form-label fw-semibold">No. Telepon</label>
                <input type="text" name="no_telp" class="form-control" id="no_telp"
                       value="{{ old('no_telp') }}" required>
            </div>

            <div class="mb-3">
                <label for="password" class="form-label fw-semibold">Password</label>
                <input type="password" name="password" class="form-control" id="password" required>
            </div>

            <div class="mb-3">
                <label for="id_kelas" class="form-label fw-semibold">Kelas</label>
                <select name="id_kelas" id="id_kelas" class="form-select" required>
                    <option value="">-- Pilih Kelas --</option>
                    @foreach($kelas as $k)
                        <option value="{{ $k->id_kelas }}" {{ old('id_kelas') == $k->id_kelas ? 'selected' : '' }}>
                            {{ $k->nama_kelas }}
                        </option>
                    @endforeach
                </select>
            </div>

            <div class="mb-3">
                <label for="alamat" class="form-label fw-semibold">Alamat</label>
                <textarea name="alamat" class="form-control" id="alamat" rows="2" required>{{ old('alamat') }}</textarea>
            </div>

            <div class="mb-3">
                <label for="tempat_tgl_lahir" class="form-label fw-semibold">Tempat, Tanggal Lahir</label>
                <input type="text" name="tempat_tgl_lahir" class="form-control" id="tempat_tgl_lahir"
                       value="{{ old('tempat_tgl_lahir') }}" placeholder="Contoh: Jakarta, 10-10-1980" required>
            </div>

            <div class="d-flex justify-content-between">
                <a href="{{ route('guru.index') }}" class="btn btn-secondary px-4">Kembali</a>
                <button type="submit" class="btn btn-success px-4">Tambah Guru</button>
            </div>
        </form>
    </div>
</div>
@endsection
