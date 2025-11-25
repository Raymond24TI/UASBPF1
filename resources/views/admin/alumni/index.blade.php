@extends('templates.app')
@section('content')
<div class="container mt-4">
    <h2 class="mb-4 fw-bold">Data Alumni</h2>

    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>No</th>
                <th>Nama Siswa</th>
                <th>Kelas</th>
                <th>Alamat</th>
                <th>Aksi</th>
            </tr>
        </thead>

        <tbody>
            @forelse ($alumni as $key => $a)
                <tr>
                    <td>{{ $key + 1 }}</td>
                    <td>{{ $a->siswa ? $a->siswa->nama_siswa : $a->nama_siswa }}</td>
                                        <td>{{ $a->kelas ? $a->kelas->nama_kelas : $a->id_kelas }}</td>
                    <td>{{ $a->alamat }}</td>

                    <td>
                        <a href="{{ route('alumni.destroy', $a->id_alumni) }}"
                           class="btn btn-danger btn-sm"
                           onclick="return confirm('Yakin ingin menghapus data ini secara permanen?')">
                           Hapus Permanen
                        </a>
                    </td>
                </tr>
            @empty
                <tr>
                    <td colspan="5" class="text-center">Belum ada data alumni.</td>
                </tr>
            @endforelse
        </tbody>
    </table>
    <div class="mt-3">
        {{ $alumni->links('pagination::simple-bootstrap-5') }}
    </div>
</div>
@endsection
