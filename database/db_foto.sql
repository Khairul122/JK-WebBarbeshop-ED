-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2024 at 01:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_foto`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `Image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `UserName`, `Password`, `updationDate`, `Image`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-04-19 06:35:12', '29032019003635r.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL,
  `tgl_posting` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`, `id`) VALUES
(1, 'ME', 'gome@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1, 0),
(3, 'annisa', 'melody@tukangfoto.com', '081279531683', 'dfyyfha,faliafhwef', '2024-02-15 17:33:19', NULL, 0),
(4, 'nisa', 'nisa@gmail.com', '081275168370', 'hahtsfbgebdb', '2024-02-16 07:22:23', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext DEFAULT NULL,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`, `id`) VALUES
(1, 'Kurao Pagang, Kec. Nanggalo, Kota Padang, Sumatera Barat', 'barbershopmelody@gmail.com', '08124567812', 1);

-- --------------------------------------------------------

--
-- Table structure for table `galery`
--

CREATE TABLE `galery` (
  `id_galery` int(11) NOT NULL,
  `nama_galery` varchar(100) NOT NULL,
  `foto_galery` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`) VALUES
(2, 'Budi Hartono', 'budi@gmail.com', '25d55ad283aa400af464c76d713c07ad', '082165443677', 'Padang'),
(3, 'annisa', 'annisa@gmail.com', 'c9d2cce909ea37234be8af1a1f958805', '081275168370', 'siteba'),
(4, 'annisa', 'annisaaulia@gmail.com', 'ff6d11fad3287047fcafb104c276e63a', '081275168370', 'siteba'),
(5, 'annisaauliasabrina', 'annisaauliasabrina@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '083179531683', 'padang'),
(6, 'Rudi', 'rudi@gmail.com', '25d55ad283aa400af464c76d713c07ad', '082165443677', 'Padang'),
(7, 'user', 'user@gmail.com', '25d55ad283aa400af464c76d713c07ad', '082165443677', 'Padang'),
(8, 'Andika', 'user1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '082165443677', 'Padang'),
(9, 'Andika', 'andika@gmail.com', '25d55ad283aa400af464c76d713c07ad', '0821234567', 'Padang'),
(10, 'budi', 'budiman@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '082165443677', 'Lhoksuemawe');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_paket` text NOT NULL,
  `foto_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga`, `ket_paket`, `foto_paket`) VALUES
