-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 28, 2021 at 04:38 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hackathon`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `Admin_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Auser` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Aname` varchar(200) NOT NULL,
  PRIMARY KEY (`Admin_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auctiondetails`
--

DROP TABLE IF EXISTS `auctiondetails`;
CREATE TABLE IF NOT EXISTS `auctiondetails` (
  `Auction_ID` int(11) NOT NULL AUTO_INCREMENT,
  `P_ID` int(11) NOT NULL,
  `Customer_ID` int(11) NOT NULL,
  `Farmer_ID` int(11) NOT NULL,
  `Bid` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `Closing_Date` datetime NOT NULL,
  PRIMARY KEY (`Auction_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  KEY `P_ID` (`P_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auctiondetails`
--

INSERT INTO `auctiondetails` (`Auction_ID`, `P_ID`, `Customer_ID`, `Farmer_ID`, `Bid`, `Status`, `Closing_Date`) VALUES
(1, 6, 2, 1, '233', '1', '2021-04-29 08:19:18');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `Consumer_ID` int(11) NOT NULL,
  `FarmerID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  KEY `Product_ID` (`Product_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `consumerdetails`
--

DROP TABLE IF EXISTS `consumerdetails`;
CREATE TABLE IF NOT EXISTS `consumerdetails` (
  `ConsumerID` int(11) NOT NULL AUTO_INCREMENT,
  `Cname` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `City` varchar(200) NOT NULL,
  `State` varchar(200) NOT NULL,
  PRIMARY KEY (`ConsumerID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumerdetails`
--

INSERT INTO `consumerdetails` (`ConsumerID`, `Cname`, `Password`, `Address`, `Phone`, `Email`, `City`, `State`) VALUES
(1, 'Immanual', 'immanu', 'GUI building, Allapuzha', '8727888292', 'Imman@gmail.com', 'Allapuzha', 'Kerala'),
(2, 'Georgio', 'geo', 'Vikranth studios, semuna', '9872988922', 'Georgi@gmail.com', 'Chennai', 'Tamil Nadu'),
(3, 'Alu', 'alu12', 'B-63, Nehru Ground', '951292419771', 'alu@12', 'Delhi', 'Haryana');

-- --------------------------------------------------------

--
-- Table structure for table `farmerdetails`
--

DROP TABLE IF EXISTS `farmerdetails`;
CREATE TABLE IF NOT EXISTS `farmerdetails` (
  `FarmerID` int(11) NOT NULL AUTO_INCREMENT,
  `Fname` varchar(200) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `State` varchar(200) NOT NULL,
  `Status` varchar(200) NOT NULL,
  `Phone` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `KisanID` varchar(200) NOT NULL,
  `Address` varchar(200) NOT NULL,
  PRIMARY KEY (`FarmerID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `farmerdetails`
--

INSERT INTO `farmerdetails` (`FarmerID`, `Fname`, `City`, `Password`, `State`, `Status`, `Phone`, `Email`, `KisanID`, `Address`) VALUES
(1, 'Vipin', 'Kochi', 'vip', 'Kerala', 'Verified', '8298262822', 'vipin@123', '1235234', 'Joho building, Aluva'),
(5, 'Arvind', 'Kochi', 'arv', 'Kerala', 'Unverified', '98756788976', 'arv@gmail.com', '6275336', '21 street, homy'),
(6, 'Sam', 'New Delhi', 'sammy1', 'Delhi', 'Unverified', '16227829892878', 'sammy12@gmail.com', '2726522', 'Radio colony, GTB nagar');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

DROP TABLE IF EXISTS `invoice`;
CREATE TABLE IF NOT EXISTS `invoice` (
  `Inv_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Consumer_ID` int(11) NOT NULL,
  `Product_ID` int(11) NOT NULL,
  `Farmer_ID` int(11) NOT NULL,
  `Quantity` varchar(200) NOT NULL,
  `TotalPrice` varchar(200) NOT NULL,
  PRIMARY KEY (`Inv_ID`),
  KEY `Product_ID` (`Product_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`Inv_ID`, `Consumer_ID`, `Product_ID`, `Farmer_ID`, `Quantity`, `TotalPrice`) VALUES
(1, 2, 2, 6, '20', '400'),
(2, 1, 3, 1, '80', '800'),
(5, 0, 4, 1, '12', '360'),
(6, 3, 5, 1, '12', '420'),
(7, 3, 5, 1, '12', '420'),
(8, 3, 5, 1, '12', '420'),
(9, 3, 4, 1, '12', '360'),
(10, 0, 3, 6, '23', '460'),
(11, 0, 4, 1, '12', '360'),
(12, 0, 1, 5, '12', '240');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `Product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) NOT NULL,
  `Type` varchar(200) NOT NULL,
  `Stock` varchar(200) NOT NULL,
  `Price` varchar(200) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Image` varchar(200) NOT NULL,
  `Farmer_ID` int(11) NOT NULL,
  `AFlag` varchar(200) NOT NULL,
  PRIMARY KEY (`Product_ID`),
  KEY `Farmer_ID` (`Farmer_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_ID`, `Name`, `Type`, `Stock`, `Price`, `Description`, `Image`, `Farmer_ID`, `AFlag`) VALUES
(1, 'Wheat', 'Crops', '188', '20', 'Best Product ever', 'images/w1.jpg', 5, '0'),
(2, 'Tomato', 'Vegetable', '200', '15', 'Red juicy Tomato', 'images/t1.jpg', 1, '1'),
(3, 'Rice', 'Crop', '477', '20', 'Sweet Rice baby', 'images/r2.jpg', 6, '0'),
(4, 'Beans', 'Vegetable', '200', '30', 'The product is good quality. No pesticides or chemicals were used to avoid pests. Fertilizers of high quality were used for the production.', 'images/beans3.jpg', 1, '0'),
(5, 'Greeen Beans', 'Vegetable', '300', '35', 'The product is good quality. No pesticides or chemicals were used to avoid pests. Fertilizers of high quality were used for the production.', 'images/beans2.jpg', 1, '0'),
(6, 'Beans', 'Vegetable', '40', '500', 'The product is good quality. No pesticides or chemicals were used to avoid pests. Fertilizers of high quality were used for the production.', 'images/b1.jpg', 1, '0');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auctiondetails`
--
ALTER TABLE `auctiondetails`
  ADD CONSTRAINT `auctiondetails_ibfk_2` FOREIGN KEY (`P_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_4` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product_ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`Farmer_ID`) REFERENCES `farmerdetails` (`FarmerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
