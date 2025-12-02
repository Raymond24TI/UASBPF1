@extends('templates.app')
@section('content')
<div class="container mt-4">

    <h2 class="mb-3">Daftar Siswa</h2>

    {{-- Baris tombol + search + filter --}}
    <div class="d-flex justify-content-between align-items-start mb-3">

        <div class="d-flex flex-column">

            {{-- Baris tombol + search --}}
            <div class="d-flex mb-1">
                {{-- Tombol tambah --}}
                <a href="{{ route('siswa.create') }}" class="btn btn-success me-2">
                    Tambah Siswa
                </a>

                {{-- Search --}}
                <form method="GET" action="{{ route('siswa.index') }}" class="d-flex" style="max-width: 350px;">
                    <input type="text" name="search" class="form-control me-2"
                           placeholder="Cari nama atau email..."
                           value="{{ request('search') }}">
                    <button type="submit" class="btn btn-primary">Cari</button>
                </form>
            </div>

            {{-- Keterangan total siswa --}}
            <small class="text-muted">
                Total Siswa: <strong>{{ $data->total() }}</strong>
                @if(request('kelas_id'))
                    — di kelas
                    <strong>
                        {{ $kelas->firstWhere('id_kelas', request('kelas_id'))->nama_kelas }}
                    </strong>
                @endif
            </small>

        </div>

        {{-- Filter Kelas - tetap pojok kanan --}}
        <form action="{{ route('siswa.index') }}" method="GET" class="d-flex">
            <select name="kelas_id" class="form-select" onchange="this.form.submit()">
                <option value="">Semua Kelas</option>
                @foreach ($kelas as $k)
                    <option value="{{ $k->id_kelas }}" {{ request('kelas_id') == $k->id_kelas ? 'selected' : '' }}>
                        {{ $k->nama_kelas }}
                    </option>
                @endforeach
            </select>
            <noscript><button class="btn btn-primary ms-2">Filter</button></noscript>
        </form>

    </div>

    {{-- Alert sukses --}}
    @if(session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    {{-- Tabel --}}
    <div class="table-responsive">
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
                        <td>{{ $data->firstItem() + $loop->index }}</td>
                        <td>{{ $s->nama_siswa }}</td>
                        <td>{{ $s->kelas ? $s->kelas->nama_kelas : '-' }}</td>

                        <td style="white-space: normal; max-width: 250px;">
                            {{ $s->alamat }}
                        </td>

                        <td style="white-space: normal;">{{ $s->email }}</td>
                        <td>{{ $s->no_telp }}</td>
                        <td>{{ $s->nama_wali }}</td>

                        <td>
                            <a href="{{ route('siswa.edit', $s->id_siswa) }}" class="btn btn-warning btn-sm">Edit</a>

                            <form action="{{ route('siswa.destroy', $s->id_siswa) }}"
                                  method="POST" style="display:inline-block;"
                                  onsubmit="return confirm('Yakin ingin hapus?')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm">Hapus</button>
                            </form>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>

    {{-- Pagination --}}
    <div class="mt-3">
        {{ $data->appends(request()->query())->links('pagination::simple-bootstrap-5') }}
    </div>

</div>
@endsection
