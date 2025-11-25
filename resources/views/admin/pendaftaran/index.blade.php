@extends('templates.app')

@section('content')
    <style>
        body {
            background-color: #f1f3f5;
        }

        .table th {
            background-color: #0d6efd;
            color: white;
        }

        .status-terima {
            color: green;
            font-weight: bold;
        }

        .status-tolak {
            color: red;
            font-weight: bold;
        }

        .status-menunggu {
            color: orange;
            font-weight: bold;
        }
    </style>

    <div class="container py-4">

        <h2 class="mb-4 text-center fw-bold">Data Pendaftar Siswa</h2>

        <div class="card shadow-sm">
            <div class="card-body">

                <div class="table-responsive">
                    <table class="table table-bordered align-middle">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama</th>
                                <th>Nama Wali</th>
                                <th>No Handphone</th>
                                <th>Usia</th>
                                <th>Alamat</th>
                                <th>Status</th>
                                <th>Aksi</th>
                            </tr>
                        </thead>

                        <tbody>
                            @forelse ($pendaftar as $key => $p)
                                <tr>
                                    <td>{{ $pendaftar->firstItem() + $key }}</td>
                                    <td>{{ $p->nama }}</td>
                                    <td>{{ $p->nama_wali }}</td>
                                    <td>{{ $p->no_hp }}</td>
                                    <td>{{ $p->usia }}</td>
                                    <td>{{ $p->alamat }}</td>

                                    <td>
                                        @if ($p->status === 'diterima')
                                            <span class="badge bg-success">Diterima</span>
                                        @elseif ($p->status === 'ditolak')
                                            <span class="badge bg-danger">Ditolak</span>
                                        @else
                                            <span class="badge bg-warning text-dark">Menunggu</span>
                                        @endif

                                    </td>

                                    <td class="d-flex gap-1">

                                        <a href="{{ route('pendaftaran.terima', $p->id) }}" class="btn btn-success btn-sm"
                                            onclick="return confirm('Terima pendaftar ini?')">
                                            Terima
                                        </a>

                                        <a href="{{ route('pendaftaran.tolak', $p->id) }}" class="btn btn-danger btn-sm"
                                            onclick="return confirm('Tolak pendaftar ini?')">
                                            Tolak
                                        </a>

                                    </td>

                                </tr>
                            @empty
                                <tr>
                                    <td colspan="8" class="text-center">
                                        Belum ada data pendaftar.
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>

                    {{-- Pagination Laravel --}}
                    <div class="d-flex justify-content-center">
                        {{ $pendaftar->links() }}
                    </div>

                </div>

            </div>
        </div>
    </div>
@endsection
