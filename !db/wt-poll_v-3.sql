-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 22, 2020 at 12:06 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wt-poll`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `Id` int(11) NOT NULL,
  `File_Path` text NOT NULL,
  `File_Name` text NOT NULL,
  `File_Extension` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`Id`, `File_Path`, `File_Name`, `File_Extension`) VALUES
(67, 'uploads/', 'lucas-benjamin-wQLAGv4_OYs-unsplash.jpg', 'jpg'),
(68, 'uploads/', 'pawel-czerwinski-tMbQpdguDVQ-unsplash.jpg', 'jpg'),
(69, 'uploads/', 'rene-bohmer-YeUVDKZWSZ4-unsplash.jpg', 'jpg'),
(70, 'uploads/', 'jared-arango-1-mh6U3qeGQ-unsplash.jpg', 'jpg');

-- --------------------------------------------------------

--
-- Table structure for table `poll`
--

CREATE TABLE `poll` (
  `Id` int(11) NOT NULL,
  `Name` longtext NOT NULL,
  `StatusEnumId` int(11) NOT NULL,
  `TypeEnumId` int(11) NOT NULL,
  `IsPublic` tinyint(1) NOT NULL,
  `ImageId` int(11) DEFAULT NULL,
  `CreateBy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll`
--

INSERT INTO `poll` (`Id`, `Name`, `StatusEnumId`, `TypeEnumId`, `IsPublic`, `ImageId`, `CreateBy`) VALUES
(1, 'What about your next plan Test?', 1, 1, 0, NULL, 25),
(2, 'What about your next plan mohi?', 1, 1, 0, NULL, 25),
(3, 'What about your next plan mohi?', 1, 1, 0, NULL, 25),
(5, 'Test Mohitosh mohi', 1, 1, 0, NULL, 25),
(6, 'Test', 1, 1, 0, NULL, 25);

-- --------------------------------------------------------

--
-- Table structure for table `poll_option`
--

CREATE TABLE `poll_option` (
  `Id` int(11) NOT NULL,
  `PollId` int(11) NOT NULL,
  `Name` text NOT NULL,
  `OrderNo` int(11) NOT NULL,
  `ImageId` int(11) DEFAULT NULL,
  `PollCount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `poll_option`
--

