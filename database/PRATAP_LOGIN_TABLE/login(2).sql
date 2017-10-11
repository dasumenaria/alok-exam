-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2017 at 08:38 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_pratap_primary_2017-2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `class` int(2) NOT NULL,
  `section` int(2) NOT NULL,
  `subject` int(11) NOT NULL,
  `role` int(3) NOT NULL COMMENT '2=Admin and 1=Faculty',
  `test` int(2) NOT NULL,
  `flag` int(3) NOT NULL COMMENT '1=sector, 2=pratap'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `gender`, `username`, `password`, `class`, `section`, `subject`, `role`, `test`, `flag`) VALUES
(2, 'Shailendra Sir', 'Male', 'admin', '5d41402abc4b2a76b9719d911017c592', 6, 1, 5, 2, 9, 2),
(3, 'Ankita Joshi', 'Female', 'ankita.joshi', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 5, 1, 11, 2),
(4, 'Dhrupad S Kacchawa', 'Male', 'dhrupad.kacchawa', '5f4dcc3b5aa765d61d8327deb882cf99', 6, 1, 10, 1, 12, 2),
(5, 'Kartavya Dave', 'Male', 'kartavya', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 9, 1, 13, 2),
(6, 'Deepika Chauhan', 'Female', 'deepika', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 1, 1, 1, 14, 2),
(7, 'Kalpana Bulbule', 'Female', 'kalpana.bulbule', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 1, 11, 1, 15, 2),
(8, 'Manju Lohar', 'Female', 'manju.lohar', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 3, 1, 16, 2),
(9, 'Madalsa Kunwar', 'Female', 'madalsa', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 2, 1, 17, 2),
(10, 'Nitesh Ameta', 'Male', 'nitesh.ameta', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 1, 4, 1, 18, 2),
(11, 'Pinal Jain', 'Female', 'pinal.jain', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 1, 3, 1, 19, 2),
(12, 'Rajni Saxena', 'Female', 'rajni', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 7, 1, 20, 2),
(13, 'Rakhi Saxena', 'Female', 'rakhi.saxena', '5f4dcc3b5aa765d61d8327deb882cf99', 5, 1, 2, 1, 21, 2),
(14, 'Shahina Siddiqui', 'Female', 'shahina.siddiqui', '5f4dcc3b5aa765d61d8327deb882cf99', 7, 1, 1, 1, 22, 2),
(15, 'Purvi Mehta', 'Female', 'purvi', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 1, 1, 23, 2),
(16, 'Tapati D Samanta', 'Female', 'tapati.samanta', '5f4dcc3b5aa765d61d8327deb882cf99', 7, 1, 11, 1, 24, 2),
(17, 'Shriya Jain', 'Male', 'shriya', '5f4dcc3b5aa765d61d8327deb882cf99', 8, 1, 3, 1, 25, 2),
(18, 'Hemlata Paliwal', 'Female', 'hemlata', '5f4dcc3b5aa765d61d8327deb882cf99', 10, 1, 2, 1, 27, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
