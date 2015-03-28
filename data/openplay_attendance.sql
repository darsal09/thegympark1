-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2015 at 07:01 AM
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
-- Table structure for table `openplay_attendance`
--

CREATE TABLE IF NOT EXISTS `openplay_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openplay_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `dates` date NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `openplay_student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `openplay_attendance`
--

INSERT INTO `openplay_attendance` (`id`, `openplay_id`, `package_id`, `class_id`, `student_id`, `dates`, `addedOn`, `updatedOn`, `openplay_student_id`) VALUES
(1, 10, 1, 102, 14, '2015-01-21', '2015-01-21 04:02:50', '0000-00-00 00:00:00', 1),
(4, 10, 2, 102, 10, '2015-01-21', '2015-01-21 18:36:19', '0000-00-00 00:00:00', 5),
(5, 10, 1, 103, 26, '2015-01-23', '2015-01-25 17:12:23', '0000-00-00 00:00:00', 8),
(6, 10, 5, 103, 10, '2015-01-23', '2015-01-25 17:17:32', '0000-00-00 00:00:00', 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
