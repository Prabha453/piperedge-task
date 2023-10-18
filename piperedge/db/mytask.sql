-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2023 at 09:23 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytask`
--

-- --------------------------------------------------------

--
-- Table structure for table `cards`
--

CREATE TABLE `cards` (
  `card_id` int(10) NOT NULL,
  `pid` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pprice` varchar(200) NOT NULL,
  `discountpercent` varchar(200) NOT NULL,
  `discountedprice` varchar(200) NOT NULL,
  `vendor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cards`
--

INSERT INTO `cards` (`card_id`, `pid`, `pname`, `pprice`, `discountpercent`, `discountedprice`, `vendor`) VALUES
(20, '26', 'test product444', '132.5', '5', '125.875', 'Vendor 5'),
(21, '25', 'test product555', '67', '30', '46.9', 'Vendor 5'),
(22, '21', 'test product475', '52', '0', '52', 'Vendor 3');

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `discount_id` int(10) NOT NULL,
  `vendor` varchar(100) NOT NULL,
  `TRADE A` varchar(100) NOT NULL,
  `TRADE B` varchar(100) NOT NULL,
  `TRADE C` varchar(100) NOT NULL,
  `TRADE D` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `discounts`
--

INSERT INTO `discounts` (`discount_id`, `vendor`, `TRADE A`, `TRADE B`, `TRADE C`, `TRADE D`) VALUES
(1, 'Vendor 1', '12', '12', '0', '6'),
(3, 'Vendor 2', '10', '8', '20', '0'),
(5, 'Vendor 3', '0', '25', '3', '16'),
(6, 'Vendor 4', '9', '0', '16', '30'),
(7, 'Vendor 5', '5', '11', '0', '30');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pid` int(10) NOT NULL,
  `id` int(12) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(200) NOT NULL,
  `tags` varchar(300) NOT NULL,
  `vendor` varchar(200) NOT NULL,
  `discount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pid`, `id`, `name`, `price`, `tags`, `vendor`, `discount`) VALUES
(33, 1, 'test product1', '12.5', 'TRADE A,ice', 'Vendor 5', '0'),
(34, 2, 'test product2', '42.5', 'TRADE B,ice2', 'Vendor 4', '0'),
(35, 3, 'test product3', '200', 'TRADE C,test', 'Vendor 3', '3'),
(36, 4, 'test product4', '52.5', 'TRADE C,test', 'Vendor 2', '0'),
(37, 5, 'test product5', '712.5', 'TRADE D,test', 'Vendor 1', '0'),
(38, 6, 'test product6', '17', 'TRADE A,test', 'Vendor 3', '12'),
(39, 7, 'test product7', '55', 'TRADE A,test', 'Vendor 3', '12'),
(40, 8, 'test product11', '37', 'TRADE D,test', 'Vendor 4', '12'),
(41, 9, 'test product9', '82', 'TRADE C,test', 'Vendor 4', '34'),
(42, 10, 'test product10', '52', 'TRADE B,test', 'Vendor 2', '25'),
(43, 11, 'test product22', '102', 'TRADE B,test', 'Vendor 1', '25'),
(44, 12, 'test product457', '172.5', 'TRADE B,test', 'Vendor 4', '0'),
(45, 13, 'test product15', '100', 'TRADE D,test', 'Vendor 5', '12'),
(46, 14, 'test product33', '99.5', 'TRADE D,test', 'Vendor 5', '12'),
(47, 15, 'test product85', '87.5', 'TRADE A,test', 'Vendor 5', '0'),
(48, 16, 'test product63', '57', 'TRADE A,test', 'Vendor 1', '29'),
(49, 17, 'test product74', '10', 'TRADE C,test', 'Vendor 2', '0'),
(50, 18, 'test product102', '412.5', 'TRADE D,test', 'Vendor 3', '56'),
(51, 19, 'test product358', '112.5', 'TRADE B,test', 'Vendor 4', '0'),
(52, 20, 'test product568', '102', 'TRADE B,test', 'Vendor 5', '15'),
(53, 21, 'test product475', '52', 'TRADE A,test', 'Vendor 3', '12'),
(54, 22, 'test product28', '32', 'TRADE C,test', 'Vendor 2', '0'),
(55, 23, 'test product1405', '12', 'TRADE B,test', 'Vendor 4', '0'),
(56, 24, 'test product389', '584.5', 'TRADE D,test', 'Vendor 1', '0'),
(57, 25, 'test product555', '67', 'TRADE D,test', 'Vendor 5', ''),
(58, 26, 'test product444', '132.5', 'TRADE A,test', 'Vendor 5', '0'),
(59, 27, 'test product333', '42.5', 'TRADE B,test', 'Vendor 2', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cards`
--
ALTER TABLE `cards`
  ADD PRIMARY KEY (`card_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`discount_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cards`
--
ALTER TABLE `cards`
  MODIFY `card_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `discount_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
