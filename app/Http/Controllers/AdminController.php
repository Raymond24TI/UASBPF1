<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
    public function index() {
        if (!isset($_SESSION['user']) || $_SESSION['user']['role'] !== 'admin') {
            header('Location: /mila_1tib/mvc/public/auth/login');
            exit;
        }
        $this->view('admin/index');
    }


    public function __construct(){
        session_start();
        if (!isset($_SESSION['user']) || $_SESSION['user']['role'] !== 'admin') {
            header('Location: /mila_1tib/mvc/public/auth/login');
            exit;
        }
    }
    public function siswa($page = 1) {
        $model = $this->model('Siswa');

        $limit = 5;
        $offset = ($page - 1) * $limit;

        $data['siswa'] = $model->getSiswaWithPagination($limit, $offset);
        $total = $model->getTotalSiswa()['total'];
        $data['total_pages'] = ceil($total / $limit);
        $data['current_page'] = $page;

        $this->view('admin/siswa/index', $data);
    }


    public function tambahSiswa() {

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = $this->model('Siswa');
            $model->tambahSiswa($_POST);
            header('Location: /mila_1tib/mvc/public/admin/siswa');
        } else {
            $this->view('admin/siswa/tambah');
        }
    }

    public function editSiswa($id) {

        $model = $this->model('Siswa');
        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $_POST['id'] = $id;
            $model->updateSiswa($_POST);
            header('Location: /mila_1tib/mvc/public/admin/siswa');
        } else {
            $data['siswa'] = $model->getSiswaById($id);
            $this->view('admin/siswa/edit', $data);
        }
    }

    public function hapusSiswa($id) {

        if ($_SESSION['user']['role'] !== 'admin') {
            header('Location: /mila_1tib/mvc/public/auth/login');
            exit;
        }

        $model = $this->model('Siswa');
        $model->pindahKeAlumni($id);
        header('Location: /mila_1tib/mvc/public/admin/siswa');
    }

    public function guru($page = 1) {
        $model = $this->model('Guru');

        $limit = 5;
        $offset = ($page - 1) * $limit;

        $data['guru'] = $model->getGuruWithPagination($limit, $offset);
        $total = $model->getTotalGuru()['total'];
        $data['total_pages'] = ceil($total / $limit);
        $data['current_page'] = $page;

        $this->view('admin/guru/index', $data);
    }

    public function tambahGuru() {

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $model = $this->model('Guru');
            $model->tambahGuru($_POST);
            header('Location: /mila_1tib/mvc/public/admin/guru');
        } else {
            $this->view('admin/guru/tambah');
        }
    }

    public function editGuru($id) {

        $model = $this->model('Guru');

        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
            $_POST['id'] = $id;
            $model->updateGuru($_POST);
            header('Location: /mila_1tib/mvc/public/admin/guru');
        } else {
            $data['guru'] = $model->getGuruById($id);
            $this->view('admin/guru/edit', $data);
        }
    }

    public function hapusGuru($id) {

        if ($_SESSION['user']['role'] !== 'admin') {
            header('Location: /mila_1tib/mvc/public/auth/login');
            exit;
        }

        $model = $this->model('Guru');
        $model->pindahKeRiwayat($id);
        header('Location: /mila_1tib/mvc/public/admin/guru');
    }

    public function pendaftaran($page = 1) {
        $model = $this->model('Pendaftaran');

        $limit = 5;
        $offset = ($page - 1) * $limit;

        $data['pendaftar'] = $model->getPendaftarWithPagination($limit, $offset);
        $total = $model->getTotalPendaftar()['total'];
        $data['total_pages'] = ceil($total / $limit);
        $data['current_page'] = $page;

        $this->view('admin/pendaftaran/index', $data);
    }


    public function prosesPendaftaran($id, $status) {
            session_start();
            if ($_SESSION['user']['role'] !== 'admin') {
                header('Location: /mila_1tib/mvc/public/auth/login');
                exit;
            }

            $model = $this->model('Pendaftaran');
            $model->updateStatus($id, $status);
            header('Location: /mila_1tib/mvc/public/admin/pendaftaran');
        }

        public function terimaPendaftar($id) {
        session_start();
        if ($_SESSION['user']['role'] !== 'admin') {
            header('Location: /mila_1tib/mvc/public/auth/login');
            exit;
        }

        $pendaftaranModel = $this->model('Pendaftaran');
        $siswaModel = $this->model('Siswa');

        $pendaftar = $pendaftaranModel->getPendaftarById($id);

        if ($pendaftar) {
            $siswaModel->tambahSiswa([
                'nama' => $pendaftar['nama'],
                'usia' => $pendaftar['usia'],
                'alamat' => $pendaftar['alamat'],
                'kelas' => 'Calistung'
            ]);

            $pendaftaranModel->updateStatus($id, 'diterima');
        }

        header('Location: /mila_1tib/mvc/public/admin/pendaftaran');
    }

    public function riwayatPengajar() {

        if ($_SESSION['user']['role'] !== 'admin') {
            header('Location: /mila_1tib/mvc/public/auth/login');
            exit;
        }

        $model = $this->model('Guru');
        $data['pengajar'] = $model->getAllRiwayatPengajar();
        $this->view('admin/riwayat_pengajar/index', $data);
    }

    public function alumni() {

        if ($_SESSION['user']['role'] !== 'admin') {
            header('Location: /mila_1tib/mvc/public/auth/login');
            exit;
        }

        $model = $this->model('Siswa');
        $data['alumni'] = $model->getAllAlumni();
        $this->view('admin/alumni/index', $data);
    }

    public function hapusAlumni($id) {
        $model = $this->model('Siswa');
        $model->hapusAlumni($id);
        header('Location: /mila_1tib/mvc/public/admin/lihatAlumni');
        exit;
    }

    public function hapusRiwayatPengajar($id) {
        $model = $this->model('Guru');
        $model->hapusRiwayatPengajar($id);
        header('Location: /mila_1tib/mvc/public/admin/riwayatPengajar');
        exit;
    }



} ?>
