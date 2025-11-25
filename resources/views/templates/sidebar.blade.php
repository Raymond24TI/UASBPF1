<div class="sidebar">

    <div class="sidebar-title">
        CALISTUNG<br>
        <span>Dashboard Admin</span>
    </div>

    <nav id="sidebarMenu" class="sidebar d-lg-block bg-gray-800 text-white collapse" data-simplebar>
        <div class="sidebar-inner px-4 pt-3">
            <ul class="nav flex-column pt-3 pt-md-0">
                <li class="nav-link d-flex align-items-center">
                {{session('nama_admin')}}
                </li>
            </ul>
            <ul class="nav flex-column pt-3 pt-md-0">
                <li class="nav-item {{ request()->is('admin') ? 'active' : '' }}">
                    <a href="{{ route('admin.index') }}" class="nav-link d-flex align-items-center">
                        <span class="sidebar-text">Dashboard</span>
                    </a>
                </li>

                <li class="nav-item {{ request()->is('admin/guru*') ? 'active' : '' }}">
                    <a href="{{ route('guru.index') }}" class="nav-link">
                        <span class="sidebar-text">Data Guru</span>
                    </a>
                </li>

                <li class="nav-item {{ request()->is('admin/siswa*') ? 'active' : '' }}">
                    <a href="{{ route('siswa.index') }}" class="nav-link">Data Siswa</a>
                </li>

                <li class="nav-item {{ request()->is('admin/alumni*') ? 'active' : '' }}">
                    <a href="{{ route('alumni.index') }}" class="nav-link">Data Alumni</a>
                </li>

                <li class="nav-item {{ request()->is('admin/riwayat_pengajar*') ? 'active' : '' }}">
                    <a href="{{ route('riwayat.index') }}" class="nav-link">Riwayat Pengajar</a>
                </li>

                <!--<li class="nav-item {{ request()->is('admin/pendaftaran*') ? 'active' : '' }}">
        <a href="{{ route('pendaftaran.index') }}" class="nav-link">Pendaftaran</a>
      </li>-->

                <li class="nav-item {{ request()->is('admin/users*') ? 'active' : '' }}">
                    <a href="{{ route('users.index') }}" class="nav-link">
                        <span class="sidebar-text">Data User</span>
                    </a>
                </li>
            </ul>
            <ul class="nav flex-column mb-3">
                <li class="nav-item">
                    <form action="{{ route('logout') }}" method="POST" onsubmit="return confirm('Yakin mau logout?')">
                        @csrf
                        <button type="submit" class="nav-link text-danger border-0 bg-transparent"
                            style="cursor:pointer;">
                            <span class="sidebar-text">Logout</span>
                        </button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>

</div>
