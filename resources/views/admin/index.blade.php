@extends('templates.app')

@section('content')
<div class="container mt-4">
  <h2 class="mb-4">Dashboard Admin</h2>

  <div class="row g-3">
    <div class="col-md-3">
      <div class="card p-3">
        <h6>Total Guru</h6>
        <h3>{{ \App\Models\Guru::count() }}</h3>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card p-3">
        <h6>Total Siswa</h6>
        <h3>{{ \App\Models\Siswa::count() }}</h3>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card p-3">
        <h6>Total Alumni</h6>
        <h3>{{ \App\Models\Alumni::count() }}</h3>
      </div>
    </div>
  </div>
</div>
@endsection
