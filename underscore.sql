-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 07:55 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idno`, `email`, `password`, `firstname`, `lastname`, `userType`, `status`) VALUES
(2116832, '2116832@slu.edu.ph', '2116832', 'Colvin', 'Cooper', 'user', 'approved'),
(2110117, '2111234@slu.edu.ph', 'cortana', 'Master', 'Chief', 'user', 'approved'),
(1000000, 'admin@admin.com', 'admin', 'admin', 'CC', 'admin', 'approved'),
(2123456, '2123456@slu.edu.ph', '2123456', 'Test', 'Ting', 'user', 'pending'),
(2094567, '2094567@slu.edu.ph', 'cooper', 'William', 'Cooper', 'user', 'pending'),
(2483579, 'jackson@gmail.com', 'jackckaj1234', 'Jack', 'Stone', 'user', 'active'),
(2483699, 'carinossi@yahoo.com', 'Cruieuqwoi312', 'Vin', 'Carno', 'user', 'pending'),
(2545663, 'louiseni091@hotmail.com', 'RA23BnM', 'Santol', 'Luis', 'user', 'pending'),
(2155564, 'vincentarc2135@gmail.com', 'centaor092', 'Arch', 'Evangelista', 'user', 'pending'),
(2896005, 'james412@yahoo.com', 'smeashTwe', 'James', 'Ablao', 'user', 'pending'),
(2334578, 'famous_07@gmail.com', 'southboarder0923', 'Marian', 'Asuncion', 'user', 'pending'),
(2456780, 'slayer_om21@gmail.com', 'ghost782221', 'Lex', 'Bueno', 'user', 'pending'),
(2033818, 'flyover888@gmail.com', 'lopez90312', 'Kiko', 'Lopez', 'user', 'pending'),
(2330152, 'lovevoled34', 'mobasd321', 'Sim', 'Chu', 'user', 'pending'),
(2487030, 'maryosef@hotmail.com', 'evitable9000', 'Yosef', 'Cruz', 'user', 'pending'),
(2788592, 'bridgit09_21@yahoo.com', 'bromide31CsZ', 'Vanz', 'Sot', 'user', 'pending'),
(2716630, '2716630@slu.edu.ph', 'radioactivedh222', 'Son', 'Narzy', 'user', 'pending'),
(2467771, 'mixtapE4851@gmail.com', 'megalodon!', 'Sammy', 'Manalastas', 'user', 'pending'),
(2000245, 'cs_dust9213@hotmail.com', 'gigaBYTE09', 'Curry', 'Mcflurry', 'user', 'pending'),
(2428819, '2428819@slu.edu.ph', 'yukiORE21', 'Kenneth', 'Sugoi', 'user', 'pending'),
(2021433, 'scorpion_1981@gmail.com', 'beefsteak000', 'Alim', 'Mango', 'user', 'pending'),
(2548011, 'beaadTa1K213j@gmail.com', 'amazing', 'Samantha Holligan', 'Evangelista', 'user', 'pending'),
(2042112, '25042112', 'tenMar1', 'David', 'Trinidad', 'user', 'pending'),
(2888710, 'decimLpoint@hotmail.com', '', '', '', '', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
