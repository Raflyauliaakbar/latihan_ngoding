<?php
if (isset($_POST["hitung"])) {
    $npm = $_POST["npm"];
    $namalengkap = $_POST["namaLengkap"];
    $nilaiabsen = $_POST["nilaiAbsen"];
    $nilaitugas = $_POST["nilaiTugas"];
    $nilaiuts = $_POST["nilaiUts"];
    $nilaiuas = $_POST["nilaiUas"];
    $nilairata = $nilaiabsen * 0.1 + $nilaitugas * 0.2 + $nilaiuts * 0.3 + $nilaiuas * 0.4;
    if ($nilairata >= 80) {
        $predikat = "A";
    } else if ($nilairata >= 70) {
        $predikat = "B";
    } else if ($nilairata >= 60) {
        $predikat = "C";
    } else if ($nilairata >= 50) {
        $predikat = "D";
    } else if ($nilairata < 50) {
        $predikat = "E";
    }
    if ($nilairata >= 70) {
        $status = "LULUS";
    } else if ($nilairata >= 60) {
        $status = "UJIAN LAGI";
    } else if ($nilairata < 60) {
        $status = "TIDAK LULUS";
    }
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Form Hitungan</title>
        <link rel="stylesheet" href="style.css" />
        <style>
            .tabel {
                border: 1px solid;
                border-radius: 3px;
                display: inline-block;
                padding: 60px;
            }

            h1 {
                text-align: center;
            }

            .tabel>table,
            th,
            td {
                border: 1px solid black;
                border-collapse: collapse;
                padding: 5px;
            }
        </style>
    </head>

    <body>
        <div class="tabel">
            <h1 align="center" style="margin: 10">Hasil Perhitungan</h1>
            <a href="utama.php">
                << Halaman Utama</a>
                    <br><br>
                    <table border="1px" cellspacing="0" cellpadding="4px" width="500px">
                        <tr>
                            <td>NPM
                            <td><?php echo $npm; ?></td>
                        </tr>
                        <tr>
                            <td>Nama Lengkap
                            <td><?php echo $namalengkap; ?></td>
                        </tr>
                        <tr>
                            <td>Nilai
                            <td>
                                <ul>
                                    <li>Absen : <?php echo $nilaiabsen; ?></li>
                                    <li>Tugas : <?php echo $nilaitugas; ?></li>
                                    <li>UTS : <?php echo $nilaiuts; ?></li>
                                    <li>UAS : <?php echo $nilaiuas; ?></li>
                                </ul>
                            </td>

                        </tr>
                        <tr>
                            <td>Nilai Rata-rata
                            <td><?php echo $nilairata ?> </td>
                        </tr>
                        <tr>
                            <td>Predikat
                            <td><?php echo $predikat ?></td>
                        </tr>
                        <tr>
                            <td>Status
                            <td><?php echo $status ?></td>
                        </tr>
                    </table>
                    <h3>Keterangan :</h3>
                    <table border="1px" cellspacing="0" cellpadding="4px" width="600px">
                        <tr>
                            <th>Persentase Nilai rata-rata</th>
                            <th>Keterangan Predikat</th>
                            <th>Keterangan Status</th>
                        </tr>
                        <tr>
                            <td>
                                <ul>
                                    <li>Nilai Absen : 10%</li>
                                    <li>Nilai Tugas : 20%</li>
                                    <li>Nilai UTS : 30%</li>
                                    <li>Nilai UAS : 40%</li>
                                </ul>
                            </td>
                            <td>
                                <ul>
                                    <li>>= 80 : A</li>
                                    <li>>= 70 : B</li>
                                    <li>>= 60 : C</li>
                                    <li>>= 50 : D</li>
                                    <li> &LT;50 : E</li>
                                </ul>
                            </td>
                            <td>
                                <ul>
                                    <li>>=70 : LULUS</li>
                                    <li>>=60 : UJIAN ULANG</li>
                                    <li>>=70 : TIDAK LULUS</li>
                                </ul>
                            </td>
                        </tr>
                    </table>
        </div>

    </html>
<?php
}
