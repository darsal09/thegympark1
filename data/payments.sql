-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2015 at 08:51 AM
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
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openplay_student_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `total_due` float NOT NULL,
  `total_payment` float NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `receipt` varchar(256) NOT NULL,
  `note` text NOT NULL,
  `reason_code` varchar(256) NOT NULL,
  `registration_type` enum('Class','Open Play') NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modefied` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `addedBy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `openplay_student_id`, `student_id`, `price`, `discount`, `total_due`, `total_payment`, `payment_type`, `receipt`, `note`, `reason_code`, `registration_type`, `addedOn`, `modefied`, `addedBy`) VALUES
(1, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'testing to make sure that it works.', 'testing reason code', 'Class', '2015-01-19 04:04:23', '0000-00-00 00:00:00', 0),
(2, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'testing to make sure that it works.', 'testing reason code', 'Open Play', '2015-01-19 04:09:33', '0000-00-00 00:00:00', 0),
(3, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'testing to make sure that it works.', 'testing reason code', 'Open Play', '2015-01-19 04:13:21', '0000-00-00 00:00:00', 0),
(4, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tesitng', 'testing', 'Open Play', '2015-01-19 04:13:56', '0000-00-00 00:00:00', 0),
(5, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tesitng', 'testing', 'Open Play', '2015-01-19 04:14:38', '0000-00-00 00:00:00', 0),
(6, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'testing', 'testing', 'Open Play', '2015-01-19 04:15:00', '0000-00-00 00:00:00', 0),
(7, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'testing', '', 'Open Play', '2015-01-19 13:15:55', '0000-00-00 00:00:00', 0),
(8, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'testing', '', 'Open Play', '2015-01-19 13:19:30', '0000-00-00 00:00:00', 0),
(9, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tst', '', 'Open Play', '2015-01-19 13:20:36', '0000-00-00 00:00:00', 0),
(10, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:21:20', '0000-00-00 00:00:00', 0),
(11, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:22:11', '0000-00-00 00:00:00', 0),
(12, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:22:37', '0000-00-00 00:00:00', 0),
(13, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:22:58', '0000-00-00 00:00:00', 0),
(14, 21, 14, 30, 10, 40, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:24:18', '0000-00-00 00:00:00', 0),
(15, 21, 14, 30, 10, 40, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:24:54', '0000-00-00 00:00:00', 0),
(16, 21, 14, 30, 10, 30, 30, 'Cash', 'Cash-', 'tst', '', 'Open Play', '2015-01-19 13:25:02', '0000-00-00 00:00:00', 0),
(17, 21, 14, 30, 10, 30, 30, 'Cash', 'Cash-', 'tst', '', 'Open Play', '2015-01-19 13:27:54', '0000-00-00 00:00:00', 0),
(18, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tst', 'tst', 'Open Play', '2015-01-19 13:30:08', '0000-00-00 00:00:00', 0),
(19, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tests', '', 'Open Play', '2015-01-19 13:30:59', '0000-00-00 00:00:00', 0),
(20, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tests', '', 'Open Play', '2015-01-19 13:33:05', '0000-00-00 00:00:00', 0),
(21, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tests', '', 'Open Play', '2015-01-19 13:33:38', '0000-00-00 00:00:00', 0),
(22, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tests', '', 'Open Play', '2015-01-19 13:33:54', '0000-00-00 00:00:00', 0),
(23, 21, 14, 30, 0, 30, 30, 'Cash', 'Cash-', 'tests', '', 'Open Play', '2015-01-19 13:34:50', '0000-00-00 00:00:00', 0),
(24, 20, 10, 30, 0, 30, 30, 'Check', 'Check-111', '', '', 'Open Play', '2015-01-19 13:37:08', '0000-00-00 00:00:00', 0),
(25, 22, 10, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:42:13', '0000-00-00 00:00:00', 0),
(26, 22, 10, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:44:37', '0000-00-00 00:00:00', 0),
(27, 22, 10, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 13:44:45', '0000-00-00 00:00:00', 0),
(28, 23, 10, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 14:11:25', '0000-00-00 00:00:00', 0),
(29, 24, 10, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-19 14:19:09', '0000-00-00 00:00:00', 0),
(30, 62, 14, 49, 0, 49, 49, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 00:41:33', '0000-00-00 00:00:00', 0),
(31, 62, 14, 49, 0, 49, 49, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 00:43:35', '0000-00-00 00:00:00', 0),
(32, 62, 14, 49, 0, 49, 0, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 00:45:03', '0000-00-00 00:00:00', 0),
(33, 63, 14, 129, 0, 129, 0, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 00:45:23', '0000-00-00 00:00:00', 0),
(34, 64, 14, 199, 0, 199, 0, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 00:47:39', '0000-00-00 00:00:00', 0),
(35, 1, 14, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 03:51:39', '0000-00-00 00:00:00', 0),
(36, 2, 14, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 04:05:26', '0000-00-00 00:00:00', 0),
(37, 3, 14, 90, 0, 90, 90, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 04:20:42', '0000-00-00 00:00:00', 0),
(38, 4, 10, 90, 0, 90, 100, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 04:26:57', '0000-00-00 00:00:00', 0),
(39, 5, 10, 90, 0, 90, 90, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 18:36:11', '0000-00-00 00:00:00', 0),
(40, 6, 10, 199, 10, 209, 209, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-21 18:42:22', '0000-00-00 00:00:00', 0),
(41, 7, 10, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-22 01:53:00', '0000-00-00 00:00:00', 0),
(42, 8, 26, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-25 06:07:02', '0000-00-00 00:00:00', 0),
(43, 9, 27, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-25 17:33:05', '0000-00-00 00:00:00', 0),
(44, 10, 10, 30, 0, 30, 30, 'Cash', 'Cash-', '', '', 'Open Play', '2015-01-26 06:04:45', '0000-00-00 00:00:00', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
