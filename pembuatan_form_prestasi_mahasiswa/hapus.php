<?php
$id = $_GET['id'];
$konek = new mysqli("localhost", "root", "", "praktikum_web2");
$exe = $konek->prepare("delete from mhs where id=?");
$exe->bind_param("s", $id);
if ($exe->execute()) {
    echo "<script>alert('Data Berhasil dihapus');";
    echo "location.replace('index.php?page=mahasiswa');</script>";
} else {
    echo "<script>alert('Data gagal dihapus');";
    echo "location.replace('index.php?page=mahasiswa');</script>";
}
