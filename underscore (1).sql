-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2017 at 07:53 AM
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
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
CREATE TABLE IF NOT EXISTS `friends` (
  `f1` int(11) NOT NULL,
  `f2` int(11) NOT NULL,
  `since` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groupmembers`
--

DROP TABLE IF EXISTS `groupmembers`;
CREATE TABLE IF NOT EXISTS `groupmembers` (
  `groupid` int(11) NOT NULL,
  `idno` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groupmembers`
--

INSERT INTO `groupmembers` (`groupid`, `idno`) VALUES
(1001, 2116832),
(1001, 2094567),
(1001, 2483579),
(1234, 2000145),
(1234, 2330152);

-- --------------------------------------------------------

--
-- Table structure for table `grouppost`
--

DROP TABLE IF EXISTS `grouppost`;
CREATE TABLE IF NOT EXISTS `grouppost` (
  `gpostid` int(11) NOT NULL,
  `groupid` int(11) NOT NULL,
  `idno` int(11) NOT NULL,
  `content` varchar(140) NOT NULL,
  PRIMARY KEY (`gpostid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `grouppost`
--

INSERT INTO `grouppost` (`gpostid`, `groupid`, `idno`, `content`) VALUES
(28, 1000, 2110117, 'Tapusin na natin yung project ng mas maaga'),
(234, 1005, 2300152, 'All irregular students please report at the Dean''s Office . Thank you!\r\n\r\n'),
(1, 1000, 2042112, 'Welcome to SLU Summit!'),
(38, 1081, 2334578, 'Lets go now.');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `groupid` int(11) NOT NULL,
  `groupName` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL,
  `privacy` varchar(10) NOT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`groupid`, `groupName`, `status`, `privacy`) VALUES
(1000, 'Webtek Lab', 'pending', 'private'),
(1001, 'SCIS', 'approved', 'public'),
(1002, 'ProgApps940', 'pending', 'private'),
(1234, 'BasketballVarsity', 'pending', 'private'),
(1005, 'SCIS', 'pending', 'public'),
(1007, 'SON', 'pending', 'public'),
(1413, 'SEA', 'pending', 'public'),
(1006, 'STELA', 'pending', 'public'),
(1081, 'ForeignLang9012', 'pending', 'private'),
(1427, 'ProgApps9012', 'pending', 'private'),
(1022, 'English3-4120', 'pending', 'private'),
(1477, 'TechPres-9810', 'pending', 'private'),
(1629, 'NSTP-CWTS2', 'pending', 'public');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `postID` int(11) NOT NULL,
  `idno` int(7) NOT NULL,
  `date` date DEFAULT NULL,
  `privacy` varchar(15) NOT NULL,
  `content` varchar(140) NOT NULL,
  `file` longblob,
  PRIMARY KEY (`postID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`postID`, `idno`, `date`, `privacy`, `content`, `file`) VALUES
(1000, 1000000, NULL, 'public', 'Next checking of Finals Project will be on Tuesday, July 11, 2017. Please be reminded.', NULL),
(1001, 1000000, NULL, 'public', 'Final Project presentation will be discussed next week.', NULL),
(1009, 2116832, NULL, 'private', 'Testing Privacy!!!', NULL),
(1008, 2116832, NULL, 'public', 'Testing the new dashboard!!!', NULL),
(1007, 1000000, NULL, 'public', 'Presentation tomorrow!!!!', NULL),
(1010, 2116832, NULL, 'public', 'Webtek presentation later.', NULL),
(1011, 2144445, NULL, 'public', 'Webtek Presentation! Good Luck everybody!!!', NULL),
(1400, 2110117, '2017-06-02', 'private', 'I am not genius, but I''m ready to learn.', NULL),
(1236, 2487030, '2016-12-04', 'private', 'There will be no class on July 10, 2017 according to sir Macer.', NULL),
(1012, 2483579, '2017-07-06', 'private', 'The one is all we need.', NULL),
(1301, 2330152, '2018-02-13', 'public', 'Webtech is real.', NULL),
(1303, 2330152, '2017-07-06', 'public', 'Love is life.', NULL),
(1389, 2021433, '2017-07-29', 'private', 'Please be reminded that there will be a mass tomorrow.', NULL),
(1421, 2716630, '2017-06-05', 'private', 'Please be kind to give your fares.', NULL),
(1265, 2042112, '2017-03-22', 'public', 'I am going to jog this afternoon. Do you want to join with me?', NULL),
(1235, 2042112, '2017-06-30', 'public', 'Attendance is a must . Please attend the upcoming event this week.', NULL),
(1423, 2415478, '2017-09-19', 'private', 'Enough is enough.', NULL),
(1210, 2330152, '2017-07-30', 'private', 'Need donors for blood donation!', NULL),
(1211, 2483579, '2017-06-28', 'public', 'Please help me to promote the upcoming event this afteroon 4:00 pm.\r\n', NULL),
(1201, 2042112, '2017-05-16', 'private', 'Please pray for my father.', NULL),
(1024, 2487030, '2017-09-28', 'private', 'You are all invited to my birthday. Please come over in our house.', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
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

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `idno` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `userType` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `gender` varchar(6) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idno`, `email`, `password`, `firstname`, `lastname`, `userType`, `status`, `gender`) VALUES
(2116832, '2116832@slu.edu.ph', '2116832', 'Colvin', 'Cooper', 'user', 'approved', 'male'),
(2110117, '2111234@slu.edu.ph', 'cortana', 'Master', 'Chief', 'user', 'approved', 'male'),
(1000000, 'admin@admin.com', 'admin', 'admin', 'CC', 'admin', 'approved', 'male'),
(2123456, '2123456@slu.edu.ph', '2123456', 'Test', 'Ting', 'user', 'pending', 'female'),
(2094567, '2094567@slu.edu.ph', 'cooper', 'William', 'Cooper', 'user', 'pending', 'male'),
(2483579, 'jackson@gmail.com', 'jackckaj1234', 'Jack', 'Stone', 'user', 'approved', 'male'),
(2483699, 'carinossi@yahoo.com', 'Cruieuqwoi312', 'Vin', 'Carno', 'user', 'pending', 'female'),
(2545663, 'louiseni091@hotmail.com', 'RA23BnM', 'Santol', 'Luis', 'user', 'pending', 'male'),
(2155564, 'vincentarc2135@gmail.com', 'centaor092', 'Arch', 'Evangelista', 'user', 'pending', 'female'),
(2896005, 'james412@yahoo.com', 'smeashTwe', 'James', 'Ablao', 'user', 'pending', 'male'),
(2334578, 'famous_07@gmail.com', 'southboarder0923', 'Marian', 'Asuncion', 'user', 'pending', 'female'),
(2456780, 'slayer_om21@gmail.com', 'ghost782221', 'Lex', 'Bueno', 'user', 'pending', 'male'),
(2033818, 'flyover888@gmail.com', 'lopez90312', 'Kiko', 'Lopez', 'user', 'pending', 'male'),
(2330152, 'lovevoled34', 'mobasd321', 'Sim', 'Chu', 'user', 'approved', 'female'),
(2487030, 'maryosef@hotmail.com', 'evitable9000', 'Yosef', 'Cruz', 'user', 'approved', 'male'),
(2788592, 'bridgit09_21@yahoo.com', 'bromide31CsZ', 'Vanz', 'Sot', 'user', 'pending', 'male'),
(2716630, '2716630@slu.edu.ph', 'radioactivedh222', 'Son', 'Narzy', 'user', 'pending', 'male'),
(2467771, 'mixtapE4851@gmail.com', 'megalodon!', 'Sammy', 'Manalastas', 'user', 'approved', 'male'),
(2000245, 'cs_dust9213@hotmail.com', 'gigaBYTE09', 'Curry', 'Mcflurry', 'user', 'pending', 'male'),
(2428819, '2428819@slu.edu.ph', 'yukiORE21', 'Kenneth', 'Sugoi', 'user', 'pending', 'male'),
(2021433, 'scorpion_1981@gmail.com', 'beefsteak000', 'Alim', 'Mango', 'user', 'pending', 'male'),
(2548011, 'beaadTa1K213j@gmail.com', 'amazing', 'Samantha Holligan', 'Evangelista', 'user', 'pending', 'female'),
(2042112, '25042112@slu.edu.ph', 'tenMar1', 'David', 'Trinidad', 'user', 'approved', 'male'),
(2888710, 'decimLpoint@hotmail.com', 'despacito231', 'Rose', 'Makata', 'user', 'pending', ''),
(2331548, 'envyLoB3@yahoo.com', 'haha213lwq', 'Thomas', 'Evangelista', 'user', 'pending', 'male'),
(2778614, 'jomarCall012@gmail.com', 'joketimes3', 'Jomar', 'Caluminga', 'user', 'pending', 'male'),
(2542363, 'jonuts_kyut@hotmail.com', 'yarika821ja', 'Jonathan', 'Caluminga', 'user', 'pending', 'male'),
(2333980, 'BrandonComeback23@gmail.com', 'nomineeCore2', 'Bear', 'Brand', 'user', 'pending', 'male'),
(2777899, 'doveOfLuck2@yahoo.com', 'evenOrodd500', 'Mark', 'Tayug', 'user', 'pending', 'male'),
(2471115, '247115@slu.edu.ph', 'exist10', 'Little', 'Nicky', 'user', 'pending', 'female'),
(2497613, 'Marimi91@gmail.com', 'collateraL', 'Marian', 'Marim', 'user', 'pending', 'female'),
(2378145, 'ferrari_31@gmail.com', 'inevitable', 'Brando', 'Pelaez', 'user', 'active', 'male'),
(2144445, 'arvin312@yahoo.com', 'QWERTY', 'Arvin', 'Manalo', 'user', 'approved', 'male'),
(2451478, 'smuck21@gmail.com', 'sCa2lop', 'Marjory', 'Fernandez', 'user', 'approved', 'male');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
