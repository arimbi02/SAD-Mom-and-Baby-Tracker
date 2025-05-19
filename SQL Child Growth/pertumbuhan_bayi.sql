-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2025 at 10:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `pertumbuhan_bayi`
--

CREATE TABLE `pertumbuhan_bayi` (
  `id` int(11) NOT NULL,
  `id_bayi` int(11) DEFAULT NULL,
  `tanggal_pengukuran` date DEFAULT NULL,
  `usia_bulan` int(11) DEFAULT NULL,
  `berat_badan` float DEFAULT NULL,
  `tinggi_badan` float DEFAULT NULL,
  `lingkar_kepala` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pertumbuhan_bayi`
--

INSERT INTO `pertumbuhan_bayi` (`id`, `id_bayi`, `tanggal_pengukuran`, `usia_bulan`, `berat_badan`, `tinggi_badan`, `lingkar_kepala`) VALUES
(1, 2, '2025-04-22', 1, 5, 60, 37),
(2, 2, '2025-03-22', 0, 3, 50, 35),
(3, 3, '2025-05-19', 10, 5, 63, 39);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pertumbuhan_bayi`
--
ALTER TABLE `pertumbuhan_bayi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_bayi` (`id_bayi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pertumbuhan_bayi`
--
ALTER TABLE `pertumbuhan_bayi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pertumbuhan_bayi`
--
ALTER TABLE `pertumbuhan_bayi`
  ADD CONSTRAINT `pertumbuhan_bayi_ibfk_1` FOREIGN KEY (`id_bayi`) REFERENCES `bayi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
