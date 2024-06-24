<?php
if (isset($_POST["proses"])) {
    $namabarang = $_POST["barang"];
    $harga = $_POST["harga"];
    $jumlah = $_POST["jumlah"];
    $subtotal = $harga * $jumlah;
    if ($subtotal > 1_000_000 and $subtotal < 2000000) {
        $diskon = $subtotal * 0.08;
    } else if ($subtotal > 2000000) {
        $diskon = $subtotal * 0.12;
    } else {
        $diskon = 0;
    }
    $hargatotal = $subtotal - $diskon;
?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
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
            <h1 align="center" style="margin: 10">Perhitungan Nilai</h1>
            <a href="utama.php">
                << Halaman Utama</a>
                    <br><br>
                    <table border="1px" cellspacing="0" cellpadding="4px" width="500px">
                        <tr>
                            <td colspan="2">
                                <ul>
                                    <li>Nama Barang : <?php echo $namabarang ?></li>
                                    <li>Harga Barang : <?php echo $harga ?></li>
                                    <li>Jumlah Barang : <?php echo $jumlah ?></li>
                                    <li>Sub Total : <?php echo $subtotal; ?> </li>
                                </ul>
                            </td>
                        </tr>
                        <tr>
                            <td>Diskon</td>
                            <td><?php echo $diskon; ?></td>
                        </tr>
                        <tr>
                            <td>Harga Total</td>
                            <td><?php echo $hargatotal; ?></td>
                        </tr>

                        <tr>
                            <td colspan="2">
                                <h3>Keterangan Diskon</h3>
                                <ul>
                                    <li>Pembelian lebih dari 1000000 Mendapatkan diskon 8%</li>
                                    <li>Pembelian lebih dari 2000000 Mendapatkan diskon 12%</li>
                                </ul>
                            </td>
                        </tr>
                    </table>

        </div>
    </body>
<?php }
?>