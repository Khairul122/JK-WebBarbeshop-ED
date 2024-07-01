<?php
include 'includes/config.php';
include 'includes/format_rupiah.php';
include 'includes/library.php';

$sqlmobil = "SELECT * FROM paket ORDER BY nama_paket ASC";
$querymobil = mysqli_query($koneksidb, $sqlmobil);
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
            <h4 class="text-center">Detail Laporan</h4>
            <h5 class="text-center">Daftar Paket</h5>
            <br />
            <table id="zctb" class="display table table-striped table-bordered table-hover" cellspacing="0"
                width="100%">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama Paket</th>
                        <th>Harga</th>
                        <th>Keterangan</th>
                        <th>Foto</th>


                    </tr>
                </thead>
                <tbody>
                    <?php
                    $nomor = 0;
                    while ($result = mysqli_fetch_array($querymobil)) {
                        $nomor++;
                        ?>
                        <tr>
                            <td style="text-align: center;">
                                <?php echo htmlentities($nomor); ?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo htmlentities($result['nama_paket']); ?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo format_rupiah($result['harga']); ?>
                            </td>
                            <td style="text-align: center;">
                                <?php echo nl2br(htmlentities($result['ket_paket'])); ?>
                            </td>

                            <td style="text-align: center;"><img src="gallery/<?php echo $result['foto_paket']; ?>"
                                    width="5    0px"></td>


                        </tr>
                    <?php } ?>
                </tbody>
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
                <p>(Pimpinan)</p>
            </div>
        </div><!-- /.container -->
    </section>

    <!-- Bootstrap Core JavaScript -->
    <script src="../assets/new/bootstrap.min.js"></script>

</body>

</html>
