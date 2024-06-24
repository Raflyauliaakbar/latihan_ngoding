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

    h3 {
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

        <table border="1px" cellspacing="0" cellpadding="4px" width="500px">
          <form action="hitung.php" method="post">
            <tr>
              <td>NPM
              <td><input type="text" name="npm" placeholder="masukan NPM" require></td>
            </tr>
            <tr>
              <td>Nama Lengkap
              <td><input type="text" name="namaLengkap" placeholder="masukan Nama" require></td>
            </tr>
            <tr>
              <td>Nilai Absen
              <td><input type="text" name="nilaiAbsen" placeholder="0" require></td>
            </tr>
            <tr>
              <td>Nilai Tugas
              <td><input type="text" name="nilaiTugas" placeholder="0" require></td>
            </tr>
            <tr>
              <td>Nilai UTS
              <td><input type="text" name="nilaiUts" placeholder="0" require></td>
            </tr>
            <tr>
              <td>Nilai UAS
              <td><input type="text" name="nilaiUas" placeholder="0" require></td>
            </tr>
            <td colspan="2" align="right">
              <button type="submit" name="hitung">Hitung</button>
              <button type="reset" name="hitung">Reset</button>
            </td>
          </form>
        </table>

</body>

</html>