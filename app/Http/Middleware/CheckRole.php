<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;

class CheckRole
{
    public function handle(Request $request, Closure $next)
    {
        if (!session()->has('nama_admin') || session('nama_admin') !== 'Super Admin') {
            // Akses ditolak
            return abort(403, 'Akses terbatas untuk ' . session('nama_admin'));
        }

        return $next($request);
    }
}
