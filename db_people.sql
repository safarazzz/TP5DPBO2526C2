-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2026 at 05:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_people`
--

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE `person` (
  `id` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `thnLahir` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `jenisKelamin` varchar(255) NOT NULL,
  `posisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`id`, `nama`, `thnLahir`, `kategori`, `jenisKelamin`, `posisi`) VALUES
('P001', 'Gerrard Pique', 2009, 'U17', 'Laki-laki', 'Pivot'),
('P002', 'Sade Adu', 2013, 'U12', 'Perempuan', 'Flank'),
('P003', 'Donald Glover', 2007, 'U20', 'Laki-laki', 'Pivot'),
('P004', 'Analog Chorus', 2012, 'U15', 'Laki-laki', 'Anchor'),
('P005', 'White Skkeleton', 2007, 'U19', 'Perempuan', 'Keeper'),
('P006', 'Delpi Suhariyanto', 2012, 'U15', 'Laki-laki', 'Flank'),
('P007', 'Bentar Bintang', 2007, 'U20', 'Laki-laki', 'Pivot');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
