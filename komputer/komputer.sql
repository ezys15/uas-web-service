-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Jan 2016 pada 17.04
-- Versi Server: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `komputer`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laptops`
--

CREATE TABLE IF NOT EXISTS `laptops` (
  `id` int(11) NOT NULL,
  `brand` varchar(30) NOT NULL,
  `model` varchar(40) NOT NULL,
  `release_year` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laptops`
--

INSERT INTO `laptops` (`id`, `brand`, `model`, `release_year`) VALUES
(1, 'Asus', 'XZ', '2015-11-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `parts`
--

CREATE TABLE IF NOT EXISTS `parts` (
  `id` int(11) NOT NULL,
  `laptop_id` varchar(30) NOT NULL,
  `part_category` varchar(30) NOT NULL,
  `part_number` varchar(25) NOT NULL,
  `description` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `parts_categories`
--

CREATE TABLE IF NOT EXISTS `parts_categories` (
  `id` int(11) NOT NULL,
  `categories_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laptops`
--
ALTER TABLE `laptops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `part_category` (`part_category`),
  ADD KEY `laptop_id` (`laptop_id`);

--
-- Indexes for table `parts_categories`
--
ALTER TABLE `parts_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laptops`
--
ALTER TABLE `laptops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `parts_categories`
--
ALTER TABLE `parts_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
