-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2018 at 09:39 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emp`
--
CREATE DATABASE IF NOT EXISTS `emp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `emp`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `contractorid` varchar(20) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `pincode` bigint(20) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_ifsc` varchar(20) NOT NULL DEFAULT '',
  `bank_name` varchar(20) DEFAULT NULL,
  `bank_branch` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bidapproved`
--

CREATE TABLE `bidapproved` (
  `contractorid` varchar(20) NOT NULL DEFAULT '',
  `tender_no` varchar(50) DEFAULT NULL,
  `bid` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bidding`
--

CREATE TABLE `bidding` (
  `contractorid` varchar(20) NOT NULL DEFAULT '',
  `tender_no` varchar(50) DEFAULT NULL,
  `bid` bigint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contractor`
--

CREATE TABLE `contractor` (
  `contractorid` varchar(20) NOT NULL DEFAULT '',
  `name` char(20) DEFAULT NULL,
  `speciality` char(20) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pan_no` varchar(20) DEFAULT NULL,
  `bank_ifsc` varchar(20) DEFAULT NULL,
  `acc_no` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contractor`
--

INSERT INTO `contractor` (`contractorid`, `name`, `speciality`, `Phone`, `email`, `pan_no`, `bank_ifsc`, `acc_no`) VALUES
('Amrit325', 'AmritKaushal', 'Lining', 9874573001, 'amrit56@gmail.com', 'ACENC4523E', 'SBIN0001759 ', 437987508640987),
('Diljit529', 'DiljitSingh', 'Drainage', 9875634780, 'diljit.singh@gmail.com', 'AAOCS4467I', 'HDFC0000187', 435637873560980),
('Hartej 832', 'Hartej Singh', 'Lining', 9768265701, 'hartej96@gmail.com', 'ACEHD2364K', 'PUNB0043800 ', 421798054067560),
('Rajesh 675', 'Rajesh Goyal', 'Contractor', 8147856708, 'rajesh.goyal@gmail.com', 'ANCHE1276E', 'HDFC0000116', 428736350963789),
('Surinder138', 'SurinderBansal', 'Drainage', 9855665721, 'surinder.12@gmail.com', 'ACERS6735C', 'SBIN0005577', 457383936129038);

-- --------------------------------------------------------

--
-- Table structure for table `contrproject`
--

CREATE TABLE `contrproject` (
  `contractorid` varchar(20) NOT NULL,
  `project_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contrtender`
--

CREATE TABLE `contrtender` (
  `contractorid` varchar(20) NOT NULL,
  `tender_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emp`
--

CREATE TABLE `emp` (
  `empid` varchar(20) NOT NULL,
  `name` char(30) DEFAULT NULL,
  `designation` varchar(20) DEFAULT NULL,
  `Phone` bigint(10) DEFAULT NULL,
  `Emailid` varchar(20) DEFAULT NULL,
  `Year_of_joining` date DEFAULT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp`
--

INSERT INTO `emp` (`empid`, `name`, `designation`, `Phone`, `Emailid`, `Year_of_joining`, `dob`) VALUES
('1', 'Ravi Karan Singh Kahlon', 'Chairman', 9780400002, 'chairman@pwrmdc.com', '1990-03-12', '1966-06-06'),
('10', 'Anil Kumar Bhutani', 'Sr. Hydrogeologist', 9463292276, 'shhydrowingpwrmdc201', '1995-10-18', '1965-06-23'),
('101', 'Rajesh Goyal', 'JE', 127, 'goyal.rajesh@gmail.c', '1985-08-01', '1962-07-04'),
('2', 'Surinder Singh Grewa', 'Managing Director', 9915260009, 'md@pwrmdc.com', '1992-10-29', '1970-03-23'),
('3', 'Adarsh Kumar Sharma', 'Chief Project Office', 9872012351, 'seplanning@yahoo.com', '1991-07-06', '1968-08-08'),
('4', 'Ajay Kumar Sharma', 'Chief Vigilance Offi', 9815975533, 'se_planning@pwrmdc.c', '1989-11-01', '1967-09-17'),
('5', 'R.K. Behl', 'Financial Advisor', 9872470522, 'fapwrmdcchd@gmail.co', '1990-04-17', '1971-10-11'),
('6', 'Yadbinder Pal Singh', 'Law Officer', 9915074886, 'lawofficerpwrmdc@gma', '1988-02-19', '1966-01-20'),
('7', 'Jaila Ram', 'Superintending Engin', 8146006800, 'se_bathida@pwrmdc.co', '1992-08-01', '1968-11-19'),
('8', 'B.K. Garg', 'Superintending Engin', 9872403930, 'de2pwrmdc@gmail.com', '1992-08-01', '0000-00-00'),
('9', 'Gurvinder Singh', 'Superintending Engin', 1634224666, 'de4pwrmdc@gmail.com', '1992-11-04', '1961-07-27');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `name` char(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `cost` tinyint(20) DEFAULT NULL,
  `units` tinyint(10) DEFAULT NULL,
  `supplier_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `latest_tender`
--

CREATE TABLE `latest_tender` (
  `tender_no` varchar(20) NOT NULL DEFAULT '',
  `tenderdescription` varchar(60) DEFAULT NULL,
  `requestdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_tender`
--

INSERT INTO `latest_tender` (`tender_no`, `tenderdescription`, `requestdate`) VALUES
('111G99', 'Sewer System', '2018-06-15');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `project_id` varchar(20) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `Duration` varchar(20) DEFAULT NULL,
  `totalcost` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`project_id`, `type`, `Duration`, `totalcost`) VALUES
('101MAN14', 'repairing of canal', 'one year', 20035000),
('102BHA13', 'Construction of canal', '7 months', 30745980),
('103MAN14', 'repairing of canal', 'four months', 10023000),
('104MAN13', 'Construction of canal', '11 months', 10267000),
('105BHA13', 'Construction of canal', '6 months', 25067000);

-- --------------------------------------------------------

--
-- Table structure for table `supitem`
--

CREATE TABLE `supitem` (
  `supplier_id` varchar(20) NOT NULL,
  `items` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supitem`
--

INSERT INTO `supitem` (`supplier_id`, `items`) VALUES
('0086', 'Bricks'),
('0087', 'Bricks'),
('0096', 'cement'),
('0097', 'Cement');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` varchar(20) NOT NULL DEFAULT '',
  `name` char(20) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  `region` varchar(10) DEFAULT NULL,
  `phone` tinyint(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `name`, `address`, `region`, `phone`) VALUES
('0086', 'Amrit Bricks', 'Chandigarh', 'Rajpura', 127),
('0087', 'ACC', 'shop no. 45, Bathinda road', 'Mansa', 127),
('0096', 'Ambuja cement', 'Railway Road', 'Sangrur', 127),
('0097', 'Bansal kilin', 'patiala road ', 'Dhuri', 127);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'admin', 'admin', 'Cherylda', 'Ohiman');

-- --------------------------------------------------------

--
-- Table structure for table `tender`
--

CREATE TABLE `tender` (
  `tender_no` varchar(20) NOT NULL DEFAULT '',
  `line_no` varchar(20) DEFAULT NULL,
  `estimatedcost` bigint(10) DEFAULT NULL,
  `closing_d` date DEFAULT NULL,
  `opening_d` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tender`
--

INSERT INTO `tender` (`tender_no`, `line_no`, `estimatedcost`, `closing_d`, `opening_d`) VALUES
('PWDRM/201314/138', 'PWDRM/201314/138', 20655000, '2013-05-07', '2013-05-02'),
('PWDRM/201314/325', 'PWDRM/201314/325', 20134900, '2013-07-02', '2103-07-09'),
('PWDRM/201314/569', 'PWDRM/201314/569', 17654780, '2013-02-07', '2013-02-01'),
('PWDRM/201314/675', 'PWDRM/201314/675', 11234500, '2013-02-10', '2013-02-03'),
('PWDRM/201415/832', 'PWDRM/201415/832', 31597000, '2014-03-17', '2014-03-12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`contractorid`);

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_ifsc`);

--
-- Indexes for table `bidapproved`
--
ALTER TABLE `bidapproved`
  ADD PRIMARY KEY (`contractorid`);

--
-- Indexes for table `bidding`
--
ALTER TABLE `bidding`
  ADD PRIMARY KEY (`contractorid`);

--
-- Indexes for table `contractor`
--
ALTER TABLE `contractor`
  ADD PRIMARY KEY (`contractorid`);
ALTER TABLE `contractor` ADD FULLTEXT KEY `contractorid` (`contractorid`);

--
-- Indexes for table `contrproject`
--
ALTER TABLE `contrproject`
  ADD PRIMARY KEY (`contractorid`);

--
-- Indexes for table `contrtender`
--
ALTER TABLE `contrtender`
  ADD PRIMARY KEY (`contractorid`);

--
-- Indexes for table `emp`
--
ALTER TABLE `emp`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `latest_tender`
--
ALTER TABLE `latest_tender`
  ADD PRIMARY KEY (`tender_no`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `supitem`
--
ALTER TABLE `supitem`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tender`
--
ALTER TABLE `tender`
  ADD PRIMARY KEY (`tender_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
