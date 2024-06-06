<?php
$konek = new mysqli("localhost", "root", "", "praktikum_web2");
$id = $_GET['id'];
$exe = $konek->prepare("select * from mhs where id=?");
$exe->bind_param("s", $id);
$exe->execute();
$result = $exe->get_result();
$data = $result->fetch_array();

?>
<div class="container">
    <div class="row">
        <div class="col-6">
            <h1>Ubah Data Mahasiswa</h1>

            <form action="?page=ubahmahasiswa" method="post">
                <input type="hidden" name="id" value="<?= $id ?>">
                <div class="mb-3">
                    <label for="" class="form-label">NPM</label>
                    <input type="text" name="npm" value="<?= $data[1]; ?>" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Nama Lengkap</label>
                    <input type="text" name="nama" value="<?= $data[2]; ?>" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Prodi</label>
                    <input type="text" name="prodi" value="<?= $data[3]; ?>" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Tanggal Lahir</label>
                    <input type="date" name="ttl" value="<?= $data[4]; ?>" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Alamat</label>
                    <input type="text" name="alamat" value="<?= $data[5]; ?>" class="form-control">
                </div>
                <button type="submit" name="tambah" class="btn btn-primary">Simpan</button>
                <button type="reset" class="btn btn-danger">Batal</button>
            </form>
        </div>
    </div>
</div>