@extends('templates.app')
@section('content')
<div class="container mt-4">
    <h2 class="mb-4 fw-bold">Riwayat Pengajar</h2>
            <form method="GET" action="{{ route('guru.index') }}" class="mb-3 d-flex" style="max-width: 350px;">
            <input type="text" name="search" class="form-control me-2" placeholder="Cari nama atau email..."
                value="{{ request('search') }}">
            <button type="submit" class="btn btn-primary">Cari</button>
        </form>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>No</th>
                <th>Nama Guru</th>
                <th>Kelas</th>
                <th>Alamat</th>
                <th>Keterangan</th>
                <th>Tanggal</th>
                <th>Aksi</th>
            </tr>
        </thead>

        <tbody>
            @forelse ($riwayat as $key => $g)
                <tr>
                    <td>{{ $key + 1 }}</td>
                    <td>{{ $g->guru ? $g->guru->nama_guru : '-' }}</td>
                    <td>{{ $g->kelas ? $g->kelas->nama_kelas : '-' }}</td>
                    <td>{{ $g->alamat }}</td>
                    <td>{{ $g->keterangan }}</td>
                    <td>{{ $g->tanggal }}</td>
                    <td>
                        <form action="{{ route('riwayat.destroy', $g->id_riwayat) }}" method="POST" style="display:inline">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn btn-danger btn-sm"
                                onclick="return confirm('Yakin ingin menghapus data ini secara permanen?')">
                                Hapus Permanen
                            </button>
                        </form>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="7" class="text-center">Belum ada riwayat pengajar.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
    <div class="mt-3">
        {{ $riwayat->links('pagination::simple-bootstrap-5') }}
    </div>
</div>
@endsection
