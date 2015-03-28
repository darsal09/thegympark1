-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2015 at 04:12 AM
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
-- Table structure for table `tgp_users`
--

CREATE TABLE IF NOT EXISTS `tgp_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uName` varchar(100) NOT NULL,
  `uEmail` varchar(150) NOT NULL,
  `uPswd` varchar(32) DEFAULT NULL,
  `type` enum('R','A','E','I','N') NOT NULL DEFAULT 'R',
  `lastLogIn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `addedOn` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the users' AUTO_INCREMENT=140 ;

--
-- Dumping data for table `tgp_users`
--

INSERT INTO `tgp_users` (`id`, `uName`, `uEmail`, `uPswd`, `type`, `lastLogIn`, `addedOn`) VALUES
(31, '', 'darwindeveloping@gmail.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'A', '2015-02-05 02:31:42', '0000-00-00 00:00:00'),
(138, 'Yovanny Aguliar', 'olympiamarble@gmail.com', '14b162a27f85ad1a24cad839145a5e49', 'R', '2015-01-25 17:32:52', '0000-00-00 00:00:00'),
(139, 'Chon Salgado', 'chon.salgado@gmail.com', 'e766beec0da76ade786d0d410a1fc878', 'R', '2015-01-28 01:10:34', '0000-00-00 00:00:00'),
(137, 'Lettie Salgado', 'leticia_velasquez@yahoo.com', '3a12620f8a79260b4034e8d7d404d0d9', 'R', '2015-01-25 06:05:22', '0000-00-00 00:00:00'),
(122, '', 'dmsservices@gmail.com', '6414ef50564f5b3da6db019cd9612ca3', 'R', '2014-12-23 02:06:32', '2014-12-23 02:06:32'),
(119, '', 'darsal09@yahoo.com', 'b56b7b99b3e38f277e1cdbc3604c445c', 'R', '2014-12-21 17:38:40', '2014-10-30 01:12:47'),
(116, '', 'vincenzamarie@gmail.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'E', '2015-01-28 04:23:22', '2014-10-29 04:34:52');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
