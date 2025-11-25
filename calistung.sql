-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 25, 2025 at 12:26 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `calistung`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int NOT NULL,
  `nama_admin` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama_admin`, `password`) VALUES
(4, 'admin1', '$2y$10$9/6owtCwMs/dZH2Is8ctruDsXR3xGVqkO8FyhEkwJ.LjugYodjv8i'),
(5, 'admin', '$2y$10$qthd.30qs8Fay/UYN.g5h.sIlyUW1cV.Z/8qOyvZIHn6F76rXaql2'),
(6, 'Super Admin', '$2y$10$TGtCdeZ6LxETCHx38/ve3ePUdGqDONDZ.21DptXhcNJZKMCNZPARC'),
(7, 'Super', '$2y$10$hb8paBcFsKJEyyv/ZUzYV.3BTOPwSt1wZSYbGsYwvWpbs4c0FK8pO');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `nama_siswa` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `id_siswa`, `id_kelas`, `nama_siswa`, `alamat`) VALUES
(1, 1, 1, 'Andi Pratama', 'Jl. Manggis No. 2');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id_guru` int NOT NULL,
  `nama_guru` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_telp` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci,
  `nama_kelas` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_tgl_lahir` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id_guru`, `nama_guru`, `email`, `no_telp`, `password`, `id_kelas`, `alamat`, `nama_kelas`, `tempat_tgl_lahir`) VALUES
(1, 'Budi Santoso', 'budi@gmail.com', '081234567890', '$2y$10$xk21UNoUfeU8q9cMYQHC1u7o0I0iJzI9zzwJ8Yv8iIHn2Jd9O1myK', 1, 'Jl. Merpati Raya No.12', NULL, '1985-05-12'),
(2, 'Siti Rahmawati', 'siti@gmail.com', '081233445566', '$2y$10$xk21UNoUfeU8q9cMYQHC1u7o0I0iJzI9zzwJ8Yv8iIHn2Jd9O1myK', 2, 'Jl. Melati Indah No.8', NULL, '1990-08-08'),
(3, 'Agus Agung', 'agus@gmail.com', '089876543210', '$2y$10$xk21UNoUfeU8q9cMYQHC1u7o0I0iJzI9zzwJ8Yv8iIHn2Jd9O1myK', 3, 'Jl. Anggrek Timur No.21', NULL, '1988-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int NOT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `waktu` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `waktu`) VALUES
(1, 'Kelas A', NULL),
(2, 'Kelas B', NULL),
(3, 'Kelas C', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_11_22_105504_add_role_column_on_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `nilai` int DEFAULT NULL,
  `kehadiran` enum('hadir','alpha','izin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_siswa`, `id_kelas`, `nilai`, `kehadiran`) VALUES
