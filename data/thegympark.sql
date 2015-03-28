-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2014 at 07:33 PM
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

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_memberships`( )
BEGIN
	SELECT tm.*, tmp.type
	FROM tgp_memberships tm
	INNER JOIN tgp_membership_types tmp ON tmp.id = tm.type_id
	WHERE tm.active = 1
	ORDER BY tm.plan_id, tm.price, tm.type_id, tm.title;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_get_membership_feature`( IN fID INT )
BEGIN
	SELECT *
	FROM tgp_membership_features 
	WHERE id = fID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_shopping_cart_empty`( IN userID VARCHAR(32) )
BEGIN
	SELECT COUNT( * ) FROM shopping_cart WHERE user_id = userID;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_signin_user`( IN email VARCHAR( 150 ), IN pswd VARCHAR(32) )
BEGIN
	SELECT * 
	FROM tgp_users
	WHERE uEmail = email AND uPswd = pswd;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tgp_user_last_login`( IN userID INT )
BEGIN 
	UPDATE tgp_users 
	SET lastLogIn = NOW()
	WHERE id = userID;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `holidaycalendar`
--

CREATE TABLE IF NOT EXISTS `holidaycalendar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `weekday` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') NOT NULL,
  `hdate` date NOT NULL,
  `year` year(4) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the holidays for the year' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `holidaycalendar`
--

INSERT INTO `holidaycalendar` (`id`, `weekday`, `hdate`, `year`, `addedOn`, `title`) VALUES
(2, 'Monday', '2014-01-20', 2014, '2014-01-19 21:22:11', 'Martin Luther King Jr.'),
(3, 'Monday', '2014-05-26', 2014, '2014-03-16 18:03:34', 'Memorial  Day');

-- --------------------------------------------------------

--
-- Table structure for table `openplays`
--

CREATE TABLE IF NOT EXISTS `openplays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `season_id` int(11) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `openplays`
--

INSERT INTO `openplays` (`id`, `title`, `season_id`, `addedOn`) VALUES
(7, '', 2, '2014-04-05 02:18:20'),
(6, '', 1, '2013-12-27 01:47:05'),
(5, '', 2, '2013-12-27 01:42:22'),
(8, 'Parkour', 2, '2014-04-06 18:15:49');

-- --------------------------------------------------------

--
-- Table structure for table `openplay_students`
--

CREATE TABLE IF NOT EXISTS `openplay_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `openplay_id` int(11) NOT NULL,
  `amount` mediumint(9) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the openplay and student link' AUTO_INCREMENT=5 ;

--
-- Dumping data for table `openplay_students`
--

