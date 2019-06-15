-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 29, 2019 at 05:19 AM
-- Server version: 5.6.39
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shreyase_shreyaset`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `map_adress` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `map_adress`, `created_at`) VALUES
(2, 'RSRSRSRSRS', '2019-03-23 14:02:27'),
(3, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-23 14:02:27'),
(5, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-23 14:02:27'),
(6, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-23 14:04:54'),
(7, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-23 14:16:39'),
(8, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-23 14:20:04'),
(9, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-23 14:21:17'),
(20, 'https://goo.gl/maps/ASDDNktwiJ92', '2019-03-23 15:02:26'),
(39, 'VIDYA VIHAR COLONY, TUKAI NAGAR', '2019-03-23 15:59:03'),
(40, 'qwe', '2019-03-23 17:54:48'),
(41, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-24 04:31:08'),
(42, 'dhayari pune, dhayari pune', '2019-03-24 10:24:47'),
(43, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 04:50:52'),
(44, '', '2019-03-25 05:07:52'),
(45, 'https://goo.gl/maps/e3vnRUHCjM32', '2019-03-25 06:38:06'),
(46, 'https://goo.gl/maps/QvyScGSkENJ2', '2019-03-25 06:40:30'),
(47, 'https://goo.gl/maps/QGwnDdpf3kH2', '2019-03-25 06:42:02'),
(48, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 06:42:41'),
(49, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 06:45:06'),
(50, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 06:47:49'),
(51, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 06:50:01'),
(52, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 06:54:43'),
(53, 'https://goo.gl/maps/QGwnDdpf3kH2', '2019-03-25 07:27:47'),
(54, 'https://goo.gl/maps/ajSPqAg28fn', '2019-03-25 07:29:10'),
(55, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 08:57:31'),
(56, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 09:00:59'),
(57, 'https://goo.gl/maps/jQH5mx3ckgk', '2019-03-25 09:04:52'),
(58, 'poo', '2019-03-25 09:11:03'),
(59, 'https://goo.gl/maps/PkUqZCMZcWM2', '2019-03-26 09:39:12'),
(60, 'https://goo.gl/maps/XZBZpyefyCs', '2019-03-26 09:40:27'),
(61, 'https://goo.gl/maps/PkUqZCMZcWM2', '2019-03-26 09:42:50'),
(62, 'https://goo.gl/maps/ihAm6tZnvxy', '2019-03-26 10:06:47'),
(63, 'https://goo.gl/maps/d7H1YuauvVC2', '2019-03-26 10:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `type` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `status` int(7) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `first_name`, `last_name`, `email`, `mobile`, `type`, `password`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(15, '', '', 'admin@gmail.com', 0, 'admin', 'admin', 0, '2019-03-21 04:58:45', '2019-03-21 05:00:38', '', ''),
(19, 'priya', 'dange', 'subadmin@gmail.com', 9518590370, 'sub-admin', 'subadmin', 0, '2019-03-21 06:55:32', '2019-03-21 06:55:32', '', ''),
(22, 'hello', 'scanner', 'v@gmail.com', 8600332912, 'checker', '1111', 1, '2019-03-24 12:36:17', '2019-03-24 12:36:17', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `theater_id` int(10) DEFAULT NULL,
  `screen_id` int(10) DEFAULT NULL,
  `seat_no` varchar(50) DEFAULT NULL,
  `event_id` int(10) DEFAULT NULL,
  `seat_category_id` int(10) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `current_status` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `craeted_by` varchar(50) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `qrcode` varchar(40) NOT NULL,
  `seat_type` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`id`, `user_id`, `theater_id`, `screen_id`, `seat_no`, `event_id`, `seat_category_id`, `status`, `current_status`, `created_at`, `updated_at`, `craeted_by`, `created_by`, `qrcode`, `seat_type`) VALUES
(82, 32, 85, NULL, NULL, 174, NULL, '1', 'Approved', '2019-03-26 11:05:45', '2019-03-28 11:21:21', '', '', 'b2a6b5a5aa518bfe1615601a9bb331c6733f7d56', 'normal'),
(83, 36, 85, NULL, NULL, 174, NULL, 'PENDING', 'PENDING', '2019-03-28 10:01:57', '2019-03-28 10:01:57', '', '', '707780b4107edf0e9fb678320b3490c903f074e7', 'normal'),
(84, 31, 85, NULL, NULL, 174, NULL, 'PENDING', 'PENDING', '2019-03-28 16:11:02', '2019-03-28 16:11:02', '', '', '0438d303720e8207a1b1291f46eb449b01241882', 'normal');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) NOT NULL,
  `type` varchar(30) NOT NULL,
  `genre` varchar(40) NOT NULL,
  `theater` varchar(40) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address_id` int(10) DEFAULT NULL,
  `duration` varchar(30) NOT NULL,
  `release_date` date NOT NULL,
  `language_id` int(10) DEFAULT NULL,
  `event_type_id` int(10) DEFAULT NULL,
  `starcast` varchar(100) NOT NULL,
  `poster` varchar(900) NOT NULL,
  `banner` varchar(900) NOT NULL,
  `videolink` varchar(300) NOT NULL,
  `language` varchar(30) NOT NULL,
  `dimentions` varchar(30) NOT NULL,
  `description` varchar(300) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `type`, `genre`, `theater`, `name`, `address_id`, `duration`, `release_date`, `language_id`, `event_type_id`, `starcast`, `poster`, `banner`, `videolink`, `language`, `dimentions`, `description`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(172, 'Movie', 'Action', '83', 'Kesari', NULL, '2:30hrs', '2019-03-29', NULL, NULL, 'Akshay Kumar,Pariniti Chopra', 'https://www.shreyaset.com/Shreyas/uploads/MV5BN2VlY2E2ZGMtNjRiMy00OWUwLWJmZmItYzIwNjcyODE2MDliXkEyXkFqcGdeQXVyNjE1OTQ0NjA@._V1_.jpg', 'https://www.shreyaset.com/Shreyas/uploads/kesariban.jpg', 'https://www.youtube.com/watch?v=JFP24D15_XM', 'Hindi,Tamil', '2D,3D', '                                                                 Kesari is an unbelievable true story based on the Battle of Saragarhi, 1897. Touted as one of the bravest battle ever fought, 21 courageous Sikhs countered 10,000 invaders. These saffron clad warriors fought valiantly against all odds ', 0, '2019-03-26 09:59:36', '2019-03-26 09:59:36', '', ''),
