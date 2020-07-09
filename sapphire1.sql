-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2020 at 12:43 AM
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
-- Database: `sapphire1`
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
-- Table structure for table `sapphiretable`
--

CREATE TABLE `sapphiretable` (
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
-- Dumping data for table `sapphiretable`
--

INSERT INTO `sapphiretable` (`id`, `name`, `code`, `brand`, `color`, `material`, `price`, `type`, `size_id`, `category_id`, `image`) VALUES
(1, 'SPU 1452-biege-3pc', '2144', 'sapphire', 'biege', 'lawn', '4000', '3piece', 2, 3, 'sap1.jpg'),
(2, 'SPU 1423-black-1pc', '2453', 'sapphire', 'black', 'lawn', '3050', '1piece', 3, 2, 'sap2.jpg'),
(3, 'SPU 7623-yellow-2pc', '2545', 'sapphire', 'yellow', 'lawn', '2200', '2piece', 3, 1, 'sap3.jpg'),
(4, 'SPU 4512-green-3pc', '2288', 'sapphire', 'green', 'cambric', '4550', '3piece', 4, 4, 'sap4.jpg'),
(5, 'SPU 4231-purple-1pc', '3451', 'sapphire', 'purple', 'cambric', '4510', '1piece', 2, 4, 'sap5.jpg'),
(6, 'SPU 1143-maroon-2pc', '2354', 'sapphire', 'maroon', 'poly viscose', '3400', '2piece', 5, 1, 'sap6.jpg'),
(7, 'SPU 1254-green-3pc', '6521', 'sapphire', 'green', 'medium silk', '6000', '3piece', 4, 5, 'sap7.jpg'),
(8, 'SPU 1432-blue-2pc', '4317', 'sapphire', 'blue', 'medium silk', '4330', '2piece', 5, 1, 'sap8.jpg'),
(9, 'SPU 1432-black-3pc', '3411', 'sapphire', 'black', 'khaddar', '12000', '3piece', 1, 4, 'sap9.jpg'),
(10, 'SPU 1243-white-1pc', '4321', 'sapphire', 'white', 'poly viscose', '5000', '1piece', 4, 2, 'sap10.jpg'),
(11, 'SPU 1654-blue-2pc', '1432', 'sapphire', 'blue', 'medium silk', '4600', '2piece', 5, 1, 'sap11.jpg'),
(12, 'SKU  H192-001A-G', '3567', 'sapphire', 'blue', 'poly viscose', '8000', '3piece', 6, 4, 'sap12.jpg'),
(13, 'SKU BSSK93P041-BLACK', '3456', 'sapphire', 'black', 'poly viscose', '9000', '3piece', 6, 5, 'sap13.jpg'),
(14, 'SKU BMSK93P010-L-GREEN', '5679', 'sapphire', 'green', 'cross hatch', '4500', '2piece', 6, 1, 'sap14.jpg'),
(15, 'SKU SDK193P005-PEACH', '9741', 'sapphire', 'peach', 'lawn', '6900', '1piece', 6, 2, 'sap15.jpg'),
(16, 'SKU WRSK93P002-RUST', '1256', 'sapphire', 'orange', 'cambric', '2260', '1piece', 6, 4, 'sap16.jpg'),
(17, 'SKU WRSK93P004-O-MAR00N', '7890', 'sapphire', 'maroon', 'medium silk', '3900', '1piece', 6, 4, 'sap17.jpg'),
(18, 'SKU WSSK93P024-RED', '8712', 'sapphire', 'red', 'khaddar', '4450', '2piece', 6, 1, 'sap18.jpg'),
(19, 'SKU WSSK93P038-BEIGE', '7612', 'sapphire', 'biege', 'medium silk', '4000', '3piece', 6, 5, 'sap19.jpg'),
(20, 'SKU WSSK93P040-D-BLUE', '4310', 'sapphire', 'blue', 'cross hatch', '5400', '1piece', 6, 2, 'sap20.jpg');

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
-- Indexes for table `sapphiretable`
--
ALTER TABLE `sapphiretable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `size_id` (`size_id`),
  ADD KEY `category_id` (`category_id`);

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
-- AUTO_INCREMENT for table `sapphiretable`
--
ALTER TABLE `sapphiretable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sapphiretable`
--
ALTER TABLE `sapphiretable`
  ADD CONSTRAINT `sapphiretable_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `sapphiretable_ibfk_2` FOREIGN KEY (`size_id`) REFERENCES `size` (`size_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
