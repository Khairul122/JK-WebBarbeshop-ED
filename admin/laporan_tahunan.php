<?php
include 'includes/config.php';
include 'includes/format_rupiah.php';
include 'includes/library.php';

if (isset($_GET['tahun'])) {
    $tahun = $_GET['tahun'];
    $awal = $tahun . "-01-01"; // Tanggal awal tahun
    $akhir = $tahun . "-12-31"; // Tanggal akhir tahun

    $stt = "Sudah Dibayar";
    $stt1 = "Selesai";
    $sqlsewa = "SELECT * FROM transaksi WHERE (stt_trx='$stt' OR stt_trx='$stt1') AND tgl_bayar BETWEEN '$awal' AND '$akhir'";
    $querysewa = mysqli_query($koneksidb, $sqlsewa);
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="rental mobil">
    <meta name="author" content="">

    <title>
        <?php echo $pagedesc; ?>
    </title>

    <link href="img/fav.png" rel="icon" type="images/x-icon">

    <!-- Bootstrap Core CSS -->
    <link href="../assets/new/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../assets/new/offline-font.css" rel="stylesheet">
    <link href="../assets/new/custom-report.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../assets/new/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- jQuery -->
    <script src="../assets/new/jquery.min.js"></script>

</head>

<body>
    <section id="header-kop">
        <div class="container-fluid">
            <table class="table table-borderless">
                <tbody>
                    <tr>
                        <td rowspan="3" width="16%" class="text-center">
                            <img src="img/logo2.jpg" alt="logo-dkm" width="80" />
                        </td>
                        <td class="text-center">
                            <h3>Barbershop Melody </h3>
                        </td>
                        <td rowspan="3" width="16%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="text-center">Kurao Pagang, Kec. Nanggalo, Kota Padang, Sumatera Barat</td>
                    </tr>
                </tbody>
            </table>
            <hr class="line-top" />
        </div>
    </section>

    <section id="body-of-report">
        <div class="container-fluid">
            <h4 class="text-center">Laporan Tahunan
                <?php echo $_GET['tahun']; ?>
            </h4>

            <br />
            <table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0"
                width="100%">
                <thead>
                    <tr>
                        <th style="text-align: center;">No</th>
                        <th style="text-align: center;">Bulan</th>
                        <th style="text-align: center;">Jumlah Transaksi</th>
                        <th style="text-align: center;">Total Pemasukan</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $pemasukan_total = 0;
                    $bulan = array(
                        1 => 'Januari',
                        2 => 'Februari',
                        3 => 'Maret',
                        4 => 'April',
                        5 => 'Mei',
                        6 => 'Juni',
                        7 => 'Juli',
                        8 => 'Agustus',
                        9 => 'September',
                        10 => 'Oktober',
                        11 => 'November',
                        12 => 'Desember',
                    );

                    $nomor = 0;
                    for ($i = 1; $i <= 12; $i++) {
                        $no = 0;
                        $pemasukan = 0;
                        $bulan_sekarang = $bulan[$i];
                        mysqli_data_seek($querysewa, 0); // Reset pointer agar bisa looping ulang
                        while ($result = mysqli_fetch_array($querysewa)) {
                            $bulan_transaksi = date('n', strtotime($result['tgl_bayar']));
                            if ($bulan_transaksi == $i) {
                                $no++;
                                $paket = $result['id_paket'];
                                $sqlpaket = "SELECT * FROM paket WHERE id_paket='$paket'";
                                $querypaket = mysqli_query($koneksidb, $sqlpaket);
                                $res = mysqli_fetch_array($querypaket);
                                $pemasukan += $res['harga'];
                            }
                        }
                        if ($no > 0) {
                            $pemasukan_total += $pemasukan;
                            $nomor++;
                            echo '<tr>';
                            echo '<td style="text-align: center;">' . $nomor . '</td>';
                            echo '<td style="text-align: center;">' . $bulan_sekarang . '</td>';
                            echo '<td style="text-align: center;">' . $no . '</td>';
                            echo '<td style="text-align: center;">' . format_rupiah($pemasukan) . '</td>';
                            echo '</tr>';
                        }
                    }
                    ?>
                </tbody>
                <tfoot>
                    <tr>
                        <th colspan="3" style="text-align: center;">Total Akhir</th>
                        <th style="text-align: center;">
                            <?php echo format_rupiah($pemasukan_total); ?>
                        </th>
                    </tr>
                </tfoot>
            </table>

            <br>
            <br>
            <div style="text-align:left;margin-right:125px;">
                <p>Padang,
                    <?= date('d M Y'); ?>
                </p>
                <p>Pimpinan Barbershop Melody</p>
                <br>
                <br>
                <br>
                <?php
                // Ambil nilai nama pimpinan dari parameter URL
                $nama_pimpinan = isset($_GET['nama_pimpinan']) ? $_GET['nama_pimpinan'] : '';

                // Tampilkan nama pimpinan di halaman cetak
                echo "<p>$nama_pimpinan</p>";
                ?>
            </div>
        </div><!-- /.container -->
    </section>

    <!-- Bootstrap Core JavaScript -->
    <script src="../assets/new/bootstrap.min.js"></script>

</body>

</html>
