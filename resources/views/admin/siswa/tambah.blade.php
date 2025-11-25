@extends('templates.app')
@section('content')
<div class="container mt-4">
    <h2>Tambah Siswa</h2>

    <form action="{{ route('siswa.store') }}" method="POST">
        @csrf

        <div class="mb-3">
            <label>Nama Siswa</label>
            <input type="text" name="nama_siswa" class="form-control" value="{{ old('nama_siswa') }}" required>
        </div>

        <div class="mb-3">
            <label>Kelas</label>
            <select name="id_kelas" class="form-select" required>
                <option value="">-- Pilih Kelas --</option>
                @foreach ($kelas as $k)
                    <option value="{{ $k->id_kelas }}" {{ old('id_kelas') == $k->id_kelas ? 'selected' : '' }}>
                        {{ $k->nama_kelas }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label>Alamat</label>
            <textarea name="alamat" class="form-control">{{ old('alamat') }}</textarea>
        </div>

        <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" value="{{ old('email') }}" required>
        </div>

        <div class="mb-3">
            <label>No. Telepon</label>
            <input type="text" name="no_telp" class="form-control" value="{{ old('no_telp') }}">
        </div>

        <div class="mb-3">
            <label>Nama Wali</label>
            <input type="text" name="nama_wali" class="form-control" value="{{ old('nama_wali') }}">
        </div>

        <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required>
        </div>

        <div class="mb-3">
            <label>Tempat & Tanggal Lahir</label>
            <input type="date" name="tempat_tgl_lahir" class="form-control" value="{{ old('tempat_tgl_lahir') }}">
        </div>

        <button type="submit" class="btn btn-success">Simpan</button>
        <a href="{{ route('siswa.index') }}" class="btn btn-outline-secondary">Kembali</a>
    </form>
</div>
@endsection
