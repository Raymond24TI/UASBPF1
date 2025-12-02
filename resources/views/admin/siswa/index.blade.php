@extends('templates.app')
@section('content')
<div class="container mt-4">
    <h2>Daftar Siswa</h2>

    <div class="d-flex justify-content-between mb-3">
        <a href="{{ route('siswa.create') }}" class="btn btn-success">Tambah Siswa</a>

        {{-- FILTER KELAS --}}
<form action="{{ route('siswa.index') }}" method="GET" class="d-flex">
    <select name="kelas_id" class="form-select me-2" onchange="this.form.submit()">
        <option value="">-- Semua Kelas --</option>
        @foreach ($kelas as $k)
            <option value="{{ $k->id_kelas }}" {{ request('kelas_id') == $k->id_kelas ? 'selected' : '' }}>
                {{ $k->nama_kelas }}
            </option>
        @endforeach
    </select>
    <noscript><button class="btn btn-primary">Filter</button></noscript>
</form>

    </div>

    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    <table class="table table-bordered table-striped">
        <thead class="table-primary">
            <tr>
                <th>ID</th>
                <th>Nama</th>
                <th>Kelas</th>
                <th>Alamat</th>
                <th>Email</th>
                <th>No. Telp</th>
                <th>Nama Wali</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $s)
                <tr>
                    <td>{{ $s->id_siswa }}</td>
                    <td>{{ $s->nama_siswa }}</td>
                    <td>{{ $s->kelas ? $s->kelas->nama_kelas : '-' }}</td>
                    <td>{{ $s->alamat }}</td>
                    <td>{{ $s->email }}</td>
                    <td>{{ $s->no_telp }}</td>
                    <td>{{ $s->nama_wali }}</td>
                    <td>
                        <a href="{{ route('siswa.edit', $s->id_siswa) }}" class="btn btn-warning btn-sm">Edit</a>

                        <form action="{{ route('siswa.destroy', $s->id_siswa) }}" method="POST" style="display:inline-block;" onsubmit="return confirm('Yakin ingin hapus?')">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
                        </form>

                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>

    <div class="mt-3">
        {{ $data->appends(['kelas_id' => request('kelas_id')])->links('pagination::simple-bootstrap-5') }}
    </div>
</div>
@endsection
