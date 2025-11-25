@extends('templates.login')
@section('content')
<div class="container mt-5" style="max-width: 400px;">
    <h3 class="text-center mb-4">Calistung Login</h3>

    @if(session('error'))
        <div class="alert alert-danger">{{ session('error') }}</div>
    @endif

<form method="POST" action="{{ route('login.process') }}">
    @csrf

    <label>Username</label>
    <input type="text" name="username" required class="form-control">

    <label>Password</label>
    <input type="password" name="password" required class="form-control">

    <button class="btn btn-primary w-100 mt-3">Login</button>
</form>

</div>
@endsection
