<div class="container">
    <div class="row">
        <div class="col">
            <h1>Data Mahasiswa</h1>

            <a href="?page=mahasiswacreate" class="btn btn-outline-primary"><i class="bi bi-person-plus"></i> Tambah Data</a>
            <a href="mahasiswa_print.php" class="btn btn-outline-primary"><i class="bi bi-printer"></i> Cetak Data</a><br>
            <table class="table table-hover table-bordered"><br>
                <thead>
                    <tr>
                        <th>No</th>
                        <th>NPM</th>
                        <th>Nama</th>
                        <th>Prodi</th>
                        <th>Tanggal Lahir</th>
                        <th>Alamat</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $no = 1;
                    $exe = $konek->query("select * from mhs");
                    while ($data = $exe->fetch_array()) :
                    ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?= $data['1'] ?></td>
                            <td><?= $data['2'] ?></td>
                            <td><?= $data['3'] ?></td>
                            <td><?= date('d-F-Y', strtotime($data[4])) ?></td>
                            <td><?= $data['5'] ?></td>
                            <td>
                                <a href="?page=mahasiswaedit&id=<?= $data[0] ?>"><i class="bi bi-pencil-square"></i></a>
                                <a href="?page=mahasiswadelete&id=<?= $data[0] ?>"> <i class="bi bi-trash"></i></a>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>