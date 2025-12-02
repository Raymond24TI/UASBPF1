@extends('templates.app')
@section('content')
    <div class="container mt-4">
        <h2 class="mb-4 fw-bold">Data Alumni</h2>

        <table class="table table-bordered table-striped">
            <thead class="table-dark">
                <tr>
                    <th>No</th>
                    <th>Nama Siswa</th>
                    <th>Email</th>
                    <th>Kelas</th>
                    <th>Alamat</th>
                    <th>Tahun Lulus</th>
                    <th>Aksi</th>
                </tr>
            </thead>

            <tbody>
                @forelse ($alumni as $key => $a)
                    <tr>
                        <td>{{ $key + 1 }}</td>

                        {{-- Nama Siswa --}}
                        <td>{{ $a->nama_siswa }}</td>

                        {{-- Email --}}
                        <td>{{ $a->email }}</td>

                        {{-- Kelas --}}
                        <td>{{ $a->kelas ? $a->kelas->nama_kelas : '-' }}</td>

                        {{-- Alamat --}}
                        <td>{{ $a->alamat }}</td>

                        {{-- Tahun Lulus --}}
                        <td>{{ $a->tahun_lulus }}</td>

                        <td>
                            <a href="{{ route('alumni.edit', $a->id_alumni) }}" class="btn btn-warning btn-sm">Edit</a>


                            <form action="{{ route('alumni.destroy', $a->id_alumni) }}" method="POST" style="display:inline;">
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
                        <td colspan="7" class="text-center">Belum ada data alumni.</td>
                    </tr>
                @endforelse
            </tbody>
        </table>

        <div class="mt-3">
            {{ $alumni->links('pagination::simple-bootstrap-5') }}
        </div>
    </div>
@endsection
