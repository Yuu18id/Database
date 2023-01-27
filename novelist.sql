-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 05:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novelist`
--

-- --------------------------------------------------------

--
-- Table structure for table `novel`
--

CREATE TABLE `novel` (
  `id` int(11) NOT NULL,
  `judul` varchar(45) NOT NULL,
  `author` varchar(45) NOT NULL,
  `genre` varchar(45) NOT NULL,
  `sinopsis` varchar(1000) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `novel`
--

INSERT INTO `novel` (`id`, `judul`, `author`, `genre`, `sinopsis`, `createdAt`, `updatedAt`) VALUES
(1, 'Because I Like You', 'Megumi Amane', 'Romance, School, Comedy', 'Si MC, Yoshizumi Yuya, dipaksa untuk melunasi hutang yang ditinggalkan oleh orang tuanya yang telah melarikan diri ke luar negeri. Teman sekelasnya, Hitotsuba Kaede, yang terpilih sebagai siswi paling imut di Jepang, menyelamatkannya dari krisis hidup dan mati ini. Namun, ada syarat untuk itu. Dan syarat yang harus dipenuhi sebagai imbalan untuk mengambil alih hutangnya adalah -\r\n\"Sebagai imbalan atas pelunasan hutang tersebut, kau harus - tinggal bersama ku\".\r\n\r\n“Kenapa kok bisa sampai jadi begitu?!”\r\n\r\nKehidupan sehari-hari Yuya ambruk pada hari ini.\r\n\r\n“Yuya-kun. Ayo mandi bersama.”\r\n\r\n“Yuya-kun, tolong jadilah bantal pelukku.”\r\n\r\n“Sudah cukup, Hitotsuba-san!”\r\n\r\nRomcom antara Hitotsuba Kaede yang cantik tapi lugu dan Yoshizumi Yuya yang serius dan keras kepala, dimulai sekarang!', '2023-01-27 11:56:05', '2023-01-27 11:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `isAdmin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `isAdmin`) VALUES
(1, 'subaganteng', 'suba12345', 1),
(2, 'bayuuuu', 'bayu12345', 1),
(3, 'martinqt', 'martin12345', 1),
(4, 'tongam', 'tongam12345', 1),
(5, 'herman', 'hermain12345', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `novel`
--
ALTER TABLE `novel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `novel`
--
ALTER TABLE `novel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
