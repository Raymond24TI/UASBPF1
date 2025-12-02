@extends('templates.app')
@section('content')

<div class="container mt-4">
    <h2 class="mb-4 fw-bold">Edit Data Alumni</h2>

    <form action="{{ route('alumni.update', $alumni->id_alumni) }}" method="POST">
        @csrf
        @method('PUT')

        <div class="mb-3">
            <label class="form-label">Nama Siswa</label>
            <input type="text" name="nama_siswa" class="form-control" value="{{ $alumni->nama_siswa }}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Email</label>
            <input type="email" name="email" class="form-control" value="{{ $alumni->email }}" required>
        </div>

        <div class="mb-3">
            <label class="form-label">Kelas</label>
            <select name="id_kelas" class="form-select" required>
                @foreach ($kelas as $k)
                    <option value="{{ $k->id_kelas }}"
                        {{ $alumni->id_kelas == $k->id_kelas ? 'selected' : '' }}>
                        {{ $k->nama_kelas }}
                    </option>
                @endforeach
            </select>
        </div>

        <div class="mb-3">
            <label class="form-label">Alamat</label>
            <textarea name="alamat" class="form-control" rows="3" required>{{ $alumni->alamat }}</textarea>
        </div>

        <div class="mb-3">
            <label class="form-label">Tahun Lulus</label>
            <input type="number" name="tahun_lulus" class="form-control"
                   value="{{ $alumni->tahun_lulus }}" required min="2000" max="2099">
        </div>

        <button class="btn btn-primary px-4">Simpan</button>
        <a href="{{ route('alumni.index') }}" class="btn btn-secondary px-4">Kembali</a>
    </form>
</div>

@endsection
