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
-- Table structure for table `who_growth_standard`
--

CREATE TABLE `who_growth_standard` (
  `id` int(11) NOT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `usia_bulan` int(11) DEFAULT NULL,
  `berat_badan` float DEFAULT NULL,
  `tinggi_badan` float DEFAULT NULL,
  `lingkar_kepala` float DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `who_growth_standard`
--

INSERT INTO `who_growth_standard` (`id`, `jenis_kelamin`, `usia_bulan`, `berat_badan`, `tinggi_badan`, `lingkar_kepala`, `kategori`) VALUES
(1, 'L', 0, 2.3, 34.9, 24.1, 'Gizi Buruk'),
(2, 'L', 0, 3, 44.9, 31.1, 'Berat Badan Kurang'),
(3, 'L', 0, 3.3, 49.9, 34.5, 'Normal'),
(4, 'L', 0, 3.6, 54.9, 38, 'Berat Badan Lebih'),
(5, 'P', 0, 2.2, 34.4, 23.7, 'Gizi Buruk'),
(6, 'P', 0, 2.9, 44.2, 30.5, 'Berat Badan Kurang'),
(7, 'P', 0, 3.2, 49.1, 33.9, 'Normal'),
(8, 'P', 0, 3.5, 54, 37.3, 'Berat Badan Lebih'),
(9, 'L', 1, 2.4, 36, 24.5, 'Gizi Buruk'),
(10, 'L', 1, 3.1, 46.3, 31.5, 'Berat Badan Kurang'),
(11, 'L', 1, 3.5, 51.4, 35, 'Normal'),
(12, 'L', 1, 3.8, 56.5, 38.5, 'Berat Badan Lebih'),
(13, 'P', 1, 2.4, 35.4, 24.1, 'Gizi Buruk'),
(14, 'P', 1, 3.1, 45.5, 31, 'Berat Badan Kurang'),
(15, 'P', 1, 3.4, 50.6, 34.4, 'Normal'),
(16, 'P', 1, 3.7, 55.6, 37.8, 'Berat Badan Lebih'),
(17, 'L', 2, 2.6, 37, 24.9, 'Gizi Buruk'),
(18, 'L', 2, 3.3, 47.6, 32, 'Berat Badan Kurang'),
(19, 'L', 2, 3.7, 52.9, 35.5, 'Normal'),
(20, 'L', 2, 4.1, 58.2, 39.1, 'Berat Badan Lebih'),
(21, 'P', 2, 2.5, 36.4, 24.4, 'Gizi Buruk'),
(22, 'P', 2, 3.2, 46.8, 31.4, 'Berat Badan Kurang'),
(23, 'P', 2, 3.6, 52, 34.9, 'Normal'),
(24, 'P', 2, 3.9, 57.3, 38.4, 'Berat Badan Lebih'),
(25, 'L', 3, 2.7, 38.1, 25.2, 'Gizi Buruk'),
(26, 'L', 3, 3.5, 49, 32.4, 'Berat Badan Kurang'),
(27, 'L', 3, 3.9, 54.4, 36.1, 'Normal'),
(28, 'L', 3, 4.3, 59.8, 39.7, 'Berat Badan Lebih'),
(29, 'P', 3, 2.6, 37.5, 24.8, 'Gizi Buruk'),
(30, 'P', 3, 3.4, 48.2, 31.9, 'Berat Badan Kurang'),
(31, 'P', 3, 3.8, 53.5, 35.4, 'Normal'),
(32, 'P', 3, 4.2, 58.9, 39, 'Berat Badan Lebih'),
(33, 'L', 4, 2.9, 39.1, 25.6, 'Gizi Buruk'),
(34, 'L', 4, 3.7, 50.3, 32.9, 'Berat Badan Kurang'),
(35, 'L', 4, 4.1, 55.9, 36.6, 'Normal'),
(36, 'L', 4, 4.5, 61.5, 40.2, 'Berat Badan Lebih'),
(37, 'P', 4, 2.8, 38.5, 25.2, 'Gizi Buruk'),
(38, 'P', 4, 3.6, 49.5, 32.3, 'Berat Badan Kurang'),
(39, 'P', 4, 4, 55, 35.9, 'Normal'),
(40, 'P', 4, 4.4, 60.5, 39.5, 'Berat Badan Lebih'),
(41, 'L', 5, 3, 40.2, 26, 'Gizi Buruk'),
(42, 'L', 5, 3.9, 51.6, 33.4, 'Berat Badan Kurang'),
(43, 'L', 5, 4.3, 57.4, 37.1, 'Normal'),
(44, 'L', 5, 4.7, 63.1, 40.8, 'Berat Badan Lebih'),
(45, 'P', 5, 2.9, 39.5, 25.5, 'Gizi Buruk'),
(46, 'P', 5, 3.7, 50.8, 32.8, 'Berat Badan Kurang'),
(47, 'P', 5, 4.2, 56.5, 36.4, 'Normal'),
(48, 'P', 5, 4.6, 62.1, 40.1, 'Berat Badan Lebih'),
(49, 'L', 6, 3.1, 41.2, 26.3, 'Gizi Buruk'),
(50, 'L', 6, 4, 53, 33.8, 'Berat Badan Kurang'),
(51, 'L', 6, 4.5, 58.9, 37.6, 'Normal'),
(52, 'L', 6, 4.9, 64.8, 41.4, 'Berat Badan Lebih'),
(53, 'P', 6, 3, 40.6, 25.9, 'Gizi Buruk'),
(54, 'P', 6, 3.9, 52.1, 33.3, 'Berat Badan Kurang'),
(55, 'P', 6, 4.4, 57.9, 37, 'Normal'),
(56, 'P', 6, 4.8, 63.7, 40.6, 'Berat Badan Lebih'),
(57, 'L', 7, 3.3, 42.3, 26.7, 'Gizi Buruk'),
(58, 'L', 7, 4.2, 54.3, 34.3, 'Berat Badan Kurang'),
(59, 'L', 7, 4.7, 60.4, 38.1, 'Normal'),
(60, 'L', 7, 5.2, 66.4, 41.9, 'Berat Badan Lebih'),
(61, 'P', 7, 3.2, 41.6, 26.2, 'Gizi Buruk'),
(62, 'P', 7, 4.1, 53.5, 33.7, 'Berat Badan Kurang'),
(63, 'P', 7, 4.5, 59.4, 37.5, 'Normal'),
(64, 'P', 7, 5, 65.4, 41.2, 'Berat Badan Lebih'),
(65, 'L', 8, 3.4, 43.3, 27, 'Gizi Buruk'),
(66, 'L', 8, 4.4, 55.7, 34.8, 'Berat Badan Kurang'),
(67, 'L', 8, 4.9, 61.9, 38.6, 'Normal'),
(68, 'L', 8, 5.4, 68.1, 42.5, 'Berat Badan Lebih'),
(69, 'P', 8, 3.3, 42.6, 26.6, 'Gizi Buruk'),
(70, 'P', 8, 4.3, 54.8, 34.2, 'Berat Badan Kurang'),
(71, 'P', 8, 4.7, 60.9, 38, 'Normal'),
(72, 'P', 8, 5.2, 67, 41.8, 'Berat Badan Lebih'),
(73, 'L', 9, 3.6, 44.4, 27.4, 'Gizi Buruk'),
(74, 'L', 9, 4.6, 57, 35.2, 'Berat Badan Kurang'),
(75, 'L', 9, 5.1, 63.4, 39.2, 'Normal'),
(76, 'L', 9, 5.6, 69.7, 43.1, 'Berat Badan Lebih'),
(77, 'P', 9, 3.4, 43.6, 26.9, 'Gizi Buruk'),
(78, 'P', 9, 4.4, 56.1, 34.6, 'Berat Badan Kurang'),
(79, 'P', 9, 4.9, 62.4, 38.5, 'Normal'),
(80, 'P', 9, 5.4, 68.6, 42.3, 'Berat Badan Lebih'),
(81, 'L', 10, 3.7, 45.4, 27.8, 'Gizi Buruk'),
(82, 'L', 10, 4.8, 58.4, 35.7, 'Berat Badan Kurang'),
(83, 'L', 10, 5.3, 64.9, 39.7, 'Normal'),
(84, 'L', 10, 5.8, 71.4, 43.6, 'Berat Badan Lebih'),
(85, 'P', 10, 3.6, 44.7, 27.3, 'Gizi Buruk'),
(86, 'P', 10, 4.6, 57.4, 35.1, 'Berat Badan Kurang'),
(87, 'P', 10, 5.1, 63.8, 39, 'Normal'),
(88, 'P', 10, 5.6, 70.2, 42.9, 'Berat Badan Lebih'),
(89, 'L', 11, 3.8, 46.5, 28.1, 'Gizi Buruk'),
(90, 'L', 11, 4.9, 59.7, 36.2, 'Berat Badan Kurang'),
(91, 'L', 11, 5.5, 66.4, 40.2, 'Normal'),
(92, 'L', 11, 6, 73, 44.2, 'Berat Badan Lebih'),
(93, 'P', 11, 3.7, 45.7, 27.6, 'Gizi Buruk'),
(94, 'P', 11, 4.8, 58.8, 35.5, 'Berat Badan Kurang'),
(95, 'P', 11, 5.3, 65.3, 39.5, 'Normal'),
(96, 'P', 11, 5.8, 71.8, 43.4, 'Berat Badan Lebih'),
(97, 'L', 12, 4, 47.5, 28.5, 'Gizi Buruk'),
(98, 'L', 12, 5.1, 61.1, 36.6, 'Berat Badan Kurang'),
(99, 'L', 12, 5.7, 67.9, 40.7, 'Normal'),
(100, 'L', 12, 6.2, 74.7, 44.8, 'Berat Badan Lebih'),
(101, 'P', 12, 3.9, 46.7, 28, 'Gizi Buruk'),
(102, 'P', 12, 5, 60.1, 36, 'Berat Badan Kurang'),
(103, 'P', 12, 5.5, 66.8, 40, 'Normal'),
(104, 'P', 12, 6.1, 73.5, 44, 'Berat Badan Lebih');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `who_growth_standard`
--
ALTER TABLE `who_growth_standard`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `who_growth_standard`
--
ALTER TABLE `who_growth_standard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
