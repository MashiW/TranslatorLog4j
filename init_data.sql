-- phpMyAdmin SQL Dump
-- version 4.5.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 03:52 PM
-- Server version: 5.6.30-0ubuntu0.15.10.1
-- PHP Version: 5.6.11-1ubuntu3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `per_id` int(3) NOT NULL,
  `grp_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_city`
--

CREATE TABLE `tbl_city` (
  `city_id` int(11) NOT NULL,
  `Country` enum('Sri Lanka','England','Japan','India','China') NOT NULL DEFAULT 'Sri Lanka',
  `City` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_city`
--

INSERT INTO `tbl_city` (`city_id`, `Country`, `City`) VALUES
(0, 'India', 'Kolkota'),
(1, 'Sri Lanka', 'Colombo'),
(2, 'Sri Lanka', 'Kandy'),
(3, 'Sri Lanka', 'Jaffna'),
(4, 'Sri Lanka', 'Galle'),
(5, 'England', 'London'),
(6, 'England', 'Manchester'),
(7, 'England', 'Oxford'),
(8, 'England', 'Liverpool'),
(9, 'England', 'Sheffield'),
(10, 'Japan', 'Tokyo'),
(11, 'Japan', 'Kobe'),
(12, 'Japan', 'Hiroshima'),
(13, 'Japan', 'Osaka'),
(14, 'Japan', 'Yokohama'),
(15, 'India', 'Mumbai'),
(16, 'India', 'New Delhi'),
(17, 'India', 'Chennai'),
(19, 'China', 'Beijing'),
(20, 'China', 'Shanghai'),
(21, 'China', 'Hong Kong');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `grp_id` int(3) NOT NULL,
  `grp_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_permission`
--

CREATE TABLE `tbl_permission` (
  `per_id` int(3) NOT NULL,
  `per_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `usrName` varchar(20) NOT NULL,
  `usrPass` varchar(50) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `DOB` date NOT NULL,
  `phoneNo` bigint(11) NOT NULL,
  `Country` enum('Sri Lanka','England','Japan','India','China') NOT NULL DEFAULT 'Sri Lanka',
  `city_id` int(3) NOT NULL,
  `Email` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`usrName`, `usrPass`, `firstName`, `lastName`, `DOB`, `phoneNo`, `Country`, `city_id`, `Email`) VALUES
('ann', '60f0efa11604d42270c61801ed38c4c9', 'Anne', 'e', '1990-06-06', 23698521478, 'England', 5, 'ssss@gml.com'),
('east', '18f03e5903c12727330d8c1e14166ca7', 'dd', 'ret', '1992-04-17', 23698521478, 'India', 15, 'ssss@gml.com'),
('efrwe', '18f03e5903c12727330d8c1e14166ca7', 'wilse', 'freaw', '1990-01-30', 23698521478, 'Japan', 10, 'ssss@gml.com'),
('frank', '0e890fcf000f9ac5641975478ec91ea8', 'Frank', 'ergtergt', '1992-06-15', 78965412369, 'England', 5, 'fhfcgh@hgf.lk'),
('gg', 'asdqwE123', 'gregory', 'sss', '1991-02-28', 23698521478, 'China', 19, 'ssss@gml.com'),
('ggrsh', '18f03e5903c12727330d8c1e14166ca7', 'rush', 'stylis', '1991-02-28', 23698521478, 'China', 19, 'hbuhbu@kuh.pm'),
('jack', '0e890fcf000f9ac5641975478ec91ea8', 'Jack', 'sscujyju', '1990-02-28', 12365498745, 'India', 15, 'fhfcgh@hgf.lk'),
('jny', '6252747cddcc9f33c4bb44e5527e9497', 'jenny', 'sss', '1991-04-12', 23698521478, 'Sri Lanka', 1, 'ssss@gml.com'),
('Nisha', 'a722c63db8ec8625af6cf71cb8c2d939', 'Nisha', 'Perera', '1990-04-20', 23698521470, 'Sri Lanka', 1, 'nisha123@tte.com'),
('safafsad', '18f03e5903c12727330d8c1e14166ca7', 'Sawr', 'Tylor', '1990-09-05', 12365478965, 'England', 8, 'ssss@gml.com'),
('Sam', 'c1572d05424d0ecb2a65ec6a82aeacbf', 'Sam', 'Fernando', '1995-10-30', 1236547812, 'China', 19, ''),
('Samy', 'asdqwE123', 'sss', 'sss', '1994-02-01', 23698521478, 'Sri Lanka', 1, 'ssss@gml.com'),
('Samyj', '18f03e5903c12727330d8c1e14166ca7', 'sss', 'sss', '1990-01-30', 23698521478, 'Japan', 10, 'ssss@gml.com'),
('ss', '0e890fcf000f9ac5641975478ec91ea8', 'ss', 'ss', '1990-02-25', 12365498745, 'Japan', 11, 'fhfcgh@hgf.lk'),
('ssk', '0e890fcf000f9ac5641975478ec91ea8', 'ss', 'ss', '1990-01-30', 12365478987, 'Japan', 10, 'fhfcgh@hgf.lk'),
('ssku', 'cbe2cc9ae6eeaeb278cddaa70ee677dd', 'w', 'ss', '1995-07-05', 12345678998, 'Japan', 10, 'fhfcgh@hgf.lk'),
('tom', '0e890fcf000f9ac5641975478ec91ea8', 'Tom', 'jnnioj', '2000-12-22', 12365498745, 'China', 19, 'fhfcgh@hgf.lk'),
('ugog', '0e890fcf000f9ac5641975478ec91ea8', 'uiog', 'uiolug', '1995-07-13', 12365478969, 'Japan', 10, 'fhfcgh@hgf.lk'),
('wewf', '0e890fcf000f9ac5641975478ec91ea8', 'ss', 'ss', '1991-02-28', 12365498745, 'India', 15, 'fhfcgh@hgf.lk'),
('wewfffdmhg', '0e890fcf000f9ac5641975478ec91ea8', 'ss', 'ss', '1990-01-30', 12365498745, 'India', 15, 'fhfcgh@hgf.lk'),
('yryf', '0e890fcf000f9ac5641975478ec91ea8', 'sss', 'sss', '1978-02-07', 23698521478, 'Japan', 10, 'ssss@gml.com'),
('yyg', '0e890fcf000f9ac5641975478ec91ea8', 'sss', 'sss', '1991-02-27', 23698521478, 'Sri Lanka', 1, 'ssss@gml.com'),
('yytyrf', '2742f2aaf6f881b230f31ae48c37be14', 'tyhy', 'sss', '1998-07-13', 23698521478, 'Japan', 10, 'ssss@gml.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `usrName` varchar(20) NOT NULL,
  `grp_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`per_id`,`grp_id`),
  ADD KEY `permission_group_ibfk_2` (`grp_id`);

--
-- Indexes for table `tbl_city`
--
ALTER TABLE `tbl_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`grp_id`);

--
-- Indexes for table `tbl_permission`
--
ALTER TABLE `tbl_permission`
  ADD PRIMARY KEY (`per_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`usrName`),
  ADD UNIQUE KEY `usrName` (`usrName`),
  ADD UNIQUE KEY `usrName_2` (`usrName`),
  ADD UNIQUE KEY `usrName_3` (`usrName`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`usrName`,`grp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_city`
--
ALTER TABLE `tbl_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD CONSTRAINT `permission_group_ibfk_1` FOREIGN KEY (`per_id`) REFERENCES `tbl_permission` (`per_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_group_ibfk_2` FOREIGN KEY (`grp_id`) REFERENCES `tbl_group` (`grp_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
