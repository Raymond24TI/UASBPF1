@extends('templates.app')

@section('content')
    <h1>Tambah User</h1>
    <a href="{{ route('users.index') }}">Kembali ke Daftar User</a>

    @if ($errors->any())
        <div style="color:red">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('users.store') }}" method="POST">
        @csrf
        <div>
            <label>Nama:</label>
            <input type="text" name="name" value="{{ old('name') }}" required>
        </div>

        <div>
            <label>Username:</label>
            <input type="text" name="username" value="{{ old('username') }}" required>
        </div>

        <div>
            <label>Email:</label>
            <input type="email" name="email" value="{{ old('email') }}" required>
        </div>

        <div>
            <label>Role:</label>
<select name="role" required>
    <option value="">-- Pilih Role --</option>
    <option value="admin" {{ old('role')=='admin' ? 'selected' : '' }}>Admin</option>
    <option value="guru" {{ old('role')=='guru' ? 'selected' : '' }}>Guru</option>
    <option value="siswa" {{ old('role')=='siswa' ? 'selected' : '' }}>Siswa</option>
</select>

        </div>

        <div>
            <label>Password:</label>
            <input type="password" name="password" required>
        </div>

        <div>
            <label>Konfirmasi Password:</label>
            <input type="password" name="password_confirmation" required>
        </div>

        <button type="submit">Simpan</button>
    </form>
@endsection