(16, 1, 1, 85, 'hadir'),
(17, 1, 1, 90, 'izin'),
(18, 1, 1, 78, 'alpha'),
(19, 2, 2, 92, 'hadir'),
(20, 2, 2, 81, 'izin'),
(21, 2, 2, 88, 'hadir'),
(22, 3, 1, 75, 'alpha'),
(23, 3, 1, 83, 'hadir'),
(24, 3, 1, 90, 'hadir'),
(25, 4, 3, 94, 'hadir'),
(26, 4, 3, 89, 'izin'),
(27, 4, 3, 80, 'hadir'),
(28, 5, 2, 79, 'hadir'),
(29, 5, 2, 85, 'alpha'),
(30, 5, 2, 91, 'hadir');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `pelanggan_id` int UNSIGNED NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `gender` enum('Male','Female','Other') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`pelanggan_id`, `first_name`, `last_name`, `birthday`, `gender`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(3, 'wefwefwe2131', 'fwknfwne', '2002-02-02', 'Female', 'Kelompok1@gmail.com', '3399933', '2025-11-15 04:25:52', '2025-11-15 04:25:52'),
(4, 'Judah', 'Mohr', '1977-06-21', 'Other', 'iferry@example.com', '+1 (267) 240-6158', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(5, 'Monique', 'Fahey', '1982-11-30', 'Male', 'swehner@example.org', '+1 (845) 791-9256', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(6, 'Cecil', 'Davis', '2003-02-10', 'Other', 'uhowe@example.com', '(510) 705-1655', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(7, 'Bo', 'Collins', '1979-08-12', 'Other', 'ndickinson@example.com', '341.542.9699', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(8, 'Mateo', 'Bogan', '1973-08-27', 'Male', 'fklein@example.net', '458.944.7403', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(9, 'Mara', 'Frami', '1972-12-12', 'Female', 'jschoen@example.com', '1-520-446-3749', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(10, 'Georgianna', 'Ernser', '1992-10-13', 'Male', 'krajcik.albert@example.org', '1-650-991-6599', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(11, 'Triston', 'Romaguera', '1971-09-23', 'Male', 'yoreilly@example.com', '+18707162584', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(12, 'Nicole', 'Dach', '1986-02-11', 'Other', 'tess81@example.org', '(458) 878-0599', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(13, 'Jevon', 'Stracke', '1994-09-02', 'Other', 'carmine.beatty@example.org', '+1-725-204-6369', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(14, 'Cleo', 'Gulgowski', '1997-05-29', 'Male', 'tomasa16@example.com', '+1-360-659-9437', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(15, 'Lillian', 'Cummings', '1999-08-18', 'Male', 'daugherty.jeremie@example.com', '(207) 333-4261', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(16, 'Zack', 'Nitzsche', '1981-08-04', 'Other', 'dora85@example.org', '469.440.2674', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(17, 'Zula', 'Funk', '2005-03-24', 'Other', 'gisselle11@example.org', '+1-442-618-4614', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(18, 'Yadira', 'Bogisich', '1998-03-13', 'Male', 'gusikowski.louie@example.com', '1-414-573-7402', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(19, 'Unique', 'Robel', '1990-10-14', 'Female', 'douglas.davon@example.net', '+1 (903) 740-9194', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(20, 'Fabian', 'Mohr', '1977-09-09', 'Other', 'leonor.green@example.com', '+13323466729', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(21, 'Eda', 'Cartwright', '1980-08-21', 'Other', 'farrell.rogers@example.net', '+12487013687', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(22, 'Jaylin', 'Kozey', '2004-01-26', 'Female', 'marguerite.greenfelder@example.net', '(804) 617-6929', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(23, 'Leif', 'Stehr', '1988-08-17', 'Male', 'daugherty.lamont@example.org', '+1-786-268-1540', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(24, 'Tanner', 'Hintz', '2004-08-06', 'Other', 'enrique.feeney@example.com', '+1-279-972-6906', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(25, 'Jayne', 'Satterfield', '1971-09-11', 'Male', 'jaiden.harris@example.com', '+1-863-500-1110', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(26, 'Deven', 'Kuhic', '1993-12-07', 'Female', 'justice43@example.com', '+1-408-373-7495', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(27, 'Ezra', 'Prohaska', '2000-04-01', 'Other', 'howard.berge@example.net', '1-704-853-4999', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(28, 'Wiley', 'Kautzer', '2001-08-09', 'Male', 'alexander35@example.net', '239.707.3162', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(29, 'Aletha', 'Walker', '1998-05-23', 'Other', 'mrempel@example.org', '862.515.9351', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(30, 'Mittie', 'Rowe', '1972-02-06', 'Male', 'plittle@example.org', '+12392405680', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(31, 'Aliza', 'Senger', '1989-09-03', 'Male', 'ucartwright@example.com', '+1-352-356-1711', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(32, 'Madyson', 'Watsica', '1979-04-02', 'Other', 'hlangworth@example.com', '+1 (301) 805-7742', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(33, 'Merlin', 'Gibson', '1975-09-29', 'Female', 'sienna33@example.com', '878-521-8383', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(34, 'Leatha', 'Gorczany', '2002-06-08', 'Male', 'wilton47@example.com', '830.610.7632', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(35, 'Kaden', 'Halvorson', '2001-04-24', 'Other', 'bdickinson@example.com', '812.253.1523', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(36, 'Alivia', 'Haley', '2001-09-13', 'Other', 'gus.kassulke@example.com', '1-680-794-8840', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(37, 'Emory', 'Fay', '1970-10-17', 'Male', 'schiller.estelle@example.com', '+1.910.602.0267', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(38, 'Marjory', 'Larkin', '2000-10-05', 'Male', 'jamison29@example.net', '1-323-305-7406', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(39, 'Maverick', 'Hayes', '1993-01-25', 'Female', 'reagan59@example.net', '+1-253-746-7599', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(40, 'Hoyt', 'Stiedemann', '1983-10-22', 'Female', 'paris95@example.com', '+1.541.747.4909', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(41, 'Roman', 'Krajcik', '1982-08-20', 'Female', 'wreichel@example.org', '838.717.5336', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(42, 'Jacynthe', 'Romaguera', '1977-06-28', 'Male', 'arne.miller@example.net', '+1-614-777-3088', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(43, 'Sienna', 'Keeling', '1979-07-06', 'Male', 'casper.filomena@example.com', '+1.848.806.5351', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(44, 'Amina', 'Fahey', '1994-10-19', 'Male', 'harold.bernier@example.net', '+1-203-807-0339', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(45, 'Freda', 'Bradtke', '1978-08-28', 'Other', 'uondricka@example.com', '952.529.7099', '2025-11-23 01:47:32', '2025-11-23 01:47:32'),
(46, 'Alvis', 'Mann', '1983-02-20', 'Female', 'rosendo.oconner@example.org', '(661) 721-4915', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(47, 'Gerry', 'Russel', '1977-12-28', 'Other', 'xklocko@example.net', '458-312-9526', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(48, 'Dianna', 'Armstrong', '1978-07-24', 'Female', 'johnathan56@example.net', '+1.256.480.3761', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(49, 'Trevor', 'Tillman', '1985-03-29', 'Female', 'ferry.hermann@example.net', '(423) 914-7900', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(50, 'Bette', 'Pfeffer', '1970-02-22', 'Female', 'hoeger.elaina@example.com', '1-601-654-7378', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(51, 'Bradley', 'Predovic', '1993-09-08', 'Female', 'dominique.quitzon@example.net', '1-480-991-3904', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(52, 'Justine', 'Green', '1990-08-08', 'Female', 'zkreiger@example.net', '(361) 375-6733', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(53, 'Twila', 'Hickle', '1993-12-18', 'Male', 'queenie16@example.org', '+1-980-500-8456', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(54, 'Marcel', 'D\'Amore', '1987-10-06', 'Male', 'rolfson.jaida@example.org', '(786) 224-2368', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(55, 'Garrick', 'Goyette', '2005-08-09', 'Other', 'qwalsh@example.com', '+1-405-322-2566', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(56, 'Arlo', 'Wunsch', '1975-07-25', 'Other', 'mohr.jerry@example.org', '1-747-299-9871', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(57, 'Jennifer', 'Leuschke', '1978-05-20', 'Male', 'vbins@example.com', '+1.478.420.7817', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(58, 'Jennifer', 'Cruickshank', '2004-03-29', 'Female', 'graham.garth@example.org', '913-458-2505', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(59, 'Olen', 'Hauck', '1995-11-20', 'Male', 'xwiegand@example.net', '(640) 602-6696', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(60, 'Nikki', 'Schowalter', '1989-03-29', 'Male', 'jonas71@example.com', '+1-531-235-3621', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(61, 'Kelton', 'Berge', '1970-10-12', 'Female', 'knitzsche@example.org', '(682) 425-5545', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(62, 'Leann', 'Stamm', '1974-05-28', 'Other', 'dach.donny@example.org', '+1 (612) 446-1649', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(63, 'Theresa', 'Howell', '1988-07-24', 'Male', 'cdickinson@example.com', '708.472.2395', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(64, 'Isabella', 'Leffler', '1977-09-18', 'Male', 'jeanne.miller@example.org', '678-282-1154', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(65, 'Krystel', 'McKenzie', '2003-08-07', 'Female', 'heaney.itzel@example.org', '458.776.6600', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(66, 'Mozell', 'Casper', '1983-01-07', 'Other', 'keyshawn.price@example.com', '+1-929-495-8867', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(67, 'Kian', 'Sipes', '2004-03-02', 'Other', 'ressie46@example.com', '1-757-203-1254', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(68, 'Eldora', 'Gerhold', '1992-10-10', 'Other', 'jolson@example.org', '+16107071142', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(69, 'Lloyd', 'Christiansen', '1980-05-30', 'Male', 'kerluke.einar@example.com', '+13618850706', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(70, 'Libby', 'Heller', '1988-01-14', 'Other', 'zelma50@example.com', '+1-309-265-4355', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(71, 'Bertrand', 'Powlowski', '2001-04-19', 'Male', 'smitham.camryn@example.net', '725.778.2409', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(72, 'Kennedi', 'Murray', '1999-05-20', 'Male', 'charley99@example.org', '+1 (352) 858-2421', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(73, 'Dangelo', 'Moen', '1976-09-08', 'Male', 'shania.bailey@example.net', '949.482.3535', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(74, 'Randy', 'Jacobs', '1981-12-11', 'Other', 'antwan17@example.net', '1-631-371-8148', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(75, 'Trenton', 'Cummings', '1979-01-31', 'Other', 'sporer.eva@example.net', '(949) 760-2591', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(76, 'Justine', 'Kerluke', '1990-01-25', 'Male', 'jones.melyssa@example.net', '605-437-8763', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(77, 'Teresa', 'Zieme', '1987-11-13', 'Female', 'altenwerth.grady@example.com', '+12258930835', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(78, 'Gordon', 'Nitzsche', '1994-03-23', 'Other', 'aschoen@example.org', '726-653-0156', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(79, 'Brandy', 'Jacobson', '2005-05-28', 'Other', 'hparker@example.org', '+1 (404) 660-5745', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(80, 'Linnie', 'White', '1989-12-09', 'Other', 'dibbert.judah@example.org', '+1.281.282.5743', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(81, 'Colton', 'Kunde', '1987-08-10', 'Other', 'andre51@example.com', '828-539-4093', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(82, 'Keshawn', 'Hackett', '2002-12-20', 'Male', 'lortiz@example.org', '475.987.1947', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(83, 'America', 'Glover', '1989-02-18', 'Male', 'carroll.jaydon@example.com', '1-920-939-0424', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(84, 'Glenna', 'Pagac', '1980-01-31', 'Other', 'else.crona@example.net', '828.578.7234', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(85, 'Guillermo', 'Ankunding', '1999-01-31', 'Other', 'rosalyn.swift@example.org', '234.508.1601', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(86, 'Retha', 'Wuckert', '1990-02-05', 'Male', 'celestino.lesch@example.com', '+1-361-646-3878', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(87, 'Gabriella', 'Rippin', '2001-12-29', 'Female', 'deanna.kiehn@example.org', '678-863-5714', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(88, 'Alvena', 'Leuschke', '1980-09-07', 'Female', 'raphael.russel@example.com', '786-410-5799', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(89, 'Taylor', 'Zboncak', '1993-03-19', 'Male', 'shayna.gulgowski@example.com', '(351) 315-3632', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(90, 'Amparo', 'Bogisich', '1977-09-28', 'Female', 'christophe16@example.com', '+1.872.642.0097', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(91, 'Jamal', 'Considine', '1997-07-27', 'Female', 'wisozk.ed@example.com', '+1-475-362-2928', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(92, 'Linnea', 'Bins', '1992-04-03', 'Female', 'kennith54@example.com', '(410) 803-7255', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(93, 'Kenya', 'Schiller', '1975-05-30', 'Other', 'rick52@example.com', '818-483-2590', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(94, 'Yvonne', 'Wolf', '1982-12-06', 'Male', 'misael05@example.com', '(386) 974-1875', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(95, 'Adonis', 'Pollich', '1995-01-19', 'Other', 'bergstrom.gaston@example.org', '(815) 229-1867', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(96, 'Aylin', 'Hudson', '2000-08-17', 'Male', 'rosalind75@example.com', '845.831.2664', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(97, 'Estevan', 'Mante', '1992-03-29', 'Other', 'ari.kutch@example.org', '+1.518.777.2316', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(98, 'Katelyn', 'Maggio', '2002-11-14', 'Female', 'colin57@example.com', '(347) 738-9138', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(99, 'Deja', 'Baumbach', '1976-04-14', 'Male', 'arno.leffler@example.net', '(281) 797-8732', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(100, 'Aurelia', 'Ward', '2001-10-25', 'Male', 'oyost@example.org', '1-864-875-0280', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(101, 'Hollie', 'Bergstrom', '2001-08-24', 'Male', 'mayert.stanton@example.com', '+19566542676', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(102, 'Elna', 'Bailey', '1971-07-14', 'Female', 'nina03@example.net', '757-319-4028', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(103, 'Aida', 'Barton', '1990-04-23', 'Other', 'kemmer.maria@example.com', '731.950.9546', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(104, 'Johann', 'Kertzmann', '1992-11-26', 'Other', 'rosina.rutherford@example.com', '857.283.5915', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(105, 'Franco', 'Reichel', '1990-03-11', 'Other', 'nathanial35@example.com', '+1-916-881-4729', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(106, 'Niko', 'Fisher', '1971-12-23', 'Other', 'bartoletti.grace@example.org', '+1 (339) 266-7480', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(107, 'Luis', 'Runolfsson', '1997-11-09', 'Other', 'gschiller@example.net', '475.218.6655', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(108, 'Montana', 'Hills', '2002-02-24', 'Female', 'dangelo57@example.com', '+14344792284', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(109, 'Schuyler', 'Bauch', '2002-06-06', 'Female', 'bcruickshank@example.org', '+1-727-320-2213', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(110, 'Marley', 'Donnelly', '1986-12-22', 'Other', 'zcorkery@example.net', '+1.916.569.6619', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(111, 'Harrison', 'D\'Amore', '1970-07-27', 'Male', 'luciano.johns@example.com', '952.515.5658', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(112, 'Davin', 'Haag', '1990-10-17', 'Male', 'arnoldo.kozey@example.com', '470.601.7265', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(113, 'Roma', 'Zboncak', '1971-09-07', 'Male', 'catalina.kerluke@example.net', '+1-704-985-1024', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(114, 'Leatha', 'Gislason', '1984-10-30', 'Male', 'beau30@example.net', '361.246.2441', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(115, 'Jerrod', 'Cremin', '1971-07-23', 'Male', 'lynch.sherman@example.com', '+1-360-900-3356', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(116, 'Vickie', 'Friesen', '1987-10-03', 'Other', 'camila.rogahn@example.com', '(574) 543-5876', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(117, 'Wendy', 'Luettgen', '2003-10-09', 'Female', 'little.korey@example.org', '458.421.5190', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(118, 'Cole', 'DuBuque', '1981-09-10', 'Female', 'casimir97@example.net', '(863) 784-6088', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(119, 'Elna', 'Strosin', '1971-11-15', 'Male', 'vernon.yost@example.com', '(210) 515-8153', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(120, 'Stewart', 'Schumm', '1986-02-06', 'Other', 'giuseppe10@example.org', '(424) 747-7147', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(121, 'Moshe', 'Abshire', '1991-08-03', 'Male', 'orn.eldon@example.net', '860.475.3842', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(122, 'Bette', 'Hill', '1992-10-07', 'Female', 'woodrow35@example.com', '(850) 232-3262', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(123, 'Theresia', 'Stamm', '1976-03-10', 'Other', 'senger.adah@example.net', '+1-754-467-4953', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(124, 'Jaylon', 'Bechtelar', '2000-07-10', 'Male', 'swolff@example.net', '+1-220-939-3270', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(125, 'Mossie', 'Hodkiewicz', '1980-12-10', 'Other', 'owisozk@example.org', '786.253.0570', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(126, 'Willis', 'Hoppe', '1983-05-18', 'Male', 'lavern.quigley@example.net', '956-822-9017', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(127, 'Johnny', 'Strosin', '1990-11-03', 'Other', 'snicolas@example.net', '+1.458.268.7402', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(128, 'Grover', 'Brakus', '1980-01-30', 'Male', 'volson@example.org', '1-234-365-5714', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(129, 'Alvis', 'Kuhic', '1981-12-24', 'Male', 'raynor.adam@example.org', '930-750-3840', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(130, 'Dagmar', 'Ondricka', '1975-03-17', 'Female', 'frodriguez@example.net', '+1-570-498-3195', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(131, 'Adell', 'Denesik', '1973-11-08', 'Other', 'nbrekke@example.org', '+19405604459', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(132, 'Malcolm', 'Gorczany', '1980-03-08', 'Other', 'rcartwright@example.com', '+1 (201) 349-5304', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(133, 'Marion', 'Hill', '1989-12-22', 'Male', 'mayert.brielle@example.org', '(347) 974-2906', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(134, 'Barbara', 'Mante', '1999-02-02', 'Other', 'kianna.hirthe@example.com', '743-347-8195', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(135, 'Nova', 'DuBuque', '1973-10-18', 'Female', 'heaney.andrew@example.org', '1-360-822-1632', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(136, 'Catalina', 'Stamm', '2001-01-20', 'Other', 'brisa.bahringer@example.com', '1-364-487-8086', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(137, 'Lora', 'Veum', '1977-07-21', 'Other', 'terry.lyla@example.net', '+1 (931) 349-5670', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(138, 'Reta', 'Bartoletti', '2002-06-01', 'Male', 'feest.jazlyn@example.com', '+1.703.718.9595', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(139, 'Anastacio', 'Lowe', '1979-11-13', 'Male', 'yhackett@example.net', '+1-341-379-0612', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(140, 'Theo', 'Baumbach', '1976-11-17', 'Female', 'madisen80@example.com', '820-389-2119', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(141, 'Sonia', 'Muller', '1976-11-23', 'Other', 'serena.sanford@example.com', '+1 (442) 949-8550', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(142, 'Lucile', 'Johnson', '1985-09-23', 'Male', 'witting.claudie@example.net', '+14796747267', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(143, 'Nicolas', 'Mayert', '1972-05-26', 'Other', 'kris.alana@example.com', '+14049832052', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(144, 'Laurel', 'Huel', '2003-11-11', 'Male', 'jaime.langosh@example.org', '(810) 618-2455', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(145, 'Oda', 'Runolfsson', '1998-03-25', 'Other', 'afritsch@example.com', '(909) 504-8872', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(146, 'Arjun', 'Welch', '1983-03-31', 'Female', 'rempel.abdullah@example.com', '463-480-9704', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(147, 'Buster', 'Wiegand', '1988-02-29', 'Male', 'jeremie.damore@example.org', '1-917-839-9043', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(148, 'Bessie', 'Brekke', '1993-08-08', 'Male', 'alfred10@example.org', '708.447.9105', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(149, 'Cordelia', 'Hand', '1970-05-21', 'Other', 'keeling.jerad@example.net', '+1 (680) 593-2027', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(150, 'Kraig', 'Torp', '1999-05-04', 'Female', 'rtrantow@example.net', '1-606-341-4156', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(151, 'Melba', 'Murphy', '1996-02-26', 'Female', 'hellen51@example.net', '+1 (785) 693-3293', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(152, 'Adriel', 'Feest', '1989-12-02', 'Female', 'nwolf@example.org', '+1 (240) 545-0350', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(153, 'Gladyce', 'Hermann', '1985-01-18', 'Other', 'duane.rogahn@example.org', '+1.424.486.2225', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(154, 'Mariela', 'Greenholt', '1983-08-01', 'Female', 'boehm.camren@example.com', '+17798179747', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(155, 'Luther', 'Berge', '1990-03-11', 'Female', 'rturner@example.com', '616-514-2291', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(156, 'Marlin', 'Mayert', '2003-09-07', 'Other', 'maeve.mayert@example.net', '1-803-627-0008', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(157, 'Sylvan', 'Becker', '1998-08-14', 'Other', 'wintheiser.wendell@example.org', '+17266664557', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(158, 'Ernesto', 'Bednar', '1991-04-22', 'Other', 'noah15@example.net', '1-409-343-0345', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(159, 'Giovanna', 'Homenick', '1992-05-18', 'Male', 'grau@example.net', '+1 (763) 657-8514', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(160, 'Burnice', 'Reichel', '1983-10-16', 'Other', 'bettye.trantow@example.com', '1-669-736-1677', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(161, 'Edwardo', 'Schowalter', '1987-11-25', 'Female', 'christelle.oconnell@example.com', '+1-949-216-9614', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(162, 'Pinkie', 'Lindgren', '2002-08-22', 'Other', 'hilton57@example.org', '773-239-2591', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(163, 'Robin', 'Grady', '1981-05-07', 'Other', 'vwelch@example.net', '+1 (283) 701-0293', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(164, 'Estefania', 'Casper', '1995-07-24', 'Other', 'rudolph.hirthe@example.com', '+1.657.953.6236', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(165, 'Fidel', 'Schroeder', '1978-11-25', 'Other', 'elinor.schaden@example.com', '1-909-912-1508', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(166, 'Xzavier', 'Kessler', '1987-07-27', 'Female', 'maxime07@example.net', '1-314-865-0407', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(167, 'Gail', 'McClure', '1979-12-21', 'Other', 'vhills@example.net', '234-203-5216', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(168, 'Sabryna', 'Quitzon', '2005-06-27', 'Other', 'pbaumbach@example.net', '+1 (520) 953-2167', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(169, 'Breanne', 'Larson', '1981-01-31', 'Other', 'forrest.wuckert@example.org', '+1 (508) 333-7538', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(170, 'Kirstin', 'Becker', '1972-05-19', 'Female', 'jayde.mueller@example.net', '1-484-799-9202', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(171, 'Domingo', 'Smith', '1993-11-28', 'Male', 'xlubowitz@example.net', '774-719-7395', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(172, 'Garrick', 'Osinski', '1984-04-18', 'Male', 'deion27@example.com', '1-534-305-0107', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(173, 'Reuben', 'Moore', '2000-10-27', 'Male', 'clovis.damore@example.org', '(667) 621-6154', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(174, 'Rhianna', 'Morissette', '1996-11-27', 'Female', 'isac42@example.com', '+1 (334) 580-0612', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(175, 'Kenyon', 'Morar', '1998-12-21', 'Female', 'hgleichner@example.com', '+1-562-542-2199', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(176, 'Clair', 'Willms', '1990-08-19', 'Female', 'schneider.macey@example.org', '469-496-9500', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(177, 'Dalton', 'Bahringer', '1978-09-15', 'Female', 'lrogahn@example.org', '+1 (682) 386-2325', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(178, 'Kameron', 'Nicolas', '1997-10-13', 'Male', 'francisca.rosenbaum@example.com', '1-704-903-6671', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(179, 'Caterina', 'Mueller', '1990-09-20', 'Female', 'santino.kemmer@example.org', '1-332-997-5679', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(180, 'Concepcion', 'Botsford', '1998-02-25', 'Other', 'osipes@example.org', '1-850-240-3935', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(181, 'Quinn', 'Kirlin', '2000-05-31', 'Female', 'eliza18@example.com', '1-740-802-3776', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(182, 'Johnny', 'Lehner', '1972-01-03', 'Other', 'mekhi.veum@example.net', '228.479.4408', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(183, 'Michale', 'Barrows', '1990-08-06', 'Other', 'okuneva.saige@example.org', '+1.281.838.9229', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(184, 'Camylle', 'Gaylord', '1988-03-30', 'Other', 'emile10@example.org', '(484) 847-9550', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(185, 'Houston', 'Boyle', '1993-04-03', 'Other', 'elsa.stehr@example.com', '854.877.0334', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(186, 'Kayley', 'Barrows', '1987-03-22', 'Female', 'gabriella.senger@example.org', '+1.657.778.5340', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(187, 'Weston', 'Crooks', '1975-02-18', 'Male', 'tgrant@example.com', '(806) 914-5833', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(188, 'Carey', 'Schamberger', '1991-07-07', 'Male', 'xbechtelar@example.com', '+1.562.455.3768', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(189, 'General', 'Harvey', '2004-10-11', 'Other', 'rjacobs@example.com', '+1-743-924-2167', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(190, 'Demond', 'Kuhlman', '1981-05-18', 'Female', 'qbailey@example.com', '331.908.0011', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(191, 'Rahul', 'Hackett', '1998-09-23', 'Male', 'luther28@example.net', '1-720-619-4743', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(192, 'Amiya', 'Nader', '1984-11-17', 'Other', 'felicity40@example.net', '303-703-1050', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(193, 'Taylor', 'Roob', '1977-06-25', 'Other', 'emmerich.jacinto@example.com', '+12073989805', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(194, 'Emmie', 'Stoltenberg', '1989-06-10', 'Female', 'fbogan@example.net', '+1-920-616-9459', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(195, 'Jarred', 'Ernser', '1984-11-09', 'Male', 'rpacocha@example.net', '+1-304-975-0972', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(196, 'Claudine', 'Langosh', '2003-05-02', 'Female', 'rudy21@example.net', '1-678-641-7156', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(197, 'Domenica', 'Larson', '1982-09-01', 'Other', 'gregg.bins@example.com', '661-280-8113', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(198, 'Florian', 'Tillman', '1990-06-27', 'Male', 'adan.prohaska@example.net', '272.294.4138', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(199, 'Lue', 'Sauer', '1986-07-31', 'Other', 'marvin.jordon@example.org', '+1-970-639-8449', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(200, 'Anastacio', 'Russel', '1999-01-11', 'Male', 'gbecker@example.org', '+1 (904) 346-4636', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(201, 'Jessy', 'Herzog', '1972-03-22', 'Other', 'angeline19@example.org', '347-371-1833', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(202, 'Jefferey', 'Gleichner', '1988-11-19', 'Female', 'hobart70@example.com', '812-390-2426', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(203, 'Emil', 'Kling', '1998-02-24', 'Other', 'zella.fahey@example.org', '+1 (831) 684-8877', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(204, 'Gonzalo', 'Schuppe', '2003-01-28', 'Female', 'abbott.retha@example.com', '+1-256-417-3749', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(205, 'Ellen', 'Gleichner', '2003-10-26', 'Male', 'hortense25@example.com', '+1-571-548-5498', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(206, 'Clark', 'O\'Connell', '1982-06-27', 'Male', 'alda42@example.com', '(270) 201-4398', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(207, 'Creola', 'Reynolds', '2000-03-07', 'Other', 'critchie@example.net', '+1 (734) 878-4631', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(208, 'Edythe', 'Boehm', '1992-12-12', 'Other', 'scot64@example.org', '+1.510.320.3831', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(209, 'Timmothy', 'Goldner', '1991-12-05', 'Male', 'jleuschke@example.org', '828.534.7637', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(210, 'Betty', 'Mayer', '1989-05-28', 'Female', 'okuneva.retta@example.net', '+19868985268', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(211, 'Amparo', 'Romaguera', '1990-09-10', 'Other', 'jovani.sporer@example.com', '872-230-1629', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(212, 'Electa', 'West', '1991-10-25', 'Male', 'malinda29@example.com', '+12248124288', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(213, 'Kiana', 'Weissnat', '1978-02-09', 'Female', 'alison.gutkowski@example.net', '+1-818-248-7334', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(214, 'Celine', 'Roberts', '1991-11-05', 'Female', 'tania.bradtke@example.net', '657.288.6873', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(215, 'Guy', 'Hahn', '1970-05-13', 'Other', 'rstanton@example.org', '+15203146990', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(216, 'Fanny', 'Weimann', '1971-08-05', 'Male', 'ahirthe@example.net', '+1 (830) 571-5973', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(217, 'Cortez', 'Kris', '1986-08-23', 'Female', 'marcelina.kessler@example.org', '+1 (747) 302-4203', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(218, 'Bradley', 'Adams', '1997-10-31', 'Other', 'chodkiewicz@example.org', '504-795-5359', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(219, 'Immanuel', 'Mills', '1995-01-24', 'Male', 'quincy.aufderhar@example.net', '754.589.5244', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(220, 'Dejah', 'Jerde', '1973-10-14', 'Male', 'cecelia99@example.com', '+1-283-879-9699', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(221, 'Loma', 'Ebert', '1991-05-19', 'Other', 'nella.fritsch@example.org', '+1-484-537-9937', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(222, 'Art', 'Wintheiser', '1992-01-03', 'Other', 'ztromp@example.org', '540-670-0246', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(223, 'Millie', 'Fritsch', '1991-09-03', 'Male', 'dicki.daphnee@example.net', '484.221.7889', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(224, 'Misty', 'Heidenreich', '1986-04-13', 'Female', 'may92@example.com', '+1.956.470.3939', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(225, 'Greyson', 'Veum', '1991-10-07', 'Male', 'ayla.bosco@example.com', '1-860-390-5120', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(226, 'Hosea', 'DuBuque', '1997-04-14', 'Female', 'cade51@example.net', '(541) 275-6206', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(227, 'Weldon', 'Cassin', '1978-07-15', 'Male', 'xwiegand@example.org', '(361) 222-7478', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(228, 'Cristobal', 'Berge', '1976-07-26', 'Male', 'hmann@example.net', '(330) 223-3907', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(229, 'Mary', 'Trantow', '1980-02-27', 'Other', 'cremin.destinee@example.com', '+1-626-691-3593', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(230, 'Telly', 'Hermann', '1984-11-20', 'Other', 'mosciski.elfrieda@example.com', '1-321-386-3360', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(231, 'Clotilde', 'Kreiger', '2001-07-31', 'Male', 'dorothy.koepp@example.net', '1-901-857-4481', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(232, 'Stevie', 'Kohler', '2001-02-22', 'Male', 'braun.bettye@example.net', '+1 (262) 971-3038', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(233, 'Delilah', 'Sawayn', '1980-12-15', 'Other', 'corrine.ferry@example.net', '+1-203-493-1260', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(234, 'Lonzo', 'Wisozk', '1998-03-28', 'Male', 'kwiegand@example.org', '+1-364-227-3512', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(235, 'Jerrell', 'Yundt', '1993-09-19', 'Female', 'rippin.omari@example.org', '541-297-5909', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(236, 'Vince', 'Kozey', '1980-12-21', 'Other', 'ubode@example.com', '805-686-8933', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(237, 'Mckenna', 'McKenzie', '1986-11-16', 'Female', 'cathy35@example.org', '+1-704-628-9372', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(238, 'Giovanna', 'Metz', '1996-12-09', 'Female', 'brandt66@example.org', '1-551-622-9020', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(239, 'Evalyn', 'Gerlach', '2002-04-21', 'Female', 'kuphal.patsy@example.net', '267.542.0386', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(240, 'Andy', 'Denesik', '1979-02-09', 'Male', 'lysanne.wiegand@example.net', '+14797031329', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(241, 'Willow', 'Pacocha', '2002-08-23', 'Other', 'reese65@example.com', '1-458-812-1183', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(242, 'Tristian', 'Hermann', '1982-08-20', 'Male', 'ischinner@example.net', '+1 (561) 772-2150', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(243, 'Deonte', 'Reilly', '1985-02-21', 'Other', 'kemmer.tate@example.org', '+1-308-362-1146', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(244, 'Orion', 'Zieme', '1971-03-18', 'Other', 'joshuah.deckow@example.net', '+12092695550', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(245, 'Kraig', 'Miller', '1992-02-06', 'Male', 'marcelino.wuckert@example.org', '+1 (680) 332-0876', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(246, 'Shawna', 'Collier', '1987-12-18', 'Male', 'lgulgowski@example.com', '(678) 894-4254', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(247, 'Johnathon', 'Schroeder', '1975-11-19', 'Other', 'frances21@example.org', '+1 (970) 562-3820', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(248, 'General', 'Ernser', '1976-12-02', 'Other', 'ryan.rosalee@example.org', '1-217-666-3965', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(249, 'Lavern', 'Jakubowski', '1971-02-13', 'Male', 'murazik.kathlyn@example.com', '+1.651.250.0684', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(250, 'Katrine', 'Dietrich', '1994-11-14', 'Male', 'providenci78@example.com', '+1-774-300-1222', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(251, 'Amara', 'O\'Connell', '1986-04-17', 'Female', 'alicia62@example.net', '650.785.8426', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(252, 'Trace', 'Rogahn', '1989-07-28', 'Female', 'emie66@example.org', '1-725-385-9842', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(253, 'Myah', 'Upton', '1977-06-23', 'Male', 'kuhlman.laron@example.org', '276-412-7527', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(254, 'Brandyn', 'Strosin', '2002-04-02', 'Male', 'ismael.herman@example.com', '1-561-291-1633', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(255, 'Nestor', 'Marvin', '1984-08-20', 'Other', 'plindgren@example.org', '660.708.9536', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(256, 'Emily', 'Hermann', '1985-03-10', 'Female', 'jamil14@example.net', '+1-757-919-7919', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(257, 'Austyn', 'Predovic', '1988-10-12', 'Male', 'jcrooks@example.net', '(904) 297-3272', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(258, 'Ella', 'Schaefer', '1991-04-06', 'Female', 'paxton.bosco@example.com', '769.861.4258', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(259, 'Garland', 'Reinger', '2004-11-22', 'Male', 'darwin05@example.org', '941-319-2161', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(260, 'Bruce', 'Kshlerin', '1973-05-14', 'Female', 'stuart.baumbach@example.com', '930.397.7802', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(261, 'Tanner', 'Kuvalis', '1973-05-04', 'Female', 'johnson.caterina@example.com', '(317) 309-0057', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(262, 'Kieran', 'Beatty', '2002-10-10', 'Other', 'kling.lew@example.com', '+1 (689) 650-9331', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(263, 'Jonatan', 'Will', '1974-02-16', 'Other', 'swisozk@example.org', '(534) 376-8321', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(264, 'Ryan', 'Gibson', '1991-01-15', 'Female', 'norberto.padberg@example.org', '(707) 288-5669', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(265, 'Jason', 'Fadel', '1981-11-10', 'Other', 'dan47@example.org', '1-430-431-3896', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(266, 'Zachary', 'McKenzie', '1984-01-27', 'Female', 'casper.arianna@example.com', '743-220-3703', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(267, 'Georgiana', 'Johns', '1971-11-02', 'Female', 'hildegard02@example.net', '979.620.1957', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(268, 'Valentina', 'Ward', '1996-03-29', 'Female', 'ezra.kulas@example.net', '+1 (740) 927-8302', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(269, 'Monserrat', 'Marvin', '1991-06-04', 'Male', 'hegmann.damion@example.net', '973-647-1708', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(270, 'Elyssa', 'Homenick', '1987-01-16', 'Other', 'sim.price@example.net', '954.608.9351', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(271, 'Mac', 'Howe', '1976-10-05', 'Male', 'zdouglas@example.com', '+1 (551) 210-7102', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(272, 'Nya', 'Legros', '1981-06-21', 'Other', 'harber.alexandria@example.net', '+1-720-651-3246', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(273, 'Minnie', 'Abbott', '1994-11-05', 'Other', 'hermiston.ernest@example.org', '337-957-8972', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(274, 'Cristobal', 'Mosciski', '1971-07-24', 'Female', 'schinner.winona@example.org', '1-254-494-3704', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(275, 'Stanley', 'Braun', '2004-05-08', 'Other', 'dpurdy@example.net', '+1-224-939-8500', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(276, 'Kale', 'Lemke', '1981-07-15', 'Other', 'unicolas@example.org', '+1 (231) 804-1570', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(277, 'Jordane', 'Wiza', '1996-11-02', 'Other', 'rey21@example.org', '+12168358366', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(278, 'Clemens', 'Swift', '2003-03-04', 'Male', 'hayden.braun@example.com', '+12696875146', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(279, 'Donnie', 'Wilderman', '1995-07-01', 'Male', 'rzboncak@example.net', '(347) 275-2183', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(280, 'Jaime', 'Buckridge', '1983-05-22', 'Female', 'toney.turcotte@example.org', '561-622-5998', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(281, 'Sabrina', 'Kohler', '1981-05-17', 'Male', 'murl34@example.org', '+1-475-892-2774', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(282, 'Grace', 'Bosco', '1978-04-22', 'Male', 'hiram14@example.net', '1-930-901-3446', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(283, 'Richmond', 'Klocko', '2000-01-12', 'Other', 'wilhelm68@example.net', '1-260-902-8289', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(284, 'Tanner', 'Macejkovic', '1984-04-08', 'Female', 'mcglynn.terrance@example.com', '+1-769-746-5086', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(285, 'Opal', 'Rowe', '1971-07-01', 'Female', 'ebba30@example.com', '708-492-2980', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(286, 'Betty', 'Hahn', '1999-08-04', 'Female', 'oma97@example.com', '1-228-257-3723', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(287, 'Helen', 'Koelpin', '2005-07-28', 'Male', 'dangelo17@example.com', '386.529.7552', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(288, 'Ursula', 'Rogahn', '1989-05-02', 'Female', 'della78@example.net', '+14095970293', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(289, 'Idell', 'Douglas', '1994-10-09', 'Male', 'stevie16@example.org', '+1-980-537-6864', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(290, 'Kianna', 'Crooks', '1995-03-21', 'Other', 'bogisich.brenna@example.org', '682-856-8518', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(291, 'Hailee', 'Lubowitz', '1983-07-27', 'Male', 'conroy.hilma@example.org', '+1-316-221-7893', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(292, 'Ezekiel', 'Rath', '2000-12-25', 'Female', 'rodriguez.mack@example.org', '(641) 694-8075', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(293, 'Vicente', 'Reichel', '1977-01-18', 'Other', 'toney20@example.org', '562.469.4710', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(294, 'Kenna', 'Franecki', '1991-03-20', 'Other', 'ward.clifton@example.net', '1-540-408-5631', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(295, 'Eino', 'Sawayn', '2002-03-19', 'Male', 'anastasia.trantow@example.org', '+13366247058', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(296, 'Elton', 'Harris', '1984-09-19', 'Other', 'kris.kilback@example.org', '272-460-1276', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(297, 'Scotty', 'Connelly', '1997-12-06', 'Female', 'minerva12@example.org', '+19205453234', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(298, 'Christop', 'Botsford', '1976-04-01', 'Other', 'leanne73@example.org', '+1 (305) 209-6609', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(299, 'Koby', 'Rowe', '2001-10-18', 'Male', 'olebsack@example.org', '1-386-441-9047', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(300, 'Aaron', 'Gleason', '1979-07-13', 'Male', 'donnie61@example.com', '1-215-716-5664', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(301, 'Olen', 'Bashirian', '1970-09-09', 'Female', 'gislason.thea@example.com', '+1 (820) 265-0019', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(302, 'Leonard', 'Dare', '2002-08-10', 'Male', 'gleichner.asha@example.com', '+1.346.629.5751', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(303, 'Mikayla', 'Glover', '1975-10-10', 'Female', 'mark16@example.net', '+1-540-588-7037', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(304, 'Jolie', 'VonRueden', '2000-05-04', 'Female', 'imorar@example.org', '1-828-869-0100', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(305, 'Kane', 'Bradtke', '1979-12-14', 'Female', 'raynor.isabel@example.org', '+1.912.985.0446', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(306, 'Nyasia', 'Auer', '1973-12-15', 'Female', 'marion.robel@example.org', '1-520-578-4796', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(307, 'Winfield', 'Gerlach', '1974-06-08', 'Male', 'vpfeffer@example.net', '347.918.7702', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(308, 'Kianna', 'Robel', '1984-05-06', 'Other', 'florine.gusikowski@example.net', '+1 (214) 547-0131', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(309, 'Daphney', 'Ratke', '1970-10-26', 'Female', 'gmohr@example.org', '+1-323-903-9247', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(310, 'Aryanna', 'Schaden', '1972-07-08', 'Male', 'ward.homenick@example.net', '240-267-4250', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(311, 'Kelsie', 'Crooks', '2003-12-22', 'Male', 'kuhlman.damaris@example.net', '1-660-407-7662', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(312, 'Joy', 'Konopelski', '1997-08-12', 'Female', 'brady.sauer@example.org', '+13527330688', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(313, 'Haley', 'Miller', '1980-05-02', 'Male', 'magnolia.beatty@example.com', '1-915-287-8375', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(314, 'Jasmin', 'Hudson', '1983-04-30', 'Female', 'stanton.richard@example.com', '+1-212-424-0276', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(315, 'Matteo', 'Rath', '1973-08-19', 'Female', 'cortney10@example.org', '205.651.0895', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(316, 'Gene', 'Denesik', '1983-05-20', 'Other', 'brigitte14@example.org', '412-882-2947', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(317, 'Faye', 'Lowe', '1994-03-27', 'Other', 'hannah65@example.org', '+1-815-891-8826', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(318, 'Xzavier', 'Reilly', '1975-06-03', 'Male', 'aletha.wiza@example.org', '+1-559-695-0172', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(319, 'Emmalee', 'Feil', '1986-10-16', 'Female', 'qwuckert@example.com', '847.201.2165', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(320, 'Monte', 'Legros', '1978-02-26', 'Male', 'electa.beahan@example.com', '1-339-800-7560', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(321, 'Amelie', 'Williamson', '1998-12-18', 'Other', 'mallory.osinski@example.net', '+1-631-251-6921', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(322, 'Brennon', 'Prohaska', '1971-04-14', 'Male', 'william.prosacco@example.net', '1-531-494-2076', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(323, 'Francisca', 'Aufderhar', '1987-12-23', 'Other', 'rath.cassie@example.org', '(571) 595-0183', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(324, 'Cathrine', 'Miller', '1992-12-31', 'Other', 'paucek.leatha@example.com', '(970) 528-2787', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(325, 'Holden', 'Parisian', '1988-12-25', 'Female', 'steuber.citlalli@example.org', '1-925-715-2347', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(326, 'Selina', 'Cummings', '1984-04-23', 'Other', 'stokes.daisy@example.com', '520-682-2749', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(327, 'Alena', 'Kunze', '1974-01-26', 'Female', 'gibson.fiona@example.net', '(828) 856-3334', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(328, 'Clyde', 'Nikolaus', '1979-07-29', 'Other', 'awehner@example.org', '718.245.8765', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(329, 'Karley', 'Gerhold', '2002-06-15', 'Other', 'zledner@example.com', '+19413960740', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(330, 'Elian', 'Pacocha', '1978-03-10', 'Male', 'althea80@example.com', '(617) 621-8030', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(331, 'Emerald', 'Erdman', '1995-08-28', 'Male', 'marilou.krajcik@example.net', '409-368-9646', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(332, 'Caleb', 'Stoltenberg', '1974-11-18', 'Male', 'dubuque.devonte@example.net', '802-935-0092', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(333, 'Jaron', 'Rowe', '1998-05-15', 'Female', 'ijohnston@example.org', '925.482.3405', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(334, 'Kianna', 'Buckridge', '1996-04-24', 'Other', 'rubye23@example.com', '401-216-3036', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(335, 'Marta', 'Greenholt', '1986-06-22', 'Other', 'brittany.heidenreich@example.com', '1-920-739-7892', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(336, 'Kaycee', 'Kuhlman', '1989-03-26', 'Other', 'adriel.herzog@example.org', '1-469-580-7845', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(337, 'Ewald', 'Hane', '1970-11-29', 'Female', 'hsawayn@example.net', '+1 (906) 815-1826', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(338, 'Joseph', 'Bogan', '1976-09-25', 'Other', 'balistreri.fabian@example.com', '(864) 580-4037', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(339, 'Felipe', 'Walsh', '1974-08-16', 'Male', 'sandrine45@example.com', '+17433661773', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(340, 'Kale', 'Grady', '1980-04-06', 'Other', 'uweissnat@example.net', '+13303175194', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(341, 'Branson', 'Ritchie', '1984-11-17', 'Female', 'miller.ronny@example.net', '551-299-6072', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(342, 'Nolan', 'Volkman', '1986-11-26', 'Female', 'larkin.edwin@example.org', '+1.224.907.6848', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(343, 'Jerry', 'Grady', '1987-04-21', 'Male', 'rhea.fahey@example.com', '347.889.7809', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(344, 'Joana', 'Ward', '2000-04-21', 'Female', 'shaina07@example.com', '+1 (307) 899-4927', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(345, 'Amely', 'Wunsch', '1989-09-30', 'Male', 'noe44@example.org', '934.383.8017', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(346, 'Theresia', 'Rosenbaum', '1982-12-25', 'Female', 'macie16@example.net', '1-270-472-9160', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(347, 'Laurie', 'Kessler', '1984-03-07', 'Male', 'zula.kuphal@example.net', '936-422-2129', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(348, 'Dariana', 'Ziemann', '1976-05-19', 'Female', 'eschamberger@example.com', '(361) 919-2824', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(349, 'Evans', 'Littel', '1973-04-04', 'Female', 'landen.conroy@example.net', '+1.260.303.7730', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(350, 'Hyman', 'Cormier', '1981-04-04', 'Male', 'maida.heidenreich@example.net', '+15318081922', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(351, 'Liliane', 'Cremin', '2002-08-23', 'Male', 'west.stevie@example.net', '+1 (614) 716-1408', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(352, 'Rylee', 'Haley', '1985-03-31', 'Male', 'heaven22@example.org', '1-914-241-8250', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(353, 'Rory', 'Schultz', '1984-11-27', 'Other', 'jess39@example.com', '(435) 750-1779', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(354, 'Kaela', 'Kiehn', '2002-06-04', 'Female', 'fchamplin@example.org', '+1.229.322.5731', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(355, 'Demetrius', 'Watsica', '1970-05-27', 'Other', 'aleffler@example.com', '+1-870-694-8831', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(356, 'Lempi', 'Reinger', '2005-01-09', 'Male', 'jefferey64@example.org', '831-218-0662', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(357, 'Amina', 'Cummerata', '1976-02-07', 'Other', 'hill.zetta@example.net', '980-409-5264', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(358, 'Raphael', 'Wiza', '1999-12-10', 'Other', 'judson.johnson@example.net', '440-991-4240', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(359, 'Hayley', 'Cruickshank', '1983-10-29', 'Male', 'vkris@example.org', '+17814208963', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(360, 'Ena', 'Schimmel', '1986-12-05', 'Male', 'marlon.deckow@example.org', '1-254-782-3245', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(361, 'Sylvester', 'Orn', '1991-07-11', 'Male', 'oaufderhar@example.org', '+12677004659', '2025-11-23 01:47:33', '2025-11-23 01:47:33');
INSERT INTO `pelanggan` (`pelanggan_id`, `first_name`, `last_name`, `birthday`, `gender`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(362, 'Maymie', 'Miller', '1977-12-01', 'Female', 'reilly.weston@example.net', '+18438473185', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(363, 'Mittie', 'Mante', '1990-09-07', 'Other', 'yasmeen.muller@example.org', '(754) 668-4596', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(364, 'Payton', 'Kautzer', '1986-02-05', 'Female', 'prosacco.lorenzo@example.net', '+1-630-902-4555', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(365, 'Stanley', 'Schmeler', '1971-07-06', 'Female', 'johns.norbert@example.org', '973.706.8873', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(366, 'Jameson', 'Ryan', '1992-07-04', 'Female', 'bwiegand@example.net', '(539) 941-8940', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(367, 'Conner', 'Dickens', '2000-11-09', 'Female', 'meggie76@example.com', '+19549644048', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(368, 'Chandler', 'Beer', '2004-07-18', 'Other', 'remington.eichmann@example.org', '1-980-787-8848', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(369, 'Charity', 'Friesen', '1986-01-04', 'Female', 'letha.cummerata@example.org', '681-722-6517', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(370, 'Marlen', 'Grady', '1992-05-30', 'Male', 'devonte75@example.org', '501-664-1590', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(371, 'Florida', 'Tillman', '1989-02-25', 'Male', 'gerald.jakubowski@example.net', '212-406-9471', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(372, 'Charles', 'Hirthe', '2002-10-27', 'Female', 'daisy.kulas@example.com', '623.455.3074', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(373, 'Eduardo', 'Bartoletti', '2005-12-17', 'Other', 'lakin.kellen@example.com', '1-463-323-3950', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(374, 'Isaiah', 'Kuvalis', '1988-01-27', 'Female', 'selmer43@example.org', '1-307-248-6747', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(375, 'George', 'Bins', '1989-06-08', 'Other', 'hrippin@example.org', '463-828-2238', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(376, 'Berry', 'Reilly', '1973-07-18', 'Male', 'jameson35@example.net', '+15037601300', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(377, 'Dakota', 'Fadel', '1997-09-29', 'Female', 'kmarvin@example.org', '956.332.0757', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(378, 'Cornell', 'Hodkiewicz', '1990-08-26', 'Other', 'mwisozk@example.org', '+12312085342', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(379, 'Dale', 'Quitzon', '1981-02-13', 'Male', 'jeremie.lemke@example.org', '1-279-882-2218', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(380, 'Allen', 'Ortiz', '2001-01-07', 'Other', 'gislason.lamont@example.net', '+1 (351) 375-3451', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(381, 'Meagan', 'Rowe', '1977-06-03', 'Male', 'lschaefer@example.com', '(337) 372-1373', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(382, 'Germaine', 'Crona', '1980-02-23', 'Other', 'hane.nelson@example.net', '(409) 380-0158', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(383, 'Leilani', 'Turcotte', '1980-03-27', 'Male', 'jvolkman@example.com', '(336) 572-1464', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(384, 'Deron', 'Feeney', '1974-08-20', 'Female', 'wtrantow@example.net', '1-608-856-5956', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(385, 'Sunny', 'Powlowski', '1979-04-15', 'Male', 'fisher.lindsay@example.org', '+1-402-490-2391', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(386, 'Bette', 'Kiehn', '2003-03-13', 'Male', 'stan77@example.net', '931.989.5930', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(387, 'Deja', 'Kilback', '1997-07-24', 'Male', 'josie.reinger@example.net', '1-906-484-8708', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(388, 'Destiney', 'Schuster', '1979-10-23', 'Male', 'ward.baylee@example.org', '+16018582782', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(389, 'Lessie', 'Parisian', '1998-08-09', 'Male', 'leannon.bria@example.com', '+1 (779) 538-8451', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(390, 'Raphaelle', 'Dibbert', '1996-02-29', 'Other', 'hartmann.piper@example.org', '+1 (928) 559-7927', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(391, 'Erin', 'Ernser', '1999-01-11', 'Other', 'ericka78@example.com', '1-283-484-7537', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(392, 'Cleveland', 'Daniel', '2005-08-28', 'Male', 'kamron.homenick@example.com', '+19402620039', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(393, 'Mitchell', 'Crist', '1998-04-17', 'Female', 'chris.cremin@example.com', '910.413.6534', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(394, 'Micaela', 'Considine', '2002-02-16', 'Female', 'marlen.thompson@example.org', '+19409740019', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(395, 'Lenore', 'Kovacek', '1988-04-30', 'Male', 'eladio.heathcote@example.com', '651-563-8371', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(396, 'Josue', 'Kub', '1988-06-21', 'Male', 'ihane@example.com', '458-217-7786', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(397, 'Lucious', 'Funk', '1994-01-23', 'Other', 'lazaro36@example.net', '838-832-0343', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(398, 'Zoie', 'Fahey', '1997-06-11', 'Male', 'anjali40@example.net', '602-736-5079', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(399, 'Norval', 'McKenzie', '1975-07-06', 'Male', 'kole89@example.net', '283.950.5695', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(400, 'Angelina', 'Pollich', '1999-03-06', 'Male', 'reginald.wisoky@example.com', '+1 (949) 771-1352', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(401, 'Anastacio', 'Pacocha', '2004-10-15', 'Male', 'adela.sawayn@example.com', '(217) 582-6920', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(402, 'Retta', 'Schiller', '2003-09-06', 'Male', 'tsatterfield@example.org', '937-480-2104', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(403, 'Norwood', 'Gerlach', '1991-05-05', 'Male', 'west.scot@example.com', '341.617.7288', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(404, 'Brayan', 'Ebert', '1973-07-18', 'Other', 'pacocha.gracie@example.net', '407-743-5962', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(405, 'Eula', 'Reilly', '1971-03-19', 'Other', 'muller.sophie@example.org', '802-875-4931', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(406, 'Filomena', 'Bahringer', '1979-12-09', 'Male', 'okon.chauncey@example.org', '(682) 742-4521', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(407, 'Rory', 'Christiansen', '1984-08-31', 'Male', 'leatha.mcdermott@example.net', '+1-928-633-5865', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(408, 'Eleonore', 'Fisher', '2001-07-14', 'Male', 'zander52@example.com', '928.998.2371', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(409, 'Angelica', 'Windler', '1976-12-04', 'Other', 'sharvey@example.org', '475.380.5267', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(410, 'Karianne', 'Homenick', '1981-07-16', 'Female', 'roger.schamberger@example.org', '678-751-1175', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(411, 'Norma', 'Prohaska', '1999-11-10', 'Male', 'fkeeling@example.com', '629-577-4152', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(412, 'Lucienne', 'King', '1991-06-22', 'Other', 'louie40@example.com', '516.331.1615', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(413, 'Alena', 'Bailey', '1989-01-09', 'Other', 'brenda00@example.org', '402.708.7447', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(414, 'Caroline', 'DuBuque', '1999-05-15', 'Female', 'xwillms@example.net', '+1 (573) 622-1109', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(415, 'Ashton', 'Botsford', '1973-04-16', 'Other', 'lwaelchi@example.org', '+1 (615) 430-9660', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(416, 'Janis', 'D\'Amore', '2001-09-18', 'Female', 'maggio.marco@example.net', '520-998-5483', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(417, 'Deondre', 'Graham', '1992-03-01', 'Female', 'runolfsson.caleigh@example.org', '351-863-1862', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(418, 'Zola', 'Hintz', '1997-05-15', 'Other', 'bosco.asia@example.org', '573-263-8735', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(419, 'Juanita', 'Hansen', '1981-07-24', 'Male', 'fbruen@example.org', '(320) 758-8242', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(420, 'Connor', 'Labadie', '1979-10-15', 'Male', 'percival13@example.org', '813-720-4437', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(421, 'Gerardo', 'Waters', '2000-09-17', 'Other', 'tlakin@example.org', '+1-231-950-0939', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(422, 'Kameron', 'Monahan', '1992-08-27', 'Male', 'florida92@example.net', '+1.626.372.7488', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(423, 'Susan', 'Fritsch', '1981-06-08', 'Female', 'yfunk@example.com', '+17636330471', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(424, 'Toy', 'Berge', '2002-06-23', 'Female', 'brent.donnelly@example.com', '1-754-817-8604', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(425, 'Jamarcus', 'Dibbert', '1997-12-25', 'Female', 'froberts@example.net', '941.960.7957', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(426, 'Claudie', 'Brekke', '1979-04-27', 'Other', 'ava21@example.net', '828.746.9484', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(427, 'Stefan', 'Sanford', '1973-12-05', 'Female', 'rwitting@example.com', '(947) 624-2941', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(428, 'Yoshiko', 'Bartoletti', '2005-05-05', 'Male', 'emanuel52@example.net', '(662) 769-8771', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(429, 'Cassidy', 'Grant', '1999-08-22', 'Male', 'ikrajcik@example.org', '1-502-454-7324', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(430, 'Sierra', 'Walter', '1984-12-01', 'Male', 'marcelina14@example.net', '726.342.7742', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(431, 'Dejon', 'Kemmer', '1973-06-25', 'Male', 'nick.hauck@example.net', '+1 (831) 265-6228', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(432, 'Wilbert', 'Kerluke', '1980-03-25', 'Female', 'francesca.streich@example.org', '+1-919-749-6335', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(433, 'Judah', 'Satterfield', '1984-02-01', 'Male', 'london.kovacek@example.org', '1-351-399-9474', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(434, 'Virginia', 'Jenkins', '1990-06-19', 'Female', 'chet36@example.net', '423.703.8572', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(435, 'Jacky', 'Borer', '1978-03-13', 'Other', 'wiegand.thea@example.org', '563.988.4266', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(436, 'Delphine', 'Robel', '1978-06-04', 'Female', 'ritchie.john@example.com', '(717) 358-9649', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(437, 'Kamryn', 'Cronin', '1972-08-14', 'Male', 'mconn@example.net', '828.606.2629', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(438, 'Alysa', 'Adams', '1986-03-01', 'Male', 'florine13@example.net', '+1.201.913.4974', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(439, 'Euna', 'Farrell', '2004-01-08', 'Male', 'caleb26@example.org', '1-712-574-2928', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(440, 'Simeon', 'Kautzer', '1971-06-20', 'Female', 'anderson30@example.com', '+1 (731) 754-9706', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(441, 'Ethan', 'Keebler', '1987-04-27', 'Other', 'kmckenzie@example.com', '+1.901.747.6989', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(442, 'Brayan', 'Tremblay', '2002-07-08', 'Male', 'arvid.heidenreich@example.net', '1-347-661-0636', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(443, 'Jerod', 'Prosacco', '2001-11-05', 'Other', 'zieme.misty@example.net', '848.517.4011', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(444, 'Xander', 'Braun', '1978-05-20', 'Female', 'xgottlieb@example.net', '+1-754-259-1928', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(445, 'Judah', 'Halvorson', '1981-12-10', 'Other', 'deborah.mann@example.net', '442-252-9209', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(446, 'Bernita', 'Murazik', '2003-12-26', 'Other', 'lveum@example.com', '1-865-838-5861', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(447, 'Enoch', 'Ankunding', '1988-10-16', 'Male', 'dmills@example.com', '+16298752846', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(448, 'Johnnie', 'Jast', '1981-03-09', 'Female', 'viola.mclaughlin@example.org', '+1.323.664.6955', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(449, 'Gaston', 'Legros', '1995-03-12', 'Male', 'tgerhold@example.com', '704-723-7828', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(450, 'Carmelo', 'Auer', '1994-09-17', 'Male', 'ikutch@example.com', '+1.570.353.1391', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(451, 'Kirsten', 'Barton', '1986-08-25', 'Other', 'soledad30@example.com', '+1 (765) 614-6307', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(452, 'Walker', 'Daugherty', '1982-04-06', 'Male', 'sauer.myrtice@example.net', '603.381.8110', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(453, 'Celestino', 'Heathcote', '1971-10-08', 'Female', 'nick.schaefer@example.com', '1-848-607-1831', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(454, 'Emil', 'Rosenbaum', '1991-02-20', 'Female', 'rodriguez.kadin@example.org', '+1-662-608-2193', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(455, 'Liana', 'Hansen', '1986-09-28', 'Other', 'cheidenreich@example.com', '+1.229.824.3027', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(456, 'Nathanael', 'McCullough', '1977-01-17', 'Other', 'stefan.hirthe@example.com', '+1-682-600-2119', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(457, 'Liam', 'Bins', '1976-03-18', 'Male', 'gmorar@example.com', '847-983-6823', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(458, 'Solon', 'Boehm', '1980-10-29', 'Other', 'zrosenbaum@example.org', '+1.631.341.4366', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(459, 'Berneice', 'Rowe', '2000-04-12', 'Other', 'winona.keebler@example.net', '469.264.4686', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(460, 'Rodrigo', 'Schmidt', '1990-08-20', 'Male', 'iwelch@example.net', '1-512-378-7170', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(461, 'Clarabelle', 'Marks', '1998-12-26', 'Other', 'gkub@example.org', '1-934-684-9428', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(462, 'Cullen', 'Hand', '1997-10-08', 'Male', 'kovacek.antwan@example.com', '+1 (423) 667-5871', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(463, 'Meghan', 'Luettgen', '1970-12-22', 'Male', 'tjaskolski@example.com', '+1.678.632.1794', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(464, 'Rebeca', 'Wyman', '1988-03-13', 'Other', 'rudolph.bradtke@example.net', '1-281-389-1033', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(465, 'Tommie', 'Adams', '1995-05-23', 'Other', 'wilderman.yvonne@example.net', '680-730-8069', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(466, 'Chasity', 'Lebsack', '1989-09-21', 'Other', 'anne84@example.net', '+1-680-364-0109', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(467, 'Casandra', 'Schneider', '2003-09-28', 'Female', 'dayne64@example.org', '1-484-278-3530', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(468, 'Diamond', 'Larson', '1991-04-22', 'Other', 'karina.gusikowski@example.com', '828-707-0116', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(469, 'Clemmie', 'Jaskolski', '1989-10-10', 'Female', 'delta20@example.org', '432-493-2363', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(470, 'Alvah', 'Runte', '2000-12-18', 'Male', 'gstoltenberg@example.org', '337-279-4843', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(471, 'Alicia', 'Auer', '1976-04-26', 'Female', 'spencer.jeffrey@example.com', '(754) 426-9662', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(472, 'Tate', 'Hammes', '1986-04-28', 'Male', 'qmonahan@example.net', '1-551-596-1796', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(473, 'Travis', 'Erdman', '1992-04-12', 'Other', 'hipolito26@example.com', '+1 (719) 457-3239', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(474, 'Kylie', 'Ankunding', '1970-03-19', 'Male', 'bruce.nolan@example.org', '(346) 953-3526', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(475, 'Alessia', 'Bode', '1976-10-26', 'Male', 'dewitt36@example.com', '+1-862-988-4568', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(476, 'Esta', 'Fahey', '1974-05-30', 'Other', 'eskiles@example.net', '1-586-253-2422', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(477, 'Jade', 'Morar', '1972-03-22', 'Male', 'alessandra.rau@example.net', '+1-760-377-3317', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(478, 'Nyah', 'Kautzer', '1978-03-06', 'Other', 'oschultz@example.net', '1-747-764-7991', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(479, 'Abagail', 'Lehner', '1975-11-12', 'Female', 'king.julius@example.net', '+15636402466', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(480, 'Marion', 'Quigley', '1995-10-20', 'Male', 'gregorio30@example.net', '+1-561-667-2460', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(481, 'Aleen', 'Quitzon', '1992-03-18', 'Other', 'devante.hane@example.org', '432-248-2432', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(482, 'Nayeli', 'Oberbrunner', '1988-10-21', 'Male', 'reymundo35@example.net', '347-798-4856', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(483, 'Stuart', 'Gerlach', '1978-06-04', 'Other', 'juanita18@example.com', '+1.878.997.6719', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(484, 'Danika', 'Wiegand', '1979-01-28', 'Female', 'ruth.tremblay@example.org', '310.675.0653', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(485, 'Otis', 'Hintz', '1976-01-03', 'Female', 'west.lenny@example.org', '+1-831-967-0496', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(486, 'Otis', 'Harris', '2005-05-27', 'Other', 'jakubowski.raymond@example.net', '+1 (364) 220-1596', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(487, 'Cary', 'Casper', '1991-06-06', 'Male', 'mosciski.jed@example.com', '1-442-826-6449', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(488, 'Luciano', 'Hackett', '1980-10-04', 'Other', 'rowe.kallie@example.org', '(323) 397-2614', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(489, 'Rubye', 'Strosin', '1997-07-03', 'Male', 'zaria28@example.com', '1-803-616-4911', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(490, 'Kasey', 'Wunsch', '1983-02-01', 'Female', 'bernard01@example.net', '+14585660269', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(491, 'Loma', 'Feil', '2004-01-15', 'Male', 'uorn@example.com', '+1.415.974.8039', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(492, 'Delta', 'Dietrich', '2004-09-26', 'Male', 'jasmin52@example.net', '+1-941-290-2096', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(493, 'Clementina', 'Sanford', '1989-08-31', 'Other', 'ggrimes@example.com', '(929) 560-2670', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(494, 'Everette', 'Dicki', '1995-04-28', 'Other', 'schaden.garrick@example.net', '630-791-1694', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(495, 'Wilfred', 'Purdy', '1992-07-16', 'Male', 'afadel@example.com', '(936) 761-8412', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(496, 'Nigel', 'Bogan', '2001-01-31', 'Other', 'rau.letha@example.org', '+1-954-480-8661', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(497, 'Felton', 'McLaughlin', '1994-02-03', 'Other', 'jacinthe79@example.com', '941-459-7058', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(498, 'Marc', 'Goldner', '1973-12-11', 'Male', 'katherine23@example.org', '+1-601-567-5690', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(499, 'Bell', 'Purdy', '1973-07-07', 'Male', 'conroy.jean@example.com', '640.846.0574', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(500, 'Toney', 'Denesik', '1992-02-23', 'Male', 'qschmidt@example.com', '(412) 977-7101', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(501, 'Nichole', 'Greenfelder', '1977-12-05', 'Other', 'apagac@example.com', '+1 (828) 513-4046', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(502, 'Karolann', 'McGlynn', '1993-04-24', 'Female', 'justyn12@example.net', '+1-517-895-1149', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(503, 'Gladys', 'Abernathy', '1979-07-04', 'Male', 'weissnat.daniela@example.net', '928-928-4866', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(504, 'Stewart', 'Rosenbaum', '2005-07-26', 'Other', 'frieda52@example.com', '+1-260-971-3930', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(505, 'Lionel', 'Hahn', '1987-06-08', 'Female', 'carter.giovanni@example.com', '(252) 496-7053', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(506, 'Courtney', 'Legros', '1979-05-28', 'Female', 'ffeest@example.org', '+15098477141', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(507, 'Layne', 'Schinner', '1997-12-28', 'Other', 'ijakubowski@example.org', '224-844-8436', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(508, 'Elsa', 'Leannon', '1993-02-14', 'Male', 'wpollich@example.org', '+1.870.302.7117', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(509, 'Adeline', 'Pagac', '1999-09-19', 'Female', 'schneider.myrna@example.com', '1-609-809-5376', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(510, 'Gideon', 'Hammes', '1987-08-20', 'Male', 'beulah.fadel@example.com', '+1.312.208.1180', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(511, 'Rozella', 'Towne', '2004-01-29', 'Male', 'edwardo84@example.com', '+1 (970) 414-2437', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(512, 'Eloise', 'Kertzmann', '2004-02-03', 'Other', 'jjerde@example.net', '+1.351.876.1753', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(513, 'Kennith', 'Terry', '1979-05-16', 'Female', 'grant.jimmie@example.com', '980.367.2070', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(514, 'Brando', 'Trantow', '1974-08-24', 'Female', 'schowalter.jaclyn@example.net', '+1 (681) 712-9700', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(515, 'Rebekah', 'Prosacco', '2003-12-25', 'Female', 'clarson@example.com', '405.902.0513', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(516, 'Deven', 'Hansen', '1995-12-11', 'Female', 'nicolas.tiana@example.com', '475.660.5682', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(517, 'Whitney', 'Collins', '1982-08-02', 'Female', 'ogutmann@example.net', '+1 (570) 229-8974', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(518, 'Joaquin', 'Bosco', '2001-04-17', 'Other', 'lbarton@example.com', '484.458.9994', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(519, 'Florencio', 'Gislason', '1994-07-18', 'Other', 'loraine.okuneva@example.org', '(626) 717-7839', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(520, 'Ottilie', 'Blanda', '1983-05-31', 'Other', 'jaiden06@example.com', '531.893.2270', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(521, 'Jacey', 'Kilback', '1978-08-18', 'Other', 'lwillms@example.com', '+1-812-232-9786', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(522, 'Adelle', 'Raynor', '2000-06-15', 'Male', 'ufranecki@example.com', '341-496-5722', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(523, 'Braden', 'Shields', '1995-03-04', 'Other', 'bernadette57@example.net', '817.497.7397', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(524, 'Levi', 'Stroman', '1977-05-29', 'Female', 'mills.johathan@example.org', '971-551-2154', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(525, 'Gunnar', 'Ankunding', '1992-09-08', 'Male', 'kiarra.wolf@example.org', '660.994.0829', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(526, 'Brennan', 'Wisoky', '1998-09-23', 'Female', 'zhomenick@example.org', '1-534-745-6447', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(527, 'Annetta', 'Predovic', '2005-02-25', 'Male', 'alberto50@example.com', '737-945-4818', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(528, 'Berneice', 'Wilderman', '2003-07-04', 'Other', 'daniella.hauck@example.com', '+1 (650) 420-9377', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(529, 'Madalyn', 'Fadel', '1985-02-18', 'Male', 'wgutkowski@example.org', '+1 (734) 678-1926', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(530, 'Douglas', 'Kuhn', '2003-12-04', 'Male', 'zmccullough@example.org', '(412) 481-8623', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(531, 'Brad', 'Will', '2004-02-06', 'Female', 'nona84@example.com', '726-802-0647', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(532, 'Alexzander', 'Sporer', '1998-12-28', 'Female', 'thompson.nathan@example.com', '985.249.7331', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(533, 'Julie', 'Sauer', '2002-12-17', 'Male', 'aufderhar.shayna@example.org', '1-947-401-9127', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(534, 'Brayan', 'Pfeffer', '2003-08-14', 'Other', 'belle15@example.com', '+1-740-674-5554', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(535, 'Brannon', 'Reichel', '1999-04-17', 'Female', 'lenny41@example.net', '252.683.1373', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(536, 'Danielle', 'Wunsch', '2004-07-01', 'Female', 'donnie.klocko@example.com', '385.495.9238', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(537, 'Coleman', 'Collier', '2004-04-23', 'Male', 'mbernier@example.net', '+1-270-996-5924', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(538, 'Arvid', 'Cassin', '1980-01-08', 'Male', 'egaylord@example.org', '+13258992940', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(539, 'Lloyd', 'Christiansen', '1986-01-31', 'Female', 'keanu.lubowitz@example.org', '(628) 380-0403', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(540, 'Richard', 'Labadie', '1997-03-05', 'Female', 'amie.huels@example.org', '828-456-0571', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(541, 'Susie', 'Spencer', '1985-05-09', 'Male', 'pbosco@example.com', '863.942.7850', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(542, 'Amber', 'Stamm', '1986-05-12', 'Other', 'nyasia80@example.com', '+1.936.441.4063', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(543, 'Reymundo', 'Walker', '1976-07-15', 'Male', 'rice.korey@example.org', '(845) 851-0353', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(544, 'Susie', 'Schultz', '1979-07-05', 'Male', 'nspencer@example.net', '351.512.6494', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(545, 'Amelie', 'Jakubowski', '1975-01-09', 'Female', 'cummings.rosa@example.org', '(717) 495-7536', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(546, 'Marjorie', 'Pfeffer', '1980-11-09', 'Other', 'charlie53@example.net', '503.575.4534', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(547, 'Lon', 'Metz', '2002-02-11', 'Male', 'deshaun.ondricka@example.org', '832.868.6809', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(548, 'Tamara', 'Bradtke', '1989-10-21', 'Other', 'qprohaska@example.com', '+1-520-748-9389', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(549, 'Jeffry', 'Hessel', '2001-12-28', 'Male', 'kwalker@example.net', '+1.714.635.3456', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(550, 'Eugenia', 'Wilderman', '1987-10-05', 'Female', 'delilah63@example.com', '+14353758656', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(551, 'Angelina', 'Waters', '1979-11-13', 'Other', 'qlarkin@example.net', '+1.606.390.3546', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(552, 'Shea', 'Wolff', '1995-08-24', 'Female', 'hoeger.max@example.org', '(628) 679-4568', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(553, 'Kiera', 'Stracke', '1993-10-29', 'Male', 'cloyd61@example.com', '(631) 316-8263', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(554, 'Keyshawn', 'Prosacco', '1981-03-30', 'Male', 'rodolfo.klocko@example.com', '(603) 512-2084', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(555, 'Jerrell', 'Abshire', '1996-03-28', 'Female', 'whirthe@example.com', '1-229-445-0539', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(556, 'Maci', 'Lind', '1997-05-21', 'Female', 'destiny.sporer@example.com', '978-359-1469', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(557, 'Caleb', 'Wiegand', '2001-07-08', 'Other', 'steuber.shanny@example.net', '(986) 528-0253', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(558, 'Rosanna', 'Emmerich', '1993-05-07', 'Other', 'asipes@example.net', '959-909-9244', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(559, 'Ansel', 'Wiegand', '1976-08-07', 'Other', 'kromaguera@example.net', '+1 (310) 461-5237', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(560, 'Kadin', 'Gorczany', '1999-10-06', 'Other', 'pbins@example.net', '331-741-1942', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(561, 'Enrico', 'Schumm', '1980-08-20', 'Other', 'tyrell56@example.org', '+16143341793', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(562, 'Howard', 'Klocko', '1971-08-10', 'Male', 'ottis.koch@example.org', '(283) 221-8760', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(563, 'Kurtis', 'Prosacco', '1978-02-18', 'Other', 'kuhic.lawson@example.net', '1-276-576-8500', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(564, 'Lisandro', 'Hermann', '2001-11-24', 'Female', 'tkris@example.com', '1-252-261-3178', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(565, 'Brendon', 'Schuppe', '2004-10-28', 'Other', 'lmurray@example.net', '1-901-226-7831', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(566, 'Jayson', 'Williamson', '1999-03-18', 'Other', 'baumbach.deshaun@example.org', '1-612-433-6494', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(567, 'Darrick', 'Ziemann', '2000-05-03', 'Other', 'coy00@example.org', '520.965.5205', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(568, 'Roselyn', 'Jakubowski', '1974-07-11', 'Female', 'gutmann.moriah@example.net', '786-997-9791', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(569, 'Kody', 'Hand', '1990-03-27', 'Male', 'orlo.lebsack@example.net', '1-360-624-5007', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(570, 'Emilie', 'Von', '1997-03-19', 'Other', 'samantha.moen@example.org', '(480) 402-4074', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(571, 'Loyal', 'Collins', '1979-05-27', 'Other', 'johnnie.beer@example.org', '605-983-5084', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(572, 'Kiley', 'Ferry', '1995-10-18', 'Female', 'murazik.phoebe@example.net', '+1-719-662-6157', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(573, 'Alf', 'Kiehn', '1980-12-12', 'Male', 'sandy14@example.net', '+1-603-635-8003', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(574, 'Jany', 'Kunze', '1972-05-01', 'Other', 'mozelle.gusikowski@example.net', '1-339-526-8831', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(575, 'Mason', 'Hickle', '1989-06-29', 'Other', 'dennis.crist@example.net', '+1 (623) 728-1186', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(576, 'Ruben', 'Senger', '1984-06-22', 'Male', 'angela.harvey@example.net', '+1-956-938-3559', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(577, 'Eleonore', 'Franecki', '1981-11-03', 'Male', 'wokeefe@example.org', '845-520-6164', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(578, 'Karson', 'Wolff', '1970-01-20', 'Female', 'fnienow@example.com', '+1-701-753-9355', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(579, 'Dorian', 'Mosciski', '1994-05-27', 'Male', 'greenholt.melvina@example.com', '571-292-8684', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(580, 'Vergie', 'Morar', '1976-03-11', 'Other', 'kianna15@example.com', '313.897.9866', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(581, 'Cassidy', 'Crist', '1974-09-09', 'Other', 'smorissette@example.com', '1-219-373-0843', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(582, 'Mitchell', 'Luettgen', '1982-03-06', 'Male', 'nicolas.alvina@example.org', '380-590-8428', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(583, 'Alexandre', 'Reinger', '1997-03-31', 'Other', 'cmertz@example.org', '309.862.2562', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(584, 'Amber', 'Treutel', '2004-12-13', 'Other', 'una83@example.net', '920-252-5417', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(585, 'Kendrick', 'Gusikowski', '1997-01-14', 'Female', 'chaya.hansen@example.org', '+1.978.958.7509', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(586, 'Eulah', 'Kassulke', '1976-05-21', 'Female', 'diego73@example.com', '310.423.6901', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(587, 'Beatrice', 'Stanton', '1989-02-11', 'Male', 'schimmel.rod@example.com', '754-833-4910', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(588, 'Humberto', 'McClure', '1981-12-30', 'Female', 'enola.gutmann@example.com', '+1-417-447-1764', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(589, 'Sally', 'Balistreri', '2005-02-14', 'Other', 'anita21@example.com', '1-463-273-5273', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(590, 'Dovie', 'Lesch', '1974-03-25', 'Other', 'jschneider@example.net', '+15517503208', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(591, 'Nolan', 'Larson', '1988-10-25', 'Male', 'jakob64@example.net', '+1-662-635-7808', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(592, 'Eulah', 'Mayer', '1982-01-27', 'Female', 'dawn30@example.com', '+1-775-217-6013', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(593, 'Evalyn', 'Kovacek', '1979-07-02', 'Male', 'gutmann.arvel@example.com', '1-240-258-6251', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(594, 'Maureen', 'Klocko', '1990-10-12', 'Other', 'rhirthe@example.org', '+1 (341) 483-5913', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(595, 'Oswaldo', 'Robel', '1974-09-14', 'Other', 'qdooley@example.com', '952-480-2007', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(596, 'Rene', 'Ruecker', '1971-07-24', 'Other', 'estel.gutkowski@example.org', '(458) 373-5707', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(597, 'Anjali', 'Lesch', '1982-12-13', 'Other', 'xlehner@example.net', '+13804382055', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(598, 'Yasmin', 'Bode', '1976-03-09', 'Female', 'ursula41@example.org', '+1 (234) 932-7940', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(599, 'Olaf', 'Hudson', '2001-08-05', 'Male', 'ilarson@example.com', '+16786771824', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(600, 'Mona', 'Paucek', '1988-08-16', 'Female', 'raegan64@example.com', '1-425-366-0579', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(601, 'Jamar', 'Barton', '1995-04-23', 'Other', 'monahan.ines@example.org', '+19343581937', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(602, 'Ruthie', 'Block', '1992-12-29', 'Other', 'mparisian@example.org', '1-209-958-4826', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(603, 'Alayna', 'Brown', '1985-05-03', 'Female', 'lrempel@example.net', '(641) 954-5625', '2025-11-23 01:47:33', '2025-11-23 01:47:33'),
(604, 'Mikel', 'Bergstrom', '1989-03-11', 'Female', 'joannie.hilpert@example.net', '(330) 761-5339', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(605, 'Francisco', 'Dickinson', '2001-10-16', 'Other', 'vince19@example.org', '747.371.9471', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(606, 'Emmanuelle', 'Nicolas', '1993-05-15', 'Other', 'corkery.maegan@example.org', '+1-951-459-0070', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(607, 'Zelda', 'Veum', '2004-03-13', 'Male', 'freddie.jaskolski@example.org', '+1-731-949-8490', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(608, 'Marilie', 'Moore', '1983-05-04', 'Other', 'senger.maurine@example.org', '+1 (551) 464-2828', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(609, 'August', 'Spinka', '1973-06-03', 'Female', 'maynard62@example.org', '1-870-772-5556', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(610, 'Jannie', 'Nienow', '1970-09-16', 'Male', 'arielle51@example.org', '856.837.9970', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(611, 'Milo', 'Bogan', '1998-12-20', 'Other', 'larkin.doug@example.org', '+14103313114', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(612, 'Eddie', 'Kuhn', '2003-08-30', 'Male', 'crona.americo@example.com', '+1.725.501.2086', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(613, 'Nat', 'Turcotte', '1986-10-29', 'Male', 'abotsford@example.org', '(323) 854-9118', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(614, 'Jocelyn', 'Metz', '1984-04-01', 'Female', 'jrunolfsson@example.org', '+19297400625', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(615, 'Rosemarie', 'Dibbert', '1980-06-30', 'Female', 'ronaldo.schowalter@example.net', '817.996.1782', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(616, 'Neha', 'Fahey', '1981-03-22', 'Female', 'casper.winona@example.com', '332.852.0499', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(617, 'Arnaldo', 'Rogahn', '2000-11-07', 'Male', 'cielo27@example.org', '937-219-8520', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(618, 'Veda', 'Friesen', '1978-06-20', 'Other', 'quigley.charlotte@example.org', '+1.302.365.4023', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(619, 'Forest', 'Farrell', '1990-12-24', 'Other', 'block.mason@example.com', '(217) 266-6104', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(620, 'Willy', 'Hodkiewicz', '1976-05-12', 'Male', 'tbeer@example.com', '(445) 742-9728', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(621, 'Ryley', 'Ritchie', '1996-06-23', 'Other', 'mann.belle@example.net', '1-417-456-6467', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(622, 'Felix', 'Reichel', '1973-02-22', 'Female', 'justyn92@example.com', '1-626-323-2010', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(623, 'Chester', 'Strosin', '1998-05-27', 'Male', 'brody.nader@example.org', '+1-248-305-7136', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(624, 'Dovie', 'Heathcote', '1995-11-03', 'Male', 'dorothea28@example.com', '651.830.4497', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(625, 'Harmon', 'Kris', '1977-06-20', 'Other', 'sydnie39@example.net', '458.413.9812', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(626, 'Syble', 'Larkin', '1981-05-30', 'Male', 'jones.dolores@example.net', '828.993.9218', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(627, 'Cooper', 'Paucek', '1991-04-06', 'Other', 'ecrona@example.com', '940-934-0890', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(628, 'Alessia', 'Runte', '1994-05-23', 'Male', 'richie19@example.net', '1-878-949-0456', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(629, 'Matilda', 'Green', '1980-05-17', 'Male', 'djakubowski@example.com', '+1 (469) 530-5346', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(630, 'Evans', 'Torp', '1981-12-19', 'Other', 'qrau@example.net', '1-651-231-6265', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(631, 'Citlalli', 'Beer', '1998-04-23', 'Other', 'brown.jermain@example.com', '307-683-5728', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(632, 'Daphne', 'Cassin', '1976-12-07', 'Female', 'kaylee.medhurst@example.net', '515.920.1781', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(633, 'Jaime', 'Cassin', '1976-12-25', 'Other', 'kassulke.brandt@example.org', '+18594457669', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(634, 'Mayra', 'Sporer', '1975-03-05', 'Male', 'gjacobi@example.com', '804.346.9533', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(635, 'Keshawn', 'Kuhic', '2005-03-06', 'Male', 'leta.tromp@example.net', '+1.239.489.1317', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(636, 'Donald', 'Breitenberg', '1981-05-30', 'Other', 'considine.douglas@example.org', '+1-331-527-0435', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(637, 'Drake', 'Huel', '1979-11-06', 'Male', 'treutel.ova@example.com', '1-208-829-3073', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(638, 'Verda', 'Frami', '1981-03-19', 'Other', 'swift.makenzie@example.org', '847-756-8606', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(639, 'Camryn', 'Kertzmann', '1996-07-23', 'Male', 'tina94@example.net', '+1.623.927.6214', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(640, 'Leatha', 'Monahan', '1991-04-06', 'Male', 'mrau@example.net', '+1.702.622.2982', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(641, 'Anais', 'Ryan', '1988-07-16', 'Male', 'maiya.purdy@example.org', '(850) 801-7072', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(642, 'Assunta', 'Moore', '1997-07-10', 'Other', 'alexzander.mcdermott@example.com', '1-501-264-1558', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(643, 'Lora', 'Turner', '1979-03-08', 'Female', 'larson.melba@example.com', '956.232.0280', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(644, 'Angie', 'Pouros', '2002-12-13', 'Female', 'gregorio.deckow@example.com', '+1 (240) 913-1436', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(645, 'Ima', 'Wehner', '2002-09-21', 'Male', 'patsy61@example.net', '+1.689.728.9897', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(646, 'Rubie', 'Beier', '1991-03-27', 'Other', 'susanna98@example.net', '+1.352.578.9454', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(647, 'Preston', 'Murphy', '1989-05-11', 'Male', 'ariel.beatty@example.net', '1-872-931-2302', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(648, 'Nola', 'Cormier', '1995-01-23', 'Other', 'einar29@example.com', '1-361-858-7803', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(649, 'Constantin', 'Funk', '1998-04-24', 'Other', 'mlynch@example.net', '571.690.5470', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(650, 'Cornelius', 'Mueller', '1983-06-02', 'Female', 'roob.casimir@example.com', '539.774.4809', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(651, 'Mona', 'Kling', '1998-01-22', 'Male', 'rbalistreri@example.com', '(951) 625-7728', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(652, 'Israel', 'Bergstrom', '1970-06-07', 'Female', 'bernie.reichel@example.org', '+1-231-923-8421', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(653, 'Dianna', 'Gorczany', '1999-03-14', 'Other', 'mcdermott.waylon@example.net', '810-642-7525', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(654, 'Kenna', 'Balistreri', '1995-09-24', 'Other', 'esta.murazik@example.org', '1-608-791-1429', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(655, 'Zander', 'Collins', '1977-05-30', 'Other', 'arne99@example.org', '+1-251-788-0032', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(656, 'Elsa', 'Stokes', '2003-12-26', 'Female', 'bayer.marvin@example.com', '+1-408-677-7920', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(657, 'Kendall', 'Wehner', '1984-12-29', 'Female', 'gloria.considine@example.net', '1-781-831-6993', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(658, 'Zion', 'Toy', '1972-12-25', 'Female', 'kraig.fisher@example.net', '(520) 890-7637', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(659, 'Allene', 'McLaughlin', '1987-02-04', 'Male', 'sheridan29@example.com', '754-300-0800', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(660, 'Dena', 'Medhurst', '1974-01-07', 'Other', 'wyman.labadie@example.net', '(718) 929-7323', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(661, 'Shanny', 'Windler', '1995-06-05', 'Female', 'spinka.kariane@example.org', '910-232-0430', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(662, 'Maye', 'Botsford', '1977-03-25', 'Male', 'ikihn@example.com', '323.975.0948', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(663, 'Anjali', 'Wilkinson', '1996-04-14', 'Male', 'ahmad.schultz@example.org', '+1 (346) 464-7216', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(664, 'Greg', 'Luettgen', '1980-12-16', 'Male', 'nathanial09@example.org', '240-871-3395', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(665, 'Rey', 'Emmerich', '1979-12-03', 'Female', 'bwiza@example.org', '(435) 548-8060', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(666, 'Quincy', 'Johns', '1999-06-13', 'Male', 'dovie.zboncak@example.org', '+15053459109', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(667, 'Sierra', 'Strosin', '1987-01-15', 'Female', 'khalid.balistreri@example.org', '1-763-561-0470', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(668, 'Deja', 'Cartwright', '2002-02-28', 'Female', 'francesco84@example.net', '706.249.0627', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(669, 'Braxton', 'Feil', '2005-04-18', 'Female', 'garnett.lind@example.com', '+1-984-951-0698', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(670, 'Reanna', 'Sporer', '1979-07-29', 'Male', 'bergnaum.sheldon@example.net', '+1-520-713-2465', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(671, 'Ozella', 'Batz', '1980-08-28', 'Other', 'freida86@example.net', '1-817-519-9772', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(672, 'Concepcion', 'McLaughlin', '1994-01-11', 'Other', 'mayer.ladarius@example.net', '1-760-777-5625', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(673, 'Katlynn', 'Effertz', '1985-01-29', 'Other', 'shaina81@example.com', '+19256301754', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(674, 'Antonietta', 'Feest', '1989-09-27', 'Other', 'daugherty.joanny@example.com', '(531) 726-4604', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(675, 'Cristal', 'Hilpert', '1994-02-25', 'Other', 'metz.lizeth@example.org', '878-985-1558', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(676, 'Oral', 'Greenfelder', '1970-07-21', 'Other', 'crist.rosie@example.net', '(726) 625-3170', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(677, 'Carlo', 'Nikolaus', '1993-11-05', 'Female', 'eparisian@example.com', '678.240.5328', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(678, 'Jaiden', 'Cronin', '1995-10-19', 'Female', 'margarete.barton@example.com', '1-765-654-2945', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(679, 'Serena', 'Blanda', '1977-11-06', 'Other', 'teagan27@example.net', '1-820-218-6161', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(680, 'Claire', 'Hodkiewicz', '2001-06-23', 'Other', 'baby63@example.org', '971-499-5623', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(681, 'Jevon', 'Lueilwitz', '1992-07-10', 'Female', 'dtillman@example.org', '(708) 314-5851', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(682, 'Candido', 'Blick', '1996-12-29', 'Female', 'vbartoletti@example.com', '(864) 404-6544', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(683, 'Alessandro', 'Becker', '1996-01-02', 'Male', 'vdonnelly@example.net', '1-786-530-4645', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(684, 'Elyssa', 'Becker', '2003-06-19', 'Other', 'hackett.lauriane@example.net', '1-909-392-1832', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(685, 'Esmeralda', 'Parisian', '1980-12-11', 'Male', 'heller.flavio@example.net', '+1-276-607-9548', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(686, 'Jamey', 'Stanton', '1986-07-29', 'Female', 'wyman.magnolia@example.net', '+17813280932', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(687, 'Angeline', 'Oberbrunner', '1975-03-22', 'Male', 'yasmin45@example.org', '217.952.1891', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(688, 'Domenico', 'Ryan', '1979-06-25', 'Male', 'daniel.zelda@example.org', '+1 (360) 858-6260', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(689, 'Kayli', 'Senger', '1974-06-19', 'Male', 'nola.streich@example.com', '(763) 241-1242', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(690, 'Ferne', 'Paucek', '1993-08-14', 'Male', 'dorris13@example.org', '(726) 435-4165', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(691, 'Jedediah', 'Predovic', '1983-07-22', 'Other', 'koss.jules@example.org', '+13257349843', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(692, 'Dashawn', 'Schoen', '1983-10-02', 'Female', 'echristiansen@example.com', '(360) 666-9823', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(693, 'Lazaro', 'Blick', '1973-05-03', 'Male', 'caitlyn.kohler@example.net', '+1 (754) 984-4484', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(694, 'Jayce', 'Hammes', '1972-06-14', 'Other', 'katherine.schinner@example.com', '763-855-9510', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(695, 'Celestine', 'Gutkowski', '1997-03-03', 'Other', 'cheidenreich@example.net', '(857) 363-3808', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(696, 'Jeanie', 'Kautzer', '1995-09-02', 'Male', 'anya.blanda@example.com', '1-518-729-6124', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(697, 'Dandre', 'Schinner', '2005-04-22', 'Male', 'kellen.murphy@example.com', '+1-847-970-1787', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(698, 'Johanna', 'Olson', '1991-09-18', 'Female', 'harris.faye@example.org', '559-304-4428', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(699, 'Alec', 'Cruickshank', '1987-08-16', 'Female', 'yschaefer@example.net', '(316) 915-7179', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(700, 'Richie', 'Kunde', '2002-12-03', 'Female', 'kweber@example.com', '312-447-0594', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(701, 'Jewell', 'Ankunding', '1999-08-06', 'Male', 'walker.lisandro@example.net', '+1-657-387-7239', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(702, 'Melyssa', 'Johnson', '1991-09-11', 'Other', 'issac.boehm@example.net', '804.417.9075', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(703, 'Felix', 'Towne', '1989-08-25', 'Other', 'rhiannon63@example.net', '505.433.1790', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(704, 'Forest', 'Watsica', '1979-01-09', 'Male', 'amina.lubowitz@example.com', '+1-341-487-7619', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(705, 'Corrine', 'Maggio', '1985-05-07', 'Other', 'remington47@example.net', '520-244-9639', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(706, 'Uriah', 'Cassin', '1977-07-21', 'Other', 'cassin.margarett@example.com', '1-682-450-3027', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(707, 'Toby', 'Osinski', '1976-08-02', 'Other', 'ernie74@example.net', '1-678-465-1035', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(708, 'Stephania', 'Ondricka', '1981-11-17', 'Male', 'lenore.muller@example.org', '1-870-835-4764', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(709, 'Ambrose', 'Graham', '1995-08-13', 'Male', 'jacobs.hayden@example.net', '+19893602646', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(710, 'Unique', 'Stamm', '1984-06-07', 'Female', 'milford17@example.net', '+1 (785) 634-3674', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(711, 'Crystel', 'Murazik', '2000-07-20', 'Female', 'rollin94@example.net', '+1-828-300-0982', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(712, 'Nadia', 'Glover', '1974-09-01', 'Female', 'brown.kayla@example.com', '320-771-2337', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(713, 'Fletcher', 'Mertz', '1994-03-10', 'Female', 'malachi.predovic@example.org', '423-727-4653', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(714, 'Celestino', 'Kassulke', '1981-02-27', 'Male', 'adelle.russel@example.com', '520.346.4017', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(715, 'Melvina', 'West', '1998-07-29', 'Female', 'lueilwitz.melisa@example.net', '+1 (628) 352-9339', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(716, 'Hilda', 'Walsh', '1992-02-03', 'Male', 'nolan.javier@example.net', '760-939-2925', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(717, 'Reece', 'Witting', '1984-07-18', 'Male', 'rebeka92@example.net', '820-579-4466', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(718, 'Willie', 'Jaskolski', '1992-11-12', 'Male', 'bettie63@example.net', '808-648-7672', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(719, 'Catalina', 'Dach', '1976-04-10', 'Female', 'caitlyn.maggio@example.net', '956.326.8342', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(720, 'Roma', 'Mraz', '1991-01-24', 'Male', 'runolfsson.nedra@example.com', '(769) 778-4464', '2025-11-23 01:47:34', '2025-11-23 01:47:34');
INSERT INTO `pelanggan` (`pelanggan_id`, `first_name`, `last_name`, `birthday`, `gender`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(721, 'Helen', 'Mante', '1989-12-18', 'Female', 'maryam91@example.com', '(719) 578-0845', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(722, 'Yvette', 'Marks', '1986-11-18', 'Male', 'lbecker@example.com', '+1 (989) 300-6595', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(723, 'Martin', 'Barton', '2002-09-25', 'Other', 'gulgowski.gay@example.net', '989.630.7392', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(724, 'Lelah', 'Grimes', '1995-03-26', 'Female', 'paige41@example.net', '+1-279-922-2153', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(725, 'Adolphus', 'O\'Conner', '1984-02-08', 'Other', 'lowe.delmer@example.org', '(248) 245-9538', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(726, 'Deven', 'Hansen', '1974-05-12', 'Female', 'jeramie70@example.com', '+1-820-233-4050', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(727, 'Marilyne', 'Hermann', '1973-08-22', 'Male', 'ogoyette@example.com', '1-940-439-5163', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(728, 'Granville', 'Harber', '1982-07-22', 'Female', 'valerie.wilkinson@example.net', '+1-862-946-9062', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(729, 'Jasper', 'Streich', '1988-09-01', 'Female', 'zelma.crona@example.net', '+1-650-825-3487', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(730, 'Sandrine', 'Beatty', '1972-09-06', 'Other', 'silas.kirlin@example.net', '(678) 900-3605', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(731, 'Cyril', 'Schroeder', '1989-05-07', 'Other', 'imurphy@example.net', '1-276-206-1985', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(732, 'Maida', 'Hackett', '1975-05-09', 'Male', 'npowlowski@example.org', '(680) 966-1473', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(733, 'Theresa', 'Oberbrunner', '1990-06-15', 'Other', 'atorphy@example.org', '+17865074948', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(734, 'Aurelie', 'Connelly', '1980-08-19', 'Female', 'kuphal.alysha@example.net', '475.645.9072', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(735, 'Arden', 'Kreiger', '1971-09-22', 'Male', 'shaina31@example.net', '1-949-975-9489', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(736, 'Romaine', 'Kassulke', '1970-04-21', 'Other', 'pbogisich@example.org', '(231) 471-8336', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(737, 'Jaylon', 'Watsica', '1986-04-20', 'Male', 'monahan.otilia@example.org', '+1-805-278-1175', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(738, 'Bernadine', 'Olson', '2003-09-21', 'Male', 'hermiston.lincoln@example.org', '940.787.0370', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(739, 'Kyra', 'Toy', '1994-02-26', 'Female', 'ara.buckridge@example.com', '+1-617-248-0280', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(740, 'Maribel', 'Gislason', '1990-08-25', 'Female', 'lindgren.edythe@example.com', '+1-212-336-2811', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(741, 'Wava', 'Raynor', '1983-04-28', 'Male', 'fdicki@example.com', '1-830-585-2653', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(742, 'Aliya', 'Hahn', '1973-11-10', 'Male', 'yweissnat@example.com', '1-651-815-7596', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(743, 'Priscilla', 'Herzog', '1986-02-04', 'Male', 'rempel.kali@example.net', '1-336-765-1076', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(744, 'Brandon', 'Rogahn', '1974-12-02', 'Male', 'aimee.crooks@example.net', '573-914-8083', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(745, 'Sigmund', 'Hackett', '1988-01-28', 'Male', 'olga.emard@example.net', '815.295.6714', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(746, 'Maria', 'Nicolas', '1991-10-20', 'Other', 'wintheiser.isai@example.net', '1-520-894-8651', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(747, 'Jeremy', 'Huel', '1998-03-18', 'Other', 'ashlynn75@example.org', '309.443.9543', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(748, 'Christiana', 'Morissette', '1986-02-08', 'Other', 'margaret53@example.net', '+19849991295', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(749, 'Ivory', 'Lind', '1970-12-28', 'Male', 'bauer@example.org', '+18288216402', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(750, 'Bulah', 'Gottlieb', '1998-04-05', 'Female', 'rkrajcik@example.org', '(678) 983-7844', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(751, 'Nikolas', 'Weissnat', '1980-09-15', 'Other', 'marge36@example.com', '(480) 863-4400', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(752, 'Emmie', 'Hegmann', '1973-05-11', 'Other', 'princess84@example.com', '(915) 870-4383', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(753, 'Samanta', 'Moen', '1972-05-18', 'Female', 'grayce46@example.org', '341.545.9485', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(754, 'Riley', 'Sporer', '1986-02-06', 'Female', 'mbecker@example.net', '678.717.9620', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(755, 'Elliott', 'Barton', '2002-12-26', 'Male', 'theresia09@example.com', '+1-534-239-8153', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(756, 'Aurelia', 'Hill', '1977-12-14', 'Female', 'vladimir.marvin@example.net', '754-991-8028', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(757, 'Ulises', 'Keebler', '2001-12-27', 'Male', 'uking@example.org', '541-299-5877', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(758, 'Matilde', 'Mitchell', '2003-07-01', 'Other', 'tressa.dietrich@example.org', '1-305-778-3447', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(759, 'Frank', 'Mayert', '1975-04-21', 'Other', 'gmcclure@example.com', '401.851.8397', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(760, 'Athena', 'Tremblay', '1984-09-08', 'Male', 'dorthy54@example.net', '+1-308-354-5531', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(761, 'Jeff', 'Nitzsche', '1979-03-04', 'Other', 'queen.runolfsson@example.org', '+1-754-808-1486', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(762, 'Cassidy', 'Smitham', '1973-07-14', 'Male', 'ohara.erica@example.net', '(214) 282-0528', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(763, 'Darrel', 'Christiansen', '1990-03-26', 'Female', 'payton51@example.net', '361.252.9154', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(764, 'Leopold', 'Bode', '1976-07-24', 'Female', 'dayton.hettinger@example.org', '(628) 860-4639', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(765, 'Gabriel', 'Legros', '1976-03-30', 'Male', 'zharris@example.org', '+1-636-439-1903', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(766, 'Jalon', 'Rau', '1973-12-28', 'Other', 'langosh.callie@example.net', '559.472.1914', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(767, 'Missouri', 'Gislason', '1998-11-01', 'Female', 'qschmeler@example.org', '(321) 941-7639', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(768, 'Yasmine', 'Ratke', '1989-01-26', 'Other', 'lila26@example.com', '1-234-664-2834', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(769, 'Jessika', 'Jacobson', '1972-01-27', 'Male', 'columbus.heller@example.org', '+1 (430) 578-4653', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(770, 'Benjamin', 'Mueller', '1993-02-12', 'Female', 'jarred.mccullough@example.net', '463-948-9026', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(771, 'Mattie', 'Predovic', '1982-07-26', 'Male', 'simonis.taurean@example.net', '364-897-9085', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(772, 'Zoe', 'Torp', '1993-07-22', 'Other', 'harris.otis@example.org', '+15868130910', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(773, 'Arlie', 'Hill', '1977-06-18', 'Female', 'vicky.williamson@example.org', '650-444-7370', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(774, 'Caesar', 'Kautzer', '1979-09-30', 'Other', 'bayer.margret@example.net', '(762) 957-5441', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(775, 'Camden', 'Bahringer', '1978-06-15', 'Male', 'efahey@example.com', '1-801-551-4802', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(776, 'Solon', 'Wolff', '2003-04-18', 'Other', 'erdman.michaela@example.com', '+1-870-246-9373', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(777, 'Aurelio', 'Bruen', '2005-06-17', 'Male', 'destany.kuvalis@example.net', '+1 (769) 990-1985', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(778, 'Micah', 'Koepp', '1996-04-26', 'Female', 'vbeahan@example.org', '845-756-6231', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(779, 'Lilla', 'Boyle', '1979-06-01', 'Other', 'qbotsford@example.net', '(425) 309-2946', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(780, 'Zaria', 'Labadie', '2003-08-16', 'Female', 'stanton.vickie@example.net', '+16166713255', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(781, 'Arjun', 'Reichert', '1978-09-01', 'Female', 'amcdermott@example.org', '(551) 575-4691', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(782, 'Freda', 'Schulist', '1984-08-15', 'Female', 'albina.hamill@example.net', '386.541.7704', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(783, 'Valentine', 'Medhurst', '1984-03-07', 'Male', 'glover.caitlyn@example.net', '+16284732393', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(784, 'Jordi', 'Gislason', '1984-06-03', 'Female', 'herman.elaina@example.net', '+1.202.825.1073', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(785, 'Maurice', 'McKenzie', '1987-02-03', 'Other', 'timmy16@example.net', '+1 (458) 697-4126', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(786, 'Fritz', 'Ebert', '1998-10-07', 'Male', 'trevor22@example.net', '602-515-0906', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(787, 'Carolina', 'Bradtke', '1981-02-27', 'Other', 'goyette.rosalind@example.org', '231-605-1150', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(788, 'Shea', 'Kreiger', '1981-05-06', 'Male', 'ullrich.dee@example.net', '+1.925.580.9770', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(789, 'Dario', 'Dickens', '1984-04-08', 'Female', 'kerluke.kobe@example.net', '+1.831.541.6635', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(790, 'Newell', 'Blick', '1989-04-21', 'Male', 'flatley.shania@example.net', '1-364-493-0748', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(791, 'Shirley', 'Hirthe', '1991-11-19', 'Male', 'hkuhic@example.com', '+1 (248) 458-9446', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(792, 'Arlo', 'Langworth', '1998-09-24', 'Female', 'lou92@example.org', '+16829218869', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(793, 'Tom', 'Runte', '1988-12-21', 'Male', 'mckenzie.lelia@example.com', '+1-385-420-9509', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(794, 'Amara', 'Hahn', '1983-10-17', 'Male', 'elisha15@example.org', '1-623-699-7613', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(795, 'Josiah', 'Sanford', '1991-10-30', 'Female', 'king.giovanni@example.net', '+15598662062', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(796, 'Stone', 'Bednar', '1988-03-14', 'Other', 'watsica.jovan@example.net', '1-972-747-2819', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(797, 'Delmer', 'King', '1995-12-15', 'Female', 'mason55@example.org', '+12832141290', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(798, 'Willis', 'Feest', '1973-06-10', 'Female', 'ykuhn@example.org', '(463) 372-4483', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(799, 'Marge', 'Lesch', '1997-02-18', 'Male', 'pamela80@example.org', '+1.540.805.7493', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(800, 'Elsie', 'Schimmel', '1972-12-25', 'Female', 'trantow.samara@example.org', '+18302990664', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(801, 'Murl', 'Gleichner', '1978-04-26', 'Male', 'bo84@example.com', '+1.380.214.0540', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(802, 'Makenna', 'Stoltenberg', '1979-04-13', 'Other', 'tara00@example.net', '+1 (678) 447-5599', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(803, 'Rylan', 'Wolff', '1975-08-20', 'Male', 'oschumm@example.org', '+1-726-273-2599', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(804, 'Tamara', 'Rempel', '2002-05-20', 'Female', 'michele10@example.org', '+1-283-471-7245', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(805, 'Johnny', 'Barton', '2003-06-29', 'Male', 'mcclure.uriel@example.org', '+19252948265', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(806, 'Dolores', 'Bins', '1977-04-08', 'Other', 'stokes.daryl@example.org', '+1.954.816.0157', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(807, 'Deshawn', 'Ruecker', '1996-01-19', 'Female', 'wyman.schulist@example.org', '+1-805-909-1304', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(808, 'Carmine', 'Koelpin', '1979-03-12', 'Male', 'alberta98@example.org', '209.563.2133', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(809, 'Gerald', 'Roberts', '1982-10-19', 'Female', 'ed01@example.com', '442.891.1168', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(810, 'Frederic', 'Trantow', '1988-02-15', 'Other', 'kirlin.jordi@example.com', '608.979.6702', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(811, 'Imelda', 'Cremin', '1980-05-10', 'Female', 'faye.fay@example.org', '562.267.5446', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(812, 'Ethan', 'Grimes', '1973-08-08', 'Female', 'whill@example.com', '551-464-3821', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(813, 'Albina', 'Hammes', '1981-04-11', 'Male', 'cordelia.ebert@example.com', '+1 (351) 866-3633', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(814, 'Marilyne', 'Thompson', '2002-03-25', 'Other', 'stoltenberg.liliane@example.com', '+12676857371', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(815, 'Wanda', 'Raynor', '1999-03-29', 'Other', 'collier.kevon@example.net', '(925) 940-2832', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(816, 'Barton', 'Hill', '2005-06-26', 'Other', 'casper.anita@example.net', '681-755-6136', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(817, 'Jedidiah', 'Wiegand', '1971-08-28', 'Male', 'lance.little@example.net', '917.339.1630', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(818, 'Allene', 'Tillman', '1982-05-01', 'Female', 'baumbach.vita@example.org', '(929) 386-3828', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(819, 'Glenda', 'Stroman', '1991-03-28', 'Other', 'elyse.bogisich@example.org', '915-452-5468', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(820, 'Rudolph', 'Stroman', '1975-05-11', 'Other', 'ewilderman@example.org', '310.791.5447', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(821, 'Fay', 'Satterfield', '1980-01-28', 'Male', 'collins.sierra@example.com', '305-329-5037', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(822, 'Hiram', 'Cronin', '1982-05-07', 'Male', 'ulubowitz@example.org', '657-480-0399', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(823, 'Charlie', 'Hartmann', '2004-08-19', 'Female', 'chelsey40@example.net', '323-756-1125', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(824, 'Shannon', 'Borer', '2002-09-27', 'Male', 'beatty.bessie@example.com', '+1 (769) 903-4682', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(825, 'Johnson', 'Bartoletti', '1993-07-18', 'Male', 'bernice.herzog@example.net', '1-252-582-7907', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(826, 'Donny', 'Schimmel', '1999-05-04', 'Other', 'carmelo.weber@example.net', '+1 (423) 961-7415', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(827, 'Kelsie', 'Shanahan', '1989-02-09', 'Other', 'mccullough.alexa@example.org', '+1-872-368-8687', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(828, 'Cecile', 'Jaskolski', '1972-02-23', 'Male', 'bridget68@example.org', '929.589.6589', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(829, 'Rachel', 'Ratke', '1997-06-17', 'Male', 'peter57@example.com', '+1-630-484-6212', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(830, 'Garland', 'DuBuque', '1984-02-10', 'Female', 'trevion.kemmer@example.net', '689-574-2561', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(831, 'Kamren', 'Casper', '1976-01-11', 'Female', 'vivienne.spinka@example.com', '+1.978.373.6678', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(832, 'Pattie', 'Goodwin', '1984-01-21', 'Female', 'harold.abshire@example.com', '+1 (973) 756-6600', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(833, 'Rhiannon', 'Dare', '1984-07-24', 'Female', 'xschroeder@example.net', '520-548-0977', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(834, 'Celia', 'Davis', '1980-03-04', 'Male', 'jayme.prohaska@example.net', '352-678-3404', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(835, 'Angus', 'Hirthe', '1998-07-19', 'Female', 'mabelle.ullrich@example.org', '+1 (218) 994-0357', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(836, 'Garrison', 'Wehner', '1984-02-27', 'Male', 'schumm.eva@example.org', '731-867-2102', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(837, 'Blaze', 'Kunde', '1976-01-09', 'Other', 'hthompson@example.com', '+1.805.878.8874', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(838, 'Gudrun', 'Wolff', '1977-06-30', 'Male', 'jacobs.herminia@example.com', '+1 (804) 689-8938', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(839, 'Ernestine', 'Rau', '1982-10-07', 'Male', 'isidro31@example.net', '+1.331.914.3328', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(840, 'Harmon', 'Zulauf', '1997-10-06', 'Other', 'mnicolas@example.net', '216.621.8597', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(841, 'Anthony', 'Will', '2000-03-31', 'Female', 'trystan.schulist@example.net', '+1.339.849.3128', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(842, 'Mikayla', 'Champlin', '1980-11-25', 'Female', 'mhills@example.net', '914-331-6558', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(843, 'Talon', 'Satterfield', '2003-07-24', 'Other', 'zlueilwitz@example.com', '914.874.3652', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(844, 'Corene', 'Harber', '1985-11-22', 'Female', 'lind.ramon@example.org', '425.275.5853', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(845, 'Nigel', 'Hagenes', '1983-02-10', 'Other', 'walker.briana@example.com', '678.998.1050', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(846, 'Viola', 'Block', '1979-12-06', 'Other', 'domingo63@example.org', '(605) 683-9626', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(847, 'Santos', 'Prohaska', '1985-02-26', 'Female', 'hudson.maurine@example.org', '938-654-8842', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(848, 'Broderick', 'Stroman', '1973-01-30', 'Female', 'raynor.jaqueline@example.com', '+1-617-588-8712', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(849, 'Ludwig', 'Berge', '1970-04-26', 'Female', 'switting@example.com', '+1 (231) 431-1670', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(850, 'Trisha', 'Rippin', '1983-01-29', 'Male', 'korbin.altenwerth@example.com', '+1-520-785-1949', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(851, 'Estella', 'Schuppe', '1973-07-03', 'Other', 'leila47@example.com', '743.354.9738', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(852, 'Joanie', 'Runolfsson', '1991-07-02', 'Male', 'allan98@example.com', '+1.586.235.7911', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(853, 'Derick', 'Kutch', '1985-05-14', 'Male', 'rebecca42@example.com', '1-678-534-5971', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(854, 'Sam', 'Heidenreich', '1998-04-08', 'Female', 'millie91@example.com', '(571) 701-7945', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(855, 'Dee', 'Schimmel', '1970-12-26', 'Other', 'germaine.grady@example.com', '380.358.3773', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(856, 'Kyler', 'Schimmel', '1980-11-10', 'Female', 'schuster.tad@example.org', '+1-475-865-1829', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(857, 'Buddy', 'Bruen', '1999-10-16', 'Other', 'eveline.dooley@example.com', '+1.540.894.4877', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(858, 'Richmond', 'Beier', '2003-10-07', 'Female', 'gerhard.heller@example.com', '218.519.2275', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(859, 'Lisa', 'Shields', '1978-11-23', 'Male', 'tatum.oberbrunner@example.com', '(662) 844-0358', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(860, 'Charlene', 'White', '1997-12-02', 'Female', 'dooley.adan@example.net', '+1-850-252-6356', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(861, 'Cindy', 'Bergstrom', '1991-05-17', 'Male', 'berge.cayla@example.com', '+1.850.950.0010', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(862, 'Alayna', 'Halvorson', '1992-11-06', 'Female', 'floy52@example.com', '843.855.3710', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(863, 'Andreane', 'Ratke', '1991-06-15', 'Female', 'parker.rodolfo@example.com', '+1-337-723-8877', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(864, 'Peter', 'Orn', '2004-01-30', 'Female', 'milo.reichert@example.org', '1-651-952-2615', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(865, 'Jaida', 'Walter', '1998-03-15', 'Male', 'clara.prosacco@example.org', '423-347-0157', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(866, 'Verla', 'DuBuque', '2000-12-14', 'Other', 'mara30@example.org', '(949) 867-2186', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(867, 'Arno', 'Farrell', '2003-09-24', 'Female', 'laurel.mayer@example.net', '+1.724.542.0844', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(868, 'Kory', 'Ortiz', '1974-12-13', 'Other', 'dedrick37@example.org', '+19306594928', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(869, 'Connor', 'Turner', '1970-03-05', 'Male', 'jarred.monahan@example.com', '+1 (772) 215-6106', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(870, 'Brown', 'Macejkovic', '2002-03-26', 'Male', 'kenton.spencer@example.com', '+15645237198', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(871, 'Chasity', 'Rempel', '1980-02-21', 'Other', 'gwiza@example.com', '806-777-4734', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(872, 'Jayne', 'Boyle', '1994-02-16', 'Other', 'marco02@example.org', '320.282.9926', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(873, 'Sasha', 'Cummings', '2001-08-03', 'Other', 'damaris87@example.com', '708.624.2328', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(874, 'Hallie', 'Nicolas', '2000-11-21', 'Other', 'ularkin@example.org', '(928) 452-9181', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(875, 'Karson', 'Gorczany', '1996-09-05', 'Other', 'hjacobson@example.com', '480-730-9844', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(876, 'Margot', 'Cormier', '1998-09-26', 'Male', 'lorenza.hills@example.com', '+1-959-995-8935', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(877, 'Omari', 'Botsford', '2004-08-04', 'Female', 'shayna46@example.org', '(364) 625-5307', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(878, 'Irwin', 'Turner', '1989-03-05', 'Other', 'harvey.kameron@example.net', '(757) 278-4224', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(879, 'Vida', 'Heaney', '1976-08-16', 'Other', 'marisa29@example.org', '+12707727651', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(880, 'Peter', 'Upton', '1985-12-10', 'Other', 'gmann@example.org', '+15859649120', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(881, 'Savanah', 'Schimmel', '1988-08-25', 'Female', 'lweber@example.net', '(662) 876-5685', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(882, 'Elisa', 'Gaylord', '1980-01-04', 'Male', 'emueller@example.org', '1-913-418-3481', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(883, 'Cyrus', 'Conn', '2001-06-03', 'Male', 'keenan23@example.com', '+1 (629) 764-9641', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(884, 'Zander', 'Dibbert', '1988-06-04', 'Female', 'charley90@example.com', '719-976-4841', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(885, 'Adeline', 'Mills', '1980-01-05', 'Male', 'enos68@example.com', '(564) 985-0264', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(886, 'Delaney', 'Hickle', '1994-01-20', 'Male', 'lemke.buddy@example.net', '316-512-8076', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(887, 'Karley', 'Stracke', '1982-07-14', 'Male', 'samir.kihn@example.com', '+1 (845) 325-1879', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(888, 'Easter', 'Lind', '2001-06-01', 'Female', 'keebler.britney@example.com', '978-590-0919', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(889, 'Leonora', 'Anderson', '1983-06-03', 'Other', 'elijah25@example.com', '1-813-374-1289', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(890, 'Dejon', 'Mitchell', '1990-11-26', 'Other', 'windler.eileen@example.net', '(628) 381-3060', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(891, 'Vita', 'Lehner', '1985-11-12', 'Female', 'deborah85@example.org', '347-896-7272', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(892, 'Forrest', 'Donnelly', '1996-07-08', 'Male', 'jedidiah.vonrueden@example.com', '575.570.6513', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(893, 'Rhett', 'Stroman', '1997-03-18', 'Female', 'eveline30@example.org', '(862) 882-1178', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(894, 'Meghan', 'Rau', '1986-09-29', 'Other', 'trudie44@example.org', '(707) 617-9076', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(895, 'Gerardo', 'Padberg', '1990-11-29', 'Male', 'moen.rosalind@example.com', '+1-334-446-1155', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(896, 'Myra', 'Morar', '1995-10-12', 'Female', 'sasha67@example.org', '+15047033865', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(897, 'Vaughn', 'Kshlerin', '1992-12-21', 'Female', 'eliezer.jast@example.org', '931-573-3640', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(898, 'Green', 'Thiel', '1988-11-18', 'Other', 'geovanny02@example.com', '(838) 686-2791', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(899, 'Carrie', 'Yundt', '1986-04-06', 'Male', 'mkuhlman@example.com', '360.770.4532', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(900, 'Noelia', 'Gusikowski', '1996-10-27', 'Female', 'conn.amari@example.net', '541.539.8134', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(901, 'Brando', 'Schneider', '1995-11-26', 'Other', 'omoore@example.org', '828-659-3930', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(902, 'Ronaldo', 'Pfannerstill', '2004-02-10', 'Female', 'kessler.sharon@example.com', '854.649.1984', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(903, 'Jolie', 'Purdy', '2003-07-17', 'Other', 'aprosacco@example.net', '+15752678392', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(904, 'Jacques', 'Pollich', '1993-07-01', 'Male', 'vkoss@example.com', '316-499-1765', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(905, 'Julius', 'Waters', '1979-05-30', 'Male', 'mcclure.fletcher@example.net', '262-535-0586', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(906, 'Deron', 'Crooks', '2004-07-28', 'Other', 'hermiston.libbie@example.org', '938.694.7871', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(907, 'Nikki', 'Kirlin', '1991-08-19', 'Female', 'osanford@example.org', '248.469.2784', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(908, 'Meda', 'Marvin', '1989-10-30', 'Female', 'cornelius86@example.org', '1-678-868-0781', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(909, 'Shannon', 'Walsh', '1976-11-13', 'Other', 'rodriguez.carmella@example.com', '+1-320-200-4942', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(910, 'Emmett', 'Olson', '1983-01-19', 'Male', 'wuckert.murl@example.com', '+19472836058', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(911, 'Marjorie', 'Brakus', '1988-05-07', 'Female', 'devan84@example.org', '540-302-7584', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(912, 'Fletcher', 'Hirthe', '1994-01-03', 'Male', 'west.beth@example.com', '+1-947-536-3877', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(913, 'Louie', 'Lueilwitz', '1979-10-27', 'Male', 'rosamond07@example.com', '1-862-348-3084', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(914, 'Telly', 'Bednar', '1984-03-09', 'Female', 'lindgren.kaylah@example.org', '682-300-1739', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(915, 'Connor', 'Koelpin', '1997-03-05', 'Other', 'otilia.kunde@example.org', '872-633-9340', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(916, 'Anderson', 'Greenfelder', '2004-06-27', 'Male', 'ritchie.shad@example.net', '765-553-2930', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(917, 'Dasia', 'Lynch', '2005-08-07', 'Female', 'everett.oberbrunner@example.com', '+1-352-894-8133', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(918, 'Suzanne', 'Thompson', '1993-03-19', 'Female', 'oberbrunner.koby@example.org', '1-505-622-7433', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(919, 'Freeman', 'Ondricka', '1989-07-23', 'Male', 'vlegros@example.net', '1-331-426-5069', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(920, 'Katlyn', 'Sanford', '1977-12-06', 'Female', 'babernathy@example.com', '252-819-5645', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(921, 'Lorna', 'Kulas', '1993-11-11', 'Other', 'cgorczany@example.com', '+1-972-748-8820', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(922, 'Lonnie', 'Mertz', '1991-08-23', 'Female', 'lowe.destiney@example.net', '(772) 231-1289', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(923, 'Isabell', 'Terry', '1980-12-29', 'Female', 'rashawn.hilpert@example.org', '346.640.7411', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(924, 'Dillan', 'Bergstrom', '1979-12-26', 'Female', 'crau@example.net', '+1-248-324-6445', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(925, 'Josie', 'Kshlerin', '1981-08-22', 'Female', 'nbechtelar@example.org', '513-594-3207', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(926, 'Sabryna', 'Dicki', '2000-04-15', 'Female', 'wolf.jadyn@example.net', '+1.364.514.8372', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(927, 'Hubert', 'Bruen', '2002-02-27', 'Female', 'lynch.verla@example.org', '+1-484-381-9941', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(928, 'Ransom', 'Bode', '1994-02-16', 'Other', 'arlene.quigley@example.com', '+1.440.466.5959', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(929, 'Jalon', 'D\'Amore', '1988-11-18', 'Female', 'zelma42@example.com', '254.394.6384', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(930, 'Mossie', 'Krajcik', '1972-08-17', 'Male', 'karlee.bauch@example.net', '707.802.1970', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(931, 'Arne', 'Dach', '1992-05-31', 'Other', 'kutch.rosalinda@example.net', '+1.680.284.1568', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(932, 'Jakob', 'Pouros', '1992-03-15', 'Female', 'garnett.bosco@example.net', '1-760-805-7985', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(933, 'Orville', 'Mitchell', '1982-02-06', 'Other', 'mwatsica@example.org', '251-874-3285', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(934, 'Rodrick', 'Macejkovic', '1994-08-03', 'Female', 'emmerich.jorge@example.com', '303.352.5645', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(935, 'Pascale', 'Kerluke', '1979-09-01', 'Other', 'jschamberger@example.net', '+18592978777', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(936, 'Melody', 'DuBuque', '1981-04-29', 'Female', 'vhyatt@example.com', '+1-660-553-5210', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(937, 'Payton', 'Batz', '1972-12-20', 'Male', 'cristina.armstrong@example.org', '541-938-4855', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(938, 'Darrell', 'O\'Hara', '1978-06-26', 'Male', 'rodger03@example.org', '+1-281-557-6631', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(939, 'Lavina', 'Kessler', '1992-07-03', 'Other', 'blanca64@example.net', '(934) 431-8145', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(940, 'Joesph', 'Crona', '1994-09-21', 'Female', 'zshields@example.net', '+1-818-550-9236', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(941, 'Sibyl', 'Kunze', '1983-12-07', 'Male', 'kellie.graham@example.com', '+1.941.697.0501', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(942, 'Harvey', 'Ondricka', '1982-01-24', 'Female', 'barton.makenzie@example.org', '+1 (469) 624-7215', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(943, 'Eleanore', 'Wolff', '1986-10-19', 'Other', 'arch.ebert@example.com', '(678) 842-7371', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(944, 'Lourdes', 'Graham', '1995-10-26', 'Other', 'lschuppe@example.net', '(845) 485-9095', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(945, 'Connor', 'Cronin', '1970-02-08', 'Female', 'hoppe.libbie@example.org', '1-423-249-0427', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(946, 'Maurice', 'Schuster', '1990-12-28', 'Other', 'janiya.kub@example.org', '938.227.6846', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(947, 'Noemie', 'Gutmann', '1985-09-23', 'Male', 'tom.johns@example.org', '+1.862.794.8742', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(948, 'Magdalen', 'Rau', '1986-10-07', 'Female', 'elenor.sauer@example.com', '848-791-0813', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(949, 'Earline', 'Hermiston', '1996-08-13', 'Female', 'harmony.rodriguez@example.org', '+1.641.914.1697', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(950, 'Michelle', 'Gorczany', '1986-06-13', 'Other', 'waters.ally@example.com', '+13856066566', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(951, 'Leland', 'Sawayn', '1971-11-03', 'Female', 'layla99@example.org', '878-469-3303', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(952, 'Curt', 'Hoppe', '1989-01-24', 'Male', 'streich.laurel@example.net', '1-651-817-2996', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(953, 'Jaquan', 'Bogisich', '1973-03-06', 'Other', 'octavia.dooley@example.com', '(234) 600-0494', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(954, 'Weston', 'Krajcik', '1978-12-30', 'Female', 'kunze.dagmar@example.org', '+15202837300', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(955, 'Jackeline', 'Gislason', '1983-07-10', 'Other', 'orin52@example.net', '228-340-0483', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(956, 'Alejandrin', 'Pouros', '1986-02-01', 'Female', 'bins.maximus@example.net', '480.771.5943', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(957, 'Brianne', 'Brakus', '1976-01-28', 'Male', 'rosenbaum.darrion@example.com', '+1-443-901-9538', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(958, 'Britney', 'Morissette', '2004-12-16', 'Other', 'ijaskolski@example.net', '+1 (320) 403-9933', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(959, 'Jovan', 'Rath', '1979-10-08', 'Male', 'kiley70@example.net', '+1-458-563-5995', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(960, 'Deangelo', 'VonRueden', '1972-12-10', 'Female', 'abby97@example.net', '215.527.7400', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(961, 'Owen', 'Herzog', '1971-07-08', 'Male', 'reichert.juanita@example.org', '(801) 509-5388', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(962, 'Brooklyn', 'Bashirian', '1999-05-17', 'Male', 'runte.cordia@example.org', '+1-272-451-2470', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(963, 'Andreane', 'Nienow', '1987-04-21', 'Male', 'wilma26@example.com', '1-386-289-0173', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(964, 'Carlotta', 'Rosenbaum', '1986-03-12', 'Female', 'august58@example.net', '1-848-393-5981', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(965, 'Vicky', 'Huels', '1993-07-20', 'Male', 'cora.vonrueden@example.net', '+1-351-387-6805', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(966, 'Telly', 'Treutel', '1970-04-17', 'Male', 'damion68@example.org', '(959) 485-3747', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(967, 'Roscoe', 'Aufderhar', '1978-05-05', 'Other', 'stamm.cicero@example.org', '(760) 654-3741', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(968, 'Francesca', 'Nienow', '1996-12-03', 'Other', 'predovic.christop@example.net', '+12798968023', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(969, 'Elliot', 'Prosacco', '1992-03-05', 'Other', 'assunta.parker@example.net', '(320) 384-5013', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(970, 'Cicero', 'Schoen', '1994-01-05', 'Other', 'smith.osbaldo@example.net', '1-857-733-2184', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(971, 'Magali', 'Brekke', '1975-08-16', 'Female', 'effie.wiza@example.org', '+1.520.568.4613', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(972, 'Chadd', 'Kertzmann', '1991-02-02', 'Female', 'carlos18@example.org', '+1 (972) 451-8412', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(973, 'Abdul', 'Haley', '1982-05-17', 'Female', 'oral05@example.com', '706-634-4107', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(974, 'Efren', 'Yost', '1980-08-21', 'Other', 'kirlin.bennie@example.com', '570-674-4215', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(975, 'Cathrine', 'Little', '2005-05-29', 'Female', 'river.brown@example.org', '947.804.8928', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(976, 'Malachi', 'McKenzie', '1996-07-10', 'Female', 'jimmy89@example.net', '+1-757-354-6468', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(977, 'Adell', 'Hand', '2000-08-04', 'Female', 'rau.marianna@example.org', '(484) 266-2235', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(978, 'Rhoda', 'Barrows', '2000-11-09', 'Female', 'elyssa22@example.net', '+1-947-946-9257', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(979, 'Amiya', 'Borer', '1971-09-19', 'Male', 'kemmer.andreane@example.org', '(458) 850-8276', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(980, 'Melyna', 'Kovacek', '1983-07-11', 'Other', 'letha53@example.org', '1-689-816-4819', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(981, 'Emmet', 'Shanahan', '1991-08-28', 'Other', 'ziemann.henri@example.org', '+15076639912', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(982, 'Martina', 'Rosenbaum', '1983-04-30', 'Other', 'wolf.hadley@example.net', '+1-551-417-3612', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(983, 'Diego', 'Little', '1998-10-13', 'Other', 'zleuschke@example.org', '+1-520-528-2858', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(984, 'Mylene', 'Wehner', '2000-10-17', 'Female', 'adicki@example.com', '208.892.1661', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(985, 'Stephanie', 'Jast', '1980-10-07', 'Male', 'ekunde@example.net', '+1-848-717-7612', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(986, 'Khalid', 'Goodwin', '2004-02-19', 'Other', 'osinski.jailyn@example.org', '(228) 301-9726', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(987, 'Mariam', 'Koelpin', '1987-11-12', 'Male', 'xturner@example.org', '859.361.6439', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(988, 'Emiliano', 'Hermiston', '1987-01-05', 'Female', 'pgreenfelder@example.com', '+1.702.967.0636', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(989, 'Alessandra', 'Donnelly', '1997-06-01', 'Other', 'johnston.marilou@example.net', '651-929-5927', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(990, 'Otho', 'Gorczany', '1972-07-21', 'Other', 'bill.mayer@example.org', '520.996.5426', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(991, 'Jamie', 'Mueller', '1975-04-12', 'Male', 'janet05@example.net', '+13186898866', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(992, 'Lauretta', 'Hand', '1989-10-22', 'Other', 'kcruickshank@example.net', '458-363-6008', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(993, 'Ruben', 'Langosh', '1999-07-08', 'Female', 'bud08@example.net', '208.377.8183', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(994, 'Alek', 'Hartmann', '1995-11-22', 'Male', 'lamont.welch@example.org', '760.996.0433', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(995, 'Kendall', 'Grimes', '2001-09-08', 'Female', 'una.kerluke@example.net', '1-971-413-9361', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(996, 'Irving', 'Reilly', '1977-05-16', 'Other', 'stark.greg@example.org', '+1.765.947.5844', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(997, 'Roma', 'Lebsack', '1972-01-06', 'Male', 'enrique.walter@example.com', '1-435-406-8306', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(998, 'Carmel', 'Lowe', '1974-04-01', 'Other', 'louvenia66@example.org', '+18013350169', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(999, 'Theresa', 'Hagenes', '1985-02-11', 'Other', 'dooley.terence@example.net', '828.760.9469', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(1000, 'Doyle', 'Harris', '1973-02-16', 'Male', 'nedra.zemlak@example.com', '925-943-8231', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(1001, 'Johnathon', 'Becker', '1975-06-04', 'Female', 'delbert.koss@example.com', '(480) 905-8911', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(1002, 'Ida', 'Haag', '1982-12-16', 'Female', 'rory.thompson@example.net', '(854) 682-1618', '2025-11-23 01:47:34', '2025-11-23 01:47:34'),
(1003, 'Margarete', 'Emard', '1999-10-08', 'Male', 'vshields@example.com', '1-972-323-7193', '2025-11-23 01:47:34', '2025-11-23 01:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_ngajar`
--

CREATE TABLE `riwayat_ngajar` (
  `id_riwayat` int NOT NULL,
  `id_guru` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci,
  `tanggal` date DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_ngajar`
--

INSERT INTO `riwayat_ngajar` (`id_riwayat`, `id_guru`, `id_kelas`, `keterangan`, `tanggal`, `alamat`) VALUES
(2, 1, 1, 'Selesai mengajar karena pindah sekolah', '2024-12-20', 'Jl. Melati No. 10');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0VODEbKUwjDjnFB954DRIgMU0cy1AxipCKPEqZPT', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSnRwZUJETTlMSkZsZWZLa1JRQlZ6VURvY3lWYlhwYkRsSmVwcTJ1QyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1764029639),
('2FGOASAWDRdiGWS7rjExN2LUh12y5BqTu03M4NKy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajVlSGV1eEVERG9VTzhpRGlRNG56b1V1UUthNmYxQk4xNkRQQnZ2SiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763891222),
('3BcDfhRuVIXR29mPoMxeknEuw6XglLUKkJZD3bVW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY2wzRktucWV1S2M2MGpFelBvZjV0eDdzalFuTWtDbkNrY0dDRXlrbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763893901),
('5B2BOgMmdQTIvxmCkJQ6VO3xOURt1y30kCSwpXAC', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiOXJUQXBWaXBPUGhMZFh0THJ4a3ExeUJmb0VZb3lXQ1d0bFhJMGtUWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fXM6NDoicm9sZSI7czo1OiJhZG1pbiI7czoyOiJpZCI7aTo1O3M6MTA6Im5hbWFfYWRtaW4iO3M6NToiYWRtaW4iO30=', 1763893798),
('6jPlIaXjFx8VQvvVdmxHPqj3BrZVWEh2lD25vhIu', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMHRXYXdFc2tBeXNRM09oNFVOTm5ieXJlR3hyU2d6T1FqcTFDUk14OSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763893957),
('97fuOzLzAdlRYZR2GDR0ZXluvC0wyWfAabOqA4xw', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYkZ2Y2xtQUFiMTQ4dUFiakNkcnliYnlubEpwTGZyaldSR0FSWHZlOSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC91c2VycyI7czo1OiJyb3V0ZSI7czoxMToidXNlcnMuaW5kZXgiO31zOjQ6InJvbGUiO3M6NToiYWRtaW4iO3M6MjoiaWQiO2k6NTtzOjEwOiJuYW1hX2FkbWluIjtzOjU6ImFkbWluIjt9', 1763895397),
('eg7acJ0FgQW60czXk3ID7J49wLJ2D0KCrBWzSJ0z', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieURGeEpFU0s1RzhwbTVYclkwanQ3aXYxUFFHejF0UHZsNjl0RnIxbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC91c2VycyI7czo1OiJyb3V0ZSI7czoxMToidXNlcnMuaW5kZXgiO31zOjQ6InJvbGUiO3M6NToiYWRtaW4iO3M6MjoiaWQiO2k6NjtzOjEwOiJuYW1hX2FkbWluIjtzOjExOiJTdXBlciBBZG1pbiI7fQ==', 1764029728),
('J58FgIkXMLfb7AQnn4gZjRSTbQdBYA9BeaXTIEnm', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjdjYTdvNDhFV3JienlHckJ2cENzT0lMMzVXUVRYWXdZeDhqOVp3TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763895388),
('NdFr1HKMN99pHaSpTLxkEmDxvxEYzblZS745pshy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV3doM1JteTFEb0tKaDUzRTczeHczeGw5VVRoQ1NNenhoaGIySTdhRCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763893977),
('Q4WQAP96rtsNGUUBBtSagJ1Y9xPGyB5p9k6bVHXh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTFFkWDFKVWlVRmFmTWhhb1I2RUNvdFhTcUVHZUs1d2NkNk1nQUU1ZiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763895366),
('QUJdQhj6yjGLJbJyUH5rTe42s43ph5j8ZFtorpAy', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiME90Z2l1eGEzQzdWRHp0T1NDRE9QMGdkOURMZUxXa2Zrc3RiWWdkTCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763894772),
('RG61NPhEuaD23gIiKI91WIgeIGiAo9zIbmPvK9OZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm83clcySkNSWVRiQ0RZN0xGSWJVRHpBc0xHbGdWb0lCb25JVEdWbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763893989),
('rP4oZ9k6upSFVM7fkQ7sYc8Uz38qEuxTDd1rs9xU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDBhSnJ4NUdab3BYYVJ3UW1JZGhUa2doUnlpQXc0a2hNOVRjaDVPdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763895199),
('U9qipiEqMFRkdjwaQWsQlTr2Layr6MDXB5mfxY95', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTMyTVVTZHJzUk1EMmptVjNsMWdVU3BhZ2RYQ0c0ZlNyUEFleTgydCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763895218),
('UX5J14q1cPWhUlnf7pRe61iCrDLExDufSMnaaVZn', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibkRRN2xnMWtvRkNDbmVMN2pQbDI3SFlKbDI0eXBCcmkwVHZNSXB6aCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1764029701),
('X1NK7gK2viubDNAsVu6DSeUJCEEfQp9VAKhP26aH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG5pdEduN3NJUzZFb01HWU90czBpcHQ3b0NqMHVXeEZDV1loTlFQTSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763894110),
('yXQ1t7owQQ02mTAkOqKxpPYJWyB3qAKC2L22EoLN', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36 Edg/142.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieGRmeEp4Q3R6bVNwdndDUGVrSXBuRWdtREp0M3FMUWQ3andFOHBOZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly91YXMudGVzdC9sb2dpbiI7czo1OiJyb3V0ZSI7czo1OiJsb2dpbiI7fX0=', 1763894926);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int NOT NULL,
  `nama_siswa` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_telp` varchar(15) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `nama_kelas` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_general_ci,
  `tempat_tgl_lahir` date DEFAULT NULL,
  `nama_wali` varchar(255) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama_siswa`, `email`, `no_telp`, `password`, `id_kelas`, `nama_kelas`, `alamat`, `tempat_tgl_lahir`, `nama_wali`) VALUES
(1, 'Andi Pratama', 'andi@mail.com', '081234111222', '$2y$10$eImiTXuWVxfM37uY4JANj.Qj8IQf9HqcHdm42Hcps225y7sY9qsGa', 1, NULL, 'Jl. Manggis No. 2', '2018-01-09', 'Slamet'),
(2, 'Jeni Salsabila', 'jeni@mail.com', '081244556677', '$2y$10$eImiTXuWVxfM37uY4JANj.Qj8IQf9HqcHdm42Hcps225y7sY9qsGa', 2, NULL, 'Jl. Nangka No. 19', '2018-05-21', 'Nurhayati'),
(3, 'Jumanji Sitohuma', 'Jumanji@njayani', '082254', '$2y$12$25DtSh6ikNx8LDlEwlzKdeAh8PBG1.p6D8dzav5EqdvLpPyz4ySiO', 2, NULL, 'jln suparno jungsonoyo', '2025-11-12', 'mahadarmadesapujabanggalasukitajaya');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'testings', 'tata', 'tata123@mail', NULL, '$2y$12$PIK9SSVdRzb6PkGpEIOsAO87EaeVqVA46oC/CpII858HTBNXN6vNG', 'guru', NULL, '2025-11-22 05:04:41', '2025-11-23 03:40:34'),
(3, 'yaya', 'yayas', 'yayasan@gmail.com', NULL, '$2y$12$BhJG4Sbq6nguyOSkMAM1d.qdocbmIFOl/o1qoyz9e0nm8R9HTUBt.', 'admin', NULL, '2025-11-23 03:42:40', '2025-11-23 03:43:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_siswa` (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`pelanggan_id`),
  ADD UNIQUE KEY `pelanggan_email_unique` (`email`);

--
-- Indexes for table `riwayat_ngajar`
--
ALTER TABLE `riwayat_ngajar`
  ADD PRIMARY KEY (`id_riwayat`),
  ADD KEY `id_guru` (`id_guru`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id_guru` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `pelanggan_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT for table `riwayat_ngajar`
--
ALTER TABLE `riwayat_ngajar`
  MODIFY `id_riwayat` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni`
--
ALTER TABLE `alumni`
  ADD CONSTRAINT `alumni_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `alumni_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `guru`
--
ALTER TABLE `guru`
  ADD CONSTRAINT `guru_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `siswa` (`id_siswa`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `riwayat_ngajar`
--
ALTER TABLE `riwayat_ngajar`
  ADD CONSTRAINT `riwayat_ngajar_ibfk_1` FOREIGN KEY (`id_guru`) REFERENCES `guru` (`id_guru`),
  ADD CONSTRAINT `riwayat_ngajar_ibfk_2` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