INSERT INTO `openplay_students` (`id`, `student_id`, `openplay_id`, `amount`, `addedOn`) VALUES
(1, 21, 6, 5, '2013-12-31 01:18:14'),
(2, 23, 6, 5, '2014-01-14 02:40:11'),
(3, 38, 6, 15, '2014-01-14 02:40:11'),
(4, 28, 6, 5, '2014-01-14 02:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE IF NOT EXISTS `shopping_cart` (
  `sc_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(32) NOT NULL,
  `class_id` int(11) NOT NULL,
  `class_title_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `date_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `buy_now` enum('True','False') NOT NULL DEFAULT 'True',
  `package` varchar(250) DEFAULT NULL,
  `class_type` varchar(50) NOT NULL DEFAULT 'Fixed',
  `class_price` int(11) NOT NULL,
  `class_days` text NOT NULL,
  `class_title` varchar(250) NOT NULL,
  `type` enum('Class','Membership') NOT NULL DEFAULT 'Class',
  PRIMARY KEY (`sc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the values of the items a user tries to buy' AUTO_INCREMENT=48 ;

--
-- Dumping data for table `shopping_cart`
--

INSERT INTO `shopping_cart` (`sc_id`, `user_id`, `class_id`, `class_title_id`, `quantity`, `date_on`, `buy_now`, `package`, `class_type`, `class_price`, `class_days`, `class_title`, `type`) VALUES
(18, '751449f4f56d2b465786aad16a14c58f', 11, 12, 2, '2013-03-20 21:40:19', 'True', '', 'Fixed', 250, 'Monday__2:30pm', 'KidFit', 'Class'),
(21, '187bccef434d2460ba39d62a4a95a925', 14, 13, 2, '2013-08-09 18:23:44', 'True', '', 'Fixed', 150, 'Monday__4:15pm', 'Men''s Fitness', 'Class'),
(27, '04aa64634645cf93ea3de0ce40c9d98b', 6, 7, 1, '2013-08-10 23:56:29', 'True', '', 'Fixed', 350, 'Thursday__9:30am', 'Todds & Moms', 'Class'),
(37, '437b29b0ae207132c0ff7ef0c2529eb6', 4, 1, 1, '2013-08-30 19:31:31', 'True', '', 'Fixed', 250, 'Friday__1pm', 'Todds & Moms', 'Class'),
(40, '937a13ac0d890169e5ea8f6bc267bb63', 5, 1, 1, '2013-09-22 00:32:54', 'True', '', 'Fixed', 250, 'Tuesday__10:30am', 'Todds & Moms', 'Class');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_address`
--

CREATE TABLE IF NOT EXISTS `tgp_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `street` varchar(250) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the addresses for students' AUTO_INCREMENT=40 ;

--
-- Dumping data for table `tgp_address`
--

INSERT INTO `tgp_address` (`id`, `student_id`, `street`, `city`, `state`, `zip`) VALUES
(15, 22, '715 46th Ave. 2nd Floor', 'Brooklyn', 'NY', '11215'),
(9, 16, '21 E 92nd Street', 'New York ', 'NY', '10001'),
(14, 21, '715 45th Street 2nd Floor', 'Brooklyn', 'NY', '11216'),
(16, 24, 'Aldea La Mesa', 'Villa de San Francisco', 'FM', ''),
(17, 25, '74 Linden Street', 'Brooklyn', 'NY', '11221'),
(18, 26, '74 Linden Street', 'Brooklyn', 'NY', '11221'),
(19, 27, '74 Lindes Street 2nd Floor', 'Brooklyn', 'NY', '11221'),
(20, 28, '21 E 21st Street', 'New York', 'NY', '10010'),
(21, 29, '21 E 21st Street Apt. 1D', 'New York', 'NY', '10010'),
(22, 30, '21 E 21st Street', 'New York', 'NY', '10010'),
(23, 31, '21 E 21st Street', 'New York', 'NY', '10010'),
(24, 32, '74 Linden Street 2nd Floor', 'Brooklyn', 'NY', '11221'),
(25, 33, '74 Linden Street 2nd Floor', 'Brooklyn', 'NY', '11221'),
(26, 34, '21 E 21st Street', 'New York', 'NY', '10010'),
(27, 35, '21 E 21st Street', 'New York', 'NY', '10010'),
(28, 36, '21 E 21st Street', 'New York', 'NY', '10010'),
(29, 37, '21 E 23rd Street 2nd Floor', 'Brooklyn', 'NY', '11221'),
(30, 38, '23 Garfield Place', 'Brooklyn', 'NY', '11215'),
(31, 39, '573 Ocean Parkway', 'Brookyn', 'NY', '11217'),
(32, 40, '573 Ocean Parkway', 'Brookyn', 'NY', '11217'),
(33, 41, '28-90 34th Ave', 'Queens', 'NY', '11220'),
(34, 42, '28-90 34th Ave', 'Queens', 'NY', '11220'),
(35, 43, '74 Linden Street', 'Brooklyn', 'NY', '11221'),
(36, 44, '74 Linden Street', 'Brooklyn', 'NY', '11221'),
(37, 45, '74 Linden Street 2nd Floor', 'Brooklyn', 'NY', '11221'),
(38, 23, '74 Linden Street', 'Brooklyn', 'NY', '11221'),
(39, 46, '74 Linden Street', 'Brooklyn', 'NY', '11221');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_age_groups`
--

CREATE TABLE IF NOT EXISTS `tgp_age_groups` (
  `age_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`age_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tgp_age_groups`
--

INSERT INTO `tgp_age_groups` (`age_group_id`, `title`) VALUES
(1, 'All Ages'),
(2, '18 yrs old and up'),
(3, '8 yrs old - 17 yrs old'),
(4, '7 yrs old - 12 yrs old'),
(5, '9 yrs old - 12 yrs old'),
(6, '5 yrs old - 8 yrs old'),
(7, 'Pre-walking'),
(8, '12 months - 17 months'),
(9, '18 months - 24 months'),
(10, '2 yrs old - 3 yrs old'),
(11, '3 yrs old - 4 yrs old'),
(12, 'Infants - 6 yrs old');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_classes`
--

CREATE TABLE IF NOT EXISTS `tgp_classes` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `weekday` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `season_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `location_id` int(11) NOT NULL DEFAULT '1',
  `instructor_id` int(11) NOT NULL DEFAULT '1',
  `category_id` int(11) NOT NULL,
  `tgp_class_category_id` int(11) DEFAULT NULL,
  `tgp_program_id` int(11) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `total_time` int(11) NOT NULL,
  `program_featured` enum('Y','N') NOT NULL DEFAULT 'Y',
  `category_featured` enum('Y','N') NOT NULL DEFAULT 'Y',
  `types` enum('Fixed','Flexible') NOT NULL DEFAULT 'Fixed',
  `year` int(11) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the classes information' AUTO_INCREMENT=94 ;

--
-- Dumping data for table `tgp_classes`
--

INSERT INTO `tgp_classes` (`class_id`, `title_id`, `start_time`, `end_time`, `weekday`, `season_id`, `start_date`, `end_date`, `location_id`, `instructor_id`, `category_id`, `tgp_class_category_id`, `tgp_program_id`, `price`, `total_time`, `program_featured`, `category_featured`, `types`, `year`, `addedOn`) VALUES
(1, 1, '16:00:00', '16:45:00', 'Thursday', 1, '2012-09-04', '2012-12-18', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(2, 1, '10:00:00', '10:45:00', 'Monday', 1, '2012-09-10', '2012-12-17', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(5, 1, '10:30:00', '11:15:00', 'Tuesday', 1, '2012-09-18', '2013-01-29', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(4, 1, '13:00:00', '13:45:00', 'Friday', 1, '2012-09-17', '2013-01-28', 1, 1, 1, 1, 1, 250, 45, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(6, 7, '09:30:00', '10:10:00', 'Thursday', 1, '2012-09-17', '2013-01-28', 1, 1, 1, 1, 1, 350, 40, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(7, 7, '15:15:00', '16:00:00', 'Sunday', 1, '2012-09-18', '2012-09-18', 0, 0, 1, 1, 1, 450, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(8, 11, '12:05:00', '12:55:00', 'Saturday', 1, '2012-09-01', '2013-01-18', 0, 0, 12, 12, 5, 300, 0, 'Y', 'Y', 'Flexible', 0, '0000-00-00 00:00:00'),
(9, 11, '10:30:00', '11:30:00', 'Wednesday', 1, '2012-09-01', '2013-01-20', 0, 0, 12, 12, 5, 0, 0, 'Y', 'Y', 'Flexible', 0, '0000-00-00 00:00:00'),
(10, 7, '09:10:00', '09:50:00', 'Monday', 2, '2013-10-07', '2013-12-30', 1, 1, 1, 1, 1, 145, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(11, 12, '14:30:00', '14:30:00', 'Monday', 2, '0000-00-00', '0000-00-00', 1, 1, 4, 4, 8, 250, 0, 'N', 'N', 'Fixed', 0, '0000-00-00 00:00:00'),
(12, 13, '16:00:00', '16:00:00', 'Wednesday', 2, '0000-00-00', '0000-00-00', 1, 1, 6, 6, 8, 90, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(13, 12, '16:06:00', '17:06:00', 'Tuesday', 2, '0000-00-00', '0000-00-00', 1, 1, 4, 4, 8, 150, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(14, 13, '16:15:00', '17:15:00', 'Monday', 1, '2013-02-18', '2013-06-24', 1, 1, 6, 6, 8, 150, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(15, 13, '06:00:00', '07:30:00', 'Friday', 2, '2013-01-01', '2013-06-01', 1, 1, 6, 6, 8, 140, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(16, 13, '18:00:00', '19:30:00', 'Tuesday', 2, '2013-01-01', '2013-06-01', 1, 1, 6, 6, 8, 140, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(17, 14, '10:30:00', '12:00:00', 'Tuesday', 1, '2013-09-03', '2014-01-21', 1, 1, 14, 14, 4, 350, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(18, 22, '15:00:00', '17:00:00', 'Saturday', 1, '2013-08-17', '2013-12-28', 1, 1, 15, 15, 3, 150, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(24, 22, '11:30:00', '13:00:00', 'Tuesday', 1, '2013-09-03', '2014-01-07', 1, 1, 15, 15, 3, 250, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(25, 23, '11:00:00', '12:30:00', 'Wednesday', 1, '2013-09-04', '2014-01-29', 1, 1, 15, 15, 3, 170, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(26, 24, '09:30:00', '10:30:00', 'Monday', 1, '2013-09-16', '2014-01-27', 1, 1, 2, 2, 1, 425, 0, 'Y', 'Y', 'Fixed', 0, '0000-00-00 00:00:00'),
(27, 14, '11:30:00', '12:10:00', 'Wednesday', 1, '2013-09-18', '2014-01-29', 1, 1, 14, 14, 4, 150, 0, 'Y', 'N', 'Fixed', 2013, '0000-00-00 00:00:00'),
(28, 14, '11:30:00', '12:10:00', 'Wednesday', 2, '2014-02-05', '2014-06-18', 1, 1, 14, 14, 4, 150, 0, 'Y', 'N', 'Fixed', 2014, '0000-00-00 00:00:00'),
(59, 14, '10:30:00', '11:10:00', 'Tuesday', 1, '2013-09-17', '2014-01-28', 1, 1, 14, 14, 4, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(58, 22, '15:00:00', '15:40:00', 'Saturday', 1, '2013-09-21', '2014-02-01', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(57, 22, '11:30:00', '12:10:00', 'Tuesday', 1, '2013-09-17', '2014-01-28', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(56, 22, '18:00:00', '18:40:00', 'Sunday', 1, '2013-09-22', '2014-02-02', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(55, 22, '15:00:00', '15:40:00', 'Friday', 1, '2013-09-20', '2014-01-31', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(54, 22, '13:10:00', '13:50:00', 'Thursday', 1, '2013-09-19', '2014-01-30', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(53, 22, '12:00:00', '12:40:00', 'Wednesday', 1, '2013-09-18', '2014-01-29', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(52, 22, '10:00:00', '10:40:00', 'Monday', 1, '2013-09-16', '2014-01-27', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(84, 35, '11:00:00', '11:50:00', 'Wednesday', 8, '2014-06-27', '2014-09-05', 1, 1, 7, 7, 8, 150, 0, 'N', 'N', 'Fixed', 2014, '2013-11-22 23:54:25'),
(83, 22, '12:00:00', '12:40:00', 'Wednesday', 8, '2014-06-27', '2014-09-05', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2014, '2013-11-22 23:54:25'),
(82, 36, '15:15:00', '15:45:00', 'Thursday', 1, '2013-09-19', '2014-01-23', 1, 1, 25, 25, 1, 250, 0, 'Y', 'N', 'Fixed', 2013, '2013-10-25 16:49:54'),
(81, 34, '08:40:00', '09:40:00', 'Wednesday', 1, '2013-09-18', '2014-01-22', 1, 1, 17, 17, 16, 300, 0, 'Y', 'N', 'Fixed', 2013, '2013-10-25 03:23:46'),
(80, 11, '11:00:00', '11:40:00', 'Thursday', 1, '2013-09-19', '2014-01-23', 1, 1, 12, 12, 5, 350, 0, 'Y', 'N', 'Flexible', 2013, '2013-10-24 22:53:07'),
(79, 7, '08:10:00', '08:50:00', 'Friday', 1, '2013-09-20', '2014-01-31', 1, 1, 1, 1, 1, 425, 0, 'N', 'N', 'Fixed', 2013, '2013-10-19 00:02:23'),
(78, 27, '10:15:00', '10:55:00', 'Wednesday', 1, '2013-09-18', '2014-01-29', 1, 1, 17, 17, 16, 200, 0, 'N', 'N', 'Fixed', 2013, '2013-10-18 23:26:33'),
(77, 25, '19:00:00', '19:40:00', 'Saturday', 1, '2013-09-21', '2014-02-01', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-17 22:36:09'),
(76, 25, '19:00:00', '19:40:00', 'Friday', 1, '2013-09-20', '2014-01-31', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-17 22:35:50'),
(75, 25, '19:00:00', '19:40:00', 'Thursday', 1, '2013-09-19', '2014-01-30', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-17 22:35:19'),
(74, 25, '19:00:00', '19:40:00', 'Wednesday', 1, '2013-09-18', '2014-01-29', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-17 22:34:58'),
(73, 25, '08:00:00', '08:40:00', 'Tuesday', 1, '2013-09-17', '2014-01-28', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-17 22:33:40'),
(72, 25, '09:00:00', '09:40:00', 'Monday', 1, '2013-09-16', '2014-01-27', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-17 22:28:17'),
(71, 14, '08:45:00', '09:25:00', 'Monday', 1, '2013-09-16', '2014-01-27', 1, 1, 14, 14, 4, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-17 22:26:48'),
(70, 22, '10:00:00', '10:40:00', 'Monday', 2, '2014-02-03', '2014-06-16', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2014, '2013-10-16 17:43:19'),
(60, 23, '11:00:00', '11:40:00', 'Wednesday', 1, '2013-09-18', '2014-01-29', 1, 1, 15, 15, 3, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(61, 12, '14:30:00', '15:10:00', 'Monday', 1, '2013-09-16', '2014-01-27', 1, 1, 4, 4, 8, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(62, 12, '16:06:00', '16:46:00', 'Tuesday', 1, '2013-09-17', '2014-01-28', 1, 1, 4, 4, 8, 150, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 14:23:20'),
(63, 26, '09:00:00', '09:40:00', 'Monday', 1, '2013-09-16', '2014-01-27', 1, 1, 17, 17, 16, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 16:59:18'),
(64, 26, '08:45:00', '09:25:00', 'Tuesday', 1, '2013-09-17', '2014-01-28', 1, 1, 17, 17, 16, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 16:59:18'),
(65, 26, '09:30:00', '10:10:00', 'Wednesday', 1, '2013-09-18', '2014-01-29', 1, 1, 17, 17, 16, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 16:59:18'),
(66, 26, '10:00:00', '10:40:00', 'Thursday', 1, '2013-09-19', '2014-01-30', 1, 1, 17, 17, 16, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 16:59:18'),
(67, 26, '10:30:00', '11:10:00', 'Friday', 1, '2013-09-20', '2014-01-31', 1, 1, 17, 17, 16, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 16:59:18'),
(68, 26, '12:00:00', '12:40:00', 'Saturday', 1, '2013-09-21', '2014-02-01', 1, 1, 17, 17, 16, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 16:59:18'),
(69, 26, '11:00:00', '11:40:00', 'Sunday', 1, '2013-09-22', '2014-02-02', 1, 1, 17, 17, 16, 0, 0, 'N', 'N', 'Fixed', 2013, '2013-10-16 16:59:18'),
(85, 37, '15:00:00', '16:30:00', 'Wednesday', 2, '2014-02-05', '2014-06-11', 1, 1, 26, 26, 9, 150, 0, 'Y', 'Y', 'Fixed', 2014, '2014-01-03 00:04:05'),
(86, 38, '16:00:00', '18:00:00', 'Tuesday', 2, '2014-02-04', '2014-06-10', 1, 1, 27, 27, 16, 350, 0, 'Y', 'N', 'Fixed', 2014, '2014-01-12 21:06:35'),
(87, 14, '10:00:00', '10:40:00', 'Saturday', 8, '2014-06-24', '2014-09-02', 1, 1, 14, 14, 4, 300, 0, 'N', 'N', 'Fixed', 2014, '2014-01-12 21:21:49'),
(88, 14, '08:45:00', '09:25:00', 'Monday', 8, '2014-06-29', '2014-09-07', 1, 1, 14, 14, 4, 300, 0, 'N', 'N', 'Fixed', 2014, '2014-01-12 21:21:49'),
(89, 14, '11:30:00', '12:10:00', 'Wednesday', 8, '2014-06-27', '2014-09-05', 1, 1, 14, 14, 4, 300, 0, 'N', 'N', 'Fixed', 2014, '2014-01-12 21:21:49'),
(90, 25, '11:00:00', '11:40:00', 'Sunday', 8, '2014-06-22', '2014-08-31', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2014, '2014-01-12 21:21:49'),
(91, 25, '08:00:00', '08:40:00', 'Tuesday', 8, '2014-06-28', '2014-09-06', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2014, '2014-01-12 21:21:49'),
(92, 25, '19:00:00', '19:40:00', 'Saturday', 8, '2014-06-24', '2014-09-02', 1, 1, 16, 16, 2, 0, 0, 'N', 'N', 'Fixed', 2014, '2014-01-12 21:21:49'),
(93, 39, '12:45:00', '14:15:00', 'Saturday', 1, '2013-09-21', '2014-01-25', 1, 1, 12, 12, 5, 200, 0, 'Y', 'N', 'Flexible', 2013, '2014-01-18 01:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_classes_categories`
--

CREATE TABLE IF NOT EXISTS `tgp_classes_categories` (
  `cc_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `program_id` int(11) NOT NULL,
  `hexColor` varchar(7) NOT NULL DEFAULT '#FFFFFF',
  PRIMARY KEY (`cc_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `tgp_classes_categories`
--

INSERT INTO `tgp_classes_categories` (`cc_id`, `title`, `description`, `program_id`, `hexColor`) VALUES
(1, 'Mommy & Me', 'Our Mommy & Me program offers classes for children from 12 months to 3 years old. We focus on basic locomotor movements, agility, and positive social interaction among peers. Have a great time while you and your child discover the wonders of movement and   play at The Gym Park. A caregiver or parent participate in the class.', 1, '#536F87'),
(2, 'Toddler', 'Toddlers ages 3-5 years old are ready to be part of a group and can play with out the help of a parent or caregiver. Our lessons will continue to develop the necessary motor skills, strength, flexibility and social awareness that is appropriate for this age group.', 1, '#A5AAFF'),
(12, 'Open Play', 'kids come whenever they want during the week.', 5, '#7B4C00'),
(14, 'Cheerleading', 'testing', 4, '#057818'),
(4, 'KidFit', 'KidFit is a total fitness program for children and young adults. We use games and fun activities to promote a healthy body and mind.  These exercises focus on cardio-health, flexibility, strength, balance, nutrition, and much more.', 8, '#591A1E'),
(5, 'Women&#39;s Light-Fit', 'Women&#39;s Light-Fit is a total fitness program for low to medium intensity workouts. This class is perfect for women that are just getting into fitness and exercise. We promote a healthy body and mind with exercises that focus on cardio-health, flexibility, strength, balance, nutrition, and healing.', 8, '#E2101D'),
(6, 'Men&#39;s Fitness', 'Men&#39;s Fitness is designed for men to increase cardio-health, promote flexibility, strength, balance, and nutrition. We use apparatus and natural body weight to compose our total exercise strategy.', 8, '#D98AEA'),
(7, 'Senior Fit', 'Senior Fit is a total fitness program for over 50&#39;s. We promote a healthy body and mind with exercises that focus on cardio-health, flexibility, strength, balance, nutrition, and healing.', 8, '#09698F'),
(15, 'Gymnastics', '', 3, '#07ABED'),
(16, 'Flip', 'Testing it', 2, '#FE342A'),
(17, 'Toddler Soccer', '', 16, '#00FF00'),
(25, 'Mommy and Me', '', 1, '#33CCFF'),
(26, 'Physical Education', '', 9, '#FF6600'),
(27, 'Nikki', 'Testing Nikki', 16, '#FFFF00'),
(28, 'Parkour', '', 6, '#006600');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the packages which will linked to a flexible class' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tgp_class_packages`
--

INSERT INTO `tgp_class_packages` (`id`, `title`, `price`, `type`, `amount`, `date_added`) VALUES
(1, '3pk (good for 30 days) ', 30, 'Individual', 3, '0000-00-00 00:00:00'),
(2, '10pk (good for 6 months)', 90, 'Individual', 10, '0000-00-00 00:00:00'),
(3, 'Monthly Unlimited Value Play Pass', 49, 'Individual', -1, '0000-00-00 00:00:00'),
(4, '3-Month unlimited Value Play Pass', 129, 'Individual', -3, '0000-00-00 00:00:00'),
(5, '6-Month Unlimited Value Play Pass', 199, 'Individual', -6, '0000-00-00 00:00:00'),
(6, 'Yearly Unlimited Value Play Pass', 299, 'Individual', -12, '0000-00-00 00:00:00'),
(7, '15 visit play packet (good for 6 months)', 149, 'Family', 15, '0000-00-00 00:00:00'),
(8, 'Monthly Unlimited Value Play Pass', 89, 'Family', -1, '0000-00-00 00:00:00'),
(9, '3-Month Unlimited Play Pass', 219, 'Family', -3, '0000-00-00 00:00:00'),
(10, '6-Month Unlimited Play Pass', 349, 'Family', -6, '0000-00-00 00:00:00'),
(11, '1-Year Unlimited Play Pass', 519, 'Family', -12, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_class_students`
--

CREATE TABLE IF NOT EXISTS `tgp_class_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modefied` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the connection between students and classes' AUTO_INCREMENT=30 ;

--
-- Dumping data for table `tgp_class_students`
--

INSERT INTO `tgp_class_students` (`id`, `class_id`, `student_id`, `addedOn`, `modefied`) VALUES
(2, 10, 16, '2013-03-02 03:06:06', 0),
(11, 1, 21, '2013-12-02 00:12:45', 0),
(7, 10, 21, '2013-03-02 05:45:15', 0),
(9, 11, 23, '2013-08-21 03:48:38', 0),
(10, 2, 24, '2013-10-02 14:38:11', 0),
(12, 10, 23, '2013-12-04 02:45:22', 0),
(13, 61, 22, '2013-12-05 17:26:01', 0),
(14, 68, 25, '2013-12-05 17:32:28', 0),
(15, 10, 25, '2013-12-11 01:15:04', 0),
(16, 15, 23, '2013-12-11 01:16:58', 0),
(17, 15, 24, '2013-12-11 01:16:58', 0),
(18, 84, 28, '2013-12-11 01:19:28', 0),
(19, 6, 43, '2013-12-11 01:56:34', 0),
(20, 5, 23, '2013-12-11 18:19:23', 0),
(21, 9, 23, '2013-12-11 18:41:03', 0),
(22, 62, 28, '2013-12-11 18:41:50', 0),
(23, 26, 38, '2013-12-12 01:30:55', 0),
(24, 81, 42, '2013-12-12 01:31:32', 0),
(25, 1, 39, '2013-12-12 01:55:36', 0),
(29, 52, 44, '2013-12-13 01:48:49', 0),
(28, 80, 45, '2013-12-12 03:31:37', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_log`
--

CREATE TABLE IF NOT EXISTS `tgp_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `program_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `class_group_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tgp_membership_attributes`
--

CREATE TABLE IF NOT EXISTS `tgp_membership_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `membership_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `type` enum('Fixed','Option') NOT NULL DEFAULT 'Fixed',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the attributes for a membership' AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tgp_membership_attributes`
--

INSERT INTO `tgp_membership_attributes` (`id`, `membership_id`, `attribute_id`, `type`, `added_on`) VALUES
(1, 1, 2, 'Fixed', '2012-10-20 03:51:33'),
(2, 1, 1, 'Fixed', '2012-10-20 03:51:33'),
(3, 1, 3, 'Fixed', '2012-10-20 03:51:33'),
(4, 1, 4, 'Fixed', '2012-10-21 01:54:42'),
(5, 1, 5, 'Fixed', '2012-10-21 01:57:01'),
(6, 1, 6, 'Fixed', '2012-10-21 01:58:22'),
(7, 3, 1, 'Fixed', '2012-10-25 01:03:12'),
(8, 3, 2, 'Fixed', '2012-10-25 01:03:24'),
(9, 3, 4, 'Fixed', '2012-10-25 01:04:29'),
(10, 3, 5, 'Fixed', '2012-10-25 01:04:49'),
(11, 3, 7, 'Fixed', '2012-10-25 01:07:02'),
(12, 2, 5, 'Fixed', '2012-10-25 01:08:51'),
(13, 2, 4, 'Fixed', '2012-10-25 01:08:51'),
(14, 2, 2, 'Fixed', '2012-10-25 01:08:51'),
(15, 2, 8, 'Fixed', '2012-10-25 01:08:51'),
(16, 2, 9, 'Fixed', '2012-10-25 01:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_membership_features`
--

CREATE TABLE IF NOT EXISTS `tgp_membership_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the features provided for membership' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tgp_membership_features`
--

INSERT INTO `tgp_membership_features` (`id`, `title`, `quantity`, `added_on`) VALUES
(1, 'One 9-Week Session of Classes', 1, '0000-00-00 00:00:00'),
(2, 'Free Registration Save $50.00', 1, '0000-00-00 00:00:00'),
(3, '25% off Additional Classes', -25, '0000-00-00 00:00:00'),
(4, '50% off Open Play Packs', -50, '2012-10-21 01:52:57'),
(5, '3 Free Guest Family Open Play Visits', 3, '2012-10-21 01:56:49'),
(6, 'Two Semesters of Classes', 2, '2012-10-21 01:57:54'),
(7, '10% Off Additional Classes', -10, '2012-10-25 01:06:53'),
(8, 'One Semester of Classes', 1, '2012-10-25 01:08:08'),
(9, '15% Off Additional Classes', -15, '2012-10-25 01:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_membership_types`
--

CREATE TABLE IF NOT EXISTS `tgp_membership_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL DEFAULT 'Bronze',
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the membership types' AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tgp_membership_types`
--

INSERT INTO `tgp_membership_types` (`id`, `type`, `added_on`) VALUES
(1, 'Bronze', '0000-00-00 00:00:00'),
(2, 'Silver', '2012-10-20 04:00:00'),
(3, 'Gold', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_nannies`
--

CREATE TABLE IF NOT EXISTS `tgp_nannies` (
  `nanny_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `dateAdded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`nanny_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the nanny for a student' AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tgp_nannies`
--

INSERT INTO `tgp_nannies` (`nanny_id`, `student_id`, `name`, `phone`, `dateAdded`) VALUES
(1, 22, 'Martha Aguilar', '980.313.1342', '2013-03-07 02:07:11'),
(2, 16, 'Cindy Myers', '917.902.9012', '2013-08-13 01:43:10'),
(3, 25, 'Linda Salgado', '', '2013-11-15 15:59:38'),
(4, 0, '917-809-2910', '33', '2013-11-20 00:14:32'),
(5, 0, '917-901-9010', '34', '2013-11-20 00:25:23'),
(6, 35, 'Cindy Vanegas', '917-901-9010', '2013-11-20 00:32:25'),
(7, 36, 'Cindy Vanegas', '917-901-9010', '2013-11-20 00:51:55'),
(8, 37, 'Vivian Tasch', '917-901-9010', '2013-11-20 00:54:57'),
(9, 43, 'Wendy Mejia', '646-890-9011', '2013-11-22 19:10:54');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletters`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletters` (
  `newsletter_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `message` longtext NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`newsletter_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the newsletters from the gym park' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tgp_newsletters`
--

INSERT INTO `tgp_newsletters` (`newsletter_id`, `title`, `message`, `added_on`, `modified`) VALUES
(1, 'Fall 2012', '&lt;h1&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium; color: #008000;&quot;&gt;Fall 2012&lt;/span&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt; &lt;br /&gt;&lt;/span&gt;&lt;/h1&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Welcome back to all of you. I am glad to see you all back. This semester is full of surprises and hope that you will enjoy it.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Thank you for coming back and hope you have a blast in our classes.&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Thank you and welcome once again!&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;&lt;em&gt;The Gym Park&lt;/em&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;81 Oak Street&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;Greenpoint, NY 11222&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;a title=&quot;the gym park website&quot; href=&quot;http://www.thegympark.com&quot;&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;thegympark.com&lt;/span&gt;&lt;/a&gt;&lt;/p&gt;\r\n&lt;p&gt;&lt;span style=&quot;font-family: arial,helvetica,sans-serif; font-size: medium;&quot;&gt;(718) 349-6627&lt;/span&gt;&lt;/p&gt;', '2012-11-17 00:43:10', '0000-00-00 00:00:00'),
(2, 'Winter 2013', '&lt;p&gt;&lt;span style=&quot;font-size: x-large; font-family: times new roman,times;&quot;&gt;&lt;strong&gt;Winter 2013&lt;/strong&gt;&lt;/span&gt;&lt;/p&gt;\r\n&lt;p&gt;I hope you had great holidays and are ready for the new semester for gymnastics. We have a range of classes, &lt;a href=&quot;http://www.thegympark.com&quot;&gt;click here&lt;/a&gt; to visit our site for more information&lt;/p&gt;', '2012-11-20 02:04:21', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_categories`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `added_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the categories for the newsletters' AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tgp_newsletter_categories`
--

INSERT INTO `tgp_newsletter_categories` (`id`, `filter_id`, `title`, `description`, `added_on`, `modified`) VALUES
(1, 0, 'All', 'This category should hold all the members in the newsletter system.', '2012-11-21 03:25:46', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_filters`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` tinytext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the filters for the newsletters' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tgp_newsletter_filters`
--

INSERT INTO `tgp_newsletter_filters` (`id`, `title`, `description`) VALUES
(1, 'Class', 'This filter allows you to choose a class to collect all its participants email information and send them an email or newsletter. '),
(3, 'Class Title', 'This filter allows you send a newsletter or email to all the people are sign up to the classes that belong a class title.'),
(4, 'Time', 'This filter helps you send a newsletter to a group of people who are taking or took classes at a specific time range.'),
(5, 'Day', 'This filter lets you target people who take classes in a specific day or days.'),
(6, 'Age', 'This filter allows you target a specific age group to send either an email or newsletter to them.'),
(7, 'Month', 'This filters targets people whose birthdays are coming up from now to a specific x amount of months and sends the selected newsletter to them.'),
(8, 'Category', 'This filter targets all the people who are sign up for the classes that belong to a category.'),
(9, 'Program', 'This filter allows you to target people who enrolled in the classes that belong to a program.'),
(10, 'Newsletter Categories', 'This filter lets you pick all the members that are in the selected categories.'),
(11, 'Single', 'sends email to a single user'),
(12, 'Seasons', 'sends email or newsletter to everyone enrolled in the season.');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_newsletter_sent`
--

CREATE TABLE IF NOT EXISTS `tgp_newsletter_sent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `newsletter_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `member_id` int(11) NOT NULL,
  `sent_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the newsletter sent to the member within a category' AUTO_INCREMENT=13 ;

--
-- Dumping data for table `tgp_newsletter_sent`
--

INSERT INTO `tgp_newsletter_sent` (`id`, `newsletter_id`, `category_id`, `member_id`, `sent_on`) VALUES
(1, 2, 0, 24, '2013-08-16 22:56:25'),
(2, 2, 0, 23, '2013-08-16 22:56:30'),
(3, 2, 0, 2, '2013-08-16 23:02:48'),
(4, 2, 0, 24, '2013-08-16 23:02:50'),
(5, 2, 0, 23, '2013-08-16 23:02:53'),
(6, 1, 0, 2, '2013-08-17 05:16:34'),
(7, 1, 0, 25, '2013-08-17 05:16:37'),
(8, 1, 0, 24, '2013-08-17 05:16:39'),
(9, 1, 0, 23, '2013-08-17 05:16:42'),
(10, 1, 0, 21, '2013-09-15 14:39:18'),
(11, 1, 0, 16, '2013-09-15 14:39:20'),
(12, 1, 0, 16, '2013-09-15 14:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_packages_classes_junction`
--

CREATE TABLE IF NOT EXISTS `tgp_packages_classes_junction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the connection between class and packages' AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tgp_packages_classes_junction`
--

INSERT INTO `tgp_packages_classes_junction` (`id`, `package_id`, `class_id`) VALUES
(1, 2, 11),
(2, 4, 11),
(3, 1, 11),
(4, 5, 11),
(5, 3, 11),
(6, 6, 11),
(7, 11, 11),
(8, 7, 11),
(9, 9, 11),
(10, 10, 11),
(11, 8, 11);

-- --------------------------------------------------------

--
-- Table structure for table `tgp_parents`
--

CREATE TABLE IF NOT EXISTS `tgp_parents` (
  `parent_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `homePhone` varchar(20) NOT NULL,
  `cellPhone` varchar(20) NOT NULL,
  `email` varchar(200) NOT NULL,
  `workPhone` varchar(20) NOT NULL,
  PRIMARY KEY (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the parents for a student' AUTO_INCREMENT=36 ;

--
-- Dumping data for table `tgp_parents`
--

INSERT INTO `tgp_parents` (`parent_id`, `student_id`, `name`, `homePhone`, `cellPhone`, `email`, `workPhone`) VALUES
(10, 16, 'Robert Saymeyer', '212.490.1312', '', 'dmsservices@gmail.com', ''),
(9, 16, 'Stacey Saymeyer', '212.313.1431', '', 'darsal09@yahoo.com', ''),
(17, 22, 'Mario Galan', '718-900-9010', '646-310-9010', 'mario@gmail.com', '718-901-9010'),
(16, 22, 'Kattia AguiSalga', '718-901-9029', '917-900-9000', 'kattia@gmail.com', '718-901-9009'),
(18, 25, 'Nicole Salgachiello', '', '', 'vincenzamarie@gmail.com', ''),
(19, 25, 'Darwin Salgado', '', '646-723-1300', 'darsal09@yahoo.com', ''),
(20, 0, '', '', '', '31', '917-891-9010'),
(21, 0, '', '212-121-2121', '', '31', ''),
(22, 0, '', '', '', '33', '917-902-2901'),
(23, 0, '', '', '', '33', '917-901-1012'),
(24, 0, '212-290-9010', '', '', '34', ''),
(25, 0, '', '', '', '34', '347-901-9010'),
(26, 35, 'Wendy Vanegas', '212-290-9010', '', '', ''),
(27, 35, 'Carlos Vanegas', '', '347-901-9010', '', ''),
(28, 36, 'Wendy Vanegas', '212-290-9010', '', '', ''),
(29, 36, 'Carlos Vanegas', '', '347-901-9010', '', ''),
(30, 37, 'Lilian Tasch', '', '917-901-9010', '', ''),
(31, 37, 'Sanders Tasch', '', '', '', '212-121-1211'),
(32, 33, 'Sonia Mejia', '', '', 'sonia@gmail.com', ''),
(33, 33, 'Oscar Mejia', '', 'oscar@gmail.com', '', ''),
(34, 43, 'Ginia Mejia', '', '', 'darsal09@yahoo.com', ''),
(35, 43, 'Will Mejia', '', '', 'darsal09@yahoo.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_programs`
--

CREATE TABLE IF NOT EXISTS `tgp_programs` (
  `program_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`program_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `tgp_programs`
--

INSERT INTO `tgp_programs` (`program_id`, `title`, `description`) VALUES
(1, 'Infants & Toddlers', ''),
(2, 'Flip', 'testing description.'),
(3, 'Gymnastics', ''),
(4, 'Cheerleading', ''),
(5, 'Open Play', ''),
(6, 'Parkour', ''),
(8, 'Fitness', 'Testing to make sure this has a description so that I can see how it looks with a description on it.'),
(9, 'Physical Education', ''),
(10, 'Silks', 'Enjoy a beautiful, elegant  experience working out on the Aerial Silks at The Gym Park. Let our experienced instructors guide you through the world of Silks. Enhance your flexibility, strength, stamina, and elegance through a series of challenging and enjoyable exercise and sequences. '),
(16, 'Soccer', 'A variety of soccer drills combined with gymnastics.');

-- --------------------------------------------------------

--
-- Table structure for table `tgp_students`
--

CREATE TABLE IF NOT EXISTS `tgp_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first` varchar(50) NOT NULL,
  `M` char(1) NOT NULL,
  `last` varchar(70) NOT NULL,
  `dob` date NOT NULL,
  `gender` enum('M','F') NOT NULL DEFAULT 'M',
  `addedOn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the students immediate information' AUTO_INCREMENT=47 ;

--
-- Dumping data for table `tgp_students`
--

INSERT INTO `tgp_students` (`id`, `first`, `M`, `last`, `dob`, `gender`, `addedOn`) VALUES
(16, 'Syrus', '', 'Saymeyer', '2011-03-01', 'M', '0000-00-00 00:00:00'),
(21, 'Yovanni', '', 'Aguilar', '1977-12-13', 'M', '0000-00-00 00:00:00'),
(22, 'Mathew', '', 'Galan', '2004-09-07', 'M', '0000-00-00 00:00:00'),
(23, 'Darwin', '', 'Salgado', '1979-06-26', 'M', '0000-00-00 00:00:00'),
(24, 'Marcelino', '', 'Salgado', '1958-05-28', 'M', '2013-10-02 14:38:11'),
(25, 'Nick', '', 'Salgaciello', '2012-12-31', 'M', '2013-11-15 02:27:44'),
(26, 'Wendy', '', 'Salgado', '1993-11-09', 'F', '2013-11-18 23:47:28'),
(27, 'Julianne', '', 'Seyville', '2010-11-08', 'F', '2013-11-19 00:14:40'),
(28, 'Cindy', '', 'Velasquez', '2008-11-17', 'F', '2013-11-19 13:50:37'),
(29, 'Mabel', '', 'Serrano', '2006-11-20', 'F', '2013-11-19 14:06:04'),
(30, 'Kattia', '', 'Salgado', '2003-11-11', 'F', '2013-11-19 23:52:08'),
(31, 'Emma', '', 'Velasquez', '2004-11-16', 'F', '2013-11-19 23:58:18'),
(32, 'Will', '', 'Mejia', '2003-11-10', 'M', '2013-11-20 00:13:22'),
(33, 'Will', '', 'Mejia', '2003-11-10', 'M', '2013-11-20 00:14:32'),
(34, 'Hope', '', 'Vanegas', '2003-11-03', 'F', '2013-11-20 00:25:23'),
(35, 'Hope', '', 'Vanegas', '2003-11-03', 'F', '2013-11-20 00:32:25'),
(36, 'Hope', '', 'Vanegas', '2003-11-03', 'F', '2013-11-20 00:51:55'),
(37, 'Evan', '', 'Tasch', '2006-11-20', 'M', '2013-11-20 00:54:57'),
(38, 'Dean', '', 'Simpson', '1993-11-29', 'M', '2013-11-20 01:06:16'),
(39, 'Tony', '', 'Jean', '1993-11-01', 'M', '2013-11-20 01:16:34'),
(40, 'Tony', '', 'Jean', '1993-11-01', 'M', '2013-11-20 01:19:59'),
(41, 'Sean', '', 'Wells', '1993-11-07', 'M', '2013-11-20 01:23:48'),
(42, 'Sean', '', 'Wells', '1993-11-07', 'M', '2013-11-20 01:24:19'),
(43, 'Carlos', '', 'Mejia', '2003-11-04', 'M', '2013-11-22 19:10:54'),
(44, 'Ed', '', 'Wells', '1983-07-12', 'M', '2013-12-12 03:27:33'),
(45, 'Justin', '', 'Williams', '1983-06-12', 'M', '2013-12-12 03:31:37'),
(46, 'Brenda', '', 'Salgado', '1969-12-31', 'F', '2014-04-05 02:11:14');

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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='holds the users' AUTO_INCREMENT=27 ;

--
-- Dumping data for table `tgp_users`
--

INSERT INTO `tgp_users` (`id`, `uName`, `uEmail`, `uPswd`, `type`, `lastLogIn`, `addedOn`) VALUES
(1, 'Nicole Minichiello', 'vincenzamarie@gmail.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2013-02-28 23:07:23', '0000-00-00 00:00:00'),
(2, 'Darwin Salgado', 'darsal09@yahoo.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'A', '2014-05-29 00:57:19', '0000-00-00 00:00:00'),
(14, 'Michael Velasquez', 'velasquez_michael@yahoo.es', '5b85ba3e3d7c2a8291442083ca5aa610', 'E', '2013-08-10 22:26:45', '0000-00-00 00:00:00'),
(15, 'Kattia Salgado', 'puny07@aol.com', '3b61a31cf0856c5b1411c427d9de5e5f', 'R', '2012-09-27 01:54:48', '0000-00-00 00:00:00'),
(16, 'Lettie Salgado', 'leticia_salgado@gmail.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2012-09-27 02:16:31', '0000-00-00 00:00:00'),
(17, 'Michael Velasquez', 'michael_velasquez@yahoo.es', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2013-08-10 22:27:11', '0000-00-00 00:00:00'),
(18, 'Lettie Salgado', 'leticia_velasquez@yahoo.com', '5b85ba3e3d7c2a8291442083ca5aa610', 'R', '2012-11-04 18:41:50', '0000-00-00 00:00:00'),
(25, 'Darwin Salgado', 'dmsservices@gmail.com', NULL, 'N', '2013-08-17 05:15:55', '0000-00-00 00:00:00'),
(24, 'Edwin Salgado', 'edwin.salgado@gmail.com', NULL, 'N', '2013-08-16 20:44:15', '0000-00-00 00:00:00'),
(23, 'Michael Velasquez', 'michael@yahoo.es', NULL, 'N', '2013-08-16 20:00:44', '0000-00-00 00:00:00'),
(26, 'Nicole Minichiello', 'nicole@healthtalks.net', 'b9735720a8ba9e78070d51e5c77fb7ad', 'R', '2014-01-12 21:25:40', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
