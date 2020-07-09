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
-- Database: `login_api`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(0, 'bushra@gmail.com', '$2y$10$a.cBmKDC5B4TXBU0eRpW8upVgQBu2rIVuuQTba4BhQlhkpIRbPWom'),
(0, 'batool@gmail.com', '$2y$10$2LplGad9RJfXAStOkaCApOcSmtSJW1OiEEAaW5hanaiUoMsQGHAgC'),
(0, 'anusha@gmail.com', '$2y$10$kDD.Ws2ZCHQQv7305ETA2.AvmU.Wel9xtGGVWBdmmnZUkm8cOiqpG'),
(0, 'xyz@gmail.com', '$2y$10$UELvSUdsXhi.42/zYAouhObFwhnofdG.aaYmLmT2J0fQZ.1QKy2wC');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
