<?php
include "koneksi.php";
include "header.php"; //memasukan file header.php
$page = $_GET['page']; //mengambil nilai page di url, simpan di $page
switch ($page) { //percabangan untuk mengecek variabel $page
    case "mahasiswa": // jika $page==mahasiswa
        include "view_data.php"; //masukan file view_data.php
        break; //keluar dari percabangan 
    case "mahasiswacreate": // jika $page==mahasiswacreate
        include "tambah.php"; //masukan file tambah.php
        break;
    case "ubahmahasiswa": // jika $page==mahasiswacreate
        include "aksi_ubah.php"; //masukan file tambah.php
        break;
    case "tambahmahasiswa": // jika $page==mahasiswaedit
        include "aksi_tambah.php"; //masukan file ubah.php
        break;
    case "mahasiswaedit": // jika $page==mahasiswaedit
        include "ubah.php"; //masukan file ubah.php
        break;
    case "mahasiswadelete": // jika $page==mahasiswadelete
        include "hapus.php"; //masukan file hapus.php
        break;
}
