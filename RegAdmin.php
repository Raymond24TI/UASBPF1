<?php
// file: tambah_admin.php

// ======= KONFIGURASI DATABASE =======
$host = 'localhost';
$db   = 'calistung';   // ganti sesuai nama database
$user = 'root';            // ganti sesuai username DB
$pass = '';                // ganti sesuai password DB
$charset = 'utf8mb4';

$dsn = "mysql:host=$host;dbname=$db;charset=$charset";

$options = [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION, // tampilkan error
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
];

try {
    $pdo = new PDO($dsn, $user, $pass, $options);
} catch (\PDOException $e) {
    die("Koneksi gagal: " . $e->getMessage());
}

// ======= DATA ADMIN =======
$nama_admin = 'Super';   // ganti sesuai nama admin
$password_plain = 'android'; // ganti sesuai password

// Hash password menggunakan password_hash
$password_hashed = password_hash($password_plain, PASSWORD_DEFAULT);

// ======= INSERT DATA =======
$sql = "INSERT INTO admin (nama_admin, password) VALUES (:nama_admin, :password)";
$stmt = $pdo->prepare($sql);

try {
    $stmt->execute([
        ':nama_admin' => $nama_admin,
        ':password' => $password_hashed
    ]);
    echo "Admin berhasil ditambahkan!";
} catch (\PDOException $e) {
    die("Gagal menambahkan admin: " . $e->getMessage());
}
