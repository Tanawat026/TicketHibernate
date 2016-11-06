-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 05:27 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trainticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ActID` int(11) NOT NULL,
  `Username` varchar(25) NOT NULL,
  `Password` varchar(25) NOT NULL,
  `Name` varchar(55) NOT NULL,
  `Tel` varchar(15) NOT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ActID`, `Username`, `Password`, `Name`, `Tel`, `Email`) VALUES
(1, 'Film', '12345', 'Filmm Tanawat', '123456', 'film@gmail.com'),
(2, 'Da', '12345', 'Da Vachira', '0811111111', 'Da@gmail.com'),
(3, 'Fang', '12345', 'Fang Sutita', '0822222222', 'Fang@gmail.com'),
(4, 'Pan', '12345', 'Pan Panyapard', '0833333333', 'Pan@gmail.com'),
(5, 'Pop', '12345', 'Pop Tunyared', '0844444444', 'Pop@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PaymentID` int(11) NOT NULL,
  `NameVISA` varchar(20) NOT NULL,
  `NumberVISA` varchar(20) NOT NULL,
  `MonthExpired` varchar(2) NOT NULL,
  `YearExpired` varchar(4) NOT NULL,
  `Pin` varchar(3) NOT NULL,
  `PriceAll` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PaymentID`, `NameVISA`, `NumberVISA`, `MonthExpired`, `YearExpired`, `Pin`, `PriceAll`) VALUES
(1, 'filmm', '1234123412341234', '12', '2016', '123', 600),
(2, 'Filmm Tanawat', '1234123412341234', '12', '2050', '123', 19500),
(3, 'Filmm ', '123412341234', '12', '2016', '125', 1500),
(4, 'Filmm Tanawat', '123412341234', '12', '2016', '123', 32500);

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `TicketID` int(11) NOT NULL,
  `TimeID` int(11) NOT NULL,
  `ActID` int(11) NOT NULL,
  `Origin` varchar(20) NOT NULL,
  `Destination` varchar(20) NOT NULL,
  `DateBuyTicket` varchar(25) NOT NULL,
  `NumPsg` int(11) NOT NULL,
  `PricePerSeat` int(11) NOT NULL,
  `PaymentID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`TicketID`, `TimeID`, `ActID`, `Origin`, `Destination`, `DateBuyTicket`, `NumPsg`, `PricePerSeat`, `PaymentID`) VALUES
(1, 1, 1, 'Phuket', 'Suratthani', '2016-10-03 01:30:34', 2, 300, 1),
(2, 1, 1, 'Phuket', 'Suratthani', '2016-10-03 10:33:58', 65, 300, 2),
(3, 3, 1, 'Phuket', 'Suratthani', '2016-10-03 10:36:17', 5, 300, 3),
(4, 5, 1, 'Suratthani', 'Songkla', '2016-10-03 10:44:02', 65, 500, 4),
(5, 2, 1, 'Phuket', 'London', '28/10/2016', 2, 35000, 5),
(6, 4, 3, 'Phuket', 'Paris', '29/10/2016', 2, 35500, 6),
(7, 5, 4, 'Phuket', 'Soul', '29/10/2016', 4, 23000, 7),
(8, 7, 2, 'Phuket', 'Macau', '28/10/2016', 2, 20000, 8),
(9, 8, 7, 'Phang-nga', 'London', '29/10/2016', 2, 34000, 9),
(12, 1, 1, 'New York', 'Phuket', '05/12/2015', 12, 1200, 12);

-- --------------------------------------------------------

--
-- Table structure for table `timetrain`
--

CREATE TABLE `timetrain` (
  `TimeID` int(11) NOT NULL,
  `TrainID` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Provice` varchar(200) NOT NULL,
  `DateTrain` varchar(20) DEFAULT NULL,
  `TimeTrain` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetrain`
--

INSERT INTO `timetrain` (`TimeID`, `TrainID`, `Price`, `Provice`, `DateTrain`, `TimeTrain`) VALUES
(1, 1, 300, 'Phuket Phangnga Suratthani', '03-10-2016', '08.00'),
(2, 1, 300, 'Phuket Phangnga Suratthani', '03-10-2016', '12.00'),
(3, 1, 300, 'Phuket Phangnga Suratthani', '03-10-2016', '19.00'),
(4, 2, 500, 'Suratthani Trang Songkla', '03-10-2016', '08.30'),
(5, 2, 500, 'Suratthani Trang Songkla', '03-10-2016', '12.30'),
(6, 2, 500, 'Suratthani Trang Songkla', '03-10-2016', '19.30');

-- --------------------------------------------------------

--
-- Table structure for table `train`
--

CREATE TABLE `train` (
  `TrainID` int(11) NOT NULL,
  `Name` varchar(20) DEFAULT NULL,
  `Type` varchar(20) DEFAULT NULL,
  `NumPsg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `train`
--

INSERT INTO `train` (`TrainID`, `Name`, `Type`, `NumPsg`) VALUES
(1, 'Kerry Train', 'Air Condition', 40),
(2, 'Do not Dead Train', 'Air Condition', 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ActID`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`TicketID`);

--
-- Indexes for table `timetrain`
--
ALTER TABLE `timetrain`
  ADD PRIMARY KEY (`TimeID`);

--
-- Indexes for table `train`
--
ALTER TABLE `train`
  ADD PRIMARY KEY (`TrainID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
