-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 08:18 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perusahaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pemasok`
--

CREATE TABLE `data_pemasok` (
  `Id` int(5) NOT NULL,
  `Vendor` varchar(30) NOT NULL,
  `Tanggal` int(2) NOT NULL,
  `Bulan` enum('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `Tahun` int(4) NOT NULL,
  `IPB` varchar(20) NOT NULL,
  `Volume` int(5) NOT NULL,
  `Uraian` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_pemasok`
--

INSERT INTO `data_pemasok` (`Id`, `Vendor`, `Tanggal`, `Bulan`, `Tahun`, `IPB`, `Volume`, `Uraian`) VALUES
(10, 'Adi Karya', 20, 'Januari', 2000, '123', 231, 'jaya'),
(11, '3 Dara Putra Mandiri', 2, 'Juli', 2018, '210', 217577, 'Pasir Cimalaka'),
(12, '3 Dara Putra Mandiri', 3, 'Juli', 2018, '195', 142800, 'Split 1-2'),
(13, 'Tiga Belas Pilar', 4, 'Januari', 2018, '132', 14000, 'besi polos 8'),
(14, 'Cakra Tunggal', 5, 'Juli', 2018, '318', 1388250, 'besi d10'),
(15, 'Krakatau Steel', 6, 'Juni', 2018, '318', 2643424, 'besi d16'),
(16, 'Karakatau Steel', 7, 'Juli', 2018, '318', 373160, 'besi d19'),
(17, 'Bumi Steel Indonesia', 9, 'Juli', 2018, '310', 28993000, 'pc strand 12,7 mm'),
(18, 'kingdom indah', 10, 'Juli', 2018, '289', 0, 'pc wire 5 mm'),
(19, 'Kabatam raya', 11, 'Juli', 2018, '341', 0, 'bendrat'),
(20, 'Intan Mshindo', 10, 'Juli', 2018, '234', 15, 'Wiremesh');

-- --------------------------------------------------------

--
-- Table structure for table `data_produksi`
--

CREATE TABLE `data_produksi` (
  `Id` int(3) NOT NULL,
  `Projek` varchar(30) NOT NULL,
  `Tanggal` int(12) NOT NULL,
  `Bulan` enum('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `Tahun` int(4) NOT NULL,
  `Kode_produk` int(5) NOT NULL,
  `Rencana` int(5) NOT NULL,
  `Realisasi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_produksi`
--

INSERT INTO `data_produksi` (`Id`, `Projek`, `Tanggal`, `Bulan`, `Tahun`, `Kode_produk`, `Rencana`, `Realisasi`) VALUES
(2, 'TOTAL', 20, 'Januari', 2007, 1209, 1212, 1209),
(3, 'Kelapa Dua', 12, 'September', 2019, 12, 200, 10),
(5, 'Gardenia', 2, 'Januari', 2018, 0, 1476, 1446),
(6, 'AEON', 6, 'Januari', 2018, 10, 2476, 1234),
(7, 'Gardenia', 13, 'Januari', 2018, 12, 500, 301),
(8, 'AEON', 20, 'Juli', 2018, 11, 2476, 209),
(9, 'Gardenia', 12, 'Juli', 2018, 12, 123, 10);

-- --------------------------------------------------------

--
-- Table structure for table `katalog`
--

CREATE TABLE `katalog` (
  `id_katalog` int(3) NOT NULL,
  `Material` varchar(20) NOT NULL,
  `Satuan` enum('m2','cm','Kg','gram') NOT NULL,
  `Harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `katalog`
--

INSERT INTO `katalog` (`id_katalog`, `Material`, `Satuan`, `Harga`) VALUES
(1, 'Pasir', 'cm', 10000),
(2, 'balok', 'cm', 2000),
(3, 'Semen', 'Kg', 20000),
(4, 'Besi D13', 'm2', 303003),
(5, 'Kerikil', 'm2', 22000);

-- --------------------------------------------------------

--
-- Table structure for table `kode_produksi`
--

CREATE TABLE `kode_produksi` (
  `Kode_produk` varchar(5) NOT NULL,
  `Tanggal` int(2) NOT NULL,
  `Bulan` enum('Janari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `Tahun` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kode_produksi`
--

INSERT INTO `kode_produksi` (`Kode_produk`, `Tanggal`, `Bulan`, `Tahun`) VALUES
('', 0, '', 0),
('11', 20, 'Juli', 2018),
('12', 13, 'Juli', 2018),
('1209', 12, '', 2007),
('12wa', 12, 'September', 2019),
('PC4B1', 2, 'Juli', 2018),
('wasd', 12, 'November', 2001);

-- --------------------------------------------------------

--
-- Table structure for table `projek`
--

CREATE TABLE `projek` (
  `Tanggal` int(2) NOT NULL,
  `Bulan` enum('Januari','Februari','Maret','April','Mei','Juni','Juli','Agustus','September','Oktober','November','Desember') NOT NULL,
  `Tahun` int(4) NOT NULL,
  `Projek` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projek`
--

INSERT INTO `projek` (`Tanggal`, `Bulan`, `Tahun`, `Projek`) VALUES
(0, 'Januari', 0, 'AEON'),
(1, 'Juli', 2018, 'Gardenia'),
(2, 'Juli', 2018, 'Gardenia'),
(3, 'Juli', 2018, 'AEON'),
(4, 'Juli', 2018, 'AEON'),
(8, 'Juli', 2018, 'Gardenia'),
(10, 'Juli', 2018, 'Gardenia'),
(11, 'Juli', 2018, 'AEON'),
(12, 'Januari', 2007, 'pertamina'),
(13, 'Juli', 2018, 'AEON'),
(20, 'Juli', 2018, 'AEON');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_id` int(5) NOT NULL,
  `Nama` varchar(20) NOT NULL,
  `Admin` enum('Yes','No','','') NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Gambar` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_id`, `Nama`, `Admin`, `Username`, `Password`, `Gambar`) VALUES
(6, 'ida nudiah', 'No', 'idan', '123', 'Aku_tidak_Iri_Hati.png'),
(7, 'Adi Pratama12245', '', 'azhar1209', '2413', 'gundar1.jpg'),
(8, 'asrofah ningrum', 'No', 'nurasrofah', '12345', 'ac4_Wallpaper1_1280x720.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pemasok`
--
ALTER TABLE `data_pemasok`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `data_produksi`
--
ALTER TABLE `data_produksi`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `katalog`
--
ALTER TABLE `katalog`
  ADD PRIMARY KEY (`id_katalog`);

--
-- Indexes for table `kode_produksi`
--
ALTER TABLE `kode_produksi`
  ADD PRIMARY KEY (`Kode_produk`);

--
-- Indexes for table `projek`
--
ALTER TABLE `projek`
  ADD PRIMARY KEY (`Tanggal`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pemasok`
--
ALTER TABLE `data_pemasok`
  MODIFY `Id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `data_produksi`
--
ALTER TABLE `data_produksi`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `katalog`
--
ALTER TABLE `katalog`
  MODIFY `id_katalog` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `User_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
