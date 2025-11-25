<!DOCTYPE html>
<html lang="en">

<head>
    <title>Rumah Belajar Femi - Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f7f7f7;
        }

        .sidebar {
            width: 240px;
            background: #1a73e8;
            min-height: 100vh;
            color: white;
            position: fixed;
            top: 0;
            left: 0;
            padding-top: 80px;
        }

        .sidebar a {
            color: white;
            padding: 12px 20px;
            display: block;
            font-weight: 500;
        }

        .sidebar a:hover {
            background: rgba(255, 255, 255, 0.15);
        }

        .content-area {
            margin-left: 240px;
            padding: 30px;
        }
/* ==== SIDEBAR ==== */
.sidebar {
    width: 250px;
    min-height: 100vh;
    background: #dcecf8;
    border-right: 1px solid #e5e7eb;
    padding: 20px 15px;
    position: fixed;
    top: 0;
    left: 0;
}

/* ==== JUDUL BESAR SIDEBAR ==== */
.sidebar-title {
    font-size: 20px;
    font-weight: 800;
    color: #1a73e8;
    text-transform: uppercase;
    letter-spacing: 0.5px;
    margin-bottom: 25px;
    line-height: 1.2;
}

.sidebar-title span {
    font-size: 13px;
    color: #6b7280;
    font-weight: 600;
    text-transform: none;
}

/* ==== LINK MENU ==== */
.sidebar a {
    display: flex;
    align-items: center;
    gap: 12px;
    padding: 12px 14px;
    font-size: 15px;
    font-weight: 500;
    color: #374151;
    text-decoration: none;
    border-radius: 8px;
    transition: all 0.25s ease;
    margin-bottom: 6px;
}

.sidebar a:hover {
    background: #f3f4f6;
    color: #1a73e8;
    transform: translateX(4px);
}

.sidebar a.active {
    background: #1a73e8;
    color: #ffffff;
    box-shadow: 0 2px 6px rgba(26,115,232,0.3);
}

/* Konten geser kanan */
.content-wrapper {
    margin-left: 250px;
    padding: 20px;
}

    .table th {
        background-color: #0d6efd;
        color: white;
    }
    </style>

    @stack('styles')
</head>

<body>

    @include('templates.sidebar')

    <div class="content-area">
        @yield('content')
    </div>

    @stack('scripts')
</body>

</html>
