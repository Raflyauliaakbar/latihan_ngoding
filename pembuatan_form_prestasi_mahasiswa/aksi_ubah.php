<?php
$exe = $konek->prepare("update mhs set npm=?, nama_lengkap=?, prodi=?, tanggal_lahir=?, alamat=? where id=?");
$exe->bind_param("ssssss", $npm, $nama, $prodi, $ttl, $alamat, $id);
$npm = $_POST['npm'];
$nama = $_POST['nama'];
$prodi = $_POST['prodi'];
$ttl = $_POST['ttl'];
$alamat = $_POST['alamat'];
$id = $_POST['id'];
// $params = ["2210010008", "Agus", "Sistem Informatika", "2002-11-30", "Jl.Jeruk"];
if ($exe->execute() == true) {
    echo "<script>alert('Data Berhasil diperbaharui');";
    echo "location.replace('index.php?page=mahasiswa');</script>";
} else {
    echo "<script>alert('Data gagal diperbaharui');";
    echo "location.replace('index.php?page=mahasiswa');</script>";
}
