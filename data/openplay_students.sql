-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2015 at 06:59 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `thegympark`
--

-- --------------------------------------------------------

--
-- Table structure for table `openplay_students`
--

CREATE TABLE IF NOT EXISTS `openplay_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `openplay_id` int(11) DEFAULT NULL,
  `amount` mediumint(9) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `package_id` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` enum('Pending','Register') NOT NULL DEFAULT 'Register',
  `start` date NOT NULL,
  `end` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the openplay and student link' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `openplay_students`
--

INSERT INTO `openplay_students` (`id`, `student_id`, `openplay_id`, `amount`, `addedOn`, `package_id`, `price`, `status`, `start`, `end`) VALUES
(1, 14, 10, 3, '2015-01-21 03:51:27', 1, 30, 'Register', '2015-01-21', '2015-02-20'),
(2, 14, 10, 3, '2015-01-21 04:04:55', 1, 30, 'Register', '2015-01-21', '2015-02-20'),
(3, 14, 10, 10, '2015-01-21 04:20:28', 2, 90, 'Register', '2015-01-21', '2015-07-21'),
(4, 10, 10, 10, '2015-01-21 04:26:38', 2, 90, 'Register', '2015-01-21', '2015-07-21'),
(5, 10, 10, 10, '2015-01-21 18:35:56', 2, 90, 'Register', '2015-01-21', '2015-07-21'),
(6, 10, 10, -6, '2015-01-21 18:41:45', 5, 199, 'Register', '2015-01-21', '2015-07-21'),
(7, 10, 10, 3, '2015-01-22 01:52:51', 1, 30, 'Register', '2015-01-22', '2015-02-21'),
(8, 26, 10, 3, '2015-01-25 06:06:48', 1, 30, 'Register', '2015-01-25', '2015-02-24'),
(9, 27, 10, 3, '2015-01-25 17:32:59', 1, 30, 'Register', '2015-01-25', '2015-02-24');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
