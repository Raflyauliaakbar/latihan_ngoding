<?php
// panggil plugin fpdf
include('fpdf186/fpdf.php');
include('koneksi.php');
//membuat objek dari kelas FPDF
$pdf = new FPDF('P', 'cm', 'A4');
$pdf->AddPage();
$pdf->SetFont('Arial', 'B', 12); //atur font yg digunakan
$pdf->Cell(18, 1, 'UNIVERSITAS ISLAM KALIMANTAN', 0, 1, 'C');
$pdf->Cell(18, 0.5, 'MUHAMMAD ARSYAD AL BANJARI KALIMANTAN SELATAN', 0, 1, 'C');
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(18, 01, 'Jl.Salak No.01 Kel. Kemuning Kec. Banjarbaru Selatan', 0, 1, 'C');
$pdf->Line(1, 3.3, 20, 3.3);
$pdf->Image('logo.jpg', 1, 0.5, 2.5, 2.5);
$pdf->ln();
$pdf->SetFont('Arial', '', 10);
$pdf->Cell(18, 0.5, 'Laporan Data Mahasiswa', 0, 1, 'C');
$pdf->Cell(18, 1, 'Dicetak pada tanggal: ' . date('d-m-Y'), 0, 1, 'C');
$pdf->ln();
$pdf->Cell(1, 0.5, 'No', 1, 0, 'C');
$pdf->Cell(3, 0.5, 'NPM', 1, 0, 'C');
$pdf->Cell(5, 0.5, 'Nama Lengkap', 1, 0, 'C');
$pdf->Cell(2, 0.5, 'Prodi', 1, 0, 'C');
$pdf->Cell(3, 0.5, 'TTL', 1, 0, 'C');
$pdf->Cell(5, 0.5, 'Alamat', 1, 1, 'C');
$no = 1;
$exe = $konek->query("select * from mhs");
while ($data = $exe->fetch_array()) :
    $pdf->Cell(1, 0.5, $no++, 1, 0, 'C');
    $pdf->Cell(3, 0.5, $data[1], 1, 0, 'C');
    $pdf->Cell(5, 0.5, $data[2], 1, 0, 'C');
    $pdf->Cell(2, 0.5, $data[3], 1, 0, 'C');
    $pdf->Cell(3, 0.5, date('d-m-Y', strtotime($data[4])), 1, 0, 'C');
    $pdf->Cell(5, 0.5, $data[5], 1, 1, 'C');
endwhile;
$pdf->ln(2);
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(17.3, 0.5, 'Mengetahui', 0, 1, 'R');
$pdf->Cell(17.4, 0.5, 'Wakil Rektor', 0, 1, 'R');
$pdf->ln(1.5);
$pdf->SetFont('Arial', 'BU', 12);
$pdf->Cell(18, 0.5, 'H. Idzani Muttaqin', 0, 1, 'R');
$pdf->SetFont('Arial', 'B', 12);
$pdf->Cell(18, 0.5, 'NIK 17 0102 0231', 0, 1, 'R');
$pdf->Output('', 'datamahasiswa');
