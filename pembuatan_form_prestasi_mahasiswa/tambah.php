<div class="container">
    <div class="row">
        <div class="col-6">
            <h1>Tambah Data Mahasiswa</h1>

            <form action="?page=tambahmahasiswa" method="post">
                <div class="mb-3">
                    <label for="" class="form-label">NPM</label>
                    <input type="text" name="npm" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Nama Lengkap</label>
                    <input type="text" name="nama" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Prodi</label>
                    <input type="text" name="prodi" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Tanggal Lahir</label>
                    <input type="date" name="ttl" class="form-control">
                </div>
                <div class="mb-3">
                    <label for="" class="form-label">Alamat</label>
                    <input type="text" name="alamat" class="form-control">
                </div>
                <button type="submit" name="tambah" class="btn btn-primary">Simpan</button>
                <button type="reset" class="btn btn-danger">Batal</button>
            </form>
        </div>
    </div>
</div>