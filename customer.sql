-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 02:25 PM
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
-- Database: `dealberg_task`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `phoneNumber` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `linkedid` int(11) DEFAULT NULL,
  `created` datetime DEFAULT current_timestamp(),
  `updated` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deletedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `linkPrecendence` varchar(1) NOT NULL
) ;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `phoneNumber`, `email`, `linkedid`, `created`, `updated`, `deletedAt`, `linkPrecendence`) VALUES
(187, '919191', 'george@hillvalley.edu', NULL, '2023-09-01 17:45:27', '2023-09-01 17:45:27', '2023-09-01 12:15:27', '1'),
(188, '717171', 'biffsucks@hillvalley.edu', 191, '2023-09-01 17:45:27', '2023-09-01 17:49:13', '2023-09-01 12:19:13', '1'),
(189, '717171', 'george@hillvalley.edu', 191, '2023-09-01 17:46:31', '2023-09-01 17:49:13', '2023-09-01 12:19:13', '0'),
(190, '40089444', 'mcfly4@hillvalley.edu', NULL, '2023-09-01 17:47:07', '2023-09-01 17:47:07', '2023-09-01 12:17:07', '1'),
(191, '400849', 'mcfly@hillvalley.edu', NULL, '2023-09-01 17:47:33', '2023-09-01 17:47:33', '2023-09-01 12:17:33', '1'),
(192, '433', 'mcfly4@hillvalley.edu', 194, '2023-09-01 17:47:33', '2023-09-01 17:49:12', '2023-09-01 12:19:12', '0'),
(193, '717171', 'mcfly4@hillvalley.edu', 191, '2023-09-01 17:48:29', '2023-09-01 17:49:13', '2023-09-01 12:19:13', '0'),
(194, '433', 'mcfly@hrevalley.edu', NULL, '2023-09-01 17:49:12', '2023-09-01 17:49:12', '2023-09-01 12:19:12', '0'),
(195, '444', 'mcfly@h43ey.edu', NULL, '2023-09-01 17:49:12', '2023-09-01 17:49:12', '2023-09-01 12:19:12', '1'),
(196, '717171', 'mcfly@hillvalley.edu', 191, '2023-09-01 17:49:12', '2023-09-01 17:49:13', '2023-09-01 12:19:13', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
