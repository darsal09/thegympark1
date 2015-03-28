-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2015 at 07:06 PM
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
-- Table structure for table `tgp_class_packages`
--

CREATE TABLE IF NOT EXISTS `tgp_class_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `price` int(11) NOT NULL,
  `type` enum('Individual','Family') NOT NULL,
  `amount` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `valid` int(11) NOT NULL,
  `options` enum('Day','Month','Year') NOT NULL DEFAULT 'Day',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the packages which will linked to a flexible class' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tgp_class_packages`
--

INSERT INTO `tgp_class_packages` (`id`, `title`, `price`, `type`, `amount`, `date_added`, `valid`, `options`) VALUES
(1, '3pk (good for 30 days) ', 30, 'Individual', 3, '0000-00-00 00:00:00', 30, 'Day'),
(2, '10pk (good for 6 months)', 90, 'Individual', 10, '0000-00-00 00:00:00', 6, 'Month'),
(3, 'Monthly Unlimited Value Play Pass', 49, 'Individual', -1, '0000-00-00 00:00:00', 1, 'Month'),
(4, '3-Month unlimited Value Play Pass', 129, 'Individual', -3, '0000-00-00 00:00:00', 3, 'Month'),
(5, '6-Month Unlimited Value Play Pass', 199, 'Individual', -6, '0000-00-00 00:00:00', 6, 'Month'),
(6, 'Yearly Unlimited Value Play Pass', 299, 'Individual', -12, '0000-00-00 00:00:00', 1, 'Year'),
(7, '15 visit play packet (good for 6 months)', 149, 'Family', 15, '0000-00-00 00:00:00', 0, 'Day'),
(8, 'Monthly Unlimited Value Play Pass', 89, 'Family', -1, '0000-00-00 00:00:00', 0, 'Day'),
(9, '3-Month Unlimited Play Pass', 219, 'Family', -3, '0000-00-00 00:00:00', 0, 'Day'),
(10, '6-Month Unlimited Play Pass', 349, 'Family', -6, '0000-00-00 00:00:00', 0, 'Day'),
(11, '1-Year Unlimited Play Pass', 519, 'Family', -12, '0000-00-00 00:00:00', 0, 'Day'),
(12, 'Dropping', 20, 'Individual', 1, '2014-10-11 20:36:24', 0, 'Day');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