(173, 'Event', 'comedy', '84', 'ONES More', NULL, '2:30hrs', '2019-03-07', NULL, NULL, 'bharat jadhav', 'https://www.shreyaset.com/Shreyas/uploads/34613985_204232510198795_7643933084022210560_n.jpg', 'https://www.shreyaset.com/Shreyas/uploads/ombanner.jpeg', 'https://www.youtube.com/watch?v=qRT6rEBi7ic', 'Marathi', '2D', '                        It is a story of a family in the year 2021 where people voted the previous political party and gave them power to rule again. Government took a big step to control the population just like Demonetisation                                         ', 0, '2019-03-26 10:01:41', '2019-03-26 10:01:41', '', ''),
(174, 'Event', 'comedy', '85', 'sahi re sahi', NULL, '3hr', '2019-03-27', NULL, NULL, 'bharat jadhav', 'https://www.shreyaset.com/Shreyas/uploads/sahi1.jpeg', 'https://www.shreyaset.com/Shreyas/uploads/sahi.jpeg', 'https://www.youtube.com/watch?v=OHarfZrjus0', 'Marathi', '2D,3D', '                                                                 \r\nSukhatme has several undated wills in circulation, and which are in the possession of his daughter and other relatives. As many as three look alikes of Sukhatme appear on the scene. Confusion ensues but justice is done ultimately. \r\n', 0, '2019-03-26 10:01:41', '2019-03-26 10:01:41', '', ''),
(175, 'Movie', 'comedy', '86', 'Luka chuppi', NULL, '2:30hrs', '2019-03-01', NULL, NULL, 'kartik Aryan', 'https://www.shreyaset.com/Shreyas/uploads/lukap.jpg', 'https://www.shreyaset.com/Shreyas/uploads/lukab.jpeg', 'https://www.youtube.com/watch?v=-JLewvWBkCw', 'Hindi', '2D', '                            What happens when you decide to live in with your partner but your family joins in too? Thatâ€™s what Guddu and Rashmi are going to find out! Set in Mathura, Luka Chuppi features Kartik Aaryan, Kriti Sanon along with Pankaj Tripathi, Aparshakti Khurrana and Vinay Pathak. ', 0, '2019-03-26 10:25:27', '2019-03-26 10:25:27', '', ''),
(176, 'Movie', 'Action', '83', 'Captain Marvel', NULL, '3hrs', '2019-03-16', NULL, NULL, 'Brie Larson', 'https://www.shreyaset.com/Shreyas/uploads/cmp.jpg', 'https://www.shreyaset.com/Shreyas/uploads/cmb.jpg', 'https://www.youtube.com/watch?v=0LHxvxdRnYc', 'Hindi,Tamil,English', '2D,3D,4D', '                                                                 Big Action moive.', 0, '2019-03-26 10:35:39', '2019-03-26 10:35:39', '', ''),
(177, 'Event', 'Holi Festival', '87', 'Pune-Color Festival', NULL, '4hrs', '2019-03-24', NULL, NULL, 'Varun Dhavan', 'https://www.shreyaset.com/Shreyas/uploads/pcfb.jpg', 'https://www.shreyaset.com/Shreyas/uploads/pcfb.jpg', 'https://www.meraevents.com/event/pune-color-festival-2019', 'Hindi,Marathi', '2D', '                           Itâ€™s that time of the year when youâ€™ll see the Breeze around you is filled with vibrant colours, happy faces dancing to amazing music and amazing crowd coming together to enjoy in the much-beloved festival of Holi.                                      ', 0, '2019-03-26 10:43:16', '2019-03-26 10:43:16', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `event_price`
--

CREATE TABLE `event_price` (
  `id` int(10) NOT NULL,
  `event_id` int(10) NOT NULL,
  `threater_id` int(10) NOT NULL,
  `screen_id` int(10) NOT NULL,
  `seat_category_id` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event_theatre`
--

CREATE TABLE `event_theatre` (
  `id` int(11) NOT NULL,
  `theater_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `address_id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `event_time` time NOT NULL,
  `screen_no` int(11) NOT NULL,
  `vip` int(11) NOT NULL,
  `mvp` int(11) NOT NULL,
  `normal` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_theatre`
--

INSERT INTO `event_theatre` (`id`, `theater_id`, `event_id`, `address_id`, `event_date`, `event_time`, `screen_no`, `vip`, `mvp`, `normal`) VALUES
(11, 86, 175, 62, '2019-03-30', '09:00:00', 1, 50, 100, 450),
(10, 85, 174, 61, '2019-03-26', '12:00:00', 2, 200, 300, 500),
(9, 84, 173, 60, '2019-03-27', '12:00:00', 2, 100, 300, 500),
(8, 83, 172, 59, '2019-03-27', '09:00:00', 1, 100, 50, 110),
(7, 84, 171, 60, '2019-03-27', '12:00:00', 2, 100, 300, 500),
(12, 83, 176, 59, '2019-03-27', '09:00:00', 1, 100, 50, 110),
(13, 87, 177, 63, '2019-03-24', '04:00:00', 1, 100, 100, 1300);

-- --------------------------------------------------------

--
-- Table structure for table `event_type`
--

CREATE TABLE `event_type` (
  `id` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_type`
--

INSERT INTO `event_type` (`id`, `type`, `status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(77, 'Event', 0, '2019-03-21 06:57:01', '2019-03-22 12:56:23', '', ''),
(82, 'Movie', 0, '2019-03-22 09:59:59', '2019-03-22 09:59:59', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `hall`
--

CREATE TABLE `hall` (
  `id` int(11) NOT NULL,
  `hall_name` varchar(100) NOT NULL,
  `row_r` int(11) NOT NULL,
  `column_c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hall`
--

INSERT INTO `hall` (`id`, `hall_name`, `row_r`, `column_c`) VALUES
(93, '1', 1, 1),
(94, 'hall', 10, 10),
(95, '', 0, 0),
(96, 'gandharv hall', 5, 10),
(97, 'fgdf', 8, 8),
(98, 'df', 6, 6),
(99, 'gdf', 5, 5),
(100, 'tyuy', 5, 5),
(101, 'hall', 5, 5),
(102, 'fgf', 5, 5),
(103, 'dfgh', 5, 5),
(104, '', 0, 0),
(105, '', 0, 0),
(106, 'uu', 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(10) NOT NULL,
  `language` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `language`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(14, 'Hindi', '2019-03-21 07:02:09', '2019-03-21 07:02:09', '', ''),
(15, 'Tamil', '2019-03-21 07:03:10', '2019-03-21 07:03:10', '', ''),
(16, 'English', '2019-03-21 07:03:25', '2019-03-21 07:03:25', '', ''),
(17, 'Marathi', '2019-03-21 08:02:22', '2019-03-21 08:02:22', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `screens`
--

CREATE TABLE `screens` (
  `id` int(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `theators_id` int(10) NOT NULL,
  `capacity` int(50) NOT NULL,
  `show_id` int(50) NOT NULL,
  `language_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seat_category`
--

CREATE TABLE `seat_category` (
  `id` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seat_position`
--

CREATE TABLE `seat_position` (
  `seat_id` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `row_p` int(11) NOT NULL,
  `column_p` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seat_position`
--

INSERT INTO `seat_position` (`seat_id`, `id`, `row_p`, `column_p`) VALUES
(1, 93, 0, 0),
(2, 94, 0, 0),
(3, 94, 9, 9),
(4, 94, 8, 9),
(5, 94, 7, 9),
(6, 94, 7, 4),
(7, 94, 7, 5),
(8, 94, 6, 5),
(10, 94, 0, 9),
(11, 94, 2, 9),
(12, 94, 0, 3),
(13, 94, 6, 0),
(14, 94, 9, 0),
(15, 96, 0, 0),
(19, 96, 1, 1),
(26, 96, 0, 5),
(27, 96, 0, 6),
(28, 96, 0, 7),
(29, 96, 0, 8),
(30, 96, 1, 5),
(31, 96, 1, 6),
(32, 96, 1, 7),
(33, 96, 2, 7),
(34, 96, 2, 6),
(35, 96, 2, 5),
(36, 96, 2, 8),
(37, 96, 3, 5),
(38, 96, 3, 6),
(39, 96, 3, 7),
(40, 96, 3, 8),
(42, 97, 0, 4),
(43, 97, 1, 4),
(44, 97, 1, 3),
(45, 97, 2, 3),
(46, 97, 2, 4),
(47, 97, 2, 5),
(48, 97, 1, 5),
(49, 97, 0, 5),
(50, 97, 0, 6),
(51, 97, 0, 7),
(52, 97, 1, 7),
(53, 97, 2, 7),
(55, 97, 0, 0),
(57, 97, 1, 1),
(59, 97, 0, 3),
(60, 97, 1, 6),
(63, 97, 3, 1),
(67, 97, 6, 1),
(69, 97, 6, 3),
(70, 97, 6, 4),
(71, 97, 6, 5),
(72, 97, 6, 6),
(73, 97, 6, 7),
(78, 97, 4, 6),
(79, 97, 3, 6),
(80, 97, 2, 6),
(81, 97, 3, 5),
(83, 97, 4, 5),
(84, 97, 3, 4),
(85, 97, 4, 4),
(86, 97, 3, 3),
(87, 97, 4, 3),
(88, 97, 3, 7),
(89, 97, 4, 7),
(90, 97, 5, 7),
(92, 97, 3, 0),
(93, 97, 4, 0),
(94, 97, 6, 0),
(95, 97, 7, 0),
(96, 97, 7, 1),
(98, 97, 7, 3),
(99, 97, 7, 4),
(100, 97, 7, 5),
(101, 97, 7, 6),
(102, 97, 7, 7),
(105, 100, 1, 1),
(106, 100, 0, 2),
(107, 100, 1, 3),
(108, 100, 3, 2),
(109, 100, 3, 3),
(110, 102, 0, 2),
(111, 102, 0, 3),
(112, 102, 0, 1),
(113, 102, 1, 1),
(116, 102, 2, 3),
(118, 102, 0, 0),
(119, 102, 0, 4),
(122, 102, 1, 3),
(123, 102, 3, 1),
(124, 102, 3, 2),
(125, 102, 3, 3),
(127, 103, 0, 0),
(128, 103, 0, 1),
(129, 103, 0, 2),
(130, 103, 0, 3),
(131, 103, 0, 4),
(134, 103, 3, 2),
(135, 103, 3, 3),
(136, 103, 3, 4),
(137, 106, 0, 0),
(139, 106, 2, 4),
(140, 106, 3, 4),
(141, 106, 4, 4),
(143, 106, 4, 3),
(144, 106, 3, 3),
(145, 106, 3, 5),
(146, 106, 3, 6),
(147, 106, 3, 2),
(148, 106, 3, 1),
(149, 106, 4, 1),
(150, 106, 4, 2),
(151, 106, 4, 5),
(152, 106, 4, 6),
(160, 106, 1, 4),
(161, 106, 0, 4),
(162, 106, 0, 3),
(163, 106, 0, 5),
(164, 106, 0, 7),
(165, 106, 0, 6),
(166, 106, 0, 1),
(167, 106, 0, 2),
(168, 106, 1, 3),
(169, 106, 2, 3),
(170, 106, 3, 0),
(171, 106, 3, 7),
(172, 106, 4, 0),
(173, 106, 4, 7),
(174, 106, 5, 3),
(175, 106, 5, 4),
(176, 106, 6, 3),
(177, 106, 6, 4);

-- --------------------------------------------------------

--
-- Table structure for table `secret_code`
--

CREATE TABLE `secret_code` (
  `id` int(11) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `code` int(11) NOT NULL,
  `seat_type` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `secret_code`
--

INSERT INTO `secret_code` (`id`, `mobile`, `code`, `seat_type`, `created_at`) VALUES
(1, 919404945025, 99999, 'vip', '2019-03-24 14:42:05'),
(2, 919765393401, 98099, 'mvp', '2019-03-23 18:58:51'),
(3, 8600332912, 98097, 'vip', '2019-03-23 18:59:10'),
(49, 9518590370, 760443, 'vip', '2019-03-25 04:57:01'),
(48, 9518590370, 989771, 'vip', '2019-03-25 04:51:42'),
(47, 9518590370, 920422, 'vip', '2019-03-24 11:01:37'),
(46, 9518590370, 582648, 'mvp', '2019-03-24 11:00:08'),
(45, 9403014324, 305147, 'mvp', '2019-03-24 10:59:10'),
(44, 9403014324, 306651, 'vip', '2019-03-24 10:55:55');

-- --------------------------------------------------------

--
-- Table structure for table `show_type`
--

CREATE TABLE `show_type` (
  `id` int(10) NOT NULL,
  `dimention` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `show_type`
--

INSERT INTO `show_type` (`id`, `dimention`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(19, '2D', '2019-03-21 07:02:09', '2019-03-21 07:02:09', '', ''),
(20, '3D', '2019-03-21 07:03:10', '2019-03-21 07:03:10', '', ''),
(21, '4D', '2019-03-21 07:03:24', '2019-03-21 07:03:24', '', ''),
(22, '', '2019-03-21 08:02:22', '2019-03-21 08:02:22', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms_codes`
--

CREATE TABLE `sms_codes` (
  `id` int(11) NOT NULL,
  `mobile` bigint(15) NOT NULL,
  `otp` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_codes`
--

INSERT INTO `sms_codes` (`id`, `mobile`, `otp`, `created_at`) VALUES
(180, 8600332912, '356752', '2019-03-23 09:29:51'),
(191, 94030144324, '652764', '2019-03-24 10:07:17'),
(192, 9403014324, '680978', '2019-03-24 10:07:28'),
(220, 919359148137, '995883', '2019-03-28 08:07:06'),
(226, 918074813800, '693347', '2019-03-28 10:09:31'),
(228, 9618725072, '702748', '2019-03-28 10:13:42'),
(231, 8074813800, '222770', '2019-03-28 10:18:01'),
(236, 919765393401, '401759', '2019-03-28 10:53:07'),
(239, 918074818292, '964879', '2019-03-28 11:12:55'),
(241, 9849268998, '342499', '2019-03-28 12:01:58'),
(243, 919404945025, '782622', '2019-03-29 04:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `theaters`
--

CREATE TABLE `theaters` (
  `id` int(5) NOT NULL,
  `name` text,
  `address_id` int(10) DEFAULT NULL,
  `capacity` varchar(10) DEFAULT NULL,
  `event_id` int(11) NOT NULL,
  `event_date` varchar(50) NOT NULL,
  `event_time` varchar(50) NOT NULL,
  `screen_no` varchar(10) NOT NULL,
  `vip` varchar(300) DEFAULT NULL,
  `mvp` varchar(300) DEFAULT NULL,
  `normal` varchar(300) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_date` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `theaters`
--

INSERT INTO `theaters` (`id`, `name`, `address_id`, `capacity`, `event_id`, `event_date`, `event_time`, `screen_no`, `vip`, `mvp`, `normal`, `created_by`, `updated_by`, `created_date`, `updated_date`) VALUES
(83, 'abhiruchi', 59, '1000', 176, '2019-03-27', '09:00', '1', '100', '50', '110', NULL, NULL, '2019-03-26 10:40:22', '0000-00-00 00:00:00'),
(84, 'citypride', 60, '900', 0, '2019-03-27', '12:00', '2', '100', '300', '500', NULL, NULL, '2019-03-26 09:40:27', '0000-00-00 00:00:00'),
(85, 'abhiruchi', 61, '1000', 174, '2019-03-26', '12:00', '2', '200', '300', '500', NULL, NULL, '2019-03-26 10:06:47', '0000-00-00 00:00:00'),
(86, 'PVR Cinemas', 62, '1000', 0, '2019-03-30', '09:00', '1', '50', '100', '450', NULL, NULL, '2019-03-26 10:06:47', '0000-00-00 00:00:00'),
(87, 'Ganesh kala-Krida Manch', 63, '1500', 0, '2019-03-24', '04:00', '1', '100', '100', '1300', NULL, NULL, '2019-03-26 10:40:22', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(15) NOT NULL,
  `f_name` varchar(30) DEFAULT NULL,
  `l_name` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` bigint(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `fan_of` varchar(50) DEFAULT NULL,
  `pic` varchar(500) DEFAULT NULL,
  `longitude` varchar(150) DEFAULT NULL,
  `latitude` varchar(150) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` int(7) NOT NULL,
  `current_status` varchar(10) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` varchar(50) DEFAULT NULL,
  `updated_by` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `f_name`, `l_name`, `dob`, `mobile`, `email`, `gender`, `fan_of`, `pic`, `longitude`, `latitude`, `password`, `status`, `current_status`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(30, 'Aikya', 'Kamble', '1995-03-23', 8600332912, 'aikyarajkamble@gmail.com', 'Male', 'ark', 'https://shreyaset.com/Shreyas/shreyasapi/uploads/8600332912.jpg', '76.9479222', '18.6906683', NULL, 0, NULL, '2019-03-23 09:30:49', '2019-03-23 09:32:31', NULL, NULL),
(31, 'Rutwik', 'Shete', '2000-02-18', 919765393401, 'rutwik.shete@gmail.com', 'Male', 'Tony Stark', 'https://shreyaset.com/Shreyas/shreyasapi/uploads/919765393401.jpg', '73.7899387', '18.5082082', NULL, 0, NULL, '2019-03-23 10:02:16', '2019-03-23 10:03:27', NULL, NULL),
(32, 'vikas', 'patil', '2019-03-23', 919404945025, 'viki.vpatil@yahoo.com', 'Male', 'akshay', 'https://shreyaset.com/Shreyas/shreyasapi/uploads/919404945025.jpg', '73.789937', '18.5082057', NULL, 0, NULL, '2019-03-23 10:02:34', '2019-03-23 10:03:12', NULL, NULL),
(34, 'hero', 'ganesha', '1990-03-15', 8074818292, 'manitlifer@gmail.com', 'Male', 'mahesh babu', 'https://shreyaset.com/Shreyas/shreyasapi/uploads/8074818292.jpg', '79.50301464', '18.7496235', NULL, 0, NULL, '2019-03-25 01:50:48', '2019-03-25 01:50:48', NULL, NULL),
(35, 'rutwik', 'shete', '2019-03-28', 919359148137, 'uday.shete@gmail.com', 'Male', 'dhhdnd', 'https://shreyaset.com/Shreyas/shreyasapi/uploads/+919359148137.jpg', '73.7899367', '18.5082061', NULL, 0, NULL, '2019-03-28 08:07:34', '2019-03-28 08:07:34', NULL, NULL),
(36, 'Srikanth ', 'kotha', '1993-03-10', 9849268998, 'Kothasree@crowdconnect.in', 'Male', 'Mahesh babu ', 'https://shreyaset.com/Shreyas/shreyasapi/uploads/9849268998.jpg', '78.3667354', '17.495878', NULL, 0, NULL, '2019-03-28 10:01:11', '2019-03-28 10:01:11', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `theater_id` (`theater_id`),
  ADD KEY `screen_id` (`screen_id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `seat_category_id` (`seat_category_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `event_type_id` (`event_type_id`);

--
-- Indexes for table `event_price`
--
ALTER TABLE `event_price`
  ADD PRIMARY KEY (`id`),
  ADD KEY `event_id` (`event_id`),
  ADD KEY `threater_id` (`threater_id`),
  ADD KEY `screen_id` (`screen_id`),
  ADD KEY `seat_category_id` (`seat_category_id`);

--
-- Indexes for table `event_theatre`
--
ALTER TABLE `event_theatre`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_type`
--
ALTER TABLE `event_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hall`
--
ALTER TABLE `hall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `screens`
--
ALTER TABLE `screens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `theators_id` (`theators_id`),
  ADD KEY `language_id` (`language_id`),
  ADD KEY `show_id` (`show_id`);

--
-- Indexes for table `seat_category`
--
ALTER TABLE `seat_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat_position`
--
ALTER TABLE `seat_position`
  ADD PRIMARY KEY (`seat_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `secret_code`
--
ALTER TABLE `secret_code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `show_type`
--
ALTER TABLE `show_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_codes`
--
ALTER TABLE `sms_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `theaters`
--
ALTER TABLE `theaters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `address_id` (`address_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobile` (`mobile`,`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `event_price`
--
ALTER TABLE `event_price`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_theatre`
--
ALTER TABLE `event_theatre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `event_type`
--
ALTER TABLE `event_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `hall`
--
ALTER TABLE `hall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `screens`
--
ALTER TABLE `screens`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seat_category`
--
ALTER TABLE `seat_category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seat_position`
--
ALTER TABLE `seat_position`
  MODIFY `seat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `secret_code`
--
ALTER TABLE `secret_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `show_type`
--
ALTER TABLE `show_type`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sms_codes`
--
ALTER TABLE `sms_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `theaters`
--
ALTER TABLE `theaters`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`theater_id`) REFERENCES `theaters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_4` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_5` FOREIGN KEY (`seat_category_id`) REFERENCES `seat_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `events_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `events_ibfk_3` FOREIGN KEY (`event_type_id`) REFERENCES `event_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event_price`
--
ALTER TABLE `event_price`
  ADD CONSTRAINT `event_price_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_price_ibfk_2` FOREIGN KEY (`threater_id`) REFERENCES `theaters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_price_ibfk_3` FOREIGN KEY (`screen_id`) REFERENCES `screens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_price_ibfk_4` FOREIGN KEY (`seat_category_id`) REFERENCES `seat_category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `screens`
--
ALTER TABLE `screens`
  ADD CONSTRAINT `screens_ibfk_1` FOREIGN KEY (`theators_id`) REFERENCES `theaters` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `screens_ibfk_2` FOREIGN KEY (`show_id`) REFERENCES `show_type` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `screens_ibfk_3` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat_position`
--
ALTER TABLE `seat_position`
  ADD CONSTRAINT `seat_position_ibfk_1` FOREIGN KEY (`id`) REFERENCES `hall` (`id`);

--
-- Constraints for table `theaters`
--
ALTER TABLE `theaters`
  ADD CONSTRAINT `theaters_ibfk_1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
