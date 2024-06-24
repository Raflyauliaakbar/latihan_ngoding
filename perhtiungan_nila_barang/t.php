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
      .tabel > table,
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
        <tr>
            <td colspan="5">
                <h1 align="center" style="margin: 10">Perhitungan Nilai</h1>
                <a href="utama.php"><< Halaman Utama</a>
        </tr>

<table border="1px" cellspacing="0" cellpadding="4px" width="500px">
    <form action="hasil2.php" method="post">    
        <tr>
          <td>Nama Barang
          <td><input type="text" name="barang" placeholder="masukan nama Barang" require></td>
        </tr> 
        <tr>
          <td>Harga 
          <td><input type="text" name="harga" placeholder="0" require></td>
        </tr> 
        <tr>
          <td>Jumlah Beli
          <td><input type="text" name="jumlah" placeholder="0" require></td>
        </tr> 
        <td colspan="2" align="right">  
            <button type="submit" name="proses">Proses</button>
            <button type="reset" name="hitung">Reset</button>
        </td> 
    </form>       
</table>

</body>
</html>