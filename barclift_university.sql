-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2015 at 11:46 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `barclift_university`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE DATABASE IF NOT EXISTS barclift_university;
USE barclift_university;

CREATE TABLE IF NOT EXISTS `books` (
  `bookID` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(50) NOT NULL,
  PRIMARY KEY (`bookID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookID`, `bookName`) VALUES
(1, 'College Course Workbook 1'),
(2, 'College Text book 1'),
(3, 'College File book 2'),
(4, 'Other Text book');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `classID` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(50) NOT NULL,
  PRIMARY KEY (`classID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`classID`, `className`) VALUES
(1, 'MSIS 336 Web and App Development'),
(2, 'MSIS 436 Express.js frameworks');

-- --------------------------------------------------------

--
-- Table structure for table `housing`
--

CREATE TABLE IF NOT EXISTS `housing` (
  `houseID` int(11) NOT NULL,
  `houseName` varchar(50) NOT NULL,
  PRIMARY KEY (`houseID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `housing`
--

INSERT INTO `housing` (`houseID`, `houseName`) VALUES
(1, 'harkness hall');

-- --------------------------------------------------------

--
-- Table structure for table `organizations`
--

CREATE TABLE IF NOT EXISTS `organizations` (
  `orgID` int(11) NOT NULL AUTO_INCREMENT,
  `orgName` varchar(50) NOT NULL,
  PRIMARY KEY (`orgID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `organizations`
--

INSERT INTO `organizations` (`orgID`, `orgName`) VALUES
(1, 'Tech Support united');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'auto incrementing user_id of each user, unique index',
  `user_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s name, unique',
  `user_password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s password in salted and hashed format',
  `user_email` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'user''s email, unique',
  `phone` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` char(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_name` (`user_name`),
  UNIQUE KEY `user_email` (`user_email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='user data' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_password_hash`, `user_email`, `phone`, `first_name`, `last_name`, `address`, `state`, `sex`) VALUES
(1, 'aaaaa', '$2y$10$F91vY4jCVpq7IesP/Orr6uUlWibt/mrfgw.DE1U2OvyuVLfOkg3Z2', 'aaa@aaaa.com', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'bbb', '$2y$10$y8y7RLle9N27OhmjQF1ZFOxPTaaCsqJbAxmZiCzU4M18/h1yNGKam', 'bbb@bbb.com', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'cccc', '$2y$10$YMDFUt5tu/zxpdWmz7o49O96k0xbJXHMYysNRL1C8Cje.5Lh/n1hK', 'cccc@cccc.com', NULL, 'cccc', 'cccc', 'ccccc', NULL, NULL),
(5, 'dddd', '$2y$10$EEo1bNUc02oUjBSFOKK6.ujPvU.SSxQbnGDiVZEpufjRAle2WbA1K', 'ddd@ddd.com', NULL, 'ddd', 'ddd', 'ddd', NULL, NULL),
(6, 'aaa', '$2y$10$n9VtHF/vssS1LyrZ1AfJ9Oj2SWBdyxu2ESeF2pNEtpemAoE5ixI4y', 'amiyr@mail.com', NULL, 'amiyr', 'barclift', '123456', NULL, NULL),
(8, 'ffff', '$2y$10$iSofBGqzo34ZQED.Di0UiO30eaOQrdIOmfoTON5EclUCzQ4bkHr.6', 'fff@fff.com', NULL, 'fff', 'fff', 'fff', 'NY', NULL),
(10, 'hhh', '$2y$10$R7TfuMMDHP8PgFKvfuKRQeslG7qrVDEz03hcmcVaV8xkjnNhyba5m', 'hhh@hhh.com', NULL, 'hhh', 'hhh', 'hhh', 'CA', NULL),
(11, 'ggg', '$2y$10$x.Ol5twh/5Ssqo/GdNKxMe1.BKpWXQoRSyR/ySp3oGZoLKU3vCwBe', 'ggg@ggg.com', NULL, 'ggg', 'ggg', 'ggg', 'FL', 'male'),
(12, 'iii', '$2y$10$3XK1pdi0UyCR8K7xmkMcxOlZ7M3z2M64J5SkaQpauMskIqnaW9ObO', 'iii@iii.com', NULL, 'iii', 'iii', 'iii', 'KS', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `users_books`
--

CREATE TABLE IF NOT EXISTS `users_books` (
  `user_id` int(11) NOT NULL,
  `bookID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_books`
--

INSERT INTO `users_books` (`user_id`, `bookID`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `users_classes`
--

CREATE TABLE IF NOT EXISTS `users_classes` (
  `user_id` int(11) NOT NULL,
  `classes_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_classes`
--

INSERT INTO `users_classes` (`user_id`, `classes_id`) VALUES
(3, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

