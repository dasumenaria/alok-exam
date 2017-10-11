-- phpMyAdmin SQL Dump
-- version 4.3.8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 02, 2017 at 02:14 AM
-- Server version: 5.5.51-38.2
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vinav_xavier2`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int(11) NOT NULL,
  `about_us` text COLLATE utf8_unicode_ci NOT NULL,
  `SchoolAddress` text COLLATE utf8_unicode_ci NOT NULL,
  `SchoolContact` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Schoolpolicy` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_us`
--

INSERT INTO `about_us` (`id`, `about_us`, `SchoolAddress`, `SchoolContact`, `Schoolpolicy`, `image`, `flag`) VALUES
(1, '<p><strong><span style="font-size: 14.0pt; font-family: ''Times New Roman'',''serif''; mso-fareast-font-family: ''Times New Roman''; mso-font-kerning: 18.0pt;">About us</span></strong></p><p>The main objective of the institution is to build young citizens of tomorrow who are ready to face challenges and</p><p>harness opportunities. MDS Sr. Sec. School provides the fullest opportunities to its students to develop an all round</p><p>personality in addition to scholarly pursuits. The institution has adopted the phrase TOTAL KNOWLEDGE TOTAL</p><p>PERSONALITY to reflect this mission and to achieve this objective, the following infrastructure has been developed</p><p>for the overall personality development.</p>', '', '', '', '', 1),
(2, '', 'H-7, Krishna Cplx,Haridas Ji Ki Magri malla talai, Udaipur, Rajasthan 313001', '0294 243 3479', 'The main objective of the institution is to build young citizens of tomorrow who are ready to face         challenges and harness opportunities. St. Xavier School provides the fullest opportunities to its students to         develop an all round personality in addition to scholarly pursuits. The institution has adopted the phrase         TOTAL KNOWLEDGE TOTAL PERSONALITY to reflect this mission and to achieve this objective.', 'img/xaviour_building.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acedmic_calendar`
--

CREATE TABLE IF NOT EXISTS `acedmic_calendar` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acedmic_calendar`
--

INSERT INTO `acedmic_calendar` (`id`, `category_id`, `date`, `description`, `user_id`, `tag`, `curent_date`, `flag`) VALUES
(1, 4, '2017-03-17', 'test', 1, 3, '2017-03-15', 0),
(2, 1, '2017-03-25', '25-03-2017 to 30-03-2017 first internal', 1, 3, '2017-03-15', 0),
(3, 3, '2017-04-01', 'Rakhi', 1, 4, '2017-03-15', 1),
(4, 2, '2017-04-05', 'Gandhi jayanti', 1, 4, '2017-03-15', 1),
(5, 4, '2017-04-23', 'Badminton Competition', 3, 4, '2017-04-23', 0),
(6, 4, '2017-04-27', 'test', 3, 4, '2017-04-24', 0),
(7, 4, '2017-04-24', 'test', 3, 4, '2017-04-24', 0),
(8, 4, '2017-04-24', 'check event', 3, 4, '2017-04-24', 0),
(9, 4, '2017-04-24', 'check event', 3, 4, '2017-04-24', 0),
(10, 4, '2017-04-24', 'test', 3, 4, '2017-04-24', 0),
(11, 4, '2017-04-24', 'Cricket', 3, 4, '2017-04-24', 0),
(12, 4, '2017-04-25', 'Football', 3, 4, '2017-04-24', 0),
(13, 4, '2017-04-26', 'Badminton ', 3, 4, '2017-04-24', 0),
(14, 4, '2017-04-26', 'Sports Day', 2, 4, '2017-04-26', 0),
(15, 4, '2017-05-10', 'Sports Day', 3, 5, '2017-05-10', 0),
(16, 4, '2017-06-20', 'TEST EVENT', 3, 6, '2017-06-20', 0),
(17, 4, '2017-08-22', 'test', 3, 8, '2017-08-19', 0),
(18, 4, '2017-08-23', 'Race', 42, 8, '2017-08-23', 0),
(19, 4, '2017-08-23', 'Annual Function', 42, 8, '2017-08-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `achivements`
--

CREATE TABLE IF NOT EXISTS `achivements` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `achivement` varchar(225) NOT NULL,
  `rank` varchar(22) NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `achivements`
--

INSERT INTO `achivements` (`id`, `student_id`, `achivement`, `rank`, `curent_date`, `flag`) VALUES
(1, 1, 'School Toper', '1', '2017-06-09', 0),
(2, 2, 'Football Player of the school', '1', '2017-06-09', 0),
(3, 4, 'Hokey Player of the school', '1', '2017-06-09', 0),
(4, 2477, 'Student of the Year', '1', '2017-06-09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `add_to_calendar`
--

CREATE TABLE IF NOT EXISTS `add_to_calendar` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `parent_event_id` int(11) NOT NULL,
  `event_date` date NOT NULL,
  `curent_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_to_calendar`
--

INSERT INTO `add_to_calendar` (`id`, `user_id`, `role_id`, `event_id`, `parent_event_id`, `event_date`, `curent_date`) VALUES
(8, 787, 5, 1, 1, '2017-03-17', '2017-03-31'),
(39, 3, 4, 2, 2, '2017-04-14', '2017-04-22'),
(40, 3, 4, 10, 9, '2017-04-25', '2017-04-27'),
(42, 3, 4, 12, 10, '2017-04-26', '2017-05-04'),
(43, 2477, 5, 9, 9, '2017-04-24', '2017-05-08'),
(44, 2477, 5, 12, 10, '2017-04-26', '2017-05-08'),
(47, 2477, 5, 13, 11, '2017-05-10', '2017-06-08'),
(48, 807, 5, 1, 1, '2017-06-20', '2017-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `api_versions`
--

CREATE TABLE IF NOT EXISTS `api_versions` (
  `id` int(11) NOT NULL,
  `version` varchar(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `api_versions`
--

INSERT INTO `api_versions` (`id`, `version`) VALUES
(1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
  `id` int(11) NOT NULL,
  `appoint_to` varchar(100) NOT NULL,
  `appoint_date` date NOT NULL,
  `appoint_time` time NOT NULL,
  `reason` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL COMMENT '0 = pending, 1 = approved, 2 = rejected, 3 = Completed',
  `student_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `appoint_to`, `appoint_date`, `appoint_time`, `reason`, `timestamp`, `status`, `student_id`, `name`) VALUES
(1, '0', '2017-04-18', '02:00:00', 'abc', '2017-04-03 05:59:04', 3, 0, ''),
(2, '2', '2017-03-31', '10:20:00', 'This is  postman data updated', '2017-04-03 06:01:14', 3, 0, ''),
(4, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-29 08:49:02', 0, 0, ''),
(5, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-29 11:33:23', 0, 2477, 'abc'),
(6, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-29 11:33:39', 0, 2477, 'abc'),
(7, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-29 11:33:45', 0, 247, 'abc'),
(8, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-29 11:56:26', 0, 247, 'abc'),
(9, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-29 11:57:02', 0, 247, 'abc'),
(10, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-29 12:48:27', 0, 247, 'abc'),
(11, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-30 04:52:18', 0, 247, 'abc'),
(12, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-30 05:05:00', 0, 247, 'abc'),
(13, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-30 05:10:03', 0, 247, 'abc'),
(14, '0', '1970-01-01', '02:00:00', 'abc', '2017-03-30 05:12:31', 0, 247, 'abc'),
(15, '0', '1970-01-01', '02:00:00', 'abc', '2017-03-30 05:13:16', 0, 247, 'abc'),
(16, '0', '1970-01-01', '02:00:00', 'abc', '2017-03-30 05:23:25', 0, 2477, 'abc'),
(17, '0', '1970-01-01', '02:00:00', 'abc', '2017-03-30 05:23:45', 0, 0, 'abc'),
(18, '0', '1970-01-01', '02:00:00', 'abc', '2017-03-30 05:24:04', 0, 2477, ''),
(19, '0', '1970-01-01', '02:00:00', 'abc', '2017-03-30 05:24:30', 0, 2477, 'nhhj'),
(20, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-30 06:08:25', 0, 2477, 'abc'),
(21, '0', '2017-04-18', '02:00:00', 'abc', '2017-03-30 06:54:53', 0, 2477, 'abc'),
(22, '0', '2017-03-31', '02:00:00', 'jznsmdm', '2017-03-30 08:59:19', 0, 2477, 'snjdn'),
(23, '0', '2017-04-18', '02:00:00', 'V2b3 4h', '2017-04-10 11:16:49', 0, 2477, '2rht5hta'),
(24, 'Director', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:44:48', 0, 1, 'abc'),
(25, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-14 10:29:40', 0, 1, 'abc'),
(26, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-14 10:29:56', 0, 1, 'abc'),
(27, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-14 10:30:04', 0, 1, 'abc'),
(28, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 04:59:08', 0, 0, 'abc'),
(29, '1', '2017-07-15', '12:20:00', 'Testing', '2017-07-15 05:16:28', 0, 0, 'dasu'),
(30, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:18:33', 0, 0, 'abc'),
(31, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:19:19', 0, 0, 'abc'),
(32, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:24:39', 0, 0, 'abc'),
(33, '1', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:25:26', 0, 0, 'abc'),
(34, '0', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:36:50', 0, 0, 'abc'),
(35, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:40:49', 0, 0, 'abc'),
(36, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:41:06', 0, 0, 'abc'),
(37, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:52:03', 0, 0, 'abc'),
(38, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:52:09', 0, 0, 'abc'),
(39, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:52:47', 0, 531, 'abc'),
(40, 'dasu menaria', '2017-07-15', '12:20:00', 'Testing', '2017-07-15 05:52:50', 0, 0, 'dasu'),
(41, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:53:20', 0, 531, 'abc'),
(42, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 05:55:46', 0, 531, 'abc'),
(43, 'dasu menaria', '2017-07-15', '12:20:00', 'Testing', '2017-07-15 05:57:02', 0, 0, 'dasu'),
(44, 'principal', '2017-07-15', '02:30:00', 'ffDf', '2017-07-15 06:01:36', 0, 531, 'abc'),
(45, 'principal', '2017-07-15', '11:57:00', 'enquiry', '2017-07-15 06:27:49', 0, 0, 'abc'),
(46, 'teacher', '2017-07-15', '11:58:00', 'Inquiry', '2017-07-15 06:28:34', 0, 0, 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE IF NOT EXISTS `assignment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `student_id` varchar(11) NOT NULL,
  `topic` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `submission_date` date NOT NULL,
  `curent_date` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`id`, `user_id`, `student_id`, `topic`, `description`, `class_id`, `section_id`, `subject_id`, `submission_date`, `curent_date`, `file`, `flag`) VALUES
(1, 1, '4', 'Science project', 'abc', 2, 1, 1, '2017-04-12', '2017-04-03', '', 0),
(2, 1, '4', 'Science project', 'abc', 2, 1, 1, '2017-04-12', '2017-04-03', '', 0),
(3, 1, '4', 'Science project', 'abc', 2, 1, 1, '2017-04-12', '2017-04-03', '', 0),
(4, 3, '4', 'Science project', 'abc', -4, 2, 1, '2017-04-12', '2017-04-03', '', 0),
(5, 3, '1223', 'Science project', 'abc', -4, 2, 1, '2017-04-12', '2017-04-03', '', 0),
(6, 3, '122', 'Science project', 'abc', -4, 2, 1, '2017-04-12', '2017-04-03', '', 0),
(7, 3, '2', '2reb', 'C22Fh', -4, 1, 1, '2017-04-11', '2017-04-03', '', 0),
(8, 3, '5', '2reb', 'C22Fh', -4, 1, 1, '2017-04-11', '2017-04-03', '', 0),
(9, 3, '6', '2reb', 'C22Fh', -4, 1, 1, '2017-04-11', '2017-04-03', '', 0),
(10, 3, '7', '2reb', 'C22Fh', -4, 1, 1, '2017-04-11', '2017-04-03', '', 0),
(11, 3, '1223', 'Science project', 'abc', -4, 2, 1, '2017-04-12', '2017-04-03', '', 0),
(12, 3, '122', 'Science project', 'abc', -4, 2, 1, '2017-04-12', '2017-04-03', '', 0),
(13, 3, '27', 'rye', 'Fgrbny', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(14, 3, '30', 'rye', 'Fgrbny', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(15, 3, '31', 'rye', 'Fgrbny', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(16, 3, '27', 'rye', 'Fgrbny', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(17, 3, '30', 'rye', 'Fgrbny', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(18, 3, '31', 'rye', 'Fgrbny', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(19, 3, '27', 'english project', 'sgndnd', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(20, 3, '30', 'english project', 'sgndnd', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(21, 3, '31', 'english project', 'sgndnd', -4, 1, 1, '2017-04-20', '2017-04-04', '', 0),
(22, 3, '3', 'Science project', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'Science project.png', 0),
(23, 3, '', 'homework', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'homework.png', 0),
(24, 3, '', 'homework', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'homework.cnf', 0),
(25, 3, '', 'htajts', 'vshsjsh', -4, 1, 1, '2017-04-12', '2017-04-04', 'htajts.', 0),
(26, 3, '', 'homework', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'homework.cnf', 0),
(27, 3, '30', 'homework', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'homework.cnf', 0),
(28, 3, '27', 'homework', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'homework.cnf', 0),
(29, 3, '30', 'homework', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'homework.cnf', 0),
(30, 3, '27', 'homework', 'abc', -3, 1, 1, '2017-04-12', '2017-04-04', 'homework.cnf', 0),
(31, 3, '1', 'efC2C2', 'XwcRvgb', -4, 1, 3, '2017-04-18', '2017-04-06', 'efC2C2.', 0),
(32, 3, '4', 'efC2C2', 'XwcRvgb', -4, 1, 3, '2017-04-18', '2017-04-06', 'efC2C2.', 0),
(33, 3, '6', 'efC2C2', 'XwcRvgb', -4, 1, 3, '2017-04-18', '2017-04-06', 'efC2C2.', 0),
(34, 3, '8', 'efC2C2', 'XwcRvgb', -4, 1, 3, '2017-04-18', '2017-04-06', 'efC2C2.', 0),
(35, 3, '', 'project', 'test', -4, 3, 2, '2017-04-15', '2017-04-15', 'project.', 0),
(36, 3, '', 'project', 'wbnegnen', -4, 3, 2, '2017-04-15', '2017-04-15', 'project.', 0),
(37, 3, '2477', 'project', 'complete the project by next monday.', -4, 3, 2, '2017-04-17', '2017-04-17', 'project.', 0),
(38, 3, '2477', 'practice', 'solve exercise 14 pagr no 148', -4, 3, 3, '0000-00-00', '2017-04-17', 'practice.', 0),
(39, 3, '2477', 'homework', 'do ur homework', -4, 3, 2, '2017-04-18', '2017-04-17', 'homework.', 0),
(40, 3, '2477', 'homework', 'complete ur homework', -4, 3, 2, '2017-04-17', '2017-04-17', 'homework.', 0),
(41, 3, '2477', 'homework', 'complete your homework.', -4, 3, 9, '2017-04-17', '2017-04-17', 'homework.', 0),
(42, 3, '2477', 'pratice', 'complete your pratice exercise.', -4, 3, 8, '2017-04-18', '2017-04-18', 'pratice.', 0),
(43, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-22', 'homework.png', 0),
(44, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-22', 'homework.png', 0),
(45, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(46, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(47, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(48, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(49, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(50, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(51, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(52, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(53, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(54, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(55, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(56, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.png', 0),
(57, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.svg', 0),
(58, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.svg', 0),
(59, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.svg', 0),
(60, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.svg', 0),
(61, 3, '', 'homework', 'abc', -3, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(62, 3, '', 'homework', 'abc', -3, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(63, 3, '', 'homework', 'abc', -3, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(64, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.', 0),
(65, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.', 0),
(66, 3, '', 'practice', 'Complete this homework.', -4, 3, 3, '2017-04-28', '2017-04-27', 'practice.', 0),
(67, 3, '', 'homework', 'abc', -3, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(68, 3, '', 'homework', 'abc', -3, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(69, 3, '', 'homework', 'abc', -3, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(70, 3, '', 'homework', 'abc', -3, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(71, 3, '', 'homework', 'abc', 15, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(72, 3, '', 'homework', 'abc', 15, 3, 1, '2017-04-12', '2017-04-27', 'homework.', 0),
(73, 3, '', 'homework', 'abc', 15, 3, 1, '2017-04-27', '2017-04-27', 'homework.', 0),
(74, 3, '', 'homework', 'abc', 15, 3, 1, '2017-04-27', '2017-04-27', 'homework.', 0),
(75, 3, '', 'homework', 'abc', 15, 3, 1, '2017-04-27', '2017-04-27', 'homework.', 0),
(76, 3, '', 'homework', 'abc', 15, 3, 1, '2017-04-27', '2017-04-27', 'homework.', 0),
(77, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-27', '2017-04-27', 'homework.', 0),
(78, 3, '122', 'homework', 'abc', 15, 3, 1, '2017-04-27', '2017-04-27', 'homework.', 0),
(79, 3, '2477', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.svg', 0),
(80, 3, '27', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.svg', 0),
(81, 3, '', 'homework', 'abc', 15, 3, 1, '2017-04-25', '2017-04-27', 'homework.svg', 0),
(82, 3, '2477', 'Grammer', 'Chapter no  12 in the  Himdi grammer  book.', -4, 3, 2, '2017-05-01', '2017-05-01', 'Grammer.', 0),
(83, 1, '1', 'noone', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-02', 'noone.pdf', 0),
(84, 3, '', 'Notes', 'This notes to b prepared.', -4, 3, 11, '2017-05-02', '2017-05-02', 'Notes.', 0),
(85, 3, '2477', 'Notes', 'This notes to b prepared.', -4, 3, 11, '2017-05-02', '2017-05-02', 'Notes.', 0),
(86, 3, '0', 'homework', 'abc', -4, 3, 1, '2017-04-25', '2017-05-02', 'homework.svg', 0),
(87, 3, '0', 'homework', 'abc', -4, 3, 1, '2017-04-25', '2017-05-02', 'homework.jpg', 0),
(88, 3, '1', 'homework', 'abc', -4, 3, 1, '2017-04-25', '2017-05-02', 'homework.jpg', 0),
(89, 3, '2477', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-02', 'homework.', 0),
(90, 3, '1742', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-02', 'homework.', 0),
(91, 3, '', 'vbnnbn', 'mnm,', 15, 3, 12, '2017-04-08', '2017-05-02', 'vbnnbn.', 0),
(92, 3, '2', 'vbnnbn', 'mnm,', 15, 3, 12, '2017-04-08', '2017-05-02', 'vbnnbn.', 0),
(93, 3, '2', 'vbnnbn', 'mnm,', 15, 3, 12, '2017-04-08', '2017-05-02', 'vbnnbn.', 0),
(94, 3, '2', 'vbnnbn', 'mnm,', 15, 3, 12, '2017-04-08', '2017-05-03', 'vbnnbn.', 0),
(95, 1, '1', 'noone', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-03', 'noone.pdf', 0),
(96, 3, '1742', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.jpg', 0),
(97, 3, '2477', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.jpg', 0),
(98, 3, '1742', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.txt', 0),
(99, 3, '2477', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.txt', 0),
(100, 3, '1742', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.txt', 0),
(101, 3, '2477', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.txt', 0),
(102, 3, '1742', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.txt', 0),
(103, 3, '2477', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.txt', 0),
(104, 1, '1', 'etx', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-03', 'etx.pdf', 0),
(105, 3, '1742', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.png', 0),
(106, 3, '2477', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.png', 0),
(107, 3, '1742', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.png', 0),
(108, 3, '2477', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.png', 0),
(109, 3, '1742', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.', 0),
(110, 3, '2477', 'ggfh', 'vbvm,', 15, 3, 12, '2017-05-05', '2017-05-03', 'ggfh.', 0),
(111, 1, '1', 'hello123', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-03', 'hello123.pdf', 0),
(112, 3, '2', 'new Homework', 'badbbaffa', 15, 3, 6, '2017-05-03', '2017-05-03', 'new Homework.', 0),
(113, 3, '', 'test assigment arts', 'erfvbb', -4, 1, 18, '2017-05-03', '2017-05-03', 'test assigment arts.', 0),
(114, 3, '2', 'jsi', 'zjkssmdidk', 15, 3, 9, '2017-05-03', '2017-05-03', 'jsi.', 0),
(115, 3, '', 'computer', 'shue', -4, 1, 5, '2017-05-03', '2017-05-03', 'computer.', 0),
(116, 3, '2', 'ubuu', 'bhyvy', 15, 3, 5, '2017-05-03', '2017-05-03', 'ubuu.', 0),
(117, 3, '2', 'hhu', 'yeyryu4u', 15, 3, 5, '2017-05-03', '2017-05-03', 'hhu.', 0),
(118, 3, '2', 'tws', 'gahahah', 15, 3, 5, '2017-05-03', '2017-05-03', 'tws.', 0),
(119, 3, '', 'nsjssj', 'jsjsjw', 15, 3, 16, '2017-05-03', '2017-05-03', 'nsjssj.', 0),
(120, 3, '2', 'hqbwb', 'whwhhw', 15, 3, 10, '2017-05-03', '2017-05-03', 'hqbwb.', 0),
(121, 3, '2', 'gsant', 'vanafna', 15, 3, 10, '2017-05-03', '2017-05-03', 'gsant.', 0),
(122, 3, '2', 'ehje', 'nnywnwyjwjw', 15, 3, 15, '2017-05-03', '2017-05-03', '.', 0),
(123, 3, '', 'aghf', 'gsgsgs', 15, 3, 10, '2017-05-03', '2017-05-03', '2722.JPG', 0),
(124, 1, '1', 'std', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-03', 'std1493812093.pdf', 0),
(125, 3, '1648', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(126, 3, '1649', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(127, 3, '1650', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(128, 3, '1651', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(129, 3, '1652', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(130, 3, '1653', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(131, 3, '1654', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(132, 3, '1655', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(133, 3, '1656', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(134, 3, '1657', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(135, 3, '1658', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(136, 3, '1659', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(137, 3, '1660', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(138, 3, '1661', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(139, 3, '1662', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(140, 3, '1663', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(141, 3, '1664', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(142, 3, '1665', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(143, 3, '1666', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(144, 3, '1667', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(145, 3, '1668', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(146, 3, '1669', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(147, 3, '1670', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(148, 3, '1671', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(149, 3, '1672', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(150, 3, '1673', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(151, 3, '1674', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(152, 3, '1675', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(153, 3, '1676', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(154, 3, '1677', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(155, 3, '1678', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(156, 3, '1679', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(157, 3, '1680', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(158, 3, '1681', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(159, 3, '1682', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(160, 3, '1683', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(161, 3, '1684', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(162, 3, '1685', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(163, 3, '1686', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(164, 3, '1687', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(165, 3, '1688', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(166, 3, '1689', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(167, 3, '1691', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(168, 3, '1692', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(169, 3, '1693', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(170, 3, '1694', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(171, 3, '1695', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(172, 3, '1696', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(173, 3, '1698', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(174, 3, '1699', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(175, 3, '1700', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(176, 3, '1701', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(177, 3, '1703', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(178, 3, '1704', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(179, 3, '1705', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(180, 3, '1706', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(181, 3, '1708', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(182, 3, '1709', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(183, 3, '1710', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(184, 3, '1711', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(185, 3, '1712', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(186, 3, '1713', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(187, 3, '1715', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(188, 3, '1717', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(189, 3, '1718', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(190, 3, '1719', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(191, 3, '1720', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(192, 3, '1721', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(193, 3, '1724', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(194, 3, '1725', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(195, 3, '1727', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(196, 3, '1728', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(197, 3, '1729', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(198, 3, '1730', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(199, 3, '1731', 'snkkd', 'sjsjemdk', 15, 3, 10, '2017-05-03', '2017-05-03', 'snkkd1493812383.', 0),
(200, 3, '', 'htruiwt', 'afgags', 15, 3, 12, '2017-05-03', '2017-05-03', 'htruiwt1493812914.', 0),
(201, 1, '1', 'std', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-03', 'std1493813753.pdf', 0),
(202, 1, '1', 'std', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-03', 'std1493813898.pdf', 0),
(203, 3, '', 'htqhrqwh4', 'tHwHwhw', 15, 3, 11, '2017-05-03', '2017-05-03', 'htqhrqwh41493814064.', 0),
(204, 3, '1741', 'sksk', 'smjskdkd', 15, 3, 6, '2017-05-03', '2017-05-03', 'sksk1493814429.', 0),
(205, 3, '1742', 'sksk', 'smjskdkd', 15, 3, 6, '2017-05-03', '2017-05-03', 'sksk1493814429.', 0),
(206, 3, '2477', 'sksk', 'smjskdkd', 15, 3, 6, '2017-05-03', '2017-05-03', 'sksk1493814429.', 0),
(207, 3, '1741', 'snjskd', 'nsjsjdjd', 15, 3, 6, '2017-05-03', '2017-05-03', 'snjskd1493816069.', 0),
(208, 3, '1742', 'snjskd', 'nsjsjdjd', 15, 3, 6, '2017-05-03', '2017-05-03', 'snjskd1493816069.', 0),
(209, 3, '2477', 'snjskd', 'nsjsjdjd', 15, 3, 6, '2017-05-03', '2017-05-03', 'snjskd1493816069.', 0),
(210, 3, '1741', 'ggg', 'snjsjsjsj', 15, 3, 11, '2017-05-03', '2017-05-03', 'ggg1493816271.', 0),
(211, 3, '1742', 'ggg', 'snjsjsjsj', 15, 3, 11, '2017-05-03', '2017-05-03', 'ggg1493816271.', 0),
(212, 3, '2477', 'ggg', 'snjsjsjsj', 15, 3, 11, '2017-05-03', '2017-05-03', 'ggg1493816271.', 0),
(213, 3, '1741', 'djjdd', 'sjsjjdnek', 15, 3, 14, '2017-05-03', '2017-05-03', 'djjdd1493816624.', 0),
(214, 3, '1742', 'djjdd', 'sjsjjdnek', 15, 3, 14, '2017-05-03', '2017-05-03', 'djjdd1493816624.', 0),
(215, 3, '2477', 'djjdd', 'sjsjjdnek', 15, 3, 14, '2017-05-03', '2017-05-03', 'djjdd1493816624.', 0),
(216, 3, '1741', 'ekrkrk', 'jsjsjeej', 15, 3, 10, '2017-05-03', '2017-05-03', 'ekrkrk1493816711.', 0),
(217, 3, '1742', 'ekrkrk', 'jsjsjeej', 15, 3, 10, '2017-05-03', '2017-05-03', 'ekrkrk1493816711.', 0),
(218, 3, '2477', 'ekrkrk', 'jsjsjeej', 15, 3, 10, '2017-05-03', '2017-05-03', 'ekrkrk1493816711.', 0),
(219, 3, '1742', 'Homework', 'znnzdkdk', 15, 3, 18, '2017-05-04', '2017-05-04', 'Homework1493873711.jpg', 0),
(220, 3, '2477', 'Homework', 'znnzdkdk', 15, 3, 18, '2017-05-04', '2017-05-04', 'Homework1493873711.jpg', 0),
(221, 3, '1742', 'gegh', 'xffgggg', 15, 3, 18, '2017-05-04', '2017-05-04', 'gegh1493873800.jpg', 0),
(222, 3, '2477', 'gegh', 'xffgggg', 15, 3, 18, '2017-05-04', '2017-05-04', 'gegh1493873800.jpg', 0),
(223, 1, '1', 'std', 'dassfdfsdfd', 1, 1, 1, '0000-00-00', '2017-05-04', 'std1493874188.jpg', 0),
(224, 3, '1742', 'homework', 'twsjfahs', 15, 3, 14, '2017-05-04', '2017-05-04', 'homework1493874337.jpg', 0),
(225, 3, '2477', 'homework', 'twsjfahs', 15, 3, 14, '2017-05-04', '2017-05-04', 'homework1493874337.jpg', 0),
(226, 3, '1742', 'shheej', 'vafbsnahrq', 15, 3, 10, '2017-05-04', '2017-05-04', 'shheej1493874593.jpg', 0),
(227, 3, '2477', 'shheej', 'vafbsnahrq', 15, 3, 10, '2017-05-04', '2017-05-04', 'shheej1493874593.jpg', 0),
(228, 3, '1742', 'arqyh', 'fafhGH', 15, 3, 18, '2017-05-04', '2017-05-04', 'arqyh1493876351.jpg', 0),
(229, 3, '2477', 'arqyh', 'fafhGH', 15, 3, 18, '2017-05-04', '2017-05-04', 'arqyh1493876351.jpg', 0),
(230, 3, '1742', 'jddj', 'sdndmm', 15, 3, 18, '2017-05-04', '2017-05-04', 'jddj1493876687.jpg', 0),
(231, 3, '2477', 'jddj', 'sdndmm', 15, 3, 18, '2017-05-04', '2017-05-04', 'jddj1493876687.jpg', 0),
(232, 3, '1742', 'dnkdkd', 'sjjsmsks', 15, 3, 6, '2017-05-04', '2017-05-04', 'dnkdkd1493877034.txt', 0),
(233, 3, '2477', 'dnkdkd', 'sjjsmsks', 15, 3, 6, '2017-05-04', '2017-05-04', 'dnkdkd1493877034.txt', 0),
(234, 3, '', 'vrv', 'f4v3tbrgb3', 15, 3, 12, '2017-05-08', '2017-05-08', 'vrv1494221767.jpg', 0),
(235, 3, '2477', 'test', 'test', 15, 3, 18, '2017-05-10', '2017-05-09', 'test1494329293.webp', 0),
(236, 3, '1861', 'test', 'bcfjc', -4, 1, 18, '2017-05-10', '2017-05-09', 'test1494329646.webp', 0),
(237, 3, '2477', 'test', 'test', 15, 3, 18, '2017-05-10', '2017-05-09', 'test1494329689.webp', 0),
(238, 3, '2477', 'Homrwork', 'Complete the assignment by next week.', 15, 3, 18, '2017-05-11', '2017-05-11', 'Homrwork1494501796.png', 0),
(239, 3, '2477', 'Science Project', 'You have to prepare a science project relating to the current chapter.', 15, 3, 10, '2017-05-11', '2017-05-11', 'Science Project1494502632.png', 0),
(240, 3, '2477', 'Science Project', 'You have to prepare a science project relating to the current chapter.', 15, 3, 10, '2017-05-11', '2017-05-11', 'Science Project1494502656.png', 0),
(241, 3, '2477', 'Practice', 'Do practice of exercise 5.3 chapter 5.', 15, 3, 3, '2017-05-13', '2017-05-11', 'Practice1494503519.png', 0),
(242, 3, '2477', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495792359.java', 0),
(243, 3, '1742', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495792359.java', 0),
(244, 3, '2477', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495792404.java', 0),
(245, 3, '1742', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495792404.java', 0),
(246, 3, '2477', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495792477.', 0),
(247, 3, '1742', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495792477.', 0),
(248, 3, '1742', 'Project', 'complete this homework.', 15, 3, 11, '2017-05-26', '2017-05-26', 'Project1495792855.png', 0),
(249, 3, '2477', 'Project', 'complete this homework.', 15, 3, 11, '2017-05-26', '2017-05-26', 'Project1495792855.png', 0),
(250, 3, '2477', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495796289.', 0),
(251, 3, '1742', 'homework', 'abc', 15, 3, 12, '2017-04-25', '2017-05-26', 'homework1495796289.', 0),
(252, 3, '', 'df', 'the', 15, 3, 2, '2017-06-17', '2017-06-17', 'df1497676893.png', 0),
(253, 3, '806', 'Science Projects', 'complete the project.', 15, 4, 16, '2017-06-24', '2017-06-23', 'Science Projects1498197556.jpg', 0),
(254, 3, '807', 'Science Projects', 'complete the project.', 15, 4, 16, '2017-06-24', '2017-06-23', 'Science Projects1498197556.jpg', 0),
(255, 3, '808', 'Science Projects', 'complete the project.', 15, 4, 16, '2017-06-24', '2017-06-23', 'Science Projects1498197556.jpg', 0),
(256, 3, '', 'test', 'complete homework.', 1, 1, 7, '2017-06-23', '2017-06-23', 'test1498201241.png', 0),
(257, 3, '', 'test', 'complete homework.', 1, 1, 7, '2017-06-23', '2017-06-23', 'test1498201252.png', 0),
(258, 3, '806', 'English assignment', 'Complete this homework till Monday.', 15, 4, 16, '2017-06-30', '2017-06-30', 'English assignment1498801863.png', 0),
(259, 3, '807', 'English assignment', 'Complete this homework till Monday.', 15, 4, 16, '2017-06-30', '2017-06-30', 'English assignment1498801863.png', 0),
(260, 3, '2', 'efsdfdfsd', 'dasas', 15, 5, 17, '2017-07-05', '2017-07-06', '', 0),
(261, 3, '', 'Home Work', 'Kindly Complete H.W.', 2, 2, 1, '2017-07-07', '2017-07-07', 'Home Work1499397019.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `attendance_mark` varchar(20) NOT NULL,
  `attendance_date` date NOT NULL,
  `curent_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `user_id`, `attendance_mark`, `attendance_date`, `curent_date`) VALUES
(1, 807, 3, '2', '2017-06-22', '2017-06-22'),
(2, 806, 3, '1', '2017-06-22', '2017-06-22'),
(3, 808, 3, '3', '2017-06-22', '2017-06-22'),
(4, 809, 3, '2', '2017-06-22', '2017-06-22'),
(5, 810, 3, '1', '2017-06-22', '2017-06-22'),
(6, 806, 3, '1', '2017-06-30', '2017-06-30'),
(7, 807, 3, '2', '2017-06-30', '2017-06-30'),
(8, 808, 3, '3', '2017-06-30', '2017-06-30'),
(9, 84, 3, '2', '2017-08-19', '2017-08-19'),
(10, 85, 3, '2', '2017-08-19', '2017-08-19'),
(11, 86, 3, '1', '2017-08-19', '2017-08-19'),
(12, 1003, 42, '2', '2017-08-24', '2017-08-24');

-- --------------------------------------------------------

--
-- Table structure for table `broadcast_message`
--

CREATE TABLE IF NOT EXISTS `broadcast_message` (
  `id` int(11) NOT NULL,
  `role_id` varchar(200) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `curent_date` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role_id` int(11) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bus_routes`
--

CREATE TABLE IF NOT EXISTS `bus_routes` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_routes`
--

INSERT INTO `bus_routes` (`id`, `vehicle_id`, `station_id`, `flag`) VALUES
(1, 1, 1, 0),
(2, 1, 2, 0),
(3, 1, 3, 0),
(4, 1, 4, 0),
(5, 1, 1, 0),
(6, 1, 2, 0),
(7, 2, 1, 0),
(8, 2, 3, 0),
(9, 3, 2, 0),
(10, 3, 4, 0),
(11, 4, 4, 0),
(12, 4, 3, 0),
(13, 4, 4, 0),
(14, 6, 2, 0),
(15, 6, 3, 0),
(16, 7, 1, 0),
(17, 7, 2, 0),
(18, 7, 3, 0),
(19, 5, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `class_section`
--

CREATE TABLE IF NOT EXISTS `class_section` (
  `id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_section`
--

INSERT INTO `class_section` (`id`, `class_id`, `section_id`, `teacher_id`) VALUES
(1, 14, 1, 3),
(2, 1, 1, 5),
(3, 3, 1, 5),
(4, 4, 1, 5),
(5, 5, 1, 5),
(6, 6, 1, 5),
(7, 7, 1, 5),
(8, 8, 1, 5),
(9, 9, 1, 5),
(10, 10, 1, 5),
(11, 11, 1, 5),
(12, 12, 1, 5),
(13, 13, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact_detail`
--

CREATE TABLE IF NOT EXISTS `contact_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile_no` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_detail`
--

INSERT INTO `contact_detail` (`id`, `name`, `mobile_no`, `email`, `designation`, `flag`, `timestamp`) VALUES
(1, 'Darshan', '9001119974', 'thakkardarshan59@gmail.com', 'Teacher', 1, '2017-07-07 03:06:39'),
(2, 'Vijay Singh', '7073455105', 'vs0255@gmail.com', 'Teacher', 1, '2017-07-07 03:06:35'),
(3, 'Office', '2953294294', 'contact2cba@gmail.com', 'Office', 0, '2017-07-07 03:07:29'),
(4, 'WhatsApp', '9610710500', 'contact2cba@gmail.com', 'WhatsApp Incharge', 0, '2017-07-07 03:08:07');

-- --------------------------------------------------------

--
-- Table structure for table `director_principle_message`
--

CREATE TABLE IF NOT EXISTS `director_principle_message` (
  `id` int(11) NOT NULL,
  `sms_sender_role` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sms_receive_role` int(11) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `director_principle_message`
--

INSERT INTO `director_principle_message` (`id`, `sms_sender_role`, `message`, `timestamp`, `sms_receive_role`, `login_id`) VALUES
(1, 4, 'helllo this  is test data  ', '2017-06-20 11:27:39', 1, 3),
(2, 2, '', '2017-07-06 15:51:05', 5, 3),
(3, 2, '', '2017-07-06 15:51:35', 1, 3),
(4, 2, '', '2017-07-07 03:02:55', 5, 3),
(5, 2, '', '2017-07-07 04:03:34', 4, 3),
(6, 3, 'test', '2017-08-19 13:00:18', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `location` varchar(1000) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `lattitude` varchar(100) NOT NULL,
  `longitude` varchar(100) NOT NULL,
  `shareable` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `time` varchar(100) NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `category_id`, `user_id`, `image`, `title`, `description`, `location`, `date_from`, `date_to`, `lattitude`, `longitude`, `shareable`, `role_id`, `time`, `curent_date`, `flag`) VALUES
(1, 4, 3, '8791497910376.jpeg', 'test', 'NOT AT ALL', 'udaipur', '2017-06-20', '2017-06-20', '24.585445', '73.712479', '1', 5, '3:45 PM', '2017-06-20', 0),
(2, 4, 42, '51701503436923.jpeg', 'Sports Week', 'St Xavierl School Sport Week 2017 was a huge celebration .', 'Udaipur', '2017-08-23', '2017-08-30', '24.585445', '73.712479', '1', 1, '2:00', '2017-08-23', 0),
(3, 4, 42, '75791503437486.jpeg', 'Annual Function', 'Annual Function', 'Udaipur', '2017-08-23', '2017-08-23', '24.585445', '73.712479', '1', 1, '', '2017-08-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_details`
--

CREATE TABLE IF NOT EXISTS `event_details` (
  `id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `name` varchar(2000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event_details`
--

INSERT INTO `event_details` (`id`, `event_id`, `date`, `time`, `name`) VALUES
(1, 1, '2017-06-20', '3:45 PM', 'TEST EVENT'),
(2, 2, '2017-08-23', '2:45 PM', 'Race'),
(3, 3, '2017-08-23', '', 'Annual Function');

-- --------------------------------------------------------

--
-- Table structure for table `exam_time_table`
--

CREATE TABLE IF NOT EXISTS `exam_time_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `exam_date` date NOT NULL,
  `room_no` varchar(225) NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_time_table`
--

INSERT INTO `exam_time_table` (`id`, `user_id`, `class_id`, `section_id`, `subject_id`, `time_from`, `time_to`, `exam_date`, `room_no`, `curent_date`, `flag`) VALUES
(1, 3, 15, 5, 18, '02:00:00', '05:00:00', '2017-01-06', '111', '2017-06-20', 0),
(2, 3, 15, 5, 17, '02:00:00', '05:00:00', '2017-06-21', '111', '2017-06-20', 0),
(3, 3, 15, 5, 19, '02:00:00', '05:00:00', '2017-06-22', '111', '2017-06-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `extra_classes`
--

CREATE TABLE IF NOT EXISTS `extra_classes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty_login`
--

CREATE TABLE IF NOT EXISTS `faculty_login` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `class_id` varchar(200) NOT NULL,
  `section_id` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL,
  `device_token` text NOT NULL,
  `notification_key` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty_login`
--

INSERT INTO `faculty_login` (`id`, `role_id`, `name`, `user_name`, `password`, `mobile_no`, `address`, `class_id`, `section_id`, `image`, `curent_date`, `flag`, `device_token`, `notification_key`) VALUES
(1, 2, 'Doveloper Account', 'admin', '5d41402abc4b2a76b9719d911017c592', '', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(2, 2, 'Dr. Rishika Rao', '9983343479', '335ed3be0e71b3b328dbc02823e033ef', '9983343479', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(3, 0, 'Mr. Lalit Sukhwal', '9672120111', 'abde59f3412fcb6060c4bcd503c374e4', '9672120111', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(4, 3, 'Miss. Shubhangi Varangaonkar', '9983326534', 'c554a46dfd88d9727109a80048996f08', '9983326534', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(5, 0, 'Mr. Nisar Ahmed', '9829911469', 'ef38c1ce6de5ec71250d71c905fbd4ed', '9829911469', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(6, 0, 'Mrs. Deena Shrimali', '9352064050', '658ce2edbe55a7e6dcb2d11b2a508a72', '9352064050', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(7, 0, 'Mrs..Shahgul ', '7877904781', 'ad2ff96390e45b8eceb09198d9b45f0d', '7877904781', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(8, 0, 'Mrs.Karuna Sen', '9571221005', '7db509415e80e4cdc70d09696e6877a6', '9571221005', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(9, 4, 'Mrs. Damyanti Bhatnagar', '9352007467', '2910c99e32531da20fe712eb4cf21f7c', '9352007467', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(10, 4, 'Mrs.Grishma Ameta', '7425885067', 'afe55886207a71dd43abd35c26d025b6', '7425885067', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(11, 4, 'Mrs. Damyanti Shrimali', '9462007373', '550127984b04f1c94df2271ef06c3bd0', '9462007373', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(12, 4, 'Mr. Manish Chanal', '9772889566', 'a7e936fe0518202bec3eaa6615f78ca5', '9772889566', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(13, 4, 'Mrs. Shweta Choubisa', '8107941628', '3115781c8e7dfa1bb41a3c101fb5fc01', '8107941628', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(14, 4, 'Mrs.Rekha jain', '7737241335', 'da23f288e85251e580455244cd3f2abf', '7737241335', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(15, 4, 'Mrs.Preeti shrimal', '8875570611', 'a53a9c30898fbf02a831896557221923', '8875570611', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(16, 4, 'Mrs.Vandana ', '9001391792', '656b40923f3fbbea2bf8fe6ba04e4255', '9001391792', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(17, 4, 'Miss.Neelam Bhatnagar', '9950872078', '320e6605c6b7be7cf7438cff48bcfefc', '9950872078', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(18, 4, 'Miss.Shahnaz khan', '9784546586', '71eb68f7f96d768c376ffdfabeab3479', '9784546586', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(19, 4, 'Miss Shaheen Ara', '8239134887', 'f3eb507a6ea4b2b18877d73457b6cbe5', '8239134887', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(20, 4, 'Mr.Nayan seth', '8769202126', '43a3132e1ca7369b5bdfd4645e9d1a08', '8769202126', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(21, 4, 'Miss Romaan', '7073237870', '1848dca482cac430c85017374b69cc2e', '7073237870', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(22, 4, 'Mrs.Rajni Dave', '9314023331', 'a6acd20892016aff7e576ed80775a35a', '9314023331', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(23, 4, 'Mrs.Karuna sharma', '9680002679', '8a1360e75bb45c5168db22c36648e23e', '9680002679', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(24, 4, 'Mrs.Saima Khan', '9509103325', '654127c4d2bdfe503b5bd1183634bc66', '9509103325', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(25, 4, 'Miss.Neelam Kashyap ', '7821807985', 'a65a80d8d7464d8fed90447102cb4775', '7821807985', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(26, 4, 'Miss Anuradha Bhatnagar', '8005769552,', 'caf3a4b32696c49eddbef61aa3c862dc', '8005769552,', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(27, 4, 'Khushma Sharma', '9799082422', '010cfbcc95f131a270194cb214269d63', '9799082422', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(28, 4, 'Mrs.Usha Chouhan', '9649550428', 'df147183d53243eb5fbf76feea45eef3', '9649550428', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(29, 4, 'Mrs.Santosh Kumawat', '7740860713', 'ffd209f7650421899a19af6ac68448b7', '7740860713', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(30, 4, 'Miss Sabnam ', '9587516359', '49949f3bd7279054300515c2e2073c4e', '9587516359', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(31, 4, 'Ms.Rachana  Verma', '9252475038', '08c7c8bf325adb427731414fdb539111', '9252475038', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(32, 4, 'Mrs.Sarika Bhandari', '7737693995', 'd29a00b64111e62f809474556d8358f2', '7737693995', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(33, 4, 'Mrs.Narseen', '7742786991', 'f43447273bd169c003325a06a6cabd49', '7742786991', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(34, 4, 'Miss  Isha Vaishnav', '9549902981', '5d8c5772c810d609a77db5d701fabcd3', '9549902981', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(35, 4, 'Miss Samira', '9829975652', '7eb48f2af82897ee907b17fce3a11cee', '9829975652', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(36, 4, 'Miss.Garima ', '9928556250', '4ace00ff8fa40ee23562f8d5041af9d9', '9928556250', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(37, 4, 'Mr.Yasvant Gour', '9950217418', '998cc17e1977ed9609ff23fa6f79c5fd', '9950217418', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(38, 4, 'Mrs Bharti Shrimali', '9571859387', '7e324f45f62556d55547a29925336992', '9571859387', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(39, 4, 'Miss Shabreen Aara', '7737453740', '726c55ac68b3a830e3e7386fe6babec6', '7737453740', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(40, 4, 'Miss Manisha Damor', '9782643496', 'ce86cc52c29a6e96ecfbd9feaf3baa6f', '9782643496', 'Udaipur', '', '', '', '0000-00-00', 0, '0', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv'),
(41, 0, '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '', '', '', '', '0000-00-00', 0, '', ''),
(42, 4, 'Udaipur', 'udaipur', '218d9c6e41a98b401ca7fefecc585d77', '', 'Udaipur', '', '', '', '0000-00-00', 0, '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` int(11) NOT NULL,
  `event_news_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `event_news_id`, `category_id`) VALUES
(1, 1, 4),
(2, 1, 5),
(3, 2, 4),
(4, 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `home_gallery`
--

CREATE TABLE IF NOT EXISTS `home_gallery` (
  `id` int(11) NOT NULL,
  `pic` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home_gallery`
--

INSERT INTO `home_gallery` (`id`, `pic`, `title`, `flag`) VALUES
(1, '1.jpg', '', 0),
(2, '2.jpg', '', 0),
(3, '3.jpg', '', 0),
(4, '4.jpg', '', 0),
(5, '5.jpg', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_form`
--

CREATE TABLE IF NOT EXISTS `inquiry_form` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `study` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `mobile_no` varchar(100) NOT NULL,
  `query` text NOT NULL,
  `curent_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquiry_form`
--

INSERT INTO `inquiry_form` (`id`, `user_id`, `role_id`, `name`, `email`, `study`, `address`, `mobile_no`, `query`, `curent_date`) VALUES
(1, 2477, 5, 'zgsg', 'abc@gmail.com', 'wygrq', 'wfheg', '9874561230', 'bdbdghsj', '2017-03-30'),
(2, 3, 4, 'abc', 'abc@gmail.com', 'eiidk3', 'rjri', '9874561230', 'sjjs', '2017-04-25'),
(3, 2477, 5, 'gyJ43', 'abc@gmail.com', 'com', 'djjdrji', '9874561230', 'sdkkdo', '2017-05-01'),
(4, 3, 4, 'Abc', 'abc@gmail.com', 'science', 'xyz', '1234567890', 'mtkfkfkrod', '2017-05-04'),
(5, 2477, 5, 'abc', 'abc@gmail.com', '12th', 'xyz', '9876543210', 'vhtwjwtjwyje', '2017-06-09'),
(6, 3, 4, 'abc', 'abc@gmail.com', '12th', 'Subhash Nagar', '1234567890', 'plz reduce work load.', '2017-06-23'),
(7, 531, 5, 'ababc', 'abc@gmail.com', '12th', 'xyz', '4563210789', 'complain', '2017-07-14'),
(8, 531, 5, 'abc', 'abc@gmail.com', 'science', 'xyz', '4567891230', 'complain', '2017-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `leave_note`
--

CREATE TABLE IF NOT EXISTS `leave_note` (
  `id` int(11) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `reason` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 = in-process, 1 = approved, 2 = rejected',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leave_note`
--

INSERT INTO `leave_note` (`id`, `date_from`, `date_to`, `reason`, `student_id`, `status`, `timestamp`, `class_id`, `section_id`) VALUES
(1, '2017-04-02', '2017-04-04', 'test krne k liye ok', 1, 2, '2017-04-14 04:51:38', 3, 1),
(2, '2017-03-31', '2017-03-31', 'cdasdasdasasdas', 1, 2, '2017-04-14 04:51:38', 2, 1),
(9, '2017-03-31', '2017-03-30', 'hygy', 787, 1, '2017-04-14 04:51:38', 0, 1),
(11, '2017-04-10', '2017-04-10', 'ufuf', 3, 0, '2017-04-14 04:51:38', 0, 1),
(13, '2017-04-21', '2017-04-23', 'i want 2 days leave as m not well.', 2477, 1, '2017-04-14 04:51:38', 0, 1),
(14, '2017-04-17', '2017-04-19', 'i have urgent peace of work.', 2477, 0, '2017-04-14 04:51:38', 0, 1),
(15, '2017-04-19', '2017-04-21', '4uegejrjej', 2477, 0, '2017-04-14 04:51:38', 0, 1),
(16, '2017-04-20', '2017-04-21', 'djdjfjffjfk', 2477, 1, '2017-04-14 04:51:38', 12, 1),
(17, '1970-01-01', '2017-04-12', 'bvbnm', 2477, 2, '2017-04-14 04:51:38', 12, 1),
(18, '2017-04-19', '2017-04-20', 'hdgebahahrq', 2477, 2, '2017-04-14 11:00:55', 12, 1),
(19, '2017-04-17', '2017-04-18', 'i have to attend a function', 2477, 1, '2017-04-17 11:11:32', 12, 3),
(20, '2017-04-18', '2017-04-19', 'one day leave as i am not well.', 2477, 2, '2017-04-18 07:37:02', 12, 3),
(21, '2017-04-18', '2017-04-19', 'gbnmnm', 2477, 1, '2017-04-18 10:59:04', 12, 3),
(22, '2017-04-25', '2017-04-26', 'test', 3, 1, '2017-05-01 10:46:10', 12, 3),
(23, '2017-05-04', '2017-05-04', 'I have to attend a marriage function in my family. plz grant me leave.', 3, 2, '2017-05-08 05:36:58', 12, 3),
(24, '2017-05-08', '2017-05-09', 'I am not well.', 2477, 1, '2017-05-08 06:28:42', 12, 3),
(25, '2017-05-11', '2017-05-12', 'I have to visit to my GrandParents.', 2477, 1, '2017-05-26 06:48:52', 12, 3),
(26, '2017-05-23', '2017-05-24', 'umx f', 2477, 1, '2017-05-23 09:33:03', 12, 3),
(27, '2017-05-26', '2017-05-27', 'I am not well. Please grant me leave.', 2477, 2, '2017-05-26 06:46:19', 12, 3),
(28, '2017-05-26', '2017-05-27', 'I am not well.', 2477, 1, '2017-05-26 06:46:05', 12, 3),
(29, '2017-05-26', '2017-05-27', 'I have to go out of town for some urgent work.', 2477, 1, '2017-05-26 07:40:47', 12, 3),
(30, '2017-05-28', '2017-05-30', 'I am not well.', 2477, 1, '2017-05-26 07:53:07', 12, 3),
(31, '2017-05-27', '2017-05-28', 'I m  not well please grant me leave.', 2477, 1, '2017-05-26 07:52:39', 12, 3),
(32, '2017-05-26', '2017-05-27', 'I have to attend a function in my family.', 2477, 0, '2017-05-26 09:26:00', 12, 3),
(33, '2017-05-26', '2017-05-27', 'please grant me leave.', 2477, 0, '2017-05-26 09:29:40', 12, 3),
(34, '2017-06-20', '2017-06-21', 'I am not well please grant me leave.', 807, 1, '2017-06-23 08:09:40', 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `father_name` varchar(250) NOT NULL,
  `mother_name` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `roll_no` varchar(250) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `medium` int(11) NOT NULL,
  `eno` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `mobile_no` text NOT NULL,
  `father_mobile` varchar(30) NOT NULL,
  `mother_mobile` varchar(30) NOT NULL,
  `otp` varchar(200) NOT NULL,
  `notification_key` varchar(2000) NOT NULL,
  `device_token` varchar(2000) NOT NULL,
  `image` varchar(100) NOT NULL,
  `school_id` int(11) NOT NULL,
  `curent_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=1049 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(1, 1, 3, 5, 'AALIYA  KHAN', '0000-00-00', 'TAHIR  HUSSAIN', 'REHANA', '697, GARIB NAWAZ COLONEY MAGARI SCHOOL KE PASS MALLA TALAI', '', 5, 1, 1, '3428', 'aaliyakhan', '9326888876de656b1932e73a0f34d617', '9001321709', '8058583122', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-25 05:19:38', 0),
(2, 2, 0, 5, 'ALFARHAN  KHAN', '0000-00-00', 'SHOUKAT KHAN', 'SHABNAM', '80 FEET ROAD NEAR RATA KHET NEAR MASJID', '', 5, 1, 1, '3341', 'alfarhankhan', '4cd71cb262ebb8e4326bb5898dc86811', '9660927893', '9660927893', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(3, 3, 0, 5, 'ANAM  KHAN', '0000-00-00', 'JAVED KHAN', 'FARHEEN NAAZ', 'GALI NO-4 GARIB NAWAZ COLONEY MALLA TALAI', '', 5, 1, 1, '3397', 'anamkhan', '771599657a4490d686049f7d03591c9b', '9829031968', '9829031968', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(4, 4, 0, 5, 'JAY  PALIWAL', '0000-00-00', 'HEMANT PALIWAL', 'LALITA PALIWAL', '2 SHRI NAGAR NEAR AADARSH RESORT RAMPURA', '', 5, 1, 1, '3636', 'jaypaliwal', 'ca50f1a98c04d50c120c0e8da71b3b04', '9929027157', '9950411405', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(5, 5, 0, 5, 'JUNED  KHAN', '0000-00-00', 'MUMTAJ KHAN', 'SHAKIRA BANO', 'L-1 GANDHI NAGAR MULLA TALI', '', 5, 1, 1, '3647', 'junedkhan', 'd1dd464704c9244f667330c014d02655', '9785471728', '9928472640', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(6, 6, 0, 5, 'KALPESH  JOSHI', '0000-00-00', 'RAKESH JOSHI', 'RAJESHWARI JOSHI', 'MALLA TALAI AMAR NAGAR HOUSE NO.63 UDAIPUR', '', 5, 1, 1, '3326', 'kalpeshjoshi', 'cba3cb926960e1f7fa05cb4a170c5ed4', '9928231620', '7568984126', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(7, 7, 0, 5, 'MOINUDDIN  BEHLIM', '0000-00-00', 'RIYAZ BEHLIM', 'SOFIYA BANO', '649,GARIB NAWAZ COLONEY MALLA TALI', '', 5, 1, 1, '3342', 'moinuddinbehlim', '28cdaa9e7443eb861b2009a5dcc4c8ee', '9928400324', '9928465176', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(8, 8, 0, 5, 'YASHMIT  JOSHI', '0000-00-00', 'DILIP JOSHI', 'SUNITA JOSHI', '3 EC SAJJAN NAGAR  A UIT QUATER', '', 5, 1, 1, '3541', 'yashmitjoshi', '475eb92b23769aa7bd66082d3de6f995', '9660925913', '9660925913', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(9, 9, 0, 5, 'ZAINAB BANO  KHAN', '0000-00-00', 'MOHSIN KHAN PATHAN', 'NILOFAR KHANAM', '270 B BLOCK SAJJAN NAGAR', '', 5, 1, 1, '3658', 'zainabbanokhan', 'e0cfbd6a9d7dc5043817a4adf922bab6', '8233409786', '9799156786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(10, 10, 0, 5, 'AFSHEEN  KHAN', '0000-00-00', 'MOHAMMED ANWAR KHAN', 'RUBINA KHAN', '54- JATWARI', '', 6, 1, 1, '3083', 'afsheenkhan', '66e6c2bd4a5e7a6d4d34ac54114c2c4e', '9414812564', '9829662564', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(11, 11, 0, 5, 'DAKSH  TRIVEDI', '0000-00-00', 'VINOD KUMAR TRIVEDI', 'PYARI TRIVEDI', 'NIROG DHAM CLINIC KE PASS MAIN ROAD MALLA TALAI.', '', 6, 1, 1, '3182', 'dakshtrivedi', 'bddbd5a2fed244836684189208a85907', '9460727723', '9460727723', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(12, 12, 0, 5, 'GORANSH  PANWAR', '0000-00-00', 'PRAVEEN PANWAR', 'KAVITA PANWAR', 'G-8, POLICE QUARTER', '', 6, 1, 1, '3090', 'goranshpanwar', 'c3b78bd7cd81634d012fb8e867a9a349', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(13, 13, 0, 5, 'ISHAN  JOSHI', '0000-00-00', 'SUBHASH JOSHI', 'VANDANA JOSHI', '300,A BLOCK SAJJAN NAGAR GALI NO. 2', '', 6, 1, 1, '3168', 'ishanjoshi', '3f96a6b686339e2e4dec8c5cd7683b3f', '9001261682', '9001261682', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(14, 14, 0, 5, 'JATIN  PALIWAL', '0000-00-00', 'GAJANAND PALIWAL', 'RATAN DEVI PALIWAL', '83 BARIGAT INSIDE CHANDPOL', '', 6, 1, 1, '3148', 'jatinpaliwal', '4d64f60668122e1117047c98c198184f', '9252449784', '9252449784', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(15, 15, 0, 5, 'MISBAH  SHEIKH', '0000-00-00', 'NIZAM MOHD', 'RESHMA SHEIKH', 'AHMED HUSSAIN COLONY MALLA TALAI', '', 6, 1, 1, '3353/14', 'misbahsheikh', '7c141094307c85bdea322f5267c67de3', '9887350320', '9887350320', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(16, 16, 0, 5, 'MOHAMMED ASAD  SHEIKH', '0000-00-00', 'REHANUDDIN SHEIKH', 'AFSANA BANU', '438,GALI NO.1 GARIB NAWAZ COLONY MALLA TALAI', '', 6, 1, 1, '3150', 'mohammedasadsheikh', '2e57bc5110bf2ff6193aefdc3ad35213', '8387861648', '8387861648', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(17, 17, 0, 5, 'SAKSHI  RAI', '0000-00-00', 'DEVENDRA RAI', 'JAYANTI RAI', 'WARD NO. 8, CHAMPA COLONY, DUDHIYA GANESH JI MAHADEV MANDIR', '', 6, 1, 1, '3363', 'sakshirai', 'dccd044b82cfad99cea79e3ca95464a0', '9587231048', '9587231048', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(18, 18, 0, 5, 'ALFINA  BANU', '0000-00-00', 'MOHD HUSSAIN', 'MARIYAM BANU', '528/60 OTC SCHEME CHIPPA COLONY', '', 7, 1, 1, '3068', 'alfinabanu', 'b9b14500d91bc1f5680dd55448bac96d', '', '8696886211', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(19, 19, 0, 5, 'FATMA  ZEHRA', '0000-00-00', 'SHEHJAD  KHAN', 'FARJANA BEGUM', '121 FARUQ AZAM COLONEY MALLA TALAI', '', 7, 1, 1, '3608', 'fatmazehra', '0cb3c33eca06b7dd1570c0943a3e03c9', '9251975113', '9214034530', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(20, 20, 0, 5, 'KHUSHI  SARNOT', '0000-00-00', 'DEVENDRA SARNOT', 'SANGEETA SARNOT', 'MAHVEER COLONY, UPPALI SAHARI, VILLAGE - NAI', '', 7, 1, 1, '3508', 'khushisarnot', '7f8380f09a3deeaa86c1b643abcf1599', '9929586572', '8107414890', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(21, 21, 0, 5, 'MOHAMMED ALI  KHAN', '0000-00-00', 'MOHSIN KHAN PATHAN', 'NILOFAR KHANAM', '270 B BLOCK SAJJAN NAGAR', '', 7, 1, 1, '3659', 'mohammedalikhan', '17f41539a4cff25cb358ec0555b5899b', '8233409786', '9799156786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(22, 22, 0, 5, 'MOHAMMED ANAS  SHEIKH', '0000-00-00', 'MOHAMMED ZAFAR SHEIKH', 'SHAMEEM BANU', '368/369,FARUQ AAZAM COLONY MALLA TALAI', '', 7, 1, 1, '2966', 'mohammedanassheikh', '202701cd990bec52fa52c831e2144960', '7220073757', '9929619643', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(23, 23, 0, 5, 'MOHAMMED AYAN  SHEIKH', '0000-00-00', 'MOHAMMED SALIM SHEIKH', 'MOHSINA BANO', 'AMBA LAL JI WALI GALI 80 FEET', '', 7, 1, 1, '3686', 'mohammedayansheikh', '97ff0368b1d079101eb3ad1fd5a5f864', '', '9928742240', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(24, 24, 0, 5, 'MOHAMMED OSAN  ', '0000-00-00', 'AKHLAK HUSSAIN', 'ZEENAT GORI', 'FARUKH AZAM COLONY GALI NO 2', '', 7, 1, 1, '3685', 'mohammedosan', '2e3fda9260928a8c72ac84735a1e0eb5', '7568896952', '9784823396', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(25, 25, 0, 5, 'MOHAMMED ZAKEE  ', '0000-00-00', 'MOHAMMED FAREED', 'ZULEKHA KHATUN', '5-83,GANDHI NAGAR,MALLA TALAI', '', 7, 1, 1, '3049', 'mohammedzakee', '6b0b1d2c2990edd073c8cef2ba320f29', '8058482323', '8058482323', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(26, 26, 0, 5, 'ONIK  BACHANI', '0000-00-00', 'CHANDRA PRAKASH BACHANI', 'MUSKAN BACHANI', '6/2, MACHLA MAGRA, SECTORE 11', '', 7, 1, 1, '3501', 'onikbachani', '1b0ddd33c2294712da713da58d08aeec', '9649309785', '9462681054', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(27, 27, 0, 5, 'SALIK  KHAN', '0000-00-00', 'SHAKEEL KHAN', 'SHAHEEN BANU', 'CENTRAL ACADMY SCHOOL KE PASS, MALLA TALAI', '', 7, 1, 1, '2917', 'salikkhan', 'e51cf183cf47e4903d202cb94f9e8f9d', '8854801786', '8854801786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(28, 28, 0, 5, 'SHIFA  SHAKEEL', '0000-00-00', 'MOHD SHAKEEL', 'SURAIYA', 'GANDHI NAGAR MALLA TALAI', '', 7, 1, 1, '3076', 'shifashakeel', '42c490ee2df4e1a0b5505e4b609dafa1', '9829891887', '9829891887', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(29, 29, 0, 5, 'SHRISHTHI  JOSHI', '0000-00-00', 'KISHAN JOSHI', 'NEHA JOSHI', 'CHAMPA COLONY DUDHIYA GANESH JI', '', 7, 1, 1, '2711', 'shrishthijoshi', '0ff15db9b9375a6940dbac57a080851f', '9929501111', '9929501111', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(30, 30, 0, 5, 'ANURAKSHI  KARNOT', '0000-00-00', 'LAXMAN SINGH KARNOT', 'MANISHA KARNOT', '232 HARSH NAGAR RAMPURA ROAD', '', 8, 1, 1, '2905', 'anurakshikarnot', '9e54252dad54601dcbdbd4adda52b12c', '9461384635', '9461384635', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(31, 31, 0, 5, 'ARSHIL  RAZA', '0000-00-00', 'NABIL AHMED', 'RESHMA BANO', '80 FEET ROAD NEAR MOSQUE H.N.33 MALLA TALAI', '', 8, 1, 1, '13-03-3291', 'arshilraza', '19f0694fc8e4cb7e2079170f604529fc', '7976659040', '7976659040', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(32, 32, 0, 5, 'BHAVYA  PALIWAL', '0000-00-00', 'SANJAY PALIWAL', 'KANTA PALIWAL', '0/8, NAGAR PARISHAD COLONY, BRAHAMPOLE', '', 8, 1, 1, '2865', 'bhavyapaliwal', 'c1dcdd2c896174f79c0a1e9c25846dcd', '8769009763', '8769009763', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(33, 33, 0, 5, 'CHIRAG  NAGDA', '0000-00-00', 'MITHA LAL NAGDA', 'BHAWNA NAGDA', 'KRISHNA MAHILA COLLEGE NEAR SISARMA UDAIPUR', '', 8, 1, 1, '2951', 'chiragnagda', '8725acf814e8c91d61a1276c41493cbf', '9829290744', '9829290744', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(34, 34, 0, 5, 'DEVRAJ SINGH CHOUHAN', '0000-00-00', 'VIRENDRA SINGH CHOUHAN', 'ANITA CHOUHAN', '222 HARSH NAGAR RAMPURA', '', 8, 1, 1, '2871', 'devrajsinghchouhan', 'ab2c06f767a5df2145047cba32864421', '9602609687', '9602609687', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(35, 35, 0, 5, 'HARSH  SARWAR', '0000-00-00', 'PANKAJ  KUMAR SARWAR', 'JYOTSANA DEVI SARWAR', 'C-4 C BLOCK BHILU RANA COLONY', '', 8, 1, 1, '3197', 'harshsarwar', '5581f840d2a45285755350143a077596', '9660674957', '9660674957', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(36, 36, 0, 5, 'HARSH  SHARMA', '0000-00-00', 'BINIT SHARMA', 'MANJU SHARMA', '22 HARSH NAGAR NEW RAMPURA  UDAIPUR', '', 8, 1, 1, '1771/B', 'harshsharma', 'b4ebbbea6528fe32d5eabc45354b7025', '8947088600', '7891870742', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(37, 37, 0, 5, 'HARSHIT  JOSHI', '0000-00-00', 'RAJESH JOSHI', 'GAYATRI JOSHI', 'A BLOCK 167 SAJJAN NAGAR UDAIPUR', '', 8, 1, 1, '2745', 'harshitjoshi', '92cf0671ab385755b9ff490d3c8b0d7c', '9602946768', '9602946768', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(38, 38, 0, 5, 'MOHAMMED FAISAL ', '0000-00-00', 'ZAKIR  HUSSAIN', 'BILKIS BANO', 'S 56 GANDHI NAGAR MULLATALAI', '', 8, 1, 1, '3629', 'mohammedfaisal', '5a39b8c19f0df3c90a11bfb10666b81e', '9799033428', '8955211076', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(39, 39, 0, 5, 'MOHAMMED SOHAIL  SHEIKH', '0000-00-00', 'MOHAMMED FARUQ', 'TABASSUM', 'AHMED HUSSAIN COLNEY MASTAN BABA KE PICHE', '', 8, 1, 1, '3673', 'mohammedsohailsheikh', 'c6d3944905e49ca7c81bbde22a0e33c1', '', '9660813393', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(40, 40, 0, 5, 'SAFA  DAYER', '0000-00-00', 'MOHD RIAZ DAYER', 'SOFIYA DAYER', '469,STREET NO.2 GARIB NAWAZ COLONY MALLA TALAI', '', 8, 1, 1, '2910', 'safadayer', 'c6de68f91022720483eab14efb046dcc', '9929400324', '9929400324', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(41, 41, 0, 5, 'SALEHA  RIZVI', '0000-00-00', 'RIYAZ AHMED', 'AREEN BANO', 'INSIDE SILAWATWADI NEEM KA CHOWK', '', 8, 1, 1, '3287/13', 'saleharizvi', '88996b21b8e3b0f7d7ed1fff522044b4', '9829977524', '9229977524', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(42, 42, 0, 5, 'ARPAN  SHARMA', '0000-00-00', 'OM PRAKASH SHARMA', 'SAPNA SHARMA', '168, RAO JI KA HATA, UDAIPUR', '', 9, 1, 1, '2672', 'arpansharma', '9337795bee437f14ba0c8e33950eea66', '9929535833', '9929535833', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(43, 43, 0, 5, 'AYUSH  CHETNANI', '0000-00-00', 'SANJAY CHETNANI', 'REKHA CHETNANI', 'H.NO-21 KAILASH COLONY', '', 9, 1, 1, '2436', 'ayushchetnani', 'ad99ef8a06fc4142693a1af89f28fb38', '9799003782', '9799003782', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(44, 44, 0, 5, 'CHITRANSH  NAGDA', '0000-00-00', 'KAILASH NAGDA', 'SANGEETA NAGDA', '81, RATA KHET, BAL SHIKSHA SADAN', '', 9, 1, 1, '2448', 'chitranshnagda', '54ecfdf50983a79f246edbe09ea628f3', '8107282406', '8107282406', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(45, 45, 0, 5, 'DIPESH  BISWAS', '0000-00-00', 'ASIT BISWAS', 'PARWATI BISWAS', 'K-19, HARIDAS JI KI MAGRI MALLA TALAI', '', 9, 1, 1, '2433', 'dipeshbiswas', '574d03421428fd2387cc6b3e4afe617f', '', '9783238971', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(46, 46, 0, 5, 'HARSHVARDHAN  DHANDRA', '0000-00-00', 'VIJAY KUMAR DHANDRA', 'TEENA DHANDRA', '36-GANDHI NAGAR, MALLA TALAI ,BEHIND WISDOM HOME SCHOOL UDAIPUR', '', 9, 1, 1, '3386', 'harshvardhandhandra', 'd41c2973f0b3b7d6ea32eb78d3542dc4', '9982542070', '9982542070', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(47, 47, 0, 5, 'KULDEEP  KOUR', '0000-00-00', 'INDRAJEET SARDAR', 'CHARANJEET KOUR', '2792, B-BLOCK, AMAR NAGAR,MALLA TALAI', '', 9, 1, 1, '3204', 'kuldeepkour', '98da9d51a795671323781dd914c410d9', '9414808144', '9414808144', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(48, 48, 0, 5, 'LOVE KUMAR NAGDA', '0000-00-00', 'DILIP NAGDA', 'SHAKUNTALA NAGDA', '256, NAI ROAD, SITAMATA COLONY, SISARMA TEHSIL GIRVA UDAIPUR', '', 9, 1, 1, '3375', 'lovekumarnagda', '0396f99c0f2ee20dbb9576017610f12f', '9001782293', '8239003670', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(49, 49, 0, 5, 'MOHAMMED NOMAN  ', '0000-00-00', 'NOOR MOHAMMED', 'KOUSAR BANU SHEIKH', '185 B BLOCK O TC SAJJAN NAGAR', '', 9, 1, 1, '3691', 'mohammednoman', '150c4414308af79f895b443afd679f3c', '7689935122', '7568866542', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(50, 50, 0, 5, 'MOHAMMED REHAN  SHEIKH', '0000-00-00', 'MOHAMMED SALIM SHEIKH', 'MOHSINA BANU', 'AMBA LAL KHATIK WALI GALI AMAR NAGAR', '', 9, 1, 1, '3687', 'mohammedrehansheikh', 'bbd1b75ac8766b3f6f94917c6c85b852', '', '9928742240', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(51, 51, 0, 5, 'NANDINI  CHOUHAN', '0000-00-00', 'KISHAN SINGH', 'USHA CHOUHAN', '15-B-HARIDAS JI KI MAGRI', '', 9, 1, 1, '2850', 'nandinichouhan', 'af3de0c96c68338f522db84a26dbd76e', '9649550428', '9649550428', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(52, 52, 0, 5, 'RANVEER  PARGI', '0000-00-00', 'PRAKASH PARGI', 'SUDHA PARGI', 'SISARMA ROAD NEAR DUNGERPUR HOUSE', '', 9, 1, 1, '2418', 'ranveerpargi', 'a94868032671e92cc6950238f41728a7', '9351910500', '9602020396', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(53, 53, 0, 5, 'SANIYA  RATHORE', '0000-00-00', 'CHAIN SINGH RATHORE', 'CHAMPA RATHORE', 'JAI AMBE ELECTRIC SHOP, MALLA TALAI', '', 9, 1, 1, '3502', 'saniyarathore', '4bde6125d6fbff5534198f69ff8c512c', '9950650711', '9950650711', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(54, 54, 0, 5, 'TAKSH RAJ SINGH RANAWAT', '0000-00-00', 'DILIP SINGH RANAWAT', 'SURBHI KUNWAR RANAWAT', 'J-9 HARIDAS JI KI MAGRI', '', 9, 1, 1, '3308', 'takshrajsinghranawat', '9159a919920c28c679e46552b44ad16a', '9672109388', '9672109388', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(55, 55, 0, 5, 'ABDUL ALMAS  KHAN', '0000-00-00', 'ABDUL WAHID KHAN', 'SHAHEEN BANO', 'H. NO.-814 KOMI EKTA NAGAR LANE NO.-2 MALLA TALAI', '', 14, 1, 1, '2053', 'abdulalmaskhan', '95aaf7c839529c0659003e1dc5ef33f8', '9269258680', '9928821005', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(56, 56, 0, 5, 'AMAN  KHAN', '0000-00-00', 'SHAHID KHAN', 'TARANNUM KHAN', 'O.T.C., B-BLOCK SAJJAN NAGAR, 80 FEET ROAD', '', 14, 1, 1, '1771', 'amankhan', '7cc554618bc439c17c5e5e28b54b24d6', '9694786898', '8504953382', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(57, 57, 0, 5, 'ANU  PANDEY', '0000-00-00', 'SUDAMA PANDEY', 'SATYWATI PANDAY', 'B-8, HARIDAS JI KI MAGRI', '', 14, 1, 1, '1251', 'anupandey', 'cd587a39600fd82fd4ecff86237652ba', '9799413603', '9799413603', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(58, 58, 0, 5, 'BHAVESH  AUDICHYA', '0000-00-00', 'TULSI RAM BHATT', 'KUSUM LATA AUDICHYA', 'NEW RAM PURA COLONEY MULLA TALAI', '', 14, 1, 1, '3540', 'bhaveshaudichya', '6f457dbd04a50c1af15981c3719b97b5', '9636085557', '9983817924', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(59, 59, 0, 5, 'BHAVIKA CHOUHAN  ', '0000-00-00', 'DALPAT SINGH CHOUHAN', 'PRAMILA CHOUHAN', 'RATA KHET', '', 14, 1, 1, '2177', 'bhavikachouhan', '317faf541fee1353df9e16ca28b9a616', '8947027261', '7728858598', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(60, 60, 0, 5, 'BILAL  SHEIKH', '0000-00-00', 'SHABBIR SHEIKH', 'SHABNAM SHEIKH', '103, B-BLOCK, AMAR NAGAR', '', 14, 1, 1, '2257', 'bilalsheikh', 'f43dc1c061c51cee2ba5af847d6dd68a', '9929119131', '9929119131', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(61, 61, 0, 5, 'DEEPTI  SINGH', '0000-00-00', 'SHATRUGHAN SINGH', 'ADITI SINGH', 'VILLAGE POST - BHARHE CHOURA, BHATNI, SALEMPUR,', '', 14, 1, 1, '2808', 'deeptisingh', 'e093d0814af2ae4e7ea3caa8c06eedf6', '9887953914', '9983780907', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(62, 62, 0, 5, 'DEV SINGH RAJPUT', '0000-00-00', 'SATYENDRA SINGH', 'PARVATI SINGH', '2037. 80 FEET ROAD SAJJAN NAGAR', '', 14, 1, 1, '2576', 'devsinghrajput', 'bc12d5443ca21de254dfe976833459d7', '9649397402', '9649397402', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(63, 63, 0, 5, 'DIVYANSHU  SINGH', '0000-00-00', 'SHATRUGHAN SINGH', 'ADITI SINGH', 'VILLAGE POST - BHARHE CHOURA, BHATNI, SALEMPUR', '', 14, 1, 1, '2809', 'divyanshusingh', '69c8528d3e031eae1faf5a86b0503dff', '9587052006', '9587052006', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(64, 64, 0, 5, 'FAIZA  KHAN', '0000-00-00', 'MOHAMMED SHAKIL KHAN', 'SHABNAM KHAN', '52, RAZA COLONY, MALLA TALAI', '', 14, 1, 1, '2584', 'faizakhan', 'd95ad675161066f5429081361b6c2bf6', '9414161478', '9414161478', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(65, 65, 0, 5, 'GOURAV  AMETA', '0000-00-00', 'LATE ASHOK AMETA', 'GAYATRI AMETA', 'EKLAVYA COLONY', '', 14, 1, 1, '1245', 'gouravameta', '2e2097b2e80e1aafb1d4bb43edb04225', '9983142800', '9950678894', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(66, 66, 0, 5, 'HARSHIT SINGH  BHATI', '0000-00-00', 'PARMENDRA SINGH BHATI', 'SEEMA BHATI', '8, RANG NIVAS CHOUKI', '', 14, 1, 1, '2268', 'harshitsinghbhati', '0f53aa13285c2ee4279b63eb97519792', '9829722701', '9829722701', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(67, 67, 0, 5, 'HARSHITA  JOSHI', '0000-00-00', 'BHARAT JOSHI', 'REKHA JOSHI', 'C-3, HARIDAS JI KI MAGRI', '', 14, 1, 1, '1770', 'harshitajoshi', 'a8b163e9f6cd47aee2bec4920b00eaab', '9460665413', '9282451818', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(68, 68, 0, 5, 'HONEY  GOSWAMI', '0000-00-00', 'HARISH GOSWAMI', 'RAJANI GOSWAMI', '10, KOL-POL BADA BAZAR', '', 14, 1, 1, '1521', 'honeygoswami', 'f6dd1f12a516604462d9292fe6ad7c3c', '9950777503', '9829228915', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(69, 69, 0, 5, 'HUMA  SHEIKH', '0000-00-00', 'MOHAMMED SAEED SHEIKH', 'SHABANA SHEIKH', '114, RAZA COLONY, MALLA TALAI', '', 14, 1, 1, '1243', 'humasheikh', 'd06e57d0c07123b698ae3028688a1566', '9587689972', '9587689972', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(70, 70, 0, 5, 'IRFAN  ALI', '0000-00-00', 'SAYAAD ALI', 'SHIKILA BANU', 'KOMI KETA NAGAR GALI NO.-2', '', 14, 1, 1, '3240', 'irfanali', '6fc2d46b6162b2073ed5f658eb596965', '9636749429', '9636749429', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(71, 71, 0, 5, 'KAYNAT  KHAN', '0000-00-00', 'HUSSAIN KHAN', 'SHABANA KHAN', 'GARIB NAWAZ COLONY,MALLA TALAI', '', 14, 1, 1, '2071', 'kaynatkhan', 'a5b032c3768dd7a3fd0fda28fc7b948d', '7665567092', '7891454844', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(72, 72, 0, 5, 'LOVE  KHATRI', '0000-00-00', 'DEEPAK KHATRI', 'KAVITA KHATRI', '74, RAO JI KA HATA, CHINTA MANI MARG', '', 14, 1, 1, '1764', 'lovekhatri', '693e061a35d293c4f36a114d4f2ef230', '9414263810', '9468540431', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(73, 73, 0, 5, 'MOHAMMED ADIL  ', '0000-00-00', 'MOHAMMED RASHID', 'SHABNAM BANO', 'SAJJAN NAGAR A- BLOCK EC-6', '', 14, 1, 1, '3384', 'mohammedadil', 'edbfa7fc135e75e1101c90f002697a12', '9784518179', '9784518179', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(74, 74, 0, 5, 'MOHAMMED AMEEN  ', '0000-00-00', 'MOHAMMED ZAKIR SHEIKH', 'SULTANA SHEIKH', '2, A- KOMI EKTA NAGAR, MALLA TALAI', '', 14, 1, 1, '1545', 'mohammedameen', '2f3279782023d88642367a8c4e92f170', '8560874233', '9602197697', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(75, 75, 0, 5, 'MOHAMMED AYAN  ', '0000-00-00', 'AIJAZ AHMED', 'ANISHA BANU', '236, O.T.C. RAZA COLONY MALLA TALAI', '', 14, 1, 1, '2262', 'mohammedayan', 'ba5795b28e58459fe4e8625daa7182ee', '8769742768', '9929499127', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(76, 76, 0, 5, 'MOHAMMED JUNAID AZAM KHAN', '0000-00-00', 'MOHD AKRAM KHAN', 'ASHIYA BEGAM', '17, KALESAT, NEAR MOSQUE, JATWARI', '', 14, 1, 1, '1599', 'mohammedjunaidazamkhan', 'cba8c8be875d99b6aa67f31f017a64bb', '9799253159', '9799253159', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(77, 77, 0, 5, 'NIKITA  JOSHI', '0000-00-00', 'BRIJ MOHAN JOSHI', 'MADHU JOSHI', '105, O.T.C. B- BLOCK, AMAR NAGAR', '', 14, 1, 1, '1835', 'nikitajoshi', '77e91c109523df2695d17d2f2132fd4b', '9460028582', '8003767576', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(78, 78, 0, 5, 'PRATEEK  UPADHYAY', '0000-00-00', 'KAUSHAL KUMAR NAGDA', 'GEETA NAGDA', 'BHUJDA CHAR BHUJA JI KI MANDIR KE PASS', '', 14, 1, 1, '1576', 'prateekupadhyay', '4e96f52c3c7c9aec71c6d6bf10f509a9', '98929193017', '98929193017', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(79, 79, 0, 5, 'SAHIL  KHAN', '0000-00-00', 'SHAKIL KHAN', 'SHAHIN BANU', 'LANE-3, KOMI EKTA NAGAR CENTRAL ACADEMY SCHOOL', '', 14, 1, 1, '1402', 'sahilkhan', '97d514258d8480c231e08489f61c3bc3', '8854801786', '8854801786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(80, 80, 0, 5, 'SEETA  KUNWAR', '0000-00-00', 'AMAR SINGH DEVRA', 'KAMLA KUNWAR', 'C-3, SISARMA, RAJ POLICE QUARTER', '', 14, 1, 1, '3242', 'seetakunwar', '99ff2832c81ddc91cdcc89bee3a83308', '8003363819', '8003363819', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(81, 81, 0, 5, 'SHARLI  JAMES', '0000-00-00', 'JARRELD JAMES', 'LATE EDLINA JAMES', 'H.N-191 HARSH NAGAR SISARMA ROAD', '', 14, 1, 1, '1419', 'sharlijames', '090a704f3bb303e4c1ced76cfb39e87a', '9928773606', '9928773606', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(82, 82, 0, 5, 'SHIVANGI  CHOUHAN', '0000-00-00', 'PRAVEEN CHOUHAN', 'VIJAY LAXMI  CHOUHAN', '232,HARSH NAGAR', '', 14, 1, 1, '1567', 'shivangichouhan', 'c01f15aeb699182ee7ddab4017f41286', '294513120', '7742983043', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(83, 83, 0, 5, 'SHWETA  KARNOT', '0000-00-00', 'LAXMAN SINGH KARNOT', 'MANSHA KUNWAR', '232, HARSH NAGAR MAIN ROAD MALLA TALAI', '', 14, 1, 1, '1216', 'shwetakarnot', '8c74c867c0ab5a311f5c004e42fd7f3e', '2342432651', '2942432651', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(84, 84, 0, 5, 'ANUSHKA  SHAKTAWAT', '0000-00-00', 'VIMAL SINGH SHAKTWAT', 'LAXMI KUNWAR', '31 AMBAWADI UBESHWAR ROAD', '', 4, 1, 1, '3616', 'anushkashaktawat', '1d577de5780bf484251a43b9aaa621f3', '9982910843', '7742455583', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(85, 85, 0, 5, 'BHAVI KUNWAR RATHORE', '0000-00-00', 'RAGHUVEER SINGH RATHORE', 'SANJU KUNWAR RATHORE', '80, AMAR NAGAR NEAR JAGRATI SCHOOL, DUDIYA GANESH JI MALLA TALAI', '', 4, 1, 1, '3454', 'bhavikunwarrathore', '974b929c487d1b3307831084675be7ce', '8824095175', '9928910209', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(86, 86, 0, 5, 'DARAFSHA  BANO', '0000-00-00', 'MOHAMMED  JAMEEL', 'SURRAIYA BANO', '198 OUT SIDE CHAND POLE BHINDER KI HAVELI', '', 4, 1, 1, '3652', 'darafshabano', 'a70b3c6b146dedf0289c0ea051c28455', '7023868068', '9784564073', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(87, 87, 0, 5, 'MAHIN  KHAN', '0000-00-00', 'JAVED KHAN', 'NAZMIN KHAN', 'H. NO.-563, BEHIND MAGRI SCHOOL, MALLA TALAI', '', 4, 1, 1, '3458', 'mahinkhan', '0326dcd59820b9f7047417bdd2a5ed0c', '9887022786', '9887022786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(88, 88, 0, 5, 'MOHAMMED JAID KHAN', '0000-00-00', 'JAVED KHAN', 'CHAMAN ARA', '50 KISHAN POLE NEAR EXICE OFFICE', '', 4, 1, 1, '3630', 'mohammedjaidkhan', '8102f46709be891b49af6232255851e7', '8233621786', '9460325786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(89, 89, 0, 5, 'PRACHI  NAGDA', '0000-00-00', 'DILIP NAGDA', 'SHAKUNTALA NAGDA', '256, NAI ROAD, SEETA MATA COLONY, SISARMA', '', 4, 1, 1, '3459', 'prachinagda', 'b11a3f31454b0e78af931657c144bbc5', '8239003670', '9001782293', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(90, 90, 0, 5, 'SEJAL SINGH CHOUHAN', '0000-00-00', 'LALIT SINGH CHOUHAN', 'SURBHI SISODIYA', '5/99 BAGOUR KA NOHARA, OUTSIDE CHANDPOLE', '', 4, 1, 1, '3455', 'sejalsinghchouhan', '543b238ad3c030d0f89af3c0b5003c26', '9829529568', '7728879407', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(91, 91, 0, 5, 'SHIFA  BANO', '0000-00-00', 'ARIF HUSSAIN', 'YASMIN BANO', '264 OTC A BLOCK SAJJAN NAGAR MULLA TALAI', '', 4, 1, 1, '3479', 'shifabano', '8c836c6f2b85e0e951f52cbc981b8f81', '9829562174', '7023905877', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(92, 92, 0, 5, 'SONIYA  SAHANI', '0000-00-00', 'MONTU SAHANI', 'REENA SAHANI', 'B-6 HARI DAS JI KI MAGARI MIULLA TALAI', '', 4, 1, 1, '3556', 'soniyasahani', '41dc8efdef5aabfb4c3680863534911e', '9602512711', '9602512711', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(93, 93, 0, 5, 'SUDHEER PRATAP SINGH', '0000-00-00', 'CHAIN SINGH RATHORE', 'CHAMPAT RATHORE', 'EKLAVYA COLONY MALLA TALAI', '', 4, 1, 1, '3452', 'sudheerpratapsingh', '4416240495a623ee6e901dbacaff05df', '9950650711', '9529954361', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(94, 94, 0, 5, 'AFZAL  KHAN', '0000-00-00', 'JAVED KHAN', 'SULTANA BANO', 'RAM MANOHAR LOHIYA NAGAR', '', 3, 1, 1, '3606', 'afzalkhan', 'c81c702c06305391648647d59810ba79', '7877599220', '7877599220', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(95, 95, 0, 5, 'ALFIYA  SHEIKH', '0000-00-00', 'FIROJ KHAN', 'TAHIRA BANO', '224 RAZA COLONY MALLATALAI', '', 3, 1, 1, '3615', 'alfiyasheikh', 'efe2a1537993cd1950c0e6b1afd7cba7', '9001787155', '7728980852', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(96, 96, 0, 5, 'DARSH  DAVE', '0000-00-00', 'HIMANSHU DAVE', 'JAYA DAVE', '36 ACHARYA MARG OUT SIDE CHAND POLE', '', 3, 1, 1, '3584', 'darshdave', '51a7ac80cc3235e255973253f95fecc1', '', '9251478587', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(97, 97, 0, 5, 'DEV  DAVE', '0000-00-00', 'HIMANSHU DAVE', 'JAYA DAVE', '36 ACHARYA MARG O/S CHAND POLE', '', 3, 1, 1, '3585', 'devdave', '1c9a8674f60fd2d8ee118d79f63b76a8', '9929282318', '9251478587', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(98, 98, 0, 5, 'GARGI  DAVE', '0000-00-00', 'BHUPENDRA DAVE', 'SURAJ DAVE', '103 CHODHARY GUST HOUSE KI GALI AMBAWADI', '', 4, 1, 1, '3587', 'gargidave', '95c7790116f9ab4ce06f648c51702e65', '9602510642', '7665672882', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(99, 99, 0, 5, 'IBRA  SHEIKH', '0000-00-00', 'MOHAMMED JAVED SHEIKH', 'RAHAT KOUSAR', '114 RAZA COLONEY', '', 3, 1, 1, '3601', 'ibrasheikh', '99adbb9cb87d751869d42f5c0cc84b6d', '9587689972', '9602795157', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(100, 100, 0, 5, 'JAYAN  BHATI', '0000-00-00', 'MANOJ BHATI', 'GANGA BHATI', 'K-13 HARI DAS JI KI MAGARI', '', 3, 1, 1, '3600', 'jayanbhati', '6b73c35f38f32fa7d455bd1aeab43cd4', '9602608909', '9602608909', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(101, 101, 0, 5, 'LAKSHYARAJ PUROHIT  ', '0000-00-00', 'RAJ KUMAR PUROHIT', 'JYOTI PUROHIT', 'NEAR GAS GODOWN SRI NAGAR', '', 3, 1, 1, '3719', 'lakshyarajpurohit', 'd5d9e5afd79c58dc6ae814a29cc36d39', '9460923854', '9460923854', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(102, 102, 0, 5, 'MOHAMMED ARSH KHAN  ', '0000-00-00', 'MOHAMMED RAFIQ', 'SHAHEEN BANO', 'RAM MANOHAR LOHIA NAGAR KACHHI BASTI', '', 3, 1, 1, '3743', 'mohammedarshkhan', 'b07abef3b0237d7e775a98cc5389e341', '9829081205', '9829081205', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(103, 103, 0, 5, 'MOHAMMED FAIZAN  ', '0000-00-00', 'MOHAMMED SALIM', 'HEENA BANO', '528/14 CHHIPA COLONY', '', 3, 1, 1, '3760', 'mohammedfaizan', '315faf4f695b30a90815932d2f981c9d', '9166608968', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(104, 104, 0, 5, '', '0000-00-00', 'MOHSIN KHAN', 'NILOFAR KHANAM', '270 B BLOCK SAJJAN NAGAR', '', 2, 1, 1, '3594', '', 'd41d8cd98f00b204e9800998ecf8427e', '8233409786', '9799156786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(105, 105, 0, 5, 'MOHAMMED SAIFUL  RAZA', '0000-00-00', 'IDRIS KHAN', 'SAIMA KHAN', '577 GARIB NAWAZ COLONY GALI NO. 3 NEAR MAGRI SCHOOL', '', 3, 1, 1, '3762', 'mohammedsaifulraza', 'e0f2e51557a6197f86b6f7c89a4f6279', '9784480428', '9784480428', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(106, 106, 0, 5, 'PALAK  RAI', '0000-00-00', 'DEVENDRA RAI', 'JAYANTI RAI', 'B 19 HARIDAS JI KI MAGRI', '', 3, 1, 1, '3698', 'palakrai', '96557b55248c366e1131c5b4f7fb6d39', '7742260533', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(107, 107, 0, 5, 'RIDA  FATIMA', '0000-00-00', 'KALEEM  AALAM', 'HEENA BANO', '174 CHITTORO KA TIMBA MAHAWAT WADI', '', 3, 1, 1, '3591', 'ridafatima', '5a636ad99e7c31512982cba9bb479b42', '7300291639', '9887950225', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(108, 108, 0, 5, 'SHADAF RAZA  ', '0000-00-00', 'IRSHAD KHAN', 'SHER KHAN', 'KELWA HOUSE BICHHU GHATI HATHIPOLE', '', 3, 1, 1, '3723', 'shadafraza', 'a92084d035fca8707d554d02f8f77893', '9610264703', '9610264703', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(109, 109, 0, 5, 'TAYUSH  PUJARI', '0000-00-00', 'HEMANT PUJARI', 'SANTOSH PUJARI', '48 AMBAWADI CHOUDHARY GUEST  HOUSE RAMPURA', '', 3, 1, 1, '3581', 'tayushpujari', 'c15b2cf63680dd238541f262abf8c231', '9783917151', '9828073467', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(110, 110, 0, 5, 'YAHVI SINGH CHOUHAN', '0000-00-00', 'KISHAN SINGH CHOUHAN', 'USHA CHOUHAN', 'C/O RAMESHWAR LAL PRAJAPAT B-2 HARI DAS JI KI MAGARI', '', 3, 1, 1, '3599', 'yahvisinghchouhan', '3bc042de9a1b0d6f9f58890e39e8a600', '9468703577', '9649550428', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(111, 111, 0, 5, 'YUHANISH  KHAN', '0000-00-00', 'MOHAMMED RASHID KHAN', 'RUBEENA PARVEEN', '156 NAGA NAGARI OUT SIDE CHAND POLE', '', 3, 1, 1, '3602', 'yuhanishkhan', '903fce6c4c15ce9c603368267db3312b', '9694139882', '9636592772', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(112, 112, 0, 5, 'AARTI  CHOUHAN', '0000-00-00', 'BIRENDRA CHOUHAN', 'ANITA CHOUHAN', '222 HARSH NAGAR, NEW RAMPURA', '', 10, 1, 1, '2171', 'aartichouhan', 'fe93259961f60e8fd1df1545eae22c31', '9602609687', '9602609687', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(113, 113, 0, 5, 'ANAND  SINGH', '0000-00-00', 'SATYENDRA SINGH', 'PARWATI SINGH', '229 B AMAN NAGAR MULLATALAI', '', 10, 1, 1, '3551', 'anandsingh', 'df5c15d16ba405b3c7445b01650204bc', '9649397402', '9672029911', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(114, 114, 0, 5, 'ANOSH  JAMES', '0000-00-00', 'RONALD JAMES', 'SHALU JAMES', 'NEAR AMABATA TEMPLE RAO COLONY', '', 10, 1, 1, '2390', 'anoshjames', 'c01e7434bfd9191e0ec93b7b2e3d1620', '9929315665', '9929315665', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(115, 115, 0, 5, 'KRISH  BHATI', '0000-00-00', 'VIJAY BHATI', 'RANI BHATI', 'A-BLOCK 249 SAJJAN NAGAR', '', 10, 1, 1, '2339', 'krishbhati', '73802541b3de87026b8d550104cebd88', '9799533050', '9799533050', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(116, 116, 0, 5, 'MANISHA  RAJPUT', '0000-00-00', 'KHUMAN SINGH RAJPUT', 'GULABI KUNWAR', 'AMBA WADI IN FRONT OF CHOUDHARY GUEST HOUSE, RAMPURA', '', 10, 1, 1, '3511', 'manisharajput', '16725e9e56d11babbc841e6648a0fecf', '9413752409', '8094114594', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(117, 117, 0, 5, 'MANVEER SINGH CHOUHAN', '0000-00-00', 'GOPAL SINGH CHOUHAN', 'PUSHPA KUNWAR', 'LAXMAN SINGH KARNOT, HOUSE NO.232 HARSH NAGAR SISARMA ROAD UDAIPUR.', '', 10, 1, 1, '3374', 'manveersinghchouhan', '8fba7442cdae9223ff6c162d7eba1f49', '9461384635', '9461384635', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(118, 118, 0, 5, 'MUSKAN  TIWARI', '0000-00-00', 'MANOJ TIWARI', 'KIRAN TIWARI', 'H.NO-61, DUDHIYA GANESH JI', '', 10, 1, 1, '2333', 'muskantiwari', 'cd79ea39eceb849255f9fc974bde6ee0', '9929902116', '9929902116', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(119, 119, 0, 5, 'PAYAL  TANWAR', '0000-00-00', 'MUKESH TANWAR', 'KIRAN TANWAR', 'MALLA TALAI', '', 10, 1, 1, '2396', 'payaltanwar', '4dcebaefb30af576f45963653055eb29', '9694083907', '9694083907', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(120, 120, 0, 5, 'SANDHYA  SHARMA', '0000-00-00', 'RAMESH SHARMA', 'SAVITA SHARMA', 'NEAR ROYAL GARDEN RAMPURA ROAD', '', 10, 1, 1, '2555', 'sandhyasharma', '92c7e4c08572d013c367592bb9543ce7', '9001356919', '9001356919', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(121, 121, 0, 5, 'SHILPI  PATRA', '0000-00-00', 'PRAVAS PATRA', 'KAKULI PATRA', '45/142, KOL POLE BARA BAZAR', '', 10, 1, 1, '2766', 'shilpipatra', 'c62f81250e628e23518ad870d1a90762', '9928462526', '9928462526', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(122, 122, 0, 5, 'TABREJ  ALAM', '0000-00-00', 'AMANULLAH ANSARI', 'KITABUNISSA ANSARI', 'EKLAVYA COLONEY NEAR GOV. SCHOOL', '', 10, 1, 1, '3518', 'tabrejalam', '210ff844b0422fa9f47038f686ac9bff', '', '9602596279', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(123, 123, 0, 5, 'YAGYARAJ SINGH KACHCHAWA', '0000-00-00', 'GIRIRAJ SINGH', 'HEMLATA', 'H.NO-6, NAGAR PARISHAD COLONY BHRAMPOLE', '', 10, 1, 1, '2347', 'yagyarajsinghkachchawa', '93b54ea6160894091e9fee8034316c4b', '9783145262', '9783145262', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(124, 124, 0, 5, 'AARCHI  SHARMA', '0000-00-00', 'RAJESH SHARMA', 'DURGA SHARMA', '98, HAMIR GARH HOUSE BHATIYANI CHOHTTA', '', 11, 1, 1, '2787', 'aarchisharma', 'aeeeaf98cfd5601a10bdffa20996f9c5', '9460253494', '9460253494', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(125, 125, 0, 5, 'ANUSHK  NAGDA', '0000-00-00', 'DULHESHANKER NAGDA', 'HEMLATA NAGDA', '24-VILLAGAE SISARMA', '', 11, 1, 1, '2367', 'anushknagda', 'c1b34b2b005afc04df14028b7ee761d2', '9352320636', '9783055507', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(126, 126, 0, 5, 'DEEPAK  PALIWAL', '0000-00-00', 'SANJAY PALIWAL', 'KANTA PALIWAL', '21, NAGAR PRISHAD COLONY', '', 11, 1, 1, '1636', 'deepakpaliwal', 'da01e534bcafcd8502b084acfc3446bd', '8769007963', '8769007963', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(127, 127, 0, 5, 'DISHANT  BHATT', '0000-00-00', 'HARI SHANKAR BHATT', 'HEMLATA BHATT', '248 A-BLOCK SAJJAN NAGAR', '', 11, 1, 1, '2165', 'dishantbhatt', '1588fd8f1303f80b18c3b42030845951', '9829091241', '9829091241', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(128, 128, 0, 5, 'DIVYANSHIKA  RATHORE', '0000-00-00', 'KAMAL SINGH RATHORE', 'CHANDA RATHORE', 'BAGOR KA NOHRA', '', 11, 1, 1, '1698', 'divyanshikarathore', 'aee264563fad5ce6e2a615223fc181ee', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(129, 129, 0, 5, 'FAJILA RIZVI  ', '0000-00-00', 'FARUKH MOHAMMED', 'SHABANA ANJUM', 'OPP MASJID 80 FIT ROAD', '', 11, 1, 1, '3781', 'fajilarizvi', 'f708fb0ceb5e5d5fbccd365576ddd107', '9950129827', '9829086563', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(130, 130, 0, 5, 'KRITIKA  SHARMA', '0000-00-00', 'SATYANARAYAN SHARMA', 'KAVITA SHARMA', '67, SUTHARON KI GALI AASHAPAL KI GALI', '', 11, 1, 1, '1989', 'kritikasharma', '9d829c5ff026d92be69a0653e7a26109', '9982468551', '9982468551', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(131, 131, 0, 5, 'SANA  KHAN', '0000-00-00', 'SHAEED KHAN', 'REHANA KHAN', 'SAJJAN NAGAR 782', '', 11, 1, 1, '2789', 'sanakhan', '78e3a44b3e83b952d12b6c5403d123ac', '9252137349', '9252137349', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(132, 132, 0, 5, 'SNEHA  RATHORE', '0000-00-00', 'PRAMOD SINGH RATHORE', 'SWATI RATHORE', '12, JAGNNATH MARG, INSIDE CHANDPOLE', '', 11, 1, 1, '2152', 'sneharathore', '5d35b0bf10dc5fcc558719e301d965e0', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(133, 133, 0, 5, 'AAKIB KHAN PATHAN', '0000-00-00', 'FIROZ KHAN PATHAN', 'FARJANA KHAN PATHAN', '110, AMBAVGHAR KACHCHI BASTI UDAIPUR', '', 12, 1, 1, '1704', 'aakibkhanpathan', 'f3b066942ff299ecf49d82776b43c7e6', '9828193412', '7568761140', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(134, 134, 0, 5, 'ALMAS  SHEIKH', '0000-00-00', 'MOHD ZAKIR SHEIKH', 'SULTANA SHEIKH', '201, KOMI EKTA NAGAR,MALLA TALAI.', '', 12, 1, 1, '2251', 'almassheikh', 'dd9ac0d63ebc7c870664ff36a6f36ce8', '9602197697', '9602197697', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(135, 135, 0, 5, 'DIGVIJAY SINGH GOUD', '0000-00-00', 'SAJJAN SINGH GOUD', 'HEMA', 'VILLAGE NAI', '', 12, 1, 1, '2273', 'digvijaysinghgoud', '30881915e200a30a2f72e4497e078ef2', '9928686140', '9928686140', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(136, 136, 0, 5, 'DIGVIJAY SINGH KARNOT', '0000-00-00', 'JASWANT SINGH KARNOT', 'NIRU KUNWAR', '232, HARSH NAGAR SISARMA ROAD', '', 12, 1, 1, '1719', 'digvijaysinghkarnot', '966a09a5d0eb1ef445969779e7c0dd79', '9928107658', '9928107658', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(137, 137, 0, 5, 'HARSHIT  AMETA', '0000-00-00', 'CHITRANJAN AMETA', 'YASHODA AMETA', '361, EKLAVYA COLONY SAJJAN NAGAR MALLA TALAI', '', 12, 1, 1, '1657', 'harshitameta', '3fa7471cd3f00749e8497b10105855bc', '9828290500', '9929900691', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(138, 138, 0, 5, 'JAYESH  JOSHI', '0000-00-00', 'BHARAT JOSHI', 'REKHA JOSHI', 'C-3 HARIDAS JI KI MAGRI', '', 12, 1, 1, '1650', 'jayeshjoshi', '90d27ebae7d37c663d17b2d9cf4f9942', '9828451818', '8890486958', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(139, 139, 0, 5, 'KAJAL SOLANKI  ', '0000-00-00', 'MOHAN LAL SOLANKI', 'SANGEETA SOLANKI', 'LAXMI KIRANA STORE NEAR RAMPURA CHOURAHA', '', 12, 1, 1, '3776', 'kajalsolanki', '46927e4586460fcda74e5213fc871262', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(140, 140, 0, 5, 'KUKSHI  NAGDA', '0000-00-00', 'DINESH NAGDA', 'VANDANA NAGDA', 'GANDHI NAGAR O.T.C. B- BLOCK MALLA TALAI', '', 12, 1, 1, '1632', 'kukshinagda', 'dc9cdec52f28c56cf7c6de3555753ba3', '9214002967', '9214002967', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(141, 141, 0, 5, 'KUNAL  JOSHI', '0000-00-00', 'DHARMENDRA JOSHI', 'POOJA JOSHI', 'AMAR NAGAR B BLOCK DUDHIYA GANESH JI MALLA TALAI', '', 12, 1, 1, '3367', 'kunaljoshi', '828d7510d7f373ddb1306133407ab2ed', '9879042614', '9950610510', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(142, 142, 0, 5, 'MEHNAZ  KHAN', '0000-00-00', 'MUMTAZ KHAN', 'SHAKIRA KHAN', 'L-1 GANDHI NAGAR MULLA TALAI', '', 12, 1, 1, '3668', 'mehnazkhan', '0fc12359796d25bc75a3fd5003ad684a', '9785471728', '9928472640', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(143, 143, 0, 5, 'REENA  NAGDA', '0000-00-00', 'KAMAL NAGDA', 'LEELAVATI NAGDA', '3636 HARIHAR COLONY HARSH NAGAR SISARMA ROAD', '', 12, 1, 1, '3015', 'reenanagda', '0d90665eced1393a00018f45fb2de7af', '9269904721', '9829511003', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(144, 144, 0, 5, 'TAHIR KHAN  ', '0000-00-00', 'YASIN KHAN', 'SHABANAM KHAN', '58 MAHAWAT WADI BADE PUROHIT JI KA KHURRA GHANTAGHAR', '', 12, 1, 1, '3780', 'tahirkhan', 'b8ff243fb666eb2bab49527cb8de4af4', '9414170135', '9414170135', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(145, 145, 0, 5, 'TARA  RAJPUT', '0000-00-00', 'KHUMAN SINGH RAJPUT', 'GULABI KUNWAR', 'AMBA WADI, OPP CHOUDHARY PAYING GUEST HOUSE, RAMPURA', '', 12, 1, 1, '3510', 'tararajput', 'a08706ee5b7840e40f2927f145460621', '9413752409', '8094114594', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(146, 146, 0, 5, 'AASHISH  CHOUHAN', '0000-00-00', 'RANVEER CHOUHAN', 'RADHA CHOUHAN', 'YADAV COLONY, AMBAMATA', '', 13, 1, 1, '2043', 'aashishchouhan', '9a2adf229e7e69e9f7c6af18b71d46c9', '9352403988', '9352403988', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(147, 147, 0, 5, 'AKSHAT  SHARMA', '0000-00-00', 'SUNIL SHARMA', 'MADUKATA SHARMA', '26, CHOTI BHARMPURI GULAB BAG ROAD.', '', 13, 1, 1, '1749/A', 'akshatsharma', '9164e48c0ab80cba2e6ea20110b34faf', '9660547782', '9660547782', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(148, 148, 0, 5, 'ALISHA  KHAN', '0000-00-00', 'HASIBUDDIN KHAN', 'SHAKIRA KHAN', '13 OUT SIDE HATIPOLE', '', 13, 1, 1, '1603', 'alishakhan', '195186daeb3b5bf2675f3dbc4010ffe9', '9829187556', '9829187556', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(149, 149, 0, 5, 'AMAN  ANGEL', '0000-00-00', 'BABAR MIRZA', 'SUBHASHINI MATTHEW', '23, AMBAWADI RAMPURA', '', 13, 1, 1, '3507', 'amanangel', '352fc1dcaa98289fa23ecd28436f415f', '9414396897', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(150, 150, 0, 5, 'HARSH BHARTI  GOSWAMI', '0000-00-00', 'GAJENDRA GOSWAMI', 'ASHA GOSWAMI', '20,A,RATA KHET 80 FEET ROAD', '', 13, 1, 1, '1518', 'harshbhartigoswami', '4163c67c1eb4082f15f7b4378e09bb7d', '9829823819', '9829823819', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(151, 151, 0, 5, 'KEJAR  KHAN', '0000-00-00', 'MISAL KHAN', 'ALAM ARA', '308 FARUKH A AZAM COLONY', '', 13, 1, 1, '1582', 'kejarkhan', '408b750efdb0360536f0746a220452ff', '9509509592', '8952949268', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(152, 152, 0, 5, 'LAKSHIT  SANADHAYA', '0000-00-00', 'MUKESH SANADHAYA', 'TARUNA SANADHAYA', '38, CHOTI BHRAMPURI', '', 13, 1, 1, '1748/A', 'lakshitsanadhaya', 'c20290dfdab6addaef125750038b80c7', '9351942772', '9351942772', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(153, 153, 0, 5, 'MOHAMMED JISHAN  SHEIKH', '0000-00-00', 'LATE SHEIKH DIN MOHAMMED', 'RANU KHAN', '778 KOMI EKTA NAGAR', '', 13, 1, 1, '1618', 'mohammedjishansheikh', 'faa42afb32247b904e7587ef2bd2da90', '9829070042', '9829070042', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(154, 154, 0, 5, 'SHIFA  SHAFAT', '0000-00-00', 'SHAFAT MOHAMMED SHEIKH', 'SHADAB SHEIKH', '11, RATA KHET, SAJJAN NAGAR B-BLOCK', '', 13, 1, 1, '3499', 'shifashafat', '9ba39e1c1dc69c9db5e2a3023f65ec9c', '9413048228', '7821081446', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(155, 155, 0, 5, 'VAIBHAV  CHOUDHARY', '0000-00-00', 'BHUPENDRA CHOUDHARY', 'RANU CHOUDHARY', '18 MALTAB STREET NEAR SHRINATH', '', 13, 1, 1, '3233', 'vaibhavchoudhary', '139f365806e91f80371d5720b346e9b8', '9928021033', '9928021033', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(156, 156, 0, 5, 'VISHAKHA  PALIWAL', '0000-00-00', 'MADAN PALIWAL', 'MAMTA PALIWAL', '21, NEAR PARISHAD  COLONY', '', 13, 1, 1, '1756/B', 'vishakhapaliwal', '24f958e1586050f6b3e62195534ef99e', '9352516673', '9352516673', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(157, 157, 0, 5, 'ALHAZ  ', '0000-00-00', 'MOHAMMED SHOAIB', 'RUBY SHOAIB', '528/6 OTC CHIPPA COLONEY', '', 5, 2, 1, '3665', 'alhaz', 'a23de70cdfb7c814eddd97fbfcfaf838', '', '9667267300', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(158, 158, 0, 5, 'ALISHA  KHAN', '0000-00-00', 'SHAHEED HUSSAIN', 'SHAHEEN KHAN', '697, GARIB NAWAZ COLONEY MALLA TALAI', '', 5, 2, 1, '3429', 'alishakhan', '195186daeb3b5bf2675f3dbc4010ffe9', '7568847266', '7568847255', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(159, 159, 0, 5, 'ANKIT KUMAR KANOJIA', '0000-00-00', 'AMARJEET KANOJIA', 'HEMA', '487, EKLAVYA COLONY NEAR MAHA DEV TEMPLE', '', 5, 2, 1, '3339', 'ankitkumarkanojia', 'c9bc63ddbed60bb41c4a1f9aff99bde7', '9214520996', '9214520996', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(160, 160, 0, 5, 'AYAAN  KHAN', '0000-00-00', 'IMRAN KHAN', 'SHAIN BANO', '1081,GANDHI NAGAR MASTAN BABA ROAD MALLA TALAI', '', 5, 2, 1, '3425', 'ayaankhan', 'cb92871a63cbc3a42b7fa135ca48338c', '9784444787', '9784444787', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(161, 161, 0, 5, 'MAHIN NAAZ SHEIKH', '0000-00-00', 'MEHTAAB HUSSAIN SHEIKH', 'NAUSHEEN BANO', '9 B BLOCK 80 FEET ROAD MULLA TALAI', '', 5, 2, 1, '3336', 'mahinnaazsheikh', 'a0cbee97fd7909bcd871b849ed3d76ee', '9784006007', '9784006007', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(162, 162, 0, 5, 'MOHAMMED ALI  KHAN', '0000-00-00', 'MOHAMMED IRFAN KHAN', 'SAHIMA KHAN', 'GALI NO 2 FARUQ E AZAM COLONEY', '', 5, 2, 1, '3672', 'mohammedalikhan', '17f41539a4cff25cb358ec0555b5899b', '7689809210', '7732873754', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(163, 163, 0, 5, 'SADAF KHAN  ', '0000-00-00', 'SARWAR KHAN', 'ZEENAT ARA', '226 EKLAVYA COLONY NEAR LAKE', '', 5, 2, 1, '3778', 'sadafkhan', 'd7bac99aefd57615f789b6c0e19e85f4', '9414343482', '9785060770', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(164, 164, 0, 5, 'DHANI KUNWAR RATHORE', '0000-00-00', 'RAGHUVEER SINGH RATHORE', 'SANJU KANWAR', 'H.NO.80 AMAR NAGAR, NEAR JAGRITI SCHOOL', '', 6, 2, 1, '3146', 'dhanikunwarrathore', '76d9047e07343618aa56b551a5f78bc7', '9928910209', '9928910209', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(165, 165, 0, 5, 'GULAM E  HUSSAIN', '0000-00-00', 'ASHFAQ KHAN', 'SIDDHIKA RANI', '', '', 6, 2, 1, '3300', 'gulamehussain', '48e27081b97afcb4fcbf73d79be78145', '9462022786', '9462022786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(166, 166, 0, 5, 'MAHI  SHARMA', '0000-00-00', 'ANIL SHARMA', 'ANJU SHARMA', 'SHREE GURU DEV NETRALAY OPP DUDHIYA GANESH JI SAJJAN GARH ROAD', '', 6, 2, 1, '3639', 'mahisharma', 'a7893e99854d3c51e659aec11f3c87cb', '9166617925', '9660901703', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(167, 167, 0, 5, 'MANSI KUMARI SAHANI', '0000-00-00', 'PRAHLAD SAHANI', 'REETA', '9, HARIDAS JI KI MAGRI, MALLA TALAI', '', 6, 2, 1, '3360', 'mansikumarisahani', '90c1d0a0291e6507b55ea8f4a88c38b2', '9602595088', '9602595088', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(168, 168, 0, 5, 'UZMA  BANO', '0000-00-00', 'SHEHZAD HUSSAIN', 'REHANA BANU', 'H.NO-409 GARIB NAWAZ COLONY,MALLA TALAI', '', 6, 2, 1, '3086', 'uzmabano', '8da25dca7150c2c176b6ec52bce675e3', '9602609445', '9602609445', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(169, 169, 0, 5, 'VEER  SHARMA', '0000-00-00', 'ROMIT SHARMA', 'SUMAN SHARMA', 'H.NO.2792, AMAR NAGAR SAJJAN GARGH ROAD', '', 6, 2, 1, '3393', 'veersharma', 'f84ee466cfea9d9322e02f77c555379e', '9784780557', '9414808144', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(170, 170, 0, 5, 'ZEESHAN  KHAN', '0000-00-00', 'ZAVED KHAN', 'NAZNIN KHAN', '107, RATA KHET RIM JIM VATIKA', '', 6, 2, 1, '3140', 'zeeshankhan', '97eb2134bb1b1596c530058bf53403e3', '9001777491', '9001777491', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(171, 171, 0, 5, 'AASIMA  BANO', '0000-00-00', 'SAJID MOHAMMED', 'AAMIN BANO', '891 NEAR MASTAN BABA', '', 7, 2, 1, '3774', 'aasimabano', '8a2564e08367c75159d292416d268173', '', '9521211865', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(172, 172, 0, 5, 'ARSHI  KHAN', '0000-00-00', 'KHALIL KHAN', 'FARZANA', '501 KELWA HOUSE BICHHU GHATI', '', 7, 2, 1, '3753', 'arshikhan', '8ac1884e488c9adeb9ce315796dab063', '', '9950582565', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(173, 173, 0, 5, 'BHAKTI  SARWAR', '0000-00-00', 'PANKAJ SARWAR', 'JYOTSANA SARWAR', 'C-4,C-BLOCK BHILURANA COLONY POLICE QUARTER', '', 7, 2, 1, '3175', 'bhaktisarwar', '7d816710bf4f5764437888f85028331f', '9660674957', '9660674957', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(174, 174, 0, 5, 'CHESHTA  SHARMA', '0000-00-00', 'HARISH SHARMA', 'KANCHAN SHARMA', '31,AZAD NAGAR 80 FEET ROAD', '', 7, 2, 1, '3073', 'cheshtasharma', '51ce230239eae403942142ff7db61db1', '8890433634', '8890433634', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(175, 175, 0, 5, 'KUNAL  AMETA', '0000-00-00', 'MANOJ AMETA', 'LALITA AMETA', '38-B, AZAD NAGAR GAJ SINGH JI KI WADI', '', 7, 2, 1, '2909', 'kunalameta', 'db8f78d62283d7e12465630f4022bc22', '9829485955', '9829485955', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(176, 176, 0, 5, 'MAHI SINGH  RANAWAT', '0000-00-00', 'DILIP SINGH RANAWAT', 'SURBHI RANAWAT', 'HARIDAS JI KI MAGRI MALLA TALAI UDAIPUR', '', 7, 2, 1, '3161', 'mahisinghranawat', 'df5ab74a55a4a08148ad745733e3ce81', '9672109388', '9672109388', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(177, 177, 0, 5, 'MOHAMMED ALFEZ  KHAN', '0000-00-00', 'MOHAMMED ZAFAR KHAN', 'AFROZ KHAN', '54,JAT WADI', '', 7, 2, 1, '3005', 'mohammedalfezkhan', '1d47c9f18c8d51c37200ed18286a7463', '9950738177', '9982253421', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(178, 178, 0, 5, 'MOHAMMED HASNAIN  SHEIKH', '0000-00-00', 'MOHD PARVEZ', 'SHEHZAD BANU', '80 FEET ROAD SAJJANNAGAR', '', 7, 2, 1, '2955', 'mohammedhasnainsheikh', 'd68f6c791399c5bf875fe88752c7680e', '9983488460', '9983488460', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(179, 179, 0, 5, 'MOHAMMED TANZIL  SHEIKH', '0000-00-00', 'MOHAMMED ZAKIR SHEIKH', 'SULTANA SHEIKH', '2,A KOMI EKTA NAGAR MALLA TALAI', '', 7, 2, 1, '3183', 'mohammedtanzilsheikh', 'f28a162a0a1fd137cf70824c8cd4e4cb', '0', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(180, 180, 0, 5, 'RUDRAKSH  PUJARI', '0000-00-00', 'HEMANT PUJARI', 'SANTOSH PUJARI', '48,AMBA WADI CHOUDHARY GUEST HOUSE', '', 7, 2, 1, '3177', 'rudrakshpujari', 'f55210809069bd28dd2a584a1284a6e7', '0', '9828073467', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(181, 181, 0, 5, 'SAKSHI  KARNOT', '0000-00-00', 'JASWANT SINGH KARNOT', 'NEERU KUNWAR', '232, HARSH NAGAR RAMPURA ROAD', '', 7, 2, 1, '2962', 'sakshikarnot', 'b89c6d1843ddfcc22f3761f9a02c2a63', '9928107658', '9928107658', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(182, 182, 0, 5, 'SHAIVAL  PURBIA', '0000-00-00', 'LOKESH PURBIA', 'NEELAM PURBIA', '13,OTC B-BLOCK PURBIA COLONY', '', 7, 2, 1, '2971', 'shaivalpurbia', '6d32addf00ef6596158c2f0b8c714c8a', '0', '0', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(183, 183, 0, 5, 'VIHAN  SHARMA', '0000-00-00', 'VIKAS SHARMA', 'KIRAN SHARMA', 'BEHIND PIONEER ACADEMY SR. SEC. SCHOOL/ GAJSINGH  JI KI BARI  SAJJAN NAGAR ROAD', '', 7, 2, 1, '3433', 'vihansharma', '51e70eb4217617761433b524643b4872', '9214846105', '9610951300', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(184, 184, 0, 5, 'KARANVEER  SINGH', '0000-00-00', 'BHARAT SINGH', 'USHA SINGH', '34,SOLANKIYO KI GHATI NEAR MAHILA MANDAL', '', 8, 2, 1, '2715', 'karanveersingh', 'aa961597746332f4040ace6a7bed2b47', '9252450295', '9024477120', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(185, 185, 0, 5, 'KHUSHWANT  PANWAR', '0000-00-00', 'MANISH PANWAR', 'REENA PANWAR', '42 B HARIDAS JI KI MAGRI', '', 8, 2, 1, '3195', 'khushwantpanwar', '6860604eefc6b036b62005b26cdd85bb', '9571216909', '9571216909', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(186, 186, 0, 5, 'MAHESHWAR SINGH RATHORE', '0000-00-00', 'SURENDRA SINGH RATHORE', 'RAJ KUWAR RATHORE', 'H.NO-16 SAKET CHAKRI AMBA COLONY, RAMPURA CHOUHRAYA', '', 8, 2, 1, '2975', 'maheshwarsinghrathore', '05ef4dacd91155c1398364c27f7f44dc', '9214820800', '9214820800', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(187, 187, 0, 5, 'MAHI  MENARIA', '0000-00-00', 'DHANESHWAR MENARIA', 'LALITA MENARIA', '127,NAG MARG NAGA NAGRI CHANDPOLE', '', 8, 2, 1, '3002', 'mahimenaria', 'fd1abfcb2a1a660305f8e7f2cccdd315', '9829055291', '9799477358', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(188, 188, 0, 5, 'MANASVI  SHARMA', '0000-00-00', 'HARISH SHARMA', 'KANCHAN SHARMA', '31, AZAD NAGAR, 80 FEET ROAD', '', 8, 2, 1, '2721', 'manasvisharma', 'cc0b8d0a8247bb544ad5e256023a44fa', '7737789086', '7737789086', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(189, 189, 0, 5, 'MISBA UL HAQ', '0000-00-00', 'SAJID KHAN', 'SHAHNAZ BANU', 'L-93 SAJJAN NAGAR A BLOCK', '', 8, 2, 1, '3626', 'misbaulhaq', 'c7b16e57900e79f90c2415ddb168b468', '9783004449', '9928684499', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(190, 190, 0, 5, 'MOHIT  JOSHI', '0000-00-00', 'NIRAJ JOSHI', 'RANI JOSHI', 'H. NO. 27   AZAD NAGAR 80 FEET ROAD', '', 8, 2, 1, '3649', 'mohitjoshi', 'ecdf167d0d7b336d086c61a9048d79c7', '', '9001495050', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(191, 191, 0, 5, 'NEHA  NAGDA', '0000-00-00', 'KAMAL NAGDA', 'LEELAVATI NAGDA', 'VILLAGE   SISARMA', '', 8, 2, 1, '2943', 'nehanagda', '6b2892df096ee3923b97013fcd14d1ff', '9829511003', '9829511003', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(192, 192, 0, 5, 'NIDHI  SINGH', '0000-00-00', 'SATYENDRA SINGH', 'PARWATI SINGH', '229 B AMAN NAGAR MULLA TALAI', '', 8, 2, 1, '3550', 'nidhisingh', 'af63000facc47791cfb91dcb2c544c91', '9649397402', '9672029911', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(193, 193, 0, 5, 'SAMARTHYA  SISODIYA', '0000-00-00', 'DINDAYAL SISODIYA', 'JAYA SISODIYA', '373, OTC B-BLOCK, AMAR NAGAR SAJJAN GARH ROAD OPP, JAGRITI SCHOOL', '', 8, 2, 1, '3377', 'samarthyasisodiya', '4e3ef420bd556abfb686a6f20768218a', '9602795142', '8107457376', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(194, 194, 0, 5, 'SHIROMANI SINGH BHATI', '0000-00-00', 'CHANDRAVEER SINGH BHATI', 'NEETU BHATI', 'BAGOR KA NOHRA, HANUMAN GHAT OUT SIDE CHANDPOLE', '', 8, 2, 1, '3385', 'shiromanisinghbhati', '7f87446d0fe4c52c3662f12d840387a2', '9166353436', '9166353436', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(195, 195, 0, 5, 'VAIBHAV  JOSHI', '0000-00-00', 'SHANKAR LAL JOSHI', 'SANGEETA JOSHI', 'SAJJAN NAGAR KACCHI BASTI', '', 8, 2, 1, '2877', 'vaibhavjoshi', 'a644107359b12d04451fa878ee2a2b26', '9928004808', '9928004808', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(196, 196, 0, 5, 'ZENAB AKHTAR  ', '0000-00-00', 'MOHAMMED SHAKEEL', 'RUKHSANA BANU', '100 MASTANPIYA COLONY', '', 8, 2, 1, '3761', 'zenabakhtar', 'c73e1b137d0d564f016ec2e0bb689199', '9929902124', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(197, 197, 0, 5, 'ALISHA  KHANAM', '0000-00-00', 'JAVED KHAN', 'NAZMEEN KHAN', '80, FEET ROAD, RATA KHET', '', 9, 2, 1, '3209', 'alishakhanam', '299e5f3382d64587f80047795786a682', '9001777491', '9001777491', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(198, 198, 0, 5, 'ARIBA  HUSSAIN', '0000-00-00', 'WASIM HUSSAIN', 'SHAHEEN', '405, NOORI MANZIL TARUKH-E-AZAM COLONY', '', 9, 2, 1, '2658', 'aribahussain', '9cd5d52470ef2998781340a1c52f52d7', '9982691200', '9982691200', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(199, 199, 0, 5, 'ARMAAN  KHAN', '0000-00-00', 'IMRAN KHAN', 'SHAHEEN BANO', '1081, GANDHI NAGAR KACCHIBASTI SAJJAN NAGAR A-BLOCK,UDAIPUR.', '', 9, 2, 1, '3365', 'armaankhan', '0c15e7589f33614e435351b6751f4b79', '9784444787', '9784444787', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(200, 200, 0, 5, 'FARHAAN  KHAN', '0000-00-00', 'SALEEM KHAN', 'RANI KHAN', '146, MALLA TALAI RAZA COLONY', '', 9, 2, 1, '2444', 'farhaankhan', '4fa8d2ed4f79e05c1de8ba0c6951d15d', '9783858521', '9783858521', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(201, 201, 0, 5, 'JAYDEEP  PALIWAL', '0000-00-00', 'ARVIND PALIWAL', 'YOGITA PALIWAL', 'B-116, ASHA DHAM ASHRAM GALI,', '', 9, 2, 1, '3212', 'jaydeeppaliwal', 'd3f33139a062caf38323cb36e75c727d', '9214980481', '9950475482', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(202, 202, 0, 5, 'KHUSHI SHEIKH  ', '0000-00-00', 'FIROJ KHAN', 'TAHIRA SHEIKH', '224 RAZA COLONY', '', 9, 2, 1, '3766', 'khushisheikh', '4e761eb343f3a52b033e7777c008e061', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(203, 203, 0, 5, 'LAKSHYA  NYATI', '0000-00-00', 'VIKAS NYATI', 'SUNITA NYATI', '19 - F HARIDAS JI KI MAGRI', '', 9, 2, 1, '3548', 'lakshyanyati', 'be4939a2091f2aeca5789b63853d9fdd', '8824609080', '9785666660', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(204, 204, 0, 5, 'MOHAMMED NAKKI  ', '0000-00-00', 'MOHAMMED IDRIS', 'NILOFAR', '245, MALLA TALAI MANSURI PARK', '', 9, 2, 1, '2750', 'mohammednakki', '67a932c4e06de57b0f08ac4bbd1221fa', '9001005807', '9829789256', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(205, 205, 0, 5, 'MUBASH SHERA  RAZA', '0000-00-00', 'SHAHID RAZA', 'TANVEER RAZA', '25, CHURI GHARON KA MOHALLA MUKHARJEE CHOCK', '', 9, 2, 1, '2748', 'mubashsheraraza', '9d9c75d5cb7805f6ff4ff157fe9ae5ca', '29424810169', '9782148697', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(206, 206, 0, 5, 'NETRA  GODAKE', '0000-00-00', 'JEEVAN GODAKE', 'PRATIBHA GODAKE', '15, WELA WATO KI PALA, CLOCK TOWAR', '', 9, 2, 1, '3205', 'netragodake', 'c405a77c375281f2fabac5bcfdecb315', '9828641150', '9828641150', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(207, 207, 0, 5, 'NIVISHA  PALIWAL', '0000-00-00', 'LAXMI NARAYAN PALIWAL', 'PINKI PALIWAL', '5-45 GANDHI NAGAR', '', 9, 2, 1, '2663', 'nivishapaliwal', '99a20512ce38beb5e7478afa1a2f1e08', '8107346545', '8107346846', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(208, 208, 0, 5, 'PRAKHAR  NAGDA', '0000-00-00', 'RAJ KUMAR NAGDA', 'GAYATRI NAGDA', 'SISARMA', '', 9, 2, 1, '2675', 'prakharnagda', '31584a8fa637c42b7e73c1f31eae5ec6', '9829540532', '9829540532', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(209, 209, 0, 5, 'PRINCE  SAHANI', '0000-00-00', 'UMA SHANKAR SAHANI', 'VIBHA SAHANI', 'K-10 HARI DAS JI KI MAGRI', '', 9, 2, 1, '2760', 'princesahani', '15423ccd8be29f261b5ae83f43ce4997', '9928173946', '9928173946', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(210, 210, 0, 5, 'REHAN  KHAN', '0000-00-00', 'RAIS KHAN', 'SHABANA KHAN', '146, RAZA COLONY, MALLA TALAI', '', 9, 2, 1, '2469', 'rehankhan', '02a507876289d53ab4be719d4079480e', '8233765377', '9783902316', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(211, 211, 0, 5, 'SHAHADAT  HUSSAIN', '0000-00-00', 'SHARAFAT HUSSAIN', 'SHABINA HUSSAIN', '7/1843, NEAR SANJAY GARDEN ROAD, AHMED HUSSAIN COLONY', '', 9, 2, 1, '2667', 'shahadathussain', '5aa7413cbc3f129b1d8e85fba6385fa1', '9001788181', '9001788181', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(212, 212, 0, 5, 'VARUN SOLANKI  ', '0000-00-00', 'MOHAN LAL SOLANKI', 'SANGEETA SOLANKI', 'LAXMI KIRANA STORE NEAR RAMPURA CHOURAHA', '', 9, 2, 1, '3777', 'varunsolanki', '1594ced4005e7d7eb9693ef085ab86b0', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(213, 213, 0, 5, 'AHMED  RAZA', '0000-00-00', 'MOHAMMED ALI', 'REHANA BANO', '294, O.T.C B - BLOCK, FAROOK AZAM COLONY, MALLA TALAI', '', 4, 2, 1, '3465', 'ahmedraza', 'f01927823b5dd62479506668ef0af555', '9784178648', '9784178648', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(214, 214, 0, 5, 'ALSHIFA  SHEIKH', '0000-00-00', 'ABDUL AZIZ', 'NAZRA BANO', 'DR RAM MANOHAR LOHIYA NAGAR SAJJAN NAGAR', '', 4, 2, 1, '3582', 'alshifasheikh', '5361c30202197c27c5c1483419f848e8', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(215, 215, 0, 5, 'DRONA  SHARMA', '0000-00-00', 'VIKAS SHARMA', 'KIRAN SHARMA', 'BEHIND PIONEER SCHOOL, SAJJANGHARH ROAD, MALLA TALAI', '', 4, 2, 1, '3463', 'dronasharma', '51ae244c6216ed97e9fa553c2134520a', '9214846105', '9610951300', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(216, 216, 0, 5, 'HUMERA NAAZ AZHARI', '0000-00-00', 'MOHSIN HUSSAIN AZHARI', 'CHAMAN ARA AZHARI', '565 A BLOCK SAJJAN NAGAR NEAR WATER TANK', '', 4, 2, 1, '3604', 'humeranaazazhari', '1a9183c59931932ef809b34a79299df6', '9785879105', '9799394164', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(217, 217, 0, 5, 'KALPESH  PUROHIT', '0000-00-00', 'MADHU SUDAN PUROHIT', 'PREM KANTA', '31 DUDHUYA GANESH JI', '', 4, 2, 1, '3493', 'kalpeshpurohit', '85173209cbac497a669eabc6569460cf', '8003568564', '9696069059', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(218, 218, 0, 5, 'MARIYAM  SHEIKH', '0000-00-00', 'SAJID MOHD', 'REHANA BANO', '432 GARIB NAWAZ COLONEY MULLA TALAI', '', 4, 2, 1, '3477', 'mariyamsheikh', 'ec261ed2981cf549753d66282586d063', '8233398084', '9252137433', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(219, 219, 0, 5, 'MOHAMMED ALFEZ RAZA', '0000-00-00', 'MOHAMMED TASKIN', 'ZEENAT', '01 KELWA HOUSE BICCHU GHATI', '', 4, 2, 1, '3471', 'mohammedalfezraza', 'b8ae7b4f38e23bd129b22d815b9a32f3', '9351784458', '8233074499', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(220, 220, 0, 5, 'MOHAMMED ANUS  RAZA', '0000-00-00', 'JAHIR BAKSH', 'SHABANA BANO', '203 KOMI EKTA NAGAR MULLA TALAI', '', 4, 2, 1, '3484', 'mohammedanusraza', '37c98348fcc3bb04fae998cf4a28d765', '9887867868', '9887867868', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(221, 221, 0, 5, 'MOHAMMED AYAZ  ', '0000-00-00', 'MOHAMMED SHAHRUKH', 'KARISHMA BANO', 'OAD BASTI INFRONT OF MASTAN BABA DARGAH', '', 4, 2, 1, '3667', 'mohammedayaz', 'a1c0ca5fa3a72447d33880097c7dd817', '', '9587511233', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(222, 222, 0, 5, 'MOHAMMED DARAIN KHAN', '0000-00-00', 'MOHAMMED KALEEM', 'SABIRA BANO', '198 OUTSIDE CHAND POLE BHINDER KI HAWELI', '', 4, 2, 1, '3653', 'mohammeddarainkhan', 'e876e71f888744bc04732365aaf1a810', '8442082403', '9001056331', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(223, 223, 0, 5, 'NAYAN  GARG', '0000-00-00', 'NARENDRA GARG', 'NEELAM GARG', '102 AYURVAIDIK HOSPITAL ROAD NAI', '', 4, 2, 1, '3660', 'nayangarg', 'fbe77704c5ccdea74fcf70800689e4ba', '7220946001', '7611936236', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(224, 224, 0, 5, 'NITYA  JAIN', '0000-00-00', 'RAJESH JAIN', 'NEHA JAIN', '129, AMBA WADI IN FRONT OF CHODHARY PAYING GUEST HOUSE UBESHWAR JI ROAD RAMPURA', '', 4, 2, 1, '3467', 'nityajain', '2d294c0f36494700f4af8fdb16e27bb6', '9509123488', '7877776012', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(225, 225, 0, 5, 'SANCHI KUNWAR  CHOUHAN', '0000-00-00', 'GAJENDRA SINGH CHOUHAN', 'KALPANA CHOUHAN', 'ASHAPURA HOUSE KODIYAT ROAD RAMPURA', '', 4, 2, 1, '3735', 'sanchikunwarchouhan', '51203ffc0edaeca91c28f763bc0cd785', '', '9602609687', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(226, 226, 0, 5, 'SOHAIL SHEIKH  ', '0000-00-00', 'FIROJ KHAN', 'TAHIRA BANO', '224 RAZA COLONY', '', 4, 2, 1, '3666', 'sohailsheikh', '7b3f0dadc1b22eea6c6e639d89739dde', '9001787155', '7728980852', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(227, 227, 0, 5, 'ARHAN KHAN  ', '0000-00-00', 'MOHAMMED SHAKIL KHAN PATHAN', 'NAZNEEN KHAN', '31 NAG MARG BHINDAR KI HAWELI', '', 3, 2, 1, '3767', 'arhankhan', '07cb02bc1032f4328a014d7af48c83dd', '9784764823', '9784764823', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(228, 228, 0, 5, 'AZLAAN KHAN  ', '0000-00-00', 'SALIM KHAN', 'NAHID KHAN', '146 RAZA COLONY MALLAH TALAI', '', 3, 2, 1, '3716', 'azlaankhan', '07fda2461b87326c46c256ff6b47be95', '9783858521', '9783858521', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(229, 229, 0, 5, 'EHSAN HASHMI  ', '0000-00-00', 'KAMRAAN AZEEM', 'SHAZIYA AZEEM', '', '', 3, 2, 1, '3764', 'ehsanhashmi', 'd08e4fd7a3fd8688727aa919eb032dc8', '7073775575', '7340608232', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(230, 230, 0, 5, 'JAYWARDHAN  PANWAR', '0000-00-00', 'MANISH PANWAR', 'REENA PANWAR', 'B 42 HARIDAS JI KI MAGRI', '', 3, 2, 1, '3768', 'jaywardhanpanwar', '184f72128a1e8117ec82b2e6c0c4edee', '9571216909', '9571216909', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(231, 231, 0, 5, 'KASHIF HUSSAIN  ', '0000-00-00', 'HAMID ASHRAF', 'SHAHAR BANU', 'A- 10 KOMI EKTA NAGAR', '', 3, 2, 1, '3709', 'kashifhussain', '79d7cfa21518740e6f9c35271ca66035', '9928536247', '9928536247', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(232, 232, 0, 5, 'LOVEDEEP  SINGH', '0000-00-00', 'PARVINDER SINGH', 'GURMEET KOUR', '51 AMBAWADI OPP CHOUDHARY GUEST HOUSE RAMPURA', '', 3, 2, 1, '3595', 'lovedeepsingh', '3a21c5c6865a3f01d42e4e2f2fae7de1', '2942430318', '8233872501', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(233, 233, 0, 5, 'MINHAZ KHAN  ', '0000-00-00', 'MOHAMMED ZAHID', 'SHABNAM BANO', 'S-134CHHIPA COLONY BEHIND CHARAK HOSTEL', '', 3, 2, 1, '3720', 'minhazkhan', '4bd5806d48be2239f08d6c4b9d4396a9', '9784283839', '9784283839', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(234, 234, 0, 5, 'MOHAMMED TURFAL RAZA  ', '0000-00-00', 'SALEEM KHAN', 'HEENA BANO', '152 AMBAVGARH KACHHI BASTI', '', 3, 2, 1, '3727', 'mohammedturfalraza', '6fa71a1bb8d8cd9b782573a30910d076', '9929029403', '9929029403', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(235, 235, 0, 5, 'PRITIKA KUNWAR CHOUHAN', '0000-00-00', 'UDAI SINGH CHOUHAN', 'VANDANA KUNWAR CHOUHAN', 'S-31 GANDHI NAGAR MULLA TALAI', '', 3, 2, 1, '3583', 'pritikakunwarchouhan', '399d0dc71debc054326f5b391f386532', '', '9784431336', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(236, 236, 0, 5, 'SHELVI  PATEL', '0000-00-00', 'VINOD PATEL', 'MEENA PATEL', 'B-65 AZAD NAGAR NEAR PIONEER SCHOOL', '', 3, 2, 1, '3609', 'shelvipatel', '2723cff072a127d580a4a0ac7dd7c837', '9929531819', '9214931192', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(237, 237, 0, 5, 'SWYAM JOSHI  ', '0000-00-00', 'KISHAN JOSHI', 'NEHA JOSHI', 'CHAMPA COLONY', '', 3, 2, 1, '3717', 'swyamjoshi', 'fe287eacdbeb092a81642f109ec65f0d', '9929501111', '9783858485', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(238, 238, 0, 5, 'TANVI  MEHTA', '0000-00-00', 'KAMLESH MEHTA', 'SUNITA MEHTA', 'K-2 A BLOCK SAJJAN NAGAR NEAR HANUMAN TEMPLE', '', 3, 2, 1, '3579', 'tanvimehta', '2564f4935dfa9ca119f19ed07dec09a3', '8764340089', '9460401951', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(239, 239, 0, 5, 'TEJASW  SHARMA', '0000-00-00', 'ROMIT SHARMA', 'SUMAN SHARMA', '2792 AMAR NAGAR B BLOCK SAJJAN NAGAR', '', 3, 2, 1, '3575', 'tejaswsharma', 'cd7d0fb0276a46410a6ee05d5ba4920e', '9001282853', '9784780557', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(240, 240, 0, 5, 'VISHWARAJ SINGH  RATHORE', '0000-00-00', 'PURAN SINGH RATHORE', 'MEENA KUNWAR', 'J- 5 HARIDAS JI KI MAGRI', '', 3, 2, 1, '3731', 'vishwarajsinghrathore', '7cec0aa70635350b211e4fc19da9d1aa', '9929900230', '9929900230', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(241, 241, 0, 5, 'DAZZLE  NAGDA', '0000-00-00', 'LILADHAR NAGDA', 'KRISHNA NAGDA', 'VILLAGE SISARMA', '', 10, 2, 1, '2498', 'dazzlenagda', '12ff0fb125150b8bd4886e74a9ca05a7', '9828257243', '9828257243', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(242, 242, 0, 5, 'HITESH  AMETA', '0000-00-00', 'CHITRANJAN AMETA', 'YASHODA AMETA', '361, EKLAVYA COLONY', '', 10, 2, 1, '2389', 'hiteshameta', '31d56f5ecbb443355521016f15d0655b', '9929900691', '9929900691', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(243, 243, 0, 5, 'MOHAMMED AYAAN  KHAN', '0000-00-00', 'AKHTAR KHAN', 'SHANAZ BANO', '312, FARUQUE AZAM COLONY, MALLA TALAI', '', 10, 2, 1, '3505', 'mohammedayaankhan', '504164642eda61fe7ca756d1b5c682d7', '9829144970', '9829144970', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(244, 244, 0, 5, 'NEHA  BHARTI', '0000-00-00', 'NAND LAL BHARTI', 'REETA BHARTI', 'B-4 MALLA TALAI, HARIDAS JI KI MAGRI', '', 10, 2, 1, '2321', 'nehabharti', 'a51d2d24a11bc14256f3e486edb580d1', '9166577999', '9166577999', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(245, 245, 0, 5, 'NIKHIL  BHARTI', '0000-00-00', 'NAND LAL BHARTI', 'REETA BHARTI', 'B-4, HARIDAS JI KI MAGRI, MALLA TALAI', '', 10, 2, 1, '2322', 'nikhilbharti', '26d074b34af405ca2a15f13f112843d9', '9166577999', '9166577999', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(246, 246, 0, 5, 'NILAKSH  UPADHYAY', '0000-00-00', 'KOUSHAL UPADHYAY', 'GEETA UPADHYAY', 'UPADYAY HOUSE BUJADA', '', 10, 2, 1, '3637', 'nilakshupadhyay', '2f06b49259be2b4d127b05bdb8b0c873', '9829193017', '9660741964', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(247, 247, 0, 5, 'PRASHANT  JOSHI', '0000-00-00', 'RADHESHYAM JOSHI', 'MAMTA JOSHI', '15, AMAR NAGAR', '', 10, 2, 1, '1985', 'prashantjoshi', 'e11cf9966fc4c93a4d146ee05ec96552', '9983337421', '9983337421', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(248, 248, 0, 5, 'RAJNISH KUMAR SAHANI', '0000-00-00', 'JAY JANAM SAHANI', 'RADHA SAHANI', 'H.N. 120 HARIDAS JI KI MAGRI', '', 10, 2, 1, '2295', 'rajnishkumarsahani', 'ab97d089903ded84f2c8419c02d45224', '0', '8769667784', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(249, 249, 0, 5, 'SANIYA  KHAN', '0000-00-00', 'MUMTAZ KHAN', 'SHAKIRA KHAN', 'L-1 GANDHI NAGAR MULLA TALI', '', 10, 2, 1, '3669', 'saniyakhan', 'f15506abdc96bd1cc6fa3f61cb6ae049', '9785471728', '9928472640', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(250, 250, 0, 5, 'YASH  VED', '0000-00-00', 'KISHAN VED', 'MANJU VED', 'SISARMA', '', 10, 2, 1, '2334', 'yashved', 'f1d5e6e1256d0b04993c46dfdcddd3f8', '9414176947', '9414176947', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(251, 251, 0, 5, 'ANISHK  SHARMA', '0000-00-00', 'RAJEEV SHARMA', 'RANU SHARMA', '7,RANG NIWAS PALACE ROAD', '', 11, 2, 1, '2780', 'anishksharma', 'f7f2b347992a6c8e08812b28856b0dde', '2942433022', '9950982735', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(252, 252, 0, 5, 'DIVYA  PALIWAL', '0000-00-00', 'SHYAM SUNDAR PALIWAL', 'BINDU PALIWAL', '147 NAG MARG OUT SIDE CHANDPOLE', '', 11, 2, 1, '3640', 'divyapaliwal', 'd3742d74dabc4817ae61e913f97776f4', '9929354036', '9602608792', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(253, 253, 0, 5, 'JAY PRAKASH JOSHI', '0000-00-00', 'BRIJ MOHAN JOSHI', 'MADHU JOSHI', '150, OTC, B-BLOCK, AMAR NAGAR', '', 11, 2, 1, '2024', 'jayprakashjoshi', '92b4ebc5725b22f4735aa8502112e88f', '9460028582', '9460028582', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(254, 254, 0, 5, 'KAJAL  JOSHI', '0000-00-00', 'NIRAJ JOSHI', 'RANI JOSHI', 'H. NO. 27  AZAD NAGAR 80 FEET ROAD', '', 11, 2, 1, '3648', 'kajaljoshi', '3289ac3829634a93b0c21cc60b4860df', '', '9001495050', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(255, 255, 0, 5, 'MAHIPAL SINGH SHAKTAWAT', '0000-00-00', 'SURENDRA SINGH', 'MAINA KUNWAR', 'J-16 HARI DAS JI KI MAGARI', '', 11, 2, 1, '3542', 'mahipalsinghshaktawat', 'da6ee6e0e444157593dd2a3725bf3b27', '9784857751', '9784857751', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(256, 256, 0, 5, 'NAMAN  SHARMA', '0000-00-00', 'OM PRAKASH SHARMA', 'SAPNA SHARMA', '168, RAO JI KA HATA, GOPAL BHAWAN NEAR', '', 11, 2, 1, '2534', 'namansharma', 'ea16bdd833e875ca5141318d8767f115', '9929535833', '9929535833', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(257, 257, 0, 5, 'NIKHIL  BHOI', '0000-00-00', 'LOKESH BHOI', 'PREM BHOI', 'SUKH DEVI NAGAR BEDLA TALAI NEAR SHIV MANDIR', '', 11, 2, 1, '3436', 'nikhilbhoi', '48364d6f63a1d36b2e6dd714d4f11452', '8875554406', '8875554406', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(258, 258, 0, 5, 'NIKITA  GOUTAM', '0000-00-00', 'CHOTE LAL GOUTAM', 'INDU DEVI GOUTAM', '119-B AMABA WARI RAMPURA CHORAHA', '', 11, 2, 1, '3633', 'nikitagoutam', '8b80bc0159067287b3560787eeb9264b', '9829124771', '9829124771', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(259, 259, 0, 5, 'OM  PALIWAL', '0000-00-00', 'MADAN PALIWAL', 'MAMTA PALIWAL', '27, NAGAR PARISHAD COLONY O/S BRAHMPOLE', '', 11, 2, 1, '1987', 'ompaliwal', '0178caca48301f791a6d2e6793dd31a1', '9352516673', '7023208110', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(260, 260, 0, 5, 'SEJAL  JOSHI', '0000-00-00', 'BRIJ MOHAN JOSHI', 'MADHU JOSHI', '105, AMAR NAGAR, OTC BLOCK', '', 11, 2, 1, '2166', 'sejaljoshi', '3cb3a3702e81d8a00ddbe72b8c537d82', '9460028582', '9460028582', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(261, 261, 0, 5, 'SURYABHAN SINGH RATHORE', '0000-00-00', 'HOSHIYAR SINGH RATHORE', 'ANURADHA RATHORE', '69, CHINTAMANI MARG, RAO JI KA HATA', '', 11, 2, 1, '1993', 'suryabhansinghrathore', '0bf70d1e9afd91f68d56ae539c3740eb', '9351732225', '9351732225', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(262, 262, 0, 5, 'YASH  CHOUDHARY', '0000-00-00', 'DILIP CHOUDHARY', 'SAROJ CHOUDHARY', 'VILLAGE NAI', '', 11, 2, 1, '3223', 'yashchoudhary', '38580e63457e7f9badb17fb195a80897', '9828681419', '9828681419', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(263, 263, 0, 5, 'JHANVI  NAGDA', '0000-00-00', 'KAILASH NAGDA', 'SANGEETA NAGDA', '81, RATA KHET, NEAR BAL SHIKSHA SADAN', '', 12, 2, 1, '1986', 'jhanvinagda', '01fd9e8f9030a34ccb42f532a1ab3eed', '9784395547', '9784395547', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(264, 264, 0, 5, 'MAHIMA  BHATI', '0000-00-00', 'MITTHA LAL BHATI', 'CHANDAN BALA', '14, HARIDAS JI KI MAGRI', '', 12, 2, 1, '2541', 'mahimabhati', 'cd05890c218e0e479d6fa18f8bf58888', '9460803752', '9460803752', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(265, 265, 0, 5, 'MOHAMMED DANISH  ', '0000-00-00', 'MAQBUL HUSSAIN', 'REHANA BEGUM', 'RAZA COLONY, MASJID KE PASS MALLA TALAI', '', 12, 2, 1, '3169', 'mohammeddanish', 'a28ea2adef1429b89b35fe58d77d8878', '9509227577', '8058185088', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(266, 266, 0, 5, 'MOHAMMED SHOAIB  ', '0000-00-00', 'ZAKIR HUSSAIN', 'BISMILLAH BANO', '251 NEAR MANSOORI PARK MULLA TALAI', '', 12, 2, 1, '3529', 'mohammedshoaib', 'd3b7dd95373616380cc0ebd5ab525443', '9928162977', '9928162977', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(267, 267, 0, 5, 'MONIKA  JOSHI', '0000-00-00', 'SHANKAR LAL JOSHI', 'SANGEETA JOSHI', 'SAJJAN NAGAR KACHCHI BASTI', '', 12, 2, 1, '1643', 'monikajoshi', '1fec474026b0fefdaca81966d77c4d2a', '9928004808', '9928004808', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(268, 268, 0, 5, 'MUSKAN  SHEIKH', '0000-00-00', 'SADIK MOHAMMED SHEIKH', 'HEENA SHEIKH', '159, A- BLOCK SAJJAN NAGAR', '', 12, 2, 1, '1730', 'muskansheikh', 'b99832255d735555df50d85d4028bf1f', '9799570704', '9799570704', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(269, 269, 0, 5, 'NIKHIL  CHOUHAN', '0000-00-00', 'SHYAM CHOUHAN', 'SAPNA CHOUHAN', '479/33, HATHIPOLE INSIDE SABJI MARKET', '', 12, 2, 1, '2012', 'nikhilchouhan', '7399956bb03821267592ca4eb4f7e123', '9783757551', '9783757551', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(270, 270, 0, 5, 'NIKITA  SETH', '0000-00-00', 'SANJAY SETH', 'SANTOSH SETH', 'HARIDAS JI KI MAGRI', '', 12, 2, 1, '1710', 'nikitaseth', 'df0e8596535f1a4bf77184a4e64e8009', '9660274536', '9660274536', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(271, 271, 0, 5, 'PREM KUMAR DHANDRA', '0000-00-00', 'VIJAY KUMAR DHANDRA', 'TEENA DHANDRA', '36, GANDHI NAGAR , MALLA TALAI  BEHIND WISDOM HOME SCHOOL', '', 12, 2, 1, '3387', 'premkumardhandra', '3b0ec9ade0e02eee84d4745183865345', '9982542070', '9982542070', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(272, 272, 0, 5, 'REENA KUNWAR JHALA', '0000-00-00', 'BHAGWAT SINGH JHALA', 'RATAN KUNWAR', '81, RATA KHET, BAL SIKSHA SADAN SCHOOL KE SAMNE', '', 12, 2, 1, '2527', 'reenakunwarjhala', 'd02394ddc967355c1e974ac58cd275cd', '9829889693', '9829889693', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(273, 273, 0, 5, 'ROSHAN  SHARMA', '0000-00-00', 'RAMESH SHARMA', 'SAVITA SHARMA', 'ROYAL GARDEN RAMPURA ROAD', '', 12, 2, 1, '2554', 'roshansharma', '9207044f557d793662094da79c7def64', '9001356919', '9001356919', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(274, 274, 0, 5, 'SANJANA  CHOUBISA', '0000-00-00', 'RADHESHYAM CHOUBISA', 'PUSHPA CHOUBISA', 'H.NO 1 HARSH NAGAR', '', 12, 2, 1, '1692', 'sanjanachoubisa', '8a60f6c7e8a1db42ecfdf0e97abe5e71', '9950739774', '9950739774', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(275, 275, 0, 5, 'ARSHAD MOHAMMED  ', '0000-00-00', 'YUNUS MOHAMMED', 'ANJUM ARA', '31, LAL MAGRI MASTAN BABA, MALLA TALAI', '', 13, 1, 1, '3234/13', 'arshadmohammed', '9c39bbddfd2b422f2e89feb89d00bf02', '9829881042', '9829881042', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(276, 276, 0, 5, 'CHAHAT  PALIWAL', '0000-00-00', 'RAKESH PALIWAL', 'DHEERAJ PALIWAL', 'F-3 HARIDAS JI KI MAGRI', '', 13, 1, 1, '1769/B', 'chahatpaliwal', '969cf17a2dfb4d788947e82c152924e4', '9460113953', '9460113953', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(277, 277, 0, 5, 'GAUTAM  JOSHI', '0000-00-00', 'LOKESH JOSHI', 'MAYA JOSHI', '422, TEACHERS COLONY', '', 13, 1, 1, '1514', 'gautamjoshi', '08fd21193f407fdb21c534b9624b52d1', '967290431', '967290431', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(278, 278, 0, 5, 'JAHNAVI  JOSHI', '0000-00-00', 'TARUN JOSHI', 'USHA JOSHI', '5, NAGAR PARISHAD COLONY', '', 13, 1, 1, '1575', 'jahnavijoshi', '76a843715e9fa2390a8bdf1b6d48244f', '9983396255', '9983396255', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(279, 279, 0, 5, 'JANAVI SANADHAYA ', '0000-00-00', 'SANJAY SANADHAYA', 'JAISHREE SANADHAYA', 'H.NO.-2080, AZAD NAGAR HOUSING SOCIETY SAJJAN GARH ROAD', '', 13, 1, 1, '1516', 'janavisanadhaya', 'a714b05d5418aad4853de645ebbd81af', '9468711756', '9829825037', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(280, 280, 0, 5, 'MOHIB SHABBAR  ', '0000-00-00', 'SHABBAR AHMED', 'SHABNAM', '1, DEWALI NEEMACHI KHEDA C-52A', '', 13, 1, 1, '2185', 'mohibshabbar', '0c95e5d305a8cfec584687c3d77c22d4', '9799979810', '9783470252', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(281, 281, 0, 5, 'MOHIT  VYAS', '0000-00-00', 'PARMESHWAR VYAS', 'YASHODA VYAS', 'EC 32 ABLOCK SAJJAN NAGAR MALLA TALAI', '', 13, 1, 1, '2044', 'mohitvyas', '1fb401e3b71a47ef259ac5a9e3f70cdf', '9828066250', '9828066250', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(282, 282, 0, 5, 'NISHCHAY  NAGDA', '0000-00-00', 'SHANTI LAL NAGDA', 'ANJANA NAGDA', 'NEAR CHARBHUJA TEMPLE', '', 13, 1, 1, '1752/B', 'nishchaynagda', 'c3e4cd53b046c9de3c4558ba98d2644d', '2942810128', '9929953808', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(283, 283, 0, 5, 'SANA  KHAN', '0000-00-00', 'MOHMMED ZAFAR KHAN', 'AFROZ KHAN', 'H. NO.-54, JATWADI', '', 13, 1, 1, '2904', 'sanakhan', '78e3a44b3e83b952d12b6c5403d123ac', '9982253421', '9829662564', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(284, 284, 0, 5, 'SHIFA PARVEEN ', '0000-00-00', 'MOHD ASHRAF MANSURI', 'BILKIS', '222, RAJA COLONY MALLA TALAI, UDAIPUR', '', 13, 1, 1, '2568', 'shifaparveen', '9a0874196df3b2b2084cf607c71bb603', '9929598337', '9929598337', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(285, 285, 0, 5, 'TUSHAR  CHOUBISA', '0000-00-00', 'RADHE SHYAM CHOUBISA', 'PUSHPA CHOUBISA', '31-B KANHIYA MARG RAMPURA', '', 13, 1, 1, '1571', 'tusharchoubisa', '8849584cae861e83dba7e1f224eaeba5', '9950737774', '9950739774', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(286, 286, 0, 5, 'VEDIK  MANDAVLIA', '0000-00-00', 'GOPAL MANDAVLIA', 'INDRA MANDAVLIA', 'HARIDAS JI KI MAGRI', '', 13, 1, 1, '1616', 'vedikmandavlia', 'b959e3e164efd339946052bdf55ef60b', '9928008129', '9928008129', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(287, 287, 0, 5, 'YASHVI  JAIN', '0000-00-00', 'HEMANT JAIN', 'REKHA JAIN', '9 B SAJJAN NAGAR 80 FEET ROAD', '', 13, 1, 1, '1549', 'yashvijain', '163c75a736c2afd115c776070d0af52d', '9460402506', '9460402506', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(288, 288, 0, 5, 'ANISHA SAHANI  ', '0000-00-00', 'JAY JANAM SAHNI', 'RADHA SAHANI', 'BHILU RANA KACHHI BASTI', '', 6, 3, 1, '3751', 'anishasahani', 'a98919c5f8033a7ff661b6c3b3062fe5', '9784367203', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(289, 289, 0, 5, 'ANSH RAJ SINGH RATHORE', '0000-00-00', 'KULDEEP SINGH  RATHORE', 'ASHA RATHORE', 'S-49, GANDHI NAGAR MALLA TALAI  A-BLOCK', '', 6, 3, 1, '3077', 'anshrajsinghrathore', 'f61687e7d5ffe3d99370ec6489503186', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(290, 290, 0, 5, 'BINISH  KHANAM', '0000-00-00', 'SHAHID KHAN', 'ASHMA KHAN', 'H.NO.8 KELWA HOUSE, BICHCHU GHATI', '', 6, 3, 1, '3155', 'binishkhanam', 'bddd647b07f3b2e1c45c3f81fb5d9401', '9610264703', '9829190250', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(291, 291, 0, 5, 'BUSHRA  SHEIKH', '0000-00-00', 'RAFIQUE SHEIKH', 'RUBINA SHEIKH', 'A-4 KOMI EKTA NAGAR OPP.CENTRAL ACDEMY SCHOOL', '', 6, 3, 1, '3100', 'bushrasheikh', '68e19a41133daa44a4acedabbc30c279', '9928356539', '9928356539', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(292, 292, 0, 5, 'HASNAIN  ALI', '0000-00-00', 'MOHAMMED ALIMUDDIN', 'RAJIYA ALI', '144, AHMED HUSSAIN COLONY, BEHIND MASTANA BABA KI DARGAH NEAR POLICE QUARTER  ,MALLA TALAI', '', 6, 3, 1, '3389', 'hasnainali', '0fe592ca167fe222c044d253844e3e22', '9829196432', '9829196432', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(293, 293, 0, 5, 'HUMERA  HUSSAIN', '0000-00-00', 'WASIM HUSSAIN', 'SHAHEEN', '450 FARUKH-E-AZAM COLONY MALLA TALAI', '', 6, 3, 1, '3085', 'humerahussain', 'b3a97122104d7c224fcc34917e952b4c', '9982691200', '9982691200', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(294, 294, 0, 5, 'JENIFER  KHAN', '0000-00-00', 'MUZAFFAR KHAN', 'SHABANA KHAN', '795 KOMI EKTA NAGAR WARD NO-3, MALLA TALAI', '', 6, 3, 1, '3101', 'jeniferkhan', 'c59bf1e32b7ec6ad75c83ee79e6587ec', '8875822591', '8875822591', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(295, 295, 0, 5, 'JINAL  MEHTA', '0000-00-00', 'KAMLESH KUMAR MEHTA', 'SUNITA MEHTA', 'K-2, A-BLOCK, SAJJAN NAGER NEAR HANUMAN KA TEMPLE', '', 6, 3, 1, '3156', 'jinalmehta', '9632871ef4ead691d1f9faebd0728dbf', '9783440446', '9783440446', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(296, 296, 0, 5, 'LAVISHA  GADIYA', '0000-00-00', 'MADHU SUDAN GADIYA', 'DEEPIKA GADIYA', 'HARI DASH JI KI MAGRI MALLA TALAI', '', 6, 3, 1, '3160', 'lavishagadiya', 'a05e0052e06e2ce092ff0126907086bf', '9829692777', '9829692777', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(297, 297, 0, 5, 'MOHAMMD KAZIM  KHAN', '0000-00-00', 'HAMID ASHRAF', 'SHAHAR BANU', 'A-10 KOMI EKTA NAGAR OPP. CENTRAL ACDEMY SCHOOL MALLA TALAI', '', 6, 3, 1, '3099', 'mohammdkazimkhan', '29aceea06076e70fc21d214621511531', '9983396178', '9983396178', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(298, 298, 0, 5, 'MOHAMMED SHARZIL  RAZA', '0000-00-00', 'MOHAMMED RAIS', 'AABEDA KHAN', 'BISHMILLA HOUSE KALLASATH KI GALI JATWADI', '', 6, 3, 1, '3128', 'mohammedsharzilraza', '889d492dbbd06493e443785ddc444206', '9887642784', '988764284', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(299, 299, 0, 5, 'NISHPREET  KOUR', '0000-00-00', 'JITENDER SINGH DIGPAL', 'REKHA KOUR', '545,KACHCHI BASTI GANDI NAGER', '', 6, 3, 1, '3081', 'nishpreetkour', '1828f39e378e31619feee206deb328d0', '9950645399', '9950645399', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(300, 300, 0, 5, 'RIDDHIMA  JOSHI', '0000-00-00', 'SATYA NARAYAN JOSHI', 'LALITA JOSHI', 'K-68, SAJJAN NAGAR KHACHCHI BASTI', '', 6, 3, 1, '3117', 'riddhimajoshi', '6e8ff782c61e2bdd07664cd43a229475', '7230902828', '7230902828', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(301, 301, 0, 5, 'SOHA  KHANAM', '0000-00-00', 'ABID KHAN', 'RASHIDA KHANAM', '80,FIT ROAD RATA KHET, SAJJAN NAGAR', '', 6, 3, 1, '3141', 'sohakhanam', '2a27e55de9cb84231608217bbd96c7c3', '7727064608', '7976242237', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(302, 302, 0, 5, 'VIVEK  TANWAR', '0000-00-00', 'MUKESH TANWAR', 'KIRAN TANWAR', '338. CHAMPA COLONY', '', 6, 3, 1, '3121', 'vivektanwar', '0f811099b99c7362e8ad36f4b3c03fc7', '9950453644', '9694083907', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(303, 303, 0, 5, 'ZISHAN  AALAM', '0000-00-00', 'NADEEM AALAM', 'SHABBO BANO', '174 CHITTORO KA TIMBA MAHAWATWADI', '', 6, 3, 1, '3656', 'zishanaalam', 'aa7c3877b74d0a8c4357820995853c3c', '8107332377', '8107332377', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(304, 304, 0, 5, 'ALINA  SHEIKH', '0000-00-00', 'MOHAMMED RAFIQ SHEIKH', 'RUBINA', 'A-4 KOMI EKTA NAGAR MULLAHTALAI', '', 3, 3, 1, '3703', 'alinasheikh', 'c32b3eef3982eeaccaf076b3a68290b6', '9928356539', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(305, 305, 0, 5, 'ANAM  KHAN', '0000-00-00', 'MOHMMED HUSSAIN', 'RANU TABBASSUM', '37 LAL GHAT BEHIND JAGDISH MANDIR', '', 3, 3, 1, '3576', 'anamkhan', '771599657a4490d686049f7d03591c9b', '', '9829354602', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(306, 306, 0, 5, 'ANUS  KHAN', '0000-00-00', 'MAJID KHAN', 'NAZMEEN BANO', '5 NEAR MASJID KALLESAT IMLI GHAT', '', 3, 3, 1, '3697', 'anuskhan', '797d0464d74f9ce47c32d7be7e0809da', '9269797530', '9672030101', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(307, 307, 0, 5, 'ARHAN KHAN ', '0000-00-00', 'SADDAM KHAN', 'NAZMEEN BANO', '427, AHMED HUSSAIN COLONY GALI NO. - 3, LAL MAGRI', '', 3, 3, 1, '3590', 'arhankhan', '07cb02bc1032f4328a014d7af48c83dd', '8094230319', '8094230319', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(308, 308, 0, 5, 'FATIMA ARSHEEN  ', '0000-00-00', 'MOHAMMED HANIF', 'NASREEN BANO', 'RAM MANOHAR LOHIA NAGAR KACHHI BASTI', '', 3, 3, 1, '3742', 'fatimaarsheen', '7282ced7c1d36f79d2756dd1886099fc', '9414850882', '9414850882', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(309, 309, 0, 5, 'HASNAIN KHAN  ', '0000-00-00', 'SHAHID KHAN', 'ASMA KHAN', 'KELWA HOUSE BICHHU GHATI HATHIPOLE', '', 3, 3, 1, '3724', 'hasnainkhan', 'a058372c12801329e8e423213845b197', '9829190250', '9829190250', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(310, 310, 0, 5, 'HUMERA KHANAM  ', '0000-00-00', 'JAVED KHAN', 'TAHIRA BANU', 'DHOLI MAGRI NEAR MASTAN BABA', '', 3, 3, 1, '3769', 'humerakhanam', '739b3a970083c8d89985c365720c0722', '8107149687', '8107149687', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(311, 311, 0, 5, 'JASLEEN KOUR  ', '0000-00-00', 'JITENDRA SINGH DIGPAL', 'REKHA KOUR', '545, OTC SCHEME D BLOCK, GANDHI NAGAR', '', 3, 3, 1, '3712', 'jasleenkour', '738b95c792401c6bdd93dc6673295442', '9413402157', '9413402157', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(312, 312, 0, 5, 'MAHENOOR  ', '0000-00-00', 'GULAM MOINUDDIN', 'FIRDOUS BANO', 'GALI NO. 2 FARUQ E AZAM COLONEY', '', 3, 3, 1, '3614', 'mahenoor', '511d3f981359fb9eaba7eeecc03ce64f', '9548585151', '9649569115', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(313, 313, 0, 5, 'MAJID  ALAM', '0000-00-00', 'NADEEM ALAM', 'NASREEN BANO', '174 CHITTORO KA TIMBA JATWADI', '', 3, 3, 1, '3592', 'majidalam', '978e2eafe55b00f11f9bd9bfef270fc1', '', '8107332377', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(314, 314, 0, 5, 'MOHAMMED ALSALAN  KHAN', '0000-00-00', 'IRFAN KHAN', 'KANEEZ FATMA', '686 KALLESATH NEAR MASJID IMLIGHAT', '', 3, 3, 1, '3605', 'mohammedalsalankhan', 'adcf5d342880934f4b86d642f8031e4a', '8290631228', '7726884121', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(315, 315, 0, 5, 'MOHAMMED JUNAID  CHIPPA', '0000-00-00', 'MOHAMMED FARUKH', 'NAZIYA', '528/50 CHIPPA COLONY', '', 3, 3, 1, '3611', 'mohammedjunaidchippa', 'ab34f482a2d0d2455291a35478c3e550', '', '9636822298', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(316, 316, 0, 5, 'MOHAMMED KASHIF  ', '0000-00-00', 'ASLAM HUSSAIN', 'RUBINA HUSSAIN', '41 GALI NO 3 AHMED HUSSAIN COLONY', '', 3, 3, 1, '3704', 'mohammedkashif', '626967434a7977914c1f93fd416de3c6', '8233993329', '8233993329', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(317, 317, 0, 5, 'NABILA BANO  ', '0000-00-00', 'ABDUL AHSAAN', 'RUBEENA BANO', '376 FARUK E AZAM COLONY MALLAH TALAI', '', 3, 3, 1, '3726', 'nabilabano', '52d35440d4061f55e1f5285b43652c68', '8829834462', '8829834462', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(318, 318, 0, 5, 'KINJAL  SHARMA', '0000-00-00', 'RAJESH SHARMA', 'PINKY SHARMA', '132,B RAMPURA AMBA WARI', '', 5, 1, 1, '3416', 'kinjalsharma', '8c7ae228bb255e520d50dd1c28bc5825', '9672368744', '7737397680', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(319, 319, 0, 5, 'MEHZABEEN BANO MANSOORI', '0000-00-00', 'SHARAFAT AHMED MANSOORI', 'YAASMIN MANSOORI', '336,GARIB NAWAZ COLONEY MALLA TALAI', '', 5, 1, 1, '3414', 'mehzabeenbanomansoori', '69365ee8ec9a87c5029d97f5c4d5febc', '9928446396', '9549428859', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(320, 320, 0, 5, 'AAFIYA  BANU', '0000-00-00', 'MOHD AAZAM', 'TARANNUM BANU', '336,GARIB NAWAZ COLONY GALI NO.4 MALLA TALAI', '', 6, 1, 1, '3273/31/13', 'aafiyabanu', '74535f36192dce64b6d90a4f30c4f666', '9783525226', '9783525226', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(321, 321, 0, 5, 'HAMJA  ', '0000-00-00', 'MOHD SALIM', 'MUMTAZ', '56, SAJJAN NAGAR, A-BLOCK', '', 6, 1, 1, '3268/26/13', 'hamja', '194d24e749d48423ac15273b3d4d6935', '9351808988', '9350808988', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(322, 322, 0, 5, 'SAKEENA  BANU', '0000-00-00', 'IMRAN KHAN', 'BILKISH BANU', '19 KELWA HOUSE, BICHCHU GATI', '', 6, 1, 1, '3266/24/13', 'sakeenabanu', 'e7188ac4de085169db92699bc9600f9c', '8239448544', '8239448544', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(323, 323, 0, 5, 'VAIDIKA  JAIN', '0000-00-00', 'BHERU JAIN', 'PINKY JAIN', 'H. NO.-7/1174, A-BLOCK SAJJAN NAGAR', '', 7, 1, 1, '13-10-3281', 'vaidikajain', '53bcb8d9674698adc479aad008233b4b', '9828788630', '9828788630', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(324, 324, 0, 5, 'SEFEEN  DAYAR', '0000-00-00', 'AKRAM HUSSAIN', 'RAZIA BANU', '440-GARIB NAWAZ COLONY GALI NO.4', '', 6, 2, 1, '3274/32/13', 'sefeendayar', '005f47eac80678be24091db371da7ac7', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(325, 325, 0, 5, 'ZENAB KHAN ', '0000-00-00', 'MOHD IRFAN', 'MAHENOOR', '56,SAJJAN NAGAR,A-BLOCK', '', 6, 2, 1, '3267/25/13', 'zenabkhan', '87526ce773570b94fad6f855655c68d7', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(326, 326, 0, 5, 'AVESH  HUSSAIN', '0000-00-00', 'MUSABBIR HUSSAIN', 'NUSRAT BANO', 'G-25, HARIDAS JI KI MAGRI, MALLA TALAI', '', 7, 2, 1, '12-07-3278', 'aveshhussain', '5cf7d882e1d322359471823b514fa40a', '8233458208', '8233458208', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(327, 327, 0, 5, 'MOHAMMED SHOYAB  RAZA', '0000-00-00', 'TAJ MOHAMMED', 'KHURSHIDA', 'GANDHI NAGAR MALLA TALAI UDAIPUR', '', 7, 2, 1, '3284/13/13', 'mohammedshoyabraza', 'edc051210f239f13c7d844069d5c24ef', '9001785110', '9001785110', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(328, 328, 0, 5, 'SHABISTA  KHANAM', '0000-00-00', 'LT PATHAN MOHD SHARIF', 'SHIREEN BANU', '205 OUT SAID CHAND POL NAGA NAGARI', '', 4, 2, 1, '3476', 'shabistakhanam', '8b7a7d0a80304283ba33d4e44ffe280a', '', '8769463651', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(329, 329, 0, 5, 'REHAN  ', '0000-00-00', 'ANSAR', 'REHANA', 'SAJJAN NAGAR KACHCHI BASTI', '', 3, 2, 1, '3620', 'rehan', '825625953cfd8a71e773215200a4de40', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(330, 330, 0, 5, 'ARINA  KHAN', '0000-00-00', 'RAIS KHAN', 'MUNIRA KHAN', 'KANOD KI HAVELI SURAJ POL', '', 6, 3, 1, '3261/19/13', 'arinakhan', '3b2d3cc70f51678fd3d8cd173221d5be', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(331, 331, 0, 5, 'PRANJAL  JALWANIYA', '0000-00-00', 'RAKESH SEN', 'RAJESWARI SEN', '29,B-HARIDAS JI KI MAGRI', '', 6, 3, 1, '3265/23/13', 'pranjaljalwaniya', 'c8a392f7cfccaf31401f5f4eb6735d02', '9667834456', '9667834456', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(332, 332, 0, 5, 'SAIFEEN GUL  ', '0000-00-00', 'ARIF KHAN', 'RUKHSAR', '151, NAGANAGRI CHANDPOLE BAHAR', '', 3, 3, 1, '3721', 'saifeengul', '8c8c2ba256cc624afee756864e392e83', '9829534552', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(333, 333, 0, 5, 'ANAHID  ANSARI', '0000-00-00', 'MOHD JAVED', 'NASIMA BANO', 'EKLAVYA ACADEMY NEAR GOVT SCHOOL GANDHI NAGAR MULLAHTALAI', '', 5, 1, 1, '3519', 'anahidansari', '2924dc1967a1f268363474ddf9852387', '9829500454', '8769336789', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(334, 334, 0, 5, 'BHAVIN  PRAJAPAT', '0000-00-00', 'RAJENDRA KUMAR PRAJAPAT', 'GOPI DEVI PRAJAPAT', '19,SANWARIYA HOUSE HARI HAR NAGAR RAMPURA', '', 5, 1, 1, '3352', 'bhavinprajapat', '3ddff3c5448b162247d2b1f44614b7b6', '9784181825', '9784181825', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(335, 335, 0, 5, 'LAXITA  CHOUHAN', '0000-00-00', 'VIJENDRA CHOUHAN', 'BHAGWATI CHOUHAN', 'DHAPU BAI BHILO KA MOHALLA SISARMA', '', 5, 1, 1, '3337', 'laxitachouhan', '89326a25983a82bbed4a4a5e6574dd51', '8562007866', '8562007866', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(336, 336, 0, 5, 'MAYANK TELI  ', '0000-00-00', 'MADAN TELI', 'PUSHPA TELI', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '', 5, 1, 1, '3737', 'mayankteli', 'cade123f896922dc7af2bfb46b656057', '9782873742', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(337, 337, 0, 5, 'MOHAMMED ALFEZ  ', '0000-00-00', 'MOHAMMED PARVEZ', 'SHAHZAD BANU', 'RAM MANOHAR LOHIYA NAGAR SAJJAN NAGAR', '', 5, 1, 1, '3394', 'mohammedalfez', '4b31580a09458513605c8add5ecb41df', '9983488460', '9983488460', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(338, 338, 0, 5, 'NAVIKA  PURBIA', '0000-00-00', 'PRAVEEN PURBIA', 'DIMPLE  PURBIA', '15 AMBAMATA SCHEM', '', 5, 1, 1, '3631', 'navikapurbia', 'a43e54bbd7feaa5667fa88f6a8f53bf6', '9571313180', '9680982880', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(339, 339, 0, 5, 'NISHA  OAD', '0000-00-00', 'UDESH OAD', 'NIRMA OAD', '4-B, HARIDAS JI KI MAGRI', '', 5, 1, 1, '3349', 'nishaoad', '7e2444b4e5f510cf1fe791814e517c9d', '9001834278', '9001834278', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(340, 340, 0, 5, 'PRIYANSHI  KALAL', '0000-00-00', 'VIRENDRA KUMAR KALAL', 'SANGEETA KALAL', '78 K.D RATA KHET,UDAIPUR NEAR TO BALSHIKSHA SADAN SCHOOL', '', 5, 1, 1, '3324', 'priyanshikalal', '4b5fac671ec906b65213574f765f0c3a', '9602637755', '9602637752', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(341, 341, 0, 5, 'SAIFIN  BANO', '0000-00-00', 'MOHAMMED SHAHRUKH', 'KHUSHBOO', '1510 AHMED HUSSAIN COLONY BEHIND MASTAN BABA', '', 5, 1, 1, '3705', 'saifinbano', 'ca2d8c46a1ccd4284486763784d6e247', '9529555777', '9529555777', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(342, 342, 0, 5, 'SOFIYA  NOOR', '0000-00-00', 'ABDUL RASHID', 'NASEEM BANO', 'H NO 439 GALI NO 1 GARIB NAWAZ COLONY', '', 5, 1, 1, '3699', 'sofiyanoor', 'a3bb76fec7d317c6457a505f7b693c7b', '9828611322', '9828611322', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(343, 343, 0, 5, 'ADITYA  YADAV', '0000-00-00', 'BUNTI YADAV', 'MEERA YADAV', '15 RATA KHET 80 FIT ROAD', '', 6, 1, 1, '3147', 'adityayadav', 'c540f8a010abd56e0aed7ac973c857c7', '9784663131', '9784663131', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(344, 344, 0, 5, 'AFSHA  NOOR', '0000-00-00', 'MAQBUL HUSSAIN', 'REHANA BEGUM', '207 RAZA COLONY MALLA TALAI', '', 6, 1, 1, '3170', 'afshanoor', 'ca03539050e49d74a7182a2e252f2b0e', '9509227577', '8058185088', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(345, 345, 0, 5, 'BHAVYA  SEN', '0000-00-00', 'PRAMOD SEN', 'DIMPLE SEN', '199 B .O.T.C DUDIYA GANESH JI AMAR NAGAR', '', 6, 1, 1, '3094', 'bhavyasen', 'e548442c09f3f197122a53df17c5087e', '9413830121', '9413830121', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(346, 346, 0, 5, 'HANSINI  PRAJAPAT', '0000-00-00', 'DEVI LAL PRAJAPAT', 'PUSHPA PRAJAPAT', 'B-2 HARI DAS JI KI MAGRI', '', 6, 1, 1, '3295', 'hansiniprajapat', '5778a28a864d32e88d86d9bb421e8059', '9928845604', '9928845604', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(347, 347, 0, 5, 'KAVYANSH SUTHAR  ', '0000-00-00', 'SURESH SUTHAR', 'TARA SUTHAR', '20 AMBAWADI OPP. CHOUDHRY GUEST HOUSE RAMPURA', '', 6, 1, 1, '3728', 'kavyanshsuthar', '5cc41e0cee53d585bf47c06b5260e2be', '9602785019', '9602785019', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(348, 348, 0, 5, 'MAHI  SEN', '0000-00-00', 'YATISH SEN', 'VANDANA SEN', '0', '', 6, 1, 1, '3058', 'mahisen', '6d040a72004e2c83936fbd816186aef5', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(349, 349, 0, 5, 'NIDHI  SONI', '0000-00-00', 'NARESH SONI', 'MEENA SONI', '11 C/O HIMMAT SING JI CHAJED HARIDAS JI KI MAGRI', '', 6, 1, 1, '34050', 'nidhisoni', 'a1995801f3b7a04d1806a9426ba5bde0', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(350, 350, 0, 5, 'PALAK  SAHANI', '0000-00-00', 'UMA SHANKAR SAHANI', 'BIBHA SAHANI', 'K - 10, HARI DAS JI KI MAGRI', '', 6, 1, 1, '3426', 'palaksahani', '6ad9626a9687a39e5220bb80045ef477', '', '9928173946', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(351, 351, 0, 5, 'SAKSHI  JHA', '0000-00-00', 'SHAILENDRA JHA', 'VINITA JHA', 'B-19, HARIDASH JI KI MAGRI MALLA TALAI', '', 6, 1, 1, '3138', 'sakshijha', '04849bffd3a0d1bab720423c5cd703be', '9649090164', '9649090164', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(352, 352, 0, 5, 'VANDANA  TELI', '0000-00-00', 'KISHAN LAL TELI', 'BHAWANA TELI', '3563,HARSH NAGAR SISARAMA ROAD', '', 6, 1, 1, '3113', 'vandanateli', '179d4a418a5278771af3b59365e539dd', '9929900394', '9929900394', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(353, 353, 0, 5, 'YUVRAJ  SEN', '0000-00-00', 'PURSHOTTAM SEN', 'PINKY SEN', '2,DUDHIYA GANESH JI NEAR AARTI RESTORANT', '', 6, 1, 1, '3096', 'yuvrajsen', '7aa7d4516850d4baebff5103d8958b29', '9929197754', '9929197754', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(354, 354, 0, 5, 'ZENAB  MANSOORI', '0000-00-00', 'MOHD IDRES', 'NILOFAR', '245,OTC MANSOORI COLONY MALLA TALAI', '', 6, 1, 1, '3123', 'zenabmansoori', '343cfebfac52af614a9891e5179febcb', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(355, 355, 0, 5, 'ABDUL AASHIT  ', '0000-00-00', 'ABDUL HAMEED', 'SHAHEEN ALI', '271, FAROOQ AZAM COLONY, MALLA TALAI', '', 7, 1, 1, '3513', 'abdulaashit', '6cd9b3fc8c2f0461c664e9fdd7e6a8e1', '7737577455', '7737577455', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(356, 356, 0, 5, 'DIKSHANT  SEN', '0000-00-00', 'UKAAR LAL SEN', 'SUSHILA KUMARI', 'DUDHIYA GANESH JI SAJJAN GAGR ROAD', '', 7, 1, 1, '3651', 'dikshantsen', '533bc427bfc0f8fddccefa651e149b13', '', '9001103020', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(357, 357, 0, 5, 'DIKSHIT  LAXKAR', '0000-00-00', 'SUDHIR LAXKAR', 'SEEMA LAXKAR', '25, HARI DAS JI KI MAGRI,MALLA TALAI', '', 7, 1, 1, '3018', 'dikshitlaxkar', 'ba9022aff3db0aaf7c548ead255332d0', '9610717808', '9610717808', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(358, 358, 0, 5, 'GUNJAN  DANGI', '0000-00-00', 'KESHAV LAL DANGI', 'KANKU DEVI DANGI', '1-4 POLICE QUARTER, MALLA TALAI', '', 7, 1, 1, '3379', 'gunjandangi', '789d8a2f8c0deb79a0a1d99284851621', '9799211467', '9799211467', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(359, 359, 0, 5, 'HANSIKA  VAISHNAV', '0000-00-00', 'RAJENDRA VAISHNAV', 'LALITA VAISHNAV', '141, O.T.C. B-BLOCK AMAR NAGAR,MALLA TALAI', '', 7, 1, 1, '3178', 'hansikavaishnav', '314c852df6e89c94c37c0e69f6debadc', '8107475668', '8107475668', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(360, 360, 0, 5, 'HIMANI  LAKHARA', '0000-00-00', 'PURSHOTAM LAKHARA', 'KALPANA LAKHARA', '53,KALI MAGRI DUDHIYA GANESH JI', '', 7, 1, 1, '3041', 'himanilakhara', 'ac479a83d34d93485cdfda383700005f', '9983000144', '9983000144', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(361, 361, 0, 5, 'KAVYANSH  BHATI', '0000-00-00', 'MANOJ BHATI', 'GANGA BHATI', 'K-13,HARIDAS JI KI MAGRI, MALLA TALAI', '', 7, 1, 1, '3184', 'kavyanshbhati', '30dbbe355b446e1bde6dad6cef0f2078', '9602608909', '9602608909', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(362, 362, 0, 5, 'KHUSHBU TELI  ', '0000-00-00', 'MADAN TELI', 'PUSHPA TELI', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '', 7, 1, 1, '3738', 'khushbuteli', '243b9f674221d9a49ec4a19b206c101c', '9782873742', '9782873742', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(363, 363, 0, 5, 'KOMAL  SUTHAR', '0000-00-00', 'DINESH KUMAR', 'HEMLATA DEVI', '36 KAHNAYA NAGAR GAS GOUDAM KE PASS', '', 7, 1, 1, '3536', 'komalsuthar', 'd725f9c7750981bad9fb04c0f92efc41', '9414229704', '9414229704', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(364, 364, 0, 5, 'LUBABA  ANSARI', '0000-00-00', 'MOHD JAVED', 'NASEEM BANO', 'EKLAYA  ACADEMY NEAR GOVT SCHOOL GANDHI NAGAR UDAIPUR', '', 7, 1, 1, '3520', 'lubabaansari', '441e4ec8bc2e76b5c474af93d2ccf640', '9829500454', '8769336789', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(365, 365, 0, 5, 'MINHAZ  AHMED', '0000-00-00', 'MAQBUL AHMED', 'NILOFER', 'AHMED HUSSAIN COLONY NEAR POLICE QUARTER', '', 7, 1, 1, '2923', 'minhazahmed', '1ec8a8a75b47b7c895235712c3e86c6d', '9602726751', '9784829354', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(366, 366, 0, 5, 'MOHAMMED ARSHAD  ', '0000-00-00', 'MOHAMMED AKRAM', 'IQBAL BANU', 'SAJJAN NAGAR NEAR WATER TANK KACHCHI BASTI', '', 7, 1, 1, '3301', 'mohammedarshad', 'dcc369236f80c9311044a43739840727', '9887095447', '9887095447', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(367, 367, 0, 5, 'MOHAMMED MAZHAR  RAZA', '0000-00-00', 'GULAM MOIUNUDDIN', 'FIRDOUS BANU', 'KOMI EKTA NAGAR, GALI NO.2 FARUKHE AZAM COLONY', '', 7, 1, 1, '3517', 'mohammedmazharraza', 'a28587de2cbfcd923ad742e13eeed088', '9649569115', '9549585151', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(368, 368, 0, 5, 'PRATHAM  PARIHAR', '0000-00-00', 'GOPAL PARIHAR', 'HETAL PARIHAR', 'B-BLOCK U.I.T. COLONY SAJJAN NAGAR, MALLA TALAI', '', 7, 1, 1, '3007', 'prathamparihar', '56778522d9d761059e03e20e140e9cc5', '9983645001', '9983645001', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(369, 369, 0, 5, 'ROHIT  SEN', '0000-00-00', 'SUNIL SEN', 'PREETI SEN', 'K-19, HARIDAS JI KI MAGRI', '', 7, 1, 1, '2916', 'rohitsen', '827ea844a9fb5c92bb5a249b06ec1f6c', '9982652404', '9982652404', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(370, 370, 0, 5, 'VISHAKHA  SEN', '0000-00-00', 'ANIL SEN', 'DIMPLE SEN', 'H. NO.-K-19, HARIDAS JI KI MAGRI', '', 7, 1, 1, '2914', 'vishakhasen', '4ca0386e972466b3cd8b1d406a6746e4', '9784192721', '9784192721', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(371, 371, 0, 5, 'VISHAL  SUTHAR', '0000-00-00', 'SHANTI LAL SUTHAR', 'KIRAN SUTHAR', 'GAJSINGH JI KI BADI, AZAAD NAGAR', '', 7, 1, 1, '2912', 'vishalsuthar', 'f7ec481661275ecbed915367c6aafc4e', '9001782290', '9001782290', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(372, 372, 0, 5, 'AALIMA  CHUNDRIGAR', '0000-00-00', 'ABDUL KHALIK', 'BADROONNISA', '28 CHAKARIYA AMBA NEW RAMPURA  UDAIPUR', '', 8, 1, 1, '2677', 'aalimachundrigar', 'de36b43a9da538bcbff60a2f6570a847', '9828082348', '9828082348', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(373, 373, 0, 5, 'AIMAN  BANO', '0000-00-00', 'ISHTIYAK AHMED', 'FARIDA BANO', 'NAVRANG SAREE STORE, HATHIPOLE', '', 8, 1, 1, '2702', 'aimanbano', '91d8b586b16ec413079769b4cbaaa286', '9001949191', '9887897949', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(374, 374, 0, 5, 'AJMAL  HUSSAIN', '0000-00-00', 'SHOUKAT HUSSAIN', 'SHABANA', '406 FARUKH - E- AZAM COLONY MALLA TALAI', '', 8, 1, 1, '3000', 'ajmalhussain', '2ef83afbbcf4942a3a2267d26c40d6d6', '9828071333', '9828071333', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(375, 375, 0, 5, 'ANISH  SAHANI', '0000-00-00', 'JAY JANAM SAHANI', 'RADHA SAHANI', 'K-110 HARI DAS JI KI MAGARI', '', 8, 1, 1, '3359', 'anishsahani', '9d10097d5854cfe79b7ac9ab545bc5ba', '9784367203', '8769667784', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(376, 376, 0, 5, 'ASMA  FAROOQUE', '0000-00-00', 'MOHD FAROOQUE', 'ABIDA BANO', '245 OTC MANSURI COLONY MALLA TALAI', '', 8, 1, 1, '2719', 'asmafarooque', 'b93179ec29882d97d9d05fb57aefbd0a', '9829789256', '9829789256', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(377, 377, 0, 5, 'AYESHA  KHAN', '0000-00-00', 'SHAHID HUSSAIN', 'SHAHIN KHAN', '697 GARIB NAWAZ COLONY MALLA TALAI UDAIPUR', '', 8, 1, 1, '2733', 'ayeshakhan', '644fe2e122fba96fc493ade3a4c06f69', '7568847266', '7568847255', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(378, 378, 0, 5, 'FAISAL  NURANI', '0000-00-00', 'MOHAMMED FARUKH', 'KHURSHIDA BANO', 'MASTAN BABA KE SAMNE UDAIPUR', '', 8, 1, 1, '2714', 'faisalnurani', 'c5c7c3dc15d05f1ba68b3ee6ab00d094', '9983540037', '9983540037', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(379, 379, 0, 5, 'FARHAN  KHAN', '0000-00-00', 'ASIF KHAN', 'RESHMA ARA', 'GARIB NAWAZ COLONY', '', 8, 1, 1, '2428', 'farhankhan', 'db2e1ff17e314aa9721a1593d59ddc99', '9829768653', '9829768653', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(380, 380, 0, 5, 'FARHAN  SHEIKH', '0000-00-00', 'HASNUDDIN SHEIKH', 'FARZANA', '56, CHITTORA KA TIMBA JATWARI', '', 8, 1, 1, '2743', 'farhansheikh', 'a366f6229f93723c91153145bf266a3a', '9828152965', '9828152965', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(381, 381, 0, 5, 'HIMANSHI  CHOUHAN', '0000-00-00', 'GAJENDRA CHOUHAN', 'KALPANA CHOUHAN', '22 HARSH NAGAR NEW RAMPURA UDAIPUR', '', 8, 1, 1, '2889', 'himanshichouhan', '7a78a7f02136b1e9bcc3b5aeca19f729', '8560080445', '8560080445', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(382, 382, 0, 5, 'JATIN  LOHAR', '0000-00-00', 'KIRAN KUMAR LOHAR', 'HEMA LOHAR', 'S-57 GANDHI NAGAR COLONY UDAIPUR', '', 8, 1, 1, '2722', 'jatinlohar', '46250177b80f27e6e76f359eb2a5278d', '9460378332', '9460378332', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(383, 383, 0, 5, 'JATIN  NAMDEV', '0000-00-00', 'DINESH NAMDEV', 'REKHA NAMDEV', '34 KOLPOL BADA BAZAR KOTHARI HOUSE', '', 8, 1, 1, '2690', 'jatinnamdev', 'f0b14109364e5262b81a0c9fdaa00d59', '', '9783440380', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(384, 384, 0, 5, 'JAYESH  KUMAWAT', '0000-00-00', 'KESHU LAL KUMAWAT', 'GOMTI DEVI', 'AMAR NAGAR OTC B BLOCK MALLA TALAI', '', 8, 1, 1, '3431', 'jayeshkumawat', '1ea1537d30a7c41cf6c0a44ced80b06d', '8239212126', '8239212126', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(385, 385, 0, 5, 'KOSAR  BANU', '0000-00-00', 'SAYEED', 'SHAHISTA BANU', 'RATA KHET,80 FEET ROAD', '', 8, 1, 1, '3060', 'kosarbanu', '9e8d779308b3cee9540b2537c475d2be', '9799116114', '9799116114', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(386, 386, 0, 5, 'PRACHI  JHA', '0000-00-00', 'SHAILENDRA JHA', 'VINITA JHA', 'HARIDAS JI KI MAGRI MALLA TALAI', '', 8, 1, 1, '3176', 'prachijha', '1c20016eca46068fbb3e50eb0761e61f', '9649090164', '9649090164', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(387, 387, 0, 5, 'PRINCE  CHOUDHARY', '0000-00-00', 'VINOD CHOUDHARY', 'JUMA CHOUDHARY', 'VILLAGE NAI NADESHWAR ROAD', '', 8, 1, 1, '2900', 'princechoudhary', '7df21f2a4e5db62fbd1acabca2484425', '9413090385', '9413090385', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(388, 388, 0, 5, 'PRINCE  YADAV', '0000-00-00', 'RAJKUMAR YADAV', 'MANORAMA YADAV', 'K-33, HARIDAS JI KI MAGRI', '', 8, 1, 1, '3194', 'princeyadav', 'e21e2f7b56ff11c20f61ce112846109e', '9828144919', '9828144919', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(389, 389, 0, 5, 'REHAN  KHAN', '0000-00-00', 'MUSABBIR HUSSAIN', 'NUSRAT BANU', 'G-25, HARIDAS JI KI MAGRI MALLA TALAI UDAIPUR', '', 8, 1, 1, '2868', 'rehankhan', '02a507876289d53ab4be719d4079480e', '8233458208', '8233458208', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(390, 390, 0, 5, 'SUFFIYAN  NURI', '0000-00-00', 'LIYAKAT HUSSAIN', 'SHABANA BANU', '1483, AHMED HUSSAIN COLONY NEAR SANJAY GARDEN', '', 8, 1, 1, '2692', 'suffiyannuri', '03edd485fbebb893ee87b6f833c60ec6', '9460253275', '9460253275', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(391, 391, 0, 5, 'TANISHA  LAKSHKAR', '0000-00-00', 'DEVENDRA LAKSHKAR', 'SARITA LAKSHKAR', '25, HARIDAS JI KI MAGRI, MALLA TALAI', '', 8, 1, 1, '2725', 'tanishalakshkar', 'c01b1bb06004d4ee94ec34c061de3567', '8058065105', '8058065105', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(392, 392, 0, 5, 'AFSHEEN  SHEIKH', '0000-00-00', 'MOHD IRSHAD SHEIKH', 'ALAMARA SHEIKH', '304,MASRET MANZIL MALLA TALAI', '', 9, 1, 1, '2472', 'afsheensheikh', '613054ce7907629476b943ecb61ee028', '9829069937', '9829069937', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(393, 393, 0, 5, 'ANIQUA  SHEIKH', '0000-00-00', 'NASEER SHEIKH', 'NOORJAHAN SHEIKH', '82,RAZA COLONY MALLA TALAI', '', 9, 1, 1, '2407', 'aniquasheikh', 'e2818004764ea7c7a3ce659f90ef70a6', '9829903016', '9829903016', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(394, 394, 0, 5, 'ANJALI  KUMARI', '0000-00-00', 'AMARJEET KUMAR', 'HEMA DEVI', 'AMAR NAGAR, MALLA TALAI', '', 9, 1, 1, '2755', 'anjalikumari', '1aa9c086b79a2681cb98dfc5060f68b2', '9214520996', '9214520996', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(395, 395, 0, 5, 'BHUVANESH  YADAV', '0000-00-00', 'HANUMAN PRASAD YADAV', 'MANJU YADAV', '86, YADAV COLONY AMBAMATA', '', 9, 1, 1, '2463', 'bhuvaneshyadav', '3f989495b066f16d4ed82fc756c0c789', '', '9460029293', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(396, 396, 0, 5, 'DAKSH  SONI', '0000-00-00', 'SUNIL SONI', 'DURGA SONI', '80,FEET ROAD SAJJAN NAGAR', '', 9, 1, 1, '3208', 'dakshsoni', '239b9ac10e9defa9c5989e12ec1538d7', '9024627372', '9829739550', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(397, 397, 0, 5, 'FAIZ  KHILZI', '0000-00-00', 'IMTIYAZ KHILZI', 'NILOFAR', '86, RAZA COLONY MALLA TALAI', '', 9, 1, 1, '2661', 'faizkhilzi', '77dc2ca6770ee454e058d0de445b47b6', '9829474278', '9829474278', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(398, 398, 0, 5, 'GOSIYA  BANO', '0000-00-00', 'NIYAZ KHAN', 'MUMTAZ', 'S-68, GANDHI NAGAR MALLA TALAI', '', 9, 1, 1, '3017', 'gosiyabano', '1af5d1d65aef71a98b84c5f249da1a3c', '8875288726', '8875288726', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(399, 399, 0, 5, 'KHUSH  PRAJAPAT', '0000-00-00', 'SHANKAR PRAJAPAT', 'MANJU PRAJAPAT', 'KUMAHARO KA MOHLLA SISARMA', '', 9, 1, 1, '2427', 'khushprajapat', '494f45e54e746bd14d3fe4d1bfacb3e5', '9001782334', '9001782334', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(400, 400, 0, 5, 'MEENAKSHI  SONI', '0000-00-00', 'NARESH SONI', 'MEENA SONI', 'HN-11 MALLA TALAI CHOURAHA', '', 9, 1, 1, '3404', 'meenakshisoni', 'f7f7bcc55f270484f1f78e5c91cab6a5', '8107744485', '8003719768', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(401, 401, 0, 5, 'MOHAMMED AYAN  MANSOORI', '0000-00-00', 'MOHAMMED AYUB MANSOORI', 'IRFANA BANU', 'S- 22 NEAR SHIV MANDIR GANDHI NAGAR', '', 9, 1, 1, '3682', 'mohammedayanmansoori', 'c8d6719bdab030d38274830771ff715e', '9828206786', '9928926592', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(402, 402, 0, 5, 'MOHAMMED REHAN  ', '0000-00-00', 'MOHAMMED ARIF', 'SAMINA BANU', 'KOMI EKTA NAGAR H.NO.782', '', 9, 1, 1, '2296', 'mohammedrehan', 'd0f5987d0ed701fb9cae8081c6045d2d', '9602877678', '9602877678', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(403, 403, 0, 5, 'NIYATI  SOLANKI', '0000-00-00', 'NIRMAL SOLANKI', 'MEENAKSHI SOLANKI', 'MALDAS STREET', '', 9, 1, 1, '2765', 'niyatisolanki', '57996997205b9a211ae6f3a4f53f0af5', '7742358811', '9649067097', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(404, 404, 0, 5, 'RADHIKA  LAXKAR', '0000-00-00', 'DEVENDRA LAXKAR', 'SARITA LAXKAR', '25, HARI DAS JI KI MAGRI', '', 9, 1, 1, '2481', 'radhikalaxkar', 'c37bfffe166101e219334d16377d7cf7', '8058065105', '8058065105', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(405, 405, 0, 5, 'SAKLAIN  RAZA', '0000-00-00', 'RAIS KHAN', 'ABIDA', '556,KASHAT, BISMILLAH HOUSE', '', 9, 1, 1, '2442', 'saklainraza', '924671c65fbca5e78d6dba4731625700', '9887642784', '9887642784', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(406, 406, 0, 5, 'SHOAIB  AHMED', '0000-00-00', 'JAMIL AHMED', 'SAMEENA BANU', '408, GARIB NAWAZ COLONY', '', 9, 1, 1, '3206', 'shoaibahmed', '05c57c57faebec1bec8c4d79cff2cb1a', '8769097050', '8769097050', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(407, 407, 0, 5, 'ALMEEN NAAZ ', '0000-00-00', 'SAEED AHMED', 'NAFISA BANO', '24/A GANDHI NAGAR MALLA TALAI', '', 14, 1, 1, '2811', 'almeennaaz', '4a5a671c384900484273d23f6261d332', '8058761760', '7891555402', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(408, 408, 0, 5, 'AMAN RAZA ', '0000-00-00', 'MOHAMMED ANIS', 'RUKHSANA', '65, MAHAWAT WADI, BADE PUROHIT JI KA KHURRA', '', 14, 1, 1, '3003', 'amanraza', 'c70d1bf0951f98cf691e5021f76ed134', '9950484726', '9414342736', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(409, 409, 0, 5, 'BHAVESH  SUTHAR', '0000-00-00', 'KHIYALI LAL SUTHAR', 'SHARDA DEVI SUTHAR', 'MALDAS STREET', '', 14, 1, 1, '1766', 'bhaveshsuthar', '9131e44116c580c7219c2b7787a413d8', '9413663345', '9413663345', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(410, 410, 0, 5, 'DEVANSHI  LOHAR', '0000-00-00', 'KIRAN PRAKASH LOHAR', 'HEMA LOHAR', 'S-57, GANDHI NAGAR COLONY, MALLA TALA', '', 14, 1, 1, '1778', 'devanshilohar', '8c8410d50d88e4e86e55b0fe0632a90c', '9460694334', '9460378332', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(411, 411, 0, 5, 'GUFRAN  HUSSAIN', '0000-00-00', 'MOHAMMED KHATIB', 'MAJIDA FATIMA', '218 MANSOORI COLONEY MULLA TALA PH NOI 0294-2434646', '', 14, 1, 1, '3664', 'gufranhussain', '423b237668d2892ad2525ba2fc42a1da', '8696178692', '8742800474', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(412, 412, 0, 5, 'MAHESH  SONI', '0000-00-00', 'MAHENDRA SONI', 'HEMLATA SONI', '30, SUBHASH MARG JADIO KI GALI', '', 14, 1, 1, '1624', 'maheshsoni', '956aa2d524c21a65801bf0bad2936229', '9828075639', '9828075639', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(413, 413, 0, 5, 'MAYURAKSHI  PURBIA', '0000-00-00', 'RAJESH PURBIA', 'MAYA PURBIA', 'B-BLOCK PURBIA COLONY', '', 14, 1, 1, '1231', 'mayurakshipurbia', '9c01178fb58aa5dadc96b864edc9934f', '9928025988', '9928025988', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(414, 414, 0, 5, 'MOHAMMED ADNAN  AHMED', '0000-00-00', 'KHALIL AHMED', 'KHUSHNOOR', 'S-24, GANDHI NAGAR U.I.T COLONY,MALLA TALAI', '', 14, 1, 1, '2062', 'mohammedadnanahmed', '7e26e8324d77abe01357b9df2f0cc278', '98281169501', '98281169501', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(415, 415, 0, 5, 'MOHAMMED ANEES MANSOORI', '0000-00-00', 'MOHAMMED SHARIF MANSOORI', 'SAYRA BEGAM', '3077 B BLOCK SAJJAN NAGAR 80 FEET ROAD MALLATALAI', '', 14, 1, 1, '3678', 'mohammedaneesmansoori', 'fa7adb26248bba185c7d60e9608acd9c', '8963008042', '9660483984', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(416, 416, 0, 5, 'MOHAMMED SAHIL  KHAN', '0000-00-00', 'SADIK MOHAMMED', 'HEENA BANO', '159/60, A- BLOCK SAJJAN NAGAR', '', 14, 1, 1, '2067', 'mohammedsahilkhan', '03da5e89db34889e9a15d05130f5f16a', '9799570704', '9799570704', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(417, 417, 0, 5, 'MOHAMMED SAIF  ', '0000-00-00', 'ABDUL KALAM', 'FARIDA BANU', 'RAZA COLONY, MALLA TALAI', '', 14, 1, 1, '1774/B', 'mohammedsaif', '7f458b665706565b15b04663520bc891', '9672379617', '9672379677', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(418, 418, 0, 5, 'MUBINA  JHADOLWALA', '0000-00-00', 'FAKRUDDIN JHADOLWALA', 'FATIMA JHADOLWALA', 'L-104, SAJJAN NAGAR MALLA TALAI', '', 14, 1, 1, '1769', 'mubinajhadolwala', '3e07c91a9638132d6dfbd4bb43cc6bae', '9166536322', '9799521124', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(419, 419, 0, 5, 'NAKSHATRA  SEN', '0000-00-00', 'VINOD SEN', 'KIRAN SEN', '13, CHOUBISA KI GALI OUT SIDE CHANDPOLE', '', 14, 1, 1, '1224', 'nakshatrasen', 'e3f27a1e5b8c93c42ad75d1150b1479a', '9672151207', '9799997276', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(420, 420, 0, 5, 'PAWAN  SINDHAL', '0000-00-00', 'NEELKANTH TELI', 'SANTOSH', '11, RADHA SHYAM JI KI GALI INSIDE BAAHMPOLE', '', 14, 1, 1, '1223', 'pawansindhal', '9a248cc557f7f609c5d98ad0d48041f4', '9982654661', '9982654661', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(421, 421, 0, 5, 'PRIYANSH  JHALWANIA', '0000-00-00', 'RAKESH JHALWANIA', 'RAJESHWARI JHALWANIA', 'A 222 SAJJAN NAGAR MALLA TALAI', '', 14, 1, 1, '1400', 'priyanshjhalwania', 'd4a6cadf202cd3fdf8682d1f72c89faf', '9667834456', '9667834456', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(422, 422, 0, 5, 'REHANA PATHAN MAV', '0000-00-00', 'ASHFAQUE PATHAN', 'SIDDIQA RANI', 'A-222, SAJJAN NAGAR, MALLA TALAI', '', 14, 1, 1, '1613', 'rehanapathanmav', 'e8caea49985f15a31c6e136ddb778949', '2942431133', '9468583786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(423, 423, 0, 5, 'SAHIMA  KHILJI', '0000-00-00', 'IMTIYAZ KHILJI', 'NILOFAR', '87,MALLA TALAI', '', 14, 1, 1, '1212', 'sahimakhilji', '46d4173194ae941c5767d0404fd94c35', '9829474278', '9829474278', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(424, 424, 0, 5, 'SAMEER  VERMA', '0000-00-00', 'CHANDRA SHEKHAR VERMA', 'NEETU VERMA', '117, BHILU RANA COLONY, SAJJAN NAGAR', '', 14, 1, 1, '2813', 'sameerverma', '978733a4b96d6ae4f8fa62aa03125b3b', '9929354025', '9929354025', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(425, 425, 0, 5, 'SHAHISTA  ANJUM', '0000-00-00', 'ABID HUSSAIN', 'SHAMIM BANU', 'B- BLOCK, SAJJAN NAGAR, 80 FEET ROAD', '', 14, 1, 1, '2927', 'shahistaanjum', 'ed72db9a8af32d02fa56c1de58d99652', '9829510869', '9829510869', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(426, 426, 0, 5, 'SIMRAN SOLANKI  ', '0000-00-00', 'MOHAN LALSOLANKI', 'SANGEETA SOLANKI', 'NEW LAXMI KIRANA STORE RAMPURA CHOURAHA', '', 14, 1, 1, '3775', 'simransolanki', '7711c4b141a6026229512fa031b80fa3', '9929634804', '9929634804', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(427, 427, 0, 5, 'TEENA  GOSWAMI', '0000-00-00', 'GAJENDRA BHARTI  GOSWAMI', 'ASHA GOSWAMI', 'A-20, RATA KHET SAJJAN NAGAR RAMPURA MAIN ROAD', '', 14, 1, 1, '1519', 'teenagoswami', '9069856ce28f6200c4f59595f81ed6e1', '9829823819', '9829823819', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(428, 428, 0, 5, 'TOHID  AALAM', '0000-00-00', 'ABDUL AZIZ', 'NASEEM', 'S-83, GANDHI NAGAR,MALLA TALAI', '', 14, 1, 1, '2060', 'tohidaalam', 'ff9e7120d62fb0dc1d13fa7f129986e9', '9928470409', '9928470409', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(429, 429, 0, 5, 'UZMA  KHAN', '0000-00-00', 'SHEHZAD KHAN', 'KAMRUN KHAN', '194, OUTSIDE CHANDPOLE, NAGA NAGRI', '', 14, 1, 1, '2070', 'uzmakhan', 'e999619d6e642e6ac725d4e5b0ad1851', '9829187678', '9950971860', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(430, 430, 0, 5, 'YASH  LOHAR', '0000-00-00', 'BHAGWATI LAL LOHAR', 'LEELA LOHAR', 'B-7, HARIDAS JI KI MAGRI, MALLA TALAI', '', 14, 1, 1, '1410', 'yashlohar', 'fd43b0bb5fbe7a72cf3fa284042303ea', '9829336815', '9829336815', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(431, 431, 0, 5, 'AARYAK  PURBIA', '0000-00-00', 'LT PRAVEEN PURBIA', 'KUSUM PURBIA', 'K - 24 HARIDAS JI KI MAGRI, KRISHNA COMPLEX, MALLA TALAI', '', 4, 1, 1, '3460', 'aaryakpurbia', 'd87f531fc7742426838104c4de33e77a', '9602770070', '9602770070', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(432, 432, 0, 5, 'BHANVI  TELI', '0000-00-00', 'HARISH TELI', 'GORI TELI', '2769 SAJJAN NAGAR, B BLOCK 80 FEET ROAD. SHANI MAHARAJ JI KI GALI. MULLA TALAI', '', 4, 1, 1, '3478', 'bhanviteli', '1df7ef3aebb64abbd1296a852ea026a8', '9571649607', '9571649608', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(433, 433, 0, 5, 'BHAVYA  LOHAR', '0000-00-00', 'MAHENDRA LOHAR', 'BHAGWANTI LOHAR', '4 PRAGATI NAGAR SAJJAN GARH ROAD OPP NIMAWAT RESTORENT POWER HOUSE', '', 4, 1, 1, '3553', 'bhavyalohar', '150020fe32061a59e1e15e08257ef0f2', '9887363072', '8233494631', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(434, 434, 0, 5, 'DIYA  PURBIA', '0000-00-00', 'KAMLESH KUMAR PURBIA', 'KIRAN PURBIA', '21 PURBIA COLONEY NEAR ASHA DHAM ASHRAM', '', 4, 1, 1, '3491', 'diyapurbia', '6b88fcbc2cf8f728e66063cc4430a0f1', '9928213431', '9680116566', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(435, 435, 0, 5, 'HIMANSHU  SUHALKA', '0000-00-00', 'PANKAJ SUHALKA', 'YASHODA SUHALKA', '147, HARSH NAGAR', '', 4, 1, 1, '3319', 'himanshusuhalka', 'b919a0e765cb50da6921ef12c32531bb', '9602254140', '9602254140', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(436, 436, 0, 5, 'LAKSHYA RAJ SINGH CHOUHAN', '0000-00-00', 'VIJENDRA SINGH', 'BHAGWATI CHOUHAN', 'H - 22, HARI DAS JI KI MAGARI', '', 4, 1, 1, '3486', 'lakshyarajsinghchouhan', '51bd43f09e428c72a5627241b0a8da82', '8562007866', '8562007866', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(437, 437, 0, 5, 'MINAL  CHOUDHARY', '0000-00-00', 'MUKESH CHOUDHARY', 'GAYATRI CHOUDHARY', '132 KV GSS COLONEY 80 FET ROAD', '', 5, 1, 1, '3641', 'minalchoudhary', 'e2c4ad3ecb5c12510f19078b7caf9248', '8058310125', '9649791248', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(438, 438, 0, 5, 'MOHAMMED ARHAN  RAZA', '0000-00-00', 'MOHAMMED IRFAN', 'ANJUM PARVEEN', '333 NEEM KE GAWADI SILAWAT WARI', '', 4, 1, 1, '3555', 'mohammedarhanraza', 'bbf5fdc243c223a7ef3e2616de7b27f6', '7665762733', '9413093700', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(439, 439, 0, 5, 'PREETI  PATEL', '0000-00-00', 'DHAN RAJ PATEL', 'SEET PATEL', '731 EKLAVYA COLONEY DUDHIYA GANESH JI', '', 4, 1, 1, '3554', 'preetipatel', '3c49d16d1301790273d6dee38a00bb9e', '8290172118', '9636101355', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(440, 440, 0, 5, 'SHAHINA  HUSSAIN', '0000-00-00', 'SAYEED HUSSAIN', 'SHAHISTA HUSSAIN', 'G-25 HARI DAS JI KI MAGARI MULLA TALAI', '', 4, 1, 1, '3473', 'shahinahussain', '349f80983dbf391c4b7923548ab9cb24', '9799116114', '9799116114', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(441, 441, 0, 5, 'VIRAJ  OAD', '0000-00-00', 'NARENDRA OAD', 'SEEMA OAD', 'B-19 HARI DAS JI KI MAGARI MALLA TALI', '', 4, 1, 1, '3343', 'virajoad', '0b76da8cc1656ba2c59c58782d389fa3', '916226518', '9166226518', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(442, 442, 0, 5, 'VRINDA  SIKLIGAR', '0000-00-00', 'YOGENDRA SIKLIGAR', 'SHITAL SIKLIGAR', '7 - NATHI MARG, INSIDE BRHAMPOLE', '', 4, 1, 1, '3773', 'vrindasikligar', 'f03a1f1b71e8df342528308ac3136dad', '', '9772771770', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(443, 443, 0, 5, 'YASHWANT  SIKLIGAR', '0000-00-00', 'KAMLESH SIKLIGAR', 'MANOTI SIKLIGAR', 'PIPAL CHOWK RAM PURA', '', 4, 1, 1, '3558', 'yashwantsikligar', 'e51e54f8586b626c3220b6892e9ce346', '8742060589', '8003071709', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(444, 444, 0, 5, 'BUSHRA  ', '0000-00-00', 'MOHAMMED YUSUF SHEIKH', 'SHAHEEN', '315/B GARIB NAWAZ COLONY MULLAH TALAI', '', 3, 1, 1, '3759', 'bushra', 'fa0f6f6768c23171b84bcef5aeb1e0c3', '9772093024', '9772093024', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(445, 445, 0, 5, 'MOHIT LOHAR  ', '0000-00-00', 'MAHENDRA KUMAR LOHAR', 'KHUSHBOO LOHAR', '208 AMBAWADI UBESHWAR ROAD', '', 3, 1, 1, '3744', 'mohitlohar', '6608e7fbf72bc87825315dae6e830e59', '9799220480', '9799220480', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(446, 446, 0, 5, 'NAKSH SUTHAR  ', '0000-00-00', 'PRAKASH SUTHAR', 'REKHA SUTHAR', 'SHIV COLONY AMBAWADI', '', 3, 1, 1, '3765', 'nakshsuthar', '0ce9596ef502260bcdc747d2f3104a5f', '7742770393', '7742770393', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(447, 447, 0, 5, 'NIVIKA  KUMAWAT', '0000-00-00', 'GAJENDRA KUMAWAT', 'POOJA KUMAWAT', '41 KARMSHEEL MARG OUT SIDE CHAND POLE', '', 3, 1, 1, '3586', 'nivikakumawat', 'b17f667e5ef73decc4db574be165137b', '2942418509', '9261095111', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(448, 448, 0, 5, 'PEARL  LOHAR', '0000-00-00', 'JANKI LAL LOHAR', 'HEMLATA   MALVIYA LOHAR', '7-B HARI DAS JI KI MAGARI', '', 3, 1, 1, '3494', 'pearllohar', 'bf33a982c280e2ef8f45443485a45c87', '9928635793', '9929940498', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(449, 449, 0, 5, 'SADIYA  BANO', '0000-00-00', 'MOHAMMED FAROOQ MANSOORI', 'AABEDA BANO', '245 MANSOORI COLONEY', '', 3, 1, 1, '3610', 'sadiyabano', 'c8410343916a8899339ed800583eae45', '8107730466', '8107730466', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(450, 450, 0, 5, 'SAHIL  HUSSAIN', '0000-00-00', 'SAYEED HUSSAIN', 'SHAHISTA  HUSSAIN', 'G-25 HARIDAS JI KI MAGARI MULLA TALAI', '', 3, 1, 1, '3474', 'sahilhussain', '1903587a025d273b6908033636119e21', '9799116114', '9799116114', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(451, 451, 0, 5, 'SOMYA ', '0000-00-00', 'DHANRAJ GURJAR', 'SUMITRA GURJAR', '198, GORELA UBESHWAR ROAD', '', 2, 1, 1, '3783', 'somya', 'ceacd971a54d4f629463fc1a525a2687', '9950299486', '9571916006', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(452, 452, 0, 5, 'UMME HAANI ATTARIYA  ', '0000-00-00', 'MUHAMMED IRFAN', 'NOOR AYESHA', '1613 UPAR KI MASJID KE PASS SILAWATWADI', '', 3, 1, 1, '3711', 'ummehaaniattariya', '5b80e916898a092e052bd5df67fcca99', '7821050088', '7821050088', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(453, 453, 0, 5, 'VISHAL  TELI', '0000-00-00', 'KISHAN LAL', 'BHAWNA TELI', '240 HARSH NAGAR', '', 3, 1, 1, '3603', 'vishalteli', '8b0c251eda56e9dd378958e9452b74f0', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(454, 454, 0, 5, 'BHUMIKA  CHOUDHARY', '0000-00-00', 'HEMENDRA CHOUDARY', 'PUSHPA CHOUDHARY', 'NAI VILLEGE NEAR DEV DEVRA', '', 10, 1, 1, '3684', 'bhumikachoudhary', 'ee48c693997b7cfe85a54d45567747da', '9660997070', '9928353710', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(455, 455, 0, 5, 'DHRUVIK  KUMAWAT', '0000-00-00', 'RAJENDRA KUMAWAT', 'SAROJ KUMAWAT', 'S,57 BAJRANG MARG, GADA GAMETI JI O/S CHANDPOL', '', 10, 1, 1, '2526', 'dhruvikkumawat', 'b6aecba91cc63e90ae43615fbbb5c9cf', '9694354611', '9694354611', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(456, 456, 0, 5, 'HARISH  SEN', '0000-00-00', 'LT CHANDRA PRAKASH SEN', 'KAMLA SEN', '11, RAZA COLONEY MALLATALAI', '', 10, 1, 1, '3544', 'harishsen', '82088445e00d28f8a301e9357c09f8a0', '7726898728', '7726898728', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(457, 457, 0, 5, 'HARSHIT  KASERA', '0000-00-00', 'HEMANT KASERA', 'JYOTI KASERA', '19, BHADESAR CHOWK NEAR JAGDISH MANDIR', '', 10, 1, 1, '2366', 'harshitkasera', '898bb6116796e7519ce6b0c35b38cd50', '9414163559', '7742128921', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(458, 458, 0, 5, 'ISHITA  SONI', '0000-00-00', 'HARISH SONI', 'SHEETAL SONI', '84 ACHARYA MARG O/S CHAND POLE', '', 10, 1, 1, '2499', 'ishitasoni', '866fd55ff2ed3e05c85d7f493faa18a1', '9929323731', '9929323731', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(459, 459, 0, 5, 'JAYESH  BHATI', '0000-00-00', 'PRAHLAD BHATI', 'MEENA BHATI', 'VILLAGE BHUZDA', '', 10, 1, 1, '2357', 'jayeshbhati', '658012878684a7c8b5c7159b5aa5e109', '9460509142', '9460509142', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(460, 460, 0, 5, 'JOY  PURBIA', '0000-00-00', 'KAMLESH KUMAR  PURBIA', 'KIRAN PURBIA', '21 B-BLOCK PURBIA COLONY', '', 10, 1, 1, '2364', 'joypurbia', '023c12aaba407261ee6bed1bf600e7ef', '9928213431', '9928213431', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(461, 461, 0, 5, 'KHUSHBU  PARIHAR', '0000-00-00', 'GOPAL PARIHAR', 'HETAL PARIHAR', 'L 20 SAJJAN NAGAR A-BLOCK', '', 10, 1, 1, '2141', 'khushbuparihar', '3386b287c8840c8ea981dbda99e34ab4', '9983645001', '9983645001', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(462, 462, 0, 5, 'KHUSHI  PURBIA', '0000-00-00', 'RAVI PURBIA', 'VIMLA PURBIA', 'K-24 KRISHNA COMPLEX HARIDAS JI KI MAGRI', '', 10, 1, 1, '2372', 'khushipurbia', '6a78394b90fa547a99e77f1474bca45f', '9828470675', '9828470675', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(463, 463, 0, 5, 'MISBA  HABIBA', '0000-00-00', 'NASIB RAZA', 'SHABANA BANO', '528/26, OTC CHIPPA COLONY', '', 10, 1, 1, '2491', 'misbahabiba', '191eef1ea62db7338b7c75078cf1e9ca', '9680950325', '9680950325', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(464, 464, 0, 5, 'MOHAMMED ATIF  ', '0000-00-00', 'MOHAMMED HUSSAIN', 'MARIAM BANU', '528/60,OTC CHIPPA COLONY', '', 10, 1, 1, '2380', 'mohammedatif', '6b176c543f02bb2d50e7f2c5bd9fddcf', '9829897336', '8696886211', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(465, 465, 0, 5, 'MOHAMMED FAIZAN  ', '0000-00-00', 'MOHAMMED ILIYAS', 'SHABANA BANU', 'H.NO 528/50, OTC CHIPPA COLONY', '', 10, 1, 1, '2511', 'mohammedfaizan', '315faf4f695b30a90815932d2f981c9d', '9636822298', '9636822298', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(466, 466, 0, 5, 'MOHAMMED FARHAAN  MEV', '0000-00-00', 'FAROOQ MOHAMMED', 'RIZWANA MEV', '80, FEET ROAD CHOTI MASZID KE PASS', '', 10, 1, 1, '2361', 'mohammedfarhaanmev', '9941c0f4accf1791ee89e31e7908cfb5', '8764072786', '8764072786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(467, 467, 0, 5, 'MOHAMMED TOFIQ  ', '0000-00-00', 'MOHAMMED PARVEZ', 'RASHIDA BANU', '80 FEET ROAD BEHIND MASZID', '', 10, 1, 1, '2507', 'mohammedtofiq', '8908086c1ac876e4afdb53f0c2b8f1c9', '9413752786', '9413752786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(468, 468, 0, 5, 'MOHIT  KUMAWAT', '0000-00-00', 'RAMESHWAR KUMAWAT', 'ANITA KUMAWAT', 'NAGA NAGRI', '', 10, 1, 1, '3217', 'mohitkumawat', 'd44a19ae54f12b889766ddb463b4d617', '9983444672', '9983444672', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(469, 469, 0, 5, 'MOHIT  SUTHAR', '0000-00-00', 'SURESH SUTHAR', 'MANJU SUTHAR', '202, HARIHAR NAGAR, SISARMA', '', 10, 1, 1, '2323', 'mohitsuthar', 'c8eb0ec11a843d44ec48a557b72b0916', '9413045468', '9413045468', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(470, 470, 0, 5, 'NAWAZ  ALI', '0000-00-00', 'IQBAL ALI', 'SALMA ALI', 'GARIB NAWAZ COLONY', '', 10, 1, 1, '2851', 'nawazali', '997d58b00ae5fb342d5ee6b3c1fdd7a1', '9783204040', '9783204040', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(471, 471, 0, 5, 'PRANAY  PATIL', '0000-00-00', 'NAMDEV PATIL', 'RUPALI PATIL', '30, SITAFAL KI GALI GANESH GHATI', '', 10, 1, 1, '2989', 'pranaypatil', 'de344940e2630dd12878001a8541b55f', '9929998233', '9929998233', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(472, 472, 0, 5, 'SANIYA  BANU', '0000-00-00', 'MOHAMMAD IQBAL', 'FATIMA BANO', 'AMAR NAGAR, JAGRITI SEC. SCHOOL KE SAMNE', '', 10, 1, 1, '2768', 'saniyabanu', '514c944af5923691535b7d7811a2013f', '9414342665', '9414342665', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(473, 473, 0, 5, 'SHAHNAWAZ  KHAN', '0000-00-00', 'SABIR', 'SALMA', 'B - HARI DAS JI KI MAGRI', '', 10, 1, 1, '2535', 'shahnawazkhan', '011f2c0d3f3a79d7eac121a7f817b1c1', '9982697771', '9982697771', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(474, 474, 0, 5, 'SK ABDULLA  ', '0000-00-00', 'SK FOZLUR RAHAMAN', 'ALIMA BEGUM', 'KOL POLE BADA BAZAR, WARD NO-45/142', '', 10, 1, 1, '3216', 'skabdulla', '335e68cc592fa286c9eceb5dcb139d8d', '9610061220', '9610061220', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(475, 475, 0, 5, 'SUMIT  SAHANI', '0000-00-00', 'ARUN SAHANI', 'SULEKHA SAHANI', 'RAMPURA CIRCLE, SHIV COLONY, NEAR GAS GODAM', '', 10, 1, 1, '2853', 'sumitsahani', '812e45a60b8ba4ec1340dcb6f6bb14cd', '9928170849', '99281710849', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(476, 476, 0, 5, 'TOSHIK  VAISHNAV', '0000-00-00', 'GANESH DAS VAISHNAV', 'REKHA VAISHNAV', 'SHIV TEMPLE SITA MATA ROAD, SISARAMA', '', 10, 1, 1, '2483', 'toshikvaishnav', 'ee065ea566c7fa4451c427dcdc159215', '9983377590', '9983377590', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(477, 477, 0, 5, 'AFREEN FATMA  MANSOORI', '0000-00-00', 'MOHAMMED AYUB MANSOORI', 'IRFANA BANU', 'S-22 NEAR SHIV MANDIR GANDHI NAGAR', '', 11, 1, 1, '3683', 'afreenfatmamansoori', 'bc82690f281e1d70b6bdcb4db15c21b4', '9828206786', '982806786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(478, 478, 0, 5, 'ALFIYA  SHEIKH', '0000-00-00', 'SALEEM MOHAMMED SHEIKH', 'NEK PARVEEN SHEIKH', 'L-8, GANDHI NAGAR, MALLA TALAI', '', 11, 1, 1, '3509', 'alfiyasheikh', 'efe2a1537993cd1950c0e6b1afd7cba7', '9460291529', '8003366924', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(479, 479, 0, 5, 'ALINA  SHEIKH', '0000-00-00', 'MOHD TANVEER SHEIKH', 'AFSANA BANO', '731, GARIB NAWAZ COLONY', '', 11, 1, 1, '1947', 'alinasheikh', 'c32b3eef3982eeaccaf076b3a68290b6', '', '9413762860', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(480, 480, 0, 5, 'ASMA  JABIN', '0000-00-00', 'AKIL MOHD', 'CHAMAN FATHMA', 'RAZA COLONY  MALLA TALAI', '', 11, 1, 1, '1925', 'asmajabin', '9588266de38bb6b935984cc005c29790', '9166852825', '9166852825', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(481, 481, 0, 5, 'BHUMIKA  YADAV', '0000-00-00', 'RAJ KUMAR YADAV', 'MANORAMA YADAV', 'K-33 HARIDAS JI KI MAGRI', '', 11, 1, 1, '1927', 'bhumikayadav', 'de42e277a9d228f11133e3334d96037a', '9828144919', '9828144919', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(482, 482, 0, 5, 'DEEPAK  MALI', '0000-00-00', 'FATEH LAL MALI', 'SEETA MALI', '39, HARSH NAGAR,RAMPURA', '', 11, 1, 1, '2282', 'deepakmali', '4323373a60165f59730f3ad353abb015', '9587229036', '9587229036', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(483, 483, 0, 5, 'DIVYANSHI  PURBIA', '0000-00-00', 'LATE PRAVEEN PURBIA', 'KUSUM PURBIA', 'HARIDAS JI KI MAGRI', '', 11, 1, 1, '2134', 'divyanshipurbia', '26d202069f30adc35f1b32149c770150', '8952097886', '9602770070', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(484, 484, 0, 5, 'FAIZA  KHATOON', '0000-00-00', 'MOHD FAREED', 'ZUBKHA KHAN', 'GANDHI NAGAR S-83', '', 11, 1, 1, '1938', 'faizakhatoon', 'db0a8a304476c73eb77754e45f389973', '9772998713', '9772998713', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(485, 485, 0, 5, 'GEET  YADAV', '0000-00-00', 'NARESH YADAV', 'HEMLATA YADAV', '209/4 HARIDAS JI KI MAGRI', '', 11, 1, 1, '1953', 'geetyadav', 'ff1c9639036f30f6a6a6d622940be623', '9413287520', '9413287520', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(486, 486, 0, 5, 'HARSH VARDHAN SINGH', '0000-00-00', 'LAL SINGH RATHORE', 'LATA RATHORE', 'H2 HARIDAS JI KI MAGRI', '', 11, 1, 1, '3224', 'harshvardhansingh', '29877cf67e2e93e5d1f6a09b24662914', '9829398608', '98293986208', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(487, 487, 0, 5, 'HASNAIN RAZA  MANSOORI', '0000-00-00', 'AHMED HUSSAIN MANSOORI', 'PARVEEN BANO', '06 RATA KHETA 80 FEET ROAD', '', 11, 1, 1, '3693', 'hasnainrazamansoori', '9cba67de21645cb03b58e38f41e73041', '9829243678', '9636813076', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(488, 488, 0, 5, 'KANIZ FAATMA  ', '0000-00-00', 'MOHAMMED AYUB', 'MAKSUDA BANU', '3 GAVRI CHOWK RATA KHETA BACK SIDE', '', 11, 1, 1, '3628', 'kanizfaatma', '1e1286d59ae5817b70c5d2d4a3ce9f8e', '9667881150', '9783244086', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(489, 489, 0, 5, 'KARAN  SONI', '0000-00-00', 'VISHNU SONI', 'SUNITA SONI', 'J-33 HARIDAS JI KI MAGRI MALLA TALAI', '', 11, 1, 1, '1931', 'karansoni', 'fe5ef492f4e482ef9a58bf551e577c4b', '9828205159', '9828205159', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(490, 490, 0, 5, 'KHUSHI  JOSHI', '0000-00-00', 'KAILASH JOSHI', 'MANJU JOSHI', 'B-9 HARIDAS JI KI MAGRI', '', 11, 1, 1, '1948', 'khushijoshi', '69e267f465e038cb58905eb79308efa3', '9929098117', '9929098177', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(491, 491, 0, 5, 'MOHAMMED AMAN  ', '0000-00-00', 'MOHAMMED NISAR', 'MEHRUNISHA', 'OTC, SCHEME CHIPPA COLONY', '', 11, 1, 1, '1999', 'mohammedaman', '492f8bec142e28e88eb95f80373232df', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(492, 492, 0, 5, 'MOHAMMED ARSH  KHAN', '0000-00-00', 'SHAHID KHAN', 'TARRANNUM KHAN', '80 FEET ROAD, B-BLOCK SAJJAN NAGAR', '', 11, 1, 1, '2516', 'mohammedarshkhan', 'b07abef3b0237d7e775a98cc5389e341', '9414289951', '9414289951', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(493, 493, 0, 5, 'MOHAMMED ASJAD  RAZA', '0000-00-00', 'MOHAMMED IRFAN', 'ANJUM PARVEEN', '330, HATIPOLE UPPER KI MASJID SILAWAT WADI', '', 11, 1, 1, '2781', 'mohammedasjadraza', '82e4941405da95e7bd426dacb4f6db84', '9413093700', '9413093700', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(494, 494, 0, 5, 'MOHAMMED SERVER  ', '0000-00-00', 'JAVED HUSSAIN', 'SABRINA', '242, MALLA TALAI MANSURY COLONY', '', 11, 1, 1, '2788', 'mohammedserver', '0751d37789cadde44dd7cdced51163c5', '9460666838', '9460666838', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(495, 495, 0, 5, 'MOHAMMED SOYAL  ', '0000-00-00', 'MOHAMMED ASLAM', 'SHEHNAAZ PRAVEEN', 'CHIPA COLONY', '', 11, 1, 1, '1957', 'mohammedsoyal', '46351b9fe48d4558b7439f2fd251494b', '9829337350', '9829337350', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(496, 496, 0, 5, 'MOHIT  SUTHAR', '0000-00-00', 'DINESH KUMAR SUTHAR', 'HEMLATA', '36 KANHAYA NAGAR NEAR GAS GOUDAM', '', 11, 1, 1, '3534', 'mohitsuthar', 'c8eb0ec11a843d44ec48a557b72b0916', '9414229704', '9001695135', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(497, 497, 0, 5, 'MUKUL  YADAV', '0000-00-00', 'MUKESH YADAV', 'MAMTA YADAV', '9-K, HARIDAS JI KI MAGRI', '', 11, 1, 1, '1939', 'mukulyadav', '4684332412aad9fe26d3a5b684a8c039', '9829183481', '9829183481', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(498, 498, 0, 5, 'NAVED  KHAN', '0000-00-00', 'SALIM KHAN', 'NAHID KHAN', '146, RAZA COLONY', '', 11, 1, 1, '1942', 'navedkhan', 'b59ffdb5052542a490c5978cc56e7226', '9783858521', '9783858521', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(499, 499, 0, 5, 'NIDA  KHAN', '0000-00-00', 'IRSHAD HUSSAIN', 'YASMEEN', '34, RATA KHET SAJJAN NAGAR', '', 11, 1, 1, '1997', 'nidakhan', '6f111a716abef3c54b10dfea5b63868e', '9828077713', '9828077713', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(500, 500, 0, 5, 'PALAK  LAKHARA', '0000-00-00', 'ANAND LAKHARA', 'SAJJAN LAKHARA', 'DUDHIYA GANESH JI, MALLA TALAI', '', 11, 1, 1, '2220', 'palaklakhara', 'af936eeb133932763d32c366f6421e9a', '7737671311', '7737671311', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(501, 501, 0, 5, 'RANJANA  DANGI', '0000-00-00', 'KESHAV LAL DANGI', 'KANKU DEVI DANGI', '1-4 POLICE QUARTER,MALLA TALAI', '', 11, 1, 1, '3380', 'ranjanadangi', 'cd2aec26d9408f21dd80c194be28f980', '9799211467', '9799211467', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(502, 502, 0, 5, 'SADAF  BANU', '0000-00-00', 'ISMAIL HUSSAIN', 'PAKIJA BANO', 'H.N.25 HARIDAS JI KI MAGRI, MALLA TALAI', '', 11, 1, 1, '2854', 'sadafbanu', '1a6742534a25c252cdd03667982ec668', '9929199798', '9929199798', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(503, 503, 0, 5, 'SAHIL  KHAN', '0000-00-00', 'FARUKH KHAN', 'SHAMIM KHAN', 'SAJJAN NAGAR', '', 11, 1, 1, '3222', 'sahilkhan', '97d514258d8480c231e08489f61c3bc3', '9694331040', '9694331040', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(504, 504, 0, 5, 'SANA  RUHEEN', '0000-00-00', 'ABDUL HAMID', 'SHAHEENA ALI', '271, GARIB NAWAZ COLONY GALI NO.3', '', 11, 1, 1, '3011', 'sanaruheen', '695ec58a7511f2a3c54cf1c99e1e7a8b', '7737577455', '7737577455', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(505, 505, 0, 5, 'SURBHI  KUMAWAT', '0000-00-00', 'RAMESHWAR KUMAWAT', 'ANITA KUMAWAT', 'JAGDISH CHOWK', '', 11, 1, 1, '3225', 'surbhikumawat', '453c289400cc7b12d7187d103b5f91a7', '9983444672', '9983444672', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(506, 506, 0, 5, 'UMMEHABIBA  MAV', '0000-00-00', 'ASHFAQUE PATHAN', 'SIDDIQA RANI MAV', 'A-222, SAJJAN NAGAR', '', 11, 1, 1, '2269', 'ummehabibamav', 'd91d17b4f2854d70a045f1f5a5c48f4b', '9460943786', '9468583786', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(507, 507, 0, 5, 'AAKASH  SONI', '0000-00-00', 'SAMPAT LAL SONI', 'BHARTI SONI', '16, PRAGATI NAGAR SAJJAN NAGAR ROAD', '', 12, 1, 1, '2859', 'aakashsoni', '519d4cb76c9a3604dfc725f99fad0afb', '9460207918', '9460207918', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(508, 508, 0, 5, 'AAYAN  SHEIKH', '0000-00-00', 'HASNUDEEN SHEIKH', 'FARZANA SHEIKH', '56, CHITTORA KA TIMBA, ABOVE JATWARI', '', 12, 1, 1, '1701', 'aayansheikh', 'dcaf545df6cbb4562416ac39123d3921', '9828152965', '9828152965', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(509, 509, 0, 5, 'ALFIA  KHAN', '0000-00-00', 'RAEES KHAN', 'SHABAANA KHAN', '146, RAZA COLONY MALLA TALAI', '', 12, 1, 1, '1633', 'alfiakhan', '7ab41eaeb28ff314a176d9c2e2502a63', '8233765377', '8233765377', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(510, 510, 0, 5, 'ALMAS  SIDDIKA', '0000-00-00', 'MOHD HANIF', 'MUMTAJ', '528/16 OTC SCHEME CHIPPA COLONY', '', 12, 1, 1, '1673', 'almassiddika', 'b39b8d11804d6c4d37a754e5d89acf84', '9928183879', '9928183879', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(511, 511, 0, 5, 'ASMA  BANU', '0000-00-00', 'MOHAMMED FARUKH MANSOORI', 'KHURSHIDA BANO', 'MOKHDUM NAGAR,IN FRONT OF MASTANA BABA', '', 12, 1, 1, '1697', 'asmabanu', 'f6758d0cc0be7648785d49b9e383795e', '9414263557', '9414263557', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(512, 512, 0, 5, 'ASRA  SHEIKH', '0000-00-00', 'MOHAMMED ISHAQUE', 'BUSHRA SHEIKH', '148,RAZA COLONY,MALLA TALAI', '', 12, 1, 1, '1682', 'asrasheikh', 'c359b74b52a467cc0ff1ac60412a50ba', '2942431346', '9929303432', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(513, 513, 0, 5, 'DHRUVIKA  SUTHAR', '0000-00-00', 'SURESH CHANDRA SUTHAR', 'MANJU SUTHAR', '606, KARMSHEEL MARG, KHODI IMLI OUTSIDE CHANDPOLE', '', 12, 1, 1, '1684', 'dhruvikasuthar', '0265e30348522fa1216952aa70279ab8', '9413045468', '9413045468', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(514, 514, 0, 5, 'HIMANSHU  BHOI', '0000-00-00', 'LOKESH BHOI', 'PREM DEVI', 'HARIDAS JI KI MAGRI', '', 12, 1, 1, '3435', 'himanshubhoi', '1b843ce1f36af3f29567396c9c25fc7e', '8875554406', '8875554406', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(515, 515, 0, 5, 'KUNAL  SEN', '0000-00-00', 'HEMENDRA SEN', 'SHARDHA SEN', '94,RAO JI KA HATA', '', 12, 1, 1, '2040', 'kunalsen', 'ef3d04dcefbb82ea42ca0205e928a69b', '9784302632', '9001626160', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(516, 516, 0, 5, 'KUNAL  YADAV', '0000-00-00', 'RAJ KUMAR YADAV', 'MANJU YADAV', 'K-8, HARIDAS JI KI MAGRI', '', 12, 1, 1, '1706', 'kunalyadav', '0025fb3cf0d6bd140b347c44330e8b9b', '9672648081', '9828748081', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(517, 517, 0, 5, 'MOHAMMED AANAM  ', '0000-00-00', 'ASLAM KHAN', 'ANJUM NISHA', '146 FAROOQ-E-AZAM, NAGAR MALLA TALAI', '', 12, 1, 1, '2018', 'mohammedaanam', '8ab6cfe86e9a2ae76cf3d2a5c71fcabd', '9784765745', '9784765745', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(518, 518, 0, 5, 'MOHAMMED BILAL  MANSOORI', '0000-00-00', 'AHMED HUSSAIN MANSOORI', 'PARVEEN BANO', '06 RATA KHETA 80 FEET ROAD BEHIND RIMZIM WATIKA', '', 12, 1, 1, '3694', 'mohammedbilalmansoori', 'f77eb61a55ad552c9435ea01394652c5', '9829243678', '9636813076', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(519, 519, 0, 5, 'MOHAMMED MUSHAHID RAZA', '0000-00-00', 'MOHAMMED MUSHARRAF RAZA', 'RUKHSANA MUSHARRAF', '408/2 SILAWAT WARI INSAID HATIPOLE', '', 12, 1, 1, '3524', 'mohammedmushahidraza', '42095b8af0744e8d9a2ab35d82257237', '82395477371', '8290390433', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(520, 520, 0, 5, 'NOOR FATIMA ', '0000-00-00', 'FARID AHMED', 'RUKHSANA BANO', '246 NEAR BIG PARK MALLA TALAI', '', 12, 1, 1, '3523', 'noorfatima', 'fa8494c5226dec15133a3bd1508a8c16', '9983361733', '9462627722', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(521, 521, 0, 5, 'SIDDHARTH  CHOUDHARY', '0000-00-00', 'HEMENDRA CHOUDHARY', 'PUSHPA CHOUDHARY', 'NAI VILLAGE DEVA DEWARI KE PASS', '', 12, 1, 1, '3638', 'siddharthchoudhary', 'e513def30f012d5c1a156a63974f2861', '9928353710', '9928353710', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(522, 522, 0, 5, 'AKSHAT  GOSWAMI', '0000-00-00', 'HARISH GOSWAMI', 'RAJNI GOSWAMI', '10, KOLPOL, BADA BAZAR', '', 13, 1, 1, '1522', 'akshatgoswami', 'd3c2c1918cad09667b5073e8a8063782', '9950777503', '9829228915', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(523, 523, 0, 5, 'ANKIT  TELI', '0000-00-00', 'VIJAY SHANKER TELI', 'SITA DEVI', 'VINAYAK CHOUK BHUJDA', '', 13, 1, 1, '1565', 'ankitteli', '4308d82385f5237968b4a25d82d6240c', '9001237998', '7568758606', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(524, 524, 0, 5, 'ASHAD  AHMED', '0000-00-00', 'JAHID AHMED', 'SHABANA BANO', '306, GARIB NAWAZ COLONY', '', 13, 1, 1, '2249', 'ashadahmed', 'ae6f30ca4bf32f1b0d4fa212b1ba7f34', '9950240385', '9950240385', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(525, 525, 0, 5, 'DEEPAK  LAKHARA', '0000-00-00', 'ANANDI LAKHARA', 'SAJJAN LAKHARA', 'DUDHIYA GANESH JI, MALLA TALAI', '', 13, 1, 1, '1447', 'deepaklakhara', '2f2db3a4f257bb1cfd25136b93931f8d', '7737671311', '7737671311', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(526, 526, 0, 5, 'DIKSHA  SEN', '0000-00-00', 'SUNIL SEN', 'PINKY SEN', '5,BHATT  WADI, AMBAMATA', '', 13, 1, 1, '1468', 'dikshasen', '7c4716ecc9b4001348059d9cbb3d3351', '7742778818', '9784564118', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(527, 527, 0, 5, 'DIVYA  JOSHI', '0000-00-00', 'RAJESH JOSHI', 'GAYATRI JOSHI', 'A-BLAOCK, 167 SAJJAN NAGAR', '', 13, 1, 1, '1763/B', 'divyajoshi', '4c38c1a445b19a0a3f585873026659de', '9929424202', '9929424202', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(528, 528, 0, 5, 'DIVYANSH  SEN', '0000-00-00', 'PANKAJ SEN', 'SHEETAL SEN', '2 VISHAL NAGAR RAMPURA', '', 13, 1, 1, '1733/A', 'divyanshsen', '3c943ba7c54eee821fdf053de86260b4', '9829611916', '7688852911', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(529, 529, 0, 5, 'DIVYANSH  SONI', '0000-00-00', 'LALIT SONI', 'RANI SONI', '237, YADAV COLONY AMBAMATA', '', 13, 1, 1, '1620', 'divyanshsoni', '56b80bdc5be50358ef339d449c23648d', '9828824774', '9828824774', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(530, 530, 0, 5, 'FAIZAN  RAZA', '0000-00-00', 'FARID MOHD', 'NASREEN SHEIKH', '308 FARUKH A AZAM COLONY', '', 13, 1, 1, '2289', 'faizanraza', '1f29cf09a4407176da9fb6809940e7a6', '9829187425', '9829187425', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(531, 531, 0, 5, 'HAREEM RAZA ', '0000-00-00', 'MOHAMMED SIDDIQUE', 'MUMTAJ', '368, FARUQ AZAM COLONY, MALLA TALAI', '', 13, 1, 1, '2045', 'hareemraza', 'd606525b28256a1a97294e98bf1a1a7c', '9587227292', '9549362181', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(532, 532, 0, 5, 'IRAM  BANO', '0000-00-00', 'SHOKAT HUSSAIN', 'SHABANA BANU', 'DDP MOSQUE', '', 13, 1, 1, '2037', 'irambano', '0fd7f8383cd3f076bde662cda3f5f0ea', '9828071333', '9828071333', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(533, 533, 0, 5, 'KUSHAGRA  RAJMALI', '0000-00-00', 'JUGAL KISHORE RAJMALI', 'MANJU RAJMALI', 'L-47-MALLA TALAI NEAR MANSURI PARK', '', 13, 1, 1, '2174', 'kushagrarajmali', 'f6b799df59251aa87a5e72edff38cd96', '9799970921', '9929900498', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(534, 534, 0, 5, 'LOVELY  YADAV', '0000-00-00', 'VIKAS KUMAR YADAV', 'BALLO YADAV', 'K-24, HARI DAS JI KI MAGRI MALLA TALAI', '', 13, 1, 1, '3043', 'lovelyyadav', '8db64b5aa247141edf99a27f227ec1bd', '9610970092', '9783238431', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(535, 535, 0, 5, 'MOHAMMED USMAN  ', '0000-00-00', 'MOHAMMED FARUK', 'MOSINA ANJUM', '528/140 OTC NEAR PANI KI  TANKI CHIPPA COLONY', '', 13, 1, 1, '1644', 'mohammedusman', '2070b0e68e64a742755ba882b77bf11c', '9660989614', '9660989614', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(536, 536, 0, 5, 'NILESH  TELI', '0000-00-00', 'KHEM RAJ  TELI', 'RATAN DEVI', '18 NATHI GHAT MARG INSAID BRAHM POLE', '', 13, 1, 1, '3528', 'nileshteli', '031cdc9c79bccce351bb89a21d857faf', '9530075026', '9499470247', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(537, 537, 0, 5, 'PAYAL  SUTHAR', '0000-00-00', 'DINESH KUMAR SUTHAR', 'HEMLATA DEVI', '360KANHAYA NAGAR GAS GOUDAM RAMPURA', '', 13, 1, 1, '3535', 'payalsuthar', '0e6e129f9e0624523e7d1fd106d2bf65', '9414229704', '9828449576', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(538, 538, 0, 5, 'RUCHIKA  BHATI', '0000-00-00', 'DEVI SINGH', 'SUSHILA BHATI', '83, AMAR NAGAR', '', 13, 1, 1, '1608', 'ruchikabhati', 'c7a05534fdc4ecf82c0028cdee6bb3b9', '9214648827', '9214648827', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(539, 539, 0, 5, 'VIVEK  SONI', '0000-00-00', 'MAHENDRA PRAKASH SONI', 'HEMLATA SONI', '30, SUBHASH MARG JADIYO KI OAL', '', 13, 1, 1, '1578', 'viveksoni', 'd46778c19edfa8e19ec2e456d6c3766e', '9828075639', '9828075639', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(540, 540, 0, 5, 'GOURANSH  PATWA', '0000-00-00', 'SATISH PATWA', 'SEEMA PATWA', 'H.NO. 140, NAGA NAGRI CHANDPOLE', '', 5, 2, 1, '3442/14', 'gouranshpatwa', 'c2afab861861d1f451d0cc1f9534c5de', '9829193278', '9829193278', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(541, 541, 0, 5, 'IRAM  NAAZ', '0000-00-00', 'SHABBIR HUSSAIN', 'KULSUM BANO', 'K-16, SAJJAN NAGAR MASTANA BABA', '', 5, 2, 1, '3411', 'iramnaaz', '784a67e26c6bf451f7dd5dcac6e4532d', '7737545016', '7737545016', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(542, 542, 0, 5, 'JAGRATI  SEN', '0000-00-00', 'PRAMOD KUMAR SEN', 'MADHU SEN', 'J-33 HARIDAS JI KI MAGRI, BALVINAY MANDIR HOSTEL KA BESIDE.', '', 5, 2, 1, '3322', 'jagratisen', '35cf941117430bd99f17f07f28850a87', '7665522073', '7665522073', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(543, 543, 0, 5, 'KRIPA  KALAL', '0000-00-00', 'VIKRAM KALAL', 'ANJALI KALAL', '78-KD RATA KHET UDAIPUR NEAR BALSHIKSHA SADAN', '', 5, 2, 1, '3323', 'kripakalal', '39f12390cc09c478b1498ed2f2173792', '9829489490', '9829489490', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(544, 544, 0, 5, 'KUSUM  SAHU', '0000-00-00', 'KAILASH SAHU', 'PUSHPA SAHU', 'HARIDASH JI KI MAGRI', '', 5, 2, 1, '3331', 'kusumsahu', '748184a77012dc09f9b813cfd7b71c41', '9784410715', '9784410715', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(545, 545, 0, 5, 'MOHAMMED ABDUL  QUYYUM', '0000-00-00', 'MOHAMMED RAZZAK', 'SHABANA BANO', '92,RAZA COLONEY MALLA TALAI', '', 5, 2, 1, '3396', 'mohammedabdulquyyum', 'd23225f4bd2551011a1f7b93066fc8ba', '9982455927', '9983312002', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(546, 546, 0, 5, 'MOHAMMED ADNAN  ', '0000-00-00', 'MOHAMMED SHAKEEL', 'SANJIDA BANU', '23,RATA KHET NEAR GAVRI CHOWK', '', 5, 2, 1, '3166', 'mohammedadnan', '26399466cb1504d74868a07a723c6385', '9929614622', '9929614622', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(547, 547, 0, 5, 'MOHAMMED ARMAN  ', '0000-00-00', 'MOHAMMED HUSSAIN', 'RANU TABASSUM', '1638,RATA KHET GAWARI CHOWK', '', 5, 2, 1, '3333', 'mohammedarman', 'd9aa1e72a3df927e3060721c92ca881a', '9829354602', '7742300201', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(548, 548, 0, 5, 'NAVYA VAISHNAV  ', '0000-00-00', 'MANOJ VAISHNAV', 'PRAMILA VAISHNAV', 'BEHIND KOTHARI SADAN UBESHWAR ROAD RAMPURA', '', 5, 2, 1, '3725', 'navyavaishnav', 'dde5b266439359cc6728be88d90bdc56', '9928536261', '9928536261', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(549, 549, 0, 5, 'SHARAD  AKHAWAT', '0000-00-00', 'ASHOK AKHAWAT', 'MADHU', '315/B GARIB NAWAZ COLONY', '', 5, 2, 1, '3410', 'sharadakhawat', '4f3b2f094b8546d0652f864711838c83', '9672104270', '9414012353', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(550, 550, 0, 5, 'ALINA  NOORANI', '0000-00-00', 'MOHAMMED SHARIF MANSOORI', 'SAYRA BEGAM', '3077 B BLOCK SAJJAN NAGAR 80 FEET ROAD MALLA TALAI', '', 6, 2, 1, '3679', 'alinanoorani', '890705c562cbafa02784ac7823297f93', '8963008042', '9660483984', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(551, 551, 0, 5, 'ALOK  BHARTI', '0000-00-00', 'SEWA RAM BHARTI', 'REETA BHARTI', 'B-4, HARI DAS JI KI MAGRI, MALLA TALAI', '', 6, 2, 1, '3441/14', 'alokbharti', '820abb720df6f535209b81f565412999', '9166577749', '9166577749', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(552, 552, 0, 5, 'ANKIT  SAHANI', '0000-00-00', 'MONTU SAHANI', 'REENA DEVI', 'B-12 HARIDAS JI KI MAGRI', '', 6, 2, 1, '3130', 'ankitsahani', 'd9deb50f8e7182f833f274680b9c02c0', '9602512771', '9602512771', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(553, 553, 0, 5, 'JAYESH  OAD', '0000-00-00', 'BHAGWATI LAL OAD', 'DURGA OAD', 'B-30, HARI DAS JI KI MAGRI', '', 6, 2, 1, '3104', 'jayeshoad', '99a42237e2b22e03d1515731ef7f47dc', '9680258463', '9680258463', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(554, 554, 0, 5, 'MOHAMMED AADIL  ', '0000-00-00', 'AKIL MOHAMMED', 'KANIZA BANU', '23,RATA KHET NEAR GAVRI CHOWK', '', 6, 2, 1, '3102', 'mohammedaadil', '768bb94ab4b43da7d333e043b3fa912f', '9166852825', '9166852825', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(555, 555, 0, 5, 'MOHAMMED AZLAN  MANSOORI', '0000-00-00', 'MUSHTAQ AHMED', 'SHAMIM', '293,FAROOQ-E-AZAM NAGAR MALLA TALAI', '', 6, 2, 1, '3149', 'mohammedazlanmansoori', '0b884a6a8d150a09e9c15ee517c8946a', '9460801595', '9460801595', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(556, 556, 0, 5, 'MUHIYUDDIN  HUSSAIN', '0000-00-00', 'AAFTAB HUSSAIN', 'TEHMEENA NAZ SHEIKH', '9,DR. ZAKIR HUSSAIN MARG, INSIDE HATHIPOLE, UDAIPUR.', '', 6, 2, 1, '3361', 'muhiyuddinhussain', '2319742278be23c7fd3dcb7f93cd64d3', '9928240420', '9928240420', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(557, 557, 0, 5, 'PAWAN KUMAR SUHALKA', '0000-00-00', 'BHUPENDRA SUHALKA', 'FULWANTI SUHALKA', '63, RAMPURA POST SISARMA', '', 6, 2, 1, '3108', 'pawankumarsuhalka', '323e36f957ceec3387cad9cdd0ce3a26', '9772143053', '9772143053', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(558, 558, 0, 5, 'PAYAL  SUHALKA', '0000-00-00', 'PANKAJ SUHALKA', 'YASHODA SUHALKA', '', '', 6, 2, 1, '2907', 'payalsuhalka', '25bc6482f63bc90a3764653f0aeb5c55', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(559, 559, 0, 5, 'SHAHID  RAZA', '0000-00-00', 'SWALEH MOHD', 'NOORANI BANU', '235,MALLA TALAI', '', 6, 2, 1, '3091', 'shahidraza', '5e230ac51a721b5776833285fc7bd4c9', '96364655801', '9636465801', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(560, 560, 0, 5, 'ALISHA  KHAN', '0000-00-00', 'RAIS KHAN', 'KANIZ FATIMA', '271,A-BLOCK, SAJJAN NAGAR', '', 7, 2, 1, '3019', 'alishakhan', '195186daeb3b5bf2675f3dbc4010ffe9', '9460828972', '9460828972', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(561, 561, 0, 5, 'ASMA BANO MANSOORI', '0000-00-00', 'FARID AHMED MANSOORI', 'RUKSANA BANO', '246 NEAR MANSOORI PARK MULLA TALAI', '', 7, 2, 1, '3521', 'asmabanomansoori', 'c195806ce645706ddf5bdef1c52d01ca', '9983361733', '9462627722', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(562, 562, 0, 5, 'BHANU PRATAP  BAIRWA', '0000-00-00', 'PRAKASH CHANDRA BAIRWA', 'SHAKUNTLA', 'HARIDAS JI KI MAGRI MALLA TALAI UDAIPUR', '', 7, 2, 1, '2983', 'bhanupratapbairwa', 'd1559571f8f8cfa3a4dfdca450a3781c', '9828354287', '9828354287', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(563, 563, 0, 5, 'BHAVESH  KASERA', '0000-00-00', 'SURENDRA KASERA', 'KIRAN KASERA', '19 BHADESSAR KA CHOWH JAGDISH CHOWK', '', 7, 2, 1, '3539', 'bhaveshkasera', 'e1f62b2e40f032c2ef146368dd817299', '9636591589', '7239857513', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(564, 564, 0, 5, 'JINAL  GEHLOT', '0000-00-00', 'RAJESH GEHLOT', 'AARTI GEHLOT', '29-B, KESHAV NAGAR', '', 7, 2, 1, '2891', 'jinalgehlot', 'b91fcf52dd4f89b7f8a5c375147133b7', '9829147147', '9829147147', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(565, 565, 0, 5, 'MASUMA  KHATUN', '0000-00-00', 'MOHAMMED ALI', 'TUHEENA BIBI', '14, KOL POLE BADA BAZAR', '', 7, 2, 1, '3016', 'masumakhatun', 'b216183c59cb6ffc04c4051cf303858f', '9024974722', '9024974722', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(566, 566, 0, 5, 'MOHAMMED ADNAN  MANSOORI', '0000-00-00', 'MOHAMMED AYUB MANSOORI', 'IRFANA BANU', 'S-22 NEAR SHIV MANDIR GANDHI NAGAR', '', 7, 2, 1, '3681', 'mohammedadnanmansoori', '53874714fc8960f1e529e3882f28abe8', '9828206786', '9928926592', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(567, 567, 0, 5, 'MOHAMMED FAIZAL  KHAN', '0000-00-00', 'MOHD SALIM KHAN', 'FARHAT KHAN', 'H.NO.54, JATWADI', '', 7, 2, 1, '2901', 'mohammedfaizalkhan', '9e87eb9b094bceb75e5482252ea1cce5', '9461260289', '9829662564', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(568, 568, 0, 5, 'MOHAMMED REHAN  ', '0000-00-00', 'MOHAMMED FARUK', 'MOHSINA', '528/14 OTC', '', 7, 2, 1, '3074', 'mohammedrehan', 'd0f5987d0ed701fb9cae8081c6045d2d', '0', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(569, 569, 0, 5, 'MOHAMMED SARIK  KHAN', '0000-00-00', 'MOHAMMED TARIK KHAN', 'SHIREEN', 'AHMED HUSSAIN COLONY BEHIND MASTANA BABA', '', 7, 2, 1, '3052', 'mohammedsarikkhan', '0ca7980a071db797f3c8da4684d3c39a', '0', '0', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(570, 570, 0, 5, 'MOHAMMED TOQEER  RAZA', '0000-00-00', 'ABDUL ATIK SHEIKH', 'SHAFEENA SHEIKH', '40,DR.RAM MANNOHAR LOHIYA NAGAR SAJJANNAGAR', '', 7, 2, 1, '2956', 'mohammedtoqeerraza', 'ecd9b42b15e9f9a20d968a0482a30e88', '9001788995', '9001788995', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(571, 571, 0, 5, 'MOHAMMED UBAID  ASHRAF', '0000-00-00', 'MOHAMMED AYUB', 'MAKSUDA BANU', '3,RATAKHET, GGARI CHOUK SAJJAN NAGAR', '', 7, 2, 1, '2929', 'mohammedubaidashraf', '2e0a6f785b94d8804bf829e4f29937a6', '9783244086', '9783244086', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(572, 572, 0, 5, 'RUDRAKSHI  SONI', '0000-00-00', 'GOPAL SONI', 'MEENA SONI', '13-A AZAD NAGAR 80 FEET ROAD', '', 7, 2, 1, '3362', 'rudrakshisoni', '6da2c976a1d4ef50ecef01b73d64f44b', '8769669800', '8058241088', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(573, 573, 0, 5, 'SARA  ALI', '0000-00-00', 'WAZID ALI MANSOORI', 'ANISHA ALI', '3-RATA KHET GAVRI CHOUK', '', 7, 2, 1, '2928', 'saraali', 'ac6d847b673b91b2f62a506806888176', '', '9887434233', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(574, 574, 0, 5, 'UNEZA  KHAN', '0000-00-00', 'YUSUF BAKSH', 'SALMA PATHAN', 'GANDHI NAGAR IN FRONT OF MASTAN PIYA', '', 7, 2, 1, '2959', 'unezakhan', '70ca76d26b9ea1cbc6089568106c9524', '9982184843', '9982184843', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(575, 575, 0, 5, 'YASH  SAHU', '0000-00-00', 'KAILASH SAHU', 'PUSHPA SAHU', '19 -K, HARIDAS JI KI MAGRI UDAIPUR', '', 7, 2, 1, '2932', 'yashsahu', 'e66ce4b7144f0c04e07c8b934a9228c5', '0', '0', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(576, 576, 0, 5, 'ARMANA BEE  ', '0000-00-00', 'MUMTAZ ALI', 'REHANA BEE', '', '', 8, 2, 1, '3662', 'armanabee', 'e9c61d57e57c3150d3690a50b0cbf010', '9950500986', '9950500986', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(577, 577, 0, 5, 'CHESHTA  CHOUDHARY', '0000-00-00', 'DILIP CHOUDHARY', 'SAROJ CHOUDHARY', 'VILLAGE NAI', '', 8, 2, 1, '3189', 'cheshtachoudhary', 'e321c947d1071985ae2ddae8fb924da7', '9828681419', '9828681419', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(578, 578, 0, 5, 'DAYAWANTI TELI  ', '0000-00-00', 'MADAN TELI', 'PUSHPA TELI', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '', 8, 2, 1, '3739', 'dayawantiteli', '18e9fb87c5d61ed0d2df226ba3b87df7', '9782873742', '9782177951', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(579, 579, 0, 5, 'FAIZAN  HUSSAIN', '0000-00-00', 'SHABBIR HUSSAIN', 'FARZANA', 'RAZA COLONY, MALLA TALAI', '', 8, 2, 1, '3190', 'faizanhussain', 'c4d10eb2f34f6c0e661610eb5783dcc1', '9784346748', '7742130474', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(580, 580, 0, 5, 'ISHIKA  MALHOTRA', '0000-00-00', 'KISHORE MALHOTRA', 'USHA MALHOTRA', '496,OTC D-BLOCK GANDHI NAGAR', '', 8, 2, 1, '3303', 'ishikamalhotra', '687faecc082a2ad5350ba456ae221d29', '9214977722', '9214977722', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(581, 581, 0, 5, 'JUHI  PANWAR', '0000-00-00', 'MAHESH PANWAR', 'SUNITA PANWAR', '38,B HARIDAS JI KI MAGRI', '', 8, 2, 1, '2720', 'juhipanwar', '3a00f1e59138a53a0d95f18af439da4c', '9672032029', '9672032029', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(582, 582, 0, 5, 'KHUSHI  KASERA', '0000-00-00', 'SHANKAR KASERA', 'ASHA KASERA', 'O/SIDE BHRAMHPOLE', '', 8, 2, 1, '3200', 'khushikasera', 'e5f7b8b3147306157254d72e368d58bc', '9828298703', '9828298703', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(583, 583, 0, 5, 'MAHINOOR  KHAN', '0000-00-00', 'TAHIR HUSSAIN', 'REHANA KHAN', '697,MALLA TALAI, NEAR MAGRI SCHOOL', '', 8, 2, 1, '2734', 'mahinoorkhan', 'fc36b1eab3e186ac4caecbe6fc5a113b', '9001321709', '9001321709', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(584, 584, 0, 5, 'MOHAMMED ABDUL RAZZAQ ', '0000-00-00', 'YUSUF KHAN', 'MUBINA BANU', 'AHMED HUSSAIN COLONY, MASTANA BABA BEHIND GALI NO.3', '', 8, 2, 1, '3201', 'mohammedabdulrazzaq', '8582ec7e5202d58ccd290b1c924f4388', '8302788322', '8302788322', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(585, 585, 0, 5, 'MOHAMMED FAIZAN  ', '0000-00-00', 'ABID HUSSAIN', 'SABRA BANO', '28 - NEW RAMPURA SISARMA ROAD', '', 8, 2, 1, '2739', 'mohammedfaizan', '315faf4f695b30a90815932d2f981c9d', '9829206375', '9829206375', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(586, 586, 0, 5, 'MOHAMMED REHAN  ', '0000-00-00', 'MOHAMMED RAZZAK KHAN', 'SHABANA BANO', '92, MALLA TALAI RAZA COLONY', '', 8, 2, 1, '2731', 'mohammedrehan', 'd0f5987d0ed701fb9cae8081c6045d2d', '9922836599', '9922836599', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(587, 587, 0, 5, 'NIHANSHI  SONI', '0000-00-00', 'LALIT SONI', 'RANI SONI', '237, YADAV COLONY', '', 8, 2, 1, '2697', 'nihanshisoni', 'c9e3e77647ab101a302dbdd0240be40f', '9828824774', '9828824774', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(588, 588, 0, 5, 'PIYUSH  SEN', '0000-00-00', 'SUNIL SEN', 'PREETI SEN', 'HARIDAS JI KI MAGRI H.NO.- K-19', '', 8, 2, 1, '2915', 'piyushsen', 'd0b3c17da4f9f643094e567213bd95cc', '9982652404', '9982652404', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(589, 589, 0, 5, 'PREETAM SINGH BHATI', '0000-00-00', 'DEVI SINGH BHATI', 'SHUSHILA BHATI', 'HN 83 OTC B BLOCK AMAR NAGAR', '', 8, 2, 1, '3354', 'preetamsinghbhati', 'eea044cdb64e0934252ef0b356781b22', '9214658827', '9214658827', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(590, 590, 0, 5, 'PRITHVIRAJ SINGH CHOUHAN', '0000-00-00', 'HARENDRA SINGH CHOUHAN', 'POONAM CHOUHAN', '222, HARSH NAGAR RAMPURA', '', 8, 2, 1, '2876', 'prithvirajsinghchouhan', '83631e1b556846bca6cd01fd67af04d7', '9602609687', '9602609687', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(591, 591, 0, 5, 'RUDRAKSHI  SONI', '0000-00-00', 'HEMANT SONI', 'DEEPIKA SONI', '45 DHABAI JI KI BARI NEAR CHOUDHRY GUEST HOUSE UBESHWAR JI ROAD', '', 8, 2, 1, '3696', 'rudrakshisoni', '6da2c976a1d4ef50ecef01b73d64f44b', '9783112929', '9783112929', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(592, 592, 0, 5, 'VISHAL  PATEL', '0000-00-00', 'GANESH LAL PATEL', 'DEVI PATEL', 'K215 , KARMSHEEL MARG AMBAWARI CHANDPOLE BAHAR', '', 8, 2, 1, '3045', 'vishalpatel', '9c04e33c6b530124d3fe4450164a3e93', '9928534306', '9928534306', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(593, 593, 0, 5, 'YASH  PARIHAR', '0000-00-00', 'KAMLESH PARIHAR', 'RANU PARIHAR', '334, GANDHI NAGAR MALLA TALAI', '', 8, 2, 1, '2878', 'yashparihar', 'ac05171be337406859dca89691ac4bc8', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(594, 594, 0, 5, 'BHARAT  KHILOLIYA', '0000-00-00', 'AMRIT KHILOLIYA', 'HEMALATA KHILOLIYA', '31, B- HARIDAS JI KI MAGRI', '', 9, 2, 1, '2887', 'bharatkhiloliya', 'c092232ddf4a7696d3be396578520625', '9414926902', '9414926902', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(595, 595, 0, 5, 'BHUMI  CHOUHAN', '0000-00-00', 'RANVEER CHOUHAN', 'RADHA CHOUHAN', 'H.NO.370, AMBAMATA YADAV COLONY', '', 9, 2, 1, '2299', 'bhumichouhan', '8f5542ad1a6d161f02611224062ad8f2', '9352460595', '9352460595', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(596, 596, 0, 5, 'DARSHIL  SUHALKA', '0000-00-00', 'RAMESH SUHALKA', 'JASHODA SUHALKA', '272, SAJJAN NAGAR ROAD.', '', 9, 2, 1, '2419', 'darshilsuhalka', '45569c747208386cbe609c456d1b31c3', '9636650047', '9636650047', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(597, 597, 0, 5, 'DEEPESH  YADAV', '0000-00-00', 'JAI PRAKASH YADAV', 'SEEMA YADAV', '13,YADAV COLONY, AMBA MATA', '', 9, 2, 1, '3203', 'deepeshyadav', '7fad07f24f4bc5bcc9143f1248473d9c', '9413088894', '9929614005', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(598, 598, 0, 5, 'HARSHIT  YADAV', '0000-00-00', 'BUNTY YADAV', 'MEERA YADAV', '80, FEET ROAD, MALLA TALAI', '', 9, 2, 1, '2414', 'harshityadav', 'bfb791abbcd819f4f7f39d54ba3f0df6', '9784663131', '9784663131', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(599, 599, 0, 5, 'HARSHITA  SAHU', '0000-00-00', 'KAILASH SAHU', 'PUSHPA SAHU', 'HARIDAS JI KI MAGRI', '', 9, 2, 1, '2662', 'harshitasahu', 'a6bd5f972abbb8aa3018bd502ce39ec2', '9784410715', '9784410715', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(600, 600, 0, 5, 'KHUSHI  SONI', '0000-00-00', 'VISHNU SONI', 'SUNITA SONI', 'J-33 HARIDAS JI KI MAGRI', '', 9, 2, 1, '2332', 'khushisoni', 'b3d30069f4662eb2f9865354a56f9c9a', '982803154', '9828205159', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(601, 601, 0, 5, 'KUNJAL  YADAV', '0000-00-00', 'MUKESH YADAV', 'MAMTA YADAV', 'K-9 HARIDAS JI KI MAGRI', '', 9, 2, 1, '2406', 'kunjalyadav', '00b614f17829942275860253840e38d1', '9829183461', '9829183461', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(602, 602, 0, 5, 'MOHAMMED AAMIN  MANSOORI', '0000-00-00', 'SALIM MOHAMMED MANSOORI', 'NASEEM BANU', '80, FEET, RATA KHET, NAGAR MASJID 33', '', 9, 2, 1, '2482', 'mohammedaaminmansoori', 'fdd402c427fc78414343299b296de701', '9414239246', '9829591789', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(603, 603, 0, 5, 'NIDHI  YADAV', '0000-00-00', 'NARESH YADAV', 'HEMLATA YADAV', '25-E- HARIDAS JI KI MAGRI', '', 9, 2, 1, '2401', 'nidhiyadav', '8a2eef2f97ef67900af04cb5c15ed46b', '978214867', '9413287520', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(604, 604, 0, 5, 'NILAKSHI  GURJAR', '0000-00-00', 'TEJRAM GURJAR', 'MANJU GURJAR', '28, UBESHWAR ROAD', '', 9, 2, 1, '2451', 'nilakshigurjar', '4058369c3014a188af54017006309a4f', '9983752543', '8764112921', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(605, 605, 0, 5, 'NISHAT  JAHAN', '0000-00-00', 'ABDUL WAHID', 'SHAHIN BANU', '814-6, KOMI EKTA NAGAR', '', 9, 2, 1, '2441', 'nishatjahan', '03432b45579236f1de74a34221b311c0', '9928821005', '9928821005', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(606, 606, 0, 5, 'PRIYANSHI  MUNDAVALIA', '0000-00-00', 'GOPAL MUNDAVALIA', 'INDU MUNDAVALIA', '74- HARI DAS JI KI MAGRI', '', 9, 2, 1, '2424', 'priyanshimundavalia', 'faf3e9ab471fb6da938de12264aca141', '', '9928008129', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(607, 607, 0, 5, 'SUFIYAN  HUSSAIN', '0000-00-00', 'ISMAIL HUSSAIN', 'PAKIZA BANU', 'HARIDAS JI KI MAGRI', '', 9, 2, 1, '2666', 'sufiyanhussain', '2acb352e8bd8f57faf6e9d363bd56626', '9929199798', '9929199798', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(608, 608, 0, 5, 'LATIKA  LAKHARA', '0000-00-00', 'SUNDAR LAL LAKHARA', 'JYOTI LAKHARA', '113 B BLOCK SAJJAN NAGAR', '', 4, 2, 1, '3627', 'latikalakhara', 'de3eb91435b798636ca35d4787fe596e', '8769372285', '9929902285', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(609, 609, 0, 5, 'MOHAMMED ZAID  ', '0000-00-00', 'MOHAMMED FAROOQ', 'GOHAR TASNEEM', '315/B GARIB NAWAZ COLONY MALLAH TALAI', '', 4, 2, 1, '3758', 'mohammedzaid', '2866e6c010887b7fc9de7f24536cfa70', '9887466606', '9887466606', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(610, 610, 0, 5, 'MOHIT  GURJAR', '0000-00-00', 'SURESH GURJAR', 'MAMTA GURJAR', 'VILLAGE GORRILA', '', 4, 2, 1, '3692', 'mohitgurjar', '31eb50edf3012571ad161dbf4ede0412', '9772601060', '9772601060', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(611, 611, 0, 5, 'RIDA  CHHIPA', '0000-00-00', 'FARUKH MOHD', 'MEHRBAN CHHIPA', '1308, KOMI EKTA NAGAR', '', 4, 2, 1, '3475', 'ridachhipa', '604974fdbe74d60f7189ebe5455e0616', '', '9929033351', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(612, 612, 0, 5, 'VAISHNAVI  SONI', '0000-00-00', 'NAVEEN SONI', 'BHARTI SONI', 'J-6, HARIDAS JI KI MAGRI', '', 4, 2, 1, '3462', 'vaishnavisoni', 'f96027fb514be09b8dedf95811e1f1d8', '8003719944', '7820812244', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(613, 613, 0, 5, 'VIKUL  KASHYAP', '0000-00-00', 'SHASHI KUMAR KASHYAP', 'SHASHI KASHYAP', '580 HARI DAS JI KI MAGARI MALLA TALI', '', 4, 2, 1, '3490', 'vikulkashyap', 'cdd0d587abd8da7bf188668106d58d04', '9799453141', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(614, 614, 0, 5, 'DURVA SONI  ', '0000-00-00', 'GOPAL SONI', 'MEENA SONI', '43 NEAR GOVT. SCHOOL EKLAVYA COLONY', '', 3, 2, 1, '3722', 'durvasoni', '5a23c158bbef96d1e1f04da77c6a5faa', '8058241088', '8058241088', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(615, 615, 0, 5, 'HARDIK  SINDHAL', '0000-00-00', 'DEVI LAL SINDHAL', 'DALI BAI', '11-B HARI DAS JI KI MAGARI', '', 3, 2, 1, '3588', 'hardiksindhal', 'c742f10a2cacd16bc82968f75bd9e6c8', '', '9829606454', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(616, 616, 0, 5, 'HARSHAL SINDHAL  ', '0000-00-00', 'MAHESH SINDHAL', 'SEEMA SINDHAL', 'J -9 HARIDAS JI KI MAGRI', '', 3, 2, 1, '3756', 'harshalsindhal', '8819a514297b554af9ee27103ff1608c', '9602585018', '9602585018', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(617, 617, 0, 5, 'IFRA BANO  ', '0000-00-00', 'NASEEB RAZA', 'SHABANA BANO', '528/26 OTC SCHEME CHHIPA COLONY', '', 3, 2, 1, '3718', 'ifrabano', '5fe68370f0c8b300c58c97b87ad08979', '9680950325', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(618, 618, 0, 5, 'JATIN  GURJAR', '0000-00-00', 'TEJ RAM GURJAR', 'MANJU DEVI GURJAR', 'UBESHWAR ROAD GORELA', '', 3, 2, 1, '3574', 'jatingurjar', '01de50f412c09a276c62164748e4cb58', '', '9983752543', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(619, 619, 0, 5, 'KANISHKA KUMAWAT  ', '0000-00-00', 'NANDKISHOR KUMAWAT', 'REENA KUMAWAT', '6 HARIDAS JI KI MAGRI', '', 3, 2, 1, '3706', 'kanishkakumawat', 'c261d24bc78d00547c68766d621aed0a', '7742013734', '7742013734', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(620, 620, 0, 5, 'KHIZRA  BANO', '0000-00-00', 'MOHAMMED FAROOQ', 'SAMREEN', '92 RAZA COLONEY NEAR CHARAK HOSTAL', '', 3, 2, 1, '3598', 'khizrabano', 'a34d2b763eee0fddf5925f6dff4cae0a', '9982455927', '9828836599', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(621, 621, 0, 5, 'KULDEEP  GURJAR', '0000-00-00', 'KISHAN GURJAR', 'LALITA GURJAR', 'GAON GORRILA', '', 3, 2, 1, '3593', 'kuldeepgurjar', '577d6c970ba82831ea335853fc798d2c', '', '7023411251', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(622, 622, 0, 5, 'LAKSH SUHALKA  ', '0000-00-00', 'ANAND SUHALKA', 'SANJU SUHALKA', '1021 NEAR JAGRITI SCHOOL EKLAVYA COLONY', '', 3, 2, 1, '3750', 'lakshsuhalka', '3aacf4d8be13b096c109a16b1a1ae88b', '9829143200', '9829143200', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(623, 623, 0, 5, 'LAKSHITA  KUMAWAT', '0000-00-00', 'CHANDRA PRAKASH KUMAWAT', 'HEMLATA KUMAWAT', '26, JADA GANESH JI KA CHOWK', '', 3, 2, 1, '3757', 'lakshitakumawat', '60fd9d0c61675cbd11748bc15c25f2e9', '', '9166616051', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(624, 624, 0, 5, 'LATIKA  SEN', '0000-00-00', 'KHEMRAJ SEN', 'RANI SEN', '24 BAJRANG MARG JADA GANESH JI', '', 3, 2, 1, '3607', 'latikasen', '053a7d1ca1fa38768e31444d1851c9cf', '', '8290029863', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(625, 625, 0, 5, 'RAGINI  YADAV', '0000-00-00', 'JITENDRA YADAV', 'GEETANJALI YADAV', 'K - 6 HARIDAS JI KI MAGRI', '', 3, 2, 1, '3708', 'raginiyadav', 'dca0f5f9362c8e716948a33e4a968006', '9252985306', '9252985306', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(626, 626, 0, 5, 'YATHARTH SIKLIGAR  ', '0000-00-00', 'SUNIL SIKLIGAR', 'JHANKAR SIKLIGAR', 'NATHI GHAT BRAHMPOLE', '', 3, 2, 1, '3749', 'yatharthsikligar', '5a2abcfe4bc276a967daca0027a3979a', '9782108358', '8104800286', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(627, 627, 0, 5, 'AASIM  RAZA', '0000-00-00', 'ASHFAQ HUSSAIN', 'AQUEELA BANU', '224, A-BLOCK SAJJAN NAGAR', '', 10, 2, 1, '2770', 'aasimraza', '5219851901efdcb132b9e7f67d0aa9cf', '9610972280', '9610972280', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(628, 628, 0, 5, 'AMAY  BHATT', '0000-00-00', 'KULDEEP BHATT', 'HEMLATA BHATT', '258, AMBAWADI RAMPURA UBAISHWAR ROAD', '', 10, 2, 1, '3506', 'amaybhatt', '25a15aa4d2d482db55c860996db5379a', '9414730215', '9694235158', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(629, 629, 0, 5, 'MAHEEN  KOUSAR', '0000-00-00', 'PARWEZ KHAN', 'SHAHZAD BANU', 'RAM MANOHAR LOHIYA KACHCHI BASTI', '', 10, 2, 1, '2957', 'maheenkousar', '45c528a501edf095caf19cdd8e8ad80f', '9413665294', '9413665294', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(630, 630, 0, 5, 'MIHIR  SEN', '0000-00-00', 'UKAAR LAL SEN', 'SHUSHILA SUMARI', 'DUDHIYA GANESH JI SAJJAN GARH ROAD', '', 10, 2, 1, '3650', 'mihirsen', '7b26666810659e3edde923e2f6eaf370', '8890666354', '9001103020', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(631, 631, 0, 5, 'MOHAMMED HAADI  KHAN', '0000-00-00', 'MOHAMMED HANIF KHAN', 'SHABANA BANO', '17, KALLE SATH NEAR MOSQUE SILAWAT WADI', '', 10, 2, 1, '2525', 'mohammedhaadikhan', 'fe73474d4d94f8a23a35ad11639a689b', '9929454569', '9929454569', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(632, 632, 0, 5, 'MOHIT  SUTHAR', '0000-00-00', 'KHAYALI LAL SUTHAR', 'SHARDA SUTHAR', '128, MALDAS STREET', '', 10, 2, 1, '2529', 'mohitsuthar', 'c8eb0ec11a843d44ec48a557b72b0916', '9413663345', '9413663345', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(633, 633, 0, 5, 'MUKESH  SAHANI', '0000-00-00', 'LAKSHMAN SAHANI', 'DUKHNI SAHANI', 'HARIDAS JI K I MAGRI, MALLA TALAI', '', 10, 2, 1, '2293', 'mukeshsahani', 'd7e0d1d99f2bee6b5ed9db2b3e8a8499', '9799231028', '9799231028', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(634, 634, 0, 5, 'NIDA  BANU', '0000-00-00', 'SALEEM MOHAMMED CHHIPA', 'HEENA BANU', '258/14, O.T.C. SCHEME CHHIPA COLONY', '', 10, 2, 1, '2376', 'nidabanu', 'b5fc5f9dcee14a9c9704a282d3969a41', '0', '0', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(635, 635, 0, 5, 'PRAVEEN  MALI', '0000-00-00', 'FATEH LAL MALI', 'SITA MALI', '39, HARSH NAGAR', '', 10, 2, 1, '2281', 'praveenmali', '34ee8ec57673b3162e1cd5952c1ab374', '9587229036', '9587229036', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(636, 636, 0, 5, 'RASHIKA BANO MANSOORI', '0000-00-00', 'FARID AHMED', 'RUKSANA BANO', '246 NEAR BIG PARK MULLA TALAI', '', 10, 2, 1, '3522', 'rashikabanomansoori', '4bc52ae297b0513547aa56432f619995', '9983361733', '9983361733', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(637, 637, 0, 5, 'SAKSHI  SONI', '0000-00-00', 'DEEPAK SONI', 'HEMA SONI', 'RAO JI KA HATA INFRONT OF SAJJAN NAGAR HOUSE', '', 10, 2, 1, '1950', 'sakshisoni', 'abe346875da7c5146a59a8145df99566', '9828210120', '9828210120', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(638, 638, 0, 5, 'SALONI  LAKHARA', '0000-00-00', 'PURUSHOTTAM LAKHARA', 'KALPANA LAKHARA', '53, GURU KRIPA DUDHIYA GANESH JI', '', 10, 2, 1, '2487', 'salonilakhara', '0f69b22ccf42b99f60642878ea2c63b0', '9828229005', '9828229005', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(639, 639, 0, 5, 'SANIYA  BANU', '0000-00-00', 'MOHAMMEDD ISMAIL', 'SHABANA BANO', '333-MASTANA PIYA COLONY, CHURCH ROAD MALLA TALAI', '', 10, 2, 1, '2767', 'saniyabanu', '514c944af5923691535b7d7811a2013f', '8003276485', '9649978496', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(640, 640, 0, 5, 'SANIYA  KHAN', '0000-00-00', 'MOHD ZAFAR KHAN', 'AFROZ KHAN', '54, JAT, WADI', '', 10, 2, 1, '2902', 'saniyakhan', 'f15506abdc96bd1cc6fa3f61cb6ae049', '9928297425', '9829662564', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(641, 641, 0, 5, 'SUMBUL  RAZA', '0000-00-00', 'IRSHAD KHAN', 'SHER BANO', 'BICHCHU GATI, KELWA HOUSE        UDAIPUR', '', 10, 2, 1, '2310', 'sumbulraza', '44c53ea3bad63c98ec66b926423e57fb', '0', '9610264703', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(642, 642, 0, 5, 'AYESHA  SIDDIKA', '0000-00-00', 'SIDDIK HUSSAIN', 'FARZANA BANO', '264 O.T.C A -BLOCK, SAJJAN NAGAR, MALLA TALAI', '', 11, 2, 1, '2520', 'ayeshasiddika', '8e6bcb11e86d8029495e6442ba7c0443', '9929512833', '9929512833', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(643, 643, 0, 5, 'FAIZAN  HUSSAIN', '0000-00-00', 'ZAKIR HUSSAIN', 'JEBUN NISHA', 'K-16, MASTAN BABA ROAD, ODD BASTI', '', 11, 2, 1, '2521', 'faizanhussain', 'c4d10eb2f34f6c0e661610eb5783dcc1', '9784779949', '9784779949', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(644, 644, 0, 5, 'FARHAN  KHAN', '0000-00-00', 'ZAHID HUSSAIN', 'SHABNAM BANU', 'H.N-46 SAJJAN NAGAR BLOCK A, OTC SCHEME', '', 11, 2, 1, '1995', 'farhankhan', 'db2e1ff17e314aa9721a1593d59ddc99', '9782812906', '9782812906', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(645, 645, 0, 5, 'HARDIK  MUNDANIYA', '0000-00-00', 'HARISH MUNDANIYA', 'MADHU MUNDANIYA', 'PRATAP BHAWAN INSIDE SURAJ POLE', '', 11, 2, 1, '2325', 'hardikmundaniya', '7f659d301dc8aab3335ce86f82d197ce', '9414239141', '9414239141', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(646, 646, 0, 5, 'IZHAN  SHEIKH', '0000-00-00', 'MOHD ARSHAD SHEIKH', 'AALAM ARA SHEIKH', '304, MASRAT MANZIL, GANDHI NAGAR, MALLA TALAI', '', 11, 2, 1, '2536', 'izhansheikh', '1baad01627d59f91d3abc97dc91d7ea3', '9314644256', '9829069937', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(647, 647, 0, 5, 'KUNAL  PRAJAPAT', '0000-00-00', 'NAND LAL PRAJAPAT', 'DAYA PRAJAPAT', 'B-2 HARIDAS JI KI MAGRI MALLA TALAI', '', 11, 2, 1, '1945', 'kunalprajapat', '692c86b9e5eb142762baa3429ec4597d', '9928536251', '9928536251', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(648, 648, 0, 5, 'MANAV  KALAL', '0000-00-00', 'VIKRAM KALAL', 'ANJU KALAL', '78, KD RATA KHET SHIV MANDIR KE PASS', '', 11, 2, 1, '2379', 'manavkalal', '01f100dbac071bcaae249fc104d98c22', '9001298896', '9001298896', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(649, 649, 0, 5, 'MISBA  MANSOORI', '0000-00-00', 'SHABBIR HUSSAIN', 'SHABANA ANJUM', '216, MALLA TALAI UDAIPUR', '', 11, 2, 1, '2142', 'misbamansoori', 'b6eaf082c729f94a8f8cf7e28bd84663', '9828150703', '9828150703', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(650, 650, 0, 5, 'MOHAMMED AYAN  KHAN', '0000-00-00', 'MOHAMMED ANWAR KHAN', 'RUBINA KHAN', 'H.N-54 JATWADI UDIAPUR', '', 11, 2, 1, '2903', 'mohammedayankhan', '7ce4f75d0acadefe2bd01838c0864da7', '294325233', '9829662564', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(651, 651, 0, 5, 'MOHAMMED SARJEEL  ', '0000-00-00', 'AAZAD MOHAMMED', 'SHAHIN BANO', '271, B- BLOCK 80 FEET ROAD RATA KHET', '', 11, 2, 1, '2792', 'mohammedsarjeel', '6cd82d6f800c037f2ba72aca8c30e80c', '9829100327', '9829100327', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(652, 652, 0, 5, 'NANDINI  CHETNANI', '0000-00-00', 'SHYAM CHETNANI', 'ANITA CHETNANI', 'JAWAHAR NAGAR', '', 11, 2, 1, '2791', 'nandinichetnani', 'c7341a61031312c17c96e54411c30f01', '9928569224', '9785493986', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(653, 653, 0, 5, 'PREETI  KACHAWA', '0000-00-00', 'JITENDRA KACHAWA', 'REKHA KACHAWA', 'B-30, HARIDAS JI KI MAGRI', '', 11, 2, 1, '2145', 'preetikachawa', 'b78d4871758b86bcece47a1f11ecb5fa', '94616458401', '7073815566', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(654, 654, 0, 5, 'RISHABH  TELI', '0000-00-00', 'CHANDRA SHEKHAR TELI', 'VISHNU TELI', '384, HARSH NAGAR, RATA KHET', '', 11, 2, 1, '3514', 'rishabhteli', 'b99b2bdcd656442512e3d9fd308d9600', '9928524273', '8769711939', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(655, 655, 0, 5, 'RIYA  SUHALKA', '0000-00-00', 'RAMESH SUHALKA', 'YASHODA SUHALKA', 'PLOT NO.-272 SAJJAN GARH ROAD MALLA TALAI', '', 11, 2, 1, '1943', 'riyasuhalka', 'a3aa5f35159debc01eb7b5c0722c35be', '9784949686', '9636650047', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(656, 656, 0, 5, 'RUDRAKSH  PALIWAL', '0000-00-00', 'RAKESH PALIWAL', 'JAYSHREE PALIWAL', '1956, NEW RAMPURA COLONY', '', 11, 2, 1, '1994', 'rudrakshpaliwal', 'ab9130713b78e0a212d58b7393db388c', '9462434006', '8003838677', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(657, 657, 0, 5, 'SHIDRA  KHAN', '0000-00-00', 'MOHD SHAHID KHAN', 'SULTANA BEGUM', 'H.N.718 JATWADI NEAR KALLESAT MOSQUE', '', 11, 2, 1, '1975', 'shidrakhan', '1f83227c0f3b71caab3f82c1a7ab666a', '97829277352', '9414166577', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(658, 658, 0, 5, 'SUJAIN  MAKRANI', '0000-00-00', 'MEHFUZ KHAN', 'SHAMIM MAKRANI', '10, AMAR NAGAR NEAR BABA COLONY', '', 11, 2, 1, '1972', 'sujainmakrani', '7abe546c0db1cce4c88d1d5228bd53d1', '8890955181', '8890955181', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(659, 659, 0, 5, 'UZMA  BANO', '0000-00-00', 'MOHAMMED RAZAK', 'SHABANA BANO', '92, RAZA COLONY, MALLA TALAI', '', 11, 2, 1, '1941', 'uzmabano', '8da25dca7150c2c176b6ec52bce675e3', '9928836599', '9928836599', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(660, 660, 0, 5, 'UZRA  BANO', '0000-00-00', 'MOHAMMED RAZAK', 'SHABANA BANO', '92, RAZA COLONY, MALLA TALAI', '', 11, 2, 1, '1940', 'uzrabano', 'eafb49df7f660dd0da37e317b4fb362f', '9928836599', '9928836599', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(661, 661, 0, 5, 'VIKAS  SAHANI', '0000-00-00', 'UMA SHANKAR SAHANI', 'VIBHA SAHANI', 'K-40 HARIDAS JI KI MAGRI', '', 11, 2, 1, '2360', 'vikassahani', '2cd7a7271bec2b0ecd8bf12335bebbf2', '9928173946', '9928173946', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(662, 662, 0, 5, 'YAMIN  HUSSAIN', '0000-00-00', 'SABBIR HUSSAIN', 'KALSUM BANO', 'K-16 MASTAN BABA ROAD', '', 11, 2, 1, '2522', 'yaminhussain', 'd7618d1655348a0c7abb38007fa6f5d7', '9166597275', '9166597275', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(663, 663, 0, 5, 'ALINA BANU PINJARA', '0000-00-00', 'SHAKEEL MOHAMMED', 'SANJEEDA BANU', '191, RAZA COLONY MALLA TALAI', '', 12, 2, 1, '1727', 'alinabanupinjara', '2aceffd8094139d1bd4ddbbe85cc9669', '9929614622', '9929614622', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(664, 664, 0, 5, 'DAKSH  PANWAR', '0000-00-00', 'MAHESH PANWAR', 'SUNITA PANWAR', '38, B- HARIDAS JI KI MAGRI', '', 12, 2, 1, '2960', 'dakshpanwar', 'b9126095bca1cd70d386478221e1201e', '9672032029', '9672032029', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(665, 665, 0, 5, 'LOVE  SONI', '0000-00-00', 'MAHESH SONI', 'PREMLATA SONI', '235, RAO JI KA HATA', '', 12, 2, 1, '2794', 'lovesoni', 'c3a25fcf9fab9720f3211a3babebdc81', '9829125104', '9829125104', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(666, 666, 0, 5, 'MISHBA  GUL', '0000-00-00', 'ASHAFAQ HUSSAIN', 'AKEELA', '224, A- BLOCK, SAJJAN NAGAR', '', 12, 2, 1, '1696', 'mishbagul', 'c629485e68b7c841e39ea7e538df2bdf', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(667, 667, 0, 5, 'MOHAMMED KAIF  RAZA', '0000-00-00', 'MEHRUDDIN KHAN', 'NAZIMA BANO', '80 FEET ROAD RATA KHET IN FRONT OF ALMIRAH FACTORY', '', 12, 2, 1, '2793', 'mohammedkaifraza', 'e8769dca914439a1d242be5f8bd5001d', '9929129386', '9929129386', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(668, 668, 0, 5, 'MOHAMMED SHAHIR  KHAN', '0000-00-00', 'SHARIF KHAN', 'SHABANA', '52 RAZA COLONY, MALLA TALAI', '', 12, 2, 1, '2890', 'mohammedshahirkhan', '319e80b2aeba818078a10d607ceacd70', '9549516184', '9549516184', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(669, 669, 0, 5, 'MUSKAN  VAISHNAV', '0000-00-00', 'MANOJ VAISHNAV', 'PRAMILA VAISHNAV', 'NEW RAMPURA', '', 12, 2, 1, '2016', 'muskanvaishnav', '7dca9099c8d1d50079ea1c9fc9068a4d', '9928536261', '9928536261', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(670, 670, 0, 5, 'NIDA  SHABBAR', '0000-00-00', 'SHABBAR AHMED', 'SHABNAM', 'NIMACH KHEDHA, DEWALI', '', 12, 2, 1, '2186', 'nidashabbar', 'da762a55802954d37c35783714a2b39f', '7783470252', '9783470252', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(671, 671, 0, 5, 'NIHARIKA  SEN', '0000-00-00', 'NARENDRA SEN', 'RADHA SEN', 'HARIDAS JI KI MAGRI, MALLA TALAI', '', 12, 2, 1, '1676', 'niharikasen', '386dba7f8055f2bb9ff597fab7e7d59d', '9828143998', '9828143998', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(672, 672, 0, 5, 'NOSHEEN  KHAN', '0000-00-00', 'DIL NISAR KHAN', 'NASREEN', 'GARIB NAWAZ COLONY, MALLA TALAI', '', 12, 2, 1, '1637', 'nosheenkhan', '79212bed91b56a28b29922a7f181fe5d', '9799119135', '9799119135', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(673, 673, 0, 5, 'RAVI  YADAV', '0000-00-00', 'VIKAS K YADAV', 'VIMLESH YADAV', 'HARI DAS JI KI MAGRI', '', 12, 2, 1, '3044', 'raviyadav', 'a43750557899c6b7afaea50e507df220', '9610970090', '9610970090', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(674, 674, 0, 5, 'RIYA  BHATI', '0000-00-00', 'GHANSHYAM LAL TELI', 'RADHA TELI', '14, HARI DAS JI KI MAGRI', '', 12, 2, 1, '1709', 'riyabhati', '0278353d0435b058fced8f98d50ae7af', '9309437799', '9309437799', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(675, 675, 0, 5, 'SAMEERA  KHAN', '0000-00-00', 'MOHAMMED HANEEF', 'SHABANA', '17, KALLESATH NEAR MOSQUE', '', 12, 2, 1, '1635', 'sameerakhan', '90d498d561534ac9320d24403a1ee745', '9929454569', '9929454569', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(676, 676, 0, 5, 'SANIYA  RANGREZ', '0000-00-00', 'MOHAMMED HARUN RANGREZ', 'NILOFAR RANGREZ', '22, SINDHI SAROLAR KI HAVELI, KHERA DI WADA', '', 12, 2, 1, '2021', 'saniyarangrez', '9e07b64882f50c0a384b219951a7262c', '9660277983', '9660277983', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(677, 677, 0, 5, 'SHIFA  BEGUM', '0000-00-00', 'SHAMSHUDDIN', 'SALMA ARA', '25, HARIDAS JI KI MAGRI', '', 12, 2, 1, '1951', 'shifabegum', 'c5a6295e7252309c098e34e5f32c045f', '5058803475', '8058803475', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(678, 678, 0, 5, 'SIBTAIN  RAZA', '0000-00-00', 'MOHAMMED SHEIKH RAZA', 'SULTANA BANU', '718, JAT WADI NEAR KALESAT MASJID', '', 12, 2, 1, '1736', 'sibtainraza', 'e2116e056a581ec829ecc6344bf88e5f', '8829966577', '8829966577', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(679, 679, 0, 5, 'TANZEELA  AHMED', '0000-00-00', 'MOHAMMED SAYEED', 'RIZWANA BANU', '73, MALLA TALAI NEAR DEAF AND SLIMB SCHOOL', '', 12, 2, 1, '1729', 'tanzeelaahmed', 'd5ffdbc81a5511a48d43fad10f425c52', '9783555221', '9783555221', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(680, 680, 0, 5, 'UDIT  BISHWAS', '0000-00-00', 'ASIT BISHWAS', 'PARWATI BISHWAS', 'K-19 HARI DAS JI KI MAGRI', '', 12, 2, 1, '1677', 'uditbishwas', 'a2af7952053dcb2284a32ea30843fead', '9828194159', '9828194159', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(681, 681, 0, 5, 'DHARMAGYA  SOLANKI', '0000-00-00', 'RAMESH SOLANKI', 'DHAN LAXMI SOLANKI', '702 EKLAVYA COLONY', '', 13, 1, 1, '2565', 'dharmagyasolanki', '4bc4f6fccf62fc2884ca1e4a8c6f7216', '9887113912', '9887113912', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(682, 682, 0, 5, 'ERAM  NAAZ', '0000-00-00', 'MOHAMMED HUSSAIN', 'RUKHSANA BANO', '528/16 OTC SCHEME CHHIPA COLONY', '', 13, 1, 1, '1751/A', 'eramnaaz', 'a2a25c6801bb26494902fa68d22310fa', '9928183879', '9928183879', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(683, 683, 0, 5, 'HIMANSHI  KASERA', '0000-00-00', 'HEMANT KASERA', 'JYOTI KASERA', '19, BHADESER CHOWK VARIYON KI GHATI', '', 13, 1, 1, '2285', 'himanshikasera', 'ef227cf47049c659777382f60e92a791', '9414163559', '7742128921', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(684, 684, 0, 5, 'JAYESH  KAMOYA', '0000-00-00', 'ANIL KAMOYA', 'HEMA KAMOYA', '2, BHERU GHATI CHANDPOLE UDAIPUR', '', 13, 1, 1, '2569', 'jayeshkamoya', 'ee6c66e55aff54abad4ad3b49d9fcf10', '9799397502', '9799397502', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(685, 685, 0, 5, 'MOHAMMED OVESH  ', '0000-00-00', 'ANSAR AHMED', 'MUMTAJ BEGUM', '170, AMBAVGHARH NEAR NATURAL HOTEL', '', 13, 1, 1, '2804', 'mohammedovesh', '26dd168397be35cd2f84659d9e336ec0', '9001388712', '9001388712', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(686, 686, 0, 5, 'MOHAMMED ZACKI  ', '0000-00-00', 'AHMED HUSSAIN', 'TABASSUM BANU', '37, LAL GHAT BEHIND JAGDISH TEMPLE', '', 13, 1, 1, '1473', 'mohammedzacki', 'e7cc14ff8d8489da4826dfb41c034f92', '9828193232', '9828193232', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(687, 687, 0, 5, 'NAZAM  BANO', '0000-00-00', 'ISHTIYAQ AHMED', 'FARIDA BANO', '61, AHMED HUSSAIN COLONY', '', 13, 1, 1, '1562', 'nazambano', '4641cd9641f2b8a98881abdfee2580f4', '9001949191', '9887897949', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(688, 688, 0, 5, 'NIKHIL  SONI', '0000-00-00', 'RAJKUMAR SONI', 'LAJWANTI SONI', 'H.NO.51, SONI GANESH GATI GADIA DEVRA PANDU WADI KE PAS', '', 13, 1, 1, '1754', 'nikhilsoni', '45d0cf427905b551ec61985d3b84a2e5', '9610260058', '9828734611', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(689, 689, 0, 5, 'RAJESHWARI  SONI', '0000-00-00', 'DILIP SONI', 'SUNITA SONI', '45 DHABHAI JI BARI RAMPURA', '', 13, 1, 1, '3036', 'rajeshwarisoni', '219cadb10e93b83f79acf4b1c6018d89', '9783535943', '9783535943', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(690, 690, 0, 5, 'RISHABH  SARNOT', '0000-00-00', 'LT SUNDAR LAL SARNOT', 'SUMITRA SARNOT', 'S-43, GANDHI NAGAR MALLA TALAI', '', 13, 1, 1, '1602', 'rishabhsarnot', '1b9a537e50cb8f63cd466374cf6967b9', '9351060018', '9351060018', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(691, 691, 0, 5, 'SANIYA BANO MANSOORI', '0000-00-00', 'MUSTAQ AHMED MANSOORI', 'SHAMIM BANO', 'C-2, FARUK - E- AZAM COLONY, MALLA TALAI', '', 13, 1, 1, '2047', 'saniyabanomansoori', '0bf521b38fe4cbb076354fb329e06692', '9460801595', '9460801595', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(692, 692, 0, 5, 'SANJANA  LAKHARA', '0000-00-00', 'PRAKASH LAKHARA', 'PRAMILA LAKHARA', 'O/S CHANDPOLE NAGA NAGRI BHIDAR KI HAWELI', '', 13, 1, 1, '2048', 'sanjanalakhara', 'c215d2da06f7d5d8ca1ff3de7debc9df', '9950307676', '9950307676', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(693, 693, 0, 5, 'TOUSHIPH  ALI', '0000-00-00', 'MOHAMMED ALI', 'TUHINA ALI', '26, CHITRAKALA MARG MAHAWAT WADI', '', 13, 1, 1, '2566', 'toushiphali', 'd42ac38a2ea4aaf21790a42a81580676', '9024974722', '9024974722', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(694, 694, 0, 5, 'VISHAL  KUMAWAT', '0000-00-00', 'KESU LAL KUMAWAT', 'GOMTI KUMAWAT', 'AMAR NAGAR O.T.C. B-BLOCK', '', 13, 1, 1, '1773/B', 'vishalkumawat', 'b482ca44d412ec85a434a522776af50c', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(695, 695, 0, 5, 'ARSHI  KHAN', '0000-00-00', 'AARIF HUSSAIN', 'RAHILA BEGAM', 'EC-39, SAJJAN NAGAR A- BLOCK', '', 6, 3, 1, '3118', 'arshikhan', '8ac1884e488c9adeb9ce315796dab063', '9352096692', '9352096692', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(696, 696, 0, 5, 'ASMA  BANO', '0000-00-00', 'MOHD ISMAIL', 'SHABANA BANO', '333, MASTAN PIYA COLONY CHURCH ROAD', '', 6, 3, 1, '3109', 'asmabano', '32bc1fba680aacd619f70f5fef21c30d', '9649978496', '9649978496', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(697, 697, 0, 5, 'GURVI  SUHALKA', '0000-00-00', 'ANAND SUHALKA', 'SANJU SUHALKA', '1021 PRITIVILLA EKLAVYA COLONY', '', 6, 3, 1, '3084', 'gurvisuhalka', '336a245603d7659c1e3cc4c25a244a46', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(698, 698, 0, 5, 'NOHA AKHTAR MANSOORI', '0000-00-00', 'MUBARIK HUSSAIN', 'RUBINA SHAHIN', '1482 AHMED HUSSAIN COLONEY BEHIND MASTAN BABA', '', 6, 3, 1, '3657', 'nohaakhtarmansoori', '93ac5800c9c6ced966ff5aa2f82e160a', '9672624877', '8094580196', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(699, 699, 0, 5, 'BHAVIRAJ SINDHAL  ', '0000-00-00', 'NARAYAN LAL', 'KOSHLYA', '172 HARIDAS JI KI MAGRI', '', 3, 3, 1, '3763', 'bhavirajsindhal', 'b65ae5effbd702fa1602d34c051588b3', '9772239143', '9772239143', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(700, 700, 0, 5, 'DIVYA  PRAJAPAT', '0000-00-00', 'NAND LAL PRAJAPAT', 'DAYA PRAJAPAT', 'B-2 HARI DAS JI KI MAGARI', '', 3, 3, 1, '3597', 'divyaprajapat', '1d1d5b908298b5027ddb6e9575147cda', '', '9928536251', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(701, 701, 0, 5, 'KAVYANSH YADAV  ', '0000-00-00', 'HEERA LAL YADAV', 'PRIYA YADAV', 'BHILU RANA KACHHI BASTI', '', 3, 3, 1, '3755', 'kavyanshyadav', '2fa3436307d3074dd2ba3dbf812a95a3', '8107600726', '8107600726', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(702, 702, 0, 5, 'KHYATI  MALI', '0000-00-00', 'BHUPENDRA MALI', 'NEENA MALI', '274 A BLOCK SAJJAN NAGAR MULLA TALI', '', 3, 3, 1, '3578', 'khyatimali', '66978c11bf698775d70c72c59ea54a78', '9828682081', '9680101186', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(703, 703, 0, 5, 'LAKSHIT  DANGI', '0000-00-00', 'KESHAV LAL DANGI', 'KANKU DEVI DANGI', 'I-4 POLICE QUARTER BEHIND MASTAN BABA', '', 3, 3, 1, '3700', 'lakshitdangi', 'aef13fc816026232e05d88f80e64e411', '9799211467', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(704, 704, 0, 5, 'RASHID RAZA MANSOORI', '0000-00-00', 'SWALEH MOHMMED', 'NURANI BANU', '235 MULLA TALAI', '', 3, 3, 1, '3577', 'rashidrazamansoori', 'c0e01e77683b5c54200209227bea94fc', '9636465801', '9636465802', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(705, 705, 0, 5, 'RITIKA  PARMAR', '0000-00-00', 'HARISH PARMAR', 'KALA PARMAR', 'E-5 HARIDAS JI KI MAGARI MULLA TALI', '', 3, 3, 1, '3492', 'ritikaparmar', 'dee22f642a7f1d9f55f9c9e205448ac0', '2943202494', '9828355832', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(706, 706, 0, 5, 'SHIFA ANSARI  ', '0000-00-00', 'TAHIR ALI', 'AASHFA KHATOON', '156 RAZA COLONY', '', 3, 3, 1, '3732', 'shifaansari', 'e40c835dcb0edd2a8b94adca16aa05e8', '9929512436', '9929512436', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(707, 707, 0, 5, 'UJJAWAL KUMAR TELI', '0000-00-00', 'RAMESH KUMAR TELI', 'SAGAR DEVI TELI', 'B-7 HARI DAS JI KI MAGARI', '', 3, 3, 1, '3596', 'ujjawalkumarteli', 'bcc9c9152e61820002f180aa88e0b972', '', '7073240861', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(708, 708, 0, 5, 'YASHASVI  SONI', '0000-00-00', 'RAJ KUMAR SONI', 'LAJWANTI SONI', '51 GANESH GHATI  MARG NEAR PANDU WADI SWASTIK JWEELERS', '', 2, 3, 1, '3589', 'yashasvisoni', '532f4a5a10fc1e41b4e7afe16cd35438', '9828734611', '9610260058', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(709, 709, 0, 5, 'ASAMA  BANO', '0000-00-00', 'MOHD HUSSAIN', 'TANSEEM BANO', 'GALI NO 3 AHMED HUSSAIN COLONY MASTAN BABA KE PICHE', '', 5, 1, 1, '3419', 'asamabano', 'e684f822a2895ece0e5f5ef016b0077b', '9829194298', '9829194298', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(710, 710, 0, 5, 'GAVISH  PATWA', '0000-00-00', 'SATISH PATWA', 'SEEMA PATWA', '140 NAG MARG NAGAR WADI CHAND POUL', '', 5, 1, 1, '3417', 'gavishpatwa', '57c4f9b5d1561d317e01835f158d108f', '9829193278', '9829193278', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(711, 711, 0, 5, 'MOHAMMED SHAAD  ', '0000-00-00', 'MOHAMMED FAROOQ', 'GOHAR TASLEEM', '315-B GARIB NAWAZ COLONY GALI NO 2 MALLA TALAI', '', 5, 1, 1, '3421', 'mohammedshaad', '5e10beb98fb661e913f0b057a3b34585', '9269704647', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(712, 712, 0, 5, 'BHAVESH  TELI', '0000-00-00', 'JITENDRA TELI', 'PUSHPA TELI', '18, BHARAM POL, INSIDE', '', 6, 1, 1, '3260/18/13', 'bhaveshteli', 'c83087a9674eac30fa04412502909f4b', '9929400364', '9929400364', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(713, 713, 0, 5, 'ALVEERA  KHAN', '0000-00-00', 'MOHD SHAHID KHAN', 'REHANA KHAN', '213,A BLOCK SAJJAN NAGAR GARIB NAWAZ COLONY', '', 7, 1, 1, '12-12-3283', 'alveerakhan', 'ec29513801475216499c7d26de23b8f7', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(714, 714, 0, 5, 'IRAM  NIDA', '0000-00-00', 'FARUKH', 'SHAMEEM BANO', 'SAJJAN NAGAR NEAR WATER TANK,MALLA TALAI', '', 7, 1, 1, '3285/14/12', 'iramnida', '9501fe54999b7ec548d05930b301acba', '9694331040', '9694331040', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(715, 715, 0, 5, 'MOHAMMED ALI  HUSSAIN', '0000-00-00', 'MOHSIN KHAN', 'SHAKIRA BANU', '8/1723, B-BLOCK 80 FEET ROAD NEAR GRON WORKSHOP RATA KHET', '', 7, 1, 1, '12-08-3279', 'mohammedalihussain', 'ae8ed484faf327bd69a1c650971feb82', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(716, 716, 0, 5, 'BUSHRA  NOORI', '0000-00-00', 'RIYAZ AHMED', 'AREEN RAZA', 'NEEM KA CHOWK UPAR KI MASJID SILAWAT WARI HATIPOUL', '', 4, 1, 1, '3489', 'bushranoori', 'f849165f84717616e9b0912ab1f646cc', '', '9829133524', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(717, 717, 0, 5, 'VIDHI  SONI', '0000-00-00', 'KULDEEP SONI', 'SHARDA SONI', '181 O.T.C B BLOCK AMAR NAGAR', '', 4, 1, 1, '3497', 'vidhisoni', 'd12d9b22a13d8106bb9568a6e6e36a92', '', '9983951029', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(718, 718, 0, 5, 'DIKSHITA  DAKOT', '0000-00-00', 'MURLIDHAR DAKOT', 'ANITA', 'L - 29, NEAR SHANI TEMPLE, GANDHI NAGAR', '', 3, 1, 1, '3644', 'dikshitadakot', '538ff1429c4b4e7e5466f6f1fb2195ed', '9785056121', '8385827070', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(719, 719, 0, 5, 'ALVEERA  KHAN', '0000-00-00', 'SAJID KHAN', 'SEHNAZ BANO', 'SAJJAN NAGAR MALLA TALAI', '', 5, 2, 1, '3420', 'alveerakhan', 'ec29513801475216499c7d26de23b8f7', '9928684499', '9928684499', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(720, 720, 0, 5, 'ANIKA  ', '0000-00-00', 'MOHD FARUKH', 'SHAMEEM BANO', 'GANDHI NAGAR MALLA TALAI', '', 5, 2, 1, '3418', 'anika', '7522d28ad772d1eef7b200ebddcd08ce', '9694331040', '9694331040', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(721, 721, 0, 5, 'MOHAMMED HASNAIN  RAZA', '0000-00-00', 'AZAM HUSSAIN', 'BISMILAA', 'KACCHI BASI NEAR WATER TANK SAJJAN NAGAR', '', 5, 2, 1, '3415', 'mohammedhasnainraza', '2a7786946a8d4d843dda01519bfbbe9d', '9782273435', '9782273435', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(722, 722, 0, 5, 'UMME ABIHA  ', '0000-00-00', 'MOHD ANSAR', 'AAYSHA', '70 AMBAV GARH SCHEME  HOTEL NATURAL ROAD', '', 5, 2, 1, '3422', 'ummeabiha', 'e381b8a1e688b93f05dc16ce6bfb494e', '9928250538', '9928250538', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(723, 723, 0, 5, 'HARSHIT  NAI', '0000-00-00', 'MUKESH NAI', 'JYOTI NAI', '311, MAIN BAZAR NAI', '', 6, 2, 1, '3272/30/13', 'harshitnai', '3e2e1a17549485a52206af7234ba97f5', '0', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(724, 724, 0, 5, 'LAKSHITA  KHILOLIYA', '0000-00-00', 'GOPAL KHILOLIYA', 'TARA DEVI', '31-B, HARI  DAS JI KI MAGRI', '', 6, 2, 1, '3262/20/13', 'lakshitakhiloliya', '523dbb2621e4cd4f1e018ce9e8a9fde1', '8503964246', '8503964246', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(725, 725, 0, 5, 'TARUN  JOSHI', '0000-00-00', 'LALIT JOSHI', 'LAJWANTI JOSHI', '422, MASTER COLONY  AMBA MATA', '', 6, 2, 1, '3264/22/13', 'tarunjoshi', '0d9c66bcd68552039319da84c0697d30', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(726, 726, 0, 5, 'BUSHRA  HAYAT', '0000-00-00', 'UMAR FARUQ', 'HOOR BANO', '18 AHMED HUSSAIN COLONEY BEHIND POLICE QUATER ASHRAFI COMPLEX', '', 4, 2, 1, '3468', 'bushrahayat', '876a86c1d42dd931c7083bd2a8b9bb58', '', '9414169192', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(727, 727, 0, 5, 'MOHAMMED MUNIF  RAZA', '0000-00-00', 'MOHAMMED RAFIK', 'ASMA BANO', '646 GALI NO.2 GARIB NAWAZ COLONEY', '', 4, 2, 1, '3498', 'mohammedmunifraza', '54c89ee98ceca95d9b3f8443e25ac24b', '', '9649470954', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(728, 728, 0, 5, 'STUTI  SONI', '0000-00-00', 'DILIP SONI', 'DEEPA SONI', '1 KOTHARIYO KI GALI MAJI KI BAWADI GHANTAGHAR', '', 4, 2, 1, '3487', 'stutisoni', 'e5675960f3056e58b3fbd3837c4d4060', '', '9660587364', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(729, 729, 0, 5, 'VANSH  LAXKAR', '0000-00-00', 'DEVENDRA LAXKAR', 'SARITA DEVI LAXKAR', '25 HARI DAS JI KI MAGARI', '', 4, 2, 1, '3469', 'vanshlaxkar', 'ff624fe7eec8af120c700bdcaa45e46e', '', '9610721077', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(730, 730, 0, 5, 'NOMAN  ', '0000-00-00', 'MOHSIN', 'HEENA KHAN', 'SAJJAN NAGAR KACHCHI BASTI', '', 3, 2, 1, '3621', 'noman', '0c1300db57bef58404261cc20c271cd1', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(731, 731, 0, 5, 'DISHANT  BHATI', '0000-00-00', 'GHANSHYAM LAL TELI', 'RADHA BHATI', '14,HARIDAS JI KI MAGRI', '', 6, 3, 1, '3271/29/13', 'dishantbhati', '616939632b7516535cc2f6ac55417919', '9309437799', '9309437799', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(732, 732, 0, 5, 'MEHUL  KASERA', '0000-00-00', 'SHANKER LAL KASERA', 'ASHA DEVI', '263,O/S BHRHAM POLE', '', 6, 3, 1, '3270/28/13', 'mehulkasera', '347862582e1df1aaaa9384f21e6c3dfa', '9828298703', '9828298703', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(733, 733, 0, 5, 'NAIRA  ', '0000-00-00', 'BHAGWATI OAD', 'DIPANSHA', '780, OAD BASTI MASTAN ROAD GANDHI NAGAR', '', 3, 3, 1, '3622', 'naira', 'a030d6d094aeea27fcd6d11687824ca9', '9782989771', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(734, 734, 0, 5, 'ANIRUDRA  FUMATIYA', '0000-00-00', 'VINOD KUMAR FUMATIYA', 'SONU FUMATIYA', '892, GANDHI NAGAR KACHHI BASTI MULLA TALAI', '', 5, 1, 1, '3526', 'anirudrafumatiya', 'b10715f182832dd69bd67a78e34eb6bf', '8890647191', '9529783224', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(735, 735, 0, 5, 'BHUMIKA  ATHWAL', '0000-00-00', 'SHANKAR LAL  ATHWAL', 'DHANWANTI ATHWAL', 'SAJJAN NAGAR A BLOCK  NEAR ARYA SAMAJ MANDIR', '', 5, 1, 1, '3632', 'bhumikaathwal', '17cb74ee4110d8c76369d19d1cb51739', '2942414192', '9799906477', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(736, 736, 0, 5, 'GEETIKA  GHAWARI', '0000-00-00', 'ROSHAN LAL GHAWARI', 'DOULAT GHAWARI', '535, OTC SCHEME  D BLOCK, MALLA TALAI', '', 5, 1, 1, '3443', 'geetikaghawari', '164e95134fc745d488b44cb2bcc20005', '9772889566', '9772889566', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(737, 737, 0, 5, 'HEMISH  YADAV', '0000-00-00', 'NIRMAL YADAV', 'GAYATRI YADAV', '174 NEAR AMBRAI RESORT', '', 5, 1, 1, '3525', 'hemishyadav', '2e07fbc5c8c92a9d25045334b83eb5ee', '8890997058', '8890997058', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(738, 738, 0, 5, 'NEHA  YADAV', '0000-00-00', 'SANJAY YADAV', 'BABITA YADAV', '615 CHAMAN PURA HATI POLE', '', 5, 1, 1, '3677', 'nehayadav', '5e959a75237d43af06376c3e81329f81', '9782766555', '9784944965', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(739, 739, 0, 5, 'NIKHIL  YADAV', '0000-00-00', 'PRAHALAD KUMAR YADAV', 'SANGEETA YADAV', '615 CHAMAN PURA HATI POLE', '', 5, 1, 1, '3676', 'nikhilyadav', '6fac0ac9d0edcda708c0876c68b7607d', '9784944965', '9509301234', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(740, 740, 0, 5, 'DEVANSHI  VED', '0000-00-00', 'JITENDRA KUMAR BERWA', 'REKHA BERWA', '318,MALLA TALAI, GRIB NAWAZ COLONY GALI NO.2', '', 6, 1, 1, '3106', 'devanshived', '1cf59ceda15b18b74c564d05355063ef', '2942432233', '2942432233', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(741, 741, 0, 5, 'NARAYAN VERMA  ', '0000-00-00', 'MUKESH VERMA', 'SANGEETA VERMA', 'L- 2 GANDHI NAGAR', '', 6, 1, 1, '3715', 'narayanverma', '0e1a2472c97fc9e36c7dc65152f7fc26', '9166648622', '8529919223', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(742, 742, 0, 5, 'RAGINI  KASOTIYA', '0000-00-00', 'HEERA LAL KASOTIYA', 'MEENA KASOTIYA', 'A-76,EKLAVYA COLONY', '', 6, 1, 1, '3129', 'raginikasotiya', 'fec20eab240c02952bfde289b60d353d', '9314439896', '9314439896', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(743, 743, 0, 5, 'SHOURYA RAJ  PANWAR', '0000-00-00', 'MAHESH PANWAR', 'RAKHI PANWAR', '807 GANDHI NAGAR NEAR WISDOM HOME SCHOOL', '', 6, 1, 1, '3736', 'shouryarajpanwar', '595546d8f3d160b2e7b8d44443a71175', '9928544804', '9928544804', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(744, 744, 0, 5, 'AADARSH  KANDARA', '0000-00-00', 'VINOD KANDARA', 'USHA KANDARA', '18,CHAMANPURA GALI NO.8 HATI POL', '', 7, 1, 1, '3351', 'aadarshkandara', '44f8995202a2fa2c9ee46ff602d4ddc8', '9784543812', '9829644260', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(745, 745, 0, 5, 'JAYESH  KHATIK', '0000-00-00', 'RAJESH KHATIK', 'KALPANA KHATIK', '504 NEAR PANGHAT AMBA MATA MANDIR MARG EKLAVYA COLONY', '', 7, 1, 1, '3655', 'jayeshkhatik', '0235272b24fe395254778dd014c98bd9', '77371189999', '7737189999', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(746, 746, 0, 5, 'MIHIKA  BANSHIWAL', '0000-00-00', 'NARESH BANSHIWAL', 'VIMLESH BANSHIWAL', 'H.NO.-45,HARSH NAGAR BOHRA COLONY, RAMPURA CHOURAHA', '', 7, 1, 1, '3046', 'mihikabanshiwal', '8d570660d0daf9b16db781a197fb521e', '9461491096', '9461491096', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(747, 747, 0, 5, 'PRIYANSHI  YADAV', '0000-00-00', 'ASHOK YADAV', 'ANJU YADAV', 'K-96, HARIDAS JI KI MAGRI NEAR ST. XAVIER SCHOOL', '', 7, 1, 1, '2895', 'priyanshiyadav', '823d8e5aa55ec4ee75fa67bbb9ffe230', '9352513283', '9950614393', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(748, 748, 0, 5, 'HANSIKA  KAMOYA', '0000-00-00', 'ANIL KUMAR KAMOYA', 'HEMA KAMOYA', '2, BHERU GHATI CHANDPOLE', '', 8, 1, 1, '2698', 'hansikakamoya', '0ae7a371dcbcfbe6f38e4ab1f4f513c7', '9799397502', '9799397502', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(749, 749, 0, 5, 'HARSH  BHAGORA', '0000-00-00', 'MAHENDRA BHAGORA', 'PYARI BHAGORA', 'EKLAVYA COLONY', '', 8, 1, 1, '2740', 'harshbhagora', '84993af7634702bafe9f1052a7bdee75', '9828158637', '9784423795', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(750, 750, 0, 5, 'SANJANA  ATHWAL', '0000-00-00', 'SHANKAR LAL ATHWAL', 'DHANWANTI ATHWAL', 'MALLA TALAI SAJJAN NAGAR A- BLOCK NEAR ARYASAMAJ TEMPLE, UDAIPUR', '', 8, 1, 1, '3381', 'sanjanaathwal', '8032c8c2acff6275f36461efb89de677', '9602472555', '9602472555', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(751, 751, 0, 5, 'VEERAM DEV GHARU', '0000-00-00', 'RAKESH GHARU', 'SEEMA GHARU', '44 HARIJAN BASTI GANDHI NAGAR MALLA TALAI', '', 8, 1, 1, '2758', 'veeramdevgharu', '80e6f2a13c56f3fa76aebf41177ad1de', '9509727022', '9509727022', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(752, 752, 0, 5, 'KHUSHI  GAMETI', '0000-00-00', 'VEER CHAND GAMETI', 'KANTA GAMETI', '3-DUDHIYA GANESH JI EKLAVYA COLONY', '', 9, 1, 1, '2425', 'khushigameti', '5f3778ba1a988539215257143ff71e36', '9414669581', '9414669581', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(753, 753, 0, 5, 'KRISH  SAVITA', '0000-00-00', 'SARVESH KUMAR', 'SUMAN', 'F-24, HARIDAS JI KI MAGRI', '', 9, 1, 1, '2420', 'krishsavita', 'be0b02369b9d07fb6f4d648a100fd185', '9269900254', '9983609099', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(754, 754, 0, 5, 'MANISHA  MEGHWAL', '0000-00-00', 'SOHAN LAL MEGHWAL', 'SUSHILA MEGHWAL', 'VILLAGE BUJHDA', '', 9, 1, 1, '2674', 'manishameghwal', '85dceb7c62b7a31b8a81ef2175d94a4d', '9799003810', '9799003810', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(755, 755, 0, 5, 'PRIYANSHU  VASITA', '0000-00-00', 'LATE GHISU LAL VASITA', 'MANJU', 'HARSH NAGAR BOHRA COLONY SISARMA', '', 9, 1, 1, '2435', 'priyanshuvasita', 'bf718abd847c6a4f3bb84713e3c44e03', '9829225220', '9829225220', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(756, 756, 0, 5, 'SONAL  KHATIK', '0000-00-00', 'MAHENDRA KHATIK', 'PINKY KHATIK', 'H.NO.-35, M.B.HOSPITAL CAMPUS', '', 9, 1, 1, '2972', 'sonalkhatik', 'e298e3154e878fd0460e6cd391e94a71', '', '7665441414', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(757, 757, 0, 5, 'JATIN  KASOTIYA', '0000-00-00', 'SHYAM KUMAR MEGHWAL', 'MANJU MEGHWAL', '72,B AMBAMATA SCHEME', '', 14, 1, 1, '2588', 'jatinkasotiya', '790b631e6cde31d97df89b77894fefbf', '9680176620', '9680176620', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(758, 758, 0, 5, 'JAYESH  CHANAL', '0000-00-00', 'BHANWAR LAL CHANAL', 'SAROJ CHANAL', 'EKLAVYA COLONY', '', 14, 1, 1, '2227', 'jayeshchanal', '28d131b362c960ed9f24760dbf079d91', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(759, 759, 0, 5, 'KRITIKA  KASOTIYA', '0000-00-00', 'DILIP KUMAR MEGHWAL', 'PREM  MEGHWAL', 'B-72, AMBAMATA COLONY', '', 14, 1, 1, '1239', 'kritikakasotiya', '3f4aee54a064d1a767875988cb2320e9', '9983574419', '9983574419', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(760, 760, 0, 5, 'ROHAN  NIMAWAT', '0000-00-00', 'PRADEEP NIMAWAT', 'RAJKUMARI NIMAWAT', '271,AMRUDO KI BADI AMBAMATA', '', 14, 1, 1, '1220', 'rohannimawat', 'f6b88d850052ab2b3eae5ee35da9a048', '9414296877', '9461463377', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(761, 761, 0, 5, 'SONAKSHI  YADAV', '0000-00-00', 'HEMSHANKAR YADAV', 'ANITA YADAV', '38 AMAR NAGAR GOVERDHAN KRIPA 80 FEET ROAD', '', 14, 1, 1, '2995', 'sonakshiyadav', '4845abe7c839dd7de89020061ae742dd', '8696525121', '8696525121', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(762, 762, 0, 5, 'MANSI  BAIRWA', '0000-00-00', 'PRAKASH CHANDRA BAIRWA', 'SHAKUNTALA', 'HARI DAS JI KI MAGARI', '', 4, 1, 1, '3561', 'mansibairwa', 'd3d24170d559bd977fa402326dce4138', '9828354287', '8094240565', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(763, 763, 0, 5, 'SANIDHYA SINGH PARIHAR', '0000-00-00', 'GOKUL SINGH PARIHAR', 'LAXMI PARIHAR', 'H.NO.-43, SANJAY COLONY RATA KHET', '', 4, 1, 1, '3461', 'sanidhyasinghparihar', 'e5f856fff489ae15d73a5cdf7714e42c', '9887076176', '9694137575', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(764, 764, 0, 5, 'YUVRAJ  KHATIK', '0000-00-00', 'RAJESH KHATIK', 'KALPANA KHATIK', '504 NEAR PANGHAT AMBA MATA MANDIR MARG EKLAVYA COLONEY', '', 4, 1, 1, '3654', 'yuvrajkhatik', '031d471ffca2b0cb2acee956369c1a4a', '2942411059', '77371899999', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(765, 765, 0, 5, 'HARSHIT SAMRIA  ', '0000-00-00', 'TARA CHAND KHATIK', 'PARWATI DEVI', 'NEAR CHOUDHRI GUEST HOUSE AMBAWADI RAMPURA', '', 3, 1, 1, '3752', 'harshitsamria', '1f78c49cb0e5c426fa284cbe751ae012', '9783791479', '9783791479', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(766, 766, 0, 5, 'VARSHA  OAD', '0000-00-00', 'UDESH OAD', 'NIRMA OAD', 'B-4 HARIDAS JI KI MAGRI', '', 10, 1, 1, '2313', 'varshaoad', '1180d31d646b679c3e2dafe23cf49a51', '9001834278', '9001834278', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(767, 767, 0, 5, 'NEHA  BARWA', '0000-00-00', 'PRAKASH BARWA', 'SHAKUNTALA BERWA', 'HARIDAS JI KI MAGRI NEAR FURNITURE SHOP', '', 11, 1, 1, '2533', 'nehabarwa', 'f020f02f510938338155721426a6d468', '9828354287', '9828354287', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(768, 768, 0, 5, 'ARUN  MEGHWAL', '0000-00-00', 'SOHAN LAL MEGHWAL', 'SUSHILA MEGHWAL', 'VILLAGE-BUJHDA TEHSIL GIRWA UDAIPUR', '', 12, 1, 1, '1656', 'arunmeghwal', '78098232f5bb1485a546edade010ed17', '9799003810', '9799003810', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(769, 769, 0, 5, 'HARSHAL  CHOUHAN', '0000-00-00', 'GAUTAM CHOUHAN', 'KIRAN CHOUHAN', '10, HATHI POLE, GANESH PURA NEAR SABJI MANDI', '', 12, 1, 1, '1645', 'harshalchouhan', '2b0bd47a5addd3ec993ed20a66e4dc46', '9829191861', '9829191861', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(770, 770, 0, 5, 'KHUSHI  MALHOTRA', '0000-00-00', 'KISHOR MALHOTRA', 'USHA MALHOTRA', '466,B-BLOCK MALLA TALAI', '', 12, 1, 1, '1648', 'khushimalhotra', '14131abdf2ee0986d0dacc32d1dc8a78', '9214977722', '9214977722', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(771, 771, 0, 5, 'POOJA  VIRVAL', '0000-00-00', 'HEERALAL VIRVAL', 'SUSHILA VIRVAL', 'BLOCK A-169 SAJJAN NAGAR', '', 12, 1, 1, '1715', 'poojavirval', 'f87abc9fe9b04ddd235dc853005c3b6a', '9414736746', '8233425292', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(772, 772, 0, 5, 'MANTHAN  MALHOTRA', '0000-00-00', 'RAJESH MALHOTRA', 'REKHA MALHOTRA', '338, OTC B-BLOCK GANDHI NAGAR MALLA TALAI', '', 13, 1, 1, '1527', 'manthanmalhotra', '7672f406ddb80dca1865936ef5c93fd2', '8769919782', '9983395811', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(773, 773, 0, 5, 'BHAVYA  CHOUHAN', '0000-00-00', 'MANISH CHOUHAN', 'SANGEETA CHOUHAN', 'S 81 GANDHI NAGAR MALLA TALAI', '', 5, 2, 1, '3527', 'bhavyachouhan', 'f4cbac8f768dc7f26f36e2f1b94723a3', '9694404203', '9636592924', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(774, 774, 0, 5, 'DEEPESH  CHOUHAN', '0000-00-00', 'GANPAT CHOUHAN', 'MADHURI CHOUHAN', '8 RATA KHAET NEAR SHREE JI PUBLIC SCHOOL', '', 5, 2, 1, '3670', 'deepeshchouhan', '092b976fcb363cdb9991ec6c864937aa', '9672858359', '9602577620', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(775, 775, 0, 5, 'DIVYANSHU  KHATIK', '0000-00-00', 'MAHENDRA KHATIK', 'PINKY KHATIK', 'N-3, NURSING Q, M.B HOSPITAL', '', 5, 2, 1, '3398', 'divyanshukhatik', '7daaa926e788f2777a5ca18efcb1d90f', '7665441414', '7665441414', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(776, 776, 0, 5, 'DIVYANSHU  YADAV', '0000-00-00', 'ASHOK YADAV', 'ANJANA YADAV', 'K-6, NEAR BY ST.XAVIER SCHOOL,HARIDAS JI KI MAGRI,MALLA TALAI', '', 5, 2, 1, '3330', 'divyanshuyadav', '9d8a3866ffe372d86c059270dbc9f244', '9950614393', '9950614393', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(777, 777, 0, 5, 'GEETIKA  CHOUHAN', '0000-00-00', 'SHANTI LAL CHOUHAN', 'MANJU CHOUHAN', '239 EKLAVYA COLONEY MALLA TALAI', '', 5, 2, 1, '3346', 'geetikachouhan', '739fb5eddfce40b2783c3162cf245b14', '9983826283', '9983826283', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(778, 778, 0, 5, 'NITESH  AHIR', '0000-00-00', 'MADAN AHIR', 'LEELA AHIR', 'L-27 GANDHI NAGAR', '', 5, 2, 1, '3427', 'niteshahir', '89ad4289e5fdb4deadc548c82024d01c', '9829747250', '9829747250', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(779, 779, 0, 5, 'TANISH  VER', '0000-00-00', 'DINESH VER', 'LEELA VER', 'HOTAL RAI PALACE 48-B AMBA MATA', '', 5, 2, 1, '3423', 'tanishver', '609268d2fecf8dbc06f3fa58639259ef', '9549092480', '7728803091', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(780, 780, 0, 5, 'YOGITA  DAHIYA', '0000-00-00', 'NITYA NAND DAHIYA', 'SUMAN', 'CHUNDA PALACE HARI DAS JI KI MAGARI', '', 5, 2, 1, '3345', 'yogitadahiya', '7c7302ee51cd1b703af84596421d1aed', '8890697065', '8890697065', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(781, 781, 0, 5, 'AIRIK  JINGER', '0000-00-00', 'DINESH JINGER', 'REKHA JINGER', '28, DHABAI JI KI BARI UBESHWAER ROAD RAMPURA', '', 6, 2, 1, '3110', 'airikjinger', '97364da06523b67f115ebce855b1db70', '9950204921', '9950204921', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(782, 782, 0, 5, 'BHAWANA  DAHIYA', '0000-00-00', 'NITAYA NAND DAHIYA', 'SUMAN DAHIYA', 'CHUNDA PALACE HARI DAS JI KI MAGARI', '', 6, 2, 1, '3357', 'bhawanadahiya', '41523534156721629453b15acd9f10e6', '8890697065', '8890697065', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(783, 783, 0, 5, 'KRISHNA  YADAV', '0000-00-00', 'PRAHALAD KUMAR YADAV', 'SANGEETA YADAV', '615, NEW CHARBHUJA TEMPLE, CHAMAN PURA, HATHIPOLE', '', 6, 2, 1, '3680', 'krishnayadav', 'e82d4fb3e089206ce1dbaf59f8e2b139', '9784944965', '9509301234', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(784, 784, 0, 5, 'SHORYA PANWAR  ', '0000-00-00', 'VIJAY PANWAR', 'SONU PANWAR', '229 OTC D BLOCK GANDHI NAGAR', '', 6, 2, 1, '3782', 'shoryapanwar', '1352276e1ceeb697fb6765f8752a1129', '7877167611', '7877167611', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(785, 785, 0, 5, 'VINIT  CHANDEL', '0000-00-00', 'GOVIND CHANDEL', 'SUMITRA CHANDEL', 'GANDHI NAGAR, MALLA TALAI 488 UDAIPUR.', '', 6, 2, 1, '3369', 'vinitchandel', '6998c3129f1188100407f0eb3e5103ce', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(786, 786, 0, 5, 'AKSHRA  OAD', '0000-00-00', 'UDESH OAD', 'NIRMA OAD', 'B-4,HARIDAS JI KI MAGRI MALLA TALAI', '', 7, 2, 1, '3067', 'akshraoad', 'a3e0368461d58a268c1ca9302934f4b4', '9001834278', '9001834278', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(787, 787, 0, 5, 'MAHI  PANWAR', '0000-00-00', 'VIJAY PANWAR', 'SONU PANWAR', '229 OTC D BLOCK GANDHI NAGAR', '', 7, 2, 1, '3779', 'mahipanwar', 'aaba7cd97ea471fb44c384073ed782bb', '7877167611', '7742433901', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(788, 788, 0, 5, 'PIYUSH VERMA ', '0000-00-00', 'DEEPAK VERMA', 'PINKI VARMA', 'L-91 A BLOCK SAJJAN NAGAR', '', 7, 2, 1, '3530', 'piyushverma', '8b3c4acb92197a6140611e246802bbfc', '8239459383', '9530078309', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(789, 789, 0, 5, 'PRIYANSHU  VERMA', '0000-00-00', 'DEEPAK VERMA', 'PINKI VERMA', 'L-91 A BLOCK SAJJAN NAGAR', '', 7, 2, 1, '3531', 'priyanshuverma', '8c306c1bb64b479f55de02dc4d03f009', '8239459383', '9530078309', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(790, 790, 0, 5, 'ADITI  KANDARA', '0000-00-00', 'VINOD KANDARA', 'USHA KANDARA', '18,CHAMAN PURA GALI NO-8 HATI POLE', '', 8, 2, 1, '3350', 'aditikandara', '71f7c3e335c8afd3827068a84c2844a1', '9784543812', '9829644260', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(791, 791, 0, 5, 'HARSHITA  CHHAPARWAL', '0000-00-00', 'VIJAY CHHAPARWAL', 'RAJANI CHHAPARWAL', '933 GANDHI NAGAR W.N.6 HARIJAN BASTI', '', 8, 2, 1, '2730', 'harshitachhaparwal', '6bf1c2395ba391532d587d9b38e46c53', '9887031159', '9782921843', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(792, 792, 0, 5, 'KHUSHI  VASITA', '0000-00-00', 'ARJUN VASITA', 'MANJU VASITA', '366,AMBAV GARH KACCHI BASTI', '', 8, 2, 1, '2695', 'khushivasita', '331281548a78af6e9374ef9aa1b1d626', '9828498249', '9828498249', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(793, 793, 0, 5, 'NARENDRA  OAD', '0000-00-00', 'LAXMAN OAD', 'VINITA OAD', 'SAJJAN NAGAR A-BLOCK HANUMAN JI KA MANDIR', '', 8, 2, 1, '3006', 'narendraoad', '5ed561de1356d9d3356cd181ff1b9c1b', '9783525266', '9783525266', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(794, 794, 0, 5, 'PARV  PURBIA', '0000-00-00', 'MUKESH PURBIA', 'REKHA PURBIA', '57 PURBIA COLONY OTC B BLOCK SAJJAN NAGAR', '', 8, 2, 1, '2710', 'parvpurbia', '94f731fde83a62005814301d7ac5d597', '9784399433', '9784399433', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(795, 795, 0, 5, 'KARTIK  ATHWAL', '0000-00-00', 'SURAJ ATHWAL', 'SEEMA ATHWAL', 'MALLA TALAI, SAJJAN NAGAR A-BLOCK UDAIPUR.', '', 9, 2, 1, '3382', 'kartikathwal', '4fed58fa2dc9cdc643c30573548dfa1b', '9829464817', '9829464817', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(796, 796, 0, 5, 'GOURAV  NAKWAL', '0000-00-00', 'JASWANT NAKWAL', 'NEETU NAKWAL', '809 GANDHI NAGAR HARIJAN BASTI MALLATALAI', '', 4, 2, 1, '3559', 'gouravnakwal', 'ff76e59d647a86709fe423ae3183795b', '', '9571314457', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(797, 797, 0, 5, 'HIMANSHU MEGHWAL  ', '0000-00-00', 'GANPAT LAL MEGHWAL', 'ASHA MEGHWAL', 'MEGHWALON KA MOHALLA NAI', '', 4, 2, 1, '3671', 'himanshumeghwal', '4c40ab94897957c87c6b831f6c092922', '9413787021', '9660274177', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(798, 798, 0, 5, 'SHIVAM KUMAR YADAV', '0000-00-00', 'SANJAY YADAV', 'BABITA YADAV', '615 CHAMAN PURA HATIPOLE', '', 4, 2, 1, '3675', 'shivamkumaryadav', 'cf13c9145dfa41c43956645062286ae2', '', '9784944965', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(799, 799, 0, 5, 'VAISHALI  MEGHAWAL', '0000-00-00', 'LOKESH MEGHAWAL', 'PRIYANKA MEGHAWAL', 'MEGHWALO KA MOHLLA NAI', '', 4, 2, 1, '3635', 'vaishalimeghawal', 'b6f4803706a4fe0432d988245e7a5fbe', '7728803150', '9587303066', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(800, 800, 0, 5, 'ASIMA  ', '0000-00-00', 'MOHAMMED HANIF', 'TARANNUM', '18 KALLESAT NEAR MOSQUE', '', 3, 2, 1, '3612', 'asima', '1ed8e62e86a64a419624389f4d346d0e', '9829644272', '9829644272', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(801, 801, 0, 5, 'RONAK  OAD', '0000-00-00', 'SHANTI LAL OAD', 'HEENA OAD', 'F-25 HARI DAS JI KI MAGARI', '', 3, 2, 1, '3580', 'ronakoad', 'a9ce48722cce574a8782370fd1efa736', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(802, 802, 0, 5, 'HARSH  ATHWAL', '0000-00-00', 'SHANKAR LAL ATHWAL', 'DHANWANTI ATHWAL', 'MALLA TALAI, SAJJAN NAGAR A- BLOCK NEAR ARAYA SAMAJ TAMPLE, UDAIPUR', '', 10, 2, 1, '3383', 'harshathwal', '4fb1e05be9423d2bb0dd96cc2f8455d8', '9602472555', '9602472555', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(803, 803, 0, 5, 'VARSHA  OAD', '0000-00-00', 'LOGAR OAD', 'SUGNA OAD', 'EKLAVYA COLONY', '', 10, 2, 1, '2510', 'varshaoad', '1180d31d646b679c3e2dafe23cf49a51', '9929900939', '9602512815', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(804, 804, 0, 5, 'BHAVIN  ARYA', '0000-00-00', 'HITESH ARYA', 'SHAKUNTALA ARYA', 'EKLAVYA COLONY H.NO 2098 NEAR RING ROAD', '', 12, 2, 1, '3378', 'bhavinarya', '710aa246b9fc5fb90f88b227b172692f', '9929902276', '9929902276', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(805, 805, 0, 5, 'POOJA  BERA', '0000-00-00', 'DULAL BERA', 'CHANDAN BERA', 'CHANDPOL', '', 13, 1, 1, '1752/A', 'poojabera', '4284ff1e8b81e80e2cfe0aad9348b7ac', '9672548642', '9672548642', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(806, 806, 0, 5, 'VAISHNAVI  GHAWARI', '0000-00-00', 'ROSHAN GHAWARI', 'DOULAT GHAWARI', '535, OTC D BLOCK B/H MAGRI SCHOOL, MALLATALAI', '', 13, 1, 1, '1761', 'vaishnavighawari', '268c79ca6821cfc979ea13ab8c00124b', '9772889566', '9772889566', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(807, 807, 0, 5, 'MEGHNA  MEGHWAL', '0000-00-00', 'GANPAT LAL', 'ASHA MEGHWAL', 'MEGWALO KA MOHLA, NAI', '', 6, 3, 1, '3368', 'meghnameghwal', 'fcf20219680a5b9b26d727d1667e6580', '9413787021', '9660274177', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(808, 808, 0, 5, 'PURVANSHI  NIMAWAT', '0000-00-00', 'SHAMBHU LAL NIMAWAT', 'MEENAKSHI NIMAWAT', '240,EKLAVYA COLONY, MALLA TALAI', '', 6, 3, 1, '3162', 'purvanshinimawat', '86cd0f2abd5cc6736e1d0e0797ff510e', '9636478002', '9636478002', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(809, 809, 0, 5, 'TUSHAR  MEGHWAL', '0000-00-00', 'LALIT MEGHWAL', 'SHEETAL MEGHWAL', '457,BHARAM POLE ROAD MALLA TALAI', '', 6, 3, 1, '3126', 'tusharmeghwal', '001572327e5d12d965a7e60893adcfbb', '9799612788', '9799612788', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(810, 810, 0, 5, 'HARSHVARDHAN  CHOUHAN', '0000-00-00', 'GANPAT CHOUHAN', 'MADHURI CHOUHAN', '8 RATAKHET NEAR SHRIJI PUBLIC SCHOOL', '', 3, 3, 1, '3740', 'harshvardhanchouhan', '824e77218585710c4f0ff2f267000d1a', '9602577620', '9602577620', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(811, 811, 0, 5, 'SANSKAR  ATHWAL', '0000-00-00', 'VIKAS HARIJAN', 'POOJA KODLI', '97 OTC SCHEME D-BLOCK BEHIND MAGRI SCHOOL', '', 3, 3, 1, '3695', 'sanskarathwal', 'a63a2dee21cfd9b32404b888a82395e1', '9571328453', '8290017453', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(812, 812, 0, 5, 'VIRAJ CHOUHAN  ', '0000-00-00', 'ASHOK KUMAR CHOUHAN', 'KIRAN CHOUHAN', '8 RATAKHET NEAR SHRIJI PUBLIC SCHOOL', '', 3, 3, 1, '3741', 'virajchouhan', 'abd943963f0c6eb4dbb5dd85d16f47fd', '9928067988', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(813, 813, 0, 5, 'KHUSHALI  CHOUHAN', '0000-00-00', 'GOUTAM CHOUHAN', 'KIRAN CHOUHAN', 'H.NO.10 GALI NO 6, HATHIPOLE', '', 6, 1, 1, '3275/22/13', 'khushalichouhan', '356fd3e6f389d6ede09dfeecccce4c1b', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(814, 814, 0, 5, 'NIHANSHI  KHATIK', '0000-00-00', 'SHAYAM CHOUHAN', 'SAPNA CHOUHAN', 'HATHIPOLE INSIDE SABJI MARKET KE PASS', '', 7, 1, 1, '12-11-3282', 'nihanshikhatik', '04f86f0eb59072ae0337d78156015505', '9783757551', '9783757551', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(815, 815, 0, 5, 'CHAVI  KHATIK', '0000-00-00', 'CHANDRA PRAKASH KHATIK', 'BHAVNA KHATIK', '223, EKLAVYA COLONY, SAJJAN GARH ROAD', '', 3, 1, 1, '3618', 'chavikhatik', 'ff5bc4776394313a847e547e41031522', '7793086315', '7793086315', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(816, 816, 0, 5, 'VINITA  CHHAPARWAL', '0000-00-00', 'VIJAY CHHAPARWAL', 'RAJNI CHHAPARWAL', '933, WN 36 HARIJAN BASTI GANDHI NAGAR MALLA TALI', '', 5, 2, 1, '3413', 'vinitachhaparwal', '5b165d80c1796d9a010e48178cb394f9', '9887031159', '9887031159', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(817, 817, 0, 5, 'SUMITRA  GHARU', '0000-00-00', 'RAKESH GHARU', 'SEEMA GHARU', '465, AMBAMATA SCHEEM UDAIPUR', '', 6, 3, 1, '3277/35/13', 'sumitragharu', 'c2ad5311458061d3627b6e11199d2dc5', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(818, 818, 0, 5, 'JANVI DHOBI  ', '0000-00-00', 'RAJENDRA KUMAR', 'MAMTA', '131 B AMBAWADI RAMPURA', '', 3, 3, 1, '3646', 'janvidhobi', '3ff96d193cd79c3a5ad8e4c632123c0b', '9649470974', '9649470974', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(819, 819, 0, 5, 'MANSI  VED', '0000-00-00', 'JITENDRA KUMAR BAIRWA', 'REKHA DEVI', 'H - 318 GANDHI NAGAR MALLA TALAI', '', 3, 3, 1, '3619', 'mansived', '460cbfb240cefb7cb2527685a3c141c1', '9414727885', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(820, 820, 0, 5, 'JAYESH  GAMETI', '0000-00-00', 'RAMESH GAMETI', 'SAVITRI GAMETI', 'GORELA ADIVASI BASTI', '', 5, 1, 1, '3547', 'jayeshgameti', 'ac0d5387b12b2056752762e9aed40bf9', '9610972499', '9610972499', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(821, 821, 0, 5, 'JAYESH  MEENA', '0000-00-00', 'RAMESH MEENA', 'LAXMI MEENA', 'H.NO-176, EKLAVYA COLONY MALLA TALAI', '', 5, 1, 1, '3135', 'jayeshmeena', '2e187a73bfadf65e3f6464d07f0f69d2', '9636482068', '9636482068', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(822, 822, 0, 5, 'KANISHK RAJ MEENA', '0000-00-00', 'VIRAT KUMAR GAURAVE', 'MEENAKSHI DAMORE', '659,EKLAVYA COLONY DUDHIYA GANESH JI', '', 5, 1, 1, '3338', 'kanishkrajmeena', '8724d0f0c142b92e68bf72125d87a148', '2432106', '9414161024', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(823, 823, 0, 5, 'AARYAN  DAMOR', '0000-00-00', 'OM PRAKASH DAMOR', 'SARIPA DAMOR', 'NO-K-7 NOW POLICE QUARTER SISARMA 80 FIT ROAD', '', 6, 1, 1, '3093', 'aaryandamor', '65b0ca8f9d7ec7b49f247c71aad13632', '9001980031', '9001980031', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(824, 824, 0, 5, 'LAKSHITA  BHANAT', '0000-00-00', 'ANIL KUMAR BHANAT', 'REKH MEENA', '7 RATA KHETA NEAR SHREE JI PUBLIC SCHOOL', '', 6, 1, 1, '3663', 'lakshitabhanat', '283ead540a84d0e739e53de0ded0b05e', '8696451292', '7737794148', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(825, 825, 0, 5, 'VARSHA  MEENA', '0000-00-00', 'PRAKASH MEENA', 'TARUNA MEENA', '809, GAMETIYON  KI GALI BHARMPOL', '', 6, 1, 1, '3167', 'varshameena', '5d7b8bc449c00a375ac7430d9bdd3fad', '9602240248', '9602240248', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(826, 826, 0, 5, 'RAJSHEELA  DAMORE', '0000-00-00', 'RAMESH CHANDRA DAMOR', 'TARA DAMORE', 'NO-12,M-BLOCK,NEW POLICE LINE QUARTER', '', 7, 1, 1, '2947', 'rajsheeladamore', 'bf850199c9f207dbd1943df8cd0a0fea', '9602202957', '9602202957', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(827, 827, 0, 5, 'SHIVANI  MEENA', '0000-00-00', 'ASHOK MEENA', 'AASHA MEENA', '7, RATA KHET NEAR SHRI JI PUBLIC SCHOOL MALLA TALAI', '', 7, 1, 1, '2906', 'shivanimeena', 'd4f16e0dbe211c739f726340fb9c910b', '9414158955', '941418955', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(828, 828, 0, 5, 'SIDDHARTH  GAMETI', '0000-00-00', 'VEER CHAND  GAMETI', 'KANTA GAMETI', 'H.NO.-704, DUDHIYA GANESH JI PUBLIC SCHOOL MALLA TALAI', '', 7, 1, 1, '2964', 'siddharthgameti', '3c7ea2cda508e0481c08cf4413bf0fcc', '9414645528', '9414645528', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(829, 829, 0, 5, 'DIYANSH  BHAGORA', '0000-00-00', 'JITENDRA BHAGORA', 'HEMALATA BHAGORA', '176 EKLAVYA COLONY', '', 8, 1, 1, '2737', 'diyanshbhagora', '2a035f732ab4502e9a00595a25ef9018', '9983092322', '8696461565', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(830, 830, 0, 5, 'NIHAL BHAGORA  ', '0000-00-00', 'DURGESH BHAGORA', 'HEMLATA BHAGORA', '177 EKLAVYA COLONY', '', 8, 1, 1, '3754', 'nihalbhagora', '8f18ecad6e5a2b949bff95e2e135d92b', '9680756637', '9680756637', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(831, 831, 0, 5, 'PRAYAS  KHARADI', '0000-00-00', 'NANURAM KHARADI', 'RAMILA', '402 CHAMPA COLONY MALLA TALAI', '', 14, 1, 1, '2064', 'prayaskharadi', 'fb9a33a953b1455b34db3eed45e9e7c4', '9166617956', '9166617956', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(832, 832, 0, 5, 'DAMINI DODIYAR  ', '0000-00-00', 'VIJAY KUMAR DODIYAR', 'ANITA PARMAR', '751 EKLAVYA COLONY DUDHIYA GANESH JI', '', 4, 1, 1, '3747', 'daminidodiyar', 'b610342b80f99890e55e5fe40e1c5c29', '9982992204', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(833, 833, 0, 5, 'DIVYADARSHAN  BHANAT', '0000-00-00', 'ANIL KUMAR BHANAT', 'REKHA MEENA', '7 RATA KHETA NEAR SHREE JI PUBLIC SCHOOL', '', 4, 1, 1, '3642', 'divyadarshanbhanat', '980649ef35a132fa0e281dbef6d338b4', '8696451292', '7737794148', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(834, 834, 0, 5, 'DIVYANSHU  PARGI', '0000-00-00', 'PRAKSAH PARGI', 'SUDHA PARGI', 'SISARMA ROAD NEAR FATEH NIWAS HOTEL', '', 4, 1, 1, '3688', 'divyanshupargi', '8555be90ac6e8db27513905d6b84754a', '7023872396', '7728880588', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(835, 835, 0, 5, 'MAHIMA  GAMAR', '0000-00-00', 'HANS RAJ GAMAR', 'MEERA GAMAR', '1385 EKLAVYA COLONEY DUDHIYA GANESH JI', '', 3, 1, 1, '3572', 'mahimagamar', 'b6e96c1cd2027123be4f85a5fc5ce3c0', '9413763698', '9413763698', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(836, 836, 0, 5, 'DIVYANSHU  SURECHA', '0000-00-00', 'KANAHAIYA LAL', 'SUNDER DEVI', '18 GAMETIYON  KI GALI 9/5 BHARMPOL', '', 10, 1, 1, '2493', 'divyanshusurecha', '939b93eeab73d4d2d35f57d0a4fcb8ec', '9414737281', '9414737281', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(837, 837, 0, 5, 'MUKESH MEENA  ', '0000-00-00', 'ANIL MEENA', 'NIRMALA MEENA', 'SAJJAN NAGAR A BLOCK NEAR ANAMI SCHOOL', '', 12, 1, 1, '3729', 'mukeshmeena', '8346369873ed6ef6bc299a970024a4bb', '9783509117', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(838, 838, 0, 5, 'JAYESH  BHIL', '0000-00-00', 'LAXMAN LAL', 'JASHODA DEVI', '236, EKLAVYA COLONY,MALLA TALAI', '', 5, 2, 1, '3329', 'jayeshbhil', '7e4ae27a53a1e7fc6bcf7c9b3ee30210', '9983301082', '9983301082', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(839, 839, 0, 5, 'KALPESH  GAMAR', '0000-00-00', 'HANSRAJ GAMAR', 'MEERA GAMAR', 'EKLAVYA COLONY DUDHIYA GANESH JI SAJJAN NAGAR', '', 5, 2, 1, '3409', 'kalpeshgamar', '4078e9cab180112011cdbc179cbbe2f6', '8769344118', '8769344118', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(840, 840, 0, 5, 'KUSHAL  KATARA', '0000-00-00', 'RAMESH MEENA', 'JASODA MEENA', 'M-09, NEW POLICE LINE  BEHIND MASTAN BABA DARGAH', '', 5, 2, 1, '3328', 'kushalkatara', 'c4753c1f1c5d1e5e5e67820f99bc598f', '9950480626', '8290732181', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(841, 841, 0, 5, 'HARSHVARDHAN  MEENA', '0000-00-00', 'ASHOK MEENA', 'AASHA DEVI MEENA', 'RATA KHET NEAR SHRIJI PUBLIC SCHOOL, MALLA TALAI', '', 6, 2, 1, '3079', 'harshvardhanmeena', '5e7b57a8e3bf5a638fd893b469107e9c', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(842, 842, 0, 5, 'MOHIT  GAMETI', '0000-00-00', 'LAXMAN GAMETI', 'SITA GAMETI', '570 EKLAVYA COLONEY MALLATALAI', '', 6, 2, 1, '3634', 'mohitgameti', '886ada09da6ec2cfa51978dfd289fe2a', '9785394737', '9799143052', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(843, 843, 0, 5, 'BHUMIKA  MEENA', '0000-00-00', 'RAMESH MEENA', 'LAXMI MEENA', 'H. NO.-46, EKLAVYA COLONY MALLA TALAI', '', 7, 2, 1, '3008', 'bhumikameena', 'ed55098743d02aca4a300afc029d0d71', '9636482068', '9636482068', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(844, 844, 0, 5, 'NIRMALA  GAMETI', '0000-00-00', 'LAXMAN GAMETI', 'SITA GAMETI', '570 EKLAVYA COLONEY', '', 7, 2, 1, '3625', 'nirmalagameti', '2aa9b82b056f17feaae2f9b7a86c6a22', '9785394737', '9799143052', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(845, 845, 0, 5, 'ASHA MEENA  ', '0000-00-00', 'ANIL MEENA', 'NIRMALA MEENA', 'SAJJAN NAGAR A BLOCK NEAR ANAMI SCHOOL', '', 8, 2, 1, '3730', 'ashameena', 'fca926b64ff967fb83d043e9fcb28883', '9783509117', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(846, 846, 0, 5, 'KAMAL  AERI', '0000-00-00', 'DAL CHAND AERI', 'ANITA AERI', 'S-499 EKLAVYA COLONY', '', 9, 2, 1, '2480', 'kamalaeri', '3516b3c0899940e2771a3db64a580057', '9928420775', '9928420775', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(847, 847, 0, 5, 'VAISHALI  MEENA', '0000-00-00', 'ASHOK KUMAR', 'ASHA MEENA', '8- RATA KHET NEAR SHREE JI PUBLIC SCHOOL', '', 9, 2, 1, '2680', 'vaishalimeena', '7c4531ca3e40a40727512cf39f03f5e6', '9414158955', '9414158955', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(848, 848, 0, 5, 'VISHAKHA  MEENA', '0000-00-00', 'PRAKASH MEENA', 'TARUNA MEENA', '809, GAMETIYON KI GALI INSIDE BRAHAMPOLE', '', 4, 2, 1, '3457', 'vishakhameena', 'e19a1ede65878ab73eb9510849a6ca97', '9602240248', '9602240248', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(849, 849, 0, 5, 'SAHIL  DHANGI', '0000-00-00', 'BABU LAL DHANGI', 'SUNITA DHANGI', 'HARI DAS JI KI MAGARI', '', 3, 2, 1, '3571', 'sahildhangi', '8af82dd9845c8fe810b48ef0c1519db5', '', '9799208979', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(850, 850, 0, 5, 'NIDHI MEENA  ', '0000-00-00', 'RAKESH KUMAR MEENA', 'PRAMILA MEENA', '751 DUDHIYA GANESH JI', '', 10, 2, 1, '3748', 'nidhimeena', 'b33418ae2ff389ae80cd3ad950f99613', '9982992204', '9982992204', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(851, 851, 0, 5, 'GAJENDRA  KHARADI', '0000-00-00', 'KALURAM KHARADI', 'DURGA KHARADI', '504, EKLAVYA COLONY, MALLA TALAI', '', 11, 2, 1, '2136', 'gajendrakharadi', '819186948ed50a6382d1c55749893f5c', '9929855303', '9929855303', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(852, 852, 0, 5, 'ARPIT  BHAGORA', '0000-00-00', 'JITENDRA BHAGORA', 'HEMA BHAGORA', '176, EKLAVYA COLONY, MALLA TALAI', '', 13, 1, 1, '1584', 'arpitbhagora', '3102db7d5153354b29434a71e513674e', '8696461565', '9983092322', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(853, 853, 0, 5, 'SAHIL  BHAGORA', '0000-00-00', 'MAHENDRA BHAGORA', 'PYARI BHAGORA', '176, EKLAVYA COLONY, MALLA TALAI', '', 13, 1, 1, '1583', 'sahilbhagora', '36df9842f6920f238344963f1beca357', '9828158637', '9784423795', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(854, 854, 0, 5, 'SANA  BHAGORA', '0000-00-00', 'ANIL BHAGORA', 'ARUNA BHAGORA', 'E 2/20 SAJJAN NAGAR KACCHI BASTI MASTANA BABA ROAD', '', 13, 1, 1, '1572', 'sanabhagora', 'e2073c283cf3e08647181409e5bbec08', '9772713531', '9772713531', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(855, 855, 0, 5, 'YASHWANT  KHARADI', '0000-00-00', 'KALU RAM KHARADI', 'MANJU KHARADI', 'VILLAGE POST', '', 13, 1, 1, '1411', 'yashwantkharadi', 'c22dd9e8542ed6e1d699891162ffcb29', '9929855303', '9929855303', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(856, 856, 0, 5, 'DIMPLE  KATARA', '0000-00-00', 'VINOD KATARA', 'MONIKA KATARA', 'BHILU RANA COLONY NEAR GOVT SCHOOL BEHIND MASTANA BABA UDAIPUR', '', 6, 3, 1, '3388', 'dimplekatara', '0706468eba0ecadb49945657465397af', '9680017720', '9680017720', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(857, 857, 0, 5, 'ANJAL PARMAR  ', '0000-00-00', 'KAMLESH PARMAR', 'ABHINAY GAURAV', '751 EKLAVYA COLONY DUDHIYA GANESH JI', '', 3, 3, 1, '3746', 'anjalparmar', 'd55b3cf9669ac66ed846d899af72b3c7', '9982992204', '9982992204', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(858, 858, 0, 5, 'ONICK PARMAR  ', '0000-00-00', 'KAMLESH PARMAR', 'ABHINAY GAURAV', '751 EKLAVYA COLONY DUDHIYA GANESH JI', '', 3, 3, 1, '3745', 'onickparmar', '08da2ac287cf8851f5940f64185476b5', '9982992204', '9982992204', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(859, 859, 0, 5, 'RANJEET  MEENA', '0000-00-00', 'LATE BADRI LAL MEENA', 'MANJU MEENA', 'EKLAVYA COLONY', '', 7, 2, 1, '3286/15/12', 'ranjeetmeena', '1197e5b5fbdbd2fff2f3c134300c41b6', '9001240873', '9001240873', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(860, 860, 0, 5, 'JYOTI  GAMETI', '0000-00-00', 'RAMESH GAMETI', 'SAVITRI', '71, GORELA AADIWASI BASTI', '', 3, 3, 1, '3734', 'jyotigameti', 'e06c2d62776a58beb5bf4287ec76c1c5', '9610972499', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(861, 861, 0, 5, 'ANAM KHAN  ', '0000-00-00', 'ASLAM KHAN', 'PARVEEN BANO', 'PANDU WARI GADIYA DEWRA CHANDPOLE', '', 5, 2, 1, '3772', 'anamkhan', '771599657a4490d686049f7d03591c9b', '9828082080', '9828082080', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(862, 862, 0, 5, 'NIRMAL  OAD', '0000-00-00', 'LAXMAN OAD', 'VINITA OAD', 'SAJJAN NAGAR A-BLOCK HANUMAN JI KI GALI', '', 6, 2, 1, '3296', 'nirmaload', 'c0af1ca25694a73d6c7f21421a677271', '9783598266', '9783598266', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(863, 863, 0, 5, 'NISHA KUMARI SOLANKI', '0000-00-00', 'DEVI LAL SOLANKI', 'LAXMI BAI', 'VILLAGE BUJHDA', '', 7, 2, 1, '3294', 'nishakumarisolanki', '78299ee9ae41cd282a3db0d61801613d', '9636315662', '9784062662', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(864, 864, 0, 5, 'NILESH  BHARTI', '0000-00-00', 'NAND BHARTI', 'REETA BHARTI', '', '', 6, 3, 1, '3299', 'nileshbharti', '3c80a57b4568b5276cedc93356d1b46e', '9166577749', '9166577749', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(865, 865, 0, 5, 'YUVRAJ PANWAR  ', '0000-00-00', 'MAHESH PANWAR', 'RAKHI PANWAR', '807, GANDHI NAGAR', '', 3, 1, 1, '3623', 'yuvrajpanwar', 'd6cbfec390446e32cd4a65d840b52db8', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(866, 866, 0, 5, 'ZOYA FATIMA  ', '0000-00-00', 'RAIS', 'NASREEN', 'SAJJAN NAGARN KACHCHI BASTI', '', 3, 1, 1, '3733', 'zoyafatima', '1c04614a06a86fe31feb3fa9e7de6c83', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(867, 867, 0, 5, 'SHIFA  KOUSAR', '0000-00-00', 'ZAKIR HUSSAIN', 'ZABUNNISHA', 'K-16, MASTAN BABA COLONY SAJJAN NAGER', '', 6, 2, 1, '3269/27/13', 'shifakousar', 'dd2833c0f0706c856946096b751e69fa', '9784779949', '9784779949', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(868, 869, 0, 5, 'MOHAMMED  REHAN', '0000-00-00', 'MOHAMMED IDRIS', 'FIROJA BANO', '12 LALGHAT, BEHIND JAGDISH TEMPLE', '', 10, 1, 1, '3799', 'mohammedrehan', 'd0f5987d0ed701fb9cae8081c6045d2d', '', '9414646321', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(869, 870, 0, 5, 'NEELANSHI  SONI', '0000-00-00', 'NILESH SONI', 'JYOTI SONI', '16, HARIHAR NAGAR SISARMA ROAD ', '', 2, 0, 1, '3784', 'neelanshisoni', '55d03ca114b254d9a26e00a26f0c7d72', '7737685664', '9252137338', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(870, 871, 0, 5, 'TANISHA BEGUM ', '0000-00-00', 'JAMEEL MOHAMMED', 'AFSANA BEGUM', 'S-51 GANDHI NAGAR NEAR CHAMUNDA SERVICE CENTER', '', 11, 1, 1, '3800', 'tanishabegum', 'a87cef3f9c8b131aad63054a7fb27ee8', '', '9928850824', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(871, 872, 0, 5, 'ANSHU MOHAMMED ', '0000-00-00', 'JAMEEL MOHAMMED', 'AFSANA BEGUM', 'S-51 GANDHI NAGAR', '', 8, 0, 1, '3801', 'anshumohammed', '06245ed97e4d535d00ca3a22b4dccb0f', '', '9928850824', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(872, 873, 0, 5, 'MUSHAYYAN  AHMED SHEIKH', '0000-00-00', 'MATIN AHMED SHEIKH', 'AFSANA ', '34/183 MAHAWAT WADI', '', 7, 1, 1, '3802', 'mushayyanahmedsheikh', '28cf306cc48256ba1e2c12680cf958f1', '', '7300411586', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(873, 874, 0, 5, 'SUMAIRA  ALI', '0000-00-00', 'IRFAN ALI', 'AFSANA BEGUM', '343, FAROOQ AZAM COLONY NEAR MASJID', '', 2, 1, 1, '3856', 'sumairaali', '08c7fbea22b64a62d0c0355c6a7ce3cc', '99295525010', '8233697299', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(874, 875, 0, 5, 'MOHAMMED SAMIR ', '0000-00-00', 'MOHAMMED SHAKIL', 'SURAYYA BANO', '1-D GANDHI NAGAR', '', 10, 0, 1, '7', 'mohammedsamir', '20b7db06e56fcd39f5c2104f34900099', '8739978190', '9829891887', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(875, 876, 0, 5, 'KUSUM  KATARA ', '0000-00-00', 'VINOD KATARA', 'MONIKA KATARA', 'BHILURANA KACHHI BASTI', '', 3, 1, 1, '3803', 'kusumkatara', '95b7466f5917cfb064b2df5798d1d9f7', '', '9680017720', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(876, 877, 0, 5, 'LAVESH  SOLANKI', '0000-00-00', 'PAWAN SOLANKI', 'MONIKA SOLANKI', 'SHRI NAGAR COLONY NEW RAMPURA', '', 5, 1, 1, '3804', 'laveshsolanki', 'f6b81cd21b2e40095dbed6162e863ad0', '', '9950366885', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(877, 878, 0, 5, 'ABDUL  SAJID', '0000-00-00', 'ABDUL VAHID', 'PARVEEN KHAN', '142 KACHHI BASTI AMBAVGARH', '', 7, 1, 1, '3805', 'abdulsajid', 'f1a81389da906c1b14fbddc6460ba8f6', '', '9251724991', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(878, 879, 0, 5, 'AALIYA  PARVEEN', '0000-00-00', 'SAYYED MUQIMUDDIN', 'TABASSUM PARVEEN', '114 AHMED HUSSAIN COLONY NEAR POLICE QUARTER', '', 2, 1, 1, '3786', 'aaliyaparveen', '488dc36282d95939976509f33f0b864d', '9024130283', '9529782111', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(879, 880, 0, 5, 'LAKSHYA  GADIYA', '0000-00-00', 'NUTAN GADIYA', 'NEHA GADIYA', 'E-6 HARIDAS JI KI MAGRI', '', 2, 1, 1, '3785', 'lakshyagadiya', '10fc292e4634354f470e2841a1697311', '7597931086', '9983750673', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(880, 881, 0, 5, 'ALIFA  FATIMA', '0000-00-00', 'AMJAD KHAN', 'NAZIYA RASOOL KHAN', '457 JHARIYA MARG', '', 2, 1, 1, '3787', 'alifafatima', 'ac68b04b1374f7ddf225e695565cfec9', '8854834990', '7014452881', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(881, 882, 0, 5, 'AKSHA  KHAN ', '0000-00-00', 'AMJAD KHAN', 'NAZIYA RASOOL KHAN', '457 JHARIYA MARG HATHI POLE', '', 5, 1, 1, '3806', 'akshakhan', '3bfb6f4ebb96c2aec190d20e2eda6c25', '', '7014452881', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(882, 883, 0, 5, 'MOHAMMED ASAD ', '0000-00-00', 'MOHAMMED SHAKIL', 'SURAYYA BANO', 'GANDHI NAGAR MULLAH TALAI', '', 2, 1, 1, '3796', 'mohammedasad', '20ded7b6f6cdd3e37b34da2d95b76b55', '8739978190', '9829891887', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(883, 884, 0, 5, 'YAKSH  VERMA', '0000-00-00', 'MANOJ VERMA', 'RACHNA BALA VERMA', '290 AMBAMATA SCHEME BEHIND POLICE STATION', '', 2, 1, 1, '3788', 'yakshverma', '3df90cfaa7f1fe6062ec233d08181c46', '', '9252475038', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(884, 885, 0, 5, 'AATIF KHAN ', '0000-00-00', '', '', '', '', 8, 0, 1, '17', 'aatifkhan', '6c82a4e83c6a12a7bc716c382f8fd649', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(885, 886, 0, 5, 'NIHIT  GALUNDIA', '0000-00-00', 'RAHUL KUMAR GALUNDIYA', 'MEENA GALUNDIYA', '16, HARIDAS JI KI MAGRI', '', 2, 1, 1, '18', 'nihitgalundia', '6c51404158edd33ab93bddf3e88023d6', '9799480177', '9950159586', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(886, 887, 0, 5, 'RIYA   SHARMA', '0000-00-00', 'DEEPAK KUMAR SHARMA', 'NITU SHARMA', '', '', 4, 1, 1, '3807', 'riyasharma', 'a0fa4fd25268fe8bd66f587e0ce560a9', '', '9116010505', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(887, 888, 0, 5, 'KRISHNA  KUMAWAT', '0000-00-00', 'MAHENDRA KUMAWAT', 'SUNITA KUMAWAT', 'Q. NO.RS/3,132, KV GSS COLONY', '', 4, 1, 1, '3808', 'krishnakumawat', 'ca6926c1dcf7cd40269e8131053c9533', '', '9929623590', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(888, 889, 0, 5, 'GARVIT   JAIN', '0000-00-00', 'MAHAVEER JAIN', 'SARITA JAIN', '374, BHATTWADI RAO COLONY', '', 5, 1, 1, '21', 'garvitjain', '009fc1da99fc7f0e7fe9a17bec9ac7e7', '', '9460572212', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(889, 890, 0, 5, 'KAYAN  PARMAR', '0000-00-00', 'GOVIND KUMAR PARMAR', 'MANISHA', '810, GAMETIYON KI GALI INSIDE BRAHMPOLE', '', 3, 1, 1, '3809', 'kayanparmar', '5a98f03e41bef7cac5615b70cbe845c3', '', '7733821175', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(890, 891, 0, 5, 'AATIF KHAN PATHAN', '0000-00-00', 'ASLAM KHAN PATHAN', 'SHABANA PARVEEN', 'EC-26 A BLOCK SAJJAN NAGAR', '', 8, 1, 1, '3810', 'aatifkhanpathan', 'f1fd0c4a7393028721de978b3eec56c0', '', '9461389403', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(891, 892, 0, 5, 'MOHIT  SUTHAR', '0000-00-00', 'SATOSH SHARMA', 'REENA SHARMA', '78, SUTHARON KI GHATI', '', 9, 1, 1, '3811', 'mohitsuthar', 'c8eb0ec11a843d44ec48a557b72b0916', '', '9829268058', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(892, 893, 0, 5, 'PRIYANSHI  SUTHAR', '0000-00-00', 'SANTOSH SHARMA', 'REENA SHARMA', '78, SUTHARON KI GHATI BHATTIYANI CHOHATTA', '', 7, 1, 1, '24', 'priyanshisuthar', '3b494c8fb2e7aeb572afe4c623e1b661', '', '9829268058', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(893, 894, 0, 5, 'SOMYA   GURJAR', '0000-00-00', 'DHANRAJ GURJAR', 'SUMITRA GURJAR', '198, GORELA BASTI GORELA', '', 2, 1, 1, '25', 'somyagurjar', 'ce73bd23b2d1436733364fedf365318a', '', '9950299486', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(894, 895, 0, 5, 'MOHAMMED TOKIR KHAN', '0000-00-00', 'ABDUL KADIR', '', '', '', 7, 1, 1, '3812', 'mohammedtokirkhan', '74b0d77c157f36079fff8b27210bf946', '', '9928737474', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(895, 896, 0, 5, 'MOHAMMED ZAIB HUSSAIN', '0000-00-00', 'ZAKIR HUSSAIN', 'NASREEN BANO', 'KUTUBPURA INSIDE HATHIPOLE', '', 5, 1, 1, '3813', 'mohammedzaibhussain', '4b8c0b470038fee4e2e8f423dee9743c', '', '8058796161', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(896, 897, 0, 5, 'DIVYANSH  YADAV', '0000-00-00', 'SHASHI YADAV', 'JAGRATI YADAV', 'H-7 POLICE QUARTER', '', 2, 1, 1, '3789', 'divyanshyadav', '02a1a90f0aa75deea47f55cab32c56e6', '', '8890549185', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(897, 898, 0, 5, 'AATIF   KHAN', '0000-00-00', 'AZAM KHAN', 'SHAHNAZ BANO', '', '', 8, 1, 1, '3815', 'aatifkhan', '6c82a4e83c6a12a7bc716c382f8fd649', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(898, 899, 0, 5, 'GUNJAN  OAD', '0000-00-00', 'RATAN OAD', '', '', '', 4, 1, 1, '30', 'gunjanoad', '738ccc4c324e8a19299a4ccb91c84641', '', '9828079248', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(899, 900, 0, 5, 'ISHAN   OAD', '0000-00-00', 'KISHAN OAD', 'MEENA OAD', '', '', 7, 1, 1, '3817', 'ishanoad', 'f3a4044d0f39ade548469123b0e618dc', '', '9828079248', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(900, 901, 0, 5, 'TANISHQ  OAD', '0000-00-00', 'KISHAN OAD', 'MEENA OAD', '', '', 9, 1, 1, '3818', 'tanishqoad', '816de743dd53efbccd2946edfe3e8f01', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(901, 902, 0, 5, 'JATIN   OAD', '0000-00-00', 'KISHAN OAD', 'MEENA OAD', '', '', 4, 1, 1, '3819', 'jatinoad', '98764cacd5016ad196f303a4dcfc5fd1', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(902, 903, 0, 5, 'SUMIT  DARANGI', '0000-00-00', 'BHANWAR LAL MEENA', 'BINDU DEVI', '', '', 12, 1, 1, '3820', 'sumitdarangi', 'a004d7fb3abbc194fea83e44d5288ce9', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(903, 904, 0, 5, 'MILAN  DARANGI', '0000-00-00', '', '', '', '', 8, 1, 1, '3821', 'milandarangi', '42e4eb6404b2426efcbbd306a5ffd06f', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(904, 905, 0, 5, 'MOHAMMED ATIK SHEIKH', '0000-00-00', 'MOHAMMED IDRIS SHEIKH', 'SHABANAM ', '', '', 13, 1, 1, '3822', 'mohammedatiksheikh', '267938152cbbe298ccd658d3a8e5d05d', '', '7793041777', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(905, 906, 0, 5, 'SHRAWAN  ATHWAL', '0000-00-00', 'SURAJ ATHWAL', 'SEEMA DEVI', 'OPP. ARYA SAMAJ TEMPLE GANDHI NAGAR', '', 11, 1, 1, '37', 'shrawanathwal', '7d2ba63678dcaba791bedb6abed0ea8a', '', '9829464817', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(906, 907, 0, 5, 'BHAVISHYA  NAGDA', '0000-00-00', 'JOGENDRA NAGDA', 'NAGDA', '', '', 8, 1, 1, '3824', 'bhavishyanagda', 'ddb888c8565c9909431a9b7434b4a0b3', '', '9983140612', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(907, 908, 0, 5, 'JIA-UR-REHMAAN  MANSURI', '0000-00-00', 'GULAM SHABBIR', '', '10 RAZA COLONY NEAR RAZA COMPLEX', '', 2, 1, 1, '39', 'jia-ur-rehmaanmansuri', '6e855805a156a3c417e111c007110403', '7737489760', '9214950366', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(908, 909, 0, 5, 'FALAK   MANSURI', '0000-00-00', 'GULAM SHABBIR', '', '10, RAZA COLONY MULLATALAI', '', 4, 1, 1, '40', 'falakmansuri', '9cc361f4aab1bf2500f478974076ef76', '', '9214950366', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(909, 910, 0, 5, 'AARISH  KHAN', '0000-00-00', 'SIDIK KHAN', 'YASMIN', '', '', 4, 1, 1, '3823', 'aarishkhan', '922ae6115950739920f6586ef1cff1c1', '', '9636581928', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(910, 911, 0, 5, 'MAYURRAJ SINGH  JHALA', '0000-00-00', 'GANPAT SINGH JHALA', 'PAWAN KUNWAR', 'HARIDAS JI KI MAGRI', '', 2, 1, 1, '42', 'mayurrajsinghjhala', 'e9afa10b023b7729abee1e72a9998664', '', '8107191101', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(911, 912, 0, 5, 'MOHAMMED ARSLAN ', '0000-00-00', 'AHMED HUSSAIN', 'TABASSUM HUSSAIN', '1638 RATA KHET 80 FIT ROAD', '', 2, 1, 1, '3797', 'mohammedarslan', 'd5663345181bbc53d592aeba30d14132', '9610716963', '9828193232', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(912, 913, 0, 5, 'VIKAS  SUTHAR', '0000-00-00', 'DINESH SUTHAR', '', '', '', 9, 1, 1, '3825', 'vikassuthar', 'b7a761e99a47017ff60efd10aab96a53', '', '8107859359', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(913, 914, 0, 5, 'DIYA  SUTHAR', '0000-00-00', 'DINESH SUTHAR', 'TARA SUTHAR', '', '', 12, 1, 1, '3826', 'diyasuthar', '69ad0543032004b8dba0576905d048b3', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(914, 915, 0, 5, 'MOHAMMED KONEN RAZA', '0000-00-00', 'MOHAMMED SHAMSHUL KAMAR', 'NILOFAR RAZA', '359,SILAWAT WADI HATHIPOLE', '', 11, 1, 1, '3827', 'mohammedkonenraza', '931d27e6939b9c3ba73f9eba0ec098b2', '', '7611003322', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(915, 916, 0, 5, 'SUJAL   SUWALKA', '0000-00-00', 'BHERU LAL SUWALKA', '', '', '', 9, 1, 1, '3828', 'sujalsuwalka', '40c4ed961b6efc1f6131178c155c0aab', '', '9571281190', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(916, 917, 0, 5, 'KAVYANSH  KALYANA', '0000-00-00', 'MANISH KALYANA', 'CHANDA KALYANA', '', '', 6, 1, 1, '3829', 'kavyanshkalyana', 'afd944d05cb5cc66174643e4cbce7078', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(917, 918, 0, 5, 'SHORYA  RAO', '0000-00-00', 'CHETAN RAO', 'LALITA RAO', '', '', 2, 1, 1, '49', 'shoryarao', '9c57c6cd0859f7cfe95feb69ac214889', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(918, 919, 0, 5, 'MOHAMMAD ARMAN ', '0000-00-00', 'ABID HUSSAIN', 'SABRA BANO', '28 NEW RAMPURA COLONY', '', 7, 1, 1, '50', 'mohammadarman', '24c1da15a3a4e1ff23c0ead8e31a130e', '', '9829206375', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(919, 920, 0, 5, 'YUGANSH  KHOKAWAT', '0000-00-00', 'SHEKHAR KHOKAWAT', 'NEELU KHOKAWAT', '298, GANDHI NAGAR ', '', 2, 1, 1, '51', 'yuganshkhokawat', '88d75eed5ca70830b676a180a0d8a6f7', '8740034724', '9680695452', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(920, 921, 0, 5, 'BHAVYANSH  PRAJAPAT', '0000-00-00', 'CHANDRAKANT PRAJAPAT', 'LALITA PRAJAPAT', 'BHILON KI BASTI SISARMA', '', 4, 1, 1, '52', 'bhavyanshprajapat', '3a201fcf8304eb4e13053701bad2f3f9', '', '85959845991', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(921, 922, 0, 5, 'VINITA  KASOTIYA', '0000-00-00', 'HEERA LAL KASOTIYA', 'MEENA KASOTIYA', 'A-76 EKLAVYA COLONY', '', 2, 1, 1, '3794', 'vinitakasotiya', '8d5e32aac3293123664d2d754d5c8124', '8946820008', '9314439896', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(922, 923, 0, 5, 'SAPNA   RAWAL', '0000-00-00', 'RAKESH KUMAR RAWAL', 'LAXMI DEVI', 'CHAMPA COLONY OPP. SHIV MANDIR', '', 10, 1, 1, '54', 'sapnarawal', '4d53ddb8ec5ff451527f9d8e56926115', '', '9950555525', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(923, 924, 0, 5, 'SAHIL   RAWAL', '0000-00-00', 'RAKESH KUMAR RAWAL', 'LAXMI DEVI', 'CHAMPA COLONY OPP. SHIV MANDIR', '', 6, 1, 1, '55', 'sahilrawal', '105937bff0a2f26943bcd2afc09f48ae', '', '9950555525', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(924, 925, 0, 5, 'ANKIT   RAWAL', '0000-00-00', 'RAKESH KUMAR RAWAL', 'LAXMI DEVI', 'CHAMPA COLONY OPP. SHIV MANDIR', '', 5, 1, 1, '56', 'ankitrawal', '87e6569f7fddb60b98f0e275ae76bbf5', '', '9950555525', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(925, 926, 0, 5, 'MOHAMMED KAMRAN KHAN', '0000-00-00', 'RAJU KHAN', 'RUKHSAR KHAN', '508, KELWA HOUSE BICHU GHATI', '', 7, 1, 1, '57', 'mohammedkamrankhan', 'c6679d66fef9a21f72072eb6344f3546', '7357363134', '9309303134', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(926, 927, 0, 5, 'MOHAMMED AAHIL  KHAN', '0000-00-00', 'RAJU KHAN', 'RUKHSAR KHAN', '508, KELWA HOUSE BICHU GHATI', '', 4, 1, 1, '58', 'mohammedaahilkhan', '50fe47332b64e65f8d9a5281197d9401', '7357363134', '9309303134', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(927, 928, 0, 5, 'DEEP  SINGH BHATI', '0000-00-00', 'RANU SINGH BHATI', 'DARYAV KANWAR', '', '', 14, 1, 1, '59', 'deepsinghbhati', 'cea899e6431bd3490c812085014ee708', '', '9460913359', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(928, 929, 0, 5, 'MAHIPAL SINGH BHATI', '0000-00-00', 'RANU SINGH BHATI', 'DARYAV KANWAR', '', '', 8, 1, 1, '60', 'mahipalsinghbhati', '5b753e79d31ae62bef1b1e3b17bdf3e0', '', '9460913359', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(929, 930, 0, 5, 'DIMPLE   JOSHI', '0000-00-00', 'DEEPAK JOSHI', 'SUNITA JOSHI', '', '', 9, 1, 1, '61', 'dimplejoshi', '21895d1508bbfa178659c31592a13377', '', '9602337155', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(930, 931, 0, 5, 'JOYA  MANSOORI', '0000-00-00', 'ABDUL KADIR', 'SHIREEN', '', '', 8, 1, 1, '62', 'joyamansoori', '10a82b86b2526266d3244901172548db', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(931, 932, 0, 5, 'DIKSHITA  VAISHNAV', '0000-00-00', 'DAMODAR DAS VAISHNAV', 'HEMLATA VAISHNAV', '73, CHARBHUJA JI KA MANDIR GANESH GHATI', '', 6, 1, 1, '63', 'dikshitavaishnav', '0413031773de905dff7a4961729ee2f2', '9636250814', '9460448144', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(932, 933, 0, 5, 'RAJDEEP   KASARA', '0000-00-00', 'MUKESH KASARA', 'RENU KASARA', 'H-20 BHDESAR KA CHOWK JAGDISH CHOWK', '', 7, 1, 1, '64', 'rajdeepkasara', 'faaafe7129bb82e6a96f3a562ab27395', '', '9782016636', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(933, 934, 0, 5, 'MISBA  ALI ', '0000-00-00', 'ISHTIYAK ALI', 'MOBINA', '436, GARIB NAWAZ COLONY GALI NO. 01', '', 2, 1, 1, '3795', 'misbaali', '689463c7efd329fd6e9969a8d6671858', '', '7073792266', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(934, 935, 0, 5, 'HARSHAL  SOLANKI', '0000-00-00', 'TRILOK SOLANKI', 'POOJA SOLANKI', 'LAXMI DEPARTMENTAL STORE SAJJAN NAGAR MAIN ROAD', '', 2, 1, 1, '3791', 'harshalsolanki', 'd2903301313445ca89f578133e3645cf', '', '9784020789', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(935, 936, 0, 5, 'MITALI   DAHIYA', '0000-00-00', 'NITYANAND DAHIYA', 'SUMAN DAHIYA', '', '', 2, 1, 1, '3790', 'mitalidahiya', '1f4a7c73722dfd9343c05abd5ab06524', '9529805856', '8890697065', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(936, 937, 0, 5, 'MANISHA  SOM', '0000-00-00', 'MIHIR SOM', 'RUPALI SOM', 'E-7 HARIDAS JI KI MAGRI', '', 10, 1, 1, '68', 'manishasom', 'a1877a11190709202f86abbe1b10bbf1', '7611831027', '9351251611', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(937, 938, 0, 5, 'HARSH  SONWAL', '0000-00-00', 'VISHNU PRAKASH SONWAL', '', '501 AMBAMATA SCHEME BEHIND POLICE STATION', '', 11, 1, 1, '69', 'harshsonwal', '509478d5684e935b2acbf1dba48fd83e', '', '9983821604', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(938, 939, 0, 5, 'KHUSHAL PRATAP  SINGH', '0000-00-00', 'GAJENDRA SINGH SOLANKI', 'GIRIJA KANWAR', '', '', 4, 1, 1, '70', 'khushalpratapsingh', '04e16974daec466adb3de5e9e85129a2', '', '9166248179', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(939, 940, 0, 5, 'JAYSHREE  SOLANKI', '0000-00-00', 'GAJENDRA SINGH SOLANKI', 'GIRIJA KANWAR', '', '', 7, 1, 1, '71', 'jayshreesolanki', 'fc9d04bdd115dcd58f20b640dd0b6a8b', '', '9166248179', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(940, 941, 0, 5, 'HARSHIT  MEENA', '0000-00-00', 'DHARMENDRA MEENA', 'REKHA MEENA', '809 GAMETIYON KI GALI BRAHM POLE', '', 2, 1, 1, '3792', 'harshitmeena', 'b2873b1d5bf11fada080e0e11f69cc5c', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(941, 942, 0, 5, 'ALISHA  BANO', '0000-00-00', 'MOHAMMED IDRIS', '', '', '', 7, 1, 1, '73', 'alishabano', '12a75b4ac550bdd6712a0d080219a2b7', '8290475731', '8290475731', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(942, 943, 0, 5, 'BHUPESH  SOLANKI', '0000-00-00', 'BHAGWATI LAL TELI', 'KALAWATI TELI', 'MAHAVEER COLONY, NAI', '', 3, 1, 1, '74', 'bhupeshsolanki', '4609f2310064468f439b086a62af3063', '9928879314', '9784184231', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(943, 944, 0, 5, 'LAKSHITA  SOLANKI', '0000-00-00', 'BHAGWATI LAL TELI', 'kala', 'MAHAVEER COLONY, NAI', '', 5, 1, 1, '75', 'lakshitasolanki', '615b464152bc9f8346fb0455a9cf9aab', '9928879314', '9784184231', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(944, 945, 0, 5, 'MOHAMMED  ABUZAR  KHAN', '0000-00-00', ' MOHAMMED SAJID KHAN ', '', '', '', 8, 1, 1, '76', 'mohammedabuzarkhan', 'fe157c5fe9cba5703654cefc2e1d2b0f', '', '9783659770', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(945, 946, 0, 5, 'VIVEK  SOLANKI', '0000-00-00', 'SHANTI LAL SOLANKI', '', '', '', 10, 1, 1, '77', 'viveksolanki', 'a31c4673943e0473c537ebc6815a4477', '9928289783', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(946, 947, 0, 5, 'VIVAAN  KATARA', '0000-00-00', 'AMBA LAL KATARA', 'VASUNDHARA', '8/659 DUDHIYA GANESH JI EKLAVYA COLONY', '', 2, 1, 1, '3793', 'vivaankatara', 'd3b5930dffec5063c9866111693277a6', '9414161024', '9785201526', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);
INSERT INTO `login` (`id`, `reg_no`, `user_id`, `role_id`, `name`, `dob`, `father_name`, `mother_name`, `address`, `roll_no`, `class_id`, `section_id`, `medium`, `eno`, `username`, `password`, `mobile_no`, `father_mobile`, `mother_mobile`, `otp`, `notification_key`, `device_token`, `image`, `school_id`, `curent_date`, `flag`) VALUES
(947, 948, 0, 5, 'MANSVA  JAIN', '0000-00-00', 'RAJESH JAIN', 'PRATIBHA JAIN', '129, AMBAWADI UBESHWAR ROAD', '', 2, 1, 1, '79', 'mansvajain', 'e35f950f793fcf3623e114a018077b8f', '9509123488', '7877776012', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(948, 949, 0, 5, 'KANISHK  PURBIA', '0000-00-00', 'MUKESH PURBIA', 'PUSHPA PURBIA', '', '', 4, 1, 1, '80', 'kanishkpurbia', 'bbf65468877096d1ea2f8f519ae7d4ad', '', '9784873383 / 8769989781', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(949, 950, 0, 5, 'YATHARTH  PANWAR', '0000-00-00', 'MUKESH PANWAR', 'MEENA PANWAR', '807 GANDHI NAGAR MULLAH TALAI', '', 2, 1, 1, '3798', 'yatharthpanwar', '347701369988688c9a05a1380f4cabf4', '9636740665', '9928849291', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(950, 951, 0, 5, 'MOHAMMAD AASHIR RAZA', '0000-00-00', 'SHAHNAWAZ KHAN', 'ROSHAN ARA', '380 FARUKH- AZAM COLONY', '', 2, 1, 1, '82', 'mohammadaashirraza', '0173edfd0cbdac06ab2a8264bfcdd346', '9983647836', '9887593233', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(951, 952, 0, 5, 'BHAVIKA  RAO', '0000-00-00', 'RAVI RAO', 'SUNITA RAO', 'AZAD NAGAR 80 FIT ROAD FIRST LANE', '', 2, 1, 1, '83', 'bhavikarao', '5c1d357b580c6729bcb90916cc1c2847', '773936356', '8769660837', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(952, 953, 0, 5, 'MANSI  SEN', '0000-00-00', 'ANIL SEN', 'DIMPLE SEN', '19-K HARIDAS JI KI MAGRI', '', 2, 1, 1, '84', 'mansisen', '723e954309b9ad7c1e4b89b479f500eb', '', '9784192721', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(953, 954, 0, 5, 'AL  AFIF SHEIKH', '0000-00-00', 'PARVEZ AHMED SHEIKH', 'SHAMINA SHEIKH', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '', 14, 1, 1, '85', 'alafifsheikh', 'ee675ae5fda1937b0c1d4447fd0200a4', '', '9024709785', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(954, 955, 0, 5, 'FARAHAN  KHAN', '0000-00-00', 'JAHID KHAN', '', '', '', 2, 1, 1, '86', 'farahankhan', '4ef435fba6f2268153470c7e68ddfbc3', '', '66980229283', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(955, 956, 0, 5, 'MOHAMMED ALFEZ  ', '0000-00-00', 'FIROJ KHAN', 'HUSSAINA BANO', 'DHOLI MAGRI MASTAN BABA KE PASS', '', 3, 1, 1, '87', 'mohammedalfez', '4b31580a09458513605c8add5ecb41df', '', '8769127874', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(956, 957, 0, 5, 'PARNIKA KUMARI ', '0000-00-00', 'BHIMRAJ MEENA', 'DEVLI BAI', 'K-12 POLICE QUARTAR', '', 2, 1, 1, '88', 'parnikakumari', 'ad93a4428888ab5b5efb323147561e85', '', '9929657943', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(957, 958, 0, 5, 'TANISH   DAMOR', '0000-00-00', 'OM PRAKASH DAMOR', 'SARIPA MEENA', 'K-7 POLICE QUARTAR', '', 2, 1, 1, '89', 'tanishdamor', 'b1bd84c6bc56c1c6674fb3053781f10f', '', '9001980031', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(958, 959, 0, 5, 'MOHIT YADAV ', '0000-00-00', 'SHYAMLAL YADAV', 'HEMLATA YADAV', 'NEAR SHIV MANDIR BHILURANA KACHCHI BASTI SAJJAN GARH ROAD', '', 13, 1, 1, '90', 'mohityadav', 'a00b981a9fc30560a2e653e2ba8a8137', '', '9636482675', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(959, 960, 0, 5, 'SHIVANI   KHARADI', '0000-00-00', 'SURYA PRAKASH KHARADI', 'PUSPA DAMOR', '', '', 14, 1, 1, '91', 'shivanikharadi', '149722565ef0190bec3bf9147eba952c', '', '9928564115', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(960, 961, 0, 5, 'DIKSHA   NAYAK', '0000-00-00', 'NARESH NAYAK', '', '301, OMKAR PALACE GAJSINGH JI KI BARI NEAR PIONEER ACADEMY', '', 8, 1, 1, '92', 'dikshanayak', 'ecd98d4b3d1acdde644afb3a84d45a59', '', '9828412178', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(961, 962, 0, 5, 'NAYAN KUMAR PATEL', '0000-00-00', 'VINOD KUMAR PATEL', 'MEENA PATEL', 'B-65 GAJ SINGH JI KI BARI AZAD NAGAR', '', 2, 1, 1, '93', 'nayankumarpatel', 'd9e5c06591bd982027d533c927539d1c', '', '9214931192', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(962, 963, 0, 5, 'MUKUL  LOHAR', '0000-00-00', 'HEMANT LOHAR', 'PUSHPA LOHAR', 'B-15 HARIDAS JI KI MAGRI', '', 2, 1, 1, '94', 'mukullohar', '197907a0eb9f31910a43459bdd5d110c', '', '9983466267', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(963, 964, 0, 5, 'SUHANI  KUNWAR', '0000-00-00', 'KAILASH SINGH', 'DHAPU KUNWAR', 'F-25 HARI DAS JIKI MAGARI', '', 4, 1, 1, '95', 'suhanikunwar', 'bba333a4e3824295fdd887a089a27a47', '9636939378', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(964, 965, 0, 5, 'SHIVANI  KHARADI', '0000-00-00', 'SURYA PRAKASH KHARADI', 'PUSHPA DAMOR', '', '', 14, 1, 1, '96', 'shivanikharadi', '149722565ef0190bec3bf9147eba952c', '', '9928564115', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(965, 966, 0, 5, 'YUDHVEER  KASRA', '0000-00-00', 'JITENDRA KASRA', 'CHANDA KASRA', 'B-17 HARIDAS JI KI MAGRI', '', 2, 1, 1, '97', 'yudhveerkasra', '4fd59435a2c8c77f9def27fc0e056e17', '', '7822891203', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(966, 967, 0, 5, 'VANIA  BALAI', '0000-00-00', 'HIMMAT LAL BALAI', 'MANJU BALAI', '127, RAMPURA CHOURAHA', '', 2, 1, 1, '98', 'vaniabalai', '8cc954b7e22dd2949200a7876b01136d', '', '7023020576', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(967, 968, 0, 5, 'BHARGAVI  CHAUHAN', '0000-00-00', 'MAAN SINGH CHAUHAN', 'RAJ KUNWAR CHAUHAN', '26, JETHIYON KA AKHARA OUTSIDE CHANDPOLE', '', 2, 1, 1, '99', 'bhargavichauhan', 'e58b7b257ead4c32388b96ad33c4ee3c', '', '8003374519', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(968, 969, 0, 5, 'HANISH  GURJAR', '0000-00-00', 'BHUPENDRA GURJAR', 'ASHA GURJAR', 'UBESHWAR ROAD GORELLA', '', 2, 1, 1, '100', 'hanishgurjar', 'b5ea401828b05ee1f3320bb7bed9199f', '', '7665404483', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(969, 970, 0, 5, 'ASAD  HUSSAIN', '0000-00-00', 'SHAHID HUSSAIN', 'TAMANNA BANO', '431, GARIB NAWAZ COLONY GALI NO.01 MALLAH TALAI', '', 2, 1, 1, '101', 'asadhussain', 'ec8780f5defa133de0d32bc5b4cb5ea1', '', '9602608982', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(970, 971, 0, 5, 'BHAVYA  BHOI', '0000-00-00', 'PRAMOD BHOI', 'SHASHI KALA BHOI', 'B-15 HARIDAS JI KI MAGRI', '', 2, 1, 1, '102', 'bhavyabhoi', 'f681f485d8dce38721f136d74b5907cc', '', '9166667880', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(971, 972, 0, 5, 'TANISHA  YADAV', '0000-00-00', 'SHASHI YADAV', '', 'H-7 POLICE QUARTER BEHIND MASTAN BABA DARGAH', '', 8, 1, 1, '103', 'tanishayadav', 'c1318f6bd951c1e2a9f835eeaddfe35e', '', '8890549185', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(972, 973, 0, 5, 'ASIM   SHEIKH', '0000-00-00', 'NIZAMUDDIN SHEIKH', 'KAYNAT SHEIKH', 'A-4 KOMI EKTA NAGAR', '', 2, 1, 1, '104', 'asimsheikh', '09b3d71efdf68c68d942ce373634098d', '', '9982922075', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(973, 974, 0, 5, 'SAFIYA  SHEIKH', '0000-00-00', 'MOHAMMED RAFIQ SHEIKH', 'RUBINA SHEIKH', 'A-4 KOMI EKTA NAGAR', '', 2, 1, 1, '105', 'safiyasheikh', '67c54b0d488e139cffc7e91d960057dc', '', '9928356539', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(974, 975, 0, 5, 'MAHIRA   ANSARI', '0000-00-00', 'ARIF', 'AZRA', '191 RAZA COLONY', '', 3, 1, 1, '106', 'mahiraansari', 'ceee42a1d72ffba04aaed71b5915d5f7', '', '9799648580', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(975, 976, 0, 5, 'ERAM   NAAZ', '0000-00-00', 'MOHAMMED SARFARAZ', '', '', '', 13, 1, 1, '107', 'eramnaaz', 'a2a25c6801bb26494902fa68d22310fa', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(976, 977, 0, 5, 'ASHWANI  KUMAR', '0000-00-00', 'MEWA RAM', 'REETA DEVI', '', '', 4, 1, 1, '108', 'ashwanikumar', '76676e81c4e64c2c3937dadbd2aef76f', '', '9166577799', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(977, 978, 0, 5, 'ISRA  NOURIN', '0000-00-00', 'IDREES MOHAMMED', 'RAISA BANU', '', '', 3, 1, 1, '109', 'isranourin', 'be746136e756253d35cef071b3be969a', '', '9413286396', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(978, 979, 0, 5, 'SHAHZEB  KHAN', '0000-00-00', 'SAJID MOHAMMAD KHAN', '', '', '', 2, 1, 1, '110', 'shahzebkhan', 'c76cddc5b8c09f6e13224de65f42e2d2', '', '9928762678', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(979, 980, 0, 5, 'NITU  KHARADI', '0000-00-00', 'AMRIT LAL KHARADI', 'KAMLA DEVI', '237, EKLAVYA COLONY', '', 3, 1, 1, '111', 'nitukharadi', '9ed7b9cda5740b489ecc1fa5763cfdb9', '', '9799701607', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(980, 981, 0, 5, 'RITU  KHARADI', '0000-00-00', 'KANTI LAL', 'SHILPA DEVI', '237, EKLAVYA COLONY', '', 6, 1, 1, '112', 'ritukharadi', '1e42d742028f83e193c6afd1b113605e', '', '9799701607', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(981, 982, 0, 5, 'KASHAF  NOOR', '0000-00-00', 'MOHAMMAD ARIF SHEIKH', 'SHABANAM', '', '', 2, 1, 1, '113', 'kashafnoor', 'a7ef9dd9e7a739c3a9e9e68076820a11', '', '7568267525', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(982, 983, 0, 5, 'MOHAMMED RUHAN ', '0000-00-00', 'MOHAMMED MAJID KHAN', 'TASKINA BANO', '', '', 2, 1, 1, '114', 'mohammedruhan', 'ce114295d54231d47a4d01d0dbe0985e', '', '8377862121', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(983, 984, 0, 5, 'AAFIYA  BANU', '0000-00-00', 'PATHAN MOHAMMED SHARIF KHAN', 'PATHAN SHIREEN BANO', '205, NAGA NAGARI OUT SIDE CHANDPOLE', '', 2, 1, 1, '115', 'aafiyabanu', '74535f36192dce64b6d90a4f30c4f666', '', '8769463651', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(984, 985, 0, 5, 'DIVYANSHI  GURJAR', '0000-00-00', 'SURESH DHABAI', 'GARIMA GURJAR', '12, GURJAR BASTI GORELLA', '', 4, 1, 1, '116', 'divyanshigurjar', '4493059d01a53e1c1e02bdb468cead96', '', '9460209856', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(985, 986, 0, 5, 'PRADEEP SINGH  DEVRA', '0000-00-00', 'BHAGWAT SINGH DEVRA', 'KAILASH KANWAR', '', '', 3, 1, 1, '117', 'pradeepsinghdevra', '4ea7d728862652b0db3cae0ca4aae022', '', '9799413245', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(986, 987, 0, 5, 'NEEL   GURJAR', '0000-00-00', 'SURESH DHABAI', 'GARIMA GURJAR', '12 GURJAR BASTI GORELLA', '', 2, 1, 1, '118', 'neelgurjar', '52a5b1c7af5322586a885ca8155866c9', '', '9460209856', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(987, 988, 0, 5, 'HEMENDRA SINGH DEVRA', '0000-00-00', 'FATEH SINGH DEVRA', 'SUNDER KANWAR', 'DARDA GORELLA', '', 4, 1, 1, '119', 'hemendrasinghdevra', '6e00dbc0bafc79a260fbbd07277072b9', '', '9887791460', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(988, 989, 0, 5, 'NIRAJ  SINGH DEVRA', '0000-00-00', 'BHAGWAT SINGH DEVRA', 'KAILASH KANWAR', 'DARDA GORELLA', '', 4, 1, 1, '120', 'nirajsinghdevra', 'd276082608613b5d3679f40db48731ce', '', '9799413245', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(989, 990, 0, 5, 'ABU   SHIBLI', '0000-00-00', 'MOHAMMED ASHRAF', 'NADIRA BANO ASHRAFI', '146, FAROOQ E AZAM COLONY NEAR MAQDOOM GENRAL STORE', '', 2, 1, 1, '121', 'abushibli', '819d5909d654652ef81879f109730957', '', '9982077588', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(990, 991, 0, 5, 'LOVE  KUMAR PATEL', '0000-00-00', 'DHANRAJ PATEL', '', '', '', 11, 1, 1, '122', 'lovekumarpatel', 'c54d5b1cbf17a129a0359c18d33004a9', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(991, 992, 0, 5, 'ARHAN AHMED SHEIKH', '0000-00-00', 'RIZWAN AHMED SHEIKH', 'TASLEEM BANO', '117-B BLOCK SAJJAN NAGAR', '', 2, 1, 1, '123', 'arhanahmedsheikh', 'ef918112fa51d48fb2781d30eab68e3b', '', '9587231113', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(992, 993, 0, 5, 'SADIYA SIDDIQUE ', '0000-00-00', 'SAEED AHMED', 'NAZIMA NISHA', 'GARIB NAWAZ COLONY', '', 3, 1, 1, '124', 'sadiyasiddique', 'a0a05dd57ece57e51b2a090c2fb0e15f', '', '7737634077', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(993, 994, 0, 5, 'JIVIKA  JOSHI', '0000-00-00', 'BHERU LAL JOSHI', '', 'S-770 CHAMPA COLONY', '', 2, 1, 1, '125', 'jivikajoshi', '745c493a5ad8bd978309a65aad0122bc', '', '9782930000', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(994, 995, 0, 5, 'HITANSHI  SUTHAR', '0000-00-00', 'SURESH SUTHAR', 'TARA SUTHAR', '10, NEAR CHOURDHRY GUEST HOUSE', '', 2, 1, 1, '126', 'hitanshisuthar', 'c9b85aa652653249368746334a7e8fe8', '', '9829991058', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(995, 996, 0, 5, 'SIDDHARTH SINGH GEHLOT', '0000-00-00', 'SHYAM SINGH GEHLOT', 'ALKA SINGH', '172, BHILURANA COLONY NEAR POLICE QUARTER', '', 11, 1, 1, '127', 'siddharthsinghgehlot', 'c46762a7799f2caa38e55488cea3c1e9', '', '9799863997', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(996, 997, 0, 5, 'ADARSH  KUMAR', '0000-00-00', 'ARVIND KUMAR', 'BABITA DEVI', '226, EKLAVYA COLONY', '', 2, 1, 1, '128', 'adarshkumar', '82fc4de0cb5c57fcacc39c0cc57a5570', '', '850206184', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(997, 998, 0, 5, 'AYANA  KHAN', '0000-00-00', 'IRFAN KHAN', 'KANIZ FATIMA', '174, KALLESATH IMLI GHAT', '', 2, 1, 1, '129', 'ayanakhan', '7536c6ef49abbc0caca6a58ac4923217', '', '8290631228', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(998, 999, 0, 5, 'YUVAN  KUMAWAT', '0000-00-00', 'GIRIRAJ KUMAWAT', 'YOGITA KUMAWAT', '5 ACHARYA MARG OUT SIDE CHANDPOLE', '', 2, 1, 1, '130', 'yuvankumawat', '15e3ff7376f81374a56a6aab42a2b0b8', '', '9929384188', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(999, 1000, 0, 5, 'AGOSH   KHAN', '0000-00-00', 'AKRAM KHAN', 'farzana khan', '', '', 7, 1, 1, '131', 'agoshkhan', '5f3bf9d65cd57d159989fc28f4de2479', '', '9784435499', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1000, 1001, 0, 5, 'KULDEEP SINGH BISHT', '0000-00-00', 'BRIJESH SINGH BISHT', 'KAVITA DEVI', '30 BAJRANG MARG JADA GANESH CHOWK', '', 7, 1, 1, '132', 'kuldeepsinghbisht', '75785aff854ff67925e64cd9d77a2c1a', '', '9887585037', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1001, 1002, 0, 5, 'AYESHA  NAAZ', '0000-00-00', 'RAIS MOHAMMED', 'RIZWANA BANO', '', '', 2, 1, 1, '133', 'ayeshanaaz', '5ef43829233ff487981eb8590711922a', '', '9694881854', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1002, 1003, 0, 5, 'BHAVYA  PHUNWAR', '0000-00-00', 'VIKAS PHUNWAR', 'AARTI PHUNWAR', '', '', 3, 1, 1, '134', 'bhavyaphunwar', '9f41aeaab485fca337467c6e7834ed4e', '', '8233860663', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1003, 1004, 0, 5, 'VAIBHAV  OAD', '0000-00-00', 'DHAMENDRA OAD', 'CHAND OAD', '', '', 1, 1, 1, '135', 'vaibhavoad', 'fc6c668241f33fed634ccce899d4c757', '', '8233385037', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1004, 1005, 0, 5, 'MALAYKA  KHAN', '0000-00-00', 'SHAKIL KHAN', 'NOORJAHAN BANO', '', '', 3, 1, 1, '136', 'malaykakhan', '6e2cf0f1079edb409e92973f3264c9c6', '', '8094755131', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1005, 1006, 0, 5, 'AFIFA  NILGAR', '0000-00-00', 'JAHANGIR HUSSAIN', 'FAHMEEDA BANU', '', '', 14, 1, 1, '137', 'afifanilgar', 'e2e8582b0e85b51d6059fe96f33a4583', '', '9784053110', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1006, 1007, 0, 5, 'AAISHA   NILGAR', '0000-00-00', '', '', '', '', 9, 1, 1, '138', 'aaishanilgar', '4bc0e50adedf2433707d944be54ffb0e', '', '9784053110', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1007, 1008, 0, 5, 'MOHAMMED UMAMA ', '0000-00-00', 'AHSAN ANSARI', 'REHANA KHATOON', '', '', 11, 1, 1, '139', 'mohammedumama', '180c798a0f231369d88e63190edc048e', '', '9602596279', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1008, 1009, 0, 5, 'YASH   PUJARI', '0000-00-00', 'RAJENDRA PUJARI', 'KOSHALYA PUJARI', '', '', 3, 1, 1, '140', 'yashpujari', '08715fc76722306ea821a381503cd9a2', '', '9929321570', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1009, 1010, 0, 5, 'JAY  SOM', '0000-00-00', 'MIHIR SOM', 'RUPALI SOM', '', '', 2, 1, 1, '141', 'jaysom', 'f032a38726d16501f3a111342532852d', '', '9351251611', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1010, 1011, 0, 5, 'SAKSHAM  CHANAL', '0000-00-00', 'GOVIND CHANAL', 'SUMITRA CHANAL', '', '', 2, 1, 1, '142', 'sakshamchanal', 'ca2dc50a300f78248f53d2de4b564671', '', '7425890977', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1011, 1012, 0, 5, 'KAVYA  KANDARA', '0000-00-00', 'MAHENDRA KANDARA', '', '', '', 2, 1, 1, '143', 'kavyakandara', '470e76794eac5c3c1f9b587e979ec412', '', '8560968966', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1012, 1013, 0, 5, 'DARSHANI   YADAV', '0000-00-00', 'SHASHI YADAV', 'JAGRITI YADAV', '', '', 4, 1, 1, '144', 'darshaniyadav', '39aa0a35f83dc9cd9e1bb2f13bca8ee3', '', '8890549185', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1013, 1014, 0, 5, 'MAHEEN  ZEBA RAZA', '0000-00-00', 'AHMED RAZA', 'SHABIYA SHEIKH', '', '', 2, 1, 1, '145', 'maheenzebaraza', '35408c442800119567ef7ad604bce7db', '', '9602610405', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1014, 1015, 0, 5, 'MOKSHIKA  CHANDEL', '0000-00-00', 'VIJENDRA CHANDEL', 'TARA CHANDEL', '', '', 2, 1, 1, '146', 'mokshikachandel', 'cf7b3581127d08acce03b8ce2e792992', '', '8769942577', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1015, 1016, 0, 5, 'OSAF  HUSSAIN', '0000-00-00', 'MASIYAT HUSSAIN', 'FEZANA', '', '', 2, 1, 1, '147', 'osafhussain', '8a19c7033d5997e0b0d256893f408419', '', '7877542155', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1016, 1017, 0, 5, 'ANAYA  CHHIPA', '0000-00-00', 'MOHAMMED HANIF', 'NAZIA PARVEEN', '', '', 2, 1, 1, '148', 'anayachhipa', '3ec745cf04076fe59fc19399b821a473', '', '9928419780', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1017, 1018, 0, 5, 'MOHAMMED AYAAN ', '0000-00-00', 'MOHAMMED SALIM', 'TABASSUM NAAZ', '', '', 6, 1, 1, '149', 'mohammedayaan', '25f9b45583895d418a2edf90b4ce7fa1', '', '7891885740', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1018, 1019, 0, 5, 'MOHAMMED  ARMAAN ', '0000-00-00', 'MOHAMMED SALIM', 'TABASSUM NAAZ', '', '', 9, 1, 1, '150', 'mohammedarmaan', '091a1b62edfdf33d0ac2848e11bddf9b', '', '7891885740', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1019, 1020, 0, 5, 'SHARIKA  ', '0000-00-00', 'MOHAMMAD SHAKIL', 'MUNIRA BANO', '', '', 2, 1, 1, '151', 'sharika', '1465bf3d015398f1aebdad89bc71b806', '', '9828441028', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1020, 1021, 0, 5, 'ANIKA  ', '0000-00-00', 'MOHAMMED RAFIQ', '', '', '', 2, 1, 1, '152', 'anika', '7522d28ad772d1eef7b200ebddcd08ce', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1021, 1022, 0, 5, 'TASNEEM KHAN PATHAN', '0000-00-00', 'MOHAMMED SHARIF', '', '', '', 2, 1, 1, '153', 'tasneemkhanpathan', '96b09f85f09b67bf8150b8dd848f3a27', '', '8003169705', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1022, 1023, 0, 5, 'TRISHA  VAISHNAV', '0000-00-00', 'MUKESH VAISHNAV', 'MANISHA VAISHNAV', '', '', 8, 1, 1, '154', 'trishavaishnav', 'f192fdf40f7648817fc298ebac28aad1', '', '9686302449', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1023, 1024, 0, 5, 'SHRUTI  VAISHNAV', '0000-00-00', 'MUKESH VAISHNAV', 'MANISHA VAISHNAV', '', '', 4, 1, 1, '155', 'shrutivaishnav', '0313e67629cd721550c3493e67a3819c', '', '9686302449', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1024, 1025, 0, 5, 'ASAD  RAZA', '0000-00-00', 'GULAM JILANI', '', '', '', 14, 1, 1, '156', 'asadraza', '4f200c0db1f8a1cba4fc001ee7d0456f', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1025, 1026, 0, 5, 'TAHA   YUNUS', '0000-00-00', 'MOHAMMED YUNUS', '', '', '', 5, 1, 1, '157', 'tahayunus', 'b6d9748433819769b7a7661afe4fb49f', '', '8107046240', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1026, 1027, 0, 5, 'NANDINI  GEHLOT', '0000-00-00', 'PARMOD GEHLOT', 'POONAM GEHLOT', '', '', 2, 1, 1, '158', 'nandinigehlot', '741fa8651aa1311a3a8f5eb74d20db13', '', '8107301007', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1027, 1028, 0, 5, 'KHWAHISH  BEE', '0000-00-00', 'MUBARAK HUSSAIN', 'NUSRAT BANO', '', '', 3, 1, 1, '159', 'khwahishbee', '37ecaf53441c86f5cc2baa6abf1e6c82', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1028, 1029, 0, 5, 'PRIYANSHI KUMARI YADAV', '0000-00-00', 'LALIT YADAV', 'RANI YADAV', '', '', 2, 1, 1, '160', 'priyanshikumariyadav', 'd6f102aab34a93f0364e30e3d8be1e6d', '', '7877542155', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1029, 1030, 0, 5, 'HARSHIT   YADAV', '0000-00-00', 'LALIT YADAV', 'RANI YADAV', '', '', 8, 1, 1, '161', 'harshityadav', 'bfb791abbcd819f4f7f39d54ba3f0df6', '', '7877542155', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1030, 1031, 0, 5, 'DIVYANSH KUMAR YADAV', '0000-00-00', 'LALIT YADAV', 'RANI YADAV', '', '', 13, 1, 1, '162', 'divyanshkumaryadav', '13281fe3d99fadaf14e2c8639f0e7cc4', '', '7877542155', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1031, 1032, 0, 5, 'KHIZRA  KHAN', '0000-00-00', 'MOHSIN KHAN', 'SHAKIRA BANU', '', '', 3, 1, 1, '163', 'khizrakhan', '780804244902d9c85ffcd03ea5787f88', '', '9057674134', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1032, 1033, 0, 5, 'SHIFALI   YADAV', '0000-00-00', 'LOKESH YADAV', 'NEHA YADAV', '2971,B BLOCK AMAR NAGAR', '', 2, 1, 1, '164', 'shifaliyadav', '7c40edae9246749920aecc7e70ea1ab8', '', '7726062030', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1033, 1034, 0, 5, 'TAHA  YUNUS', '0000-00-00', 'MOHAMMED yunus', 'naseem begum', '61 raza colony mullatali', '', 5, 1, 1, '157', 'tahayunus', 'b6d9748433819769b7a7661afe4fb49f', '', '8949757373', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1034, 1035, 0, 5, 'MOHIT  TELI', '0000-00-00', 'MUKUL TELI', 'LALITA TELI', '', '', 2, 1, 1, '166', 'mohitteli', '6335d7beaacdd47c69edb9b5ad1ec57e', '', '9929510434', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1035, 1036, 0, 5, 'GAURAV   MEGHWAL', '0000-00-00', 'LALURAM ', 'MANJU', '', '', 2, 1, 1, '167', 'gauravmeghwal', '79dc191fee8de43fc0fd5ddb2d8a2b74', '', '9530435192', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1036, 1037, 0, 5, 'DIVYANSHI  MEGHWAL', '0000-00-00', '', '', '', '', 6, 1, 1, '168', 'divyanshimeghwal', '35b55d5fb6979f031303513ded4afe56', '', '9530435192', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1037, 1038, 0, 5, 'CHHAVI  MEGHWAL', '0000-00-00', 'LALURAM', 'MANJU', '', '', 7, 1, 1, '169', 'chhavimeghwal', '590168df415c8f5bae4a4e3d32bda440', '', '9530435192', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1038, 1039, 0, 5, 'MOHAMMED ZAHEER ', '0000-00-00', 'ZOYEB AKHTAR', '', '', '', 2, 1, 1, '170', 'mohammedzaheer', '3308021672a766fe219527e71a1c57eb', '', '9784470226', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1039, 1040, 0, 5, 'AKHILESH   SHARMA', '0000-00-00', 'DILIP SHARMA', 'ANJALI SHARMA', 'RANGNIWAS PICHOLI', '', 2, 1, 1, '171', 'akhileshsharma', '78ef82a1adee60697a46b3ada98e3f3f', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1040, 1041, 0, 5, 'MOHAMMED  OVESH KHAN', '0000-00-00', 'MOHSIN KHAN', 'NILOFAR KHANAM', '', '', 2, 1, 1, '172', 'mohammedoveshkhan', '8ad13a916843bcb405bada7c46051cb2', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1041, 1042, 0, 5, 'MANVIK  GHARU', '0000-00-00', 'KULDEEP GHARU', 'SUMAN GHARU', '', '', 2, 1, 1, '173', 'manvikgharu', '43021054000597f6147331015b8ac668', '', '9636595350', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1042, 1043, 0, 5, 'LOKESH   PATEL', '0000-00-00', 'DEVI LAL PATEL', 'DOLI PATEL', '', '', 6, 1, 1, '174', 'lokeshpatel', '6f48f11cbb0fa2c43dd513dbaab1973f', '', '9929385075', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1043, 1044, 0, 5, 'TIRTHRAJ  PATEL', '0000-00-00', 'DEVI LAL PATEL', 'DOLI PATEL', '', '', 9, 1, 1, '175', 'tirthrajpatel', 'b6f87d1ef4db35eb91dcf48f04771e22', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1044, 1045, 0, 5, 'DHAIRYA  GARG', '0000-00-00', 'NARPAT GARG', 'BHAVINI GARG', '', '', 14, 1, 1, '176', 'dhairyagarg', '6e9564f634e1371981919d81b5ee947e', '', '9687260249', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1045, 1046, 0, 5, 'DHAIRYA  GARG', '0000-00-00', 'NARPAT GARG', 'BHAVINI GARG', '', '', 14, 1, 1, '177', 'dhairyagarg', '6e9564f634e1371981919d81b5ee947e', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1046, 1047, 0, 5, 'DHARYA  GARG', '0000-00-00', 'NARPAT GARG', 'BHAVINI GARG', '', '', 14, 1, 1, '178', 'dharyagarg', '4091a9a8119bcab914ada480d49133b7', '7737425942', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1047, 1048, 0, 5, 'mithilesh  purbia', '0000-00-00', 'giriraj', 'lalita purbia', 'OTC B BLOCK AMAR NAGAR', '', 10, 0, 1, '179', 'mithileshpurbia', '3604aabc0f8c0c62ab7a373af2300f48', '9636337210', '7665174275', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0),
(1048, 1049, 0, 5, 'ZOYA   SHEIKH', '0000-00-00', 'MOHAMMED TARIK', 'NAZNEEN SHEIKH', '', '', 3, 1, 1, '180', 'zoyasheikh', '0656d34d29f76b26ca6cd41aa004c125', '', '', '', '', 'AAAATJpd3X0:APA91bFIfAJIxq5oBGv4YUfMPDLmhVT-iUilXpJS8l7AwSLIxy4-E1efuYrH4vY2oOwIP6ecLma0zvgva-lB5RYtkgjYa8pKiCBhxcQFqfbPrDbpXmBcc3oiGRQmRTrkucSkBxZAn8Tv', '', '', 0, '2017-08-23 06:58:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_bus`
--

CREATE TABLE IF NOT EXISTS `master_bus` (
  `id` int(11) NOT NULL,
  `vehicle_type` varchar(223) NOT NULL,
  `vehicle_no` varchar(225) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_bus`
--

INSERT INTO `master_bus` (`id`, `vehicle_type`, `vehicle_no`, `flag`) VALUES
(1, 'Bus A (Senior)', 'RJ 30 PA 0897', 0),
(2, 'Bus', 'Bus2', 0),
(3, 'Bus', 'Bus3', 0),
(4, 'Bus', 'Bus4', 0),
(5, 'Bus', 'Bus5', 0),
(6, 'Bus', 'Bus6', 0),
(7, 'BUS', 'Bus A (Senior)', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_category`
--

CREATE TABLE IF NOT EXISTS `master_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_category`
--

INSERT INTO `master_category` (`id`, `category_name`) VALUES
(1, 'Examination'),
(2, 'Holiday'),
(3, 'Festival'),
(4, 'Event'),
(5, 'News'),
(6, 'Notice');

-- --------------------------------------------------------

--
-- Table structure for table `master_class`
--

CREATE TABLE IF NOT EXISTS `master_class` (
  `id` int(11) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `roman` varchar(30) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_class`
--

INSERT INTO `master_class` (`id`, `class_name`, `roman`, `flag`) VALUES
(1, 'Pre Nursery', 'Pre Nursery', 0),
(2, 'Nursery', 'Nursery', 0),
(3, 'KG', 'KG', 0),
(4, 'Prep', 'Prep', 0),
(5, 'First', 'I', 0),
(6, 'Second', 'II', 0),
(7, 'Third', 'III', 0),
(8, 'Fourth', 'IV', 0),
(9, 'Fifth', 'V', 0),
(10, 'Sixth', 'VI', 0),
(11, 'Seventh', 'VII', 0),
(12, 'Eighth', 'VIII', 0),
(13, 'Ninth', 'IX', 0),
(14, 'Tenth', 'X', 0),
(15, 'Eleventh', 'XI', 0),
(16, 'Twelfth', 'XII', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_exam`
--

CREATE TABLE IF NOT EXISTS `master_exam` (
  `id` int(11) NOT NULL,
  `exam_type` varchar(223) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_exam`
--

INSERT INTO `master_exam` (`id`, `exam_type`, `flag`) VALUES
(1, 'First Test', 1),
(2, 'Test 5', 1),
(3, 'Quarterly Exam', 0),
(4, 'Half Yearly Exam', 0),
(5, 'Yearly Exam', 0),
(6, 'Home Assignment 1', 0),
(7, 'Home Assignment 2', 0),
(8, 'I Unit Test', 0),
(9, 'II Unit Test', 0),
(10, 'III Unit Test', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_medium`
--

CREATE TABLE IF NOT EXISTS `master_medium` (
  `id` int(11) NOT NULL,
  `medium_name` varchar(200) NOT NULL,
  `flag` int(3) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_medium`
--

INSERT INTO `master_medium` (`id`, `medium_name`, `flag`) VALUES
(1, 'CBSE', 0),
(2, 'RBSE', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_role`
--

CREATE TABLE IF NOT EXISTS `master_role` (
  `id` int(2) NOT NULL,
  `role_name` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_role`
--

INSERT INTO `master_role` (`id`, `role_name`) VALUES
(1, 'All'),
(2, 'Director'),
(3, 'Principal'),
(4, 'Teacher'),
(5, 'Student');

-- --------------------------------------------------------

--
-- Table structure for table `master_section`
--

CREATE TABLE IF NOT EXISTS `master_section` (
  `id` int(11) NOT NULL,
  `section_name` varchar(30) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_section`
--

INSERT INTO `master_section` (`id`, `section_name`, `flag`) VALUES
(1, 'A', 0),
(4, 'B', 0),
(5, 'C', 0),
(6, 'D', 0),
(9, 'E', 0),
(22, 'F', 0),
(23, 'G', 0),
(29, 'H', 0),
(30, 'Rose', 0),
(31, 'Lily', 0),
(32, 'Lotus', 0),
(33, 'Tulip', 0),
(37, 'Dhruv', 0),
(40, 'Eklavya', 0),
(41, 'Shravan', 0),
(42, 'Prahlad', 0),
(43, 'Udai', 0),
(44, 'Pratap', 0),
(45, 'Shiva', 0),
(46, 'Kumbha', 0),
(47, 'Karan', 0),
(48, 'Petal', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_sports`
--

CREATE TABLE IF NOT EXISTS `master_sports` (
  `id` int(11) NOT NULL,
  `sports_name` varchar(225) NOT NULL,
  `flag` int(11) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_sports`
--

INSERT INTO `master_sports` (`id`, `sports_name`, `flag`, `image`) VALUES
(1, 'Basketball', 0, ''),
(2, 'Archery', 0, ''),
(3, 'cricket', 0, ''),
(4, 'Karate', 0, ''),
(5, 'Badminten', 0, ''),
(6, 'Tenis', 0, ''),
(8, 'scatting', 0, ''),
(9, 'Kusti', 0, ''),
(10, 'Swimming', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `master_station`
--

CREATE TABLE IF NOT EXISTS `master_station` (
  `id` int(11) NOT NULL,
  `station` varchar(222) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_station`
--

INSERT INTO `master_station` (`id`, `station`, `flag`) VALUES
(1, 'station 1', 0),
(2, 'station 2', 0),
(3, 'station 3', 0),
(4, 'station 4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_subject`
--

CREATE TABLE IF NOT EXISTS `master_subject` (
  `id` int(11) NOT NULL,
  `subject_name` varchar(50) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_subject`
--

INSERT INTO `master_subject` (`id`, `subject_name`, `flag`) VALUES
(1, 'English', 0),
(2, 'Hindi', 0),
(3, 'Maths', 0),
(4, 'EVS', 0),
(5, 'Computer', 0),
(6, 'G.K.', 0),
(7, 'Art', 0),
(8, 'Physical Education', 0),
(9, 'Music', 0),
(10, 'Science', 0),
(11, 'Social Studies', 0),
(12, 'Sanskrit', 0),
(13, 'French', 0),
(14, 'Physics', 0),
(15, 'Chemistry', 0),
(16, 'Biology', 0),
(17, 'Business Studies', 0),
(18, 'Accountancy', 0),
(19, 'Economics', 0);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `main_menu` text NOT NULL,
  `main_menu_icon` varchar(30) NOT NULL,
  `sub_menu` varchar(20) NOT NULL,
  `sub_menu_icon` varchar(30) NOT NULL,
  `page_name_url` text NOT NULL,
  `icon_class_name` varchar(30) NOT NULL,
  `query_string` text NOT NULL,
  `target` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `main_menu`, `main_menu_icon`, `sub_menu`, `sub_menu_icon`, `page_name_url`, `icon_class_name`, `query_string`, `target`) VALUES
(1, 'Dashboard', '', '', '', '', 'index1.php', 'fa fa-home', '', ''),
(2, 'Add', 'Event', 'fa fa-ticket', '', '', 'create_event.php', 'fa fa-search-plus', '', ''),
(3, 'View', 'Event', '', '', '', 'view_event.php', 'fa fa-edit', '', ''),
(4, 'Add', 'News', 'fa fa-hacker-news', '', '', 'create_news.php', 'fa fa-search-plus', '', ''),
(5, 'View', 'News', '', '', '', 'view_news.php', 'fa fa-edit', '', ''),
(7, 'Add', 'Gallery', 'fa fa-file-picture-o', '', '', 'gallery.php', 'fa fa-search-plus', '', ''),
(8, 'View', 'Gallery', '', '', '', 'view_gallery.php', 'fa fa-edit', '', ''),
(11, 'Add', 'Faculty Registration', 'fa fa-user', '', '', 'create_user.php', 'fa fa-picture-o ', '', ''),
(12, 'View', 'Faculty Registration', '', '', '', 'view_users.php', 'fa fa-ticket ', '', ''),
(15, 'Add', 'User Rights', 'fa fa-check', '', '', 'user_rights.php', 'fa fa-eye ', '', ''),
(42, 'Add', 'Registration', 'fa fa-user', '', '', 'registration.php', 'fa fa-plus', '', ''),
(43, 'View', 'Registration', 'fa fa-user', '', '', 'view_profile.php', 'fa fa-edit', '', ''),
(44, 'Add', 'Academic Calendar', 'fa fa-building', '', '', 'academy_calendar.php', 'fa fa-plus', '', ''),
(45, 'View', 'Academic Calendar', 'fa fa-building', '', '', 'view_academy_calendar.php', 'fa fa-edit', '', ''),
(46, 'Add', 'Notice', 'fa fa-bell', '', '', 'create_notice.php', 'fa fa-plus', '', ''),
(47, 'View', 'Notice', 'fa fa-bell', '', '', 'view_notice.php', 'fa fa-edit', '', ''),
(48, 'Import Data', 'Registration', 'fa fa-user', '', '', 'import_data.php', 'fa fa-edit fa-file-excel-o', '', ''),
(49, 'Add', 'Syllabus', 'fa fa-edit', '', '', 'syllabus.php', 'fa fa-plus', '', ''),
(50, 'View', 'Syllabus', 'fa fa-edit', '', '', 'view_syllabus.php', 'fa fa-edit', '', ''),
(51, 'School Time Table', 'Time Table', 'fa fa-edit', '', '', 'timetable.php', 'fa fa-plus', '', ''),
(52, 'View', 'Time Table', 'fa fa-edit', '', '', 'view_timetable.php', 'fa fa-edit', '', ''),
(53, 'Add', 'Contact Details', 'fa fa-group', '', '', 'contact_detail.php', 'fa fa-book', '', ''),
(54, 'Edit', 'Contact Details', 'fa fa-group', '', '', 'edit_contact_detail.php', 'fa fa-edit ', '', ''),
(55, 'Message', '', '', '', '', 'dir_princ_meaasge.php', 'fa fa-envelope', '', ''),
(56, 'Exam Time Table', 'Time Table', 'fa fa-edit', '', '', 'exam_time_table.php', 'fa fa-plus', '', ''),
(57, 'Add', 'Sports', 'fa fa-plus', '', '', 'sports.php', 'fa fa-plus', '', ''),
(58, 'View', 'Sports', 'fa fa-plus', '', '', 'view_sports.php', 'fa fa-plus', '', ''),
(59, 'Add', 'Achivement', 'fa fa-plus', '', '', 'achivements.php', 'fa fa-plus', '', ''),
(60, 'View', 'Achivement', 'fa fa-plus', '', '', 'view_achivements.php', 'fa fa-plus', '', ''),
(61, 'Class', 'Master', 'fa fa-gavel', '', '', 'master_class.php', 'fa fa-plus', '', ''),
(62, 'Section', 'Master', 'fa fa-gavel', '', '', 'master_section.php', 'fa fa-plus', '', ''),
(63, 'Section Mapping', 'Master', 'fa fa-gavel', '', '', 'teacher_mapping.php', 'fa fa-plus', '', ''),
(64, 'Subject', 'Master', 'fa fa-gavel', '', '', 'master_subject.php', 'fa fa-plus', '', ''),
(65, 'Subject Mapping', 'Master', 'fa fa-gavel', '', '', 'subject_mapping.php', 'fa fa-plus', '', ''),
(66, 'Exam', 'Master', 'fa fa-gavel', '', '', 'master_exam.php', 'fa fa-plus', '', ''),
(68, 'Sport', 'Master', 'fa fa-gavel', '', '', 'master_sports.php', 'fa fa-plus', '', ''),
(69, 'Station', 'Master', 'fa fa-gavel', '', '', 'master_station.php', 'fa fa-plus', '', ''),
(70, 'Bus', 'Master', 'fa fa-gavel', '', '', 'master_bus.php', 'fa fa-plus', '', ''),
(71, 'Insert Marks', 'Marks', 'fa fa-gavel', '', '', 'class_test.php', 'fa fa-plus', '', ''),
(72, 'Upload Marks', 'Marks', 'fa fa-gavel', '', '', 'upload_student_marks.php', 'fa fa-plus', '', ''),
(73, 'Add', 'Homework', 'fa fa-user', '', '', 'homework_assignment.php', 'fa fa-book', '', ''),
(74, 'View', 'Homework', 'fa fa-user', '', '', 'view_homework_assign.php', 'fa fa-book', '', ''),
(75, 'Station Mapping', 'Master', 'fa fa-gavel', '', '', 'bus_routes.php', 'fa fa-plus', '', ''),
(76, 'Home Gallery', '', '', '', '', 'home_gallery.php', 'fa fa-envelope', '', ''),
(77, 'Red Dairy', '', '', '', '', 'red_dairy.php', 'fa fa-book', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `featured_image` varchar(100) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `date` date NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `role_id`, `featured_image`, `title`, `description`, `date`, `category_id`, `user_id`, `curent_date`, `flag`) VALUES
(1, 5, '39441497912534.jpeg', 'test news', 'this is test news', '2017-06-20', 5, 3, '2017-06-20', 0),
(2, 1, 'no_image.png', 'Activity', 'There will be Saturday Activity on 8/7/2017.', '2017-07-07', 5, 3, '2017-07-07', 0),
(3, 1, '82081503437324.jpeg', 'Annual Function', 'Annual Function ', '2017-08-23', 5, 42, '2017-08-23', 0),
(4, 1, '83501503437573.jpeg', 'Sports Week ', 'Sports Week ', '2017-08-23', 5, 42, '2017-08-23', 0),
(5, 1, '7461503437635.jpeg', 'Shri Krishna Janmashtami', 'Shri Krishna Janmashtami', '2017-08-23', 5, 42, '2017-08-23', 0);

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `note` text NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(10) NOT NULL,
  `role_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `notice_no` varchar(200) NOT NULL,
  `image` varchar(100) NOT NULL,
  `title` varchar(500) NOT NULL,
  `description` text NOT NULL,
  `dateofpublish` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `class_id` varchar(200) NOT NULL,
  `section_id` varchar(200) NOT NULL,
  `medium_id` varchar(200) NOT NULL,
  `noticedetails` mediumtext NOT NULL,
  `file_name` varchar(200) NOT NULL,
  `curent_date` date NOT NULL,
  `shareable` int(11) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `role_id`, `category_id`, `user_id`, `notice_no`, `image`, `title`, `description`, `dateofpublish`, `time`, `class_id`, `section_id`, `medium_id`, `noticedetails`, `file_name`, `curent_date`, `shareable`, `flag`) VALUES
(1, 2, 6, 1, '1', 'notice1.jpg', 'notice1', 'testnotice', '2017-03-15', '02:29 PM', '', '', '', '						<center><img src="img/logo.png" width="250px" height="100px"></img></center>\r\n	asdyjvasnd					', 'notice1.pdf', '0000-00-00', 1, 0),
(2, 4, 6, 3, '2', 'noimage.png', 'Test Notice', 'hello students', '2017-06-20', '04:35 PM', '13,14,15', '', '', '<center><img src="img/CBAlogo.png" width="150px" height="150px" /></center><center></center><center>hello this &nbsp;is test notice</center>', 'notice2.pdf', '0000-00-00', 1, 0),
(3, 0, 6, 3, 'CBA/2017-2018/A/3', 'noimage.png', 'Hello', 'App launcHing', '2017-07-06', '09:20 PM', '10', '', '', '<center><img src="img/CBAlogo.png" width="150px" height="150px" /></center>', 'notice3.pdf', '0000-00-00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `submitted_by` int(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `message`, `user_id`, `role_id`, `submitted_by`, `timestamp`, `date`, `time`) VALUES
(1, 'test', 'NOT AT ALL', 807, 5, 3, '2017-06-20 10:12:59', 'Jun 20 2017', '03:42 PM'),
(2, 'Test News', 'this is test News', 807, 5, 3, '2017-06-20 10:25:04', 'Jun 20 2017', '03:55 PM'),
(3, 'Test News', 'this is test news', 807, 5, 3, '2017-06-20 10:26:28', 'Jun 20 2017', '03:56 PM'),
(4, 'asdasd', 'dasdasd', 807, 5, 3, '2017-06-20 10:38:50', 'Jun 20 2017', '04:08 PM'),
(5, 'test news', 'this is test news', 807, 5, 3, '2017-06-20 10:48:55', 'Jun 20 2017', '04:18 PM'),
(6, 'test', 'New album added', 807, 5, 3, '2017-06-20 10:50:08', 'Jun 20 2017', '04:20 PM'),
(7, 'test news', 'New album added', 807, 5, 3, '2017-06-20 10:53:01', 'Jun 20 2017', '04:23 PM'),
(8, 'test news', 'New album added', 807, 5, 3, '2017-06-20 10:57:46', 'Jun 20 2017', '04:27 PM'),
(9, 'test', 'New album added', 807, 5, 3, '2017-06-20 11:00:07', 'Jun 20 2017', '04:30 PM'),
(10, 'Syllabus', 'Your Class Syllabus Added', 806, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(11, 'Syllabus', 'Your Class Syllabus Added', 807, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(12, 'Syllabus', 'Your Class Syllabus Added', 808, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(13, 'Syllabus', 'Your Class Syllabus Added', 809, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(14, 'Syllabus', 'Your Class Syllabus Added', 810, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(15, 'Syllabus', 'Your Class Syllabus Added', 811, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(16, 'Syllabus', 'Your Class Syllabus Added', 812, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(17, 'Syllabus', 'Your Class Syllabus Added', 813, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(18, 'Syllabus', 'Your Class Syllabus Added', 814, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(19, 'Syllabus', 'Your Class Syllabus Added', 815, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(20, 'Syllabus', 'Your Class Syllabus Added', 816, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(21, 'Syllabus', 'Your Class Syllabus Added', 817, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(22, 'Syllabus', 'Your Class Syllabus Added', 818, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(23, 'Syllabus', 'Your Class Syllabus Added', 819, 5, 3, '2017-06-20 11:09:04', 'Jun 20 2017', '04:39 PM'),
(24, 'Syllabus', 'Your Class Syllabus Added', 820, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(25, 'Syllabus', 'Your Class Syllabus Added', 821, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(26, 'Syllabus', 'Your Class Syllabus Added', 822, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(27, 'Syllabus', 'Your Class Syllabus Added', 823, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(28, 'Syllabus', 'Your Class Syllabus Added', 824, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(29, 'Syllabus', 'Your Class Syllabus Added', 825, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(30, 'Syllabus', 'Your Class Syllabus Added', 826, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(31, 'Syllabus', 'Your Class Syllabus Added', 827, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(32, 'Syllabus', 'Your Class Syllabus Added', 828, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(33, 'Syllabus', 'Your Class Syllabus Added', 829, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(34, 'Syllabus', 'Your Class Syllabus Added', 830, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(35, 'Syllabus', 'Your Class Syllabus Added', 831, 5, 3, '2017-06-20 11:09:05', 'Jun 20 2017', '04:39 PM'),
(36, '', 'helllo this  is test data  ', 3, 4, 3, '2017-06-20 11:27:46', 'Jun 20 2017', '04:57 PM'),
(37, '', 'helllo this  is test data  ', 807, 5, 3, '2017-06-20 11:27:46', 'Jun 20 2017', '04:57 PM'),
(38, 'Assignment', 'New Assignment Submitted', 806, 5, 3, '2017-06-23 05:59:16', 'Jun 23 2017', '11:29 AM'),
(39, 'Assignment', 'New Assignment Submitted', 807, 5, 3, '2017-06-23 05:59:16', 'Jun 23 2017', '11:29 AM'),
(40, 'Assignment', 'New Assignment Submitted', 808, 5, 3, '2017-06-23 05:59:16', 'Jun 23 2017', '11:29 AM'),
(41, 'Leave Application', 'Your Leave Application Approved', 807, 5, 3, '2017-06-23 08:09:40', 'Jun 23 2017', '01:39 PM'),
(42, 'Assignment', 'New Assignment Submitted', 806, 5, 3, '2017-06-30 05:51:03', 'Jun 30 2017', '11:21 AM'),
(43, 'Assignment', 'New Assignment Submitted', 807, 5, 3, '2017-06-30 05:51:03', 'Jun 30 2017', '11:21 AM'),
(44, 'Directors Message', '', 580, 5, 3, '2017-07-06 15:51:08', 'Jul 06 2017', '09:21 PM'),
(45, 'Directors Message', '', 807, 5, 3, '2017-07-06 15:51:08', 'Jul 06 2017', '09:21 PM'),
(46, 'Directors Message', '', 3, 4, 3, '2017-07-06 15:51:36', 'Jul 06 2017', '09:21 PM'),
(47, 'Directors Message', '', 580, 5, 3, '2017-07-06 15:51:36', 'Jul 06 2017', '09:21 PM'),
(48, 'Directors Message', '', 807, 5, 3, '2017-07-06 15:51:37', 'Jul 06 2017', '09:21 PM'),
(49, 'Directors Message', '', 580, 5, 3, '2017-07-07 03:02:57', 'Jul 07 2017', '08:32 AM'),
(50, 'Directors Message', '', 807, 5, 3, '2017-07-07 03:02:58', 'Jul 07 2017', '08:32 AM'),
(51, 'Assignment', 'New Assignment Submitted', 3, 5, 3, '2017-07-07 03:10:19', 'Jul 07 2017', '08:40:AM'),
(52, 'Directors Message', '', 3, 4, 3, '2017-07-07 04:03:36', 'Jul 07 2017', '09:33 AM'),
(53, 'test', 'New album added', 148, 5, 3, '2017-07-11 10:36:52', 'Jul 11 2017', '04:06 PM'),
(54, 'test', 'New album added', 531, 5, 3, '2017-07-11 10:36:53', 'Jul 11 2017', '04:06 PM'),
(55, 'New Appointment', 'New Appointment Request Submitted', 1, 2, 0, '2017-07-15 05:16:28', 'Jul 15 2017', '10:46 AM'),
(56, 'New Appointment', 'New Appointment Request Submitted', 1, 2, 0, '2017-07-15 05:25:26', 'Jul 15 2017', '10:55 AM'),
(57, 'Principles Message', 'test', 1, 5, 3, '2017-08-19 13:00:30', 'Aug 19 2017', '06:30 PM'),
(58, 'Principles Message', 'test', 148, 5, 3, '2017-08-19 13:00:30', 'Aug 19 2017', '06:30 PM'),
(59, 'Principles Message', 'test', 531, 5, 3, '2017-08-19 13:00:30', 'Aug 19 2017', '06:30 PM');

-- --------------------------------------------------------

--
-- Table structure for table `remarks`
--

CREATE TABLE IF NOT EXISTS `remarks` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `gread` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `remarks`
--

INSERT INTO `remarks` (`id`, `class_id`, `section_id`, `student_id`, `gread`, `remark`, `timestamp`, `login_id`) VALUES
(1, 1, 4, 806, 'Good', 'good remarks.', '2017-06-23 06:32:37', 3),
(2, 1, 4, 806, 'Excellent', 'Good performance.', '2017-06-23 06:36:53', 3),
(3, 1, 4, 807, 'Excellent', 'Good performance.', '2017-06-23 06:36:53', 3),
(4, 1, 4, 806, 'Good', 'Got good  marks in Maths.', '2017-06-30 07:21:11', 3),
(5, 1, 4, 807, 'Good', 'Got good  marks in Maths.', '2017-06-30 07:21:11', 3),
(6, 1, 4, 808, 'Good', 'Got good  marks in Maths.', '2017-06-30 07:21:11', 3),
(7, 1, 4, 806, 'Good', 'Got good  marks in Maths.', '2017-06-30 07:21:15', 3),
(8, 1, 4, 807, 'Good', 'Got good  marks in Maths.', '2017-06-30 07:21:15', 3),
(9, 1, 4, 808, 'Good', 'Got good  marks in Maths.', '2017-06-30 07:21:15', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE IF NOT EXISTS `student_marks` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_type_id` int(11) NOT NULL,
  `max_marks` varchar(50) NOT NULL,
  `obtained_marks` varchar(20) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `test_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `student_id`, `class_id`, `section_id`, `subject_id`, `exam_type_id`, `max_marks`, `obtained_marks`, `teacher_id`, `test_date`) VALUES
(1, 825, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(2, 807, 15, 4, 16, 1, '10', '4', 3, '2017-06-20'),
(3, 809, 15, 4, 16, 1, '10', '2', 3, '2017-06-20'),
(4, 810, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(5, 811, 15, 4, 16, 1, '10', '4', 3, '2017-06-20'),
(6, 831, 15, 4, 16, 1, '10', '1', 3, '2017-06-20'),
(7, 813, 15, 4, 16, 1, '10', '3', 3, '2017-06-20'),
(8, 814, 15, 4, 16, 1, '10', '6', 3, '2017-06-20'),
(9, 815, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(10, 816, 15, 4, 16, 1, '10', '1', 3, '2017-06-20'),
(11, 817, 15, 4, 16, 1, '10', '4', 3, '2017-06-20'),
(12, 828, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(13, 829, 15, 4, 16, 1, '10', '6', 3, '2017-06-20'),
(14, 818, 15, 4, 16, 1, '10', '1', 3, '2017-06-20'),
(15, 819, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(16, 820, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(17, 822, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(18, 826, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(19, 823, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(20, 827, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(21, 830, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(22, 806, 15, 4, 16, 1, '10', '0', 3, '2017-06-20'),
(23, 808, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(24, 812, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(25, 821, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(26, 824, 15, 4, 16, 1, '10', '5', 3, '2017-06-20'),
(27, 806, 15, 4, 15, 1, '20', '12', 3, '2017-06-19'),
(28, 807, 15, 4, 15, 1, '20', '14', 3, '2017-06-19'),
(29, 808, 15, 4, 15, 1, '20', '10', 3, '2017-06-19'),
(30, 809, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(31, 810, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(32, 811, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(33, 812, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(34, 813, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(35, 814, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(36, 815, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(37, 816, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(38, 817, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(39, 818, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(40, 819, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(41, 820, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(42, 821, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(43, 822, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(44, 823, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(45, 824, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(46, 825, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(47, 826, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(48, 827, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(49, 828, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(50, 829, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(51, 830, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(52, 831, 15, 4, 15, 1, '20', '0', 3, '2017-06-19'),
(53, 806, 15, 4, 3, 2, '20', '12', 3, '2017-06-22'),
(54, 807, 15, 4, 3, 2, '20', '15', 3, '2017-06-22'),
(55, 808, 15, 4, 3, 2, '20', '7', 3, '2017-06-22'),
(56, 809, 15, 4, 3, 2, '20', '10', 3, '2017-06-22'),
(57, 810, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(58, 811, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(59, 812, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(60, 813, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(61, 814, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(62, 815, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(63, 816, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(64, 817, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(65, 818, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(66, 819, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(67, 820, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(68, 821, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(69, 822, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(70, 823, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(71, 824, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(72, 825, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(73, 826, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(74, 827, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(75, 828, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(76, 829, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(77, 830, 15, 4, 3, 2, '20', '0', 3, '2017-06-22'),
(78, 831, 15, 4, 3, 2, '20', '0', 3, '2017-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `subject_mapping`
--

CREATE TABLE IF NOT EXISTS `subject_mapping` (
  `id` int(11) NOT NULL,
  `class_id` int(10) NOT NULL,
  `section_id` int(10) NOT NULL,
  `subject_id` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_mapping`
--

INSERT INTO `subject_mapping` (`id`, `class_id`, `section_id`, `subject_id`, `date`) VALUES
(1, 14, 1, '1,4,2,3,12,10', '2017-07-07');

-- --------------------------------------------------------

--
-- Table structure for table `subsports_gallery`
--

CREATE TABLE IF NOT EXISTS `subsports_gallery` (
  `id` int(11) NOT NULL,
  `sports_id` int(11) NOT NULL,
  `gallery_pic` varchar(100) NOT NULL,
  `flag` int(11) NOT NULL,
  `curent_date` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subsports_gallery`
--

INSERT INTO `subsports_gallery` (`id`, `sports_id`, `gallery_pic`, `flag`, `curent_date`) VALUES
(1, 3, 'sports/cricket/9349.jpg', 0, '2017-06-09'),
(2, 3, 'sports/cricket/17114.jpg', 0, '2017-06-09'),
(3, 3, 'sports/cricket/4875.jpg', 0, '2017-06-09'),
(4, 4, 'sports/Judo/6040.jpeg', 0, '2017-06-09'),
(5, 4, 'sports/Judo/3057.jpg', 0, '2017-06-09'),
(6, 6, 'sports/Table Tenis/13270.jpg', 0, '2017-06-09');

-- --------------------------------------------------------

--
-- Table structure for table `sub_gallery`
--

CREATE TABLE IF NOT EXISTS `sub_gallery` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) NOT NULL,
  `gallery_pic` varchar(100) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_gallery`
--

INSERT INTO `sub_gallery` (`id`, `gallery_id`, `gallery_pic`, `flag`) VALUES
(5, 3, 'event24083.jpg', 0),
(6, 4, 'event2914.jpg', 0),
(7, 5, 'event26985.jpg', 0),
(8, 6, 'event84106.jpg', 0),
(9, 6, 'event53116.jpg', 0),
(10, 7, 'event38987.jpg', 0),
(11, 7, 'event95937.jpg', 0),
(12, 7, 'event68397.jpg', 0),
(13, 8, 'event72628.jpg', 0),
(14, 8, 'event74888.jpg', 0),
(15, 8, 'event98428.jpg', 0),
(24, 1, 'event79351.jpg', 0),
(25, 1, 'event45241.jpg', 0),
(26, 1, 'event14011.jpg', 0),
(27, 1, 'event23021.jpg', 0),
(28, 3, 'event36413.jpg', 0),
(29, 4, 'event85884.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sub_time_table`
--

CREATE TABLE IF NOT EXISTS `sub_time_table` (
  `id` int(11) NOT NULL,
  `faculty_id` int(11) NOT NULL,
  `time_table_id` int(11) NOT NULL,
  `time_from` varchar(200) NOT NULL,
  `time_to` varchar(200) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `syllabus`
--

CREATE TABLE IF NOT EXISTS `syllabus` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `curent_date` date NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `syllabus`
--

INSERT INTO `syllabus` (`id`, `user_id`, `class_id`, `section_id`, `subject_id`, `file`, `date`, `curent_date`, `flag`) VALUES
(1, 3, 15, 4, 16, 'pdf1.pdf', '2017-06-20', '2017-06-20', 0),
(2, 3, 15, 5, 3, 'pdf2.pdf', '2017-06-20', '2017-06-20', 0),
(3, 3, 14, 4, 15, 'pdf3.pdf', '2017-06-20', '2017-06-20', 0);

-- --------------------------------------------------------

--
-- Table structure for table `text_message`
--

CREATE TABLE IF NOT EXISTS `text_message` (
  `id` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE IF NOT EXISTS `time_table` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time_from` time NOT NULL,
  `time_to` time NOT NULL,
  `teacher_name` varchar(200) NOT NULL,
  `period` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(200) NOT NULL,
  `curent_date` date NOT NULL,
  `file` varchar(100) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `user_id`, `class_id`, `section_id`, `subject_id`, `time_from`, `time_to`, `teacher_name`, `period`, `date`, `day`, `curent_date`, `file`, `flag`) VALUES
(1, 3, 15, 4, 16, '09:00:00', '10:00:00', '', '', '0000-00-00', '', '2017-06-20', '', 0),
(2, 3, 15, 4, 14, '12:00:00', '01:00:00', '', '', '0000-00-00', '', '2017-06-20', '', 0),
(3, 3, 15, 4, 15, '10:00:00', '11:00:00', '', '', '0000-00-00', '', '2017-06-20', '', 0),
(4, 3, 15, 4, 3, '11:00:00', '12:00:00', '', '', '0000-00-00', '', '2017-06-20', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_management`
--

CREATE TABLE IF NOT EXISTS `user_management` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `module_id` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=547 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_management`
--

INSERT INTO `user_management` (`id`, `role_id`, `module_id`) VALUES
(1, 2, '1'),
(2, 2, '2'),
(3, 2, '3'),
(4, 2, '4'),
(5, 2, '5'),
(6, 2, '7'),
(7, 2, '8'),
(8, 2, '10'),
(9, 2, '11'),
(10, 2, '12'),
(11, 2, '15'),
(12, 2, '42'),
(13, 2, '43'),
(14, 2, '44'),
(15, 2, '45'),
(16, 2, '46'),
(17, 2, '47'),
(18, 2, '48'),
(19, 1, '1'),
(20, 1, '2'),
(21, 1, '3'),
(22, 1, '4'),
(23, 1, '5'),
(24, 1, '7'),
(25, 1, '8'),
(26, 1, '10'),
(27, 1, '11'),
(28, 1, '12'),
(29, 1, '15'),
(30, 1, '42'),
(31, 1, '43'),
(32, 1, '44'),
(33, 1, '45'),
(34, 1, '46'),
(35, 1, '47'),
(36, 1, '48'),
(37, 1, '49'),
(38, 1, '50'),
(39, 2, '49'),
(40, 2, '50'),
(41, 2, '51'),
(42, 2, '52'),
(43, 2, '9'),
(44, 2, '53'),
(45, 2, '54'),
(546, 4, '77'),
(545, 4, '76'),
(544, 4, '74'),
(543, 4, '73'),
(542, 4, '73'),
(541, 4, '75'),
(540, 4, '70'),
(539, 4, '69'),
(538, 4, '68'),
(537, 4, '65'),
(536, 4, '64'),
(535, 4, '63'),
(534, 4, '62'),
(533, 4, '61'),
(532, 4, '61'),
(531, 4, '60'),
(530, 4, '59'),
(529, 4, '59'),
(528, 4, '58'),
(527, 4, '57'),
(526, 4, '57'),
(525, 4, '55'),
(71, 2, '55'),
(524, 4, '54'),
(73, 3, '1'),
(74, 3, '2'),
(75, 3, '3'),
(76, 3, '4'),
(77, 3, '5'),
(78, 3, '7'),
(79, 3, '8'),
(80, 3, '9'),
(81, 3, '10'),
(82, 3, '11'),
(83, 3, '12'),
(84, 3, '15'),
(85, 3, '42'),
(86, 3, '43'),
(87, 3, '44'),
(88, 3, '45'),
(89, 3, '46'),
(90, 3, '47'),
(91, 3, '48'),
(92, 3, '49'),
(93, 3, '50'),
(94, 3, '51'),
(95, 3, '52'),
(96, 3, '53'),
(97, 3, '54'),
(98, 3, '55'),
(99, 3, '56'),
(100, 2, '56'),
(523, 4, '53'),
(522, 4, '53'),
(521, 4, '56'),
(520, 4, '52'),
(519, 4, '51'),
(518, 4, '51'),
(517, 4, '50'),
(516, 4, '49'),
(515, 4, '49'),
(514, 4, '47'),
(513, 4, '46'),
(512, 4, '46'),
(511, 4, '45'),
(510, 4, '44'),
(509, 4, '44'),
(508, 4, '48'),
(117, 1, '51'),
(118, 1, '52'),
(119, 1, '53'),
(120, 1, '54'),
(121, 1, '55'),
(122, 1, '56'),
(123, 1, '57'),
(124, 1, '58'),
(125, 1, '59'),
(126, 1, '60'),
(127, 1, '61'),
(128, 1, '62'),
(129, 1, '63'),
(130, 1, '64'),
(131, 1, '65'),
(132, 1, '66'),
(133, 1, '68'),
(134, 1, '69'),
(135, 1, '70'),
(136, 1, '71'),
(137, 1, '72'),
(138, 2, '57'),
(139, 2, '58'),
(140, 2, '59'),
(141, 2, '60'),
(142, 2, '61'),
(143, 2, '62'),
(144, 2, '63'),
(145, 2, '64'),
(146, 2, '65'),
(147, 2, '66'),
(148, 2, '68'),
(149, 2, '69'),
(150, 2, '70'),
(151, 2, '71'),
(152, 2, '72'),
(153, 2, '73'),
(507, 4, '43'),
(506, 4, '42'),
(505, 4, '42'),
(504, 4, '15'),
(503, 4, '15'),
(502, 4, '12'),
(501, 4, '11'),
(500, 4, '11'),
(499, 4, '8'),
(498, 4, '7'),
(497, 4, '7'),
(496, 4, '5'),
(495, 4, '4'),
(494, 4, '4'),
(493, 4, '3'),
(492, 4, '2'),
(491, 4, '2'),
(490, 4, '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acedmic_calendar`
--
ALTER TABLE `acedmic_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `achivements`
--
ALTER TABLE `achivements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `add_to_calendar`
--
ALTER TABLE `add_to_calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `api_versions`
--
ALTER TABLE `api_versions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broadcast_message`
--
ALTER TABLE `broadcast_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_routes`
--
ALTER TABLE `bus_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_section`
--
ALTER TABLE `class_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_detail`
--
ALTER TABLE `contact_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `director_principle_message`
--
ALTER TABLE `director_principle_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_details`
--
ALTER TABLE `event_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_time_table`
--
ALTER TABLE `exam_time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_classes`
--
ALTER TABLE `extra_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty_login`
--
ALTER TABLE `faculty_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_gallery`
--
ALTER TABLE `home_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry_form`
--
ALTER TABLE `inquiry_form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_note`
--
ALTER TABLE `leave_note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_bus`
--
ALTER TABLE `master_bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_category`
--
ALTER TABLE `master_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_class`
--
ALTER TABLE `master_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_exam`
--
ALTER TABLE `master_exam`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_medium`
--
ALTER TABLE `master_medium`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_role`
--
ALTER TABLE `master_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_section`
--
ALTER TABLE `master_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_sports`
--
ALTER TABLE `master_sports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_station`
--
ALTER TABLE `master_station`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_subject`
--
ALTER TABLE `master_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `remarks`
--
ALTER TABLE `remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_mapping`
--
ALTER TABLE `subject_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subsports_gallery`
--
ALTER TABLE `subsports_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_gallery`
--
ALTER TABLE `sub_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_time_table`
--
ALTER TABLE `sub_time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `syllabus`
--
ALTER TABLE `syllabus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `text_message`
--
ALTER TABLE `text_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_management`
--
ALTER TABLE `user_management`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us`
--
ALTER TABLE `about_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `acedmic_calendar`
--
ALTER TABLE `acedmic_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `achivements`
--
ALTER TABLE `achivements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `add_to_calendar`
--
ALTER TABLE `add_to_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `api_versions`
--
ALTER TABLE `api_versions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=262;
--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `broadcast_message`
--
ALTER TABLE `broadcast_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bus_routes`
--
ALTER TABLE `bus_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `class_section`
--
ALTER TABLE `class_section`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `contact_detail`
--
ALTER TABLE `contact_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `director_principle_message`
--
ALTER TABLE `director_principle_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_details`
--
ALTER TABLE `event_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `exam_time_table`
--
ALTER TABLE `exam_time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `extra_classes`
--
ALTER TABLE `extra_classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `faculty_login`
--
ALTER TABLE `faculty_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `home_gallery`
--
ALTER TABLE `home_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `inquiry_form`
--
ALTER TABLE `inquiry_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `leave_note`
--
ALTER TABLE `leave_note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1049;
--
-- AUTO_INCREMENT for table `master_bus`
--
ALTER TABLE `master_bus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `master_category`
--
ALTER TABLE `master_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `master_class`
--
ALTER TABLE `master_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `master_exam`
--
ALTER TABLE `master_exam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `master_medium`
--
ALTER TABLE `master_medium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_role`
--
ALTER TABLE `master_role`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `master_section`
--
ALTER TABLE `master_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `master_sports`
--
ALTER TABLE `master_sports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `master_station`
--
ALTER TABLE `master_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `master_subject`
--
ALTER TABLE `master_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `remarks`
--
ALTER TABLE `remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `subject_mapping`
--
ALTER TABLE `subject_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `subsports_gallery`
--
ALTER TABLE `subsports_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `sub_gallery`
--
ALTER TABLE `sub_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `sub_time_table`
--
ALTER TABLE `sub_time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `syllabus`
--
ALTER TABLE `syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `text_message`
--
ALTER TABLE `text_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_management`
--
ALTER TABLE `user_management`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=547;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
