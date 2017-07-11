-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 07:08 AM
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
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `f1` int(11) NOT NULL,
  `f2` int(11) NOT NULL,
  `since` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groupmembers`
--

CREATE TABLE `groupmembers` (
  `groupid` int(11) NOT NULL,
  `idno` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupmembers`
--

INSERT INTO `groupmembers` (`groupid`, `idno`) VALUES
(1001, 2116832);

-- --------------------------------------------------------

--
-- Table structure for table `grouppost`
--

CREATE TABLE `grouppost` (
  `gpostid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `idno` int(11) NOT NULL,
  `content` varchar(140) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `groupid` int(11) NOT NULL,
  `groupName` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `privacy` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupid`, `groupName`, `status`, `privacy`) VALUES
(1000, 'Webtek Lab', 'pending', 'private'),
(1001, 'SCIS', 'approved', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `postID` int(11) NOT NULL,
  `idno` int(7) NOT NULL,
  `date` date DEFAULT NULL,
  `privacy` varchar(15) NOT NULL,
  `content` varchar(140) NOT NULL,
  `file` longblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `idno`, `date`, `privacy`, `content`, `file`) VALUES
(1000, 1000000, NULL, 'public', 'Next checking of Finals Project will be on Tuesday, July 11, 2017. Please be reminded.', NULL),
(1001, 1000000, NULL, 'public', 'Final Project presentation will be discussed next week.', NULL),
(1007, 1000000, NULL, 'public', 'Presentation tomorrow!!!!', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `requestID` int(11) NOT NULL,
  `toID` int(11) NOT NULL,
  `fromID` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idno` int(7) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  `birthDate` date DEFAULT NULL,
  `contactNo` varchar(12) DEFAULT NULL,
  `registerDate` date DEFAULT NULL,
  `userType` varchar(12) NOT NULL,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idno`, `password`, `status`, `email`, `birthDate`, `contactNo`, `registerDate`, `userType`, `firstname`, `lastname`) VALUES
(2116832, '2116832', 'approved', '2116832@slu.edu.ph', '1992-09-15', '9564198629', '2017-07-07', 'user', 'Colvin', 'Cooper'),
(2135937, '2135937', 'approved', '2135937@slu.edu.ph', NULL, NULL, NULL, 'user', 'Jann Michael', 'Toledo'),
(2150582, '2150582', 'pending', '2150582@slu.edu.ph', NULL, NULL, NULL, 'user', 'Neil John', 'Ablao'),
(214538, 'tershiki626', 'pending', 'jestersbenitez@gmail.com', NULL, NULL, NULL, 'user', 'Jester', 'Benitez'),
(2144445, 'ara12345', 'approved', '2144445@slu.edu.ph', NULL, NULL, NULL, 'user', 'Ara', 'Pascua'),
(1000000, 'admin', 'approved', 'admin@admin.com', NULL, NULL, NULL, 'admin', 'Admin', 'CC'),
(2153442, '1234', 'approved', '2153442@slu.edu.ph', NULL, NULL, NULL, 'user', 'tristan', 'villareal'),
(2156551, 'hahaha', 'approved', '2156551@slu.edu.ph', NULL, NULL, NULL, 'user', 'Lorraine', 'Padawan'),
(2000000, 'test', 'approved', '2000000@slu.edu.ph', NULL, NULL, NULL, 'user', 'test', 'ting');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grouppost`
--
ALTER TABLE `grouppost`
  ADD PRIMARY KEY (`gpostid`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`postID`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`requestID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idno`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grouppost`
--
ALTER TABLE `grouppost`
  MODIFY `gpostid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1002;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `postID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1008;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `requestID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
