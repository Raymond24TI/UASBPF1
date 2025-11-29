@extends('templates.app')
@section('content')
    <div class="container mt-4">
        <h2 class="mb-3">Daftar Guru</h2>

        <a href="{{ route('guru.create') }}" class="btn btn-success mb-3">Tambah Guru</a>
        <form method="GET" action="{{ route('guru.index') }}" class="mb-3 d-flex" style="max-width: 350px;">
            <input type="text" name="search" class="form-control me-2" placeholder="Cari nama atau email..."
                value="{{ request('search') }}">
            <button type="submit" class="btn btn-primary">Cari</button>
        </form>



        @if (session('success'))
            <div class="alert alert-success">{{ session('success') }}</div>
        @endif

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
                        <td>{{ $g->id_guru }}</td>
                        <td>{{ $g->nama_guru }}</td>
                        <td>{{ $g->email }}</td>
                        <td>{{ $g->no_telp }}</td>
                        <td>{{ $g->alamat }}</td>
                        <td>{{ Str::limit($g->password, 10, '...')}}</td>

                        <td>
                            <a href="{{ route('guru.edit', $g->id_guru) }}" class="btn btn-warning btn-sm">
                                Edit
                            </a>

                            <form action="{{ route('guru.destroy', $g->id_guru) }}" method="POST" style="display:inline;">
                                @csrf
                                @method('DELETE')
                                <button type="submit" class="btn btn-danger btn-sm"
                                    onclick="return confirm('Yakin ingin hapus data guru ini?')">
                                    Hapus
                                </button>
                            </form>

                        </td>
                    </tr>
                @empty
                    <tr>
                        <td colspan="6" class="text-center text-muted">
                            Belum ada data guru.
                        </td>
                    </tr>
                @endforelse
            </tbody>
        </table>

        <div class="mt-3">
            {{ $data->links('pagination::simple-bootstrap-5') }}
        </div>

    </div>
@endsection
