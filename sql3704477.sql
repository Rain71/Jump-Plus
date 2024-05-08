-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql3.freesqldatabase.com
-- Generation Time: May 08, 2024 at 06:08 AM
-- Server version: 5.5.54-0ubuntu0.12.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql3704477`
--

-- --------------------------------------------------------

--
-- Table structure for table `Chocolate Table`
--

CREATE TABLE `Chocolate Table` (
  `Chocolate_ID` varchar(8) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Descrption` varchar(40) NOT NULL,
  `Price` decimal(5,0) NOT NULL,
  `Quantity_Available` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Chocolate Table`
--

INSERT INTO `Chocolate Table` (`Chocolate_ID`, `Name`, `Descrption`, `Price`, `Quantity_Available`) VALUES
('00001101', 'Godiva', 'Crunchy Chocolate', '30', 18),
('00002202', 'Hersey Kisses Choclate', 'Milk Chocolate', '10', 20),
('00003303', 'Hersey Choclate Bar', 'Milk Chocolate', '5', 1),
('00004404', 'Snickers', 'Crunchy Chocolate', '6', 5),
('00005505', 'KitKat', 'Crunchy Chocolate', '3', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Customer Table`
--

CREATE TABLE `Customer Table` (
  `Customer_ID` varchar(4) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Customer Table`
--

INSERT INTO `Customer Table` (`Customer_ID`, `First_Name`, `Last_Name`, `Email`) VALUES
('0001', 'Rain', 'Granger', 'Test11@test1.com'),
('0002', 'Donald', 'Duck', 'Test21@test2.com'),
('0003', 'James', 'Pete', 'Test31@test3.com'),
('0004', 'Jessica', 'Smith', 'Test41@test4.com');

-- --------------------------------------------------------

--
-- Table structure for table `Orders Table`
--

CREATE TABLE `Orders Table` (
  `Order_ID` int(5) NOT NULL,
  `Customer_ID` varchar(4) NOT NULL,
  `Chocolate_ID` varchar(8) NOT NULL,
  `Order_Date` date NOT NULL,
  `Quantity_Ordered` int(5) NOT NULL,
  `Total_Price_Sold` decimal(4,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Orders Table`
--

INSERT INTO `Orders Table` (`Order_ID`, `Customer_ID`, `Chocolate_ID`, `Order_Date`, `Quantity_Ordered`, `Total_Price_Sold`) VALUES
(11111, '0001', '00002202', '2023-05-05', 2, '20'),
(22222, '0004', '00003303', '2023-02-09', 1, '5'),
(33333, '0002', '00001101', '2023-07-05', 3, '90'),
(44444, '0003', '00004404', '2023-10-09', 6, '36'),
(55555, '0003', '00005505', '2023-05-14', 2, '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Chocolate Table`
--
ALTER TABLE `Chocolate Table`
  ADD PRIMARY KEY (`Chocolate_ID`);

--
-- Indexes for table `Customer Table`
--
ALTER TABLE `Customer Table`
  ADD PRIMARY KEY (`Customer_ID`);

--
-- Indexes for table `Orders Table`
--
ALTER TABLE `Orders Table`
  ADD PRIMARY KEY (`Order_ID`),
  ADD KEY `Customer_ID` (`Customer_ID`),
  ADD KEY `Chocolate_ID` (`Chocolate_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Customer Table`
--
ALTER TABLE `Customer Table`
  ADD CONSTRAINT `Customer ID` FOREIGN KEY (`Customer_ID`) REFERENCES `Orders Table` (`Customer_ID`);

--
-- Constraints for table `Orders Table`
--
ALTER TABLE `Orders Table`
  ADD CONSTRAINT `Orders Table_ibfk_1` FOREIGN KEY (`Chocolate_ID`) REFERENCES `Chocolate Table` (`Chocolate_ID`),
  ADD CONSTRAINT `Customer_ID` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer Table` (`Customer_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
