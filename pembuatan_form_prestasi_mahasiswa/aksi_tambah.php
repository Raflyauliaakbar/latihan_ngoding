<?php
$exe = $konek->prepare("insert into mhs (npm, nama_lengkap, prodi, tanggal_lahir, alamat) values (?, ?, ?, ?, ?)");
$npm = $_POST['npm'];
$nama = $_POST['nama'];
$prodi = $_POST['prodi'];
$ttl = $_POST['ttl'];
$alamat = $_POST['alamat'];
$exe->bind_param("sssss", $npm, $nama, $prodi, $ttl, $alamat);
// $params = ["2210010008", "Agus", "Sistem Informatika", "2002-11-30", "Jl.Jeruk"];
if ($exe->execute() == true) {
    echo "<script>alert('Data Berhasil ditambahkan');";
    echo "location.replace('index.php?page=mahasiswa');</script>";
} else {
    echo "<script>alert('Data gagal ditambahkan');";
    echo "location.replace('index.php?page=mahasiswa');</script>";
}
