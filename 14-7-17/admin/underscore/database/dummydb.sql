-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2017 at 08:44 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `underscore`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `idno` int(11) NOT NULL,
  `content` varchar(140) NOT NULL,
  `file` longblob,
  `privacy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `idno`, `content`, `file`, `privacy`) VALUES
(1003, 1000000, 'Submission of Final Project will be on July 18, 2017. Please Be reminded!', NULL, 'public'),
(1015, 1000000, 'Progress Report Tomorrow!!', NULL, 'public'),
(1005, 1000000, 'Luck favors the prepared', NULL, 'public'),
(1010, 1000000, '"I am your Father." - Darth Vader', '', 'public'),
(1018, 1000000, 'Testing', NULL, 'public'),
(1017, 1000000, '1 Week to go. FInals presentation na', NULL, 'public');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idno`, `email`, `password`, `firstname`, `lastname`, `userType`, `status`) VALUES
(2116832, '2116832@slu.edu.ph', '2116832', 'Colvin', 'Cooper', 'user', 'approved'),
(2110117, '2111234@slu.edu.ph', 'cortana', 'Master', 'Chief', 'user', 'pending'),
(1000000, 'admin@admin.com', 'admin', 'admin', 'CC', 'admin', 'approved'),
(2123456, '2123456@slu.edu.ph', '2123456', 'Test', 'Ting', 'user', 'approved'),
(2094567, '2094567@slu.edu.ph', 'cooper', 'William', 'Cooper', 'user', 'pending'),
(2000000, '2000000@slu.edu.ph', '2000000', 'Testing', 'Testing', 'user', 'approved'),
(2121095, '2121095@slu.edu.ph', '2121095', 'emarie', 'cayabyab', 'user', 'approved');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
