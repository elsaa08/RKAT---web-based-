-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2022 at 08:08 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tubes_sbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `mak`
--

CREATE TABLE `mak` (
  `kode` int(11) NOT NULL,
  `mak` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mak`
--

INSERT INTO `mak` (`kode`, `mak`) VALUES
(511001, 'Belanja Gaji Pegawai PNS'),
(511002, 'Belanja Gaji Pegawai Non PNS'),
(511003, 'Honorarium Kegiatan/Kepanitiaan/Tim (OB)'),
(511004, 'Honorarium Pengembangan Bahan\r\nAjar/Rencana Pembelajaran Semester'),
(511005, 'Honorarium Pelaksanaan Ujian/Ujian Tulis'),
(511006, 'Honorarium Kegiatan KKN dan PKL');

-- --------------------------------------------------------

--
-- Table structure for table `pagu`
--

CREATE TABLE `pagu` (
  `id_pagu` int(11) NOT NULL,
  `pagu awal` int(11) NOT NULL,
  `pagu_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pagu`
--

INSERT INTO `pagu` (`id_pagu`, `pagu awal`, `pagu_akhir`) VALUES
(1, 100000000, 16800000);

-- --------------------------------------------------------

--
-- Table structure for table `rkat`
--

CREATE TABLE `rkat` (
  `kode` int(11) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `besaran` varchar(100) NOT NULL,
  `kode_mak` int(11) NOT NULL,
  `id_pagu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rkat`
--

INSERT INTO `rkat` (`kode`, `kegiatan`, `deskripsi`, `besaran`, `kode_mak`, `id_pagu`) VALUES
(1, 'Pembangunan dan pengelolaan homepage/website', 'Honor tim Website dan Promosi', '6000000', 511003, 1),
(2, 'Langganan jurnal ilmiah berbasis IT/WEB/e-journal', 'Pengembangan jurnal Jatikom', '10800000', 511003, 1);

--
-- Triggers `rkat`
--
DELIMITER $$
CREATE TRIGGER `hapus` BEFORE DELETE ON `rkat` FOR EACH ROW BEGIN
	UPDATE pagu SET pagu_akhir = pagu_akhir - OLD.besaran
    WHERE id_pagu = OLD.id_pagu;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tambah` AFTER INSERT ON `rkat` FOR EACH ROW BEGIN
	UPDATE pagu SET pagu_akhir = pagu_akhir + NEW.besaran
    WHERE id_pagu = NEW.id_pagu;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mak`
--
ALTER TABLE `mak`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `pagu`
--
ALTER TABLE `pagu`
  ADD PRIMARY KEY (`id_pagu`);

--
-- Indexes for table `rkat`
--
ALTER TABLE `rkat`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `kode_mak` (`kode_mak`),
  ADD KEY `id_pagu` (`id_pagu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pagu`
--
ALTER TABLE `pagu`
  MODIFY `id_pagu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rkat`
--
ALTER TABLE `rkat`
  ADD CONSTRAINT `rkat_ibfk_1` FOREIGN KEY (`kode_mak`) REFERENCES `mak` (`kode`),
  ADD CONSTRAINT `rkat_ibfk_2` FOREIGN KEY (`id_pagu`) REFERENCES `pagu` (`id_pagu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
