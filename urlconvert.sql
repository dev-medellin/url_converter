-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2022 at 10:22 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urlconvert`
--

-- --------------------------------------------------------

--
-- Table structure for table `tutorials`
--

CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `urldata`
--

CREATE TABLE `urldata` (
  `id` int(11) NOT NULL,
  `redirect_url` longtext NOT NULL,
  `alias` varchar(255) NOT NULL,
  `codex` varchar(50) NOT NULL,
  `createed_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `update_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `urldata`
--

INSERT INTO `urldata` (`id`, `redirect_url`, `alias`, `codex`, `createed_at`, `update_at`) VALUES
(26, 'https://dev.ozstickerprinting.com/', 'http://localhost:4200/redirect/KpzFO8YS', 'KpzFO8YS', '2022-03-29 07:08:34', '0000-00-00 00:00:00'),
(30, 'https://www.tutsmake.com/angular-12-crud-node-js-express-mysql-tutorial/', 'http://localhost:4200/redirect/m0RhbaQ8', 'm0RhbaQ8', '2022-03-29 07:17:09', '0000-00-00 00:00:00'),
(31, 'https://stackoverflow.com/questions/49448386/subscribe-stuck-in-endless-loop-when-state-changed', 'http://localhost:4200/redirect/0s9OMlPB', '0s9OMlPB', '2022-03-29 08:21:43', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tutorials`
--
ALTER TABLE `tutorials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `urldata`
--
ALTER TABLE `urldata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tutorials`
--
ALTER TABLE `tutorials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `urldata`
--
ALTER TABLE `urldata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
