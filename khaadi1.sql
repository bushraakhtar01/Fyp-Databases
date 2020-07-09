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
-- Database: `khaadi1`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(10) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'shirtshalwar'),
(2, 'kurti'),
(3, 'fancy'),
(4, 'longshirt'),
(5, 'shirt shalwar dupatta');

-- --------------------------------------------------------

--
-- Table structure for table `khaaditable`
--

CREATE TABLE `khaaditable` (
  `id` int(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `brand` varchar(100) NOT NULL,
  `color` varchar(100) NOT NULL,
  `material` varchar(100) NOT NULL,
  `price` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size_id` int(10) NOT NULL,
  `category_id` int(10) NOT NULL,
  `image` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `khaaditable`
--

INSERT INTO `khaaditable` (`id`, `name`, `code`, `brand`, `color`, `material`, `price`, `type`, `size_id`, `category_id`, `image`) VALUES
(1, 'SKU J20101-Grey-2Pc', '1234', 'khaadi', 'grey', 'lawn', '1500', '2piece', 4, 1, '1.jpg'),
(21, 'SKU  J20101-Beige-2Pc', '2431', 'khaadi', 'biege', 'lawn', '1500', '2piece', 1, 1, '2.jpg'),
(22, 'SKU KA19510-Red-3Pc', '2677', 'khaadi', 'red', 'khaddar', '2500', '3piece', 2, 5, '3.jpg'),
(23, 'SKU KZ19503-Purple-2Pc', '2480', 'khaadi', 'purple', 'khaddar', '3200', '2piece', 3, 5, '4.jpg'),
(24, 'SKU KB19513-Green-3Pc', '3652', 'khaadi', 'green', 'khaddar', '2900', '3piece', 5, 5, '5.jpg'),
(25, 'SKU CI19505-Green-2Pc', '5678', 'khaadi', 'green', 'cambric', '2200', '2piece', 2, 1, '6.jpg'),
(26, 'SKU CC19505-Black-3Pc', '4569', 'khaadi', 'black', 'cambric', '6000', '3piece', 4, 5, '7.jpg'),
(27, 'SKU KA19512-Yellow-3Pc', '2345', 'khaadi', 'yellow', 'cross hatch', '2000', '3piece', 4, 5, '8.jpg'),
(28, 'SKU FSP195200-Blue', '4652', 'khaadi', 'blue', 'poly viscose', '4500', '2piece', 4, 1, '9.jpg'),
(29, 'SKU LCV19501-Maroon-3Pc', '7416', 'khaadi', 'maroon', 'velvet', '12000', '3piece', 2, 5, '10.jpg'),
(30, 'SKU LCV19504-Green-3Pc', '3431', 'khaadi', 'green', 'velvet', '12000', '3piece', 6, 5, '11.jpg'),
(31, 'LCV19503-Black-3Pc', '9794', 'khaadi', 'black ', 'velvet', '12000', '3piece', 6, 5, '12.jpg'),
(32, 'SKU LCV19502-Blue-3Pc', '3461', 'khaadi', 'blue', 'velvet', '12000', '3piece', 6, 5, '13.jpg'),
(33, 'SKU LCMS19403-Purple-3Pc', '2290', 'khaadi', 'purple', 'medium silk', '9576', '3piece', 6, 5, '14.jpg'),
(34, 'SKU LCMS19406-Pink-3Pc', '5927', 'khaadi', 'pink', 'medium silk', '9576', '3piece', 6, 5, '15.jpg'),
(35, 'SKU  LCMS19405-Beige-3Pc', '6512', 'khaadi', 'biege', 'medium silk', '9576', '3piece', 6, 5, '16.jpg'),
(36, 'SKU  CHI19502-Green-2Pc', '1254', 'khaadi', 'green', 'cross hatch', '2400', '2piece', 6, 1, '17.jpg'),
(37, 'PVI19505-Green-2Pc', '5412', 'khaadi', 'green', 'poly viscose', '2200', '2piece', 6, 1, '18.jpg'),
(38, 'SKU  PVI19506-Yellow-2Pc', '5431', 'khaadi', 'yellow', 'poly viscose', '2200', '2piece', 6, 1, '19.jpg'),
(39, 'SKU  PVI19508-Black-2Pc', '0911', 'khaadi', 'black', 'poly viscose', '2200', '2piece', 6, 1, '20.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` int(10) NOT NULL,
  `size_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`size_id`, `size_type`) VALUES
(1, 'extrasmall'),
(2, 'small'),
(3, 'medium'),
(4, 'large'),
(5, 'extra large'),
(6, 'no size');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `khaaditable`
--
ALTER TABLE `khaaditable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `size_id` (`size_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `khaaditable`
--
ALTER TABLE `khaaditable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `khaaditable`
--
ALTER TABLE `khaaditable`
  ADD CONSTRAINT `khaaditable_ibfk_3` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `khaaditable_ibfk_4` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
