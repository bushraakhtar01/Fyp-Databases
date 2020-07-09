-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 12:44 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `queries1`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `id` int(100) NOT NULL,
  `uname` varchar(1000) NOT NULL,
  `email` varchar(1000) NOT NULL,
  `phone` int(100) NOT NULL,
  `date_query` varchar(10000) NOT NULL,
  `comments` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`id`, `uname`, `email`, `phone`, `date_query`, `comments`) VALUES
(2, '', '', 0, '', ''),
(3, '', '', 0, '', ''),
(4, '', '', 0, '', ''),
(5, '', '', 0, '', ''),
(6, '', '', 0, '', ''),
(7, '', '', 0, '', ''),
(8, '', '', 0, '', ''),
(9, '', '', 0, '', ''),
(10, '', '', 0, '', ''),
(11, '', '', 0, '', ''),
(12, '', '', 0, '', ''),
(13, '', '', 0, '', ''),
(14, '', '', 0, '', ''),
(15, '', '', 0, '', ''),
(16, '', '', 0, '', ''),
(17, '', '', 0, '', ''),
(18, 'BUSHRA', 'bushra58@yahoo.com', 65657, 'Thu Jul 09 2020 07:54:26', 'hi'),
(19, 'anusha', 'anushatariq18@gmail.com', 768768, 'Thu Jul 09 2020 07:54:46', 'hi'),
(20, 'BUSHRA', 'j', 2147483647, 'Thu Jul 09 2020 08:00:08', 'hbbhbfgg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
