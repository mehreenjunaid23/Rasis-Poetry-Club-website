-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2022 at 09:08 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `poetryweb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `Username` varchar(45) NOT NULL,
  `PoemTitle` varchar(55) NOT NULL,
  `CommText` varchar(10000) NOT NULL,
  `CommId` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`Username`, `PoemTitle`, `CommText`, `CommId`) VALUES
('joalfarra', 'Introduction to Poetry', 'I like it.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `MessageId` int(255) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `PhoneNum` int(20) NOT NULL,
  `Text` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `poems`
--

CREATE TABLE `poems` (
  `Title` varchar(55) NOT NULL,
  `Genre` varchar(25) NOT NULL,
  `Text` mediumtext NOT NULL,
  `Author` varchar(55) NOT NULL,
  `Date` date NOT NULL,
  `Likes` int(11) NOT NULL,
  `CommentsId` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `poems`
--

INSERT INTO `poems` (`Title`, `Genre`, `Text`, `Author`, `Date`, `Likes`, `CommentsId`) VALUES
('Introduction to Poetry', 'Educational', 'Poem text...', 'Leena', '2022-12-24', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(16) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Email` varchar(44) NOT NULL,
  `Role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`Username`, `Password`, `Name`, `Email`, `Role`) VALUES
('joalfarra', '1122', 'Joud', 'joalfarra@effat.edu.sa', ''),
('leaalam', '1234', 'Leena', 'leaalam@effat.edu.sa', 'Manager'),
('leena', '12', 'leena', 'leena@leena.leena', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommId`),
  ADD KEY `PoemTitle` (`PoemTitle`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`MessageId`),
  ADD KEY `Name` (`Name`);

--
-- Indexes for table `poems`
--
ALTER TABLE `poems`
  ADD PRIMARY KEY (`Title`),
  ADD KEY `Author` (`Author`),
  ADD KEY `CommentsId` (`CommentsId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
