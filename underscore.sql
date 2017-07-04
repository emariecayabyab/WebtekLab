CREATE DATABASE  IF NOT EXISTS `academicsns` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `academicsns`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: academicsns
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `commentid` varchar(11) NOT NULL,
  `commentby` varchar(45) NOT NULL,
  `commentto` varchar(45) NOT NULL,
  `datecommented` date NOT NULL,
  PRIMARY KEY (`commentid`),
  UNIQUE KEY `commentid_UNIQUE` (`commentid`),
  KEY `commentby_idx` (`commentby`),
  KEY `commentto_idx` (`commentto`),
  CONSTRAINT `commentby` FOREIGN KEY (`commentby`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `commentto` FOREIGN KEY (`commentto`) REFERENCES `post` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `friends`
--

DROP TABLE IF EXISTS `friends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friends` (
  `f1` varchar(70) NOT NULL,
  `f2` varchar(70) NOT NULL,
  `since` date NOT NULL,
  `standing` enum('friendzone','schoolmate') NOT NULL,
  PRIMARY KEY (`f1`,`f2`),
  KEY `f2_idx` (`f2`),
  CONSTRAINT `f1` FOREIGN KEY (`f1`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `f2` FOREIGN KEY (`f2`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friends`
--

LOCK TABLES `friends` WRITE;
/*!40000 ALTER TABLE `friends` DISABLE KEYS */;
/*!40000 ALTER TABLE `friends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `msgid` varchar(11) NOT NULL,
  `source` varchar(45) NOT NULL,
  `recipient` varchar(45) NOT NULL,
  `messagetype` varchar(45) NOT NULL,
  `datesent` date NOT NULL,
  `timesent` time NOT NULL,
  PRIMARY KEY (`msgid`),
  UNIQUE KEY `msgid_UNIQUE` (`msgid`),
  KEY `source_idx` (`source`),
  KEY `recepient_idx` (`recipient`),
  CONSTRAINT `recepient` FOREIGN KEY (`recipient`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `source` FOREIGN KEY (`source`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification` (
  `notifid` varchar(11) NOT NULL,
  `notificationlink` blob NOT NULL,
  `desc` varchar(45) NOT NULL,
  `isNotifRead` enum('yes','no') NOT NULL,
  `fromID` varchar(45) NOT NULL,
  `toID` varchar(45) NOT NULL,
  `datetime` datetime NOT NULL,
  PRIMARY KEY (`notifid`),
  UNIQUE KEY `notifid_UNIQUE` (`notifid`),
  KEY `fromwho_idx` (`fromID`),
  KEY `towho_idx` (`toID`),
  CONSTRAINT `fromwho` FOREIGN KEY (`fromID`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `towho` FOREIGN KEY (`toID`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` varchar(11) NOT NULL,
  `posterid` varchar(7) NOT NULL,
  `postdate` datetime NOT NULL,
  `visibility` enum('public','private','onlyme') NOT NULL DEFAULT 'private',
  `postinfo` blob NOT NULL,
  `postgroup` enum('academic-related','personal','entertainment') NOT NULL DEFAULT 'personal',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `posterid_idx` (`posterid`),
  CONSTRAINT `posterid` FOREIGN KEY (`posterid`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `request`
--

DROP TABLE IF EXISTS `request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `request` (
  `reqid` varchar(11) NOT NULL,
  `sender` varchar(45) NOT NULL,
  `receiver` varchar(45) NOT NULL,
  `reqstatus` enum('pending','accept','decline') NOT NULL DEFAULT 'pending',
  `dateaccepted` date DEFAULT NULL,
  PRIMARY KEY (`reqid`),
  UNIQUE KEY `reqid_UNIQUE` (`reqid`),
  KEY `sender_idx` (`sender`),
  KEY `receiver_idx` (`receiver`),
  CONSTRAINT `receiver` FOREIGN KEY (`receiver`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sender` FOREIGN KEY (`sender`) REFERENCES `user` (`idno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='						';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `request`
--

LOCK TABLES `request` WRITE;
/*!40000 ALTER TABLE `request` DISABLE KEYS */;
/*!40000 ALTER TABLE `request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `idno` varchar(7) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `midinit` varchar(1) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `status` enum('pending','approved','denied','suspended') NOT NULL DEFAULT 'pending',
  `course` varchar(6) NOT NULL,
  `year` enum('1','2','3','4','5') NOT NULL,
  `birthdate` date NOT NULL,
  `school` enum('SCIS','SEA','SABM','SNS','SON','SOM','SOL','STELA') NOT NULL,
  `address` varchar(60) NOT NULL,
  `datecreated` date NOT NULL,
  PRIMARY KEY (`idno`),
  UNIQUE KEY `idno_UNIQUE` (`idno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-04 23:52:49