INSERT INTO `poll_option` (`Id`, `PollId`, `Name`, `OrderNo`, `ImageId`, `PollCount`) VALUES
(1, 1, 'Test', 1, NULL, 0),
(2, 1, 'Test 2', 2, NULL, 0),
(3, 1, 'Test 3', 3, NULL, 0),
(4, 1, 'Test 4', 4, NULL, 0),
(5, 1, 'Test 5', 5, NULL, 0),
(6, 2, 'Test 1', 1, NULL, 0),
(7, 2, 'Test 2', 2, NULL, 0),
(8, 3, 'T', 1, NULL, 0),
(9, 3, 'T2', 2, NULL, 0),
(10, 3, 'T3', 3, NULL, 0),
(11, 6, 'o1', 1, NULL, 0),
(12, 6, 'o2', 2, NULL, 0),
(13, 6, 'O3', 3, NULL, 0),
(14, 6, 'o1', 1, NULL, 0),
(15, 6, 'o2', 2, NULL, 0),
(16, 6, 'O3', 3, NULL, 0),
(17, 6, 'o1', 1, NULL, 0),
(18, 6, 'o2', 2, NULL, 0),
(19, 6, 'O3', 3, NULL, 0),
(20, 6, 'o1', 1, NULL, 0),
(21, 6, 'o2', 2, NULL, 0),
(22, 6, 'O3', 3, NULL, 0),
(23, 6, 'o1', 1, NULL, 0),
(24, 6, 'o2', 2, NULL, 0),
(25, 6, 'O3', 3, NULL, 0),
(26, 6, 'o1', 1, NULL, 0),
(27, 6, 'o2', 2, NULL, 0),
(28, 6, 'O3', 3, NULL, 0),
(29, 6, 'o1', 1, NULL, 0),
(30, 6, 'o2', 2, NULL, 0),
(31, 6, 'O3', 3, NULL, 0),
(32, 6, 'o1', 1, NULL, 0),
(33, 6, 'o2', 2, NULL, 0),
(34, 6, 'O3', 3, NULL, 0),
(35, 6, 'o1', 1, NULL, 0),
(36, 6, 'o2', 2, NULL, 0),
(37, 6, 'O3', 3, NULL, 0),
(38, 6, 'o1', 1, NULL, 0),
(39, 6, 'o2', 2, NULL, 0),
(40, 6, 'O3', 3, NULL, 0),
(41, 6, 'o1', 1, NULL, 0),
(42, 6, 'o2', 2, NULL, 0),
(43, 6, 'O3', 3, NULL, 0),
(44, 5, 'o1', 1, NULL, 0),
(45, 5, 'o2', 2, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE `user_profile` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(256) NOT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `Mobile` varchar(256) DEFAULT NULL,
  `Password` varchar(256) NOT NULL,
  `GenderEnumId` int(11) NOT NULL,
  `IsAdmin` tinyint(4) NOT NULL,
  `UserTypeEnumId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`Id`, `FullName`, `Email`, `Mobile`, `Password`, `GenderEnumId`, `IsAdmin`, `UserTypeEnumId`) VALUES
(2, 'Modho', 'modho@gmail.com', '+8801760645368', 'd41d8cd98f00b204e9800998ecf8427e', 1, 0, 2),
(3, 'Shomona', 'shomona@gmail.com', '+8801760645366', 'd41d8cd98f00b204e9800998ecf8427e', 2, 0, 1),
(4, 'Soniya', 'soniya@gmail.com', '+8801760645364', '202cb962ac59075b964b07152d234b70', 2, 0, 2),
(5, 'Rohim Mohi', 'rohim@gmail.com', '+8801760645366', 'd41d8cd98f00b204e9800998ecf8427e', 1, 0, 2),
(6, 'Korim', 'korim@gmail.com', '+8801760645364', '202cb962ac59075b964b07152d234b70', 1, 0, 2),
(19, 'Mohitosh ', 'employee@gmail.com', '+8801760645364', '202cb962ac59075b964b07152d234b70', 1, 0, 2),
(20, 'Mohi', 'mohi@gmail.com', '+8801760645366', '202cb962ac59075b964b07152d234b70', 1, 0, 1),
(24, 'Mohitosh Pramanik', 'mohitoshpm3@gmail.com', '+8801760645364', '202cb962ac59075b964b07152d234b70', 1, 0, 2),
(25, 'Mohitosh Pramanik', 'mohitoshpm@gmail.com', '+8801760645364', '202cb962ac59075b964b07152d234b70', 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `poll`
--
ALTER TABLE `poll`
  ADD UNIQUE KEY `Id` (`Id`),
  ADD KEY `ImageId` (`ImageId`),
  ADD KEY `CreateBy` (`CreateBy`);

--
-- Indexes for table `poll_option`
--
ALTER TABLE `poll_option`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `ImageId` (`ImageId`),
  ADD KEY `PollId` (`PollId`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `poll`
--
ALTER TABLE `poll`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `poll_option`
--
ALTER TABLE `poll_option`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `poll`
--
ALTER TABLE `poll`
  ADD CONSTRAINT `poll_ibfk_1` FOREIGN KEY (`ImageId`) REFERENCES `image` (`Id`),
  ADD CONSTRAINT `poll_ibfk_2` FOREIGN KEY (`CreateBy`) REFERENCES `user_profile` (`Id`);

--
-- Constraints for table `poll_option`
--
ALTER TABLE `poll_option`
  ADD CONSTRAINT `poll_option_ibfk_1` FOREIGN KEY (`ImageId`) REFERENCES `image` (`Id`),
  ADD CONSTRAINT `poll_option_ibfk_2` FOREIGN KEY (`PollId`) REFERENCES `poll` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
