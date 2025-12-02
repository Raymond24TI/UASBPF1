@extends('templates.app')
@section('content')
<div class="container mt-4">

    <h2 class="mb-3">Daftar Guru</h2>

    {{-- BARIS TOMBOL + SEARCH --}}
    <div class="d-flex justify-content-between align-items-center mb-3">

        <div class="d-flex">
            {{-- Tombol tambah --}}
            <a href="{{ route('guru.create') }}" class="btn btn-success me-2">
                Tambah Guru
            </a>

            {{-- Search --}}
            <form method="GET" action="{{ route('guru.index') }}" class="d-flex" style="max-width: 350px;">
                <input type="text" name="search" class="form-control me-2"
                       placeholder="Cari nama atau email..."
                       value="{{ request('search') }}">
                <button type="submit" class="btn btn-primary">Cari</button>
            </form>
        </div>

        {{-- (Tidak ada filter untuk guru, jadi kanan kosong) --}}
        <div></div>
    </div>

    {{-- ALERT SUKSES --}}
    @if (session('success'))
        <div class="alert alert-success">{{ session('success') }}</div>
    @endif

    {{-- TABEL --}}
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="table-primary">
                <tr>
                    <th>ID</th>
                    <th>Nama</th>
                    <th>Email</th>
                    <th>No Telp</th>
                    <th>Alamat</th>
                    <th>Password</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @forelse ($data as $g)
                    <tr>
                        <td>{{ $data->firstItem() + $loop->index }}</td>
                        <td>{{ $g->nama_guru }}</td>
                        <td>{{ $g->email }}</td>
                        <td>{{ $g->no_telp }}</td>

                        <td style="white-space: normal; max-width: 250px;">
                            {{ $g->alamat }}
                        </td>

                        <td>{{ Str::limit($g->password, 10, '...') }}</td>

                        <td>
                            <a href="{{ route('guru.edit', $g->id_guru) }}"
                               class="btn btn-warning btn-sm">Edit</a>

                            <form action="{{ route('guru.destroy', $g->id_guru) }}"
                                  method="POST"
                                  style="display:inline-block;"
                                  onsubmit="return confirm('Yakin ingin hapus data guru ini?')">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm">
                                    Hapus
                                </button>
                            </form>
                        </td>
                    </tr>

                @empty
                    <tr>
                        <td colspan="7" class="text-center text-muted">Belum ada data guru.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>
    </div>

    {{-- PAGINATION --}}
    <div class="mt-3">
        {{ $data->links('pagination::simple-bootstrap-5') }}
    </div>

</div>
@endsection
