<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Rumah Belajar Femi</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            height: 100vh;
            background: linear-gradient(135deg, #1a73e8, #4285f4);
            display: flex;
            justify-content: center;
            align-items: center;
            font-family: 'Poppins', sans-serif;
        }

        .login-card {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 400px;
        }

        .login-card h2 {
            font-weight: 700;
            margin-bottom: 25px;
            color: #1a73e8;
            text-align: center;
        }

        .form-control:focus {
            box-shadow: none;
            border-color: #1a73e8;
        }

        .btn-login {
            background-color: #1a73e8;
            color: #fff;
            font-weight: 600;
            transition: 0.3s;
        }

        .btn-login:hover {
            background-color: #1669c1;
        }

        .text-danger {
            font-size: 0.875rem;
        }
    </style>
</head>

<body>
    <div class="login-card">
        @yield('content')
    </div>
</body>

</html>
