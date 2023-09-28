-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2023 at 08:57 PM
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
-- Database: `ewaste`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `adname` varchar(100) NOT NULL,
  `adrole` varchar(150) NOT NULL,
  `ademail` varchar(150) NOT NULL,
  `adpass` varchar(100) NOT NULL,
  `adpic` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `adname`, `adrole`, `ademail`, `adpass`, `adpic`) VALUES
(1, 'Alan Joseph', 'Site Administrator', 'aj@gmail.com', '123', 'team1.jpg'),
(2, 'Steffy Somy', 'Content Administrator', 'ss@gmail.com', '123', 'team2.jpg'),
(3, 'Elna Saji', 'Marketing Manager', 'es@gmail.com', '123', 'team3.jpg'),
(4, 'Noel Xavier', 'Financial Administrator', 'nx@gmail.com', '123', 'team4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `bid` int(11) NOT NULL,
  `company` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `profilepic` varchar(100) NOT NULL,
  `isodoc` varchar(100) NOT NULL,
  `r2doc` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`bid`, `company`, `email`, `password`, `phone`, `profilepic`, `isodoc`, `r2doc`, `status`) VALUES
(22, 'Buyer1', 'buyer1@gmail.com', '123', '123', '', '', '', 'PENDING'),
(23, 'Buyer2', 'buyer2@gmail.com', '123', '123', '', '', '', 'PENDING'),
(24, 'Buyer3', 'buyer3@gmail.com', '123', '123', '', '', '', 'APPROVED'),
(25, 'Buyer4', 'buyer4@gmail.com', '123', '123', '', '', '', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `pid` int(11) NOT NULL,
  `sid` int(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `descp` varchar(250) NOT NULL,
  `client` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `category` varchar(100) NOT NULL,
  `image1` varchar(150) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`pid`, `sid`, `title`, `descp`, `client`, `address`, `phone`, `email`, `category`, `image1`, `status`) VALUES
(3, 1, 'Snapdragon 555', 'Mobile chip 555', 'Scarpper', 'XY Ltd,\r\nPalarivattam 123,\r\nKochi', '4521365874', 'scrapper@gmail.com', 'Mobile Waste', 'nvc (6).jpg', 'APPROVED'),
(4, 1, 'medialtek555', 'Mobile chip 555', 'Scarpper', 'XY Ltd23,\r\nPalarivattam 123,\r\nKochi', '5555', 'scrapper@gmail.com', 'Mobile Waste', 'nvc (6).jpg', 'PENDING'),
(5, 1, 'Kirin 9000s', 'Huaweis chip', 'Scarpper', 'Kgfi,\r\nigsd,\r\njlvhs', '123647963', 'scrapper@gmail.com', 'Mobile Waste', 'nvc (4).jpg', 'APPROVED'),
(6, 1, 'Ryzen 5 4600H', 'asdfdf', 'Scarpper', 'sdg,\r\nsgs,\r\nyjt', '1234', 'scrapper@gmail.com', 'Computer Waste', 'nvc (3).jpg', 'PENDING'),
(13, 1, 'AMD Thread Ripper 5600', 'c', 'Scarpper', 'c', '1', 'scrapper@gmail.com', 'Computer Waste', 'ee.jpg', 'APPROVED'),
(14, 1, 'Snapdragon 8 Gen2', 'm', 'Scarpper', 'm', '2', 'scrapper@gmail.com', 'Mobile Waste', 'mobile.jpg', 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `sid` int(11) NOT NULL,
  `scompany` varchar(250) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`sid`, `scompany`, `email`, `password`) VALUES
(1, 'Scarpper', 'scrapper@gmail.com', 'scrap123'),
(2, 'No name', 'nomail@gmail.com', 'whypass'),
(3, 'c3', 'nomial', 'aa'),
(4, 'new seller ', 'afterchnage@gmail.com', 'again');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buyer`
--
ALTER TABLE `buyer`
  MODIFY `bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