(8, 'PAKET GANTENG MAKSIMAL', 50000, 'HAIR SHAVING\r\nHAIR CUTTING\r\n', '21062024012608p.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '											<p align=\"justify\"><span style=\"color: rgb(153, 0, 0); font-size: small; font-weight: 700;\">This is Therms and Conditions</span></p><p align=\"justify\"><br></p>											'),
(5, 'Rekening', 'rekening', '																																												123456789 Bank BRI a/n Barbershop Melody\r\n										'),
(2, 'Privacy Policy', 'privacy', '											<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">This is Privacy Policy</span>'),
(3, 'Tentang Kami', 'aboutus', '																																												<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Kami menyediakan berbagai macam paket jasa fotografi untuk anda</span>'),
(11, 'FAQs', 'faqs', '																						<div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Q : Bagaimana cara booking paket jasa fotografi disini?</span></div><div style=\"text-align: justify;\"><span style=\"font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">A : Pertama anda harus mendaftar terlebih dahulu sebagai member melalui menu yang telah disediakan.</span></div>																						');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_trx` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `tgl_trx` date NOT NULL,
  `stt_trx` varchar(50) NOT NULL,
  `tgl_take` date NOT NULL,
  `jam_take` varchar(20) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bukti_bayar` text NOT NULL,
  `ubah_tgl` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_trx`, `email`, `id_paket`, `tgl_trx`, `stt_trx`, `tgl_take`, `jam_take`, `catatan`, `tgl_bayar`, `bukti_bayar`, `ubah_tgl`) VALUES
('15022024111851', 'budi@gmail.com', 2, '2024-02-15', 'Selesai', '2024-02-15', '07:00', 'done', '2024-02-21', '15022024231933WEDDING (6).png', 0),
('16022024031011', 'annisaauliasabrina@gmail.com', 2, '2024-02-16', 'Selesai', '2024-02-16', '15:00', 'booking', '2024-02-21', '21022024040852WEDDING (8).png', 0),
('18022024000340', 'budi@gmail.com', 2, '2024-02-18', 'Selesai', '2024-02-19', '08:00', 'yyyy\r\n', '2024-02-21', '18022024120412a26c56a4-e97e-4529-abe4-3624eedb70fb.jpg', 0),
('18022024131748', 'annisaauliasabrina@gmail.com', 2, '2024-02-18', 'Selesai', '2024-02-19', '10:00', 'done', '2024-02-21', '19022024011913a26c56a4-e97e-4529-abe4-3624eedb70fb.jpg', 0),
('19022024004347', 'user1@gmail.com', 3, '2024-02-19', 'Selesai', '2024-02-19', '07:00', 'Done', '2024-02-21', '21022024040852WEDDING (8).png', 0),
('19022024013620', 'budi@gmail.com', 3, '2024-02-19', 'Selesai', '2024-02-19', '13:00', 'done', '2024-02-01', '19022024133926a26c56a4-e97e-4529-abe4-3624eedb70fb.jpg', 0),
('20022024220735', 'andika@gmail.com', 2, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'On time', '2024-02-02', '21022024040852WEDDING (8).png', 0),
('20022024220834', 'andika@gmail.com', 3, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'On time', '2024-02-03', '21022024040903WEDDING (7).png', 0),
('20022024220919', 'andika@gmail.com', 3, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'On time\r\n', '2024-02-04', '21022024040934WEDDING (8).png', 0),
('20022024220950', 'andika@gmail.com', 4, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time\r\n', '2024-02-05', '21022024040852WEDDING (8).png', 0),
('20022024221058', 'andika@gmail.com', 3, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time\r\n', '2023-02-01', '21022024040852WEDDING (8).png', 0),
('20022024221112', 'andika@gmail.com', 4, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time', '2023-03-01', '21022024040852WEDDING (8).png', 0),
('20022024221156', 'andika@gmail.com', 3, '2024-02-20', 'Selesai', '2024-02-21', '08:00', 'on time\r\n', '2023-04-01', '21022024040852WEDDING (8).png', 0),
('20022024221209', 'andika@gmail.com', 4, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time', '2023-05-01', '21022024040852WEDDING (8).png', 0),
('20022024221228', 'andika@gmail.com', 4, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time\r\n', '2023-05-01', '21022024040852WEDDING (8).png', 0),
('20022024221248', 'andika@gmail.com', 4, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time\r\n', '0000-00-00', '21022024040852WEDDING (8).png', 0),
('20022024221326', 'andika@gmail.com', 2, '2024-02-20', 'Selesai', '2024-02-21', '08:00', 'on time', '0000-00-00', '21022024040852WEDDING (8).png', 0),
('20022024221341', 'andika@gmail.com', 4, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time', '0000-00-00', '21022024040852WEDDING (8).png', 0),
('20022024221352', 'andika@gmail.com', 3, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time', '0000-00-00', '21022024040852WEDDING (8).png', 0),
('20022024221405', 'andika@gmail.com', 3, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time', '0000-00-00', '21022024040852WEDDING (8).png', 0),
('20022024221415', 'andika@gmail.com', 2, '2024-02-20', 'Selesai', '2024-02-21', '07:00', 'on time', '0000-00-00', '21022024040852WEDDING (8).png', 0),
('21062024010933', 'budiman@gmail.com', 3, '2024-06-21', 'Sudah Dibayar', '2024-06-21', '07:00', 'hai', '2024-06-21', '21062024061312kain tenun sarung lombok.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `galery`
--
ALTER TABLE `galery`
  ADD PRIMARY KEY (`id_galery`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_trx`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `galery`
--
ALTER TABLE `galery`
  MODIFY `id_galery` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
