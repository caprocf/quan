-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2016 at 04:57 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `iddetail` int(11) NOT NULL,
  `orderid` int(11) DEFAULT NULL,
  `idproduct` varchar(10) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

INSERT INTO `orderdetails` (`iddetail`, `orderid`, `idproduct`, `quantity`, `total`) VALUES
(3, 8, '7,12,6,8,1', 1, '368.00'),
(4, 8, '7,12,6,8,1', 1, ''),
(5, 8, '8,9', 8, '120.00'),
(6, 8, '8,9', 8, '120.00'),
(8, 13, '9,5', 9, '128.00'),
(9, 14, '13,3', 1, '136.00'),
(10, 15, '', 0, '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `orderid` int(11) NOT NULL,
  `idUser` varchar(10) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`orderid`, `idUser`, `OrderDate`, `Status`) VALUES
(8, '1', '2015-12-15 00:00:00', 'Delivered'),
(9, '1', '2015-12-15 00:00:00', 'On Deliver'),
(10, '1', '2015-12-15 00:00:00', 'On Deliver'),
(11, '1', '2015-12-15 00:00:00', 'On Deliver'),
(12, '1', '2015-12-15 00:00:00', 'On Deliver'),
(13, '1', '2015-12-15 00:00:00', 'Delivered'),
(14, '1', '2015-12-15 00:00:00', 'Delivered'),
(15, '1', '2015-12-15 00:00:00', 'On Deliver');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `idproduct` varchar(10) NOT NULL,
  `TenSP` varchar(60) DEFAULT NULL,
  `GiaSP` varchar(30) DEFAULT NULL,
  `urlhinh` varchar(255) DEFAULT NULL,
  `namegroup` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`idproduct`, `TenSP`, `GiaSP`, `urlhinh`, `namegroup`) VALUES
('10', 'Australia', '$62.00', 'images/australia.jpg', 'shirt'),
('11', 'Bloody Mary', '$62.00', 'images/bloody-mary.jpg', 'shirt'),
('12', 'Days End', '$55.00', 'images/days-end.jpg', 'shirt'),
('13', 'Monkeyking', '$59.00', 'images/dk.jpg', 'shirt'),
('14', 'Eat here, no there', '$42.00', 'images/eat-here2.jpg', 'shirt'),
('15', 'Grateful Dead', '$69.00', 'images/grateful-dead.jpg', 'shirt'),
('16', 'Shirt', '$40.00', 'images/img_0204_800.jpeg', 'shirt'),
('17', 'Dino', '$62.00', 'images/img_1078_800.jpeg', 'shirt'),
('18', 'No Friend', '$59.00', 'images/nofriendo.png', 'shirt'),
('19', 'South Crappers', '$72.00', 'images/southsidescrappers3.jpg', 'shirt'),
('20', 'Zelda', '$59.00', 'images/zelda.gif', 'shirt'),
('21', 'Chukka Bardenas', '$55.00', 'images/Chukka-bardenas.jpg', 'shoe'),
('22', 'Era LX', '$55.00', 'images/eraLX.jpg', 'shoe'),
('23', 'Vans Chukka', '$42.00', 'images/vanschukkadecon.jpeg', 'shoe'),
('24', 'Vansera', '$49.00', 'images/vansera1.jpeg', 'shoe'),
('3', 'SK8 HI', '$77.00', 'images/Sk8-HI.jpg', 'shoes'),
('9', 'Berlin', '$72.00', 'images/berlin.jpg', 'shirt');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` varchar(10) NOT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `PASSWORD` varchar(16) DEFAULT NULL,
  `Email` varchar(60) DEFAULT NULL,
  `Adress` varchar(60) CHARACTER SET utf8 DEFAULT NULL,
  `Phone` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `UserName`, `PASSWORD`, `Email`, `Adress`, `Phone`) VALUES
('1', 'admin', '123456', 'quanlndpd01491@fpt.edu.vn', '1026 Truong chinh', '0122496565');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`iddetail`),
  ADD KEY `FK` (`orderid`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idproduct`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `iddetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `orderitem`
--
ALTER TABLE `orderitem`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `FK` FOREIGN KEY (`orderid`) REFERENCES `orderitem` (`orderid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
