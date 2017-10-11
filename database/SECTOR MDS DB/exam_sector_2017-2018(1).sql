-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2017 at 08:41 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_sector_2017-2018`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `scholar_no` varchar(15) NOT NULL,
  `term` varchar(5) NOT NULL,
  `attendance` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `elective`
--

CREATE TABLE `elective` (
  `id` int(11) NOT NULL,
  `scholar_id` varchar(50) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elective`
--

INSERT INTO `elective` (`id`, `scholar_id`, `subject_id`) VALUES
(1, '16351', 13);

-- --------------------------------------------------------

--
-- Table structure for table `exam_category`
--

CREATE TABLE `exam_category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_category`
--

INSERT INTO `exam_category` (`id`, `name`) VALUES
(1, 'FA1'),
(2, 'FA2'),
(3, 'SA1'),
(4, 'FA3'),
(5, 'FA4'),
(6, 'SA2');

-- --------------------------------------------------------

--
-- Table structure for table `exam_category_type`
--

CREATE TABLE `exam_category_type` (
  `id` int(11) NOT NULL,
  `Exam` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_category_type`
--

INSERT INTO `exam_category_type` (`id`, `Exam`) VALUES
(1, 'FA1 Project'),
(2, 'Best 3 Class Test'),
(3, 'FA2 Writing'),
(4, 'CW HW'),
(5, 'SA1 Lit.'),
(6, 'SA1 Wrt.'),
(7, 'SA1 Lang'),
(8, 'Oral'),
(9, 'SA1 Practical'),
(10, 'Art'),
(11, 'Physical Education'),
(12, 'Music'),
(13, 'FA3 Writing'),
(14, 'FA4 Project'),
(15, 'SA2 Lit.'),
(16, 'SA2 Wrt.'),
(17, 'SA2 Lang'),
(18, 'SA2 Practical');

-- --------------------------------------------------------

--
-- Table structure for table `exam_mapping`
--

CREATE TABLE `exam_mapping` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `sub_subject_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `exam_category_id` int(11) NOT NULL,
  `exam_category_type_id` int(11) NOT NULL,
  `max_marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_mapping`
--

INSERT INTO `exam_mapping` (`id`, `class_id`, `section_id`, `subject_id`, `sub_subject_id`, `term_id`, `exam_category_id`, `exam_category_type_id`, `max_marks`) VALUES
(1, 1, 1, 1, 0, 1, 1, 1, 100),
(2, 1, 1, 2, 0, 1, 1, 1, 100),
(3, 1, 1, 3, 0, 1, 1, 1, 100),
(4, 1, 1, 4, 0, 1, 1, 1, 100),
(5, 1, 1, 5, 0, 1, 1, 1, 100),
(6, 1, 1, 6, 0, 1, 1, 1, 100),
(7, 1, 1, 13, 0, 1, 1, 1, 100),
(8, 1, 1, 1, 0, 1, 2, 2, 100),
(9, 1, 1, 2, 0, 1, 2, 2, 100),
(10, 1, 1, 3, 0, 1, 2, 2, 100),
(11, 1, 1, 4, 0, 1, 2, 2, 100),
(12, 1, 1, 5, 0, 1, 2, 2, 100),
(13, 1, 1, 6, 0, 1, 2, 2, 100),
(14, 1, 1, 13, 0, 1, 2, 2, 100);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `class` int(2) NOT NULL,
  `section` int(2) NOT NULL,
  `subject` int(11) NOT NULL,
  `role` int(3) NOT NULL COMMENT '2=Admin and 1=Faculty',
  `test` int(2) NOT NULL,
  `flag` int(3) NOT NULL COMMENT '1=sector, 2=pratap'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `gender`, `username`, `password`, `class`, `section`, `subject`, `role`, `test`, `flag`) VALUES
(1, 'Admin', 'Male', 'admin', '5d41402abc4b2a76b9719d911017c592', 6, 1, 0, 2, 0, 1),
(2, 'dasu', 'Male', 'dasu', '304ef9a575bf4b50e337969df0c671a2', 7, 1, 1, 1, 0, 1),
(4, 'Admin', 'Male', 'admin', '5d41402abc4b2a76b9719d911017c592', 6, 1, 0, 2, 0, 1),
(5, 'dasu', 'Male', 'dasu', '304ef9a575bf4b50e337969df0c671a2', 7, 1, 1, 1, 0, 1),
(6, 'Shailendra Somani', 'Male', 'admins', '5f4dcc3b5aa765d61d8327deb882cf99', 6, 1, 5, 2, 9, 1),
(7, 'Aanchal Jain', 'Female', 'aanchal.jain', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 1, 5, 1, 10, 1),
(8, 'Akansha Ranawat', 'Female', 'akansha.ranawat', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 2, 10, 1, 11, 1),
(9, 'Anjana Singh Parmar', 'Female', 'anjana.singh', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 1, 4, 1, 12, 1),
(10, 'Anju Jain', 'Female', 'anju.jain', '5f4dcc3b5aa765d61d8327deb882cf99', 8, 1, 3, 1, 13, 1),
(11, 'Anju Maheshwari', 'Female', 'anju.maheshwari', '5f4dcc3b5aa765d61d8327deb882cf99', 6, 1, 2, 1, 14, 1),
(12, 'Devyani Suhalka', 'Female', 'devyani.suhalka', '5f4dcc3b5aa765d61d8327deb882cf99', 6, 1, 13, 1, 15, 1),
(13, 'Dr. Pramila Chittora', 'Female', 'pramila.chittora', '5f4dcc3b5aa765d61d8327deb882cf99', 10, 2, 11, 1, 16, 1),
(14, 'Jyoti Joshi', 'Female', 'jyoti.joshi', '5f4dcc3b5aa765d61d8327deb882cf99', 6, 2, 3, 1, 18, 1),
(15, 'Jyotika Rathore', 'Female', 'jyotika.rathore', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 7, 1, 19, 1),
(16, 'Kamal Kumar', 'Male', 'kamal.kumar', '5f4dcc3b5aa765d61d8327deb882cf99', 7, 1, 10, 1, 20, 1),
(17, 'Kamlesh Asthna', 'Male', 'kamlesh.asthana', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 2, 2, 1, 21, 1),
(18, 'Kamlesh Mathur', 'Male', 'kamlesh.mathur', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 2, 1, 1, 22, 1),
(19, 'Keerti Verma', 'Female', 'keerti.verma', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 1, 1, 1, 23, 1),
(20, 'Meenakshi Lohar', 'Female', 'meenakshi.lohar', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 3, 1, 24, 1),
(21, 'Meenakshi Mod', 'Female', 'meenakshi.mod', '5f4dcc3b5aa765d61d8327deb882cf99', 9, 1, 2, 1, 25, 1),
(22, 'Rishabh Fakriya', 'Male', 'rishabh.fakriya', '5f4dcc3b5aa765d61d8327deb882cf99', 8, 1, 9, 1, 26, 1),
(23, 'Monica Garg', 'Female', 'monica.garg', '5f4dcc3b5aa765d61d8327deb882cf99', 9, 2, 1, 1, 27, 1),
(24, 'Neha Issar', 'Female', 'n.issar', '5f4dcc3b5aa765d61d8327deb882cf99', 10, 1, 1, 1, 29, 1),
(25, 'Namrata Babel', 'Male', 'namrata.babel', '5f4dcc3b5aa765d61d8327deb882cf99', 7, 2, 1, 1, 30, 1),
(26, 'Vanitha Sharma', 'Male', 'vanitha.sharma', '5f4dcc3b5aa765d61d8327deb882cf99', 6, 1, 5, 1, 32, 1),
(27, 'Sachi Mathur', 'Male', 'sachi.mathur', '5f4dcc3b5aa765d61d8327deb882cf99', 8, 2, 11, 1, 33, 1),
(28, 'Rekha Suthar', 'Female', 'rekha.suthar', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 1, 2, 1, 34, 1),
(29, 'Manmeet Kaur', 'Female', 'manmeet.kaur', '5f4dcc3b5aa765d61d8327deb882cf99', 5, 1, 11, 1, 35, 1),
(30, 'Renuka Rawat', 'Female', 'renuka.rawat', '5f4dcc3b5aa765d61d8327deb882cf99', 3, 2, 3, 1, 36, 1),
(31, 'Ruchika Bhandari', 'Female', 'ruchika.bhandari', '5f4dcc3b5aa765d61d8327deb882cf99', 5, 2, 1, 1, 37, 1),
(32, 'Sangeeta Jain', 'Female', 'sangeeta.jain', '5f4dcc3b5aa765d61d8327deb882cf99', 10, 6, 2, 1, 38, 1),
(33, 'Suresh Suhalka', 'Male', 'suresh.suhalka', '5f4dcc3b5aa765d61d8327deb882cf99', 8, 1, 13, 1, 39, 1),
(34, 'Rashmi Champawat', 'Male', 'rchampawat', '5f4dcc3b5aa765d61d8327deb882cf99', 11, 3, 14, 1, 40, 1),
(35, 'Sunil Ameta', 'Male', 'sameta', '5f4dcc3b5aa765d61d8327deb882cf99', 11, 4, 15, 1, 41, 1),
(36, 'Lokesh Jain', 'Male', 'ljain', '5f4dcc3b5aa765d61d8327deb882cf99', 11, 3, 3, 1, 43, 1),
(37, 'Rekha Dendor', 'Male', 'rekha', '5f4dcc3b5aa765d61d8327deb882cf99', 1, 1, 8, 1, 45, 1),
(38, 'Monika Ameta', 'Female', 'monika.ameta', '5f4dcc3b5aa765d61d8327deb882cf99', 2, 1, 5, 1, 46, 1),
(39, 'Tripti Shrimali', 'Female', 'tshrimali', '5f4dcc3b5aa765d61d8327deb882cf99', 11, 4, 16, 1, 47, 1),
(40, 'Namrata Babel', 'Female', 'namrata.babel', '5f4dcc3b5aa765d61d8327deb882cf99', 4, 1, 1, 1, 0, 1),
(41, 'Naresh Mathur', 'Male', 'naresh.mathur', '5f4dcc3b5aa765d61d8327deb882cf99', 9, 1, 3, 1, 0, 1),
(42, 'Purnima Jain', 'Female', 'purnima.jain', '5f4dcc3b5aa765d61d8327deb882cf99', 10, 1, 10, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mapping_section`
--

CREATE TABLE `mapping_section` (
  `id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mapping_section`
--

INSERT INTO `mapping_section` (`id`, `class_id`, `section_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 1),
(6, 3, 2),
(7, 4, 1),
(8, 4, 2),
(9, 5, 1),
(10, 5, 2),
(11, 6, 1),
(12, 6, 2),
(13, 7, 1),
(14, 7, 2),
(15, 8, 1),
(16, 8, 2),
(17, 9, 1),
(18, 9, 2),
(20, 10, 1),
(21, 10, 2),
(22, 10, 6),
(23, 11, 3),
(24, 11, 4),
(25, -1, 1),
(26, -1, 2),
(29, -4, 1),
(30, -3, 1),
(31, -2, 1),
(32, -2, 2),
(33, -1, 6),
(34, 9, 6),
(35, 12, 3),
(36, 12, 4),
(37, 11, 5);

-- --------------------------------------------------------

--
-- Table structure for table `master_architecture`
--

CREATE TABLE `master_architecture` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `marksheet_term_id` int(11) NOT NULL,
  `term_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_architecture`
--

INSERT INTO `master_architecture` (`id`, `class_id`, `section_id`, `marksheet_term_id`, `term_id`, `category_id`, `sub_category_id`) VALUES
(1, 1, 1, 1, 1, 1, 0),
(2, 1, 1, 1, 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `master_class`
--

CREATE TABLE `master_class` (
  `id` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `roman` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_class`
--

INSERT INTO `master_class` (`id`, `class`, `roman`) VALUES
(-4, 'PG & PN', 'Play Group'),
(-3, 'Kids World', 'Nursary'),
(-2, 'Kids World', 'LKG'),
(-1, 'Kids World', 'HKG'),
(1, 'First', 'I'),
(2, 'Second', 'II'),
(3, 'Third', 'III'),
(4, 'Fouth', 'IV'),
(5, 'Fifth', 'V'),
(6, 'Sixth', 'VI'),
(7, 'Seventh', 'VII'),
(8, 'Eighth', 'VIII'),
(9, 'Ninth', 'IX'),
(10, 'Tenth', 'X'),
(11, 'Eleventh', 'XI'),
(12, 'Twelfth', 'XII'),
(13, 'PASS OUT', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_grade`
--

CREATE TABLE `master_grade` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `range_from` int(11) NOT NULL,
  `range_to` int(11) NOT NULL,
  `grade` varchar(500) NOT NULL,
  `grade_point` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_health`
--

CREATE TABLE `master_health` (
  `id` int(11) NOT NULL,
  `health_type` text NOT NULL,
  `parameter` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_health`
--

INSERT INTO `master_health` (`id`, `health_type`, `parameter`) VALUES
(1, 'Height', 'CM'),
(2, 'Weight', 'KG');

-- --------------------------------------------------------

--
-- Table structure for table `master_scalling`
--

CREATE TABLE `master_scalling` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `term_id` varchar(30) NOT NULL,
  `category_id` varchar(150) NOT NULL,
  `maximum_of_category` int(11) NOT NULL COMMENT 'select best of Category',
  `scale` int(11) NOT NULL COMMENT 'in Percentage(%)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `master_section`
--

CREATE TABLE `master_section` (
  `id` int(11) NOT NULL,
  `section` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_section`
--

INSERT INTO `master_section` (`id`, `section`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'Maths-PE'),
(4, 'BIO-PE'),
(5, 'Comm-PE'),
(6, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `master_sub_subject`
--

CREATE TABLE `master_sub_subject` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_sub_subject`
--

INSERT INTO `master_sub_subject` (`id`, `name`) VALUES
(1, 'Theory'),
(2, 'Practical');

-- --------------------------------------------------------

--
-- Table structure for table `master_term`
--

CREATE TABLE `master_term` (
  `id` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `block` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_term`
--

INSERT INTO `master_term` (`id`, `name`, `block`) VALUES
(1, 'Term-1', 0),
(2, 'Term-2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `main_menu` text NOT NULL,
  `main_menu_icon` varchar(30) NOT NULL,
  `sub_menu` varchar(20) NOT NULL,
  `sub_menu_icon` varchar(30) NOT NULL,
  `page_name_url` text NOT NULL,
  `icon_class_name` varchar(30) NOT NULL,
  `query_string` text NOT NULL,
  `target` varchar(50) NOT NULL,
  `seq` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`, `main_menu`, `main_menu_icon`, `sub_menu`, `sub_menu_icon`, `page_name_url`, `icon_class_name`, `query_string`, `target`, `seq`) VALUES
(1, ' Dashboard', '', '', '', '', 'index.php', 'fa fa-home', '', '', 1),
(2, ' Add Section', 'Master', 'fa fa-book', '', '', 'section.php', 'fa fa-search-plus', '', '', 3),
(3, ' Section-Mapping', 'Master', 'fa fa-book', '', '', 'cls_sec.php', 'fa fa-edit', '', '', 4),
(4, ' Subject-Mapping', 'Master', 'fa fa-book', '', '', 'cls_sub.php', 'fa fa-book ', '', '', 6),
(5, ' Assign Max Marks', 'Master', 'fa fa-book', '', '', 'max_marks.php', 'fa fa-male', '', '', 11),
(7, ' Assign-Elective', 'Master', 'fa fa-book', '', '', 'elective.php', 'fa fa-bar-chart-o', '', '', 12),
(8, ' Add', ' Student Register', 'fa fa-child', '', '', 'student_reg.php', 'fa fa-user', '', '', 4),
(9, ' Download Excel', ' Marks', 'fa fa-edit', '', '', 'marks.php', 'fa fa-picture-o ', '', '', 3),
(10, 'Upload Excel', ' Marks', 'fa fa-edit', '', '', 'upload_marks.php', 'fa fa-thumbs-o-up ', '', '', 4),
(11, 'Marksheet View', ' Marks', 'fa fa-edit', '', '', 'marksheet.php', 'fa fa-picture-o ', '', '', 5),
(12, ' Edit Class Wise', ' Marks', 'fa fa-edit', '', '', 'number_view.php', 'fa fa-ticket ', '', '', 6),
(15, 'Activate Exam', 'Master', 'fa fa-book', '', '', 'term_block.php', 'fa fa-eye ', '', '', 13),
(16, ' Add', ' Faculty', 'fa fa-group', '', '', 'register.php', 'fa \nfa-check-square-o ', '', '', 5),
(18, 'View', ' Faculty', 'fa fa-group', '', '', 'staff_view.php', 'fa fa-level-up', '', '', 6),
(19, ' Password', ' Settings', 'fa fa-gears', '', '', 'password.php', 'fa fa-lock', '', '', 6),
(20, 'User Privileges', ' Settings', 'fa fa-gears', '', '', 'user.php', '', '', '', 7),
(21, 'Exam Mapping', 'Master', 'fa fa-book', '', '', 'assign_mark.php', '', '', '', 10),
(22, ' View', ' Student Register', 'fa fa-child', '', '', 'student_updt.php', 'fa fa-book', '', '', 5),
(23, ' Edit Subject Wise', ' Marks', 'fa fa-edit', '', '', 'number_sub_view.php', 'fa fa-edit', '', '', 7),
(28, 'Class Wise', 'Report', 'fa fa-file', '', '', 'report_view.php', '', '', '', 11),
(29, 'Subject Wise', 'Report', 'fa fa-file', '', '', 'report_sub_view.php', '', '', '', 12),
(30, 'Faculty Wise', 'Report', 'fa fa-file', '', '', 'report_faculty.php', '', '', '', 13),
(31, ' Download Excel', ' Attendance', 'fa fa-gavel', '', '', 'attendance_format.php', 'fa fa-eye ', '', '', 7),
(32, ' Upload Excel', ' Attendance', 'fa fa-gavel', '', '', 'attendance_upload.php', 'fa fa-thumbs-o-up ', '', '', 8),
(37, ' Attendance Edit', ' Attendance', 'fa fa-gavel', '', '', 'attendance_view.php', 'fa fa-edit', '', '', 9),
(38, ' Class Wise', 'Remove', 'fa fa-thumbs-o-down ', '', '', 'remove.php', 'fa fa-cross', '', '', 9),
(39, ' Result', '', '', '', '', 'status.php', 'fa fa-thumbs-o-up ', '', '', 10),
(40, ' Subject Wise', 'Remove', 'fa fa-thumbs-o-down ', '', '', 'remove_sub.php', 'fa fa-danger', '', '', 10),
(42, 'Category', 'Master', 'fa fa-book', '', '', 'master_exam_category.php', '', '', '', 7),
(43, 'Category Type', 'Master', 'fa fa-book', '', '', 'master_exam_category_type.php', '', '', '', 8),
(44, 'Term', 'Master', 'fa fa-book', '', '', 'master_term.php', '', '', '', 9),
(45, 'Architecture', 'Master', 'fa fa-book', '', '', 'architecture.php', '', '', '', 16),
(46, 'Class', 'Master', 'fa fa-book', '', '', 'master_class.php', '', '', '', 2),
(47, 'Grade', 'Master', 'fa fa-book', '', '', 'master_grade.php', '', '', '', 20),
(48, 'Subject', 'Master', 'fa fa-book', '', '', 'master_subject.php', '', '', '', 5),
(50, 'Download', 'Health Status', 'fa fa-user-md', '', '', 'helth.php', '', '', '', 8),
(51, 'Upload', 'Health Status', 'fa fa-user-md', '', '', 'upload_health.php', '', '', '', 9),
(52, 'Edit', 'Health Status', 'fa fa-user-md', '', '', 'health_view.php', '', '', '', 10),
(53, ' Delete', ' Attendance', 'fa fa-gavel', '', '', 'remove_attendance.php', 'fa fa-warning', '', '', 10),
(54, 'Duty Charts', ' Faculty', 'fa fa-group', '', '', 'deuty_chart.php', 'fa \r\nfa-check-square-o ', '', '', 5),
(55, 'Roll No Allocation', ' Student Register', 'fa fa-child', '', '', 'roll_no_allocation.php', 'fa fa-user', '', '', 4),
(56, 'Time Table', 'Report', 'fa fa-file', '', '', 'time_table.php', '', '', '', 13),
(57, 'Roll No', 'Report', 'fa fa-file', '', '', 'roll_no.php', '', '', '', 14),
(58, 'Seating Arrangement', 'Report', 'fa fa-file', '', '', 'seat_arang.php', '', '', '', 15),
(59, 'Cross Class List', 'Report', 'fa fa-file', '', '', 'cross_class.php', '', '', '', 16),
(60, 'Cross Section List', 'Report', 'fa fa-file', '', '', 'cross_section.php', '', '', '', 17),
(61, 'Attendance', 'Report', 'fa fa-file', '', '', 'attendance_report.php', '', '', '', 18);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(5) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`) VALUES
(1, 'Faculty'),
(2, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `school` text NOT NULL,
  `address` text NOT NULL,
  `affiliation_no` text NOT NULL,
  `agis` text NOT NULL,
  `logo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `school`, `address`, `affiliation_no`, `agis`, `logo`) VALUES
(1, 'MDS PUBLIC SCHOOL', 'Udaipur (Raj.)', '', '', 'mds.gif');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `scholar_no` varchar(100) NOT NULL,
  `roll_no` int(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `pdf_path` varchar(200) NOT NULL,
  `pdf_update_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`) VALUES
(2450, 'VAISHNAVI KALAL', 'MR  DEEPAK KALAL', 'MRS   PRATIBHA KALAL', '2013-08-29', '28-SAMTA NAGAR, NR  MDS SCHOOL, SECT   3, HIRAN MAGRI, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2451, 'KANISHKA PAL', 'MR  SAMEER PAL', 'MRS  MANJU PAL', '2013-09-28', '46, NEW LAXMI NAGAR, PUROHITO KI MADRI, ROAD NO  4, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2452, 'RUDRAKSHA JINGER', 'MR  GIRISH JINGER', 'MRS  HEMLATA JINGER', '2013-08-20', '1-P-16, SECT  4, HIRAN MAGRI, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2453, 'VANI MER', 'MR  GAURAV MER', 'MRS  MANISHA MER', '2013-11-18', '19  TRIMURTI COMPLEX, NEXT TO VAISHALI APARTMENT, MANWAKHEDA ROAD,  SECTOR NO  4, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2454, 'JOYNA BHATT', 'MR  VISHAL BHATT', 'MRS  POOJA BHATT', '2013-07-06', '107, DORE NAGAR, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2455, 'PRIYANSHU GUPTA', 'MR  SUBHASH CHANDRA GUPTA', 'MRS  MANISHA GUPTA', '2012-12-09', '79, RISHI NAGAR, HIRAN MAGRI, SECT  3, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2456, 'SHLOK PAREEK', 'MR  VINOD KUMAR PAREEK', 'MRS  PUJA PAREEK', '2013-06-01', '203, NEW VIDHYA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2457, 'SHOURYA AGRAWAL', 'MR  KAPIL AGRAWAL', 'MRS  MANISHA AGRAWAL', '2013-09-18', '1 PA 2, SEC-4, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2458, 'AASHI TANEJA', 'MR  DIGANT TANEJA', 'MRS  JASBEER TANEJA', '2013-11-18', '350, SECT  3, GAS GODOWN ROAD, HIRAN MAGRI, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2459, 'YUWAN SINGH PANWAR', 'MR  NAHAR SINGH PANWAR', 'MRS  NIKITA KANWAR', '2013-05-27', 'C-102, UDAI VIHAR, RIICO COLONY, MADRI INDUSTRIAL AREA, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2460, 'HIRAV AGGARWAL', 'MR  MUKESH AGARWAL', 'MRS  TANU AGARWAL', '2013-09-02', 'HOUSE NO  7, ROOP NAGAR, SECTOR 3, HIRAN MAGRI, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2461, 'NAVISHA JAIN', 'MR  AVINASH JAIN', 'MRS  SUPRIYA JAIN', '2013-10-09', '35-A, ADARSH HOUSING SOCIETY, HIRAN MAGRI, SECT  4, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2462, 'YASHAS SHARMA', 'MR  SAMEER SHARMA', 'MRS  SHALINI SHARMA', '2013-04-01', 'B-II/11, P&T COLONY, HIRAN MAGRI, SECT  4, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2463, 'YASHASVI SHARMA', 'MR. JEETENDRA SHARMA', 'MRS. USHA SHARMA', '2013-11-06', '232, VIVEK NAGAR, HIRAN MAGRI, SECTOR NO. 8, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2464, 'PRANAV CHAWLA', 'MR. AMIT CHAWLA', 'MRS. VINEETA CHAWLA', '2013-11-28', '66-B, B-BLOCK, NEW PRATAP NAGAR, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2465, 'LAVANSH MEHTA', 'MR. DIPIN MEHTA', 'MRS. PRAMILA MEHTA', '2013-11-16', '38, SHANTI NAGAR, GAS GODOWN ROAD, HIRAN MAGRI, SECT. NO.  3, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2466, 'VIDUSHI VORA', 'MR. PRASHANT VORA', 'MRS. MITTAL VORA', '2013-08-28', '285, NEAR AGRAWAL TENT HOUSE, SOUTH SUNDERWAS, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2467, 'MANVI RANAWAT', 'MR. BHUPENDRA SINGH RANAWAT', 'MRS. SURENDRA DEORA', '2013-01-19', '24, KRISHNA VIHAR, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT. 4, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2468, 'LAKSHITA SINGH RANA', 'MR. VIJAY SINGH RANA', 'MRS. KUSUM KUNWAR RANA', '2013-07-02', '392, NEAR BY THE SCHOOL, CEMENT FACTORY, BAJAJ NAGAR, DABOK, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2469, 'NAKSH PATEL', 'MR. PAVAN KUMAR PATEL', 'MRS. CHANDA PATEL', '2013-07-20', '188, MALI COLONY, SARASWATI NAGAR, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2470, 'RITVI JANWA', 'MR. MAHESH JANWA', 'MRS. MARGI JANWA', '2013-11-30', '634, SURYA NIWAS, PANRIYO KI MADRI, DHOLI MANGRI, GALI NO. 2, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2471, 'VANSHIKA KUMAWAT', 'MR.  VIKRAM KUMAWAT', 'MRS. ANITA KUMAWAT', '2013-12-16', '29, SHASTRI NAGAR, SECT. 3, HIRAN MAGRI, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2472, 'DHERYAVEER AASURIYA', 'MR. ROSHAN AASURIYA', 'MRS. SAROJ AASURIYA', '2013-06-24', '14, ANAND VIHAR, HIRAN MAGRI, SECT. 4, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2473, 'MANTHAN SALVI', 'MR. JITENDRA SALVI', 'MRS. PINKU SALVI', '2013-10-30', 'F-BLOCK, 13-14, ARIHANT COLONY, ROAD NO. 3, MADRI INDUSTRIAL AREA, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2474, 'DAKSHAT SINGH RAO', 'MR. YASHPAL SINGH RAO', 'MRS. POONAM RAO', '2013-12-11', 'C-31, UDAI VIHAR SOCIETY, MADRI RICCO INDUSTRIAL AREA, IT PARK, UDAIPUR', '', 0, -3, 1, '', '', '', '0000-00-00'),
(2552, 'HEER KAMAL KUMAR PRAJAPATI', 'MR  KAMAL KUMAR PRAJAPATI', 'MRS  DIPTI', '2012-02-08', 'A-703, DWARIKA APARTMENT, MANWAKHERA, HIRAN MAGRI, UDAIPUR', 'MDSPS-2197', 0, -1, 2, '', '', '', '0000-00-00'),
(2553, 'JAHNAVI SHARMA', 'MR  HEMANT SHARMA', 'MRS  SANGEETA SHARMA', '2011-11-29', '757, GAYATRI NAGAR, SECTOR NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-2202', 0, -1, 1, '', '', '', '0000-00-00'),
(2554, 'DAKSH JAIN', 'MR  ANAND SWRROP JAIN', 'MRS  RANU JAIN', '2012-09-01', 'SECT  NO 6, OPP  POLICE THANA, UDAIPUR', 'MDSPS-2232', 0, -1, 2, '', '', '', '0000-00-00'),
(2555, 'DELISHA AGARWAL', 'MR  GUNJAN AGARWAL', 'MRS   KHUSBOO AGARWAL', '2012-05-27', 'B-208, DWARIKA APARTMENT, ADARSH NAGAR, MANVAKHEDA, UDAIPUR', 'MDSPS-2247', 0, -1, 2, '', '', '', '0000-00-00'),
(2556, 'EISHWARYA PRATAP SINGH RATHORE', 'MR  MAHIPAL SINGH RATHORE', 'MRS  SAROJ DEORA', '2012-03-27', '313, SHREE JI VIHAR, NEW VIDHYA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2249', 0, -1, 1, '', '', '', '0000-00-00'),
(2557, 'DHAIRYA DODEJA', 'MR  MANISH DODEJA', 'MRS  DEEPALI DODEJA', '2012-06-06', '1-PA-45, GAYATRI NAGAR, SECT  NO  5, HIRAN MAGRI,  UDAIPUR', 'MDSPS-2252', 0, -1, 1, '', '', '', '0000-00-00'),
(2558, 'AVANI JOSHI', 'MR  ANIRUDH JOSHI', 'MRS  PALLAVI JOSHI', '2012-09-17', '111, ARVIND NAGAR, SUNDERWAS, UDAIPUR', 'MDSPS-2256', 0, -1, 1, '', '', '', '0000-00-00'),
(2559, 'LABHANSH AMETA', 'MR  KAMLESH AMETA', 'MRS  MAMTA AMETA', '2012-03-03', '3-DA-9, PRABHAT NAGAR, SECT  NO  5, UDAIPUR', 'MDSPS-2259', 0, -1, 2, '', '', '', '0000-00-00'),
(2560, 'MILLIE JAIN', 'MR. MOTHER JAIN', 'MRS  POOJA JAIN', '2012-08-02', 'VAISHALI APARTMENT, B-3, 401, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2262', 0, -1, 2, '', '', '', '0000-00-00'),
(2561, 'DHAIRYA SHARMA', 'MR  CHANDRA SHEKHAR SHARMA', 'MRS  GAYATRI SHARMA', '2012-05-10', '44, ROOP NAGAR, SECT  NO  3, HIRAN MAGRI,  UDAIPUR', 'MDSPS-2336', 0, -1, 1, '', '', '', '0000-00-00'),
(2562, 'AARAV CHAUDHARY', 'MR   SUBHASH CHAND', 'MRS  SAVITA CHOUDHARY', '2010-12-04', '1170, ADARSH NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2328', 0, -1, 2, '', '', '', '0000-00-00'),
(2563, 'HIMANK JAIN', 'MR  MANOJ JAIN', 'MRS  RITU JAIN', '2011-10-21', '1378, ADARSH NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2160', 0, -1, 2, '', '', '', '0000-00-00'),
(2564, 'RISHAAN SAHU', 'MR  SANTOSH KUMAR TELI', 'MRS  YOJANA SAHU', '2011-12-21', 'T-III/03, TELECOM COLONY, MANWA KHEDA ROAD, SECT  6, HIRAN MAGRI, UDAIPUR', 'MDSPS-2021', 0, -1, 2, '', '', '', '0000-00-00'),
(2565, 'PARIDHI VAGRECHA', 'MR  VINOD KUMAR VAGRECHA', 'MRS  NEETU VAGRECHA', '2011-08-03', '16, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2038', 0, -1, 1, '', '', '', '0000-00-00'),
(2566, 'OSHIN BHATT', 'MR  VISHAL BHATT', 'MRS  POOJA BHATT', '2012-02-20', '107, DORE NAGAR, UDAIPUR', 'MDSPS-2062', 0, -1, 1, '', '', '', '0000-00-00'),
(2567, 'BHAVNIDHI BHATI', 'MR  HARSHVARDHAN SINGH BHATI', 'MRS  LEENA KANWAR BHATI', '2012-07-04', '3-NO-1, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2333', 0, -1, 2, '', '', '', '0000-00-00'),
(2568, 'TOSHI SINGH BAGHELA', 'MR  VIKRAM SINGH BAGHELA', 'MRS  PHOOL KUNWAR CHAUHAN', '2012-05-06', '723, SURYA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2380', 0, -1, 2, '', '', '', '0000-00-00'),
(2569, 'RYDHIMA SINGH SHAKTAWAT', 'MR  RAVINDRA SINGH SHAKTAWAT', 'MRS  SHITAL R  SHAKTAWAT', '2011-11-24', '45, SHUBHAM COMPLEX, B/H, H P  GAS GODOWN, MANWAHAKHEDA, SECT  NO  6, HIRAN MAGRI, UDAIPUR', 'MDSPS-2033', 0, -1, 1, '', '', '', '0000-00-00'),
(2570, 'HRIDYA ROY', 'MR  YATINDRA SINGH ROY', 'MRS  MANISHA ROY', '2012-06-23', '178, TAIGORE NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2348', 0, -1, 2, '', '', '', '0000-00-00'),
(2571, 'ARADHYA VEERWAL', 'MR  PANKAJ VEERWAL', 'MRS  MONIKA VEERWAL', '2012-05-19', '13/A, JYOTI NAGAR, MANWA KHEDA, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2331', 0, -1, 2, '', '', '', '0000-00-00'),
(2572, 'VIRAT GURJAR', 'MR  SHAILENDRA BARGURJAR', 'MRS  RAKHI GURJAR', '2011-11-11', 'H NO  18, GUPTESHWAR NAGAR, HIRAN MAGRI, SECT  NO  7, UDAIPUR', 'MDSPS-2098', 0, -1, 2, '', '', '', '0000-00-00'),
(2573, 'KAVYA KOTHARI', 'MR  ASHISH KOTHARI', 'MRS  PRIYA KOTHARI', '2012-01-09', '3, SHANTI NAGAR, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2282', 0, -1, 1, '', '', '', '0000-00-00'),
(2574, 'HRITVI ROY', 'MR  YATINDRA SINGH ROY', 'MRS  MANISHA ROY', '2012-06-23', '178, TAIGORE NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2349', 0, -1, 2, '', '', '', '0000-00-00'),
(2575, 'YUVRAJ DANGI', 'MR  PUSHKAR LAL DANGI', 'MRS  KESAR DANGI', '2012-03-14', '1325, BADI NOKHA, NEAR KUMBHA NAGAR, HIRAN  MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2161', 0, -1, 2, '', '', '', '0000-00-00'),
(2576, 'TANVI JANWA', 'MR  DINESH', 'MRS  MAMTA', '2012-03-12', '634, SURYA NIVAS, PANERIYON KI MADRI, DHOLI MAGRI, GALI NO 2, UDAIPUR', 'MDSPS-2163', 0, -1, 1, '', '', '', '0000-00-00'),
(2577, 'PARTH GEHLOT', 'MR  AMIT GEHLOT', 'MRS  REKHA GEHLOT', '2011-11-22', '23,  NEW TRIMURTI COMPLEX, MANWA KHERA ROAD, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1970', 0, -1, 1, '', '', '', '0000-00-00'),
(2578, 'PARTH KALRA', 'MR  RAJESH KALRA', 'MRS  SONAM KALRA', '2012-03-10', '2-J-11,12, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1958', 0, -1, 1, '', '', '', '0000-00-00'),
(2579, 'MANAS MALI', 'MR  SHANTILAL MALI', 'MRS  KIRAN MALI', '2012-01-13', 'A-308, DWARIKA APARTMENT, A-1, COMPLEX, MANVA KHEDA, UDAIPUR', 'MDSPS-1980', 0, -1, 1, '', '', '', '0000-00-00'),
(2580, 'HRITIKA SINGH PANWAR', 'MR  NARENDRA SINGH PANWAR', 'MRS  NAVITA SINGH PANWAR', '2012-03-05', '183, VIVEK NAGAR, SEC - 3, UDAIPUR', 'MDSPS-2063', 0, -1, 1, '', '', '', '0000-00-00'),
(2581, 'TANISH PANCHAL', 'MR  VIPIN PANCHAL', 'MRS  REENA PANCHAL', '2011-11-23', '4, SHUBHAM COMPLEX,  NEAR SARITA VATIKA, SECT  NO  4, UDAIPUR', 'MDSPS-1996', 0, -1, 1, '', '', '', '0000-00-00'),
(2582, 'JANAY CHHAJED', 'MR  ABHISHEK CHHAJED', 'MRS  ASHWITA CHHAJED', '2011-11-29', '137, TAGOR NAGAR, SEC - , UDAIPUR', 'MDSPS-2015', 0, -1, 1, '', '', '', '0000-00-00'),
(2583, 'ISHANVI SANSERA', 'MR  RAGHVENDRA SINGH SANSERA', 'MRS  ARUNA SANSERA', '2012-02-01', '22, NEW DORE NAGAR, BEHIND SEVASHRAM, UDAIPUR', 'MDSPS-2020', 0, -1, 2, '', '', '', '0000-00-00'),
(2584, 'VEDANT BARWAR', 'MR  TARUN BARWAR', 'MRS  KAUSHALIYA BARWAR', '2011-11-13', '97, KRISHNA COLONY, SECT  9, HIRAN MAGRI, UDAIPUR', 'MDSPS-2197', 0, -1, 1, '', '', '', '0000-00-00'),
(2585, 'JAYANT CHOUDHARY', 'MR  REJEEV CHOUDHARY', 'MRS  INDU CHOUDHARY', '2012-01-24', 'KUMBHA NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2116', 0, -1, 1, '', '', '', '0000-00-00'),
(2586, 'SHORYA MENARIA', 'MR  SATISH MENARIA', 'MRS  SWATI MENARIA', '2011-11-04', '67, PANARIYO KI MADRI, NEAR GOVT  SCHOOL, UDAIPUR', 'MDSPS-2376', 0, -1, 1, '', '', '', '0000-00-00'),
(2587, 'DIVYANSHI JHA', 'MR  PRADEEP JHA', 'MRS  MANISHA JHA', '2012-07-13', '12, NEW BALAJI NAGAR, HIRAN MAGRI, SECTOR 4, MANWA KHERA, UDAIPUR', 'MDSPS-2339', 0, -1, 2, '', '', '', '0000-00-00'),
(2588, 'SARTHAK JAIN', 'MR  NARENDRA JAIN', 'MRS  SHEETAL JAIN', '2012-06-09', '2-KHA-30-B, SHANTI NAGAR, HIRAN MANGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2374', 0, -1, 2, '', '', '', '0000-00-00'),
(2589, 'GOURAKSHI DANGI', 'MR  RAJENDRA DANGI', 'MRS  SUNITA DANGI', '2011-12-01', 'MANVAKHERA, OPPOSTIE OF CHUNGI NAKA , BHARAT FURNITURE HOUSE, UDAIPUR', 'MDSPS-2342', 0, -1, 2, '', '', '', '0000-00-00'),
(2590, 'JANMEYJAY SINGH DEORA', 'MR  MAHAVEER SINGH DEORA', 'DR  CHITRA SHEKHAWAT', '2012-09-24', '411, R G  VILLA OPPOSITE, GAJBAN GARDEN, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2351', 0, -1, 2, '', '', '', '0000-00-00'),
(2591, 'HIMANSH SHARMA', 'MR  KRISHNA KANT SHARMA', 'MRS  RACHNA SHARMA', '2012-06-22', '494, GANDHI NAGAR, NEAR NEHRU HOSTEL, HIRAN MAGRI, SECT   NO  3, UDAIPUR', 'MDSPS-2345', 0, -1, 2, '', '', '', '0000-00-00'),
(2592, 'KAVISH BAJAJ', 'MR  BHARAT BAJAJ', 'MRS  LAVISHA BAJAJ', '2012-04-27', '4-D-10, HOUSING BOARD COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2356', 0, -1, 1, '', '', '', '0000-00-00'),
(2593, 'ELIZA WASWANI', 'MR  RAJ VASWANI', 'MRS  JAYA VASWANI', '2012-06-10', '9-M-8, SHANTI NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-2341', 0, -1, 2, '', '', '', '0000-00-00'),
(2594, 'KANISHKA PATEL', 'MR  SURESH PATEL', 'MRS  MADHU PATEL', '2012-06-20', 'KUMBHA NAGAR, BADA NOKHA, SECT  NO  4, UDAIPUR', 'MDSPS-2354', 0, -1, 1, '', '', '', '0000-00-00'),
(2595, 'KARTIK SEN', 'MR  GANESH LAL SEN', 'MRS  NEETU SEN', '2012-03-03', 'H NO   205, OLD POST OFFICE COLONY, HIRAN MAGRI, SECT  NO  6, UDAIPUR', 'MDSPS-2288', 0, -1, 1, '', '', '', '0000-00-00'),
(2596, 'HITARTH ARYA', 'MR  AJAY ARYA', 'MRS  BHARTI ARYA', '2011-10-20', '1-M-11, GAYATRI NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-2347', 0, -1, 1, '', '', '', '0000-00-00'),
(2597, 'TANISHK SONI', 'MR  LOKESH SONI', 'MRS  DEEPIKA SONI', '2012-07-27', 'HOUSE NO  8, ADARSH NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2379', 0, -1, 1, '', '', '', '0000-00-00'),
(2598, 'DIYA WADHWANI', 'MR  RAVI WADHWANI', 'MRS  SALONI WADHWANI', '2012-04-18', 'HOUSE NO  22, HANUMAN NAGAR, MANWA KHEDA GIRWA, UDAIPUR', 'MDSPS-2130', 0, -1, 2, '', '', '', '0000-00-00'),
(2599, 'DIVYANSH TAK', 'DINESH KUMAR TAK', 'SEEMA TAK', '2011-11-18', '318 SECTOR NO  3 HIRAN MAGRI UDAIPUR RAJAASTHAN 313001', 'MDSPS-2081', 0, -1, 1, '', '', '', '0000-00-00'),
(2600, 'DIVYANSHI DANGI', 'MR  GOPAL DANGI', 'MRS  MOHINI DANGI', '2011-10-11', '233, EKLING PURA, UDAIPUR', 'MDSPS-2075', 0, -1, 1, '', '', '', '0000-00-00'),
(2601, 'NIMESH BHATI', 'MR  PAVINDRA BHATI', 'MRS  DIMPLE BHATI', '2013-02-14', 'HOUSE NO  50, SANJAY GANDHI NAGAR, JADAV NURSERY, HIRAN MAGRI, SECT  NO  8, UDAIPUR', 'MDSPS-2366', 0, -1, 1, '', '', '', '0000-00-00'),
(2602, 'AMAN SINGH', 'MR  SHYAM SINGH', 'MRS  BACHANYATI', '2012-10-25', '45-46, ARIHANT VIHAR, NEAR AKASHWANI, PUROHITON KI MADRI, UDAIPUR', 'MDSPS-2330', 0, -1, 1, '', '', '', '0000-00-00'),
(2603, 'HARSHIT TELI', 'MR  SHYAM LAL TELI', 'MRS  PUSHPA TELI', '2011-12-15', 'ROAD NO  1, TELIYA KA MOHALLA, PUROHITO KI MADRI, UDAIPUR', 'MDSPS-2343', 0, -1, 1, '', '', '', '0000-00-00'),
(2604, 'CHARVI JAIN', 'MR  YOUVRAJ KUMAR MEHTA', 'MRS  ABHILASHA MEHTA', '2012-09-02', '8, PORASWANATH NAGAR, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2335', 0, -1, 2, '', '', '', '0000-00-00'),
(2605, 'HARSH CHAUDHARY', 'MR  ANIT RANA', 'MRS  CHITRA RANA', '2012-03-15', 'C-78, UDAIVIHAR COLONY, UDAIPUR', 'MDSPS-2127', 0, -1, 1, '', '', '', '0000-00-00'),
(2606, 'NIKITA GUPTA', 'MR  MAHESH GUPTA', 'MRS  JYOTI GUPTA', '2012-02-15', '79, RISHI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2068', 0, -1, 2, '', '', '', '0000-00-00'),
(2607, 'DAKSHRAJ CHUNDAWAT', 'MR  PRAHLAD SINGH CHUNDAWAT', 'PURAN KANWAR CHUNDAWAT', '2012-01-18', 'R-604, RADHE KRISHNA APPARTMENT, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2010', 0, -1, 1, '', '', '', '0000-00-00'),
(2608, 'JIYA BAPNA', 'MR  RAVI KUMAR BAPNA', 'MRS  SONIKA BAPNA', '2012-06-07', '46, ROOP NAGAR, NEAR KESAR BAGH, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2353', 0, -1, 1, '', '', '', '0000-00-00'),
(2609, 'SUSHANT MENARIA', 'MR  SURYA PRAKASH MENARIA', 'MRS  MANISHA MENARIA', '2012-05-14', '929, HIRAN MAGRI, SECT  NO  4, MAIN ROAD, YOGESH TYRE SHOPPE, UDAIPUR', 'MDSPS-2378', 0, -1, 1, '', '', '', '0000-00-00'),
(2610, 'PRADHUMAN SINGH RATHORE', 'MR  BHAWANI SINGH RATHORE', 'MRS  NEELU RATHORE', '2012-01-15', '7, NEW BALAGI NAGAR, MANWA KHERA RAOD, SEC - 4, UDAIPUR', 'MDSPS-2087', 0, -1, 2, '', '', '', '0000-00-00'),
(2611, 'MRINANK SINGH SHEKHAWAT', 'MR  UPENDRA SINGH SHEKHAWAT', 'MRS  SUNITA KANWAR', '2012-01-12', 'A-401, DWARIKA APARTMENT, MANWAKHEDA, UDAIPUR', 'MDSPS-2363', 0, -1, 2, '', '', '', '0000-00-00'),
(2612, 'LEENA DANGI', 'MR  PRAMOD DANGI', 'MRS  YASHODA DANGI', '2011-03-10', 'VILL  EKLINGPURA, POST KALADWAS, UDAIPUR', 'MDSPS-2357', 0, -1, 1, '', '', '', '0000-00-00'),
(2613, 'SAHDEV CHARAN', 'MR  JAYDEV SINGH CHARAN', 'MRS  SUNITA KANWAR', '2011-12-15', '248, AKASHWANI COLONY, PUROHITAN KI MADRI, UDAIPUR', 'MDSPS-2110', 0, -1, 2, '', '', '', '0000-00-00'),
(2614, 'CHARVI DASHOTTAR', 'KAPIL DASHOTTAR', 'SHWETA DASHOTTAR', '2012-05-18', '32/4 NEW FATEHPURA NEAR INCOME TAX UDAIPUR', 'MDSPS-2334', 0, -1, 2, '', '', '', '0000-00-00'),
(2615, 'BASANT KUMAWAT', 'MR  ROSHAN LAL KUMAWAT', 'MRS  SANGEETA KUMAWAT', '2011-11-22', '73, DORE NAGAR, SEC - 3, UDAIPUR', 'MDSPS-2332', 0, -1, 1, '', '', '', '0000-00-00'),
(2616, 'TIVIJ M. VAISHNAV', 'MR  MAHESH VAISHNAV', 'MRS  HEMLATA VAISHNAV', '2012-02-14', 'EKLINGPURA, NEAR PATWAR HOUSE, UDAIPUR', 'MDSPS-2312', 0, -1, 2, '', '', '', '0000-00-00'),
(2617, 'RUDRANSH SHARMA', 'MR  RAKESH SHARMA', 'MRS  REKHA SHARMA', '2013-05-12', '36, MAYURYAN COLONY DHOLI MAGRI H  M  SEC  4 UDR ', 'MDSPS-2373', 0, -1, 2, '', '', '', '0000-00-00'),
(2618, 'HIMAKSHI KUMAWAT', 'MR  AMIT KUMAWAT', 'MRS  SONIYA KUMAWAT', '2011-12-15', '28-A, SHASTRI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2154', 0, -1, 2, '', '', '', '0000-00-00'),
(2619, 'YASH SINGHVI', 'MR  BHUPENDRA SINGHVI', 'MRS  PADMA SINGHVI', '2011-10-02', '1-KHA-1, HIRAN MAGRI, SECTOR NO  4, NEAR JAIN TEMPLE, UDAIPUR', 'RTE-032', 0, -1, 2, '', '', '', '0000-00-00'),
(2620, 'KAVYA SAHU', 'MR  MANOJ SAHU', 'MRS  DURGA SAHU', '2012-03-14', '15, SAMTA NAGAR, IN FRONT OF MDS SCHOOL, SECT  NO  3, UDAIPUR', 'RTE-033', 0, -1, 2, '', '', '', '0000-00-00'),
(2621, 'KHUSH SINGHVI', 'MR  PAVAN KUMAR JAIN', 'MRS  SANGEETA JAIN', '2011-08-13', '1-KHA-1, NEAR JAIN TEMPLE, HIRAN MAGRI, SECT  4, UDAIPUR', 'RTE-034', 0, -1, 1, '', '', '', '0000-00-00'),
(2622, 'BHAUMIK KOTIA', 'MR  ARUN KOTIA', 'MRS  MANISHA KOTIA', '2011-10-04', '201, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'RTE-035', 0, -1, 2, '', '', '', '0000-00-00'),
(2623, 'HEMANSHU SUHALKA', 'MR  DHARMENDRA SUHALKA', 'MRS  SEEMA SUHALKA', '2011-09-23', '129, RISHI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'RTE-036', 0, -1, 1, '', '', '', '0000-00-00'),
(2624, 'SURYANSH VASITA', 'MR  HARISH CHANDRA VASITA', 'MRS  ANKITA VASITA', '2012-02-22', '41, SHANTI NAGAR, BEHIND MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'RTE-038', 0, -1, 1, '', '', '', '0000-00-00'),
(2625, 'TEJENDRA SINGH CHOUHAN', 'MR  PARVAT SINGH CHOUHAN', 'MRS  MAMTA CHOUHAN', '2011-11-24', '165-UIT COLONY, PUROHI9TAN KI MADRI MIA, NEAR WATER TANK, UDAIPUR', 'RTE-041', 0, -1, 2, '', '', '', '0000-00-00'),
(2626, 'SANIDHYA SEN', 'LT  MR  PRAKASH SEN', 'MRS  ANITA SEN', '2012-02-23', '348, HIRAN MAGRI, SECT  NO  4, CHANAKYA PURI, UDAIPUR', 'RTE-040', 0, -1, 1, '', '', '', '0000-00-00'),
(2627, 'DEV UJIRPURIA', 'MR  TEJPAL UJIRPURIA', 'MRS  ASHA', '2011-11-07', 'SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2318', 0, -1, 2, '', '', '', '0000-00-00'),
(2628, 'MUKUL JAIN', 'BHANWAR LAL JAIN', 'VIDHYA JAIN', '2012-05-01', 'LAKADWAS, JAIN COLONY, TEH, GIRVA, UDAIPUR', 'MDSPS-2364', 0, -1, 2, '', '', '', '0000-00-00'),
(2629, 'VINEET KAGE', 'MR. SANTOSH S. KAGE', 'MRS. VAISHALI S. KAGE', '2012-10-08', 'R-701, RADHA KRISHNA APARTMENT, NEW VIDHYA NAGAR, HIRNA MAGRI, UDAIPUR', '', 0, -1, 1, '', '', '', '0000-00-00'),
(2630, 'LAKSHITA MENARIA', 'MR. PREM KUMAR MENARIA', 'MRS. NISHA MENARIA', '2012-05-04', '66, ADARSH HOUSING SOCIETY, VIDHYA NAGAR, HIRAN MAGRI, SECT. NO. 4, UDAIPUR', 'MDSPS-2400', 0, -1, 1, '', '', '', '0000-00-00'),
(2631, 'PRANSHI SINGH RANA', 'MR. VIJAY SINGH RANA', 'MRS. KUSUM KUNWAR RANA', '1970-01-01', '392, NEAR BY THE SCHOOL, CEMENT FACTORY, BAJAJ NAGAR, DABOK, UDAIPUR', 'MDSPS-2402', 0, -1, 1, '', '', '', '0000-00-00'),
(2632, 'GARVIT SINGH RATHORE', 'MR. SURENDRA SINGH RATHORE', 'MRS. NEETU KUNWAR RATHORE', '1970-01-01', 'H.NO. 65, NAKODA COMPLEX, HIRAN MAGRI, SECT. NO. 4, UDAIPUR', 'MDSPS-2403', 0, -1, 1, '', '', '', '0000-00-00'),
(2633, 'JAYANT LAL SINDHI', 'MR  GANESH LAL SINDHI', 'MRS  MAMTA SINDHI', '2010-10-17', 'L-159, SECT  NO  6, HIRAN MAGRI, UDAIPUR', 'MDSPS-2196', 0, 1, 1, '', '', '', '0000-00-00'),
(2634, 'VANSH PITLIYA', 'MR  PRADEEP M  PITLIYA', 'MRS  LALITA P  PITLIYA', '2011-03-11', '19/A, NAKODA NAGAR, NR  KASHIPURI, SECT  5 , HIRAN MAGRI, UDAIPUR', 'MDSPS-2199', 0, 1, 2, '', '', '', '0000-00-00'),
(2635, 'ADITVA BHATI', 'MR  ASHVINI BHATI', 'MRS  NIDHI BHATI', '2010-08-24', '58, SHIV NIWAS, OPP  POWER HOUSE, JHAMAR KOTRA ROAD, EKLINGPURA, UDAIPUR', 'MDSPS-2221', 0, 1, 1, '', '', '', '0000-00-00'),
(2636, 'NISHANT NAGDA', 'MR  DINESH NAGDA', 'MRS  LAXMI NAGDA', '2010-11-07', '42, KUMBHA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1957', 0, 1, 2, '', '', '', '0000-00-00'),
(2637, 'DIVY MAKREJA', 'MR  MANISH MAKREJA', 'MRS  RIYA MAKREJA', '2011-06-23', '1-T-41, SEC  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2271', 0, 1, 2, '', '', '', '0000-00-00'),
(2638, 'HEER PRAJAPATI', 'MR  DASHARATH KUMAR', 'MRS  HEMLATA', '2011-06-06', 'R 202 RADHE KRISHNA APARTMENT NEW VIDHYA NAGAR SEC  4', 'MDSPS-2032', 0, 1, 6, '', '', '', '0000-00-00'),
(2639, 'ANSHUL DAVE', 'MR  SANJAY A  DAVE', 'MRS  NILAM S  DAVE', '2011-01-13', '18, RISHI NAGAR, NEAR MDS SCHOOL, SEC - 3, UDAIPUR', 'MDSPS-1829', 0, 1, 1, '', '', '', '0000-00-00'),
(2640, 'HARDIK PRAJAPAT', 'MR  PRABHU LAL PRAJAPAT', 'MRS  PRIYA PRAJAPAT', '2011-03-16', 'V/P, UMARADA, UDAIPUR', 'MDSPS-2274', 0, 1, 1, '', '', '', '0000-00-00'),
(2641, 'AVNI SAINI', 'MR  SHYAM SUNDER', 'MRS  RASHI', '2011-09-18', 'T-III/4, BSNL COLONY, MANWA KHERA, SECTOR NO   6, HIRAN MAGRI, UDAIPUR', 'MDSPS-1983', 0, 1, 6, '', '', '', '0000-00-00'),
(2642, 'MANJIT SINGH RANAWAT', 'MR  SANGRAM SINGH RANAWAT', 'MRS  GOVIND KANWAR', '2011-10-24', '30, OSWAL NAGAR, RAJASTHAN PATRIKA KE SAMNE, UDAIPUR', 'MDSPS-2191', 0, 1, 1, '', '', '', '0000-00-00'),
(2643, 'PRATIGYA SINGH', 'MR  ANIRUDDH KUMAR SINGH', 'MRS  PRATIMA SINGH', '2011-01-11', 'H  NO  40 SARVOTAM COMPLEX NEAR DATA PATI SEC  4', 'MDSPS-2009', 0, 1, 6, '', '', '', '0000-00-00'),
(2644, 'PRAYUL MUNET', 'MR  HIMANSHU MUNET', 'MRS  PRIYA MUNET', '2010-11-30', '15, SHIV COLONY, NOKHA ROAD, SEC - 3, UDAIPUR', 'MDSPS-1839', 0, 1, 2, '', '', '', '0000-00-00'),
(2645, 'RUCHIT BHATT', 'MR  VINOD BHATT', 'MRS  SUDARSHANA SHARMA', '2011-09-02', '280/1, ASHOK VIHAR, NEAR JAIN TEMPLE, SEC - 3, UDAIPUR', 'MDSPS-2031', 0, 1, 6, '', '', '', '0000-00-00'),
(2646, 'DHRITI GAUR', 'DR  KALPESH GAUR', 'MRS  BHAVITA GOUR', '2011-09-07', 'A- 103 DWARIKA APPARTMENT MANWA KHERA ', 'MDSPS-2076', 0, 1, 6, '', '', '', '0000-00-00'),
(2647, 'PRATYUSHA SINGHAL', 'MR  ATUL SINGHAL', 'MRS  PRERNA SINGHAL', '2010-09-09', 'QTR  NO  IV/12, BSNL TELECOM COLONY, MANWA KHERA, HIRAN MAGRI, SECT  NO  6, UDAIPUR', 'MDSPS-1998', 0, 1, 2, '', '', '', '0000-00-00'),
(2648, 'PRATHAM SHANBHAG', 'MR  GAJANAN SHANBHAG', 'MRS  SWATHI P  SHANBHAG', '2010-12-07', '170, ROOP NAGAR H  M  SEC  3', 'MDSPS-1985', 0, 1, 2, '', '', '', '0000-00-00'),
(2649, 'MEDHANSH KAMRA', 'MR  ASHUTOSH KAMRA', 'MRS  BHAMINI KAMRA', '2010-12-26', '1-J-32, HOUSING BOARD COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2044', 0, 1, 2, '', '', '', '0000-00-00'),
(2650, 'BHUVI RAO', 'MR  YASHPAL SINGH RAO', 'MRS  POONAM RAO', '2010-08-20', 'C-31, UDAI VIHAR, RICCO INDUSTRIAL AREA, MADRI, UDAIPUR', 'MDSPS-2186', 0, 1, 2, '', '', '', '0000-00-00'),
(2651, 'JENIL DODEJA', 'MR  PANKAJ DODEJA', 'MRS  NASHITA DODEJA', '2011-01-06', '34, KASHI PURI, MANVA KHEDA ROAD, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2189', 0, 1, 6, '', '', '', '0000-00-00'),
(2652, 'ANANT NANDAWAT', 'MR  BHARAT NANDAWAT', 'MRS  ANJANA JAIN', '2010-03-08', '65, SHANTI NAGAR, SECT  NO  3, UDAIPUR', 'MDSPS-1942', 0, 1, 2, '', '', '', '0000-00-00'),
(2653, 'KULSRESTHA SINGH CHOUHAN', 'MR  KARNI SINGH CHOUHAN', 'MRS  SAROJ BHATI', '2011-09-21', '53, SAMTA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2029', 0, 1, 6, '', '', '', '0000-00-00'),
(2654, 'BHAVY MAHAR', 'MR  KAUSHAL KISHOR MEENA', 'MRS  KAVITA MEENA', '2011-07-15', 'QTR  NO  T-III/10, CPWD RESIDENTIAL COLONY, SECTOR NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2195', 0, 1, 2, '', '', '', '0000-00-00'),
(2655, 'HEERAL SEN', 'MR  KULDEEP SEN', 'MRS  SHWETA SEN', '2011-07-31', '1350, FG, ADARSH NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1945', 0, 1, 2, '', '', '', '0000-00-00'),
(2656, 'ADITI CHAPLOT', 'MR  RAKESH CHAPLOT', 'MRS  REKHA CHAPLOT', '2011-01-15', '1-KA-43, HIRAN MAGRI, GAYATRI NAGAR, SECTOR NO  5, UDAIPUR', 'MDSPS-1953', 0, 1, 6, '', '', '', '0000-00-00'),
(2657, 'AASHI KHOKHAWAT', 'MR  HARISH KHOKHAWAT', 'MRS  KANUPRIYA KHOKHAWAT', '2011-06-28', '3-J-31, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO 5, UDAIPUR', 'MDSPS-1954', 0, 1, 6, '', '', '', '0000-00-00'),
(2658, 'PREKSHA MEHTA', 'MR  NILESH MEHTA', 'MRS  DIVYA MEHTA', '2011-03-20', '12-B, NEW MAHAVEER NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1929', 0, 1, 1, '', '', '', '0000-00-00'),
(2659, 'AVISHA DASHARDA', 'MR  LOVENISH DASHARDA', 'MRS  NIRANJANA DASHORDA', '2011-03-10', '198, SUBHASH NAGAR, ROAD NO  4, BA', 'MDSPS-1961', 0, 1, 6, '', '', '', '0000-00-00'),
(2660, 'PRANVEER SINGH SHEKHAWAT', 'MR  ABHAY SINGH SHEKHAWAT', 'MRS  AMITA KANWAR', '2010-12-29', '411,RG VILLA OPP  GAJBAN GARDEN , NEAR VIJYA BANK HIRAN MAGRI SEC  3 UDR ', 'MDSPS-1975', 0, 1, 1, '', '', '', '0000-00-00'),
(2661, 'DEVADITYA SINGH', 'MR  DIGVIJAY SINGH RATHORE', 'MRS  NIRUPAMA DEORA', '2011-01-12', '25, SAMTA NAGAR, NEAR MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1979', 0, 1, 6, '', '', '', '0000-00-00'),
(2662, 'SUDIKSHA SINGH JADOUN', 'MR  SATYENDRA SINGH JADOUN', 'MRS  RAJSHREE SINGH JADOUN', '2010-10-18', '58, RISHI NAGAR, SEC  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1874', 0, 1, 6, '', '', '', '0000-00-00'),
(2663, 'AYAN HAQUE', 'MR  ISRAR UL HAQUE', 'MRS  ISHRAR HAQUE', '2011-03-04', 'H NO  89, ARIHANT NAGAR, SAVEENA', 'MDSPS-1875', 0, 1, 1, '', '', '', '0000-00-00'),
(2664, 'YASHIKA JADOUN', 'MR  LOKENDRA SINGH CHOUHAN', 'MRS  MEENA PANWAR', '2011-06-27', '58, RISHI NAGAR, NEAR OF GAS GODOUN, SECT  3, UDAIPUR', 'MDSPS-1901', 0, 1, 2, '', '', '', '0000-00-00'),
(2665, 'ANANYA MISHRA', 'MR  PANKAJ MISHRA', 'MRS  PADMA MISHRA', '2011-04-11', 'KRISTAL PLAZA, FLAT NO 4, NEAR GENUS PUBLIC SCHOOL, SAVEENA,UDAIPUR', 'MDSPS-1926', 0, 1, 1, '', '', '', '0000-00-00'),
(2666, 'PRINCY DOSHI', 'MR  VARDHMAN DOSHI', 'MRS  CHANCHAL DOSHI', '2010-10-08', '285, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1841', 0, 1, 6, '', '', '', '0000-00-00'),
(2667, 'PRATHAM MATHUR', 'VISHAL MATHUR', 'MRS  HEENA MATHUR', '2010-09-09', '54, SHRI JI VIHAR NEW VIDHYA NAGAR SEC  4, UDAIPUR', 'MDSPS-1845', 0, 1, 2, '', '', '', '0000-00-00'),
(2668, 'KHUSHI SUTHAR', 'MR PANNA LAL SUTHAR', 'MRS  KASER SUTHAR', '2010-10-17', '728, SURYA NAGAR, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1847', 0, 1, 1, '', '', '', '0000-00-00'),
(2669, 'NIRVI LODHA', 'MR  DHARMENDRA LODHA', 'MRS  DEEPIKA JAIN LODHA', '2010-09-14', '3 JA 1, PRABHAT NAGAR, SEC - 5, UDAIPUR', 'MDSPS-1848', 0, 1, 2, '', '', '', '0000-00-00'),
(2670, 'YUVAKSHI RATHORE', 'MR  LOKENDRA SINGH RATHORE', 'MRS   RITU RATHORE', '2010-12-06', '895-896, NEAR VIKAS HOSPITAL, SEC - 3, UDAIPUR', 'MDSPS-1849', 0, 1, 2, '', '', '', '0000-00-00'),
(2671, 'SHAURYA SINGH', 'MR  SOMESH KUMAR', 'MRS  OMLATA', '2011-02-17', 'PURHITON KI MADRI MIA ROAD NO  5 NEAR HANUMAN MANDIR', 'MDSPS-1868', 0, 1, 6, '', '', '', '0000-00-00'),
(2672, 'KHUSHWARDHAN SINGH CHAUHAN', 'MR  DEVENDRA SINGH CHAUHAN', 'MRS  REKHA CHAUHAN', '2011-02-03', '15 B RISHB SOCIETY TAGOR  NAGAR H  M  SEC  4', 'MDSPS-1869', 0, 1, 2, '', '', '', '0000-00-00'),
(2673, 'TANISHK KHATANA', 'MR  DHARMENDRA KUMAR', 'MRS  GUDDI GURJAR', '2010-08-08', 'NIRMAL VIHAR,H  NO  7  MANIBHADRA COLONY, HIRAN MAGRI, SECT  NO  3 UDAIPUR', 'MDSPS-2106', 0, 1, 6, '', '', '', '0000-00-00'),
(2674, 'PARISHI KHARADI', 'MR  KANHAIYA LAL KHARADI', 'MRS  RANJEETA KHARADI', '2011-07-11', 'H  NO  8 PRABHAT NAGAR SEC  5', 'MDSPS-2108', 0, 1, 6, '', '', '', '0000-00-00'),
(2675, 'GOURAV GURJAR', 'MR  SURESH GURJAR', 'MRS  MANGI GURJAR', '2010-05-06', '4, CHHOTI BRAHAMPURI,SHIV NAGAR /SOUTH SUNDERWAS UDAIPUR', 'MDSPS-2073', 0, 1, 6, '', '', '', '0000-00-00'),
(2676, 'CHESHTA PARMAR', 'MR  PURAN SINGH PARMAR', 'MRS  KANCHAN KUNWAR', '2010-04-26', '47, PARSHAVNATH NAGAR SEC  3 HIRAN MAGRI', 'MDSPS-2082', 0, 1, 2, '', '', '', '0000-00-00'),
(2677, 'DHRUV PATEL', 'MR  JAGDISH PATEL', 'MRS  MANJU PATEL', '2009-12-18', '103  MANWA KHEDA, UDAIPUR', 'MDSPS-2145', 0, 1, 1, '', '', '', '0000-00-00'),
(2678, 'YASH JAIN', 'MR  PAWAN JAIN', 'MRS  KHUSEE JAIN', '2011-05-19', '4-K-14, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2148', 0, 1, 2, '', '', '', '0000-00-00'),
(2679, 'SONAXI SHARMA', 'MR  SHYAM SUNDER SHARMA', 'MRS   MANJU SHARMA', '2010-12-13', '17, SAMTA NAGAR SEC  3, UDAIPUR', 'MDSPS-2030', 0, 1, 6, '', '', '', '0000-00-00'),
(2680, 'VISHAL LOHAR', 'MR  NAND LAL LOHAR', 'MRS  MINAKSHI LOHAR', '2010-06-12', '671, DHOLI MAGRI GALI NO  2 PANERIO KI MADRI UDR ', 'MDSPS-2034', 0, 1, 2, '', '', '', '0000-00-00'),
(2681, 'RASHI CHUNDAWAT', 'MR  PAVANESH KUMAR CHUNDAWAT', 'MRS  SEEMA CHUNDAWAT', '2010-10-09', '30, SECT  NO  3, SHASTRI NAGAR, HIRAN MAGRI, UDAIPUR', 'MDSPS-2039', 0, 1, 1, '', '', '', '0000-00-00'),
(2682, 'DIKSHA JAIN', 'MR  KAMLESH JAIN', 'MRS  KAVITA JAIN', '2011-04-04', 'HIRAN MAGRI, SECT  NO  4 TAGORE NAGAR, UDAIPUR', 'MDSPS-2042', 0, 1, 6, '', '', '', '0000-00-00'),
(2683, 'BHAVESH DANGI', 'MR  MAGAN LAL DANGI', 'MRS  LALI DANGI', '2014-03-26', '229, EKLING PURA POST KALDWAS', 'MDSPS-2055', 0, 1, 1, '', '', '', '0000-00-00'),
(2684, 'RIDHVISH JAIN', 'MR  SANJAY JAIN', 'MRS  LAXMI JAIN', '2010-12-30', '831, POOJA NAGAR SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2056', 0, 1, 2, '', '', '', '0000-00-00'),
(2685, 'BHAVYA SINGH PATEL', 'MR  VIRENDRA SINGH', 'MRS  RASHMI SINGH', '2011-08-09', 'H  M  12 DHOLI MAGRI SEC  4', 'MDSPS-2057', 0, 1, 6, '', '', '', '0000-00-00'),
(2686, 'VIHAAN CHOUBISA', 'MR  VISHAL CHOUBISA', 'MRS  PRAGYA CHOUBISA', '2010-10-03', '20, NAKODA COMPLEX, NR  PARTANI HOSPITAL, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2058', 0, 1, 1, '', '', '', '0000-00-00'),
(2687, 'NEHAL JEENGAR', 'MR  JITESH JEENGAR', 'MRS  NEETU JEENAGAR', '2001-09-04', 'H NO  3-DH-11, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2060', 0, 1, 6, '', '', '', '0000-00-00'),
(2688, 'RAJSHREE PALIWAL', 'MR  PRAMOD PALIWAL', 'MRS  SHWETA PALIWAL', '2010-12-29', 'HOUSE NO  3-LA-9, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1999', 0, 1, 1, '', '', '', '0000-00-00'),
(2689, 'VEDIK GAVARIYA RATHORE', 'MR  RAJKUMAR RATHORE', 'MRS  USHA', '2010-10-26', 'QTR  NO  9, BSNL COLONY, PRABHAT NAGAR, SECT  NO  5, UDAIPUR', 'MDSPS-2000', 0, 1, 1, '', '', '', '0000-00-00'),
(2690, 'VIBHAS MEHTA', 'MR  GIRISH MEHTA', 'MRS  SHARMILA MEHTA', '2011-11-12', '33, NIRMAL VIHAR, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2002', 0, 1, 6, '', '', '', '0000-00-00'),
(2691, 'VIDUSHI UPADHYAY', 'MR  TUSHAR UPADHYAY', 'MRS  KHUSHBU UPADHYAY', '2011-08-23', 'TULSI MAN 2-B-4 SHANTI NAGAR H  M  SEC  5 UDR ', 'MDSPS-2003', 0, 1, 2, '', '', '', '0000-00-00'),
(2692, 'KRITIKA SEN', 'MAHENDRA SEN', 'TANUJA SEN', '2011-09-24', '3 TA 36, SEC - 5, PRABHAT NAGAR, NEAR JAIN MANDIR,  H  M  UDAIPUR', 'MDSPS-2005', 0, 1, 2, '', '', '', '0000-00-00'),
(2693, 'SIDDHARTH KUMAWAT', 'MR  ANIL KUMAWAT', 'MRS  VARSHA KUMAWAT', '2011-03-31', 'GAS GODOWN ROAD, SAMTA NAGAR, UDAIPUR', 'MDSPS-1997', 0, 1, 6, '', '', '', '0000-00-00'),
(2694, 'PREETI KADELA', 'MR  CHEHARAM KADELA', 'MRS  SUNITA KADELA', '2011-08-31', '323, AAKASHWANI COLONY, PUROHITO KI MADRI, UDAIPUR', 'MDSPS-2012', 0, 1, 6, '', '', '', '0000-00-00'),
(2695, 'RIYAN KOTHARI', 'MR  ANIL KOTHARI', 'MRS  SUMAN KOTHARI', '2010-10-09', '52, NR MDS SCHOOL SAMTA NAGAR, SEC - 3, UDAIPUR', 'MDSPS-2016', 0, 1, 1, '', '', '', '0000-00-00'),
(2696, 'VEER LODHA', 'MR  NEERAJ LODHA', 'MRS  GEETA LODHA', '2010-08-22', '15, TAGORE NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2017', 0, 1, 6, '', '', '', '0000-00-00'),
(2697, 'NAITIK MEHTA', 'MR  BHARAT MEHTA', 'MRS  PRANITA MEHTA', '2011-05-17', '24, NIRMAL VIHAR, SEC - 3, UDAIPUR', 'MDSPS-2018', 0, 1, 2, '', '', '', '0000-00-00'),
(2698, 'DIVYANSHU MURDIA ', 'MR  ANIL MURDIA', 'MRS  KOMAL MURDIA', '2011-05-27', '12, VIDHYA NAGAR SUKHDIA COLONY H  M  SEC  4', 'MDSPS-2019', 0, 1, 1, '', '', '', '0000-00-00'),
(2699, 'PARAMJEET SINGH', 'MR MAHENDRA SINGH', 'MRS DIVYA KAUR', '2000-08-10', '3-TA-37, HIRAN MAGRI, PRABHAT NAGAR, SECT NO 5, UDAIPUR', 'MDSPS-1867', 0, 1, 1, '', '', '', '0000-00-00'),
(2700, 'SAURABH VAID', 'MR  GOPAL VAID', 'MRS  NEEMA VAID', '2009-02-26', '3F 70 PRABHAT NAGAR HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2113', 0, 1, 6, '', '', '', '0000-00-00'),
(2701, 'PRINCE DANGI', 'MR  DUDE LAL DANGI', 'MRS  SHANTI DANGI', '2010-05-02', 'VILL EKLINGPURA HOLI CHOK TEH  GIRVA', 'MDSPS-2172', 0, 1, 6, '', '', '', '0000-00-00'),
(2702, 'LAKSHYA MATTA', 'MR   RAJEEV MATTA', 'MRS  NEELAM MATTA', '2011-05-02', '46, SAMTA NAGAR (north) BEHIND JAIN TEMPLE, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2004', 0, 1, 2, '', '', '', '0000-00-00'),
(2703, 'NENA DANGI', 'MR  HARISH DANGI', 'MRS  GUDDI DANGI', '2011-01-27', 'JAMER KOTRA ROAD EKLING PURA, UDAIPUR', 'MDSPS-2074', 0, 1, 1, '', '', '', '0000-00-00'),
(2704, 'NARAYAN SINGH SENGAR', 'MR  RAJESH SINGH SENGAR', 'MRS  LAXMI DEVI', '2011-04-20', '16, SUKHADIA NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1927', 0, 1, 1, '', '', '', '0000-00-00'),
(2705, 'JINAL JAIN', 'MR  JAYANTI KUMAR JAIN', 'MRS  SONAL JAIN', '2011-01-07', '1417, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2011', 0, 1, 2, '', '', '', '0000-00-00'),
(2706, 'KARTIKEYA JOSHI', 'MR  VIMAL JOSHI', 'MRS  NEETU JOSHI', '2010-11-21', 'B-801 DWARIKA APPARTMENT A- ONE COMPLEXJAMER KOTRA', 'MDSPS-2022', 0, 1, 1, '', '', '', '0000-00-00'),
(2707, 'GAYATRI RATHORE', 'MR  MAHIPAL SINGH RATHORE', 'MRS  MAYA', '2011-01-07', '30, SAMTA NAGAR H  M  SEC  3', 'MDSPS-1870', 0, 1, 2, '', '', '', '0000-00-00'),
(2708, 'RONIT KARMAKAR', 'MR  JAYANTA KARMAKAR', 'MRS  POOJA KARMAKAR', '2010-12-29', '64, NEW VIDHYA NAGAR, SECTOR 4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2291', 0, 1, 1, '', '', '', '0000-00-00'),
(2709, 'PRANJAL PATEL', 'MR  ABHISHK PATEL', 'MRS  PREMLATA PATEL', '2010-08-13', '277, HIRAN MAGRI,VIVEK NAGAR SECT  NO  3, OPP  MAHAVIR BHAWAN, UDAIPUR', 'MDSPS-1860', 0, 1, 1, '', '', '', '0000-00-00'),
(2710, 'YUVIKA CHOUDHARY', 'MR  PRAMOD CHOUDHAREY', 'MRS  TARA CHOUDHAREY', '2011-01-02', '6 R  R  K  PURAM BIND GIRJA VIYAS PETROL PUMP SEC  9', 'MDSPS-2096', 0, 1, 2, '', '', '', '0000-00-00'),
(2711, 'VAIDEEK CHOUBISA', 'MR  LALIT CHOUBHIS', 'MRS  HEMLATA CHOUBISA', '2010-12-20', 'H NO  207-208, SURYA NAGAR, OPP  AAKASHWANI MADRI INDUSTRIAL AREA, UDAIPUR', 'MDSPS-2061', 0, 1, 1, '', '', '', '0000-00-00'),
(2712, 'NAITIK PRAJAPAT', 'MR  PURAN LAL PRAJAPATI', 'MRS  HEMLATA PRAJAPAT', '2011-06-14', '28, ANAND COMPLEX EKLINGPURA UDR  ', 'MDSPS-2043', 0, 1, 2, '', '', '', '0000-00-00'),
(2713, 'YASHVI PARMAR', 'MR  RAJESH KUMAR PARMAR', 'MRS  RANJITA PARMAR', '2011-08-09', '21, KRISHNA VIHAR, NEW VIDHYA NAGAR, SECTOR NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2023', 0, 1, 6, '', '', '', '0000-00-00'),
(2714, 'KHUSHI CHOUDHARY', 'MR  PANKAJ CHOUDHARY', 'MRS  REKHA CHOUDHARY', '2011-05-22', '366-C, SECTOR 9, SAVINA,JAGRIT VILLA  UDAIPUR', 'MDSPS-2037', 0, 1, 1, '', '', '', '0000-00-00'),
(2715, 'ANSHUL PATEL', 'MR  NARAYAN DANGI', 'MRS  MANJU DANGI', '2011-02-25', 'NEAR BUS STAND, LAKADWAS, UDAIPUR', 'MDSPS-2104', 0, 1, 6, '', '', '', '0000-00-00'),
(2716, 'AVADHI SEHLOT', 'MR  MANOJ SEHLOT', 'MRS  ANITA SEHLOT', '2011-04-07', 'H NO  2, NEW MAHAVEER NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1930', 0, 1, 1, '', '', '', '0000-00-00'),
(2717, 'SUMIT KUMAR DANGI', 'MR  BABU LAL DANGI', 'MRS  PREMLATA DANGI', '2011-04-03', '45/A, RLY COLONY, RANAPRATAP NAGAR, UDAIPUR', 'MDSPS-2025', 0, 1, 1, '', '', '', '0000-00-00'),
(2718, 'BHUVI CHOUDHARY', 'MR  RAJESH CHOUDHARY', 'MRS  SAPNA CHOUDHARY', '2010-12-08', '4, VINAYAK NAGAR, BOHARA GANESH JI ROAD, UDAIPUR', 'MDSPS-2077', 0, 1, 1, '', '', '', '0000-00-00'),
(2719, 'BHAVIK BORDIA', 'MR  ARVIND BORDIA', 'MRS  VIBHA BORDIA', '2011-07-13', '45, NEW VIDHYA NAGAR, SECT  4, UDAIPUR', 'MDSPS-2303', 0, 1, 1, '', '', '', '0000-00-00'),
(2720, 'KASHISH PATEL', 'MR  MOHAN LAL DANGI', 'MRS  NARANJANI JANGI', '2010-05-18', 'KAYA KA NOHRA, SHOBHAGPURA, UDAIPUR', 'MDSPS-1962', 0, 1, 2, '', '', '', '0000-00-00'),
(2721, 'RAGHURAJ SINGH JHALA', 'MR  HEM SINGH JHALA', 'MRS  URMILA KUNWAR', '2011-10-08', '3-B, PHATON KI MAGRI,31,SHANTI NAGAR SEC  3 UDAIPUR', 'MDSPS-2024', 0, 1, 6, '', '', '', '0000-00-00'),
(2722, 'HIMANSHI DANGI', 'MR  HEERA LAL DANGI', 'MRS  DURGA DANGI', '2011-04-13', 'VILLAGE POST KALADWAS, TEHSIL GIRVA, UDAIPUR', 'MDSPS-2059', 0, 1, 1, '', '', '', '0000-00-00'),
(2723, 'ADIT MAHESHWARI', 'MR  KOUSHAL GATTANI', 'MRS  JYOTI MAHESHWARI', '2011-08-19', '9, BAHU BALI COLONY, BOHARA GANESH MARG, UDAIPUR\r\n9, BAHU BALI COLONY, BOHARA GANESH MARG, UDAIPUR', 'MDSPS-2155', 0, 1, 6, '', '', '', '0000-00-00'),
(2724, 'RIYANSHA CHOUDHARY', 'MR  BHUPESH CHOUDHARY', 'MRS  REENA CHOUDHARY', '2010-11-05', '1 G 15, GYATRI NAGAR, SEC - 5, UDAIPUR', 'MDSPS-1876', 0, 1, 1, '', '', '', '0000-00-00'),
(2725, 'SIMRAN DANGI', 'MR  BHERU LAL DANGI', 'MRS  REKHA DANGI', '2010-04-10', '292, HOSPITAL TIRAHA, EKLINGPURA, UDAIPUR', 'MDSPS-2147', 0, 1, 6, '', '', '', '0000-00-00'),
(2726, 'DAKSH MUKESH JAIN', 'MR  MUKESH JAIN (BHANDARI)', 'MRS  REKHA JAIN', '2010-08-09', '3, NAMINATH NAGAR, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2310', 0, 1, 2, '', '', '', '0000-00-00'),
(2727, 'RAKESH PATEL', 'MR  MITTHA LAL PATEL', 'MRS  KANCHAN PATEL', '2010-07-25', 'JALAR KI GATI, KANPUR, UDAIPUR', 'MDSPS-2190', 0, 1, 6, '', '', '', '0000-00-00'),
(2728, 'LAKSHAY GAUTAM', 'MR  SURENDRA KUMAR GAUTAM', 'MRS  YUMESH GAUTAM', '2011-05-31', '1/56, INDRAPRASTH NAGAR, RHB COLONY, C-BLOCK, SECT  NO  9, UDAIPUR', 'MDSPS-2046', 0, 1, 2, '', '', '', '0000-00-00'),
(2729, 'ARYAN SHARMA', 'MR  RAJESH SHARMA', 'MRS  SHARDA SHARMA', '2011-10-10', '1-TA-19, HIRAN MAGRI, SECT  NO  5,  , UDAIPUR', 'MDSPS-1843', 0, 1, 1, '', '', '', '0000-00-00'),
(2730, 'KAVYANSH SHARMA', 'MR  MUKESH KUMAR SHARMA', 'MRS  SHWETA SHARMA', '2010-10-28', '01, PANERIYON KI MADRI, UDAIPUR', 'MDSPS-1835', 0, 1, 6, '', '', '', '0000-00-00'),
(2731, 'DOYAL CHUG', 'MR  VIJAY CHUG', 'MRS  PAYAL CHUG', '2011-06-07', '5 GH 27, SEC  11 RAM SINGH KI BARI, UDAIPUR', 'MDSPS-2117', 0, 1, 1, '', '', '', '0000-00-00'),
(2732, 'PRATISHTHA JAROLI', 'MR  LOKENDRA JAROLI', 'MRS  SUCHITRA JAROLI', '2011-08-04', '316-B, BALAJI BHAVAN SEC  4  UDAIPUR', 'MDSPS-2135', 0, 1, 6, '', '', '', '0000-00-00'),
(2733, 'TOSHIKA SALVI', 'MR  LOKESH SALVI', 'MRS  AARTI SALVI', '2010-05-27', 'BHOPA MAGRI, RIDHI SIDHI BANK, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'RTE-022', 0, 1, 6, '', '', '', '0000-00-00'),
(2734, 'SHRESHTH MARWADI', 'MR  ARUN JAIN', 'MRS  SHAILLY JAIN', '2011-03-31', '2, RISHI NAGAR H  M  SEC  3', 'RTE-024', 0, 1, 2, '', '', '', '0000-00-00'),
(2735, 'VIHAN SALVI', 'MR  NARESH SALVI', 'MRS  SANTOSH SALVI', '2010-06-12', 'BEHIND RAJASTHAN PATRIKA, UTTRAI SUNDERWAS, UDAIPUR', 'RTE-026', 0, 1, 1, '', '', '', '0000-00-00'),
(2736, 'BHAVYA AGRAWAL', 'MR  PRAHALAD RAY', 'MRS  POORNIMA AGRAWAL', '2011-04-10', '1581, NEW MALI COLONY, ANAND VIHAR, TEKRI, UDAIPUR', 'RTE-028', 0, 1, 6, '', '', '', '0000-00-00'),
(2737, 'PULKIT SHARMA', 'MR  OM PRAKASH SHARMA', 'MRS  GAYATRI SHARMA', '2010-08-10', '508, SOUTH SUNDERWAS, UDAIPUR', 'RTE-030', 0, 1, 1, '', '', '', '0000-00-00'),
(2738, 'NEHAL JAIN', 'MR  NARENDRA JAIN', 'MRS  MEENAKSHI JAIN', '2011-03-24', 'L-11, HIRAN MAGRI, SECT  NO  6, UDAIPUR', 'RTE-031', 0, 1, 2, '', '', '', '0000-00-00'),
(2739, 'JAHANVI SALVI', 'MR  RAMESH CHANDER SALVI', 'MRS  LEELA SALVI', '2011-02-01', 'H NO  31, PRATAP NAGAR, UDAIPUR', 'RTE-027', 0, 1, 2, '', '', '', '0000-00-00'),
(2740, 'SHUBHAM KANSARA', 'MR  MANOJ KANSARA', 'MRS  PRIYANKA KANSARA', '2011-06-22', '204, -CHANK PURI, OPP   HANSA PALACE, SECT  NO  4, UDAIPUR', 'MDSPS-2192', 0, 1, 1, '', '', '', '0000-00-00'),
(2741, 'DHARA SAMOTA', 'MR  KUNDAN SINGH', 'MRS  ASHA DEVI', '2011-01-05', '8, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'RTE-025', 0, 1, 1, '', '', '', '0000-00-00'),
(2742, 'GORANGI DARA', 'MR  NITIN DARA', 'MRS  ARCHANA DARA', '2011-03-30', '182, HIRAN MAGRI, SECT  NO  3,VIVEK NAGAR  UDAIPUR', 'RTE-023', 0, 1, 1, '', '', '', '0000-00-00'),
(2743, 'AARAV SHARMA', 'MR  SUNIL SHARMA', 'MRS  VINITA SHARMA', '2011-10-28', '1, AADARSH NAGAR, OPP  VAISHALI APARTMENT, HIRNA MAGRI, SECT  4, UDAIPUR', 'MDSPS-2321', 0, 1, 1, '', '', '', '0000-00-00'),
(2744, 'KALP SOMANI', 'MR. NAVNEET K. SOMANI', 'MRS. SWATI', '1970-01-01', '19, BEHIND J.P. HOSPITAL, TARA SANSTHAN ROAD, HIRAN MAGRI, SECT. 6, UDAIPUR', 'MDSPS-2398', 0, 1, 1, '', '', '', '0000-00-00'),
(2745, 'MAYURDHWAJ SINGH RATHORE', 'MR. SURENDAR SINGH RATHORE', 'MRS. NEETU KUNWAR RATHORE', '2009-07-04', 'H.NO. 65, NAKODA COMPLEX, HIRAN MAGRI, SECT. 4, UDAIPUR', 'MDSPS-2404', 0, 1, 1, '', '', '', '0000-00-00'),
(2746, 'DHWANI KOTECHA', 'MR  HEMEN S  KOTECHA', 'MRS  RINA H  KOTECHA', '2013-05-27', 'B-304, DWARIKA FLATS, A-ONE COMPLEX, JHAMAR KOTRA ROAD, OPP  SECT  5, MANWA KHEDA, UDAIPUR', 'MDSPS-3216', 0, -2, 1, '', '', '', '0000-00-00'),
(2747, 'TARUN WADHWANI', 'MR  SHANKAR WADHWANI', 'MRS  MONITA WADHWANI', '2013-03-03', '2-GA-21, SHANTI NAGAR, SECT  NO  3, UDAIPUR', 'MDSPS-2218', 0, -2, 1, '', '', '', '0000-00-00'),
(2748, 'PADMAKSHI BHATI', 'MR  ASHVINI BHATI', 'MRS  NIDHI BHATI', '2013-03-26', '58, SHIV NIWAS, OPP  POWER HOUSE, JHAMAR KOTRA ROAD, EKLINGPURA, UDAIPUR', 'MDSPS-2222', 0, -2, 1, '', '', '', '0000-00-00'),
(2749, 'SANKALP VAGRECHA', 'MR   VINOD KUMAR VAGRECHA', 'MRS  NEETU VAGRECHA', '2013-03-10', '16, SHANTI NAGAR, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2223', 0, -2, 1, '', '', '', '0000-00-00'),
(2750, 'HITAKSHI GHELOT', 'MR  MANMEET SINGH GHELOT', 'MRS  BHANUPRIYA RATHORE', '2012-10-09', '10-A-ONE COMPLEX, JHAMAR KOTRA ROAD, MANWAKHEDA, UDAIPUR', 'MDSPS-2224', 0, -2, 1, '', '', '', '0000-00-00'),
(2751, 'MOHIT KALRA', 'MR  VIJAY KUMAR KALRA', 'MRS  PRIYA KALRA', '2013-02-26', '2-J-17, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2228', 0, -2, 1, '', '', '', '0000-00-00'),
(2752, 'JAHNAVI DAVE', 'MR  RUDRESH DAVE', 'MRS  BHAWANA OUDICHYA', '2012-12-17', '42, ASHIRWAD BHAWAN, LAXMI MARG, JHINI RAITH, UDAIPUR', 'MDSPS-2236', 0, -2, 1, '', '', '', '0000-00-00'),
(2753, 'YUVI ASHOK GOTI', 'MR  ASHOK JINABHAI GOTI', 'MRS  SWATI ASHOK BHAI GOTI', '2013-01-09', 'A-701, DWARIKA APARTMENT, A-ONE COMPLEX, MANWA KHEDA, UDAIPUR', 'MDSPS-2241', 0, -2, 1, '', '', '', '0000-00-00'),
(2754, 'SHREYA JADIYA', 'MR  KAMLESH JADIYA', 'MRS  PRIYANKA JADIYA', '2013-02-28', '17, MAHAVEER NAGAR, ROAD NO, 4, SECT  NO  4, UDAIPUR', 'MDSPS-2244', 0, -2, 1, '', '', '', '0000-00-00'),
(2755, 'PREKSHA CHHAJED', 'MR  DEVENDRA CHHAJED', 'MRS  MANJU CHHAJED', '2013-03-01', '55, KRISHN A VIHAR, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2248', 0, -2, 1, '', '', '', '0000-00-00'),
(2756, 'NAVYA GORANA', 'MR  VIJAY GORANA', 'MRS  NAVINA GORANA', '2012-09-20', '16-A-ONE COMPLEX, MANWAKHERA, HIRAN MAGRI, UDAIPUR', 'MDSPS-2255', 0, -2, 1, '', '', '', '0000-00-00'),
(2757, 'RUDRA NAMDEV', 'MR  DHARMENDRA NAMA', 'MRS  SEEMA NAMA', '2012-08-22', 'NEAR SAHAKRI UPBHOKATA, RAKAMPURA ROAD, UDAIPUR', 'MDSPS-2261', 0, -2, 1, '', '', '', '0000-00-00'),
(2758, 'RANJEEV PRATAP SINGH', 'DR  ANIRUDDH KR, SINGH', 'MRS  PRATIMA SINGH', '2013-07-07', '76, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-3266', 0, -2, 1, '', '', '', '0000-00-00'),
(2759, 'DHRUVANK SHRIMALI', 'MR  RAJESH SHRIMALI', 'MRS  PRAMILA SHRIMALI', '2013-03-06', '22, DHANMANDI, NEAR BY DHANMANDI SCHOOL, UDAIPUR', 'MDSPS-2263', 0, -2, 1, '', '', '', '0000-00-00'),
(2760, 'HIMANSHU KHETRA', 'MR  KISHAN LAL KHETRA', 'DR  GEETA VASITA', '2013-01-01', 'H NO  1289, ADARSH NAGAR, HIRAN MAGRI, SECT  NO  4, MANWAKHERA ROAD, UDAIPUR', 'MDSPS-2346', 0, -2, 1, '', '', '', '0000-00-00'),
(2761, 'BHAVYA RAJ SINGH BHATI', 'MR  LOKENDRA SINGH BHATI', 'MRS  REENA CHUNDAWAT', '2001-03-05', 'H NO  34, HANUMAN NAGAR, MANWAKHEDA, UDAIPUR', 'MDSPS-3280', 0, -2, 1, '', '', '', '0000-00-00'),
(2762, 'HIREN KUMAWAT', 'MR  DHARMENDRA KUMAWAT', 'MRS  CHARUL KUMAWAT', '2012-10-10', 'D - 15, BEHIND UDAI PARK, SECT  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-2275', 0, -2, 1, '', '', '', '0000-00-00'),
(2763, 'RUDRA SINGH', 'MR  VISHNU VARI', 'MRS  NEELU', '2012-12-08', 'G-34, VIDHYA NAGAR, HOUSING BOARD, HIRAN MAGRI, SECT  4, UDAIPUR', 'MDSPS-2372', 0, -2, 1, '', '', '', '0000-00-00'),
(2764, 'ROHIT SINGH DEVRA', 'MR  JALAM SINGH DEVRA', 'MRS  RAJU SINGH DEVRA', '2013-01-06', '321, SHREE JI VIHAR, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO   4, UDAIPUR', 'MDSPS-2371', 0, -2, 1, '', '', '', '0000-00-00'),
(2765, 'VISHVA', 'DR  RAJU SINGH', 'MRS  DEVI BAI', '2012-08-11', 'WARDEN, NEHRU HOSTEL, SECT  NO  3, UDAIPUR', 'MDSPS-2384', 0, -2, 1, '', '', '', '0000-00-00'),
(2766, 'SPARSH PANJWANI', 'MR  SATISH PANJWANI', 'MRS  POOJA PANJWANI', '2012-11-26', '1-TA-42, HOUSING BOARD COLONY, HIRAN MAGRI, UDAIPUR', 'MDSPS-2377', 0, -2, 1, '', '', '', '0000-00-00'),
(2767, 'VINAY LOHAR', 'MR  NANDLAL LOHAR', 'MRS  MEENAKSHI LOHAR', '2013-01-22', '671, DHOLI MAGRI, GALI NO  2, PANERION KI MADRI, UDAIPUR', 'MDSPS-2284', 0, -2, 1, '', '', '', '0000-00-00'),
(2768, 'DHURVE VAYA', 'MR  SANJAY KUMAR VAYA', 'MRS  ASHA VAYA', '2013-03-06', '537, TEGORE NAGAR, KOTVADIA BHERU JI STREET, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2337', 0, -2, 1, '', '', '', '0000-00-00'),
(2769, 'DIVYARAJ LODHA', 'MR  VIJAY JAIN', 'MRS  JYOTI JAIN', '2013-04-18', '64, TILAK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-3282', 0, -2, 1, '', '', '', '0000-00-00'),
(2770, 'PRUDHUMAAN SHARMA', 'MR  PRASHANT SHARMA', 'MRS  VARSHA SHARMA', '2013-01-04', '69, RISHI NAGAR, SECT  NO  3, UDAIRPUR', 'MDSPS-2368', 0, -2, 1, '', '', '', '0000-00-00'),
(2771, 'REYANSH DANGI', 'MR  DINESH DANGI', 'MRS  YOGITA DANGI', '2013-01-28', 'MAJEMA HOUSE, BEHIND RANAWAT POLTRY FORM, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2370', 0, -2, 1, '', '', '', '0000-00-00'),
(2772, 'PARTH MENARIA', 'MR  PREM SHANKAR MENARIA', 'MRS  ANITA MENARIA', '2012-03-10', '99, PANERIO KI MADRI, HIRAN MAGRI, UDAIPUR', 'MDSPS-3283', 0, -2, 1, '', '', '', '0000-00-00'),
(2773, 'JIGYAN VIJAYVERGIA', 'MR  MANISH VIJAYVERGIA', 'MRS  KAVITA VIJAYVERGIA', '2012-07-05', '13, NEW SHANTI NAGAR SEC  3 UDR ', 'MDSPS-3284', 0, -2, 1, '', '', '', '0000-00-00'),
(2774, 'KANISKH SINGH PANWAR', 'AMIT SINGH PANWAR', 'NATASHA PANWTR', '2012-11-30', '55, ROOP NAGAR, SEC - 3, UDAIPUR', 'MDSPS-2355', 0, -2, 1, '', '', '', '0000-00-00'),
(2775, 'LUVYA PAL SINGH', 'MR  BHUPAL SINGH PATRABAT', 'MRS  SEEMA SINGH', '2012-09-06', '105, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2358', 0, -2, 1, '', '', '', '0000-00-00'),
(2776, 'MANAN CHOUDHARY', 'MR  POORAN CHOUDHARY', 'MRS  MAMTA CHOUDHARY', '2012-11-08', '1242, ADARSH NAGAR, NEAR SWAYAMBER BAG, HIRAN MAGRI, SECT  4, UDAIPUR', 'MDSPS-2360', 0, -2, 1, '', '', '', '0000-00-00'),
(2777, 'SHLOK SHARMA', 'MR  BASANT SHARMA', 'MRS  VANDANA SHARMA', '2013-02-10', 'H NO  17, MANIBHADRA COLONY, NEAR NIRMAL VIHARF, NEAR CENTRAL ACADEMY SCHOOL, SECT  3, UDAIPUR', 'MDSPS-2375', 0, -2, 1, '', '', '', '0000-00-00'),
(2778, 'ABHIGYAN CHATURVEDI', 'MR  ANKUR CHATURVEI', 'MRS  KUMUD CHATURVEDI', '2012-10-10', '96, NAKODA COMPLEX, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2329', 0, -2, 1, '', '', '', '0000-00-00'),
(2779, 'PURWANSH KHATRI', 'MR  VIKAS KHATRI', 'MRS  POONAM KHATRI', '2013-01-05', 'HOUSE NO  04-GH-28, VIDYA NAGAR, HIRAN MAGRI, SECT  14, UDAIPUR', 'MDSPS-2369', 0, -2, 1, '', '', '', '0000-00-00'),
(2780, 'DEVYANI RATHORE', 'MR  RAGHVENDRA PRATAP SINGH ', 'MRS  ANITA RATHORE', '2013-04-20', '21, AONE COMPLEX, MANWA KHERA, UDAIPUR', 'MDSPS-3285', 0, -2, 1, '', '', '', '0000-00-00'),
(2781, 'SWARNIL JAIN', 'MR  PANKAJ TATER', 'MRS  RATNA JAIN', '2013-08-21', '248, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPURT', 'MDSPS-3286', 0, -2, 1, '', '', '', '0000-00-00'),
(2782, 'DIVYANSHI DIDWANIA', 'MR  SANJAY DIDWANIA', 'MRS  PRAMILA DIDWANIA', '2012-11-22', '7-A, NEW ADARSH NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-2338', 0, -2, 1, '', '', '', '0000-00-00'),
(2783, 'JANHAVI PALIWAL', 'MR  VIKAS PALIWAL', 'MRS  SHALINI PALIWAL', '2012-11-18', '13, NEW SHANTI NAGAR, SECT  NO  3, BEHIND CHANDANI VATIKA, UDAIPUR', 'MDSPS-2350', 0, -2, 1, '', '', '', '0000-00-00'),
(2784, 'VIRAT PATEL', 'MR  DHULA RAM PATEL', 'MRS  MOTI DEVI PATEL', '2012-07-14', '50, SHANTI NAGAR, BEHIND MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2383', 0, -2, 1, '', '', '', '0000-00-00'),
(2785, 'MITASHI MAHESHWARI', 'MR  HARSH MAHESHWARI', 'MRS  KIRAN MAHESHWARI', '2012-11-08', 'R-401, RADHEY KRISHNA APARTMENT, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2361', 0, -2, 1, '', '', '', '0000-00-00'),
(2786, 'CHITRANSH SINGH CHAUDHARY', 'DR  HEMRAJ SINGH CHOUDHARY', 'MRS  ANSHU CHOUDHARY', '2012-08-07', 'H NO  35, TRIMURTI COMPLEX, MANWAKHEDA ROAD, NEAR BY VAISHALI APARTMENT, UDAIPUR', 'MDSPS-3287', 0, -2, 1, '', '', '', '0000-00-00'),
(2787, 'CHARVI HADA', 'MR  GAJENDRA SINGH HADA', 'MRS  ABHILASHA JHALA', '2013-02-14', 'H N  3, NEW VIDHYA NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2294', 0, -2, 1, '', '', '', '0000-00-00'),
(2788, 'KASHVI CHOUHAN', 'MR  RAKESH CHOUHAN', 'MRS  NISHAN KUMARI MALI', '2013-01-24', 'H NO  3, CENTRAL AREA, UDAIPUR', 'MDSPS-2295', 0, -2, 1, '', '', '', '0000-00-00'),
(2789, 'MADHAV BASER', 'MR  RAKESH BASER', 'MRS  SHANU BASER', '2012-12-06', '10, JALVIHAR COLONY,, HIRNA MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2359', 0, -2, 1, '', '', '', '0000-00-00');
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`) VALUES
(2790, 'PRATYUSHA SINGH CHOUHAN', 'MR  LAXMAN SINGH CHOUHAN', 'MRS  PREM KUNWAR RATHORE', '2013-01-04', '19, SHIV COLONY, NAKODA ROAD, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2367', 0, -2, 1, '', '', '', '0000-00-00'),
(2791, 'JASMEET KOUR', 'MR  GURPEJ SINGH JOGI', 'MRS  SEEMA KOUR', '2013-02-25', '27, NEW ADDRESS HOUSING SOCIETY, HIRAN MAGRI, SECT  NO  4, UDAIUR', 'MDSPS-2352', 0, -2, 1, '', '', '', '0000-00-00'),
(2792, 'MOHIT SAHU', 'MR  SURESH KUMAR SAHU', 'MRS  MANJU SAHU', '2013-01-02', 'PLOT NO   8, SHYAM NAGAR, SOUTH SUNDERWAS, UDAIPUR', 'MDSPS-2362', 0, -2, 1, '', '', '', '0000-00-00'),
(2793, 'AAYUSH JAIN', 'MR  SHEKHAR JAIN', 'MRS  RUBI JAIN', '2013-05-24', '3-THA-4, PRABHAT NAGAR, HIRAN MAGRI, SECT  5, UDAIPUR', 'MDSPS-3288', 0, -2, 1, '', '', '', '0000-00-00'),
(2794, 'HARSH WAGH', 'MR  NARENDRA WAGH', 'MRS  HARSHLA WAGH', '2013-01-28', '1279, ADARSH NAGAR, HIRAN MAGRI, SECT  4, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2795, 'MAHIRAJ SINGH CHUNDAWAT', 'MR  GAJRAJ SINGH CHUNDAWAT', 'MRS  SANTOSH KITAWAT', '2013-03-26', 'HOUSE NO  14, HIRAN MAGRI, SECT  NO  3, NEAR UIT PARK, UDAIPUR', 'MDSPS-2313', 0, -2, 1, '', '', '', '0000-00-00'),
(2796, 'TRISHA SHAKTAWAT', 'MR  SURYABHAN SINGH', 'MRS  KRISANA KUNWAR', '2013-01-07', '1-D-37, SHIV MARG,  HIRAN MAGRI, SECT  5, UDAIPUR', 'MDSPS-2381', 0, -2, 1, '', '', '', '0000-00-00'),
(2797, 'PRIYANSHI GANDHARV', 'MR  NARAYAN GANDHARV', 'MRS  KALPANA GANDHARAV', '2012-10-14', '3-C-19, GUPTESHWAR NAGAR, HIRAN MAGRI, SECT  7, UDAIPUR', 'MDSPS-3281', 0, -2, 1, '', '', '', '0000-00-00'),
(2798, 'BHAVISHYA KALRA', 'MR  VIVEK KALRA', 'MRS  PALAK KALRA', '2013-08-18', 'FLAT NO   303,  A-BLOCK, EARTH TOWER, RSG THE UNIVERSE, OPP   SECT  9 EXTENSION, BEHIND SHARMA PETROL PUMP, UDAIPUR', 'MDSPS-3289', 0, -2, 1, '', '', '', '0000-00-00'),
(2799, 'MITANSH BAJAJ', 'MR  VIKASH BAJAJ', 'MRS  PRIYA BAJAJ', '2013-02-26', 'H NO  4-GHA-39, HIRAN MAGRI, SECT  NO  4, OPP  RANAWAT POLIT FORM, UDAIPUR', 'NA-83', 0, -2, 1, '', '', '', '0000-00-00'),
(2800, 'KARTIK SACHDEV', 'MR  ASHOK SACHDEV', 'MRS  KIRAN SACHDEV', '2013-07-07', '6, KASHIPURI COLONY NO  3, HIRAN MAGRI, UDAIPUR', 'NA-70', 0, -2, 1, '', '', '', '0000-00-00'),
(2801, 'AVIKA THOORWAL', 'MR  ROHITASH MEENA', 'MRS  SEEMA MEENA', '2013-03-09', 'Q NO  27/III, BSNL COLONY, MANWAKHERA, HIRAN MAGRI, SECT  NO  6, UDAIPUR', 'MDSPS-2332', 0, -2, 1, '', '', '', '0000-00-00'),
(2802, 'NAVYA DALAL', 'MR  VIRENDRA DALAL', 'MRS  NEETU DALAL', '2012-12-12', 'MANWA KHEDA A1 COMPLEX, UDAIPUR', 'MDSPS-2365', 0, -2, 1, '', '', '', '0000-00-00'),
(2803, 'GUNGUN SAHLOT', 'MR  MUKESH SAHLOT', 'MRS  KAVITA SAHLOT', '2013-04-07', '2-KHA-37, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-3290', 0, -2, 1, '', '', '', '0000-00-00'),
(2804, 'HARSHUL MENARIA', 'MR  GHANSHYAM MENARIA', 'MRS  KIRAN MENARIA', '2013-01-26', '256, RAJ KAMAL BUILDING, NEAR TEKRI, PEEPLI CHOURAYA, UDAIPUR', 'MDSPS-2344', 0, -2, 1, '', '', '', '0000-00-00'),
(2805, 'VANSH MALIWAL', 'MR  AVINASH MALIWAL', 'MRS  RANJANA MALIWAL', '2013-03-18', '44, VRINDAVAN VIHAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2382', 0, -2, 1, '', '', '', '0000-00-00'),
(2806, 'DRON SHORTRIYA', 'MR  PUNEET SHROTRIYA', 'MRS  HEMLATA SHORTRIYA', '2013-01-01', '57, RISHI NAGAR, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2340', 0, -2, 1, '', '', '', '0000-00-00'),
(2807, 'TEJAS VERMA', 'MR  ANKIT VERMA', 'MRS  SUMAN VERMA', '2012-11-13', 'H NO  16, SHIV NAGAR, OPP  BARODA BANK, SOUTH SUNDERWAS, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2808, 'VIDIT JAIN', 'MR. RAJESH SANKALA', 'MRS. BHAWANA JAIN', '1970-01-01', '34, SHANTI NAGAR, CHANDAN VATIKA ROAD, SECT. NO.3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2399', 0, -2, 1, '', '', '', '0000-00-00'),
(2809, 'PALLAVI DANGI', 'MR. KHEMRAJ DANGI', 'MRS. PUSHPA DANGI', '2012-08-12', ', OPP. AKASHWANI , MIA, UDAIPUR', 'MDSPS-3291', 0, -2, 1, '', '', '', '0000-00-00'),
(2810, 'JYOTSANA MEHRA', 'MR. HEMANT MEHRA', 'MRS. KIRTE MEHRA', '1970-01-01', '318, SURYA NAGAR, OPP. AKASHWANI MIA ROAD, UDAIPUR', 'MDSPS-3292', 0, -2, 1, '', '', '', '0000-00-00'),
(2811, 'ANSH PUSHKARNA', 'MR. NARENDRA  PUSHKARNA', 'MRS. NARENDRA PUSHKARNA', '1970-01-01', 'NEAR WATER TANK PUSKARNA KA MOHALLA KANPUR', 'MDSPS-3293', 0, -2, 1, '', '', '', '0000-00-00'),
(2812, 'ARADHYA LODHA', 'MR. PANKAJ LODHA', 'MRS. DEEPIKA LODHA', '2013-07-30', '29, MAHAVEER COLONY, SECT. NO. 4, HIRAN MAGRI, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2813, 'PRENJAL SAHU', 'MR. AASHISH SAHU', 'MRS. JYOTI SAHU', '2013-01-31', '6, SHEVASHRAM CHORAHA, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2814, 'SAKSHI SALVI', 'MR. MAHENDRA SALVI', 'MRS. RANI SALVI', '2012-09-28', '455, VEENA NAGAR, SEC - 6, UDIAPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2815, 'MISHIKA VASITA', 'MR. BHARAT KUMAR DHOBI', 'MRS. Indra Bala Vasita', '2013-03-26', '3-B-14, GUPTESHWAR NAGAR, SEC - 7, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2816, 'PRACHI SALVI', 'MR. DHARMENDRA SALVI', 'MRS. DURGA SALVI', '2012-10-13', '267, SUNDERWAS, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2817, 'YUVRAJ KHATIK', 'MR. MUKESH KHATIK', 'MRS. REKHA KHATIK', '2012-07-13', '417, BHOPA MAGRI, SECT  NO  3, BEHIND NEHRU HOSTEL, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2818, 'PRANCI BHAVSAR', 'MR. VISHAL BHAVSAR', 'MRS. NIKITA BHAVSAR', '2012-11-11', '142, UIT COLONY, NEAR WATER TANK, PUROHITO KI MADRI, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2819, 'VIVANSH SALVI', 'MR. JAI PRAKASH SALVI', 'MRS. RANJANA SALVI', '2013-04-14', '40, ODA WADA, NEAR JASMA MATA TEMPLE, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2820, 'BHUMIK BUNKAR', 'MR. RAMESH CHANDRA BUNKER', 'MRS. LALITA', '2013-03-07', 'HOLI CHOWK, PANERIYON KI MADRI, MANWA KHERA, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2821, 'RUDRANSHI KOTIA', 'MR. HARISH KOTIA', 'MRS. POONAM KOTIA', '2012-07-26', '4 GHA 49, SEC - 4, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2822, 'VIDHI CHOUHAN', 'MR. MANOJ CHOUHAN', 'MRS. RENU CHOUHAN', '2013-02-18', '144, AAZAD NAGAR, SEC - 3, UDAIPUR', '', 0, -2, 1, '', '', '', '0000-00-00'),
(2823, 'RUDRAPRIYA SINGH GADEN', 'MR  SURENDRA SINGH GADEN', 'MRS  DIVYA BARHAT', '2010-06-22', 'B-2/204, VAISHALI APARTMENT, HIRAN MAGRI, SECT  4, UDAIPUR', 'MDSPS-2204', 0, 2, 1, '', '', '', '0000-00-00'),
(2824, 'ASHWIN SHEKHAR GUPTA', 'MR  SANJEEV SHEKHAR', 'MRS  VARSHA KUMARI', '2010-03-20', 'Q NO  38-B, , BARI COLONY, RANA PRATAP NAGAR RAILWAY STATION, UDAIPUR', 'MDSPS-2205', 0, 2, 1, '', '', '', '0000-00-00'),
(2825, 'BHAVIKA RATHORE', 'MR  BHARAT SINGH RATHORE', 'MRS  SONALI RATHORE', '2009-10-23', '3-KA-27, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAPUR', 'MDSPS-2209', 0, 2, 2, '', '', '', '0000-00-00'),
(2826, 'MAHIM SEMLAWAT', 'MR  VIKAS SEMLAWAT', 'MRS  ANKITA SEMLAWAT', '2010-02-28', 'H NO  58, KRISNA VIHAR, NEW VIDHAYA NAGAR, SECT  4, UDAIPUR', 'MDSPS-2227', 0, 2, 1, '', '', '', '0000-00-00'),
(2827, 'PAHAL TATER', 'MR  VIKAS TATER', 'MRS  DEEPIKA TATER', '2010-11-10', 'SONI JI KI BARI, NEAR JAIN TEMPLE, AYAD, UDAIPUR', 'MDSPS-2231', 0, 2, 2, '', '', '', '0000-00-00'),
(2828, 'NANDISHA SAHU', 'MR  BHARAT SAHU', 'MRS  SEEMA SAHU', '2010-05-27', '265, BEHIND POLICE LINE, TEKRI, UDAIPUR', 'MDSPS-2239', 0, 2, 2, '', '', '', '0000-00-00'),
(2829, 'VIDUSHI KHURDIYA', 'MR  VIJAY SINGH KHURDIYA', 'DR  KIRTI KHURDIYA', '2009-10-09', '05, ARVIND NAGAR, NEAR JAIN TEMPLE, SUNDERWAS, UDAIPUR', 'MDSPS-2253', 0, 2, 2, '', '', '', '0000-00-00'),
(2830, 'SUZAIN KATARIYA', 'MR BHARAT KATARIYA', 'MRS  CHESTA KATARIYA', '2009-11-26', '1-K-10, SHIV MARG, NEAR SARAS PARLAR, HIRAN MAGRI, SECT  5, UDAIPUR', 'MDSPS-2264', 0, 2, 2, '', '', '', '0000-00-00'),
(2831, 'ISHITA DUNGERWAL', 'MR  ARVIND DUNGERWAL', 'MRS  SAKSHI DUNGERWAL', '2010-01-25', '29, SAMTA NAGAR, GAS GODOWN ROAD, SEC  3', 'MDSPS-1692', 0, 2, 2, '', '', '', '0000-00-00'),
(2832, 'VEDANT DAVE', 'MR  KAMLESH DAVE', 'MRS  MANISHA KAMLESH DAVE', '2010-02-23', 'A, 802, A ONE, COMPLEX UDR ', 'MDSPS-1276', 0, 2, 1, '', '', '', '0000-00-00'),
(2833, 'ANSH PRIYANSHU', 'MR  RITESH SINGH', 'MRS  PUJA KUMARI', '2009-08-04', 'FG-1350, ADARSH NAGAR COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1995', 0, 2, 2, '', '', '', '0000-00-00'),
(2834, 'MEHUL JAIN', 'MR  TARUN KUMAR DAGLIYA', 'MRS  KAVITA DAGLIYA', '2010-04-24', 'VASHANT VIHAR SUNDERWAS', 'MDSPS-1969', 0, 2, 2, '', '', '', '0000-00-00'),
(2835, 'UNNATI AGARWAL', 'MR MAHESH AGARWAL', 'MRS  YOGITA GUPTA', '2010-02-21', '47, EKLING COLONY, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1976', 0, 2, 2, '', '', '', '0000-00-00'),
(2836, 'PRATEEK CHOUBISA', 'MR  BHUPENDRA KUMAR CHOUBISA', 'MRS  LEELA CHOUBISA', '2010-08-14', '23, SAMTA NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1443', 0, 2, 1, '', '', '', '0000-00-00'),
(2837, 'SNEHA BANSAL', 'MR  MANOJ DANI', 'MRS  SUNITA DANI', '2010-05-08', '2 J 7, VASHANT VIHAR SEC  5', 'MDSPS-1663', 0, 2, 2, '', '', '', '0000-00-00'),
(2838, 'LAKSHYARAJ SINGH RATHORE', 'MR  GHANSHYAM SINGH RATHORE', 'MRS  ANUSADHA CHOUHAN', '2010-06-09', '94, RIDHI NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1527', 0, 2, 2, '', '', '', '0000-00-00'),
(2839, 'GARVIT MOOLCHANDANI', 'MR  HITESH MOOLCHANDANI', 'MRS  PURVA MOOLCHANDANI', '2010-05-08', '19 T, BASANT VIHAR, SEC - 5, UDAIPUR', 'MDSPS-1333', 0, 2, 2, '', '', '', '0000-00-00'),
(2840, 'AKSHAT DEO', 'MR  SUMIT DEO', 'MRS  DEEPTI DEO', '2010-05-16', '303, B- BLOCK, A ONE COMPLEX UDR ', 'MDSPS-1281', 0, 2, 2, '', '', '', '0000-00-00'),
(2841, 'AARAV DEO', 'MR  SUMIT DEO', 'MRS  DEEPTI DEO', '2010-05-16', '303,B-BLOCK, A ONE COMPLEX, UDR', 'MDSPS-1282', 0, 2, 2, '', '', '', '0000-00-00'),
(2842, 'RUSHI CHAUDHARY', 'MR  PANKAJ CHAUDHARY', 'MRS  MADHAVI CHAUDHARY', '2010-05-19', '35-A, ADARSH HOUSING SOCIETY, VIDHYA NAGAR, HIRAN MAGRI, SECTOR NO  4, UDAIPUR', 'MDSPS-1918', 0, 2, 1, '', '', '', '0000-00-00'),
(2843, 'AKSHIT PARASHAR', 'MR ANKIT PARASHAR', 'MRS  BHARTI PARASAR', '2010-03-18', '2 - JYOTI NAGAR, MANWAKHEDA, SEC - 4, UDAIPUR', 'MDSPS-1613', 0, 2, 1, '', '', '', '0000-00-00'),
(2844, 'ANANT PARASHAR', 'MR  ANKIT PARASHAR', 'MRS  BHARTI PARASHAR', '2010-03-18', '2, JYOTI NAGAR, MANWAKHERA SEC - 4, UDAIPUR', 'MDSPS-1614', 0, 2, 1, '', '', '', '0000-00-00'),
(2845, 'SUMIT KUMAR', 'MR  PINTU SHARMA', 'MRS  SANGEETA DEVI', '2009-11-07', '2-KA-34, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2280', 0, 2, 2, '', '', '', '0000-00-00'),
(2846, 'SIDDHI ACHARYA', 'MR  AVDHESH ACHARYA', 'MRS  ANKITA ACHARYA', '2010-02-14', '3, PA- PRABHAT NAGAR, SEC - 5, UDAIPUR', 'MDSPS-1704', 0, 2, 2, '', '', '', '0000-00-00'),
(2847, 'ADITYA AMETA', 'MR  AVINASH AMETA', 'MRS  VASUDHA SHARMA', '2010-11-18', '230, B SUBHASH NAGAR', 'MDSPS-1871', 0, 2, 2, '', '', '', '0000-00-00'),
(2848, 'CHIRAG POKHARANA', 'MR UMESH POKHARANA', 'MRS  PAYAL POKHARNA', '2010-08-01', '70, RISHAB HOUSING SOCIETY, SEC - 4, UDAIPUR', 'MDSPS-1277', 0, 2, 2, '', '', '', '0000-00-00'),
(2849, 'HARSHITA VAGRECHA', 'MR  MANOHAR LAL VAGRECHA', 'MRS  REKHA VAGRECHA', '2010-03-25', '16, SHANTI NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1335', 0, 2, 1, '', '', '', '0000-00-00'),
(2850, 'NANDNI DHAKAD', 'MR  DEEPAK DHAKAD', 'MRS  PRATIBHA DHAKAD', '2010-09-14', '67, RISHI NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1323', 0, 2, 1, '', '', '', '0000-00-00'),
(2851, 'PRANVI MENARIYA', 'MR  VISHNU MENARIYA', 'MRS  RANAJANA MENARIYA', '2010-03-30', '470, PANERIYON KI MADRI, OPP  POLICE STATION, SEC - 6, UDAIPUR', 'MDSPS-1005', 0, 2, 2, '', '', '', '0000-00-00'),
(2852, 'VIDIT JAROLI', 'MR  ANIL JAROLI', 'MRS  SEEMA JAROLI', '2010-10-26', '28, PARSHAWNATH NAGAR SEC  3', 'MDSPS-1334', 0, 2, 2, '', '', '', '0000-00-00'),
(2853, 'JAY GORANA', 'MR  JAGDISH GORANA', 'MRS  LAXMI GORANA', '2010-05-06', '33/896, GLASS FACTORY, KHEMPURA ROAD, UDAIPUR', 'MDSPS-1572', 0, 2, 1, '', '', '', '0000-00-00'),
(2854, 'VINAY PATEL', 'MR  LAXMAN PATEL', 'MRS  DURGA PATEL', '2010-07-09', '229 EKLING PURA, VELA, NER POWER HOUSE, UDAIPUR', 'MDSPS-1594', 0, 2, 1, '', '', '', '0000-00-00'),
(2855, 'JAY BOHARA', 'MR ANIL KUMAR BOHARA', 'MRS  KIRTI SUDHA BOHRA', '2009-10-27', '106,  GALI NO  3,  MAHAVEER NAGAR, SEC - 4, UDAIPUR', 'MDSPS-1502', 0, 2, 2, '', '', '', '0000-00-00'),
(2856, 'ABHISHEK PATEL', 'MR. SUKH LAL PATEL', 'MRS  LEELA PATEL', '2010-05-13', '1899, SEC - 3, UDAIPUR', 'MDSPS-1503', 0, 2, 1, '', '', '', '0000-00-00'),
(2857, 'KRITI CHATURVEDI', 'MR  HEMANT CHATURVEDI', 'MRS  VAIJAYANTI CHATURVEDI', '2009-11-08', '2 K 20, PRABHAT NAGAR, SEC - 5, UDAIPUR', 'MDSPS-1516', 0, 2, 1, '', '', '', '0000-00-00'),
(2858, 'NAMAN GAKHREJA', 'MR  RAJENDRA GAKHREJA', 'MRS  SONAM GAKHREJA', '2009-10-21', '4 GHA 45,SEC -4, UDAIPUR', 'MDSPS-1547', 0, 2, 2, '', '', '', '0000-00-00'),
(2859, 'NIKHIL DANGI', 'MR  GANESH LAL DANGI', 'MRS  MANJU DEVI DANGI', '2009-12-14', 'VILLAGE, DANGION KA GURA, LAKHAWALI, NEAR BEDLA, UDAIPUR', 'MDSPS-1643', 0, 2, 1, '', '', '', '0000-00-00'),
(2860, 'PREET MARU', 'MR  JEETENDRA MAR00', 'MRS  AZAD MAROO', '2010-03-03', '94, TILAK NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1703', 0, 2, 2, '', '', '', '0000-00-00'),
(2861, 'UJJWAL KURDIA', 'MR NITESH KUMAR KURDIA', 'MRS  RENU DEVI KURDIA', '2010-02-21', '4-DA-4, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1682', 0, 2, 1, '', '', '', '0000-00-00'),
(2862, 'DARSHIL CHOUBISA', 'MR  MANOJ CHOUBISA', 'MRS   ANJANA CHOUBISA', '2009-10-04', '20, NAKODA COMPLEX, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1688', 0, 2, 2, '', '', '', '0000-00-00'),
(2863, 'SAKSHAM BHIMAWAT', 'MR  DINESH BHIMAWAT', 'MRS  VIBHA BHIMAWAT', '2009-09-30', '187, TAGORE NAGAR, HIRAN MAGRI, SECT  N O  4, UDAIPUR', 'MDSPS-1689', 0, 2, 2, '', '', '', '0000-00-00'),
(2864, 'ALPESH MEHTA', 'MR LAXMI CHAND MEHTA', 'MRS  KIRAN MEHTA', '2010-04-02', '14, GAS GODOWN ROAD, SEC - 3, UDAIPUR', 'MDSPS-1344', 0, 2, 2, '', '', '', '0000-00-00'),
(2865, 'KHANAK GAUR', 'MR  NEERAJ GAUR', 'MRS  POOJA GOUR', '2010-06-02', '34, SHIV SADAN, BALA JI NAGAR,SEC  4 MANWA, UDAIPUR', 'MDSPS-1363', 0, 2, 2, '', '', '', '0000-00-00'),
(2866, 'KANISHKA SHARMA', 'MR  BASANT SHARMA', 'MRS  VANDANA SHARMA', '2010-02-27', 'H NO  17, MAHIBADRA COLONY, NIRMAL VIHAR, ADJOCENT TO CENTRAL ACDEMY SCHOOL, SECT  NO  3, UDAIPUR', 'MDSPS-1381', 0, 2, 2, '', '', '', '0000-00-00'),
(2867, 'RANJANA DANGI', 'MR  GANGARAM DANGI', 'MRS  ANITA DANGI', '2009-12-13', 'MANPURA, LAKHAWALI, NAR BEDLA, UDAIPUR', 'MDSPS-1408', 0, 2, 1, '', '', '', '0000-00-00'),
(2868, 'KARTAVYA NANDWANA', 'MR  UMASHANKAR NANDWANA', 'MRS  VANDAWANA NANDWANA', '2010-01-01', '280, SHIV COLONY, HIRAN MANGI, SECT  NO  6, UDAIPUR', 'MDSPS-1417', 0, 2, 2, '', '', '', '0000-00-00'),
(2869, 'VISHAL MEENA', 'MR  BABU LAL MEENA', 'MRS  MAMTA DEVI MEENA', '2009-06-04', '879  LIPI DATA, CHODARI KIRANA STORE, UDAIPUR', 'MDSPS-1446', 0, 2, 1, '', '', '', '0000-00-00'),
(2870, 'ANSHUL SONAVA', 'MR  VIJESH KUMAR SONAVA', 'MRS  NEHA SONAVA', '2010-07-29', '24-W, SAMTA NAGAR, HIRAN MAGRI, UDAIPUR', 'MDSPS-1449', 0, 2, 2, '', '', '', '0000-00-00'),
(2871, 'DAKSH KOTHARI', 'MR  YOGESH KOTHARI', 'MRS  SHILPA KOTHARI', '2009-01-03', '30, HIRAN MAGRI SEC  3 OPP  MDS SCHOOL NIRMAL VIHAR UDR ', 'MDSPS-1453', 0, 2, 2, '', '', '', '0000-00-00'),
(2872, 'HARDIK MENARIA', 'MR  NAND KISHORE MENARIA', 'MRS  VIDHYA MENARIA', '2010-05-19', '126, PANERIYON KI MADRI, UDAIPUR', 'MDSPS-1462', 0, 2, 1, '', '', '', '0000-00-00'),
(2873, 'SHUBHAM LOHAR', 'MR PRABHU LAL LOHAR', 'MRS  TARA DEVI', '2009-08-18', '108, ROOP NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1481', 0, 2, 1, '', '', '', '0000-00-00'),
(2874, 'GAURAV PATEL', 'MR  SURESH PATEL', 'MRS  FULA JAWARIYA', '2010-02-14', 'H NO  17, SAMTA NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1487', 0, 2, 2, '', '', '', '0000-00-00'),
(2875, 'RAGHVENDRA SINGH CHOUHAN', 'MR  RAM SINGH CHOUHAN', 'MRS  KRISHNA KUNWAR CHOUHAN', '2010-04-28', '4/5, SIDDARTH COMPLEX, SECTOR NO  5, HIRAN MAGRI, NEAR SATELITE HOSPITAL, UDAIPUR', 'MDSPS-1489', 0, 2, 2, '', '', '', '0000-00-00'),
(2876, 'MANASVI AMETA', 'MR  PUSHKAR AMETA', 'MRS  MANISHA AMETA', '2010-05-21', '141, SRI JI VIHAR SEC 4', 'MDSPS-1324', 0, 2, 2, '', '', '', '0000-00-00'),
(2877, 'SHARVI JAIN', 'MR  VIKAS JAIN', 'MRS  SONAL JAIN', '2009-10-02', '99, EKLINGNATH COLONY, SEC  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-1318', 0, 2, 1, '', '', '', '0000-00-00'),
(2878, 'TAMSI MENARIA', 'MR  PREM SHANKER MENARIYA', 'MRS  ANITA MENARIYA', '2010-10-10', '99, PANERIYON KI MADRI,  UDAIPUR', 'MDSPS-1308', 0, 2, 1, '', '', '', '0000-00-00'),
(2879, 'JAYDEEP SINGH PARIHAR', 'MR  AJAY PARIHAR', 'MRS  BHAVANA PARIHAR', '2010-02-12', '1190, AADARSH NAGAR, SEC - 4, UDAIPUR', 'MDSPS-1285', 0, 2, 1, '', '', '', '0000-00-00'),
(2880, 'ROHAN RAJ SHIVANI', 'MR  VIKAS RAJ SHIVNANI', 'MRS  POOJA RAJ SHIVNANI', '2010-07-20', '27, A1 COMPLEX MANWA KHERA SEC  5', 'MDSPS-1834', 0, 2, 1, '', '', '', '0000-00-00'),
(2881, 'RAGHAV SOMANI', 'MR  RAKESH SOMANI', 'MRS  SUMITRA SOMANI', '2010-09-12', '34, PARSHWANATH NAGAR SEC, 3 UDR ', 'MDSPS-1968', 0, 2, 2, '', '', '', '0000-00-00'),
(2882, 'GARV SONI', 'MR  DILIP SONI', 'MRS  REENA SONI', '2010-06-02', '43, SAMTA NAGAR, SECT  NO  3, HIRAN MAGRI, NEAR MDS SCHOOL, UDAIPUR', 'MDSPS-1885', 0, 2, 2, '', '', '', '0000-00-00'),
(2883, 'YAASHI JOSHI', 'MR  DEEP CHANDRA JOSHI', 'MRS  RITU JOSHI', '2011-01-02', 'HOUSE NO  181, TAGORE NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1895', 0, 2, 2, '', '', '', '0000-00-00'),
(2884, 'PRADHYUMN LAKSHKAR', 'MR CHANDRA PRAKASH LAKSHKAR', 'REKHA LAKSHKAR', '2010-08-06', 'HOUSE NO 3 BHA 13 SECTOR NO 5 HIRAN MAGRI UDAIPUR RAJASTHAN', 'MDSPS-1917', 0, 2, 1, '', '', '', '0000-00-00'),
(2885, 'SIDDHI KOTHARI', 'MR  DILIP KOTHARI', 'MRS  SEEMA KOTHARI', '2010-05-19', '133, MAHAVEER NAGAR, NAVJEEVAN SOCIETY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1705', 0, 2, 2, '', '', '', '0000-00-00'),
(2886, 'DESHNA VIJAYVARGIA', 'MR  GHANSHYAM VIJAYVARGIA', 'MRS  MAINA VIJAYVARGIA', '2009-09-06', '4-GH -5, HIRAN MAGRI, SECTOR NO  4, H B  COLONY, UDAIPUR', 'MDSPS-1853', 0, 2, 2, '', '', '', '0000-00-00'),
(2887, 'DHRUVI PUJARI', 'MR  PAWAN PUJARI', 'MRS  VANITHA SHARMA', '2010-03-09', 'PLOT NO  8, OPP  NEHRU HOSTEL, BEHIND SREENATH NAMKEEN, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2285', 0, 2, 2, '', '', '', '0000-00-00'),
(2888, 'KRISHNA SHARMA', 'MR  RAMESH SHARMA', 'MRS  ANITA SHARMA', '2010-10-01', '521, KALAJI GORAJI, GULAB BAG ROAD, UDAIPUR', 'MDSPS-2286', 0, 2, 1, '', '', '', '0000-00-00'),
(2889, 'CHIRAG DANGI', 'MR  KISHAN DANGI', 'MRS  LEELA DANGI', '2009-03-28', 'SHOBHAGPURA, KAHIYON KA NOHRA, NEAR VIKAS VIDHYA MANDIR SCHOOL, UDAIPUR', 'MDSPS-1919', 0, 2, 2, '', '', '', '0000-00-00'),
(2890, 'GOURAV PATEL', 'MR  RAMESH PATEL', 'MRS  WALI KUMARI PATEL', '2009-12-23', 'H NO  11, ROSHAN NAGAR, OPP   POWER HOUSE, SAVINA, UDAIPUR', 'MDSPS-2187', 0, 2, 2, '', '', '', '0000-00-00'),
(2891, 'SIMRITA KOUR JOGI', 'MR  AVATAR SINGH JOGI', 'MRS  KALPANA KAUR JOGI', '2010-01-31', '27, ADARSH HOUSING SOCIETY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1332', 0, 2, 2, '', '', '', '0000-00-00'),
(2892, 'IJYARAJ SINGH KUMPAWAT', 'MR PRAHLAD SINGH KUMPAWAT', 'LATE   UTTAM KUNWAR', '2010-08-15', 'SARVATAM COMPLEX SEC  4', 'MDSPS-1699', 0, 2, 1, '', '', '', '0000-00-00'),
(2893, 'GARVIT POKHARNA', 'MR  ROSHAN LAL POKHARNA', 'MRS  ANJANA POKHARNA', '2010-07-27', '47 B, SAMTA NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1376', 0, 2, 1, '', '', '', '0000-00-00'),
(2894, 'KANAK VORA', 'MR PRASHANT VORA', 'MRS  MITTAL VORA', '2009-11-07', '285, SWAROOP SADAN, NEAR AGRAWAL TENT HOUSE, SOUTH SUNDERWAS, UDAIPUR', 'MDSPS-1644', 0, 2, 1, '', '', '', '0000-00-00'),
(2895, 'REYANSH AMETA', 'MR NARENDRA AMETA', 'MRS  ALPA AMETA', '2009-10-05', '19, SAMTA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1690', 0, 2, 1, '', '', '', '0000-00-00'),
(2896, 'JENIL MEHTA', 'MR  VISHAL MEHTA', 'MRS  KIRAN MEHTA', '2010-08-06', '13, EKLING COLONY, HIRAN MAGRI, NEAR BSNL OFFICE, SECT  NO  3, UDAIPUR', 'MDSPS-1737', 0, 2, 1, '', '', '', '0000-00-00'),
(2897, 'LOVISH AGARWAL', 'MR  MUKESH CHAND AGRAWAL', 'MRS  MONIKA MUKESH AGARWAL', '2010-03-18', '201, SHREE NIDHI APP , SUBHASH NAGAR, PATHO KI MAGRI, UDAIPUR', 'MDSPS-1491', 0, 2, 2, '', '', '', '0000-00-00'),
(2898, 'LAKSHITA JAWARIYA', 'MR LALIT KUMAR JAWARIYA', 'MRS  MADHU PATEL', '2009-10-07', '20, SHANTI NAGAR, SECT  NO  3, CHANDANI VATIKA KE PASS, HIRAN MAGRI, UDAIPUR', 'MDSPS-1484', 0, 2, 1, '', '', '', '0000-00-00'),
(2899, 'PRABHAT DANGI', 'MR  DHARMENDRA DANGI', 'MRS  PUSHPA DANGI', '2009-11-14', 'VAISHALI APP   ROAD, SEC - 4, UDAIPUR', 'MDSPS-1330', 0, 2, 2, '', '', '', '0000-00-00'),
(2900, 'PALASH SAINI', 'MR  LEELADHAR SAINI', 'MRS  SAROJ SAINI', '2010-01-07', '7, VIDHYA NAGAR, SEC - 4, UDAIPUR', 'MDSPS-1354', 0, 2, 2, '', '', '', '0000-00-00'),
(2901, 'TANMAY KATHURIA', 'MR  MANISH KATHURIA', 'MRS  RISHIKA KATHURIA', '2009-10-19', '1 GA 14, GAYATRI NAGAR, SEC - 5, UDAIPUR', 'MDSPS-1361', 0, 2, 1, '', '', '', '0000-00-00'),
(2902, 'ARNAV GOEL', 'DR  ARUN KUMAR', 'MRS  SAVITA GUPTA', '2010-07-24', 'LA-5, STAFF QUARTERS, UNIVERSITY CAMPUS, UDAIPUR', 'MDSPS-2296', 0, 2, 2, '', '', '', '0000-00-00'),
(2903, 'PAVITRA SANJAY', 'MR  SANJAY KAMAL', 'MRS  SUNITA V  PANICKER', '2010-04-26', '4- KHUSHA, BAGH, ROAD NO  1 KESHAV NAGAR UDR ', 'MDSPS-1840', 0, 2, 1, '', '', '', '0000-00-00'),
(2904, 'ARYAN CHOUBISA', 'MR  DINESH CHOUBISA', 'MRS  KRISHANA CHOUBISA', '2010-05-14', '433, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1456', 0, 2, 2, '', '', '', '0000-00-00'),
(2905, 'VANSH SETHIA', 'MR  RAJIV SETHIA', 'MRS  REKHA SETHIA', '2010-03-21', '3 TH 26, PRABHAT NAGAR, SEC - 5, UDAIPUR', 'MDSPS-1331', 0, 2, 1, '', '', '', '0000-00-00'),
(2906, 'TANISHQ NANDWANA', 'MR  RAJESH NANDWANA', 'MRS ', '2010-06-22', '460, PANERYON KI MADRI, UDAIPUR', 'MDSPS-1393', 0, 2, 1, '', '', '', '0000-00-00'),
(2907, 'TANISHAK JAIN', 'MR  SANJAY PORWAL (JAIN)', 'MRS  SWITI PORWAL (JAIN)', '2010-02-05', '20, NEW JAI SHREE COLONY, THOKAR CHORAHA, UDAIPUR', 'MDSPS-2180', 0, 2, 2, '', '', '', '0000-00-00'),
(2908, 'PRIYA SUHALKA', 'MR  DHARMENDRA SUHALKA', 'MRS  SEEMA SUHALKA', '2009-01-16', '129, RISHI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2122', 0, 2, 1, '', '', '', '0000-00-00'),
(2909, 'CHHAVI GARG', 'MR  VIJESH GARG', 'MRS  RAJKUMARI GARG', '2010-10-01', '48 A, SHANTI NAGAR, SEC -3, UDAIPUR', 'MDSPS-1290', 0, 2, 1, '', '', '', '0000-00-00'),
(2910, 'TRISHA TAK', 'MR  DILIP TAL', 'MRS  RAJNI TAK', '2009-12-18', '3-A, SAMTA NAGAR, NEAR MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1340', 0, 2, 2, '', '', '', '0000-00-00'),
(2911, 'SANCHI GURJAR', 'MR  SUNIL GURJAR', 'MRS  ALPA GURJAR', '2009-10-27', '6, J 9 VIP COLONY SEC  9', 'MDSPS-1482', 0, 2, 1, '', '', '', '0000-00-00'),
(2912, 'SIYA GURJAR', 'MR  SUNIL GURJAR', 'MRS  ALPA GURJAR', '2009-10-27', '6 J 9 VIP COLONY SEC  9', 'MDSPS-1483', 0, 2, 1, '', '', '', '0000-00-00'),
(2913, 'MITUL AJARIA', 'MR  THAKUR KANT SHARMA', 'MRS  BASANTI SHARMA', '2009-08-21', '26, SHASTRI NAGAR SEC  3', 'MDSPS-1570', 0, 2, 1, '', '', '', '0000-00-00'),
(2914, 'LAKSHYARAJ CHOUDHARY', 'MR  OM PRAKASH CHOUDHARY', 'MRS  PUSHPA CHOUDHARY', '2009-12-27', '724, SURYA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1580', 0, 2, 1, '', '', '', '0000-00-00'),
(2915, 'MISHIKA SINGH', 'MR UPENDRA SINGH SHEKHAWAT', 'MRS  SUNITA KANWAR', '2010-09-08', 'A-401, DWARIKA APARTMENT, A-ONE COMPLEX, MANWAKHEDA, UDAIPUR\r\nA-401, DWARIKA APARTMENT, A-ONE COMPLEX, MANWAKHEDA, UDAIPUR', 'MDSPS-1908', 0, 2, 2, '', '', '', '0000-00-00'),
(2916, 'DHEERAL KAVDIA', 'MR  RAHUL KAVDIA', 'MRS  POONAM KAVDIA', '2010-07-24', '975, SEC - 4, GYAN BAGAR, UDAIPUR', 'MDSPS-1707', 0, 2, 1, '', '', '', '0000-00-00'),
(2917, 'ROHIT DANGI', 'MR  ASHOK KUMAR DANGI', 'MRS  RADHA DANGI', '2009-08-25', '42, BADA NOKHA, NEAR KUMBHA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1360', 0, 2, 1, '', '', '', '0000-00-00'),
(2918, 'LAKSHYA PUROHIT', 'MR  KAPIL PUROHI', 'MRS  ROMI PUROHIT', '2010-08-31', 'H NO  5, BEHIND POLICE STATION, HIRAN MAGRI, SECTOR N O  6, UDAIPUR', 'MDSPS-1740', 0, 2, 2, '', '', '', '0000-00-00'),
(2919, 'SHRISHTI NAGDA', 'MR  RAVI NAGDA', 'MRS  POONAM NAGDA', '2010-10-03', '13/800, ARVIND NAGAR, SUNDERWAS, UDAIPUR', 'MDSPS-2316', 0, 2, 1, '', '', '', '0000-00-00'),
(2920, 'MANAS GANDHARV', 'MR  SANTOSH GANDHARV', 'MRS  SEEMA GANDHARV', '2010-11-01', '535, TAGORE NAGER, UDAIPUR', 'RTE-012', 0, 2, 1, '', '', '', '0000-00-00'),
(2921, 'TUSHAR BANSHIWAL', 'MR MUKESH BANSHIWAL', 'MRS  REKHA KHATIK', '2010-04-02', '417, BHOPA MAGRI, SECT  NO  3, BEHIND NEHRU HOSTEL, UDAIPUR', 'RTE-013', 0, 2, 2, '', '', '', '0000-00-00'),
(2922, 'NANDINI SONI', 'MR  AMIT SONI', 'MRS  RANI SONI', '2009-12-07', '180, JYOTI COLONY, 180, JYOTI COLONY PRATAP NAGAR', 'RTE-014', 0, 2, 1, '', '', '', '0000-00-00'),
(2923, 'DIVYANSH GANDHARV', 'MR  NARAYAN GANDHARV', 'MRS  KALPANA GANDHARV', '2009-11-28', '4-A-7, GUPTESHWER NAGAR, HIRAN MAGRI, SECT  NO  7, UDAIPUR', 'RTE-015', 0, 2, 1, '', '', '', '0000-00-00'),
(2924, 'SOMYA KUMAWAT', 'MR  VIKRAM KUMAWAT', 'MRS  ANITA KUMAWAT', '2008-07-22', '28-A, SHASTRI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'RTE-018', 0, 2, 2, '', '', '', '0000-00-00'),
(2925, 'MUKUL VAISHNAV', 'MR  ASHOK VAISHNAV', 'MRS  KIRAN VAISHNAV', '2009-07-25', 'UDAIPUR', 'RTE-017', 0, 2, 1, '', '', '', '0000-00-00'),
(2926, 'SIDDISHA KUNWAR RAJAWAT', 'MR  DILIP SINGH RAJAWAT', 'MRS  KISHMAT KUNWAR RAJAWAT', '2010-03-28', '953, GYAN NAGAR, SEC - 4, UDAIPUR', 'RTE-020', 0, 2, 1, '', '', '', '0000-00-00'),
(2927, 'SHIVANSHI SARVA', 'MR  MANISH SARVA', 'MRS  PRIYANKA SARVA', '2010-07-28', '19, SHIV NAGAR, SOUTH SUNDERWAS, UDAIPUR', 'RTE-021', 0, 2, 2, '', '', '', '0000-00-00'),
(2928, 'TEJAL LOHAR', 'MR  DINESH LOHAR', 'MRS  PRIYNKA LOHAR', '2010-10-10', 'PUROHITO KI MADRI ROAD NO  3-4 JANAK KOTRA ROAD', 'MDSPS-1480', 0, 2, 1, '', '', '', '0000-00-00'),
(2929, 'BHARTESH GAUTAM', 'MR. JEETENDRA KUMAR GAUTAM', 'MRS. KAVITA GAUTAM', '2010-07-07', 'RBH SECT. 9, SAVINA, UDAIPUR', 'MDSPS-2393', 0, 2, 1, '', '', '', '0000-00-00'),
(2930, 'BHARGAVI JAYANT INDURKAR', 'MR. JAYANT INDURKAR', 'MRS. MANJUSHRI INDURKAR', '2010-12-07', 'HOUSE NO. 38, SHANTI NAGAR, SECT. 3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2401', 0, 2, 1, '', '', '', '0000-00-00'),
(2931, 'MEHAL SANADHYA', 'MR. BHUPESH SANADHYA', 'MRS. YAMINI SANADHYA', '2010-06-17', '121, VERMA COLONY, SAVINA, UDAIPUR', 'MDSPS-2408', 0, 2, 1, '', '', '', '0000-00-00'),
(2932, 'BHAVYA GEHLOT', 'MR  PRAHLAD TAILOR', 'MRS  USHA TAILOR', '2008-03-02', '520, HIRAN MAGRI, TEGORE NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2235', 0, 3, 2, '', '', '', '0000-00-00'),
(2933, 'MRINAL NAMDEV', 'MR  DHARMENDRA NAMA', 'MRS  SEEMA NAMA', '2009-07-25', 'NEAR SAHKARI UPBHOKTA, RAKAMPURA ROAD, UDAIPUR', 'MDSPS-2260', 0, 3, 2, '', '', '', '0000-00-00'),
(2934, 'KAVYA JAIN', 'MR  MANOJ JAIN', 'MRS  RITU JAIN', '2009-04-02', '1378, ADARSH NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2069', 0, 3, 1, '', '', '', '0000-00-00'),
(2935, 'BHAVYA YADAV', 'MR  BAHADUR YADAV', 'MRS  SUNITA YADAV', '2008-10-07', '13, TYPE-4, TELECOM COLONY, NEAR MANWA KHEDA, HIRAN MAGRI, UDAIPUR', 'MDSPS-1928', 0, 3, 2, '', '', '', '0000-00-00'),
(2936, 'BHAVYA JAIN', 'MR  YOGESH JAIN', 'MRS  NILAM JAIN', '2008-11-04', '1394, GAYATRI NAGAR, SECT  NO  5, BANK COLONY, HIRAN MAGRI, UDAIPUR', 'MDSPS-1365', 0, 3, 2, '', '', '', '0000-00-00'),
(2937, 'ISHITA BODANA', 'MR  KAMLESH BODANA', 'MRS  KUMUD BODANA', '2009-06-20', '24, NEW SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2166', 0, 3, 2, '', '', '', '0000-00-00'),
(2938, 'DIVISHA SINGH ATTRAY', 'MR  VIKAS SINGH ATTRAY', 'MRS  SANTOSH ATTRAY', '2009-01-31', '5, TRIMURTI COMPLEX, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-1544', 0, 3, 2, '', '', '', '0000-00-00'),
(2939, 'MAYANK VERMA', 'MR  JINENDRA VERMA', 'MRS  MADHU VERMA', '2009-01-14', 'L 113, 117, BAPPA NAGAR, SEC -6, UDAIPUR', 'MDSPS-1552', 0, 3, 1, '', '', '', '0000-00-00'),
(2940, 'TANISHQ PATEL', 'MR HEERALAL DANGI', 'MRS  KAMAL PATEL', '2008-10-18', '233, VELLA, JHAMAR KOTRA ROAD, EKLINGPURA, UDAIPUR', 'MDSPS-1557', 0, 3, 1, '', '', '', '0000-00-00'),
(2941, 'YUVRAJ PUROHIT', 'MR  SANJAY PUROHIT', 'MRS  MEENAKSHI PUROHIT', '2009-03-17', '4-K-14, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1670', 0, 3, 2, '', '', '', '0000-00-00'),
(2942, 'DIVYAPRATAP SINGH RAO', 'MR AJEET SINGH RAO', 'MRS  GAYATRI SINGH', '2009-10-09', '2-KA-48, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1655', 0, 3, 1, '', '', '', '0000-00-00'),
(2943, 'VANSHIKA SINGH JADOUN', 'MR  SATYENDRA SINGH', 'MRS  RAJSHREE', '2009-01-17', '58  RISHI NAGAR, NEAR GAS GODOWN, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1412', 0, 3, 1, '', '', '', '0000-00-00'),
(2944, 'KHUSH VIJAYVERGIA', 'MR  PRADEEP VIJAYVERGIA', 'MRS  KIRAN VIJAYVARGIA', '2009-06-22', '3-P-83, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1303', 0, 3, 2, '', '', '', '0000-00-00'),
(2945, 'HIMANSHI VIJAYVERGIA', 'MR  MANISH VIJAYVERGIA', 'MRS  KAVITA VIJAYVARGIA', '2008-08-29', '3-P-83, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1304', 0, 3, 2, '', '', '', '0000-00-00'),
(2946, 'THIYA JAIN', 'MR  HITESH JAIN', 'MRS  NEHA JAIN', '2009-01-03', 'H  NO  2 KESHAV NAGAR UNIVERCITY ROAD', 'MDSPS-1278', 0, 3, 1, '', '', '', '0000-00-00'),
(2947, 'JATIN SEJWANI', 'MR  AJAY SEJWANI', 'MRS  SEEMA SEJWANI', '2010-02-11', '1-P-44, SECT  NO  5, GYATRI NAGAR, HIRAN MAGRI, UDAIPUR', 'MDSPS-1951', 0, 3, 2, '', '', '', '0000-00-00'),
(2948, 'KANISHKA RATHORE', 'MR  RAGHVENDRA PRATAP SINGH RATHORE', 'MRS  ANITA RATHORE', '2009-02-07', 'H NO  21, A-ONE COMPLEX, MANWAKHEDA JHAMAR KOTRA ROAD,UDAIPUR', 'MDSPS-1706', 0, 3, 2, '', '', '', '0000-00-00'),
(2949, 'KAVYANSHI MEHTA', 'MR  NEERAJ MEHTA', 'MRS  SHEETAL MEHTA', '2008-11-16', '24, ASSTHA NIRMAL VIHAR, HIRAN MAGRI, SECT  NO  3,  UDAIPUR', 'MDSPS-1724', 0, 3, 2, '', '', '', '0000-00-00'),
(2950, 'YASHIKA SHRIMALI', 'MR  OM PRAKASH SHRIMALI', 'MRS  SHEETAL SHRIMALI', '2009-05-14', '12TH B, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1743', 0, 3, 1, '', '', '', '0000-00-00'),
(2951, 'BHAVIK SHARMA', 'MR  PANKAJ SHARMA', 'MRS  REENA ACHARYA', '2009-09-26', '2, SHIV NAGAR, SOUTH SUNDERWAS, UDAIPUR', 'MDSPS-2089', 0, 3, 2, '', '', '', '0000-00-00'),
(2952, 'RUDRAKSH DEVPURA', 'MR  KAMLESH KUMAR DEVPURA', 'MRS  NIRMALA DEVPURA', '2008-10-02', '95, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2146', 0, 3, 1, '', '', '', '0000-00-00'),
(2953, 'FALAK MALI', 'MR  DILIP MALI', 'MRS  PUSHPA MALI', '2009-08-04', '908, ROAD NO  1, MADRI INDUSTRIAL AREA, UDAIPUR', 'MDSPS-2066', 0, 3, 2, '', '', '', '0000-00-00'),
(2954, 'NAITIK WADHWANI', 'MR  RAVI WADHWANI', 'MRS  SALONI WADHWANI', '2009-02-18', '22, HANUMAN NAGAR, MANVA KHEDA, UDAIPUR', 'MDSPS-1700', 0, 3, 2, '', '', '', '0000-00-00'),
(2955, 'AKSH SONI', 'MR  LOKESH SONI', 'MRS  DEEPIKA SONI', '2009-03-29', 'HOUSE NO  8, ADARSH NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2168', 0, 3, 1, '', '', '', '0000-00-00'),
(2956, 'NIDHI JOSHI', 'MR  SACHIN JOSHI', 'MRS  VIBHA JOSHI', '2009-07-03', '3-K-26, SECTOR NO  5, PRABHAT NAGAR, HIRAN MAGRI, UDAIPUR', 'MDSPS-2119', 0, 3, 2, '', '', '', '0000-00-00'),
(2957, 'ANSHIKA KUMAWAT', 'MR  RAJESH KUMAWAT', 'MRS  BHARTI KUMAWAT', '2009-06-18', '3G 6 SEC  11', 'MDSPS-1963', 0, 3, 2, '', '', '', '0000-00-00'),
(2958, 'LAVITRA ARYA', 'MR  PANKAJ ARYA', 'MRS  SARITA ARYA', '2009-03-02', '317, CHANAKYAPURI, SECT  NO  4, BEHIND GNPS SCHOOL, HIRAN MAGRI, UDAIPUR', 'MDSPS-1933', 0, 3, 1, '', '', '', '0000-00-00'),
(2959, 'JIYA GUPTA', 'MR  SUBHASH CHANDRA GUPTA', 'MRS  MANISHA GUPTA', '2009-09-01', '79, RISHI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1305', 0, 3, 2, '', '', '', '0000-00-00'),
(2960, 'PRIYA MITTAL', 'MR  RAKESH MITTAL', 'MRS  SEEMA MITTAL', '2009-04-09', 'SEC  3 HIRAN MAGRI UDAIPUR H  NO  NEW NIRMAL VIHAR', 'MDSPS-1436', 0, 3, 1, '', '', '', '0000-00-00'),
(2961, 'BHAVIKA DANGI', 'MR  KISHANLAL DANGI', 'MRS  BENI KUMARI DANGI', '2009-09-27', 'PLOT NO  5, NEAR POLATRY FORM, SECT  NO  3, PATEL BHAWAN, UDAIPUR', 'MDSPS-1349', 0, 3, 1, '', '', '', '0000-00-00'),
(2962, 'MANASVI BHATI', 'MR PAVINDRA NATH BHATI', 'MRS  DIMPLE BHATI', '2010-06-27', '50, SANJAY GANDHI NAGAR HIRAN MAGRI SEC  8 UDAIPUR', 'MDSPS-1548', 0, 3, 2, '', '', '', '0000-00-00'),
(2963, 'VANSHIKA JAIN', 'MR  KAMLESH JAIN', 'MRS  NEELAM JAIN', '2009-04-28', '2-F-16-B, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2099', 0, 3, 1, '', '', '', '0000-00-00'),
(2964, 'KRISHNA MALAV', 'MR  NARESH KUMAR MALAV', 'MRS  ANURADHA MALAV', '2009-02-06', 'HOUSE NO  6, SHIVALYA, FRONT OF GAYATRI PETROL PUMP, JHAMAR KOTRA ROAD, HIRAN MAGRI, SECT  NO  6, UDAIPUR', 'MDSPS-2169', 0, 3, 1, '', '', '', '0000-00-00'),
(2965, 'TANMAY SHARMA', 'MR  KISHOR SHARMA', 'MRS  POORNIMA SHARMA', '2009-05-09', '148, TULSI NIWAS, NAKODA NAGAR, DHAUJI KI BAWARI, UDAIPUR', 'MDS-SS-2928', 0, 3, 2, '', '', '', '0000-00-00'),
(2966, 'MAYANK JAIN', 'MR  PRAKASH JAIN', 'MRS  PARVATI JAIN', '2009-05-30', '3-DHA-5, PRABHAT NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-1299', 0, 3, 2, '', '', '', '0000-00-00'),
(2967, 'MILAN JAIN', 'MR  PUKHRAJ JAIN', 'MRS  KIRAN JAIN', '2009-05-30', '20, SAMTA NAGAR, HIRAN MAGRI, SEC  NO  3, NEAR MDS SCHOOL, UDAIPUR', 'MDSPS-1364', 0, 3, 1, '', '', '', '0000-00-00'),
(2968, 'KRISHNA CHOUDHARY', 'MR  PRADEEP KUMAR CHOUDHARY', 'MRS  SUMITRA CHOUDHARY', '2009-04-28', '366-C, SEC  3, JAGRATI VILA, SAVINA, HIRAN MAGRI, UDAIPUR', 'MDSPS-1605', 0, 3, 2, '', '', '', '0000-00-00'),
(2969, 'VAIBHAV SINGH PARIHAR', 'MR  RAMESH PARIHAR', 'MRS  MONIKA PARIHAR', '2009-05-25', 'H NO  114, HIRAN MAGRI, SECT  NO  3, VIVEK NAGAR, UDAIPUR', 'MDSPS-1460', 0, 3, 1, '', '', '', '0000-00-00'),
(2970, 'MADHAV SHARMA', 'MR  SHIV KUMAR SHARMA', 'MRS  NISHA SHARMA', '2009-02-11', '783, LAXMI NAGAR, PUROHITON KI MADRI, ROAD NO  3-4, UDAIPUR', 'MDSPS-1676', 0, 3, 2, '', '', '', '0000-00-00'),
(2971, 'DIKSHANT VAGRECHA', 'MR SUNIL VAGRECHA', 'MRS TARA VGRECHA', '2009-01-31', 'HIRAN MAGRI, SECT  NO  3, UDAIPUR 15-16 TILSH NAGAR', 'MDSPS-1773', 0, 3, 2, '', '', '', '0000-00-00'),
(2972, 'NAITIK LODHA', 'MR  KAMLESH LODHA', 'MRS  MONIKA LODHA', '2009-08-01', 'SUBHASH NAGAR, ROAD NO  3, HOUSE NO  13, UDAIPUR', 'MDSPS-1301', 0, 3, 1, '', '', '', '0000-00-00'),
(2973, 'KHYATI KANWAR SHEKHAWAT', 'MR  ARVIND SINGH SHEKHAWAT', 'MRS  MAMTA RAJPUT', '2009-07-09', '62, SAMTA NAGAR, HIRAN MAGRI, SECT  NO  3, NEAR MDS SCHOOL, UDAIPUR', 'MDSPS-1691', 0, 3, 2, '', '', '', '0000-00-00'),
(2974, 'HARDIK DANGI', 'MR  LOKESH KUMAR DANGI', 'MRS  SHILPA DANGI', '2009-01-11', 'L-395, DOUBLE STORY, SECT  NO  9, SAVINA, UDAIPUR', 'MDSPS-1559', 0, 3, 2, '', '', '', '0000-00-00'),
(2975, 'MONIKA DANGI', 'MR  MOHAN LAL DANGI', 'MRS  BHAWARI DANGI', '2009-04-06', 'BUS STAND, LAKADWAS', 'MDSPS-1584', 0, 3, 2, '', '', '', '0000-00-00'),
(2976, 'MEENAKSHI PATEL', 'MR  PUSHKAR PATEL', 'MRS  JASHODA PATEL', '2009-03-10', 'TRIMURTI COMPLEX, SECT  NO  4, UDAIPUR', 'MDSPS-1366', 0, 3, 2, '', '', '', '0000-00-00'),
(2977, 'RISHI LOHAR', 'MR  KAILASH LOHAR', 'MRS  SAJAL LOHAR', '2008-11-24', '272/73 NAKODA NAGAR DHAWI JI KI BAWRI', 'MDSPS-1400', 0, 3, 1, '', '', '', '0000-00-00'),
(2978, 'ARCHI GEHI', 'MR  MANISH GEHI', 'MRS  BHARTI GEHI', '2008-09-27', 'T-3, HIRAN MAGRI, SECT  NO  5, NEAR UDAI PARK, UDAIPUR', 'MDSPS-1359', 0, 3, 2, '', '', '', '0000-00-00'),
(2979, 'RUDRAKSH MALVIYA', 'MR  GOPAL LAL LOHAR', 'MRS  MANJU LOHAR', '2008-11-26', '757, SURYA NAGAR, SECT  NO  3, UDAIPUR', 'MDSPS-1362', 0, 3, 1, '', '', '', '0000-00-00'),
(2980, 'HIMANSHI PAREEK', 'MR  VINOD KUMAR PAREEK', 'MRS  PUJA PAREEK', '2009-01-12', '203, NEW VIDHYA NAGAR, OPP  SILVER SQUIRE, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-1877', 0, 3, 2, '', '', '', '0000-00-00'),
(2981, 'SHREYAS SAIKHEDKAR', 'MR  PRAVEEN SAIKHEDKAR', 'MRS  DEEPTI SAIKHEDKAR', '2009-05-04', '25, BALAJI NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR MANWA KHEDA ROAD', 'MDSPS-2171', 0, 3, 2, '', '', '', '0000-00-00'),
(2982, 'SAIYAM JAIN', 'MR  SHAILENDRA JAIN', 'MRS  PURNIMA JAIN', '2009-04-21', '30- EKLING COLONY, SEC 3 UDAIPUR BEHIND RELANCE FRESH, UDAIPUR', 'MDSPS-1903', 0, 3, 2, '', '', '', '0000-00-00'),
(2983, 'CHIRAG SINGH JADOUN', 'MR  JAGDISH SINGH JADOUN', 'LATE MRS  SONU KUMARI JADOUN', '2008-08-06', '56, SUKHADIYA NAGAR, HIRAN MAGRI, SEC  NO  3, UDAIPUR', 'MDSPS-1855', 0, 3, 2, '', '', '', '0000-00-00'),
(2984, 'PRACHI SACHDEV', 'MR  MANOHAR SACHDEV', 'MRS  SANGEETA SACHDEV', '2008-03-23', '2-G-25, SHANTI NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-1478', 0, 3, 1, '', '', '', '0000-00-00'),
(2985, 'RUDRAKSH SHARMA', 'MR  GANPAT LAL SHARMA', 'MRS  HANSA SHARMA', '2008-12-23', 'EKLINGPURA, JHAMAR KOTRA ROAD, PO  KALADWAS GIRWA, UDAIPUR', 'MDSPS-1452', 0, 3, 1, '', '', '', '0000-00-00'),
(2986, 'KHUSHI MATHUR', 'MR  ARUN MATHUR', 'MRS  YOGITA MATHUR', '2008-12-03', '4-AV-21, RHB COLONY, GOVERDHAN VILAS, UDAIPUR', 'MDSPS-2301', 0, 3, 2, '', '', '', '0000-00-00'),
(2987, 'KASHISH SHARMA', 'MR  DINESH SHARMA', 'MRS  TARA SHARMA', '2007-10-03', '125-C, PRATAP NAGAR, NEAR CHAMUNDA MATA TEMPLE, UDAIPUR', 'MDSPS-1485', 0, 3, 1, '', '', '', '0000-00-00'),
(2988, 'LAKSHY RAJ DANGI', 'MR  BHERU LAL DANGI', 'MRS  KAMLA DEVI', '2009-03-28', '41, BADA NOKHA, NEAR KUMBHA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1490', 0, 3, 2, '', '', '', '0000-00-00'),
(2989, 'JINISHA SISODIA', 'MR  PRATAP SINGH SISODIA', 'MRS  POONAM KUNWAR', '2008-12-29', '2-B, SHREE COLONY, PANERIYON KI MADRI', 'MDSPS-1514', 0, 3, 2, '', '', '', '0000-00-00'),
(2990, 'HARSHIT MENARIA', 'MR  LAXMI LAL MENARIA', 'MRS  KUSUM MENARIA', '2008-10-23', 'KANPUR, UDAIPUR', 'MDSPS-1533', 0, 3, 1, '', '', '', '0000-00-00'),
(2991, 'ANKIT RANJAN', 'MR  RAVI RANJAN', 'MRS  KAMLA  DEVI', '2009-01-23', '74, NEW VIDYA NAGAR, UNIVERSITY COLONY, SECT  NO  4, UDAIPUR', 'MDSPS-1319', 0, 3, 2, '', '', '', '0000-00-00'),
(2992, 'PRAGYA MEGHWAL', 'MR  MOHAN LAL MEGHWAL', 'MRS  YASHWANTI', '2009-09-19', 'HOUSE NO  266, MDS SCHOOL ROAD, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2183', 0, 3, 1, '', '', '', '0000-00-00'),
(2993, 'TARUNA JHALA', 'MR  HEM SINGH JHALA', 'MRS  URMILA KUNWAR', '2009-02-16', '31, NEW SHANTI NAGAR SEC 3', 'MDSPS-1865', 0, 3, 1, '', '', '', '0000-00-00'),
(2994, 'YASH PRATAP SINGH RATHORE', 'MR  KOMAL SINGH RATHORE', 'MRS  PREETI KUNWAR RATHORE', '2009-01-22', 'H NO  3 NA-4, RATHORE NIWAS, PRATAP NAGAR, SEC  5 HIRAN MAGRI', 'MDSPS-1632', 0, 3, 2, '', '', '', '0000-00-00'),
(2995, 'PALASH LUNJJ', 'MR  BHARAT LUNJJ', 'MRS  SHARDA LUNJJ', '2008-09-29', '1-BA-11, GAYATRI NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-1994', 0, 3, 1, '', '', '', '0000-00-00'),
(2996, 'KHUSHALI KUMAWAT', 'MR  MANISH KUMAWAT', 'MRS  BARKHA KUMAWAT', '2009-03-21', '35-E, ADARSH NAGAR, UNIVERSITY ROAD, UDAIPUR', 'MDSPS-2304', 0, 3, 1, '', '', '', '0000-00-00'),
(2997, 'BHARGAVI  RATHORE', 'MR  BHAWANI SINGH RATHORE', 'MRS  NEELU RATHORE', '2008-12-27', '7, NEW BALAJI NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1338', 0, 3, 1, '', '', '', '0000-00-00'),
(2998, 'CHERIL MALWIYA', 'MR  BHUPENDRA LOHAR', 'MRS  BHAGWATI LOHAR', '2008-07-25', 'VILLAGE EKLINGPURA, POST KALADWAS, UDAIPUR SIYAL PURN KHETPAL COLONY', 'MDSPS-1886', 0, 3, 2, '', '', '', '0000-00-00'),
(2999, 'PRANAY MANDAWARA', 'MR  KAMLESH MANDAWARA', 'MRS  AASHA MANDAWARA', '2009-01-16', '14/996, WARD NO  33, GLASS FACTORY, MAIN ROAD, UDAIPUR', 'MDSPS-2306', 0, 3, 1, '', '', '', '0000-00-00'),
(3000, 'ISHIKA GARG', 'MR  NARESH GARG', 'MRS  CHETNA GARG', '2009-04-26', '48-A, SHANTI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2307', 0, 3, 1, '', '', '', '0000-00-00'),
(3001, 'RAKSHITA JAIN', 'MR  SUNIL JAIN', 'MRS  REENA JAIN', '2009-02-16', '19, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1733', 0, 3, 1, '', '', '', '0000-00-00'),
(3002, 'PRANAV AMETA', 'MR  KAUSHAL AMETA', 'MRS  RENUKA AMETA', '2009-09-20', '624, SECT  9, NEAR A WATER TANK, SAVEENA KHEDA, UDAIPUR', 'MDSPS-1939', 0, 3, 1, '', '', '', '0000-00-00'),
(3003, 'DHANI AMETA', 'MR  CHETAN PRAKASH AMETA', 'MRS  VINITA AMETA', '2009-11-20', '624, SECT  NO  9, SAVINA, NEAR WATER TANK, UDAIPUR', 'MDSPS-1940', 0, 3, 1, '', '', '', '0000-00-00'),
(3004, 'KHUSHBOO PATEL', 'MR  KISHAN LAL PATEL', 'MRS  BASANTI BAI', '2009-09-02', 'PUROHITON MADRI, UDAIPUR 42/75 AKASHWANI KE SAMNE', 'MDSPS-1459', 0, 3, 2, '', '', '', '0000-00-00'),
(3005, 'JHEEL JAIN', 'MR  MIKESH JAIN', 'MRS  MAMTA JAIN', '2008-12-30', '30, SARVARITU VILAS, NEAR JAIN MANDIR, UDAIPUR', 'MDSPS-2125', 0, 3, 1, '', '', '', '0000-00-00'),
(3006, 'UTKARSH JOSHI', 'MR  ABHINAV JOSHI', 'MRS  PRIYANKA JOSHI', '2008-08-24', '1-DA-12,HOUSING BOARD SOCIETY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1626', 0, 3, 1, '', '', '', '0000-00-00'),
(3007, 'KIMAYA SOMANI', 'DR  SHAILENDRA SOMANI', 'DR  NIDHI MAHESHWARI', '2009-03-05', '25,TILAK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1536', 0, 3, 2, '', '', '', '0000-00-00'),
(3008, 'SNEHAL SINGH PANWAR', 'MR  DEVENDRA SINGH PANWAR', 'MRS  DIMPLE PANWAR', '2009-01-01', '60, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'RTE-001', 0, 3, 1, '', '', '', '0000-00-00'),
(3009, 'TUSHAR KALRA', 'MR  SATISH KALRA', 'MRS  KARISHMA KALRA', '2008-08-09', '45, KRISHNA VIHAR, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'RTE-002', 0, 3, 1, '', '', '', '0000-00-00'),
(3010, 'DHRUVI JAIN', 'MR  KAMLESH JAIN', 'MRS  KALPANA JAIN', '2009-03-20', '27-B, SHASTRI NAGAR, HIRAN MAGRI, SECT  NO  3, NEAR KAKA HELTH CLUB, UDAIPUR', 'RTE-010', 0, 3, 1, '', '', '', '0000-00-00'),
(3011, 'NIYATI VAISHNAV', 'MR  DURGESH VAISHNAV', 'MRS  MEENA VAISHNAV', '2008-07-25', 'LAKDWAS GAJANAND JI KI MANDIR KE PASS, UDAIPUR', 'MDSPS-1782', 0, 3, 1, '', '', '', '0000-00-00'),
(3012, 'JATIN UJIRPURIA', 'MR  TEJPAL UJIRPURIA', 'MRS  ASHA', '2009-08-06', 'SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2319', 0, 3, 1, '', '', '', '0000-00-00'),
(3013, 'TUSHAR MANDAWARA', 'MR  MAHESHWAR MANDAWARA', 'Mrs  Hemlata Mandawara', '2009-08-26', 'SEC - 7, UDAIPUR', 'RTE-003', 0, 3, 2, '', '', '', '0000-00-00'),
(3014, 'NIRAL MAHESHWARI', 'MR VIJAY MAHESHWARI', 'MRS. KIRAN MAHESHWARI', '2008-12-26', '301, OSTWAL PLAZA SUNDERWAS', 'RTE-006', 0, 3, 2, '', '', '', '0000-00-00'),
(3015, 'CHIRAG SHARMA', 'MR  RAMESH CHANDRA SHARMA', 'MRS  KANTA SHARMA', '2009-09-07', '2-K-65, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'RTE-007', 0, 3, 1, '', '', '', '0000-00-00'),
(3016, 'LAKSHYARAJ  SINGH  RAJAWAT', 'MR SHIV SINGH RAJAWAT', 'MRS  ANAND KANWAR', '2009-08-13', 'HOUSE NO  4-KHA-1, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'RTE-009', 0, 3, 1, '', '', '', '0000-00-00'),
(3017, 'KARTIK NAGDA', 'MR  RADHA KISHAN NAGDA', 'MRS  SITA NAGDA', '2009-01-09', 'PLOT NO  6, GOKUL VILLAGE, TITARI, UDAIPUR', 'MDSPS-2327', 0, 3, 1, '', '', '', '0000-00-00'),
(3018, 'MAHI JAIN', 'MR. JAMBU KUMAR JAIN', 'MRS. PRIYANKA JAIN', '2009-01-15', 'PANCHVATI STREET NO. 3, NEAR TUSHAR VATIKA, DUNGARPUR', 'MDSPS-2390', 0, 3, 2, '', '', '', '0000-00-00'),
(3019, 'MAYANK GAUTAM', 'MR. JEETENDRA KUMAR GAUTAM', 'MRS. KAVITA GAUTAM', '2009-03-10', 'RBH, SECT. 9, SAVINA, UDAIPUR', 'MDSPS-2394', 0, 3, 1, '', '', '', '0000-00-00'),
(3020, 'KUSHAGRA SAINI', 'MR  KAILASH SAINI', 'MRS  POOJA SAINI', '2008-05-09', '150, MALI COLONY, MAIN ROAD, NEAR COMMUNITY HALL, UDAIPUR', 'MDSPS-2206', 0, 4, 2, '', '', '', '0000-00-00'),
(3021, 'SAMYAK NANDAWAT', 'MR  BHARAT NANDAWAT', 'MRS  ANJANA JAIN', '2008-01-11', '65, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2207', 0, 4, 2, '', '', '', '0000-00-00'),
(3022, 'NIKSHIT KANODIA', 'MR  PIYUSH KUMAR KANODIA', 'MRS  SNEHA KANODIA', '2008-02-29', '40, SHUBHAS NAGAR, ROAD NO  2, OPP  B N  COLLEGE, UDAIPUR', 'MDSPS-2208', 0, 4, 2, '', '', '', '0000-00-00'),
(3023, 'CHIRAYU LOHAR', 'MR  RAJU LOHAR', 'MRS  LALITA LOHAR', '2007-05-04', 'H NO  29, CHITRAKUT NAGAR, NEAR DATTATRAYE ASHRAM,  UDAIPUR', 'MDSPS-2213', 0, 4, 2, '', '', '', '0000-00-00'),
(3024, 'PRIYESH MEHTA', 'MR  VIJESH MEHTA', 'MRS  MAMTA MEHTA', '2008-11-22', '13/804, ARVIND NAGAR, INFRONT OF JAIN UPASARA SUNDERWAS, UDAIPUR', 'MDSPS-2215', 0, 4, 2, '', '', '', '0000-00-00'),
(3025, 'DARSHIL RATHOUR', 'MR ROSHAN SINGH RATHOUR', 'MRS  SHEETAL DEVI', '2009-02-01', 'NEW JAISHREE COLONY, UDAIPUR', 'MDSPS-2216', 0, 4, 2, '', '', '', '0000-00-00'),
(3026, 'SACHIN AUDICHYA', 'MR  RAJKUMAR AUDICHYA', 'MRS  MEENAKSHI AUDICHYA', '2008-03-07', '4-G-47, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2238', 0, 4, 2, '', '', '', '0000-00-00'),
(3027, 'HARSH NAGAR', 'MR  VIRAL NAGAR', 'MRS  MONIKA NAGAR', '2007-11-01', '16, VRINDAWAN VIHAR, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2250', 0, 4, 2, '', '', '', '0000-00-00'),
(3028, 'SPARSH BANERJEE', 'MR  KAUSHIK BANERJEE', 'MRS  MEGHNA BANERJEE', '2008-09-15', 'FLAT NO  704, ARAWALI HEIGHTS, ADARSH COLONY, PULA, UDAIPUR', 'MDSPS-2258', 0, 4, 2, '', '', '', '0000-00-00'),
(3029, 'DHRONIL JAIN', 'MR  PANKAJ TATER', 'MRS  RATNA JAIN', '2007-06-09', '248, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1947', 0, 4, 1, '', '', '', '0000-00-00'),
(3030, 'RISHABH INTODIA', 'MR  BHARAT KUMAR INTODIA', 'MRS  KANTA INTODIA', '2008-01-03', '259, SECTOR 4, CHANAKYAPURI, HIRAN MAGRI, UDAIPUR', 'MDSPS-1242', 0, 4, 2, '', '', '', '0000-00-00'),
(3031, 'PURVI JAIN', 'MRS PAYAL JAIN', 'MRS  PAYAL JAIN', '2009-01-16', '92, NAKODA COMPLEX, SECT  NO  4, UDAIPUR', 'MDSPS-2270', 0, 4, 2, '', '', '', '0000-00-00'),
(3032, 'JANHAVI SAHU', 'MR  SANTOSH KUMAR TELI', 'MRS  YOJANA TELI', '2008-09-11', 'QTR  NO   III/03, MANWA KHEDA TELECOM COLONY, SECT  NO  6, HIRAN MAGRI, UDAIPUR', 'MDSPS-1159', 0, 4, 2, '', '', '', '0000-00-00'),
(3033, 'MANMOHAN SINGH', 'DR  RAJU SINGH', 'MRS  DEVI BAI', '2007-07-25', 'NEHRU HOSTEL, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1493', 0, 4, 1, '', '', '', '0000-00-00'),
(3034, 'NAYANIKA SINGHAL', 'MR  ATUL SINGHAL', 'MRS  PRERNA SINGHAL', '2008-04-23', 'IV/12, BSNL TELECOM COLONY, MANWAKHEDA, HIRAN MAGRI, SECT  NO  6, UDAIPUR', 'MDSPS-1158', 0, 4, 2, '', '', '', '0000-00-00'),
(3035, 'ADITI ARORA', 'MR  DUSHYANT ARORA', 'MRS  KUSUM ARORA', '2009-01-07', '899, SECT  NO  4, HIRAN MAGRI, UDAIPUR SEC  4 POOJA NAGAR', 'MDSPS-1711', 0, 4, 2, '', '', '', '0000-00-00'),
(3036, 'KARTIKEYA PANDYA', 'MR  MANOJ PANDYA', 'MRS  KAVITA PANDYA', '2007-10-29', '3-M-26, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1766', 0, 4, 2, '', '', '', '0000-00-00'),
(3037, 'MEESHA VERMA', 'MR  RAJEEV VERMA', 'MRS  TANU VERMA', '2007-11-05', '42, SAMTA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1166', 0, 4, 2, '', '', '', '0000-00-00'),
(3038, 'CHARVI SONI', 'MR  DINESH SONI', 'MRS  EKTA SONI', '2008-06-28', '51, KASHIPURI, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1192', 0, 4, 1, '', '', '', '0000-00-00'),
(3039, 'RONAK TELI', 'MR  PARAS RAM TELI', 'MRS  NIRMALA TELI', '2007-10-12', 'ROAD NO  1, OPP  KUMAVAT & COMPANY, TELIYO KA MOHALA, PUROHITO KI MADRI, MIA, UDAIPUR', 'MDSPS-1208', 0, 4, 1, '', '', '', '0000-00-00'),
(3040, 'GARGI PALIWAL', 'MR  LALIT PALIWAL', 'MRS  KUMUD PALIWAL', '2008-11-07', '6, SAMRAT NAGAR TITARDI UDR ', 'MDSPS-1265', 0, 4, 2, '', '', '', '0000-00-00'),
(3041, 'TANISHKA CHUNDAWAT', 'MR  BHUPENDRA SINGH CHUNDAWAT', 'MRS  KOUSHALYA KUNWAR', '2007-01-04', '55-A, ADARSH HOUSING SOCIETY, VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1267', 0, 4, 1, '', '', '', '0000-00-00'),
(3042, 'RUDRAKSHA SHARMA', 'MR  SANDEEP SHARMA', 'MRS  NEHA SHARMA', '2007-08-19', '150, DHOLI MAGRI BEDWAS', 'MDSPS-1369', 0, 4, 2, '', '', '', '0000-00-00'),
(3043, 'MAHI NYATI', 'MR  GANPAT LAL NYATI', 'MRS  NEELAM NYATI', '2008-10-25', '71, VIVEK NAGAR SEC  3', 'MDSPS-1468', 0, 4, 2, '', '', '', '0000-00-00'),
(3044, 'YASHVI KHANDELWAL', 'DR  ANIL KUMAR BHIWAL', 'DR  POONAM KHANDELWAL', '2008-08-11', 'GEETANJALI MEDICAL COLLEGE, UDAIPUR', 'MDSPS-1470', 0, 4, 1, '', '', '', '0000-00-00'),
(3045, 'DIYA DAK', 'MR  VIJAY KUMAR DAK', 'MRS  KIRAN DAK', '2008-09-25', '557, TAGORE NAGAR, HIRAN MAGRI, SECTOR NO  4, UDAIPUR', 'MDSPS-1811', 0, 4, 2, '', '', '', '0000-00-00'),
(3046, 'EVA BHAMBHANI', 'MR  MUKESH BHAMBHANI', 'MRS  NUPUR BHAMBHANI', '2008-06-02', '49-50, A ONE COMPLEX, MANWA KHEDA, OPP, SHEETAL HEIGHTS, UDAIPUR', 'MDSPS-1923', 0, 4, 2, '', '', '', '0000-00-00'),
(3047, 'MRIDULA MAHAWAR', 'MR DHARMENDRA KUMAR MAHAWAR', 'MRS  PUSHPA MAHAWAR', '2008-04-16', '163, ROOP NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1757', 0, 4, 1, '', '', '', '0000-00-00'),
(3048, 'DHRUV POKHARANA', 'MR  ROSHAN LAL POKHARNA', 'MRS  MEENA POKHARNA', '2008-03-30', '47-B, SAMTA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1151', 0, 4, 1, '', '', '', '0000-00-00'),
(3049, 'KRISHNA MITTAL', 'MR  RAKESH MITTAL', 'MRS  SEEMA MITTAL', '2008-02-25', 'H NO 9, NEW NIRMAL VIHAR H  M  SEC  3', 'MDSPS-1437', 0, 4, 2, '', '', '', '0000-00-00'),
(3050, 'KHUSH GORANA', 'MR  RAJESH LOHAR', 'MRS  KANCHAN LOHAR', '2008-01-10', '8 B, ANAND VIHAR 1, TEKRI MADRI LINK ROAD, UDAIPUR', 'MDSPS-1520', 0, 4, 2, '', '', '', '0000-00-00'),
(3051, 'KHUSHI AGRAWAL', 'MR  KAMAL AGRAWAL', 'MRS  DEEPIKA AGRAWAL', '2008-11-19', '61/B, NEW AADARSH NAGAR, OPP  UDAIPUR SCHOOL, GARIYAWAS', 'MDSPS-1521', 0, 4, 2, '', '', '', '0000-00-00'),
(3052, 'NANDINI SHARMA', 'MR  SOMESH SHARMA', 'MRS  MANISHA SHARMA', '2008-08-10', '56, NEW URJA VIHAR, GUPTESHWAR MAHADEV ROAD, AMBA FALA, TITARDI, UDAIPUR', 'MDSPS-2136', 0, 4, 1, '', '', '', '0000-00-00'),
(3053, 'SHIVANI PALIWAL', 'MR  DINESH PALIWAL', 'MRS  CHANDRAKALA PALIWAL', '2008-10-10', '20,21, ADARSH NAGAR, BEHIND INDRA NURSING COLLEGE, SECT  NO  4, UDAIPUR', 'MDSPS-1959', 0, 4, 1, '', '', '', '0000-00-00'),
(3054, 'HIMANSHU SHARMA', 'MR  BHUPENDRA SHARMA', 'MRS  LAXMI SHARMA', '2008-05-10', 'VILL-EKLINGPURA, ZAMAR KOTRA ROAD, POST KALADWAS, THE  GIRWA, UDAIPUR', 'MDSPS-1164', 0, 4, 2, '', '', '', '0000-00-00'),
(3055, 'TANISHA CHAUDHARY', 'MR  ANIT RANA', 'MRS  CHITRA RANA', '2008-12-17', 'C-78, UDAI VIHAR COLONY, UDAIPUR', 'MDSPS-2124', 0, 4, 2, '', '', '', '0000-00-00'),
(3056, 'LAKSHITA KANWAR', 'MR  AJAD SINGH SEWARSA', 'MRS  MANISHA KUNWAR', '2008-06-28', '53, MAYUR COMPLEX, HIRAN MAGRI, SECTO NO 4, UDAIPUR', 'MDSPS-2292', 0, 4, 2, '', '', '', '0000-00-00'),
(3057, 'MUSKAN CHOUBISA', 'MR HARIPRASAD JI CHOUBISA', 'MRS  RAJESHWARI JI', '2008-06-30', '15, ANAND VIHAR, SECT  NO  4, UDAIPUR', 'MDSPS-1254', 0, 4, 2, '', '', '', '0000-00-00');
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`) VALUES
(3058, 'ROBIN SINGH RANAWAT', 'MR RAJENDERA SINGH RANAWAT', 'MRS  REKHA KANWAR RANAWAT', '2008-07-19', '266, VIVAK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1264', 0, 4, 1, '', '', '', '0000-00-00'),
(3059, 'RAGINI KUMAWAT', 'MR  CHANDRA PRAKASH KUMAWAT', 'MRS  NIRMA KUMAWAT', '2008-09-03', '721, SURYA NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1230', 0, 4, 1, '', '', '', '0000-00-00'),
(3060, 'SAKSHI DANGI', 'MR  KESHAV DANGI', 'MRS  YASHODA DANGI', '2008-08-18', '1219, OPP  NEW TRACK OFFSET, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1193', 0, 4, 1, '', '', '', '0000-00-00'),
(3061, 'RAKSHANSH JAIN', 'MR  PRAKASH JAIN', 'MRS  RAJSHREE JAIN', '2008-01-30', '150, DHOLI MAGRI BEDWAS, UDAIPUR', 'MDSPS-1590', 0, 4, 1, '', '', '', '0000-00-00'),
(3062, 'MANASVI MURDIYA', 'MR  KAMLESH MURDIYA', 'MRS  KAMLESH MURDIYA', '2008-10-24', '20, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, , UDAIPUR', 'MDSPS-1477', 0, 4, 2, '', '', '', '0000-00-00'),
(3063, 'DISHAN TALESARA', 'MR  MANISH TALESARA', 'MRS  DIPTI TALESARA', '2008-06-27', '14, SIDDARTH COMPLEX, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-1717', 0, 4, 2, '', '', '', '0000-00-00'),
(3064, 'JAYESH PRAJAPAT', 'MR  PRAKASH PRAJAPAT', 'MRS  TARA PRAJAPAT', '2008-11-06', '26/862, AZAD NAGAR, HIRAN MAGRI, SECT  NO  3 BEHIND NEHRU HOSTEL, UDAIPUR', 'MDSPS-1807', 0, 4, 2, '', '', '', '0000-00-00'),
(3065, 'RUDRAKSH BAPNA', 'MR  BALWANT BAPNA', 'MRS  SONAL BAPNA', '2008-04-20', '51, AMAL KA KANTA, SURAJPOL, UDAIPUR', 'MDSPS-1833', 0, 4, 1, '', '', '', '0000-00-00'),
(3066, 'DHANISHTHA MAHESHWARI', 'MR  GOPAL  SOMANI', 'MRS  YOGITA MAHESHWARI', '2008-03-30', '38, CHOTTI MAHESHWARIYO KI SEHRI, DHAN MANDI , UDAIPUR', 'MDSPS-1826', 0, 4, 2, '', '', '', '0000-00-00'),
(3067, 'RITIKA DANGI', 'MR HEMRAJ DANGI', 'MRS BENI DANGI', '2007-11-08', 'VILLAGE MANWA KHERA, THE  GIRVA, UDAIPUR', 'MDSPS-1206', 0, 4, 1, '', '', '', '0000-00-00'),
(3068, 'NITYA GUPTA', 'MR  MAHESH GUPTA', 'MRS JYOTI GUPTA', '2008-08-09', '79, RISHI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1211', 0, 4, 2, '', '', '', '0000-00-00'),
(3069, 'ADITYA SHARMA', 'MR  BHUPENDRA KUMAR SHARMA', 'MRS  BHAWANA SHARM', '2008-06-28', '28, SHASTRI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1214', 0, 4, 2, '', '', '', '0000-00-00'),
(3070, 'HIMANG KOTHARI', 'MR  KALPESH KOTHARI', 'MRS  VARSHA KOTHARI', '2008-09-24', '3, SAMTA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1169', 0, 4, 1, '', '', '', '0000-00-00'),
(3071, 'MAHI VAISHNAV', 'MR  JULESH VAISHNAV', 'MRS  JAMUNA VAISHNAV', '2008-05-13', '51, VARDHMAN PUBLIC SCHOOL NAGAR, NORTH SUNDERWAS, UDAIPUR', 'MDSPS-1708', 0, 4, 1, '', '', '', '0000-00-00'),
(3072, 'SAKSHAM VAISHNAV', 'MR  YOGESH VAISHNAV', 'MRS  KRATIKA VAISHNAV', '2009-04-03', '51, NORTH SUNDERWAS, UDAIPUR OPP  VARDHAMAN PUBLIC SCHOOL', 'MDSPS-1709', 0, 4, 2, '', '', '', '0000-00-00'),
(3073, 'YASHIKA CHOUDHARY', 'MR  BABULAL CHOUDHARY', 'MRS  ASHA CHOUDHARY', '2009-03-19', 'H  NO  28, SHREE NATH NAGAR BEDWAS PRATAP NAGAR', 'MDSPS-1356', 0, 4, 2, '', '', '', '0000-00-00'),
(3074, 'YASH NAHAR', 'MR  MAHAVEER NAHAR', 'MRS  SHWETA NAHAR', '2008-03-01', 'LAKADWAS (UDR) NAHARO KA MOHALLA', 'MDSPS-1775', 0, 4, 2, '', '', '', '0000-00-00'),
(3075, 'DAKSH DODEJA', 'MR  DEEPAK DODEJA', 'MRS, ISHITA DODEJA', '2008-03-08', 'HOUSE NO   2-TA-21, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1745', 0, 4, 2, '', '', '', '0000-00-00'),
(3076, 'ADITYA TAK', 'MR  VINAY KUMAR TAK', 'MRS  SUMAN TAK', '2008-04-08', '5, JANTA MARG, INSIDE SURAJPOLE, UDAIPUR', 'MDSPS-1892', 0, 4, 1, '', '', '', '0000-00-00'),
(3077, 'PRINCY WASWANI', 'MR  GURUMUKH WASWANI', 'MRS  ANJU WASWANI', '2008-02-24', 'ROOP NAGAR SEC  3 NEAR MDS SCHOOL HN 180 B', 'MDSPS-1877', 0, 4, 1, '', '', '', '0000-00-00'),
(3078, 'PINAL JAIN', 'MR  SANJAY JAIN', 'MRS  SEEMA JAIN', '2008-11-22', '346, NEAR KUMKUM VATIKA SEC  3, UDAIPUR', 'MDSPS-1809', 0, 4, 2, '', '', '', '0000-00-00'),
(3079, 'DRISHTI SACHDEV', 'MR  ASHOK SACHDEV', 'MRS  KIRAN SACHDEV', '2007-11-23', '6, KASHIPURI, BSNL COLONY NO  3, HIRAN MAGRI SEC  5, UDAIPUR', 'MDSPS-1555', 0, 4, 2, '', '', '', '0000-00-00'),
(3080, 'LAKSHYA SETHIA', 'MR  RAJIV SETHIA', 'MRS  REKHA SETHIA', '2008-05-04', '3-TH-26, PRABHAT NAGAR, HIRAN MAGRI, SEC  NO  5, UDAIPUR', 'MDSPS-1556', 0, 4, 1, '', '', '', '0000-00-00'),
(3081, 'MAHIM CHOUDHARY', 'MR  ASHOK KUMAR CHOUDHARY', 'MRS  GAYATRI CHOUDHARY', '2008-02-04', 'H NO  31, OSWAL NAGAR, THOKAR CHORYA, NEAR RAJ  PATRIKA, UDAIPUR', 'MDSPS-1262', 0, 4, 1, '', '', '', '0000-00-00'),
(3082, 'KHUSHI MEGHWAL', 'MR  GANESH LAL MEGHWAL', 'MRS  SCHAGNI BAI', '2007-07-30', 'NAKODA NAGAR SECOND DHOLI MAGRI PRATAP NAGAR', 'MDSPS-1250', 0, 4, 1, '', '', '', '0000-00-00'),
(3083, 'LIYANI JAIN', 'MR  SUNIL JAIN', 'MRS  SUNITA JAIN', '2008-06-01', '20, SAMATA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1186', 0, 4, 2, '', '', '', '0000-00-00'),
(3084, 'ROHIT DANGI', 'MR  SOHAN LAL DANGI', 'MRS  NIRMALA DANGI', '2008-02-27', '456, EKLING COLONY, HIRAN MAGRI, SECT  NO  3, BEHIND RELIANCE FRESH, UDAIPUR', 'MDSPS-1269', 0, 4, 1, '', '', '', '0000-00-00'),
(3085, 'SANYAM MAHESHWARI', 'MR  MANOJ KUMAR BHARADIA', 'MRS  SAPNA BHARADIA', '2008-02-14', '24, SAMTA NAGAR, BEHIND MDS SCHOOL, SECT  NO  3, UDAIPUR', 'MDSPS-2134', 0, 4, 1, '', '', '', '0000-00-00'),
(3086, 'PAKSHIK VANAWAT', 'MR PARASHAV KUMAR VANAWAT', 'MRS  SHARMILA VANAWAT', '2007-11-05', '3-PHA-47,SATELITE HOSPITAL SEC  5 SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2112', 0, 4, 1, '', '', '', '0000-00-00'),
(3087, 'SUHANI PATEL', 'MR  KISHAN LAL PATEL', 'MRS  BASANTI DEVI PATEL', '2007-08-28', 'AKASHWANI KE SAMNE, UDAISAGAR ROAD, PUROHITAN KI MADRI, UDAIPUR 42/75', 'MDSPS-1227', 0, 4, 2, '', '', '', '0000-00-00'),
(3088, 'DISHA JAIN', 'MR ASHOK JAIN', 'MRS MANJU JAIN', '2008-01-15', '23-C, ADINATH BHAVAN UDAI VIHAR COLONY, MADARI, UDAIPUR', 'MDSPS-1203', 0, 4, 2, '', '', '', '0000-00-00'),
(3089, 'YASH DASPATTANAYAK', 'MR  BISWAJIT DASPATTANAYAK', 'MRS  HIMADRI T  DASPATTANAYAK', '2008-03-26', '114, ROAD NO  4, SUBHASH NAGAR, UDAIPUR', 'MDSPS-2315', 0, 4, 1, '', '', '', '0000-00-00'),
(3090, 'RAKSHIT SHARMA', 'MR LT MUKESH KUMAR SHARMA', 'MRS  SHWETA SHARMA', '2008-03-23', 'PLOT NO  01, NEAR PITAMBARIA KUA, KACHHAWTO KI GALI, PANERIYON KI MADRI, UDAIPUR', 'MDSPS-1596', 0, 4, 2, '', '', '', '0000-00-00'),
(3091, 'PRINCE KABRA', 'MR  DINESH KABRA', 'MRS  JYOTI KABRA', '2007-07-21', '91, BEHIND POLICE THANA, SECT  NO  6, UDAIPUR', 'MDSPS-2132', 0, 4, 1, '', '', '', '0000-00-00'),
(3092, 'MAYANK LOHAR', 'MR  DINESH LOHAR', 'MRS  PRIYANKA', '2007-06-26', 'PUROHITON MADRI, ROAD NO  3-4, JHAMAR KOTRA ROAD, UDAIPUR', 'MDSPS-1252', 0, 4, 1, '', '', '', '0000-00-00'),
(3093, 'RAGHAV DADHICH', 'MR  AMIT KUMAR DADHICH', 'MRS  VIJAY LAXMI DADHICH', '2008-10-30', 'H NO  16, SHANTI NAGAR, 100FIT ROAD, SECT  NO  5, UDAIPUR', 'MDSPS-2320', 0, 4, 1, '', '', '', '0000-00-00'),
(3094, 'NIKITA KOTHARI', 'MR  SUSHIL KOTHARI', 'MRS  MEENA KOTHARI', '2008-06-16', 'C6 NORTH SUNDERWAS VARDHMAN NAGAR UDAIPUR', 'MDSPS-1543', 0, 4, 2, '', '', '', '0000-00-00'),
(3095, 'HITARTH MENARIA', 'MR HARISH MENARIA', 'MRS HEMLATA MENARIA', '2008-10-22', 'MENARIYA RESTRORENT OPP  ROAD NO 2 POUROHITO KI MADARI, UDAIPUR', 'MDSPS-1202', 0, 4, 2, '', '', '', '0000-00-00'),
(3096, 'MAISIE GOUR', 'MR  MAHESH GOUR', 'MRS  SANGEETA GOUR', '2007-12-01', '18-C NEW MALT COLONY NEAR VINAYAK VATIKA', 'MDSPS-1245', 0, 4, 2, '', '', '', '0000-00-00'),
(3097, 'NARAYAN SINGH CHOUHAN', 'MR CHATTER SINGH CHOUHAN', 'MRS  DAV KUNWAR', '2007-12-08', 'MIA ROAD NO  4, LAXMI NAGAR, PUROHIT KE MADRI, UDAIPUR', 'MDSPS-1199', 0, 4, 2, '', '', '', '0000-00-00'),
(3098, 'VANSH VERMA', 'MR  SHAKTI SINGH VERMA', 'MRS  VANDANA VERMA', '2008-07-02', '15, KUMAWAT COLONY, BEHIND RSEB OFFICE, SECT   12, SAVINA, UDAIPUR', 'MDSPS-1266', 0, 4, 1, '', '', '', '0000-00-00'),
(3099, 'MOHAMMED SHOHUD MIRZA', 'M. YUNUS MIRZA', 'MRS. REHANA MIRZA', '2006-06-18', 'Q.NO. 98/A, RAILWAY COLONY, RANA PRATAP NAGAR, UDAIPUR', 'MDSPS-2388', 0, 4, 1, '', '', '', '0000-00-00'),
(3100, 'SOMIL CHECHANI', 'MR. SANJAY CHECHANI', 'MRS. VEENA CHECHANI', '2007-11-20', '127-M, ROAD, BHUPALPURA, UDAIPUR', 'MDSPS-2392', 0, 4, 1, '', '', '', '0000-00-00'),
(3101, 'PAYAL SIMOLIYA', 'MR. RAM PRAKASH SIMOLIYA', 'MRS. RAJKUMARI SIMOLIYA', '2007-08-12', 'NEHLA HANUMAN RALLA SEC. 14 BALICH', 'MDSPS-1428', 0, 4, 1, '', '', '', '0000-00-00'),
(3102, 'TAVISHI SONI', 'MR. SURESH SONI', 'MRS. MAMTA SONI', '2007-12-07', '74, BAPPA RAWAL NAGAR, NEAR J.B. HOSPITAL, HIRAN MAGRI, UDAIPUR', 'MDSPS-2410', 0, 4, 1, '', '', '', '0000-00-00'),
(3103, 'PARIKSHIT SANADHYA', 'MR  KAPIL SANADHYA', 'MRS  KAVITA SANADHYA', '2007-05-27', '70, NAKODA NAGAR - IST, DHAUJI KI BADI, AIRPORT ROAD, UDAIPUR', 'MDSPS-2203', 0, 5, 2, '', '', '', '0000-00-00'),
(3104, 'MAHI PATEL', 'MR  KETAN BHAI D  PATEL', 'MRS  MINTUBEN K  PATEL', '2007-09-11', '60-E, UIT COLONY, PRATAP NAGAR, UDAIPUR', 'MDSPS-2214', 0, 5, 1, '', '', '', '0000-00-00'),
(3105, 'HARSHAL SHARMA', 'MR  VIJAY ANAND GURJAR GOUR', 'MRS  REKHA SHARMA', '2007-02-26', '80, ARIHANT VIHAR, KANPUR MADRI ROAD, UDAIPUR', 'MDSPS-2233', 0, 5, 2, '', '', '', '0000-00-00'),
(3106, 'HIMANSHU SINGH RATHORE', 'MR  MAGAN SINGH RATHORE', 'MRS  NEETU RATHORE', '2006-10-13', '18, ARIHANT COLONY, MEWAR INDUSTRIAL AREA, ROAD NO  3, MADRI, UDAIPUR', 'MDSPS-2242', 0, 5, 2, '', '', '', '0000-00-00'),
(3107, 'VAISHALI MISHRA', 'MR AVINASH MISHRA', 'MRS  SHEFALI MISHRA', '2007-01-28', '3, SATYANARAYAN MARG, AMAL KA KANTA', 'MDSPS-2265', 0, 5, 2, '', '', '', '0000-00-00'),
(3108, 'HIMANK JAIN', 'MR  PRAKASH CHAMPAWAT', 'MRS  MANJU SOMIA', '2008-02-20', '17, SHUBHAM COMPLEX, NEAR SAVITRI VATIKA, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2268', 0, 5, 2, '', '', '', '0000-00-00'),
(3109, 'ISHIKA PRAJAPAT', 'MR  PRABHU LAL PRAJAPAT', 'MRS  PRIYA PRAJAPAT', '2006-09-13', 'V/P UMARDA, UDAIPUR', 'MDSPS-2273', 0, 5, 2, '', '', '', '0000-00-00'),
(3110, 'ARDHIKA CHATURVEDI', 'MR  CHHAVIKAR CHATURVEDI', 'MRS  RUBY CHATURVEDI', '2007-11-28', '41, CHANAKYAPURI, SHASTRI NAGAR, MEERUT', 'MDSPS-2276', 0, 5, 1, '', '', '', '0000-00-00'),
(3111, 'NAITIK RAJ YADUVANSHI', 'MR  SURENDRA SINGH', 'MRS  KAVITA CHAWRA', '2007-10-16', 'I-60, HIRAN MAGRI, SECT  NO  9, UDAIPUR', 'MDSPS-1973', 0, 5, 1, '', '', '', '0000-00-00'),
(3112, 'LAKSHYA WARJURKAR', 'DR  SUNIL WARJURKAR', 'MRS  NEETA WARJURKAR', '2007-08-06', '302, CHITRA B-2, VAISHALI APPARTMENT, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1936', 0, 5, 2, '', '', '', '0000-00-00'),
(3113, 'MAHARSHI JOSHI', 'MR  HERAMB JOSHI', 'MRS  VINEETA JOSHI', '2007-08-15', 'SUBCITY CENTER RSG APARTMENT SEC  8', 'MDSPS-1786', 0, 5, 2, '', '', '', '0000-00-00'),
(3114, 'ADITYA SANKHLA', 'MR  MANISH JAIN', 'DR  SHILPI JAIN', '2007-01-01', '34, MAHAVEER COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1695', 0, 5, 2, '', '', '', '0000-00-00'),
(3115, 'ABHA SINGH BAGHELA', 'MR  VIKRAM SINGH BAGHELA', 'MRS  PHOOL KUNWAR', '2007-09-30', '723, SURYA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1680', 0, 5, 2, '', '', '', '0000-00-00'),
(3116, 'NAITIK SOLANKI', 'MR  MAHESH SOLANKI', 'MRS  JAISHREE', '2007-09-17', 'QTR  NO  15/IV, BSNL COLONY, HIRAN MAGRI, MANWAKHERA, SECT  NO  5, UDAIPUR', 'MDSPS-2194', 0, 5, 1, '', '', '', '0000-00-00'),
(3117, 'HARSHIT CHOUDHARY', 'MR  ASHOK CHOUDHARY', 'MRS  GAYTARI CHOUDHARY', '2007-02-27', '3444, JAI JAI SHREE VATIKA KE PASS, KHEDA ROAD, SAVINA, UDAIPUR', 'MDSPS-1126', 0, 5, 2, '', '', '', '0000-00-00'),
(3118, 'AASHI MAHESHWARI', 'MR  ASHISH KOTHARI', 'MRS  PRIYA KOTHARI', '2007-02-03', '3, SHANTI NAGAR, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-2283', 0, 5, 2, '', '', '', '0000-00-00'),
(3119, 'KARTIK PUROHIT', 'MR  DINBANDHU PUROHIT', 'MRS  HANSA PUROHIT', '2006-10-12', '52 A, INDRAPRASTH COMPLEX, SEC -14, UDAIPUR', 'MDSPS-1606', 0, 5, 2, '', '', '', '0000-00-00'),
(3120, 'GAUTAM DAVE', 'MR  TARUN DAVE', 'MRS  SHEETAL DAVE', '2007-06-07', '1-K-17, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1791', 0, 5, 2, '', '', '', '0000-00-00'),
(3121, 'PRIYA MEENA', 'MR OM PRAKASH MEENA', 'MRS KRISHNA GAMETI', '2007-08-16', 'H  NO  33/25 SOUTH SUNDERWAS, SHIV NAGAR, UDAIPUR', 'MDSPS-1185', 0, 5, 2, '', '', '', '0000-00-00'),
(3122, 'GRISHA VERMA', 'MR  RAJEEV VERMA', 'MRS  TANU VERMA', '2006-12-23', '42, SAMTA NAGAR, AHEAD MAHAVEER TEMPLE, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1003', 0, 5, 1, '', '', '', '0000-00-00'),
(3123, 'SOMYA BAJAJ', 'MR  KHEMCHAND BAJAJ', 'MRS  DAKSHA BAJAJ', '2007-01-20', '15, RISHI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1030', 0, 5, 2, '', '', '', '0000-00-00'),
(3124, 'KRATI SONI', 'MR  DINESH SONI', 'MRS  EKTA SONI', '2006-10-13', '51, KASHIPURI, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1059', 0, 5, 1, '', '', '', '0000-00-00'),
(3125, 'SOUMYA MAHESHWARI', 'MR  KAILASH CHANDRA LAWTI', 'MRS  SARITA LAWHTI', '2007-01-22', '86-87, ROOP NAGAR, SECT  NO  3, UDAIPUR', 'MDSPS-1095', 0, 5, 2, '', '', '', '0000-00-00'),
(3126, 'ANIKET MAURYA', 'MR  SURESH CHANDRA MAURYA', 'MRS  REETA MAURYA', '2007-02-17', '146-B, RAILWAY COLONY, RANA PRATAP NAGAR, RAILWAY STATION, UDAIPUR', 'MDSPS-1112', 0, 5, 2, '', '', '', '0000-00-00'),
(3127, 'TANISHKA CHOUBISA', 'MR  MANOJ CHOUBISA', 'MRS  ANJANA CHOUBISA', '2007-08-19', '20, NAKODA COMPLEX, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1222', 0, 5, 2, '', '', '', '0000-00-00'),
(3128, 'HARSHIT PATEL', 'MR GANESH LAL PATEL', 'MRS RAMU DEVI', '2005-07-07', '127, AKASHWANI KE PASS, UDAI VIHAR, RIICO COLONY, UDAIPUR', 'MDSPS-1132', 0, 5, 1, '', '', '', '0000-00-00'),
(3129, 'PAYAL LOHAR', 'MR  PRABHU LAL LOHAR', 'MRS  TARA LOHAR', '2008-07-02', '108, ROOP NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1135', 0, 5, 1, '', '', '', '0000-00-00'),
(3130, 'RONAK AMETA', 'MR  HEMANT KUMAR AMETA', 'MRS  VANDANA AMETA', '2007-01-12', '200, STREET NO  1, MALI COLONY, UDAIPUR', 'MDSPS-1152', 0, 5, 2, '', '', '', '0000-00-00'),
(3131, 'NEHAL MEHTA', 'MR  GIRISH MEHTA', 'MRS  SHARMILA MEHTA', '2007-03-10', '33, NIRMAL VIHAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1002', 0, 5, 2, '', '', '', '0000-00-00'),
(3132, 'ANKIT PATEL', 'MR  SURESH PATEL', 'MRS  LALITA PATEL', '2006-04-29', '133, AKASHWANI KE PASS, UDAI VIHAR COLONY, H NO  133, UDAIPUR', 'MDSPS-1109', 0, 5, 1, '', '', '', '0000-00-00'),
(3133, 'DAKSH GORANA', 'MR  JAGDISH GORANA', 'MRS  LAXMI GORANA', '2007-08-04', '33/896, GLASS FACTORY, KHEMPURA ROAD, UDAIPUR', 'MDSPS-1110', 0, 5, 2, '', '', '', '0000-00-00'),
(3134, 'TANISHQ LODHA', 'MR  SUNIL LODHA', 'MRS  VANITA LODHA', '2007-04-05', '14, SAMRAT NAGAR, NEAR BOHRA GANESH JI, UDAIPUR', 'MDSPS-1033', 0, 5, 1, '', '', '', '0000-00-00'),
(3135, 'PIYUSH DANGI', 'MR  TULSI RAM DANGI', 'MRS  TULSI BAI DANGI', '2007-03-07', 'VILL  BADA NOKHA, NEAR KUMBHA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1043', 0, 5, 2, '', '', '', '0000-00-00'),
(3136, 'MOHMMED NAHIM', 'MR  MOHMMED AYYUB', 'MRS  HASEENA BANU', '2007-03-25', '104, SUKHADIA COLONY, NEAR UDAIPUR GAS GODOWN, UDAIPUR', 'MDSPS-1051', 0, 5, 2, '', '', '', '0000-00-00'),
(3137, 'DIPTANSH SHRIMALI', 'MR  OM PRAKASH SHRIMALI', 'MRS  SHEETAL SHRIMALI', '2007-08-03', '12-B, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1057', 0, 5, 1, '', '', '', '0000-00-00'),
(3138, 'VISHWARAJ SINGH CHOUHAN', 'MR  AJAYRAJ SINGH CHOUHAN', 'MRS  KUSUM KANWAR', '2007-04-21', '39, RISHI NAGAR, HIRAN MAGRI, SEC  NO  3,UDAIPUR', 'MDSPS-1014', 0, 5, 1, '', '', '', '0000-00-00'),
(3139, 'GUNJAN RATHORE', 'MR DINESH SINGH', 'MRS  AMRITA RANAWAT', '2007-07-31', '94, RISHI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1016', 0, 5, 2, '', '', '', '0000-00-00'),
(3140, 'KRITEE RAJ BAANSI', 'MR  MANISH RAJ BAANSI', 'MR  SEEMA', '2007-03-26', '12-C NEW VIDHYA NAGAR H  M  SEC  4 UDR ', 'MDSPS-1586', 0, 5, 2, '', '', '', '0000-00-00'),
(3141, 'PRAGYA SHARMA', 'MR  GAJENDRA SHARMA', 'MRS  LATA SHARMA', '2007-06-22', '43,A SHRI NATH NAGAR SEC  9', 'MDSPS-1292', 0, 5, 2, '', '', '', '0000-00-00'),
(3142, 'KEJAL POKHARNA', 'MR  UMESH POKHARNA', 'MRS  PAYAL POKHARANA', '2007-05-19', '70, RISHABH HOUSING SOCIETY, HIRAN MAGRI, SECT  NO  4, TAGORE NAGAR, UDAIPUR', 'MDSPS-1966', 0, 5, 2, '', '', '', '0000-00-00'),
(3143, 'KANISHKA KUNWER SHAKTAWAT', 'MR  SURYABHAN SINGH', 'MRS  KRISHNA KUNWER', '2008-04-12', 'HIRAN MAGRI SEC  5 SHIV MARG H  NO  36', 'MDSPS-1713', 0, 5, 1, '', '', '', '0000-00-00'),
(3144, 'MAANSI GAUR', 'MR  VIKASH GAUR', 'MRS  PRIYANKA GAUR', '2007-01-07', 'H  NO  ,3 F 72 PRABHAT NAGAR SEC  5 H  M  UDR ', 'MDSPS-2095', 0, 5, 2, '', '', '', '0000-00-00'),
(3145, 'BHAVYA PANDYA', 'MR  GAJENDRA PANDYA', 'MRS  YOGITA PANDYA', '2007-04-09', '27/183, NEAR SHIKSHA NIKETAN SCHOOL, PANERIO KI MADRI, UDAIPUR', 'MDSPS-1291', 0, 5, 2, '', '', '', '0000-00-00'),
(3146, 'TAMANNA PAHUJA', 'MR  HARISH PAHUJA', 'MRS  PALAK PAHUJA', '2006-08-03', '3-JHA-14, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1231', 0, 5, 1, '', '', '', '0000-00-00'),
(3147, 'NAMAN MAHESHWARI', 'MR  ABHISHEK MAHESHWARI', 'MRS  GARIMA MAHESHWARI', '2007-03-11', '6-JAL VIHAR COLONY, NEAR VAISHALI APARTMENT, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1104', 0, 5, 2, '', '', '', '0000-00-00'),
(3148, 'DHRUV SAINI', 'MR  RAJMAL SAINI', 'MRS  URMILA', '2008-05-08', '890, MAIN ROAD, PUROHITON KI MADRI, UDAIPUR', 'MDSPS-1899', 0, 5, 1, '', '', '', '0000-00-00'),
(3149, 'VISHAKHA AMETA', 'MR  RAJENDRA PRASAD AMETA', 'MRS  INDRA AMETA', '2007-01-27', '19, SAMTA NAGAR, UDAIPUR HIRAN MAGRI SEC  4 ', 'MDSPS-1575', 0, 5, 1, '', '', '', '0000-00-00'),
(3150, 'KULISH AUDICHYA', 'MR  UMESH AUDICHYA', 'MRS  KRISHNA AUDICHYA', '2007-03-26', '1-KHA-48, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1337', 0, 5, 1, '', '', '', '0000-00-00'),
(3151, 'HENEY BOLYA', 'MR  ASHOK BOLYA', 'MRS  JOTSHNA BOLYA', '2006-10-16', '12, AMBE NAGAR, MANWAKHEDA ROAD, VAISHALI APARTMENT, SECT  NO  4, UDAIPUR', 'MDSPS-1106', 0, 5, 2, '', '', '', '0000-00-00'),
(3152, 'MEGHA TANWAR', 'MR  RATAN SINGH TANWAR', 'MRS  POONAM TANWAR', '2007-03-31', 'C-2, ADARSH COLONY, TITARDI, UDAIPUR', 'MDSPS-1887', 0, 5, 1, '', '', '', '0000-00-00'),
(3153, 'PRADEEP SINGH SEWARSA', 'MR  AJAD SINGH SEWARSA', 'MRS  MONISHA KANWAR', '2006-04-13', '53, MAYUR COMPLEX, HIRAN MAGRI, SECT  4, UDAIPUR', 'MDSPS-2293', 0, 5, 2, '', '', '', '0000-00-00'),
(3154, 'AKSHITA JAIN', 'MR  PRAKASH JAIN', 'MRS  PARVATI JAIN', '2007-05-15', '3-DHA-5, PRABHAT NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-1298', 0, 5, 2, '', '', '', '0000-00-00'),
(3155, 'VIVEK DANGI', 'MR  PREM SHANKAR DANGI', 'MRS  YASHODA DANGI', '2007-05-18', '102, BANK GALI, KANPUR TH  GIRVA, DISTT  UDAIPUR', 'MDSPS-1219', 0, 5, 1, '', '', '', '0000-00-00'),
(3156, 'RITIKSHA DANGI', 'MR SURESH DANGI', 'MRS HEERA DANGI', '2007-03-10', '1219, NEW SHIV NAGAR, OPP  NEW TRACK OFFSET, SEC - 3, UDAIPUR', 'MDSPS-1194', 0, 5, 2, '', '', '', '0000-00-00'),
(3157, 'SHUBH SARVA', 'MR  MANOJ TAILOR', 'MRS  RAJNI TAILOR', '2007-08-16', '19, SOUTH SUNDERWAS, NEAR SHYAM VATIKA, UDAIPUR', 'MDSPS-1019', 0, 5, 2, '', '', '', '0000-00-00'),
(3158, 'DIVIJA M  VAISHNAV', 'MR  MAHESH VAISHNAV', 'MRS  HEMLATA VAISHNAV', '2007-07-07', '551, NEAR POWER HOUSE, EKLINGPURA, JHAMAR KOTRA ROAD, UDAIPUR', 'MDSPS-1096', 0, 5, 1, '', '', '', '0000-00-00'),
(3159, 'LAKSHYARAJ SINGH RANAWAT', 'MR  RAJENDRA SINGH RANAWAT', 'MRS  REKHA KANWAR', '2006-02-04', '266, VIVAK NAGAR, SEC -3, UDAIPUR', 'MDSPS-1142', 0, 5, 1, '', '', '', '0000-00-00'),
(3160, 'SAKSHAM MEGHWAL', 'MR  MADAN MEGHWAL', 'MRS  KALA MEGHWAL', '2007-04-19', 'LAXMI NAGAR, PUROHITON KI MADRI, ROAD NO  4, UDAIPUR', 'MDSPS-1060', 0, 5, 1, '', '', '', '0000-00-00'),
(3161, 'LAVISHA SWAMI', 'MR  SUNIL SWAMI', 'MRS  MADHU SWAMI', '2007-04-18', 'ARIHANT COLONY,  OPP  ROOD NO 3, PUROHIT KI MADRI, UDAIPUR', 'MDSPS-1531', 0, 5, 1, '', '', '', '0000-00-00'),
(3162, 'SAKSHAM RAJPOOT', 'MR  SUNIL SINGH RAJPOOT', 'MRS  SUSHILA', '2007-05-25', 'MANWA KHERA, SEC - 5, UDAIPUR BSNL COLONY TYPE -II H  NO  10', 'MDSPS-1592', 0, 5, 1, '', '', '', '0000-00-00'),
(3163, 'SURYANSH JOSHI', 'MR  INDRA PRAKASH JOSHI', 'MRS  RAVITA JOSHI', '2008-10-05', 'ROAD NO 2, MADRI, UDAIPUR MIA', 'MDSPS-1510', 0, 5, 1, '', '', '', '0000-00-00'),
(3164, 'ATHARV HEMANT DEOPURKAR', 'MR HEMANT DEOPURKAR', 'MRS ', '2007-09-15', 'FLAT NO  K  104 RADHE KRISHNA APARTMENT', 'MDSPS-1495', 0, 5, 2, '', '', '', '0000-00-00'),
(3165, 'PAWAN DANGI', 'MR  BHARAT LAL DANGI', 'MRS  MEERA DANGI', '2006-10-26', 'GANESH NAGAR, VILLAGE & POST KANPUR, DISTT  UDAIPUR', 'MDSPS-1414', 0, 5, 1, '', '', '', '0000-00-00'),
(3166, 'BHAVESH SINGH CHOUHAN', 'MR  AMAR SINGH CHOUHAN', 'MRS, REKHA CHAUHAN', '2008-03-12', 'E- BLOCK C-13 POLICE LINE UDAIPUR', 'MDSPS-1450', 0, 5, 2, '', '', '', '0000-00-00'),
(3167, 'SHASHANK NANDWANA', 'MR  GAURAV KUMAR NANDWANA', 'MRS  SHALINI NANDWANA', '2007-04-14', '3, DHAS PRABHAT NAGAR', 'MDSPS-1746', 0, 5, 1, '', '', '', '0000-00-00'),
(3168, 'RISHI MENARIA', 'MR  NIRMAL MENARIA', 'MRS  YASHODA MENARIA', '2006-09-24', '4, CHOTI BRAHMPURI, RMV ROAD, UDAIPUR', 'MDSPS-1754', 0, 5, 1, '', '', '', '0000-00-00'),
(3169, 'DEV SAHU', 'MR  SURESH SAHU', 'MRS  LALITA', '2007-02-21', '46, BAHUBALI COLONY, BOHARA GANESH JI ROAD, UDAIPUR', 'MDSPS-1774', 0, 5, 1, '', '', '', '0000-00-00'),
(3170, 'DIVYANSHI MENARIA', 'MR  PRAKASH MENARIA', 'MRS  KRISHNA MENARIA', '2008-02-09', '68, BANK GALI, VILLAGE KANPUR, TEHSIL GIRWA, DISTT  UDAIPUR', 'MDSPS-1727', 0, 5, 1, '', '', '', '0000-00-00'),
(3171, 'DIGVIJAY SINGH RAJPUROHIT', 'MR  KISHAN SINGH RAJPUROHIT', 'MRS  KAMLA RAJPUROHIT', '2006-09-19', '134/B, HIRAN MAGRI, SECT  NO  3, NEAR VIVEK PARK, UDAIPUR', 'MDSPS-1246', 0, 5, 2, '', '', '', '0000-00-00'),
(3172, 'VISHVARAJ SINGH DEVRA', 'MR  NARENDRA SINGH DEVRA', 'MRS  PUSHPA DEVRA', '2006-09-02', '109, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1076', 0, 5, 1, '', '', '', '0000-00-00'),
(3173, 'JINISHA SAINI', 'MR  LEELA DHAR', 'MRS  SAROJ SAINI', '2007-03-15', '7, VIDHYA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-1114', 0, 5, 1, '', '', '', '0000-00-00'),
(3174, 'BHAVESH VAISHNAV', 'MR  PRAKASH VAISHNAV', 'MRS  RUKMANI DEVI', '2006-08-06', 'LAXMI NAGAR, PUROHITON KI MADRI, UDAIPUR', 'MDSPS-1646', 0, 5, 1, '', '', '', '0000-00-00'),
(3175, 'DHAWAL KOTHARI', 'MR  HIMMAT SINGH KOTHARI', 'MRS  MEENA KOTHARI', '2007-09-21', '24, GAYATRI NAGAR H  M  SEC  5 UDR ', 'MDSPS-1582', 0, 5, 2, '', '', '', '0000-00-00'),
(3176, 'SANIDHYA CHOUDHARY', 'MR  PANNA LAL CHOUDHARY', 'MRS  PRAMILA CHOUDHARY', '2007-01-22', 'HANUMAN TEMPLE, ROAD NO 2, PUROHITON KI MADRI, UDAIPUR', 'MDSPS-1573', 0, 5, 1, '', '', '', '0000-00-00'),
(3177, 'GOURAV SALVI', 'MR  LOKESH SALVI', 'MRS  DEEPIKA SALVI', '2006-06-16', '660, SHIV NAGAR, SOUTH SUNDERWAS, UDAIPUR', 'MDSPS-1464', 0, 5, 1, '', '', '', '0000-00-00'),
(3178, 'HARDIK LOHAR', 'MR  BHAWAR LAL LOHAR', 'MRS  SAVITA LOHAR', '2007-03-01', '62, AZAD VIHAR, NEAR UMAD VILA HOTEL, TITRADI, UDAIPUR', 'MDSPS-1814', 0, 5, 2, '', '', '', '0000-00-00'),
(3179, 'HARSHRAJ SINGH DEORA', 'MR  KALYAN SINGH DEORA', 'MRS  PUSHPA KUNWAR', '2007-09-07', 'PATHON KI MAGRI, SEVASHRAM CHORHA, UDAIPUR', 'MDSPS-1772', 0, 5, 1, '', '', '', '0000-00-00'),
(3180, 'CHINMAYEE JAIN', 'DR  LALIT PRAKASH JAIN', 'MRS  LATA KOTHARI JAIN', '2006-12-28', '6, BALAJI NAGAR, JALVIHAR, MANVAKHERA, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2177', 0, 5, 1, '', '', '', '0000-00-00'),
(3181, 'PRASHANT KUMAR DANGI', 'MR  BABU LAL DANGI', 'MRS  PREM LATA DANGI', '2007-04-25', '45/A, RAILWAY COLONY, RANA PRATAP NAGAR, UDAIPUR', 'MDSPS-2048', 0, 5, 2, '', '', '', '0000-00-00'),
(3182, 'KOSTU JAIN', 'MR  NIRMAL KUMAR JAIN', 'MRS  MONIKA JAIN', '2007-06-29', '23, NEW COLONY, SAVINA, UDAIPUR', 'MDSPS-1827', 0, 5, 2, '', '', '', '0000-00-00'),
(3183, 'PRIYANSH CHOUBISA', 'MR  MUKESH CHOUBISA', 'MRS  REKHA CHOUBISA', '2007-09-14', '433, SEVA NAGAR, SEC - 4, UDAIPUR', 'MDSPS-1222', 0, 5, 2, '', '', '', '0000-00-00'),
(3184, 'SAKSHI VAISHNAV', 'MR  MUKESH VAISHNAV', 'MRS  REKHA VAISHNAV', '2006-11-28', 'NEAR BUS STAND, LAKADWAS, UDAIPUR', 'MDSPS-1534', 0, 5, 2, '', '', '', '0000-00-00'),
(3185, 'NEHAL CHOUBISA', 'MR  DINESH CHANDRA CHOUBISA', 'MRS  KRISHNA CHOUBISA', '2007-04-07', '433, SECT  NO 4, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1367', 0, 5, 2, '', '', '', '0000-00-00'),
(3186, 'PARINEETA GAUTAM', 'MR  MANOJ KUMAR GAUTAM', 'MRS  BIMLESH GAUTAM', '2006-09-22', '1/56, INDRAPRASTHA NAGAR, C- BLOCK, RHB COLONY, SEC - 9, UDAIPUR', 'MDSPS-1048', 0, 5, 1, '', '', '', '0000-00-00'),
(3187, 'ANAY SHARMA', 'MR  OM PRAKASH SHARMA', 'MRS  SOMYA SHARMA', '2008-02-04', '403, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1155', 0, 5, 1, '', '', '', '0000-00-00'),
(3188, 'DHRUV JENA', 'MR  DILIP JENA', 'MRS  BASANTI JENA', '2007-08-25', '323, UIT COLONY, AKASHWANI KE SAMNE, UDAIPUR', 'MDSPS-1094', 0, 5, 1, '', '', '', '0000-00-00'),
(3189, 'HARSHVARDHAN BAPNA', 'MR  RAVI KUMAR BAPNA', 'MRS  SONIKA BAPNA', '2007-07-15', '46, ROOP NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1090', 0, 5, 2, '', '', '', '0000-00-00'),
(3190, 'DAKSHRAJ SINGH CHAWDA', 'MR  BHOJ RAJ SINGH CHAWDA', 'MRS  ANITA KUNWAR CHAWDA', '2007-05-12', '124, VIVEK NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1532', 0, 5, 1, '', '', '', '0000-00-00'),
(3191, 'PRIYANSH BAGRECHA', 'MR  SUNIL BAGRECHA', 'MRS  RHITU BAGRECHA', '2006-11-18', 'H  NO  896 POOJA NAGAR, SEC - 4, NEAR POST OFFICE, UDAIPUR', 'MDSPS-1604', 0, 5, 2, '', '', '', '0000-00-00'),
(3192, 'LAKSHYARAJ SINGH  PANWAR', 'MR  KAMLENDRA SINGH PANWAR', 'MRS  NUTAN KANWAR PANWAR', '2005-07-28', '60, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR FOOD &FUN  RESTAURANT', 'MDSPS-0934', 0, 5, 1, '', '', '', '0000-00-00'),
(3193, 'PRIYANSHU PATEL', 'MR  KISHAN LAL DANGI', 'MRS  SANTOSH PATEL', '2005-11-26', 'KALADWAS, VAISHA MANGRI, UDAIPUR', 'MDSPS-1817', 0, 5, 1, '', '', '', '0000-00-00'),
(3194, 'AAYUSH JAIN', 'MR  VIJAY JAIN', 'MRS  SANGEETA JAIN', '2007-02-14', '23-C, ADINATH BHAVAN, RIICO COLONY, MADARI, UDAIPUR', 'MDSPS-1136', 0, 5, 1, '', '', '', '0000-00-00'),
(3195, 'NAKSHTRA PAREEK', 'MR  MUKESH KUMAR PAREEK', 'MRS  PRIYANKA PAREEK', '2007-04-06', '11, VARDHMAN COMPLEX, NEAR KHUMBHA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2314', 0, 5, 2, '', '', '', '0000-00-00'),
(3196, 'SHIVRAJ SINGH RAO', 'MR GAJENDRA SINGH RAO', 'MRS  ANAND KANWAR', '2006-10-30', '183-184, NEAR KAKA HEALTH CLUB, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1404', 0, 5, 1, '', '', '', '0000-00-00'),
(3197, 'ABHIJEET CHATTERJEE', 'Mr. KUMAR CHATTERJEE', 'MRS  KAVITA CHATTERJEE', '2006-03-14', '42, 4 GH 15 UIT COLONY', 'MDSPS-1039', 0, 5, 1, '', '', '', '0000-00-00'),
(3198, 'KARTIK RANAWAT', 'MR  VIJAYPAL SINGH RANAWAT', 'MRS  OM KUNWAR', '2007-12-08', '2, SHANTI NAGAR SEC  3 NEAR KUMKUM VATIKA HIRAN MAGRI, UDAIPUR', 'MDSPS-1209', 0, 5, 2, '', '', '', '0000-00-00'),
(3199, 'UMESH KHARADI', 'MR  RAMESH CHANDRA', 'MRS  LALITA', '2008-03-13', 'NEAR POLICE STATION, PANARIYON KI MADRI, UDAIPUR', 'MDSPS-2326', 0, 5, 1, '', '', '', '0000-00-00'),
(3200, 'AVIKA SHARMA', 'MR. SUKHDEV SHARMA', 'MRS. RITU SHARMA', '2007-06-01', '307, CHANAKYPURIN HIRAN MAGRI, SECT, 4, UDAIPUR', 'MDSPS-2387', 0, 5, 1, '', '', '', '0000-00-00'),
(3201, 'HARSHITA SAWARIYA', 'MR. AMIT SAWARIYA', 'MRS. MONIKA SAWARIYA', '2007-11-29', 'AZAD NAGAR, HIRAN MAGRI, SECT. 3, UDAIPUR', 'MDSPS-2397', 0, 5, 1, '', '', '', '0000-00-00'),
(3202, 'MRIDUL JOSHI', 'MR. HEMANT KUMAR SHARMA', 'MRS. SUSHMA JOSHI', '2006-11-13', '206, SHAHI HITAWALA COMPLEX, NEAR GAURI CHOOK, SECTOR 11, HIRAN MAGRI, UDAIPUR', 'MDSPS-2409', 0, 5, 1, '', '', '', '0000-00-00'),
(3203, 'SUJAL LOHAR', 'MR  RAJU LOHAR', 'MRS  LALITA LOHAR', '2004-07-06', 'H NO  29, CHITRAKUT NAGAR, NEAR DATTATRAYE ASHRAM, UDAIPUR', 'MDSPS-2212', 0, 6, 1, '', '', '', '0000-00-00'),
(3204, 'JINAL RATHOUR', 'MR  ROSHAN SINGH', 'MRS  SHEETAL DEVI', '2000-12-24', 'NEW JAISHREE COLONY, UDAIPUR', 'MDSPS-2217', 0, 6, 2, '', '', '', '0000-00-00'),
(3205, 'GAURANGI SAXENA', 'MR  SANJEEV SAXENA', 'MRS  ANUBHA SAXENA', '2006-01-22', 'A-14, KAPIL BIHAR BEDWAS, PRATAP NAGAR, UDAIPUR', 'MDSPS-2219', 0, 6, 2, '', '', '', '0000-00-00'),
(3206, 'YUG SEMLAWAT', 'MR VIKAS SEMLAWAT', 'MRS  ANKITA', '2006-11-21', 'H NO  58, KRISNA VIHAR, NEW VIDHYA NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2226', 0, 6, 2, '', '', '', '0000-00-00'),
(3207, 'MAHAK KALRA', 'MR  VIJAY KUMAR KALRA', 'MRS  PRIYA KALRA', '2006-09-22', '2-J-12, GAYATRI NAGAR, HIRAN MAGRI, SECT  5, UDAIPUR', 'MDSPS-2229', 0, 6, 2, '', '', '', '0000-00-00'),
(3208, 'HIMESH AUDICHYA', 'MR  RAJ KUMAR AUDICHYA', 'MRS  MEENAKSHI AUDICHYA', '2006-10-14', '4-G-47, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2237', 0, 6, 2, '', '', '', '0000-00-00'),
(3209, 'KEENAL JAROLI', 'MR  RAMESH JAROLI', 'MRS  ANJU JAROLI', '2006-01-13', '486, AMBA MATA, UDAIPUR', 'MDSPS-2251', 0, 6, 2, '', '', '', '0000-00-00'),
(3210, 'AGNAY RANA', 'MR  RAKESH SINGH', 'MRS  SEEMA RANI', '2006-06-04', 'PRAJAPATI NO, WEST SUNDERWAS, UDAIPUR', 'MDSPS-2257', 0, 6, 2, '', '', '', '0000-00-00'),
(3211, 'HONIL DUNGERWAL', 'MR  ARVIND DUNGERWAL', 'MRS  SAKSHI DUNGERWAL', '2006-02-10', '29, SAMTA NAGAR, GAS GODOWN ROAD, NEAR MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0898', 0, 6, 2, '', '', '', '0000-00-00'),
(3212, 'HUKUMRAJ SINGH RAJAWAT', 'MR  SHIV SINGH RAJAWAT', 'MRS  ANAND KANWAR', '2006-07-26', 'HOUSE NO  4-KHA-1, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0982', 0, 6, 1, '', '', '', '0000-00-00'),
(3213, 'JANHAVI RAJ GAUTAM', 'MR  RAJESH GAUTAM', 'MRS  SAROJ GAUTAM', '2006-01-15', '235, NEW VIDHYA NAGAR, SHREEJI VIHAR, ROAD NO  6, SECT  NO  4, UDAIPUR', 'MDSPS-0787', 0, 6, 2, '', '', '', '0000-00-00'),
(3214, 'ANGEL WADHWANI', 'MR  SHANKER WADHWANI', 'MRS  JUHI WADHWANI', '2007-10-26', 'HOUSE NO  2-GA-26, HIRAN MAGRI, SECT  NO  5, SHANTI NAGAR, UDAIPUR', 'MDSPS-2120', 0, 6, 2, '', '', '', '0000-00-00'),
(3215, 'HARSH MENARIA', 'MR  PRAKASH MENARIA', 'MRS  VINTI MENARIA', '2006-04-07', '21-A, MAHAVIR COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1297', 0, 6, 1, '', '', '', '0000-00-00'),
(3216, 'MAHI BHATT', 'MR  VINOD BHATT', 'MRS SUDARSHNA BHATT', '2006-08-25', '280/1, ASHOK VIHAR, NEAR JAIN MANDIR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-0852', 0, 6, 2, '', '', '', '0000-00-00'),
(3217, 'BHOOMY DERASHRI', 'MR  OM PRAKASH DERASHRI', 'MRS  KOSHALYA JOSHI', '2006-02-24', '301, GANESH NAGAR, PAYDA, UNIVERSITY ROAD, UDAIPUR', 'MDSPS-2278', 0, 6, 2, '', '', '', '0000-00-00'),
(3218, 'AVANTIKA CHOUDHARY', 'MR  PRADEEP CHOUDHARY', 'MRS  SONU CHOUDHARY', '2007-02-18', 'H  NO  29, SHUBHAM COMPLEX OPP  SAVITRI VATIKA SEC  4', 'MDSPS-2184', 0, 6, 2, '', '', '', '0000-00-00'),
(3219, 'KANISHKA MOTWANI', 'MR  SURESH MOTWANI', 'MRS  SANGITA MOTWANI', '2006-03-09', '35, JAWAHAR NAGAR, UDAIPUR', 'MDSPS-1634', 0, 6, 1, '', '', '', '0000-00-00'),
(3220, 'ADITI MALU', 'MR  KANHAIYA LAL MALU', 'MRS  SARITA MALU', '2006-07-18', '"MALU PALACE", H NO  1, NEW MAHAVEER NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0959', 0, 6, 2, '', '', '', '0000-00-00'),
(3221, 'ADITYA VATS', 'MR  PARMOD KUMAR SHARMA', 'MRS  JYOTSNA SHARMA', '2006-01-09', '1463, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-0832', 0, 6, 2, '', '', '', '0000-00-00'),
(3222, 'KHUSHI BHERWANI', 'MR  JITENDRA BHERWANI', 'MRS  POOJA BHERWANI', '2006-09-05', '166, SECTOR NO  8, SANJAY GANDHI NAGAR, HIRAN MAGRI, UDAIPUR', 'MDSPS-1960', 0, 6, 1, '', '', '', '0000-00-00'),
(3223, 'ESHAAN JAIN', 'MR  AVINASH JAIN', 'MRS  SUPRIYA JAIN', '2006-10-09', '35-A, ADARSH HOUSING SOCIETY, VIDHYANAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1671', 0, 6, 1, '', '', '', '0000-00-00'),
(3224, 'RIDDHIMA SINGH PANWAR', 'MR  NARENDRA SINGH PANWAR', 'MRS  NAVITA PANWAR', '2006-07-06', 'H  NO  56, AMBAFALA , GUPTESHWAR ROAD', 'MDSPS-1037', 0, 6, 2, '', '', '', '0000-00-00'),
(3225, 'MEDHA DEWAL', 'MR  SIDHARTH DEWAL', 'MRS  SANJU KUNWAR', '2006-06-03', 'CHOTI NOKHA, INSIDE KUMHARO KA BHATTA, UDAIPUR', 'MDSPS-1526', 0, 6, 1, '', '', '', '0000-00-00'),
(3226, 'KRITIKA KALAL', 'MR  LEELA SHANKAR KALAL', 'MRS  LALITA KALAL', '2006-02-09', '63, ROSHAN NAGAR, SAVEENA, SECT  NO  12, UDAIPUR', 'MDSPS-1343', 0, 6, 2, '', '', '', '0000-00-00'),
(3227, 'HIRAL BHARGAVA', 'MR  YOGESH NAND BHARGAVA', 'MRS  MANISHA BHARGAVA', '2006-04-07', '25, VINAYAK NAGAR, NEAR PANARION KI MADRI, UDAIPUR', 'MDSPS-1300', 0, 6, 1, '', '', '', '0000-00-00'),
(3228, 'UNNATI SOMANI', 'MR  RAKESH SOMANI', 'MRS  SUMITRA SOMANI', '2006-04-02', '34, PARSHWANATH NAGAR SEC  3', 'MDSPS-1967', 0, 6, 2, '', '', '', '0000-00-00'),
(3229, 'HARSHAL AGRAWAL', 'MR  MUKESH AGRAWAL', 'MRS  RANJANA AGRAWAL', '2006-06-01', '28, MANWAKHERA, GAYATRI NURSING COLLEGE, UDAIPUR HARSH NIKUNG HANUMAN COLONY', 'MDSPS-1992', 0, 6, 2, '', '', '', '0000-00-00'),
(3230, 'BHAVIK DAK', 'MR  VIJAY KUMAR DAK', 'MRS  KIRAN DAK', '2006-08-07', '557, TAGORE NAGAR, HIRAN MAGRE, SECT  NO  4, UDAIPUR', 'MDSPS-1812', 0, 6, 2, '', '', '', '0000-00-00'),
(3231, 'SAHIL SHARMA', 'MR  GIRDHARI LAL SHARMA', 'MRS  YASHODA PUSHKARNA', '2006-11-01', 'H NO  13, MAHAVEER NAGAR, SECT  NO  4, HIRAN MAGRI,  ROAD NO  3, UDAIPUR', 'MDSPS-1825', 0, 6, 2, '', '', '', '0000-00-00'),
(3232, 'RITU DANGI', 'MR  DINESH DANGI', 'MRS  MEENA DANGI', '2006-02-19', '64, SHANTI NAGAR, NEAR MDS SCHOOL, SECTOR NO  3, UDAIPUR', 'MDSPS-1921', 0, 6, 1, '', '', '', '0000-00-00'),
(3233, 'SARTHAK SHARMA', 'MR  HARI PRAKASH SHARMA', 'MRS  RAJNI SHARMA', '2005-05-03', 'A-107, DWARIKA APARTMENT, A-ONE COMPLEX, MANWAKHERA ROAD, UDAIPUR', 'MDSPS-2111', 0, 6, 1, '', '', '', '0000-00-00'),
(3234, 'KALPESH KAROTIYA', 'MR  SHANTI LAL', 'MRS  SUMITRA', '2005-12-16', '50, SAMTA NAGAR, OPP  MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2157', 0, 6, 1, '', '', '', '0000-00-00'),
(3235, 'RUDRAKSH KHANDELWAL', 'MR  SANJAY KHANDELWAL', 'MRS  SEEMA GUPTA', '2006-05-11', '48, GANDHI NAGAR, GANDHI COMPLEX, KALKA MATA ROAD, UDAIPUR', 'MDSPS-2026', 0, 6, 2, '', '', '', '0000-00-00'),
(3236, 'KAPIL LOHAR', 'MR  PRABHULAL LOHAR', 'MRS  TARA LOHAR', '2006-03-04', '108, ROOP NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0972', 0, 6, 1, '', '', '', '0000-00-00'),
(3237, 'DIYA DOSHI', 'MR  VARDHMAN DOSHI', 'MRS  CHANCHAL DOSHI', '2005-11-12', '285, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0877', 0, 6, 2, '', '', '', '0000-00-00'),
(3238, 'PARTH MALU', 'MR  LALIT KUMAR MALU', 'MRS  DIVYA MALU', '2006-05-10', '3, SHANTI NAGAR, GAS GODOWN ROAD, NEAR MDS SCHOOL, SECT  NO  3, UDAIPUR', 'MDSPS-0955', 0, 6, 2, '', '', '', '0000-00-00'),
(3239, 'RISHIRAJ SINGH SANSERA', 'MR  RAGHVENDRA SINGH SANSERA', 'MRS  ARUNA SINGH', '2006-05-11', 'JAGNIWAS, 22, NEW DORE NAGAR, BEHIND SEVASHRAM, UDAIPUR', 'MDSPS-0834', 0, 6, 2, '', '', '', '0000-00-00'),
(3240, 'KANISHKA RAJ CHOUHAN', 'MR  MAHENDRA SINGH', 'MRS  REKHA CHOUHAN', '2006-09-15', '123, ARIHANT VIHAR, PUROHITO KI MADRI, AKASHWANI, UDAIPUR', 'MDSPS-1113', 0, 6, 1, '', '', '', '0000-00-00'),
(3241, 'SATVIK GHAI', 'MR  LOVE KUMAR GHAI', 'MRS  SHILOVA GHAI', '2006-06-18', '17 NEW JAI SHREE COLONY BOHRA GANESH JI ,', 'MDSPS-1578', 0, 6, 2, '', '', '', '0000-00-00'),
(3242, 'PULKIT KUMAWAT', 'MR  LOKESH KUMAWAT', 'MRS  SHASHI KANTA KUMAWAT', '2008-02-06', '2, KALAJI GORA JI, UDAIPUR', 'MDSPS-2290', 0, 6, 2, '', '', '', '0000-00-00'),
(3243, 'VINEET JAIN', 'MR  LAXMI LAL JAIN', 'MRS  KAVITA JAIN', '2005-07-03', 'VILLAGE LAKADWAS, TEHSIL GIRVA, DISTT  UDAIPUR', 'MDSPS-1599', 0, 6, 2, '', '', '', '0000-00-00'),
(3244, 'VIRAT SAHLOT', 'MR  VISHAL SAHLOT', 'MRS  SNEHA SAHLOT', '2005-11-18', '66, VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0908', 0, 6, 2, '', '', '', '0000-00-00'),
(3245, 'GARVIT KOTHARI', 'MR  RAKESH KOTHARI', 'MRS  SUNITA KOTHARI', '2006-01-30', '21, SAMTA NAGAR, NEAR MDS SCHOOL, GAS GODOWN ROAD, UDAIPUR SEC  3', 'MDSPS-0880', 0, 6, 2, '', '', '', '0000-00-00'),
(3246, 'CHARCHIT CHORDIA', 'MR  SANJAY CHORDIA', 'MRS  VANITA CHORDIA', '2005-12-11', '15, VIRANDAWAN VIHAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0977', 0, 6, 2, '', '', '', '0000-00-00'),
(3247, 'PUSHPENDER SINGH SOLANKI', 'MR  GAJENDRA SINGH SOLANKI', 'MRS  SHOBHA KANWAR', '2005-05-27', '15, SHANTI NAGAR, NEAR MDS, SEC - 4, UDAIPUR', 'MDSPS-2086', 0, 6, 1, '', '', '', '0000-00-00'),
(3248, 'ASHISH BHAGORA', 'MR  PAVITRA KUMAR BHAGORA', 'MRS  HARSHA BHAGORA', '2006-09-01', '19, NEW TAGORE NAGAR SEC 4', 'MDSPS-2158', 0, 6, 2, '', '', '', '0000-00-00'),
(3249, 'SANJAY DANGI', 'MR  CHUNILAL DANGI', 'MRS  SHOBHA DANGI', '2005-07-25', 'ROAD NO  2, SUBHASH NAGAR, NEAR MOTHER PUBLIC SCHOOL, UDAIPUR', 'MDSPS-0866', 0, 6, 2, '', '', '', '0000-00-00'),
(3250, 'BHASKAR WADHWANI', 'MR  SURESH WADHWANI', 'MRS  HIRANSHI WADHWANI', '2006-03-26', 'H  NO  A 51 B , BLOCK PRATAP NAGAR', 'MDSPS-0859', 0, 6, 2, '', '', '', '0000-00-00'),
(3251, 'HITEN MANDAWARA', 'MR  SARVESHWAR MANDAWARA', 'MRS  BHARTI MANDAWARA', '2006-07-26', '3A, 105, GUPTESWAR NAGAR SEC  7', 'MDSPS-0905', 0, 6, 2, '', '', '', '0000-00-00'),
(3252, 'SHEKHAR PATEL', 'MR  RAM LAL PATEL', 'MRS  SHANTA PATEL', '2006-01-05', 'MANWAKHERA, SECT  NO  4, UDAIPUR', 'MDSPS-0893', 0, 6, 1, '', '', '', '0000-00-00'),
(3253, 'KOMAL RATHORE', 'MR  CHANDAN SINGH RATHORE', 'MRS  DURGA KUNWAR RATHORE', '2005-06-09', 'CENTRAL EXICES SEC  11 QUARTER NO  -7/2', 'MDSPS-0894', 0, 6, 2, '', '', '', '0000-00-00'),
(3254, 'RUDRA MAHESHWARI', 'MR  KAMLESH AGAL', 'MRS  KALPANA MAHESHWARI', '2005-09-09', '496, SEC  4 MAIN ROAD OPP  WATER TANK', 'MDSPS-0887', 0, 6, 2, '', '', '', '0000-00-00'),
(3255, 'PRANAY PALIWAL', 'MR  DILIP PALIWAL', 'MRS  DURGA PALIWAL', '2006-06-07', '266, VIVAK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0836', 0, 6, 2, '', '', '', '0000-00-00'),
(3256, 'MEET POKHARNA', 'MR  VINOD POKHARNA', 'MRS  REKHA POKHARNA', '2006-06-21', '1224/25, ADARSH NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0846', 0, 6, 1, '', '', '', '0000-00-00'),
(3257, 'KAVYA SINGH SISODIYA', 'MR  MAHENDRA SINGH SISODIYA', 'MRS  PUSHPENDRA SISODIYA', '2005-11-18', '4/348,49, RHB COLONY, SECT  NO  14, UDAIPUR', 'MDSPS-1385', 0, 6, 1, '', '', '', '0000-00-00'),
(3258, 'RAJAT CHHAJED', 'MR SUNIL CHHAJED', 'MRS ASHA CHHAJED', '2005-10-05', '47-A SAMTA NAGAR NEAR MDS, SEC  NO  3, UDAIPUR', 'MDSPS-1200', 0, 6, 2, '', '', '', '0000-00-00'),
(3259, 'JAY SINGH JADON', 'MR  DINESH SINGH JADOUN', 'MRS  KUSUM JADON', '2005-11-08', '10-A, ADARSH HOUSING SOCIETY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1025', 0, 6, 2, '', '', '', '0000-00-00'),
(3260, 'MAANVIKA MAROO', 'MR  HARSH MAROO', 'MRS  VINITA MAROO', '2006-10-17', 'H NO  4, TILAK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1098', 0, 6, 2, '', '', '', '0000-00-00'),
(3261, 'ADITYARAJ SINGH RANAWAT', 'MR  SANGRAM SINGH RANAWAT', 'MRS  VINOD KUNWAR RATHORE', '2005-12-14', '41, SAMTA NAGAR SEC  3', 'MDSPS-1055', 0, 6, 1, '', '', '', '0000-00-00'),
(3262, 'GOURAV SEN', 'MR  RAJENDER KUMAR BARBER', 'MRS  SEEMA VERMA', '2006-11-27', '101, SUBHASH NAGAR, ROAD NO  4, OPP  B N  COLLEGE, UDAIPUR', 'MDSPS-1576', 0, 6, 1, '', '', '', '0000-00-00'),
(3263, 'NANDINI SEN', 'MR  HARISH SEN', 'MRS  MEENA SEN', '2006-05-14', '101, SUBHASH NAGAR, ROAD NO  4, OPP  B N  COLLEGE, UDAIPUR', 'MDSPS-1577', 0, 6, 1, '', '', '', '0000-00-00'),
(3264, 'PRATIK SINGHVI', 'MR  PRAVEEN N SINGHVI', 'MRS  ANITA P  SINGHVI', '2006-05-12', '5, SAMTA NAGAR, SEC  3 HIRAN MAGRI, UDAIPUR', 'MDSPS-1629', 0, 6, 2, '', '', '', '0000-00-00'),
(3265, 'ROHAN VYAS', 'MR  SANTOSH VYAS', 'MRS  SUNITA VYAS', '2006-01-22', '129, ARIHANT VIHAR, NEAR AKASHWANI KENDRA, MADRI PUROHITAN, UDAIPUR', 'MDSPS-1472', 0, 6, 1, '', '', '', '0000-00-00'),
(3266, 'NIKUNJ CHOUDHARY', 'MR  PRAMOD CHOUDHARY', 'MRS  TARA CHOUDHARY', '2007-03-09', '6-R, R K  PURAM, SECT  NO  9 UDAIPUR', 'MDSPS-1736', 0, 6, 1, '', '', '', '0000-00-00'),
(3267, 'DEV GOYAL', 'MR  ANIL GOYAL', 'MRS  SUNITA GOYAL', '2006-05-16', '51, DORE NAGAR, SEVESHRAM UDAIPUR', 'MDSPS-1779', 0, 6, 2, '', '', '', '0000-00-00'),
(3268, 'VAIBHAVI CHOUDHARY', 'MR  RAKESH KUMAR CHOUDHARY', 'MRS  PRIYANKA CHOUDHARY', '2006-07-25', 'B-207, DWARIKA APARTMENT ,MANWA KHEDA ROAD NEAR EKLING PURA CHOURAHA', 'MDSPS-1890', 0, 6, 2, '', '', '', '0000-00-00'),
(3269, 'DEEPIKA DANGI', 'MR  MOHAN LAL DANGI', 'MRS  BHAWARI DANGI', '2006-02-04', 'BAS STAND, LAKADWAS, UDAIPUR', 'MDSPS-1585', 0, 6, 1, '', '', '', '0000-00-00'),
(3270, 'SREEJA SUNKARA', 'DR  SRINIVAS RAO SUNKARA', 'MRS  KALYANI S', '2007-03-10', '131, SHRIJI VIHAR NEW VIDHYA NAGAR', 'MDSPS-1425', 0, 6, 2, '', '', '', '0000-00-00'),
(3271, 'HARDIK BANSAL', 'MR NARESH BANSAL', 'MRS  HEMA AGRAWAL', '2006-05-04', 'FLAT NO  -B-407 DWARIKA APARTMENT MANWA KHERA ROAD', 'MDSPS-1402', 0, 6, 1, '', '', '', '0000-00-00'),
(3272, 'SHALABH GOEL', 'DR  ARUN GOEL', 'MRS  SAVITA GOEL', '2006-02-28', 'L1-5, STAFF QUARTERS, UNIVERSITY CAMPUS, UDAIPUR', 'MDSPS-2297', 0, 6, 2, '', '', '', '0000-00-00'),
(3273, 'CHITRANSH KUMAWAT', 'MR  RAJENDRA KUMAWAT', 'MRS  PRAMILA KUMAWAT', '2007-06-11', '99/B, RAILWAY COLONY, RANAPRATAP NAGAR, UDAIPUR', 'MDSPS-2298', 0, 6, 2, '', '', '', '0000-00-00'),
(3274, 'NEELAKSH DASHORA', 'MR  SUBHASH DASHORA', 'MRS  VANDANA DASHORA', '2006-12-23', '3A-158, GUPTESHWAR NAGAR, HIRAN MAGRI, SECT  NO  7, UDAIPUR', 'MDSPS-1794', 0, 6, 2, '', '', '', '0000-00-00'),
(3275, 'TRAYANSH VIJAYAVARGIA', 'MR  SATYA PRAKASH VIJAYAVARGIA', 'MRS  KALA VIJAYAVARGIA', '2007-01-13', '10, AMBIKA NAGAR, NR  SAVITRY VATIKA, SECTOR NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-1789', 0, 6, 2, '', '', '', '0000-00-00'),
(3276, 'LAKSHITA RAO', 'MR  CHANCHAL SINGH RAO', 'MRS  RADHA KUNWAR RAO', '2006-06-22', '48, SANJAY GANDHI NAGAR SEC  8', 'MDSPS-1751', 0, 6, 1, '', '', '', '0000-00-00'),
(3277, 'BHUPENDRA SHARMA', 'MR  UDAI LAL SHARMA', 'MRS  MANJU SHARMA', '2005-05-26', 'VILLAGE KANPUR, TEHSIL GIRWA, DISTT  UDAIPUR', 'MDSPS-1728', 0, 6, 1, '', '', '', '0000-00-00'),
(3278, 'MAYANK PATEL', 'MR  PUSHKAR PATEL', 'MRS  JASANDA PATEL', '2006-06-30', 'MANVA KHERA, SECT  NO  4, UDAIPUR', 'MDSPS-0953', 0, 6, 1, '', '', '', '0000-00-00'),
(3279, 'PRATYUSH SUKHWAL', 'MR  PRAKASH CHANDRA SUKHWAL', 'MRS  KOMAL SUKHWAL', '2005-02-27', 'PATHON KI MAGRI, NEAR AIRTEL TOWER, SUBHASH NAGAR, UDAIPUR', 'MDSPS-0917', 0, 6, 1, '', '', '', '0000-00-00'),
(3280, 'CHETAN VAISHANAV', 'MR  GIRRAJ PRASAD VAISHANAV', 'MRS  ANITA VAISHANAV', '2005-08-02', '30-A, SUKHADIYA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0861', 0, 6, 1, '', '', '', '0000-00-00'),
(3281, 'YASH PATEL', 'MR  LAXMI LAL PATEL', 'MRS  BHAGWANTI PATEL', '2006-01-26', 'VILLAGE MANWA KHERA, POST PUROHITAN KI MADRI, TEH  GIRVA, UDAIPUR', 'MDSPS-0850', 0, 6, 1, '', '', '', '0000-00-00'),
(3282, 'HITESH DANGI', 'MR  HEMRAJ DANGI', 'MRS  BENI DANGI', '2005-08-05', 'VILLAGE MANWA KHERA, TEH  GIRVA, UDAIPUR', 'MDSPS-0851', 0, 6, 1, '', '', '', '0000-00-00'),
(3283, 'URVI DANGI', 'MR  DHARMENDRA DANGI', 'MRS  PUSHPA DANGI', '2006-03-05', 'MANVA KHERA, SECT  NO  4, UDAIPUR', 'MDSPS-0856', 0, 6, 1, '', '', '', '0000-00-00'),
(3284, 'PUNEET PRAJAPAT', 'MR  DINESH PRAJAPAT', 'MRS  KHUSHLATA PRAJAPAT', '2006-01-20', 'H NO  198, KUMHARO KA MOUHALLA, NEAR BUS STAND, LAKADWAS, TEHSIL GIRWA, DISTT  UDAIPUR', 'MDSPS-2149', 0, 6, 1, '', '', '', '0000-00-00'),
(3285, 'TANVI JAIN', 'MR  SANJAY JAIN', 'MRS  SEEMA JAIN', '2006-11-19', '346, NEAR KUMKUM VATIKA SEC  3, UDAIPUR', 'MDSPS-1810', 0, 6, 1, '', '', '', '0000-00-00'),
(3286, 'CHANCHAL CHOUDHARY', 'MR  ANIL CHOUDHARY', 'MRS  SEEMA CHOUDHARY', '2005-06-03', 'SOUTH SUNDERWAS, NEAR SHYAM VATIKA, UDAIPUR', 'MDSPS-1117', 0, 6, 1, '', '', '', '0000-00-00'),
(3287, 'VAIDIKA JAIN', 'MR  ANIL KUMAR JAIN', 'LATE MRS  NIRMALA JAIN', '2006-12-15', '20, JAIRAM COLONY, THOKAR CHAURAHA, UDAIPUR', 'MDSPS-1236', 0, 6, 1, '', '', '', '0000-00-00'),
(3288, 'GOURAV MEGHWAL', 'MR  BHERU LAL MEGHWAL', 'MRS  LAJWANTI MEGHWAL', '2006-07-13', '98-B, ROOP NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0966', 0, 6, 2, '', '', '', '0000-00-00'),
(3289, 'ADITI SINGH CHANDAWAT', 'MR  JITENDRA SINGH', 'MRS  JITENDRA SINGH', '2006-01-22', 'MANWA KHERA ROAD, SEC - 4, UDAIPUR', 'MDSPS-2052', 0, 6, 1, '', '', '', '0000-00-00'),
(3290, 'DIYA SHARMA', 'MR  DEVENDRA SHARMA', 'MRS  INDUBALA SHARMA', '2006-12-10', '27, SHANTI NAGAR, OPP  MDS PUBLIC SCHOOL, HIRAN MAGRI, SECTOR NO  3, UDAIPUR', 'MDSPS-1819', 0, 6, 1, '', '', '', '0000-00-00'),
(3291, 'VAIBHAVPAL SINGH SOLANKI', 'MR  CHANDRA PAL SINGH SOLANKI', 'MRS  KHUSVEER KANWAR', '2005-09-24', '246, VIVEK NAGAR SEC  3 URA CHOURAHA HIRAN MAGRI', 'MDSPS-0873', 0, 6, 1, '', '', '', '0000-00-00'),
(3292, 'NAMAN DAGRIYA', 'MR  SANMATI DAGRIYA', 'MRS  CHETNA DEVI DAGRIYA', '2006-05-13', 'H NO  3-F-62, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-0991', 0, 6, 1, '', '', '', '0000-00-00'),
(3293, 'CHINMAY KALAL', 'MR  NARAYAN LAL KALAL', 'MRS  NILAM DEVI', '2005-03-11', '250, SAMTA NAGAR, BEHIND MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2182', 0, 6, 1, '', '', '', '0000-00-00'),
(3294, 'JAYANT GARG', 'MR  NARESH GARG', 'MRS  CHETNA GARG', '2006-02-25', '48-A, SHANTI NAGAR, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2308', 0, 6, 2, '', '', '', '0000-00-00'),
(3295, 'UPASANA DANGI', 'MR PRAMOD DANGI', 'MRS  YASHODA DANGI', '2006-08-16', 'EKLINGPURA, POST KALADWAS, UDAIPUR', 'MDSPS-0995', 0, 6, 1, '', '', '', '0000-00-00'),
(3296, 'HARDIK KASERA', 'MR  RAJESH KASERA', 'MRS  ANJU KASERA', '2006-10-13', 'OSTWAL NAGAR, SUNDERWAS, NEAR RAJASTHAN PATRIKA  UDAIPUR', 'MDSPS-2188', 0, 6, 1, '', '', '', '0000-00-00'),
(3297, 'ANISHA MUKESH JAIN', 'MR  MUKESH JAIN (BHANDARI)', 'MRS  REKHA JAIN', '2007-03-14', '3, NAMINATH NAGAR, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-2311', 0, 6, 2, '', '', '', '0000-00-00'),
(3298, 'HARDIKA JAIN', 'MR  ASHOK JAIN', 'MRS  MANJU JAIN', '2006-04-06', '23-C, VIDHYA BHAVAN, RIICO COLONY, UDAIPUR', 'MDSPS-0993', 0, 6, 1, '', '', '', '0000-00-00'),
(3299, 'DAKSH CHHIMPA', 'MR  ABHISHEK CHHIMPA', 'MRS  TRIPTI SHRIMALI', '2006-04-25', '14, UNTO KA KARKHANAA, BHATTIYANI CHOHATTA, UDAIPUR', 'MDSPS-1529', 0, 6, 2, '', '', '', '0000-00-00'),
(3300, 'KEJAL VERMA', 'MR  YATHARTH VERMA', 'MRS  SHWETA VERMA', '2006-08-20', 'D- 105, HIRAN MAGRI SEC  14 UDR ', 'MDSPS-0994', 0, 6, 2, '', '', '', '0000-00-00'),
(3301, 'ARTH JAIN', 'MR  JAIPRAKASH', 'MRS  KUSUM JAIN', '2006-08-14', '3-GA-5, SECTOR NO  5, HIRAN MAGRI, UDAIPUR', 'MDSPS-0948', 0, 6, 1, '', '', '', '0000-00-00'),
(3302, 'DIKSHITA CHOUHAN', 'MR  KARAN SINGH CHOUHAN', 'MRS  SANTOSH CHOUHAN', '2006-11-30', 'E-26 CLASS NEAR SHIV MANDIR PRATAP NAGAR', 'MDSPS-1896', 0, 6, 1, '', '', '', '0000-00-00'),
(3303, 'CHANDRABHAN SINGH SOLANKI', 'MR  GANPAT SINGH SOLANKI', 'MRS  MEENAKSHI KANWAR', '2006-07-27', '86-C, DORAY NAGAR, UDAIPUR', 'MDSPS-2324', 0, 6, 1, '', '', '', '0000-00-00'),
(3304, 'MANISHA KHARADI', 'MR  RAMESH CHANDRA', 'MRS  LALITA', '2006-02-13', 'NEAR POLICE STATION, PANARIYON KI MADRI, UDAIPUR', 'MDSPS-2325', 0, 6, 1, '', '', '', '0000-00-00'),
(3305, 'PRIYANSHI JOSHI', 'MR. VIPIN BIHARI JOSHI', 'MRS. PAYAL JOSHI', '2006-06-06', '125, SECT. NO. 3, TILAK NAGAR, UDAIPUR', 'MDSPS-2386', 0, 6, 2, '', '', '', '0000-00-00'),
(3306, 'NEERAJ KUMAR', 'MR. LALITENDRA KUMAR', 'MRS. HITENDRA KUMARI', '2006-08-04', 'HOUSE NO. 33, BOHARA GANESH COLONY, DHOOLKOT CHOURAHA, UDAIPUR', 'MDSPS-2405', 0, 6, 1, '', '', '', '0000-00-00'),
(3307, 'LAKSHAYA CHAUHAN', 'MR  ROHIT CHAUHAN', 'MRS  BHAVNA CHAUHAN', '2004-12-19', 'A-2, 102, VALLABH EMPIRE, NAVRATAN, BHUVANA, UDAIPUR', 'MDSPS-2198', 0, 7, 2, '', '', '', '0000-00-00'),
(3308, 'KHUSHI MISHRA', 'MR. AVINASH MISHRA', 'MRS  SHEFALI MISHRA', '2004-11-18', '3  SATYANARAYAN MARG, AMAL KA KANTA, UDAIPUR', 'MDSPS-2266', 0, 7, 2, '', '', '', '0000-00-00'),
(3309, 'GARGI KATHAIT', 'MR  BHUPENDRA SINGH KATHAIT', 'MRS  JAYANTI KATHAIT', '2005-12-06', 'HOUSE NO  1278, ADARSH NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-1162', 0, 7, 2, '', '', '', '0000-00-00'),
(3310, 'CHARVI RAJ GAUTAM', 'MR  RAJESH GAUTAM', 'MRS  SAROJ GAUTAM', '2006-01-15', '98, NIRMAL VIHAR HIRAN MAGRI SEC  3', 'MDSPS-0788', 0, 7, 2, '', '', '', '0000-00-00'),
(3311, 'SHOBHIT VERMA', 'MR  MUKESH CHAND VERMA', 'MRS  ANJANA VERMA', '2005-08-06', '12, MANI BHADRA COLONY, SEC -3, UDAIPUR', 'MDSPS-0755', 0, 7, 1, '', '', '', '0000-00-00'),
(3312, 'HARSHIT MUNDANIYA', 'MR  MANOJ KUMAR MOCHI', 'MRS  HEMLATA MOCHI', '2006-04-07', 'H NO  512, KAST KALA MARG, KHERADIWARA, UDAIPUR', 'MDSPS-2272', 0, 7, 2, '', '', '', '0000-00-00'),
(3313, 'DARSHNA SEN', 'MR  PUSHKAR SEN', 'MRS  DURGA SEN', '2005-02-11', 'DREEM HOUSE 539, ROSHAN NAGAR, SECT  NO  12, SAVINA, UDAIPUR', 'MDSPS-2279', 0, 7, 1, '', '', 'MDSPS-2279.pdf', '2016-12-25'),
(3314, 'SIMON VAISHNAV', 'MR  NAVIN KUMAR VAISHNAV', 'MRS  REKHA VAISHNAV', '2005-05-04', 'H NO  43, SHANTI NAGAR, SEC  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-0745', 0, 7, 2, '', '', '', '0000-00-00'),
(3315, 'MANAN MEHTA', 'MR  SUNIL MEHTA', 'MRS  RAJNI MEHTA', '2005-09-02', '9, ANUVAST NAGAR NEAR B S N L  OFFICE H  M  SEC  4', 'MDSPS-0772', 0, 7, 1, '', '', '', '0000-00-00'),
(3316, 'RHYTHM JAIN', 'MR  PRAVEEN JAIN', 'MRS  NEETA JAIN', '2005-06-19', '2, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1310', 0, 7, 1, '', '', '', '0000-00-00'),
(3317, 'KRITIKA MAURYA', 'MR  SURESH CHANDRA MAURYA', 'MRS  REETA MAURYA', '2005-04-08', 'RAILWAY QT  146-B, RAILWAY COLONY, RANA PRATAP NAGAR RAILWAY STATION, UDAIPUR', 'MDSPS-1111', 0, 7, 2, '', '', '', '0000-00-00'),
(3318, 'RAJVEER JAIN', 'MR  RAMESH KUMAR JAIN', 'MRS  MANISHA JAIN', '2004-12-08', '6 E 7, VIP COLONY,  SEC - 9, OPP UDAIPUR SAVINA', 'MDSPS-1175', 0, 7, 1, '', '', '', '0000-00-00'),
(3319, 'YASHI SHARMA', 'MR  KAILASH SHARMA', 'MRS  GARIMA SHARMA', '2005-05-25', '2, SHASTRI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1018', 0, 7, 1, '', '', '', '0000-00-00'),
(3320, 'KARTIKAY SINGH CHAUHAN', 'MR  AJEET SINGH CHAUHAN', 'MRS  RINKU CHAUHAN', '2006-07-06', '159, ROOP NAGAR SEC  3 HIRAN MAGRI UDR ', 'MDSPS-1673', 0, 7, 2, '', '', '', '0000-00-00'),
(3321, 'RAO BHAVYAPRATAP SINGH', 'MR  RAO AJEET SINGH', 'MRS  GAYATRI SINGH', '2005-10-10', '2-K-48, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1653', 0, 7, 1, '', '', '', '0000-00-00'),
(3322, 'TANAY MATHUR', 'MR  DEVENDRA MATHUR', 'MRS  SUMAN MATHUR', '2005-03-02', '82 A, ROAD NO 3, SUBHASH NAGAR, UDAIPUR', 'MDSPS-1702', 0, 7, 2, '', '', '', '0000-00-00');
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`) VALUES
(3323, 'VEDANSH PALIWAL', 'MR  LALIT PALIWAL', 'MRS  KIMUD PALIWAL', '2005-05-10', '6, SURYA NAGAR, TITRADAI, UDAIPUR', 'MDSPS-1358', 0, 7, 2, '', '', '', '0000-00-00'),
(3324, 'PRINCE DANGI', 'MR  MAGAN LAL DANGI', 'MRS  LALI DANGI', '2005-10-03', 'ZAMAR KOTRA ROAD, EKLINGPURA, UDAIPUR POST KALADWAS', 'MDSPS-1383', 0, 7, 1, '', '', '', '0000-00-00'),
(3325, 'VANSH GUPTA', 'MR  PRAMOD  GUPTA', 'MRS  MEENU GUPTA', '2005-12-03', '24, EAST TRIMURTI COMPLEX, MANWA KHEDA ROAD, SEC - 4, UDAIPUR', 'MDSPS-1190', 0, 7, 2, '', '', '', '0000-00-00'),
(3326, 'DEVANSHI GOUR', 'MR HEMENDRA GOUR', 'MRS  NISHA GOUR', '2006-03-02', '68, DORE NAGAR, UDAIPUR', 'MDSPS-1952', 0, 7, 2, '', '', '', '0000-00-00'),
(3327, 'ANSHIKA GOEL', 'MR  PANKAJ GOEL', 'MRS  RADHIKA GOEL', '2004-12-05', 'A-304, DWARIKA APARTMENT,  MANWAKHERA, UDAIPUR', 'MDSPS-1931', 0, 7, 2, '', '', '', '0000-00-00'),
(3328, 'MOHIT JAIN', 'MR  SUSHIL KUMAR CHITTORA', 'MRS  KUSUM CHITTORA', '2004-12-06', '28, JINENDRA VILLA, NEAR SAVINA VATIKA, SAVINA, UDAIPUR', 'MDSPS-1938', 0, 7, 2, '', '', '', '0000-00-00'),
(3329, 'DAKSHITA POKHARNA', 'MR  SAMEER POKHARNA', 'MRS  JAYA POKHARNA', '2006-03-28', '13/852, ARVIND NAGAR, SUNDERWAS, GLASS FACTORY, UDAIPUR', 'MDSPS-1978', 0, 7, 2, '', '', '', '0000-00-00'),
(3330, 'PRATHAM PALIWAL', 'MR  VINOD PALIWAL', 'MRS  VANDANA PALIWAL', '2005-09-06', '39, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-2126', 0, 7, 2, '', '', '', '0000-00-00'),
(3331, 'HIMANSHU JOSHI', 'MR  HITENDRA JOSHI', 'MRS  SAVITA JOSHI', '2005-06-11', '56 C, SEC - 9, SAVINA, UDAIPUR', 'MDSPS-2053', 0, 7, 1, '', '', '', '0000-00-00'),
(3332, 'MITARTH AMETA', 'MR  HEMANT AMETA', 'MRS  ANANTA BHATT', '2004-10-10', '881, GYAN VILLA, ARVIND NAGAR, NEAR JAIN STHANAK GLASS FACTORY, UDAIPUR', 'MDSPS-0865', 0, 7, 2, '', '', '', '0000-00-00'),
(3333, 'CHETAN PATEL', 'MR  JAGDISH PATEL', 'MRS  MANJU PATEL', '2004-12-21', 'MANWA KHEDA, NER SNJEEVANI COLLAGE, UDAIPUR ,103', 'MDSPS-0849', 0, 7, 1, '', '', '', '0000-00-00'),
(3334, 'SHRUTI CHOUHAN', 'MR  HARISH CHOUHAN', 'MRS  KIRAN CHOUHAN', '2005-08-29', '40, SANTA  NAGAR, HIRAN MAGRI, SEC  NO  3, UDAIPUR', 'MDSPS-0771', 0, 7, 2, '', '', '', '0000-00-00'),
(3335, 'RHYTHAM SHARMA', 'MR INDER LAL SHARMA', 'MRS  MEENAKSHAI SHARMA', '2005-02-28', '139, SHREE JI VIHAR, NEW VIDHYA NAGAR COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0801', 0, 7, 1, '', '', '', '0000-00-00'),
(3336, 'KANISHK PANDEY', 'MR  MANOJ KUMAR PANDEY', 'MRS  ARCHANA PANDEY', '2004-06-19', '68, N B  NAGAR, DHAUJI KI BAWARI, BEDWAS, UDAIPUR', 'MDSPS-0744', 0, 7, 2, '', '', '', '0000-00-00'),
(3337, 'DIGVESH PATEL', 'MR  DHULA RAM PATEL', 'MRS  MOTI B  PATEL', '2002-05-11', '50, SHANTI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-0791', 0, 7, 1, '', '', '', '0000-00-00'),
(3338, 'JEETAN PATEL', 'MR  KHEM RAJ', 'MRS  KURI DEVI PATEL', '2004-01-21', '50, SHANTI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-0770', 0, 7, 2, '', '', '', '0000-00-00'),
(3339, 'RAUNAK SINGH SHEKHAWAT', 'MR  MAHIPAL SINGH SHEKHAWAT', 'MRS  KAMLESH KANWAR', '2006-02-16', '12, SIDDHARTH COMPLEX SEC - 5, UDIPUR HIRAN MAGRI', 'MDSPS-1001', 0, 7, 1, '', '', '', '0000-00-00'),
(3340, 'PRIYA KUMARI', 'MR  SHYAM SINGH', 'MRS  BAUCHANVATI', '2008-03-08', '19, SAMTA NAGAR SEC  3 HIRAN MAGRI', 'MDSPS-2001', 0, 7, 1, '', '', '', '0000-00-00'),
(3341, 'TARINI SHARMA', 'MR  SOMESH SHARMA', 'MRS  MANISHA SHARMA', '2005-04-25', '56, NEW URJA VIHAR, GUPTESHWAR MAHADEV ROAD, AMBA FALA, TITARDI, UDAIPUR', 'MDSPS-2137', 0, 7, 2, '', '', '', '0000-00-00'),
(3342, 'HEEMAN TONEGYA', 'MR  RAHUL TONEGYA', 'MRS  SEEMA', '2005-04-17', '4/493, RAJ HOUSING BOARD COLONY, GOVERDHAN VILAS, SECT  NO  14, UDAIPUR', 'MDSPS-2071', 0, 7, 1, '', '', '', '0000-00-00'),
(3343, 'KUSHAGRA PIPLIWAL', 'MR  LALIT PIPLIWAL', 'MRS  ANJU PIPLIWAL', '2005-02-19', '54-A, DORE NAGAR, UDAIPUR', 'MDSPS-2072', 0, 7, 2, '', '', '', '0000-00-00'),
(3344, 'LUCKY PATEL', 'MR  DURGA SHANKER PATEL', 'MRS  MANOHARI DEVI', '2005-07-01', 'VIP LAKADWAS TH  GIRWA UDR ', 'MDSPS-2151', 0, 7, 1, '', '', '', '0000-00-00'),
(3345, 'JITESH PATEL', 'MR  DURGA SHANKER PATEL', 'MRS  MANOHARI DEVI', '2003-08-11', 'GANESH GATI, LAKADWAS TEHSIL GIRVA, UDAIPUR', 'MDSPS-2152', 0, 7, 1, '', '', '', '0000-00-00'),
(3346, 'SHIVRANJAN CHOUBISA', 'MR  ARVIND KUMAR CHOUBISA', 'MRS  ANUPAM CHOBISA', '2004-12-20', '249, NEW VIDHYA NAFAR, NEAR SILVER SQUARE APP , SEC - 4, UDAIPUR', 'MDSPS-2040', 0, 7, 1, '', '', '', '0000-00-00'),
(3347, 'NIKHIL MEHTA', 'MR  DINESH MEHTA', 'MRS  SUMAN MEHTA', '2005-12-28', '804, ARVIND NAGAR, SUNDERWAS', 'MDSPS-1986', 0, 7, 1, '', '', '', '0000-00-00'),
(3348, 'ARYAN VIJAYVARGIYA', 'MR  OM PRAKASH VIJAYVARGIYA', 'MRS  SAROJ', '2005-01-08', 'S-2, NAKODA NAGAR, DHAUJI BAVDI, UDAIPUR PRATAP NAGAR', 'MDSPS-1989', 0, 7, 1, '', '', '', '0000-00-00'),
(3349, 'RITIKA TRIPATHI', 'MR  VIKAS TRIPATHI', 'MRS  ANJANA TRIPATHI', '2004-12-09', '12, ANAND VIHAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2141', 0, 7, 1, '', '', '', '0000-00-00'),
(3350, 'MOHAK CHAWLA', 'MR  AMIT CHAWLA', 'MRS  VINEETA CHAWLA', '2005-01-01', '66 B BLOCK NEW PRATAP NAGAR', 'MDSPS-0762', 0, 7, 2, '', '', '', '0000-00-00'),
(3351, 'PREET POKHARNA', 'MR  VINOD POKHARNA', 'MRS  REKHA POKHARNA', '2004-12-06', '1224/25, ADARSH NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0769', 0, 7, 1, '', '', '', '0000-00-00'),
(3352, 'SIDDHANT BAPNA', 'MR  NAVEEN BAPNA', 'MRS  NEELAM BAPNA', '2005-10-14', '18, SAMTA NAGAR, GAS GODOWN ROAD, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0741', 0, 7, 2, '', '', '', '0000-00-00'),
(3353, 'TARUN DANGI', 'MR  MITHU LAL DANGI', 'MRS  TULSI BAI DANGI', '2004-01-15', 'MANWAKHERA, SECT  NO  4, UDAIPUR', 'MDSPS-0936', 0, 7, 2, '', '', '', '0000-00-00'),
(3354, 'PURVA JAIN', 'MR  HITESH JAIN', 'MRS  VIDHYA JAIN', '2004-04-04', '3- PARSHWANATH NAGAR SEC  3 H  M ', 'MDSPS-0792', 0, 7, 1, '', '', '', '0000-00-00'),
(3355, 'KAVISH PATEL', 'MR  VINOD KUMAR PATEL', 'MRS  GANGA DEVI', '2004-03-29', '209, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0803', 0, 7, 1, '', '', '', '0000-00-00'),
(3356, 'MILI BAJAJ', 'MR  PRAVEEN BAJAJ', 'MRS  SUNITA BAJAJ', '2005-02-23', '215, JYOTI COLONY, KHEMPURA, UDAIPUR', 'MDSPS-0811', 0, 7, 2, '', '', '', '0000-00-00'),
(3357, 'NIRMAL PATEL', 'MR  DEVILAL PATEL', 'MRS  BHANWARI BAI', '2005-06-21', '147, NEW VIDHYA NAGAR, SHREE VIHAR, SECT  NO  4, HIRAN MAGRI,UDAIPUR', 'MDSPS-0781', 0, 7, 1, '', '', '', '0000-00-00'),
(3358, 'DHAIRYA POKHARNA', 'MR MAHENDRA POKHARNA', 'MRS  MEENA POKHARNA', '2005-03-05', '30, NAVJEEVAN SOCIETY, MAHAVEER NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-0820', 0, 7, 2, '', '', '', '0000-00-00'),
(3359, 'MUSKAN SHARMA', 'MR  SHIV KUMAR SHARMA', 'MRS  NISHA SHARMA', '2005-03-23', 'LAXMI NAGAR, PUROHITON KI MADRI, ROAD NO  3-4, UDAIPUR', 'MDSPS-1240', 0, 7, 2, '', '', '', '0000-00-00'),
(3360, 'NIKITA DANGI', 'MR  DALCHAND DANGI', 'MRS  CHANDA DANGI', '2004-09-06', 'VILLAGE POST KALADWAS, THE  GIRVA, DISTT  UDAIPUR', 'MDSPS-1182', 0, 7, 2, '', '', '', '0000-00-00'),
(3361, 'LAKSHITA MENARIA', 'MR  DHARMENDRA MENARIA', 'MRS  SARASWATI', '2006-12-30', 'H NO  126, PANERIYON KI MADRI, OPP  POLICE STATION, SECT  NO  6, HIRAN MAGRI, UDAIPUR', 'MDSPS-1171', 0, 7, 1, '', '', '', '0000-00-00'),
(3362, 'JAYA MENARIA', 'MR  NANDKISHORE MENARIA', 'MRS  VIDHYA MENARIA', '2006-10-02', 'H NO  126, PANERIYON KI MADRI, OPP  POLICE STATION, SECT  NO  6, HIRAN MAGRI, UDAIPUR', 'MDSPS-1173', 0, 7, 1, '', '', '', '0000-00-00'),
(3363, 'MOHIT KUMAR VIRWAL', 'MR  BHARAT KUMAR', 'MRS  YOGITA', '2005-06-15', '72, VIDHUT NAGAR, ROAD NO  1, PUROHITTON KI MADRI, NEAR WATER TANK, UDAIPUR', 'MDSPS-1189', 0, 7, 1, '', '', '', '0000-00-00'),
(3364, 'KANUPRIYA VERMA', 'MR  MUNEESH KUMAR VERMA', 'MRS  MADHU VERMA', '2005-02-18', '176, ROOP NAGAR, SEC - 3, UDAIPUR', 'MDSPS-1130', 0, 7, 2, '', '', '', '0000-00-00'),
(3365, 'MANSVEE SHARMA', 'MR  DIMBESH SHARMA', 'MRS  SHALINI SHARMA', '2005-12-21', 'B-24 SEC  NO, 5 HIRAN MAGRI UDR ', 'MDSPS-1154', 0, 7, 2, '', '', '', '0000-00-00'),
(3366, 'ARCHI KHATTAR', 'MR  VINOD KHATTAR', 'MRS  MEGHA KHATTAR', '2005-01-24', '1-T, NEAR UDAI PARK, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1038', 0, 7, 2, '', '', '', '0000-00-00'),
(3367, 'YADURAJ SINGH RANAWAT', 'MR  RAJENDRA SINGH RANAWAT', 'MRS  KIRAN CHOUHAN', '2004-11-21', '33, SHANTI NAGAR, BEHND MDS SCHOOL, SEC - 3, UDAIPUR', 'MDSPS-1568', 0, 7, 2, '', '', '', '0000-00-00'),
(3368, 'YESHA JOSHI', 'MR  SAKAR CHAND JOSHI', 'MRS  MANISHA JOSHI', '2005-11-07', '179, ROOP NAGAR,  SEC - 3, UDAIPUR', 'MDSPS-1515', 0, 7, 1, '', '', '', '0000-00-00'),
(3369, 'MOHIT MALI', 'MR  NIRMAL MALI', 'MRS  REKHA MALI', '2005-01-27', '386, RAVJI KA HATA, UDAIPUR', 'MDSPS-1747', 0, 7, 1, '', '', '', '0000-00-00'),
(3370, 'KASHISH TALESARA', 'MR  MANISH TALESARA', 'MRS  DIPTI TALESARA', '2005-06-08', '14, SIDDARTH COMPLEX, SEC- 5 , UDAIPUR', 'MDSPS-1716', 0, 7, 2, '', '', '', '0000-00-00'),
(3371, 'HARSHITA SHARMA', 'MR  KISHORE SHARMA', 'MRS  POORNIMA SHARMA', '2004-12-01', '148, TULSI NIWAS, NAKODA NAGAR, DHAUJI KI BAWARI, UDAIPUR', 'MDSPS-1798', 0, 7, 2, '', '', '', '0000-00-00'),
(3372, 'PRIYANSHU CHOUDHARY', 'MR  BABULAL CHOUDHARY', 'MRS  ASHA CHOUDHARY', '2005-07-13', '28, SRINATH NAGAR BEDWAS', 'MDSPS-1205', 0, 7, 2, '', '', '', '0000-00-00'),
(3373, 'MOHIT SHARMA', 'MR  JAI PRAKASH SHARMA', 'MRS  ALKA SHARMA', '2005-08-07', '68, BAPU BAZAR, UDAIPUR PR  B  L  POLY CLINIC', 'MDSPS-1157', 0, 7, 1, '', '', '', '0000-00-00'),
(3374, 'GAURAV MALVIYA', 'MR YASHWANT MALVIYA', 'MRS ï¿½SHAILA MALVIYA', '2005-08-20', '259, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1046', 0, 7, 1, '', '', '', '0000-00-00'),
(3375, 'ROSHIKA DANGI', 'MR  MOHAN LAL DANGI', 'MR  BHAWARI DANGI', '2004-12-29', 'BUS STAND LAKADWAS UDR ', 'MDSPS-1587', 0, 7, 1, '', '', '', '0000-00-00'),
(3376, 'ADITI  R CHOUHAN', 'MR  RAKESH CHOUHAN', 'MRS  CHITRA CHOUHAN', '2005-04-11', '1, SEC  4 ANAND VIHAR HIRAN MAGRI', 'MDSPS-2121', 0, 7, 2, '', '', '', '0000-00-00'),
(3377, 'AAYUSH LOHAR', 'MR  HARISH LOHAR', 'MRS  LAJWANTI LOHAR', '2004-11-24', '80, MAHARVEER STEEL FURNITURE GLASS FACTORY, KHEMPURA ROAD, UDAIPUR', 'MDSPS-1771', 0, 7, 2, '', '', '', '0000-00-00'),
(3378, 'BHUMIT CHOUDHARY', 'MR  PANNA LAL CHOUDHARY', 'MRS  PRAMILA CHOUDHARY', '2005-01-10', 'PUROHITON KI MADRI, NEAR ROAD NO 2 UDAIPUR, 730', 'MDSPS-1758', 0, 7, 1, '', '', '', '0000-00-00'),
(3379, 'HARSH KOTHARI', 'MR  SANJAY KOTHARI', 'MRS  SUNITA KOTHARI', '2005-08-04', 'D-8, RAGHUKUL COMPLEX, SUBHASH NAGAR, UDAIPUR', 'MDSPS-0827', 0, 7, 1, '', '', '', '0000-00-00'),
(3380, 'LAKSHIKA AASURIYA', 'MR  ROSHAN AASURIYA', 'MRS  SAROJ AASURIYA', '2005-07-27', '14, ANAND VIHAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0766', 0, 7, 2, '', '', '', '0000-00-00'),
(3381, 'PRADHUMAN SINGH RAO', 'MR  GOPAL SINGH RAO', 'MRS  YOGITA RAO', '2004-12-07', '3 PH 75 PRABHAT NAGAR H  N  SEC  5', 'MDSPS-0734', 0, 7, 2, '', '', '', '0000-00-00'),
(3382, 'SUDHANSHU SHARMA', 'MR DAYASHANKER SHARMA', 'MRS  BHAGYAWANTI SHARMA', '2004-06-08', 'VILLAGE & POST KALADWAS, TEHSIL GIRWA, DISTT  UDAIPUR', 'MDSPS-1662', 0, 7, 2, '', '', '', '0000-00-00'),
(3383, 'PRASHANT SINGH SISODIA', 'MR  MANOHAR SINGH SISODIA', 'MRS  KIRAN SISODIA', '2004-09-15', 'H NO  317, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0802', 0, 7, 1, '', '', '', '0000-00-00'),
(3384, 'ARCHITA DHARAMSHALANI', 'MR  NARESH DHARAMSHALANI', 'MRS  VINITA DHARAMSHALANI', '2005-05-09', '1-GHA-20 SECT  NO  4, HIRAN MAGRI, UDAIPUR HOUSING BOARD COLONY NEAR JAIN MANDIR', 'MDSPS-1027', 0, 7, 1, '', '', '', '0000-00-00'),
(3385, 'SACHIN CHARAN', 'MR  GANPATDAN CHARAN', 'MRS  LAXMI CHARAN', '2004-04-15', '35, BALAJI NAGAR, HIRAN MAGRI, 4, MANVA KHEDA, UDAIPUR', 'MDSPS-1342', 0, 7, 1, '', '', '', '0000-00-00'),
(3386, 'KINJAL DANGI', 'MR  LAXMI LAL DANGI', 'MRS  MADHU DANGI', '2004-09-07', 'NO  129, NEAR KUMBHA NAGAR, BADA NOKHA, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1325', 0, 7, 2, '', '', '', '0000-00-00'),
(3387, 'HARSHITA SAHU', 'MR  SHYAMLAL SAHU', 'MRS  ANITA SAHU', '2005-05-16', '407,BEKNY PULYA NEAR HANUMAN MANDIR UNI  ROAD UDAIPUR', 'MDSPS-0830', 0, 7, 1, '', '', '', '0000-00-00'),
(3388, 'KASHISH AGRAWAL', 'MR  VIVEK AGRAWAL', 'MRS  JYOTI AGRAWAL', '2004-12-26', '110, NAKODA NAGAR, DHAU JI KI BAWARI, UDAIPUR', 'MDSPS-1718', 0, 7, 2, '', '', '', '0000-00-00'),
(3389, 'SAMBHAV SUKHWANI', 'MR  RAKESH SUKHWANI', 'MRS  SAKSHI SUKHWANI', '2005-04-06', 'J 2BASANT VIHAR, NEAR UDAI PARK HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-2105', 0, 7, 1, '', '', '', '0000-00-00'),
(3390, 'CHANDRALEKHA SHEKHAWAT', 'MR  B S SHEKHAWAT', 'MRS  VEENU KUNWAR', '2004-09-20', 'SEC  3 NEW CENTER ACADEMY', 'MDSPS-1501', 0, 7, 2, '', '', '', '0000-00-00'),
(3391, 'SHUBHAM SHRIVASTAV', 'MR  SANJAY SHRIVASTAV', 'MRS  NEHA SHRIVASTAV', '2005-05-25', 'H NO  81-D, BLOCK, UIT ROAD NO  4, PUROHITO KI MADRI, UDAIPUR', 'MDSPS-0739', 0, 7, 1, '', '', '', '0000-00-00'),
(3392, 'KUNAL JAIN', 'MR  NARENDRA KUMAR JAIN', 'MRS  MEENAKSHI JAIN', '2005-05-12', '36, A VIDHYA NAGAR SEC  4 H  M ', 'MDSPS-1955', 0, 7, 2, '', '', '', '0000-00-00'),
(3393, 'KRISH MAHESHWARI', 'MR  SANJAY MAHESHWARI', 'MRS  MONIKA MAHESHWARI', '2005-03-18', '34, SHIVA NAGAR, NEAR BRJ BUMI PARIVAHAN COLONY, TEKRI MADRI LINK ROAD, UDAIPUR', 'MDSPS-2309', 0, 7, 1, '', '', '', '0000-00-00'),
(3394, 'MANAS SHRIMALI', 'MR  MUKESH SHRIMALI', 'MRS  BHARTI SHRIMALI', '2005-05-17', '119, NEAR MAHAVEER ACADEMY SCHOOL, GARIYAWAS, UDAIPUR', 'MDSPS-1395', 0, 7, 1, '', '', '', '0000-00-00'),
(3395, 'BHAVNA MEENA', 'MR  HARKESH MEENA', 'MRS  PUSHPA MEENA', '2006-07-19', 'QUARTER NO  55/B, OPP  RANAPRATAP NAGAR RAILWAY STATION, UDAIPUR', 'MDSPS-2144', 0, 7, 1, '', '', '', '0000-00-00'),
(3396, 'GAJVEER  SINGH MERTIA', 'MR  TEJSINGH MERTIA', 'MRS  SUNITA MERTIA', '2004-11-18', '47, VIRANDAVAN VIHAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0740', 0, 7, 1, '', '', '', '0000-00-00'),
(3397, 'PRATEEK JAIN', 'MR INDAR KUMAR JAIN', 'MRS  ASHA JAIN', '2005-09-05', '3-R-14, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-0928', 0, 7, 1, '', '', '', '0000-00-00'),
(3398, 'HARSH CHARAN', 'MR  JAIDAV SINGH CHARAN', 'MRS  SUNITA KANWAR', '2005-02-21', '248, SURYA NAGAR, PUROHITO KI MADRI, AKASHWANI COLONY, UDAIPUR', 'MDSPS-0963', 0, 7, 1, '', '', '', '0000-00-00'),
(3399, 'MUDIT MAHESHWARI', 'MR  DILIP MAHESHWARI', 'MRS  PRABHA MAHESHWARI', '2005-01-28', '9, BAHUBALI COLONY, BOHRA GANESH JI ROAD , UDAIPUR', 'MDSPS-0812', 0, 7, 2, '', '', '', '0000-00-00'),
(3400, 'MAYURDHAWAJ SINGH RATHORE', 'MR  RAJENDRA SINGH RATHORE', 'MRS  RANJANA KUNWAR RATHORE', '2005-06-12', 'H2 POLICE LINE TAKRI UDR ', 'MDSPS-1609', 0, 7, 1, '', '', '', '0000-00-00'),
(3401, 'RAJAT BADARIA', 'MR  RAJ MAL REGAR', 'MRS  DEVIKA REGAR', '2004-05-04', '86, N B  NAGAR, BEDWAS, DAUJI KI BAUADI, UDAIPUR', 'MDSPS-2317', 0, 7, 2, '', '', '', '0000-00-00'),
(3402, 'KARTIKEYA SHARMA', 'MR  GAJESH SHARMA', 'MRS  INDUBALA SHARMA', '2005-11-30', '27/259, PANERION KI MADRI, NEAR SR  SEC  SCHOOL, UDAIPUR', 'MDSPS-1608', 0, 7, 2, '', '', '', '0000-00-00'),
(3403, 'MANASVI MENARIA', 'MR  HARISH MENARIA', 'MRS  HERMLATA MENARIA', '2005-09-04', 'MENARIA RESTAURANT, OPP  ROAD NO  2, PUROHITAN KI MADRI, UDAIPUR', 'MDSPS-1022', 0, 7, 2, '', '', '', '0000-00-00'),
(3404, 'PURAB SONI', 'MR  RAKESH SONI', 'MRS  MADHU SONI', '2004-09-16', 'ASHOK GALI, BEDLA, UDAIPUR', 'MDSPS-2322', 0, 7, 2, '', '', '', '0000-00-00'),
(3405, 'AJIT KUMAR PATEL', 'MR  LALU RAM PATEL', 'MRS  PUJI BAI BATEL', '2004-01-02', 'VPO ORWADIA, TEH  SALUMBER, DISTT  UDAIPUR', 'MDSPS-2323', 0, 7, 1, '', '', '', '0000-00-00'),
(3406, 'AMAN JOSHI', 'MR. NARESH KUMAR JOSHI', 'MRS. RADHIKA JOSHI', '2005-12-11', 'VPO SARGRA, TEHSIL KHERWARA, DISTT. UDAIPUR', 'MDSPS-2407', 0, 7, 1, '', '', '', '0000-00-00'),
(3407, 'LAKSHYA SHARMA', 'MR  OM PRAKASH SHARMA', 'MRS  LAAD SHARMA', '2005-03-14', 'FLAT NO  604, SILVER PALACE APARTMENT, OPP  ANUSHRI VATIKA, ASHIRWAD NAGAR, ROOP SAGAR ROAD, UDAIPUR', 'MDSPS-2200', 0, 8, 2, '', '', '', '0000-00-00'),
(3408, 'RUDRA PRATAP SINGH PANWAR', 'MR  BHUPENDRA SINGH PANWAR', 'MRS  KAVITA PANWAR', '2004-12-08', '183, SECTOR 3, VIVEK NAGAR, UDAIPUR', 'MDSPS-2201', 0, 8, 2, '', '', '', '0000-00-00'),
(3409, 'MALAY SHARMA', 'MR  PRAKASH CHANDRA SHARMA', 'MRS  RAMILA SHARMA', '2004-05-28', '102, H  BLOCK, DWARIKAPURI, SECT  14, UDAIPUR', 'MDSPS-2220', 0, 8, 2, '', '', '', '0000-00-00'),
(3410, 'MOUTUSHI CHANDA', 'MR  RANJAN CHANDA', 'MRS  MUNMUN CHANDA', '2004-06-24', 'B-1/304, VAISHALI APPARTMENT, HIRAN MAGRI, SECT  4, UDAIPUR', 'MDSPS-2225', 0, 8, 2, '', '', '', '0000-00-00'),
(3411, 'DEVANSHI GUPTA', 'MR  MUKESH GUPTA', 'MRS  SAPNA GUPTA', '2004-08-04', '124, MAHAVIR NAGAR, SECT  NO  4, UDAIPUR', 'MDSPS-2230', 0, 8, 2, '', '', '', '0000-00-00'),
(3412, 'M. PRANEETH JAIN', 'DR  M  VENUGOPAL RAO', 'DR  M  BABITA JAIN', '2005-01-11', 'L1, JAISHREE COLONY, NR  BOHRA GANESH JI, UDAIPUR', 'MDSPS-2234', 0, 8, 2, '', '', '', '0000-00-00'),
(3413, 'HARSHITA JOSHI', 'MR  RAJENDRA PRASAD JOSHI', 'MRS  VANDANA JOSHI', '2003-10-20', '2/33, RAJASTHAN HOUSING BOARD COLONY, PRATAPNAGAR, UDAIPUR', 'MDSPS-2240', 0, 8, 1, '', '', '', '0000-00-00'),
(3414, 'KOMAL RATHORE', 'MR  MAGAN SINGH RATHORE', 'MRS  NEETU RATHORE', '2004-05-23', '18, ARIHANT COLONY, MEWAR INDUSTRIAL AREA, ROAD NO  3, MADRI, UDAIPUR', 'MDSPS-2243', 0, 8, 1, '', '', '', '0000-00-00'),
(3415, 'JAI SONI', 'MR  DILIP SONI', 'MRS  REENA SONI', '2005-01-11', '43, SAMTA NAGAR, HIRAN MAGRI, UDAIPUR', 'MDSPS-2246', 0, 8, 1, '', '', '', '0000-00-00'),
(3416, 'NIRBHAY PALIWAL', 'MR  RAJESH PALIWAL', 'MRS  SAROJ PALIWAL', '2004-05-05', '14, BHOMIYA JI COLONY, MAANDAL NORTH SUNDERWAS, UDAIPUR', 'MDSPS-2254', 0, 8, 1, '', '', '', '0000-00-00'),
(3417, 'NEHAL JAIN', 'MR  PRAKASH CHAMPAWAT', 'MRS  MANJU SOMIA', '2004-11-14', '17, SHUBHAM COMPLEX, NEAR SAVITRI VATIKA, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-2267', 0, 8, 1, '', '', '', '0000-00-00'),
(3418, 'SAHIL SHARMA', 'MR  CHANDRA SHEKHAR SHARMA', 'MRS  GYATRI SHARMA', '2004-09-25', '144, ROOP NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-0631', 0, 8, 2, '', '', '', '0000-00-00'),
(3419, 'MANASVI RAJAWAT', 'MR  SHIV SINGH RAJAWAT', 'MRS  ANAND KANWAR', '2004-07-22', 'HOUSE NO  4-KHA-1, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0690', 0, 8, 2, '', '', '', '0000-00-00'),
(3420, 'SAMYASH PALIWAL', 'MR  YASHWANT PALIWAL', 'MRS  NIRMALA PALIWAL', '2004-04-16', '186, SECTOR NO  6, HIRAN MAGRI, UDAIPUR', 'MDSPS-2269', 0, 8, 1, '', '', '', '0000-00-00'),
(3421, 'DAKSH MALVIYA', 'MR  DHANRAJ MALVIYA', 'MRS  PINKY MALVIYA', '2005-06-23', 'HOUSE NO  1-J-31, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-0814', 0, 8, 1, '', '', '', '0000-00-00'),
(3422, 'KARTIK SAHU', 'MR  RAJAN SAHU', 'MRS  SAROJ SAHU', '2004-11-01', '17, FRIENDS COLONY, NEW BHOPALPURA, KHARAKUA, UDAIPUR', 'MDSPS-2277', 0, 8, 2, '', '', '', '0000-00-00'),
(3423, 'MANSHA KALE', 'DR  ANIL KALE', 'MRS  MAMTA KALE', '2004-07-19', 'A 707, DWARIKA APPT  SEC  5 HIRAN MAGRI', 'MDSPS-1714', 0, 8, 1, '', '', '', '0000-00-00'),
(3424, 'NANDANI MOOLCHANDANI', 'MR  HITESH MOOLCHANDANI', 'MRS  PURVA MOOLCHANDANI', '2005-03-02', '19-T, BASANT VIHAR, SECTOR 5, HIRAN MANGRI, UDAIPUR', 'MDSPS-1558', 0, 8, 2, '', '', '', '0000-00-00'),
(3425, 'PRIYANKA YADAV', 'MR  VINOD KUMAR', 'MRS  REENA YADAV', '2004-10-10', 'H NO  130/4, JCO QUARTER, SOMNATH LINE, EKLINGGARH CANTT, UDAIPUR', 'MDSPS-1943', 0, 8, 2, '', '', '', '0000-00-00'),
(3426, 'AYUSH JAIN', 'MR  VIKAS JAIN', 'MRS  SHALINI JAIN', '2004-05-08', '1-GHA-17, RHB COLONY, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-0696', 0, 8, 1, '', '', '', '0000-00-00'),
(3427, 'UDLAKSHAYA RAINA', 'MR  PRAVEEN RAINA', 'MRS  MEETA RAINA', '2004-01-04', '69/2A NEW FLORA COM  BEHIND UDAI TOWER BHUWANA', 'MDSPS-1029', 0, 8, 2, '', '', '', '0000-00-00'),
(3428, 'PURVAM CHATURVEDI', 'MR  PRAVIN CHATURVEDI', 'MRS  VARSHA CHATURVEDI', '2004-06-26', '75, SHIV COLONY SWAMI NAGAR TAKRI MADRI LINK ROAD', 'MDSPS-1513', 0, 8, 2, '', '', '', '0000-00-00'),
(3429, 'UTKARSH DWIVEDI', 'MR  AKHIL DWIVEDI', 'MRS  SHALINI DWIVEDI', '2004-10-18', 'DWARIKA APARTMENT, BLOCK - A, FLAT 40, 303, JHAMAR KOTRA ROAD, MANWA KHERA, UDAIPUR', 'MDSPS-1941', 0, 8, 2, '', '', '', '0000-00-00'),
(3430, 'KHUSHI CHAPLOT', 'MR  HIMMAT CHAPLOT', 'MRS  MONITA CHAPLOT', '2004-07-05', '1-KA-43, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-1977', 0, 8, 1, '', '', '', '0000-00-00'),
(3431, 'PRAKASH DANGI', 'MR  DINESH DANGI', 'MRS  MEENA DANGI', '2004-03-09', '64, SHANTI NAGAR, NEAR MDS SCHOOL, SECTOR NO  3 , UDAIPUR', 'MDSPS-1920', 0, 8, 2, '', '', '', '0000-00-00'),
(3432, 'RIYA SACHAN', 'MR  DHIRENDRA SINGH SACHAN', 'MRS  MANJU SACHAN', '2003-12-30', '21, BASANT VIHAR, NORTH SUNDERWAS, BEHIND RAJASTHAN PATRIKA, UDAIPUR', 'MDSPS-0657', 0, 8, 2, '', '', '', '0000-00-00'),
(3433, 'MADHUP CHOUDHARY', 'MR  BHAGWATI JALANIA', 'MRS  SHOBHANA JALANIA', '2003-01-20', '53-54, ROSHAN NAGAR, SEC - 12, SAVINA, UDAIPUR', 'MDSPS-2049', 0, 8, 1, '', '', '', '0000-00-00'),
(3434, 'MONIL SETH', 'MR  DEEPAK SETH', 'MRS  ANJANA JAIN', '2004-04-30', '13-A OR 19-A, NEW MAHAVEER NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0885', 0, 8, 2, '', '', '', '0000-00-00'),
(3435, 'HAMENDRA SINGH RATHORE', 'MR  CHAMAN SINGH RATHORE', 'MRS  MAYA KUNWAR', '2004-03-05', '30, NEW SHIV NAGAR, NOKHA, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0682', 0, 8, 1, '', '', '', '0000-00-00'),
(3436, 'DIVYANSHI SHRIMALI', 'MR  OMPRAKASH SHRIMALI', 'MRS  SHEETAL SHRIMALI', '2004-04-17', '12-B, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-0718', 0, 8, 2, '', '', '', '0000-00-00'),
(3437, 'BHUMI JAIN', 'MR  KAMLESH KUMAR JAIN', 'MRS  KALPANA JAIN', '2004-05-08', 'HOUSE NO  27-B, SHASTRI NAGAR, HIRAN MAGRI, SECT  NO  3, NEAR KAKA HEALTH CLUB, UDAIPUR', 'MDSPS-0702', 0, 8, 2, '', '', '', '0000-00-00'),
(3438, 'KHANAK SINGH RAO', 'MR  VIKRAM SINGH RAO', 'MRS  SARITA KANWAR RAO', '2004-04-13', '12, DORE NAGAR, BH  BAJAJ SEVASHRAM, UDAIPUR', 'MDSPS-2289', 0, 8, 2, '', '', '', '0000-00-00'),
(3439, 'MADHAV GARG', 'MR  VISHAL GARG', 'MRS  MONICA GARG', '2004-05-26', 'A-2/102, VAISHALI APARTMENTS, SEC  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-1329', 0, 8, 2, '', '', '', '0000-00-00'),
(3440, 'MANAV TAK', 'MR RAJENDRA KUMAR TAK', 'MRS  PUSHPA TAK', '2003-06-07', '59, UMARDA CHOKHAVADA, UDAIPUR', 'MDSPS-1597', 0, 8, 2, '', '', '', '0000-00-00'),
(3441, 'KUNAL TAK', 'MR  RAJENDER KUMAR TAK', 'MRS, PUSHPA TAK', '2001-09-23', '59, UMARDA CHOKHAVADA, UDAIPUR', 'MDSPS-1598', 0, 8, 1, '', '', '', '0000-00-00'),
(3442, 'AURGHO BANERJEE', 'MR  KAUSHIK BANERJEE', 'MRS  MEGHNA BANERJEE', '2003-10-05', '201, IIND FLOOR, PARSHWNATH PALACE, MAHAVEER COLONY, BEDLA ROAD, UDAIPUR', 'MDSPS-2164', 0, 8, 2, '', '', '', '0000-00-00'),
(3443, 'PRIYANSHU PARMAR', 'MR  RAJESH KUMAR PARMAR', 'MRS  RANJITA PARMAR', '2004-12-07', '21, KRISHNA VIHAR NEW VIDHYA NAGAR SEC  4', 'MDSPS-0996', 0, 8, 1, '', '', '', '0000-00-00'),
(3444, 'AKSHITA MEHTA', 'MR  SUDHIR MEHTA', 'MRS  KIRAN MEHTA', '2003-11-07', '56, GANPAT VIHAR, PANERIYON KI MADRI, UDAIPUR', 'MDSPS-0630', 0, 8, 2, '', '', '', '0000-00-00'),
(3445, 'KRISH MAKVANA', 'MR  ATUL MAKVANA', 'MRS  BHARTI MAKVANA', '2004-05-23', '45 B, OSTWAL NAGAR,OPP  RAJ  PATRIKA  SUNDERWAS, UDAIPUR', 'MDSPS-2097', 0, 8, 1, '', '', '', '0000-00-00'),
(3446, 'PRATURI RUKMINI', 'MR P RAVI', 'MRS  P PURNIMA', '2004-05-06', '2C1, ZINC PARK, MOTI MAGRI SCHEME, UDAIPUR', 'MDSPS-2041', 0, 8, 2, '', '', '', '0000-00-00'),
(3447, 'MANAV JAIN', 'MR  DILIP JAIN', 'MRS  HEMLATA JAIN', '2004-01-11', '14-A, ADARSH HOUSING SOCIETY, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-0642', 0, 8, 2, '', '', '', '0000-00-00'),
(3448, 'MANISH DANGI', 'MR DEVILAL DANGI', 'MRS  BHANWARI BAI', '2003-04-12', '147, SHRIJI VIHAR, NEW VIDHYA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDSPS-0635', 0, 8, 2, '', '', '', '0000-00-00'),
(3449, 'HIMANSHU DEPAN', 'MR  RATAN LAL DEPAN', 'MRS  KANTA DEPAN', '2003-09-23', '1/50,R  H B  MIRA NAGAR, 100 FIT ROAD, BHUWANA, UDAIPUR', 'MDSPS-0738', 0, 8, 1, '', '', '', '0000-00-00'),
(3450, 'SEJAL VAGRECHA', 'MR  SUNIL VAGRECHA', 'MRS  TARA VAGRECHA', '2004-07-19', 'H NO  270, SHASTRI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-0699', 0, 8, 2, '', '', '', '0000-00-00'),
(3451, 'HAPPY SONI', 'MR  DILIP SONI', 'MRS  SHILPA SONI', '2004-08-14', '115, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0663', 0, 8, 1, '', '', '', '0000-00-00'),
(3452, 'LAKSHYARAJ SINGH SANSERA', 'MR  YAJUVENDRA SINGH', 'MRS  HEMLATA', '2004-09-04', '22, NEW DORE NAGAR, UDAIPUR', 'MDSPS-0670', 0, 8, 2, '', '', '', '0000-00-00'),
(3453, 'CHARUL CHORDIA', 'MR  SANJAY KUMAR CHORDIA', 'MRS  VANITA CHORDIA', '2004-09-30', '15, VIRANDAWAN VIHAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0794', 0, 8, 2, '', '', '', '0000-00-00'),
(3454, 'HIMANSHI PRAJAPAT', 'MR  PURAN LAL PRAJAPAT', 'MRS  HEMLATA PRAJAPAT', '2004-04-27', '28, ANAND COM  EKLING PURA UDR ', 'MDSPS-0840', 0, 8, 2, '', '', '', '0000-00-00'),
(3455, 'NIHARIKA SINGH CHUNDAWAT', 'MR. NARAYAN SINGH', 'MRS  MEENA KUNWAR JHALA', '2004-01-02', 'NO  454, UDAY PRATAP COLONY, R NO  3-4, PUROHITO KI MADRI, UDAIPUR', 'MDSPS-1326', 0, 8, 2, '', '', '', '0000-00-00'),
(3456, 'PRIYANSHI LODHA', 'MR  KAMLESH LODHA', 'MRS  MONIKA LODHA', '2004-02-11', 'SUBHASH NAGAR, ROAD NO  3, HOUSE NO  13, UDAIPUR', 'MDSPS-1374', 0, 8, 2, '', '', '', '0000-00-00'),
(3457, 'NIKHIL DANGI', 'MR  KANHEIYA LAL  DANGI', 'MRS  YASHODA DANGI', '2004-08-22', 'VPO BHALO KA GUDA, VIA ZINC SMELTER, T  GIRVA, DISTT  UDAIPUR', 'MDSPS-1105', 0, 8, 1, '', '', '', '0000-00-00'),
(3458, 'HARDIK NYATEE', 'MR  VIJAY KUMAR NYATEE', 'DR  (MRS ) KIRAN MAHESHWARI', '2004-03-31', 'A-605 DWARIKA APP  A-1 COM  MANWA KHEDA', 'MDSPS-1012', 0, 8, 2, '', '', '', '0000-00-00'),
(3459, 'PRAVEEN DANGI', 'MR  MANGILAL DANGI (PATEL)', 'MRS  YASHODA DANGI', '2004-05-30', '18, NEW KUMBHA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1041', 0, 8, 2, '', '', '', '0000-00-00'),
(3460, 'PUSHPRAJ SINGH RATHORE', 'MR  UMRAV SINGH RATHORE', 'MRS  SUMITRA KUNWAR RANAWAT', '2004-05-22', 'PLOT NO  1ST, SHANTI NAGAR, GAS GODOWN ROAD, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1056', 0, 8, 2, '', '', '', '0000-00-00'),
(3461, 'TUSHAR AMETA', 'MR  KAMLESH AMETA', 'MRS  MAMTA AMETA', '2004-03-11', '3-DA-9, SECT  NO  5, PRABHAT NAGAR, HIRAN MAGRI, UDAIPUR', 'MDSPS-1603', 0, 8, 1, '', '', '', '0000-00-00'),
(3462, 'HARSH JAIN', 'MR  PARAS JAIN', 'MRS  LALITA JAIN', '2003-10-20', 'JAIN COLONY LAKADWAS', 'MDSPS-1616', 0, 8, 1, '', '', '', '0000-00-00'),
(3463, 'DHARAA VIJAYVERGIA', 'MR  PRADEEP VIJAYVERGIA', 'MRS  KIRAN VIJAYVERGIA', '2005-01-10', '3 PA 83, SEC - 5, PRABHAT NAGAR UDR ', 'MDSPS-1512', 0, 8, 1, '', '', '', '0000-00-00'),
(3464, 'DEEPENDRA SINGH CHOUHAN', 'MR JAIPAL SINGH CHAUHAN', 'MRS  RAJBALA CHAUHAN', '2005-07-09', 'E-BLOCK E-13 POLICE LINE TEKRI UDR ', 'MDSPS-1442', 0, 8, 2, '', '', '', '0000-00-00'),
(3465, 'MAHIMA VYAS', 'MR  LEELADHAR VYAS', 'MRS  MUNA DEVI VYAS', '2004-10-22', '129, ARIHANT VIHAR, NEAR AKASHWANI KENDRA, MADRI PUROHITAN, UDAIPUR', 'MDSPS-1473', 0, 8, 2, '', '', '', '0000-00-00'),
(3466, 'NANDITA SINGH JADOUN', 'MR  AJAYDEEP SINGH JADOUN', 'MRS  AARTI KUNWAR', '2003-10-07', '111, A-RISHI NAGAR, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDSPS-1769', 0, 8, 1, '', '', '', '0000-00-00'),
(3467, 'DIVYANSH SALVI', 'MR  OM PRAKASH SALVI', 'MRS  NIRMALA SALVI', '2004-04-18', 'PUROHITAN MADRI, INDUSTRIAL AREA, OPP  ROAD NO  2, UDAIPUR', 'MDSPS-1082', 0, 8, 1, '', '', '', '0000-00-00'),
(3468, 'YASH MALVIYA', 'MR  GOPAL LAL LOHAR', 'MRS  MANJU LOHAR', '2004-03-13', '757, SURYA NAGAR, SECT  NO  3, UDAIPUR', 'MDSPS-1067', 0, 8, 2, '', '', '', '0000-00-00'),
(3469, 'DIYA VASITA', 'MR  VISHNU JI VASITA', 'MRS  GOMA VASITHA', '2004-06-21', '241, AAZAD NAGAR BEHIND NEHRU HOSTEL, BHOPA MAGRI, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1068', 0, 8, 1, '', '', '', '0000-00-00'),
(3470, 'RAHUL REDIYA', 'MR DURGA PRASAD REDIYA', 'MRS  MADHU REDIYA', '2004-05-31', '93, N  B  NAGAR AIRPORT NAGAR DHAV JI KI BAWARI', 'MDSPS-1650', 0, 8, 2, '', '', '', '0000-00-00'),
(3471, 'PURANJAY MUNDRA', 'MR  RAKESH MUNDRA', 'MRS  SANGEETA MUNDRA', '2003-06-09', 'RIVER VIEW COMPLEX, SUBASH NAGAR, UDAIPUR', 'MDSPS-2299', 0, 8, 1, '', '', '', '0000-00-00'),
(3472, 'DIVYA RAO', 'MR  CHANCHAL SINGH RAO', 'MRS  RADHA KUNWAR RAO', '2004-06-10', '48, SANJAY GANDHI NAGAR H  M  SEC  8', 'MDSPS-1750', 0, 8, 1, '', '', '', '0000-00-00'),
(3473, 'ANJALI MAHESHWARI', 'MR  LALIT MAHESHWARI', 'MRS  SARITH MAHESHWARI', '2003-09-23', '65, NIRMAL VIHAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0581', 0, 8, 2, '', '', '', '0000-00-00'),
(3474, 'DIVYANSHI DEVPURA', 'MR  KAMLESH KUMAR DEVPURA', 'MRS  NIRMALA DEVPURA', '2004-08-05', '95, HIRAN MAGRI, SECT  NO 3, UDAIPUR', 'MDSPS-2142', 0, 8, 2, '', '', '', '0000-00-00'),
(3475, 'LAVISH DANGI', 'MR LOKESH KUMAR DANGI', 'MRS SHILPA DANGI', '2004-06-02', '66, NIRMAL VIHAR SEC 3', 'MDSPS-0689', 0, 8, 1, '', '', '', '0000-00-00'),
(3476, 'PARTH DIXIT', 'MR  GOVIND DIXIT', 'MRS  NISHA DIXIT', '2004-03-08', '338, CHANKYAPURI, SECT  NO  4, UDAIPUR', 'MDSPS-1657', 0, 8, 2, '', '', '', '0000-00-00'),
(3477, 'YUVRAJ CHOUDHARY', 'MR  SHANKER CHOUDHARY', 'MRS  NEHA CHOUDHARY', '2005-01-09', 'HOUSE NO 5, HIRAN MAGRI, SECT NO 5,  KASHIPURI, UDAIPUR', 'MDSPS-1944', 0, 8, 2, '', '', '', '0000-00-00'),
(3478, 'GEETANSH KALRA', 'MR  SATISH KALRA', 'MRS  KARISHMA KALRA', '2004-08-29', 'A-9 SARVOTTAM COMPLEX SEC  4 MANWA KHEDA, UDAIPUR', 'MDSPS-0722', 0, 8, 2, '', '', '', '0000-00-00'),
(3479, 'HARSHRAJ SINGH CHOUHAN', 'MR  SHAMBHU SINGH CHOUHAN', 'MRS  USHA KUNWAR CHOUHAN', '2004-05-08', '1-F-9, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-0551', 0, 8, 1, '', '', '', '0000-00-00'),
(3480, 'NIKITA SOLANKI', 'MR  VIRENDRA SINGH', 'MRS  RAJKUMARI', '2004-11-02', '1333, ADARSH NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDSPS-1371', 0, 8, 1, '', '', '', '0000-00-00'),
(3481, 'PARAMVEER SINGH KHARWAR', 'MR  SHANKAR SINGH KHARWAR', 'MRS  GEETA KUNWAR', '2002-10-06', '348, SAMTA NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDSPS-1435', 0, 8, 1, '', '', '', '0000-00-00'),
(3482, 'HASMITA JAIN', 'MR  SURESH JAIN', 'MRS  MEENA DEVI JAIN', '2004-09-10', '831, PUJA NAGAR H  M  SEC  4 UDR ', 'MDSPS-0777', 0, 8, 1, '', '', '', '0000-00-00'),
(3483, 'PULKIT CHOUBISA', 'MR  LALIT CHOUBISA', 'MRS  HEMLATA CHOUBISA', '2004-07-24', 'H NO  207,208, SURYA NAGAR, OPP  AAKASHWANI, PUROHITO KI MADRI , UDAIPUR', 'MDSPS-0767', 0, 8, 1, '', '', '', '0000-00-00'),
(3484, 'ASHISH SUTHAR', 'MR  MANGESH SUTHAR', 'MRS  MEERA DEVI SUTHAR', '2003-06-26', 'E-6, ARIHANT COLONY, PUROHITON KI MADRI, UDAIPUR', 'MDSPS-0704', 0, 8, 2, '', '', '', '0000-00-00'),
(3485, 'PRAVEER CHOUDHARY TUSHAR SINGH', 'MR  PUSHPENDRA SINGH', 'MRS  DURGESH KUMARI JAT', '2005-09-05', '21, SAMTA NAGAR, OPP  MDS SCHOOL, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1723', 0, 8, 2, '', '', '', '0000-00-00'),
(3486, 'KRIPARTH SHARMA', 'MR  RAJESH SHARMA', 'MRS  SHARDA SHARMA', '2004-12-09', '1-T-19, BEHIND GOVT  GIRLS SCHOOL, HIRAN MAGRI, SECT  NO 5, UDAIPUR', 'MDSPS-2131', 0, 8, 1, '', '', '', '0000-00-00'),
(3487, 'ISHA YADAV', 'MR  VEERENDRA SINGH YADAV', 'MRS  NEENA YADAV', '2005-07-03', 'H NO   19, ROAD NO  2, (EAST) GOVIND NAGAR, SECT  NO  13, UDAIPUR', 'MDSPS-2305', 0, 8, 1, '', '', '', '0000-00-00'),
(3488, 'REET SACHDEV', 'MR  ASHOK SACHDEV', 'MRS  KIRAN SACHDEV', '2003-02-25', '6, KASHIPURI, BSNL COLONY NO  3, HIRAN MAGRI SEC  3', 'MDSPS-1554', 0, 8, 1, '', '', '', '0000-00-00'),
(3489, 'LAKSHYARAJ SINGH RAO', 'MR  DEVENDRA SINGH RAO', 'MRS  SAVITA KUNWAR', '2002-08-01', '3-DHA-24, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDSPS-0567', 0, 8, 1, '', '', '', '0000-00-00'),
(3490, 'MAHENDRA CHOUDHARY', 'MR  MONARAM', 'MRS  POSUDEVI', '2003-10-15', '367, KRISHNAPURA, GANESH TEKRI, NEAR SAINT PAUL, UDAIPUR', 'MDSPS-2138', 0, 8, 1, '', '', '', '0000-00-00'),
(3491, 'VARSHA MEENA', 'MR  MUNIRAM MEENA', 'MRS  ANITA MEENA', '2005-03-31', 'Q  NO  55-H RAILWAY COLONY RANA PRATAP NAGAR UDR ', 'MDSPS-1725', 0, 8, 1, '', '', '', '0000-00-00'),
(3492, 'JATIN MEGHWAL', 'MR  GANESH LAL MEGHWAL', 'MRS  NIRMALA MEGHWAL', '2004-04-24', 'HOUSE NO  32, SUKHADIA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-0990', 0, 8, 1, '', '', '', '0000-00-00'),
(3493, 'SURYAVEER SINGH RATHROE', 'MR  SUNIL SINGH RATHORE', 'MRS  REKHA RATHORE', '2003-03-02', 'H NO  21, GOKUL VILLAGE, BEHIND MAHADEV PROPERTY, UDAIPUR', 'MDSPS-2181', 0, 8, 2, '', '', '', '0000-00-00'),
(3494, 'KANCHAN AGARWAL', 'MR  OM PRAKASH AGARWAL', 'MRS  SANGITA AGARWAL', '2004-03-01', '7-A ASHOK VIHAR HIRAN MAGRI SEC  3', 'MDSPS-2167', 0, 8, 1, '', '', '', '0000-00-00'),
(3495, 'LAXMI MATTA', 'MR  ARUN MATTA', 'MRS  HARSHA MATTA', '2005-02-13', '1/92, 100 FT  ROAD MEERA NAGAR BHUWANA UDR ', 'MDSPS-1909', 0, 8, 2, '', '', '', '0000-00-00'),
(3496, 'VAIBHAV SONI', 'MR  SURESH G  SONI', 'MRS  MEENAKSHI SONI', '2003-03-10', 'H  NO  251 HIRAN MAGRI SEC  4', 'MDSPS-1828', 0, 8, 1, '', '', '', '0000-00-00'),
(3497, 'JAHANVI VERMA', 'MR  SHAKTI SINGH VERMA', 'MRS  VANDANA VERMA', '2003-11-29', 'UIT COLONY GARONDA YOJANA UDR ', 'MDSPS-0700', 0, 8, 2, '', '', '', '0000-00-00'),
(3498, 'VIVEK DAMOR', 'MR. BABU LAL DAMOR', 'MRS. SAROJ', '2004-08-22', 'PLOT NO. 662, DHOLI MAGRI, GALI NO. 2, PANARIYON KI MADRI, UDAIPUR', 'MDSPS-2385', 0, 8, 1, '', '', '', '0000-00-00'),
(3499, 'KANEEZ FATIMA MIRZA', 'MR. M. YUNUS MIRZA', 'MRS. REHANA MIRZA', '2005-02-21', 'Q.NO. 98/A, RAILWAY COLONY, RANAPRATAP NAGAR, UDAIPUR', 'MDSPS-2389', 0, 8, 1, '', '', '', '0000-00-00'),
(3500, 'YASH CHECHANI', 'MR. SANJAY CHECHANI', 'MRS. VEENA CHECHANI', '2004-07-28', '127-M-ROAD, BHUPALPURA, UDAIPUR', 'MDSPS-2391', 0, 8, 2, '', '', '', '0000-00-00'),
(3501, 'DINESH SIMOLIYA', 'MR. RAM PRAKASH SIMOLIYA', 'MRS. RAJKUMARI SIMOLIYA', '2002-02-10', 'HANUMAN NELA PHALA BALICHA UDR.', 'MDSPS-0918', 0, 8, 1, '', '', '', '0000-00-00'),
(3502, 'AVVAL PATIDAR', 'MR. VINOD PATIDAR', 'MRS. REKHA PATIDAR', '2004-03-29', 'AKHARI PUSTAK BHANDAR BADGI, CHITRI, DUNGARPUR', 'MDSPS-2395', 0, 8, 1, '', '', '', '0000-00-00'),
(3503, 'CHANCHAL KUMARI', 'MR. LALITENDRA JAGA', 'MRS. HITENDRA KUMARI', '2004-07-09', '33, BOHRA GANESH COLONY, DHOOL KOT CHORAHA, UDAIPUR', 'MDSPS-2406', 0, 8, 1, '', '', '', '0000-00-00'),
(3504, 'AASHREYA CHAUHAN', 'MR  ROHIT CHAUHAN', 'MRS  BHAVNA CHAUHAN', '2003-05-23', 'A-2, 102, VALLABH EMPIRE, NAVRATAN, BHUVANA, UDAIPUR', 'MDS-SS-3183', 0, 9, 2, '', '', '', '0000-00-00'),
(3505, 'WANSH SINGH', 'MR  SUNIL KUMAR SINGH', 'MRS  MINA SINGH', '2003-03-31', 'ARIHANT COLONY, KANKROLI, DISTT  RAJSAMAND', 'MDS-SS-3206', 0, 9, 2, '', '', '', '0000-00-00'),
(3506, 'PRINCY ATRE', 'MR  NAVIN KUMAR ATRE', 'MRS  ANITA ATRE', '2003-01-24', 'A-204, DWARIKA APARTMENT, MANWAKHEDA, UDAIPUR', 'MDS-SS-3208', 0, 9, 2, '', '', '', '0000-00-00'),
(3507, 'DIVYANSHI SAXENA', 'MR  SANJEEV SAXENA', 'MRS  ANUBHA SAXENA', '2002-11-03', 'A-14, KAPIL BIHAR, BEDWAS, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3231', 0, 9, 2, '', '', '', '0000-00-00'),
(3508, 'JAVIC KOTHARI', 'MR  HARISH JAIN', 'MRS  RANJANA', '2003-01-31', '12, SHANTI NAGAR, BEHIND MDS SCHOOL, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDS-SS-3241', 0, 9, 2, '', '', '', '0000-00-00'),
(3509, 'RUDRAKSH JOSHI', 'MR  RAHUL JOSHI', 'MRS  MINAKSHI JOSHI', '2003-09-02', 'B/2, 204,  CHITRA, VAISHALI APARTMENT, HIRAN MAGRI, SECTOR NO. 4, UDAIPUR', 'MDS-SS-3250', 0, 9, 2, '', '', '', '0000-00-00'),
(3510, 'SEJAL MAHESHWARI', 'MR  VASUDEV MAHESHWARI', 'MRS  RAJESHWARI MAHESHWARI', '2003-12-01', '3-N-2, PRABHAT NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3252', 0, 9, 2, '', '', '', '0000-00-00'),
(3511, 'HARSHIT SHARMA', 'MR  DEEPAK SHARMA', 'MRS  SHILPA SHARMA', '2002-09-05', '16/1136, MEERA COLONY, AYAD, UDAIPUR', 'MDS-SS-3255', 0, 9, 2, '', '', '', '0000-00-00'),
(3512, 'BHAKTI TRIPATHI', 'MR  NIKHIL TRIPATHI', 'MRS  VINEETA TRIPATHI', '2003-05-18', 'A-303, SIDDHI GANPATI PARK, SECTOR NO,  8, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3281', 0, 9, 2, '', '', '', '0000-00-00'),
(3513, 'SAMIKSHA CHHABRA', 'LT  MR  BHARAT CHHABRA', 'MRS  SEEMA CHHABRA', '2003-03-22', '2-GA-6, MAHARANA PRATAP COLONY, SECT  13, UDAIPUR', 'MDS-SS-3288', 0, 9, 2, '', '', '', '0000-00-00'),
(3514, 'SAKET AGRAWAL', 'DR SUHAS KUMAR AGRAWAL', 'MRS  CHITRA AGRAWAL', '2002-10-17', '116, N B  NAGAR, DHAU JI KI BAWARI, POST DEBARI, DISTT  UDAIPUR', 'MDS-SS-3524', 0, 9, 2, '', '', '', '0000-00-00'),
(3515, 'AVI BHATNAGAR', 'MR  ASHISH BHATNAGAR', 'MRS  NIDHI BHATNAGAR', '2003-11-10', '2, GOKUL VILLAGE, TITRADI, SEC - 9, SEC - 9, UDAIPUR', 'MDS-SS-3525', 0, 9, 2, '', '', '', '0000-00-00'),
(3516, 'AMI BHATNAGAR', 'MR  ASHISH BHATNAGAR', 'MRS  NIDHI BHATNAGAR', '2003-11-10', '2, GOKUL VILLAGE, TITARDI, SEC - 9, UDAIPUR', 'MDS-SS-3526', 0, 9, 2, '', '', '', '0000-00-00'),
(3517, 'RISHIKA INTODIA', 'MR  BHARAT KUMAR INTODIA', 'MRS  KANTA INTODIA', '2004-05-31', 'K-203 NEW VIDHYA NAGAR RADEH KRISHNA APPARTMENT SEC  4', 'MDS-SS-3527', 0, 9, 2, '', '', '', '0000-00-00'),
(3518, 'SAUMYA TYAGI', 'DR  JITENDRA TYAGI', 'MRS  SUSHILA TYAGI', '2003-08-23', 'RAJESH PALIWAL, 61, OSTWAL NAGAR, SUNDERWAS, UDAIPUR', 'MDS-SS-3528', 0, 9, 2, '', '', '', '0000-00-00'),
(3519, 'SAHIL SAXENA', 'MR  PANKAJ KUMAR SAXENA', 'MRS  POONAM SAXENA', '2004-04-29', '21, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3529', 0, 9, 2, '', '', '', '0000-00-00'),
(3520, 'NAINA WARJURKAR', 'DR  SUNIL WARJURKAR', 'MRS  NEETA WARJURKAR', '2003-04-18', '302, CHITRA B-2, VAISHALI APPARTMENT, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3530', 0, 9, 2, '', '', '', '0000-00-00'),
(3521, 'HARSHIL SEN', 'MR  PUSHKAR SEN', 'MRS  DURGA SEN', '2002-10-02', 'DREEM HOUSE 534, ROSHAN NAGAR, SECT  MNO  12, SAVINA, UDAIPUR', 'MDS-SS-3301', 0, 9, 1, '', '', '', '0000-00-00'),
(3522, 'VARUN KUMAR VISHNOI', 'DR  NAVEEN K  VISHNOI', 'MRS  SANGEETA VISHNOI', '2002-12-01', '27 G, NAKORA NAGAR , DHAU JI KI BAWDI, UDAIPUR', 'MDS-SS-3531', 0, 9, 1, '', '', '', '0000-00-00'),
(3523, 'DAKSH SOLANKI', 'MR  MAHESH SOLANKI', 'MRS  JAISHREE', '2003-04-29', 'QTR  NO  15/IV, BSNL COLONY, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDS-SS-3532', 0, 9, 1, '', '', '', '0000-00-00'),
(3524, 'NISHANT ARORA', 'MR  DUSHYANT ARORA', 'MRS  KUSUM ARORA', '2003-10-29', '899, SECT  NO  4, POOJA NAGAR, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3533', 0, 9, 2, '', '', '', '0000-00-00'),
(3525, 'DARSHANA VAGRECHA', 'MR MANOHAR LAL VAGRECHA', 'MRS  REKHA VAGRECHA', '2003-01-08', '16, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3534', 0, 9, 1, '', '', '', '0000-00-00'),
(3526, 'HITESH MEENA', 'MR  OMPRAKASH MEENA', 'MRS  KRISHNA MEENA', '2003-03-14', '25/33, SOUTH SUNDERWAS, SHIV NAGAR, UDAIPUR', 'MDS-SS-3535', 0, 9, 1, '', '', '', '0000-00-00'),
(3527, 'PAKHUSHI YADAV', 'DR  NARENDRA YADAV', 'MRS  NEELAM YADAV', '2003-12-17', '94, TILAK NAGAR, SEC - 3, UDAIPUR', 'MDS-SS-3536', 0, 9, 2, '', '', '', '0000-00-00'),
(3528, 'RAMAN RAJ SINGH', 'YASHWANT SINGH BHATI', 'MRS  NAMRATA BHATI', '2003-04-17', '25-A, SIDDHARTH COMPLEX, HIRAN MAGRI, SECTOR NO   5, UDAIPUR', 'MDS-SS-3537', 0, 9, 2, '', '', '', '0000-00-00'),
(3529, 'SATWANT SINGH SHAKTAWAT', 'MR  VIJAY SINGH SHAKTAWAT', 'MRS  MONA RATHORE', '2003-07-03', '60, DORE NAGAR', 'MDS-SS-3538', 0, 9, 2, '', '', '', '0000-00-00'),
(3530, 'USHMA DANGI', 'MR  PRABHULAL DANGI', 'MRS   LEELA DEVI DANGI', '2003-05-03', 'EKLINGPURA, TEN  GIRVA, UDAIPUR', 'MDS-SS-3539', 0, 9, 1, '', '', '', '0000-00-00'),
(3531, 'SHUBHAM KUMAWAT', 'MR LEELADHAR KUMAWAT', 'MRS BASANTI DEVI', '2003-06-20', '698, SHRI NIKUNJ, SURY NAGAR, HIRAN MAGRI, SECT  NO  3, MOKSH MARG, UDAIPUR', 'MDS-SS-3540', 0, 9, 1, '', '', '', '0000-00-00'),
(3532, 'CHESTA SHARMA', 'MR  RAMESH SHARMA', 'MRS  ANITA SHARMA', '2003-12-04', '521, KALAJI GORAJI, GULAB BAGH RTOAD, UDAIPUR', 'MDS-SS-3307', 0, 9, 2, '', '', '', '0000-00-00'),
(3533, 'NAMAN DEWAL', 'MR  SIDHARTH DEWAL', 'MRS  SANJU KUNWAR', '2003-07-10', 'CHOTI NOKHI, INSIDE KUMHARO KA BHATTA, UDAIPUR', 'MDS-SS-3541', 0, 9, 2, '', '', '', '0000-00-00'),
(3534, 'VANSH NYATI', 'MR  GANPAT LAL NYATI', 'MRS  NEELAM NYATI', '2002-12-17', '71, VIVEK NAGAR SEC  3', 'MDS-SS-3542', 0, 9, 1, '', '', '', '0000-00-00'),
(3535, 'NAMAN GOEL', 'MR  PANKAJ GOEL', 'MRS  RADHIKA GOEL', '2003-02-26', 'A-304, DWARIKA APARTMENT, A-ONE COMPLEX, MANWA KHERA, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3543', 0, 9, 2, '', '', '', '0000-00-00'),
(3536, 'ANUWAK MATHUR', 'MR  ARUN MATHUR', 'MRS  YOGITA MATHUR', '2003-04-23', '4-AV-21, RHB COLONY, GOVERDHAN VILLAS, UDAIPUR', 'MDS-SS-3544', 0, 9, 2, '', '', '', '0000-00-00'),
(3537, 'ABHIMANYU SINGH CHOUHAN', 'MR  MOHAN SINGH CHOUHAN', 'MRS  NEETA CHOUHAN', '2003-03-01', '653, PANERIYON KI MADRI, DHOLI MAGRI, GALI NO  2, UDAIPUR', 'MDS-SS-3545', 0, 9, 2, '', '', '', '0000-00-00'),
(3538, 'DIKSHA SINGH', 'BHANU PRATAP SINGH', 'MRS  MANJU LATA', '2003-12-13', '34-35, SHUBHAM COMPLEX, NEAR HP GAS GODOWN, MANWA KHEDA, UDAIPUR', 'MDS-SS-3546', 0, 9, 1, '', '', '', '0000-00-00'),
(3539, 'CHAHAT BHAMBHANI', 'MR  MUKESH BHAMBHANI', 'MRS  NUPUR BHAMBHANI', '2003-02-05', '49-50, A ONE COMPLEX, MANWAN KHEDA, OPP SHEETAL HEIGHTS, UDAIPUR', 'MDS-SS-3547', 0, 9, 2, '', '', '', '0000-00-00'),
(3540, 'YASH CHOUBISA', 'MR  INDER KUMAR CHOUBISA', 'MRS  SHEETAL CHOUBISA', '2003-09-03', '18, RISHI NAGAR, HIRAN MAGRI, SECT  NO  3, NEAR M D S  SCHOOL, UDAIPUR', 'MDS-SS-3548', 0, 9, 1, '', '', '', '0000-00-00'),
(3541, 'VINAYPRATAP SINGH  DEVRA', 'MR  HEM SINGH DAVRA', 'MRS  KHUSBU KANWAR', '2003-04-07', '964, PATHO KI MANGARI, NEAR MOTHER PUBLIC SCHOOL, SUBHASH NAGAR, UDAIPUR', 'MDS-SS-3549', 0, 9, 1, '', '', '', '0000-00-00'),
(3542, 'PRACHI KOTHARI', 'MR  SUNIL KUMAR KOTHARI', 'MRS  SUREKHA KOTHARI', '2004-10-01', '171, VIVEK NAGAR, SECT  NO  3, UDAIPUR', 'MDS-SS-3550', 0, 9, 2, '', '', '', '0000-00-00'),
(3543, 'RITU RAJ AMETA', 'MR  PREM SHANKER AMETA', 'MRS  MANJU AMETA', '2002-04-15', '82, NAKODA NAGAR BEDWAS PRATAP NAGAR UDR ', 'MDS-SS-3551', 0, 9, 2, '', '', '', '0000-00-00'),
(3544, 'DIVYANSHU BAYA', 'MR  ASHOK KUMAR BAYA', 'MRS  NIRMLA BAYA', '2003-03-12', 'PLOT NO  233,  MDS TO FCI 100 FT  ROAD, RISHI NAGAR, SECT  NO  3, UDAIPUR', 'MDS-SS-3552', 0, 9, 1, '', '', '', '0000-00-00'),
(3545, 'NITTANT VYAS', 'SATISH VYAS', 'PRAGATI VYAS', '2003-05-17', '17, ROAD NO  1, ANAND VIHAR, TEKRI MADRI LINK ROAD, UDAIPUR', 'MDS-SS-3553', 0, 9, 2, '', '', '', '0000-00-00'),
(3546, 'ADITYA SHARMA', 'MR  DEVENDRA SHARMA', 'MRS  MADHU SHARMA', '2003-05-05', 'H NO  2, DASHORA GALI, MOTI CHOHTTA, UDAIPUR', 'MDS-SS-3554', 0, 9, 2, '', '', '', '0000-00-00'),
(3547, 'JAYESH CHITRIYA', 'MR  MAHAVEER JAIN', 'MRS  NISHA JAIN', '2002-07-23', '545, TAGORE NAGAR, NEAR BSNL OFFICE, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3555', 0, 9, 1, '', '', '', '0000-00-00'),
(3548, 'TANISHQ JAIN', 'MR  CHANDRA PRAKASH JAIN', 'MRS  SEEMA JAIN', '2004-03-11', '2-A, NEW SADRI COLONY, KALAJI GORAJI, UDAIPUR', 'MDS-SS-3556', 0, 9, 1, '', '', '', '0000-00-00'),
(3549, 'GARVISH BHIMAWAT', 'MR  DINESH BHIMAWAT', 'MRS  VIBHA BHIMAWAT', '2003-10-06', '187, TAGORE NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3557', 0, 9, 1, '', '', '', '0000-00-00'),
(3550, 'SHIVANI KOTHARI', 'MR  RAKESH KOTHARI', 'MRS  SUNITA KOTHARI', '2003-06-19', '21, SAMTA NAGAR, NEAR MDS SCHOOL, GAS GODOWN ROAD, UDAIPUR', 'MDS-SS-3558', 0, 9, 2, '', '', '', '0000-00-00'),
(3551, 'BHUMIKA BOLYA', 'MR   ASHOK BOLIYA', 'MRS  JOTHSNA JAIN', '2003-06-16', '12, AMBA NAGAR, MANVAKHEDA ROAD, SECT  4, UDAIPUR', 'MDS-SS-3559', 0, 9, 2, '', '', '', '0000-00-00'),
(3552, 'ADITYA CHAMPAWAT', 'MR  MANOJ CHAMPAWAT', 'MRS  NEELAM CHAMPAWAT', '2003-04-03', 'H NO 61 , HIRAN MAGRI, SECT  NO  6, BEHIND J B  HOSPITAL, UDAIPUR', 'MDS-SS-3560', 0, 9, 2, '', '', '', '0000-00-00'),
(3553, 'BHAVIKA SOLANKI', 'MR  GAJENDRA SINGH SOLANKI', 'MRS  SHOBHA KANWAR', '2002-03-05', '15, SHANTI NAGAR, NEAR MDS, SEC - 3, UDAIPUR', 'MDS-SS-3561', 0, 9, 1, '', '', '', '0000-00-00'),
(3554, 'RUDRAKSH CHATURVEDI', 'MR  ARUN CHATURVEDI', 'MRS  MEENA CHATURVEDI', '2003-08-05', '97, SUBHAS NAGAR, 4TH ROAD UDR ', 'MDS-SS-3562', 0, 9, 1, '', '', '', '0000-00-00'),
(3555, 'VISHAKHA MUNDANIYA', 'MR  HARISH MUNDANIYA', 'MRS  MADHU MUNDANIYA', '2003-03-09', 'PRATAP BHAWAN, 103, KUMAWATPURA, INSIDE SURAJPOLE, BHANG WALE GALE, UDAIPUR', 'MDS-SS-3563', 0, 9, 2, '', '', '', '0000-00-00'),
(3556, 'DEVANSHU SWAMI', 'MR  JALDEEP SWAMI', 'MRS  HEMLATA SWAMI', '2003-02-16', '10, DHAN MANDI, MEHTA KAPADA, UDAIPUR', 'MDS-SS-3564', 0, 9, 1, '', '', '', '0000-00-00'),
(3557, 'PRAKHAR PATIDAR', 'MR  RAKESH PATIDAR', 'DR  SUNITA PANCHAWAT', '2003-01-24', '92, PATIDAR BHAWAN, MOTI MAGARI SCHEME,  NEAR UIT CIRCLE, ZINC PARK, UDAIPUR', 'MDS-SS-3565', 0, 9, 2, '', '', '', '0000-00-00'),
(3558, 'YUVRAJ SINGH DEORA', 'MR  MAHENDRA SINGH DEORA', 'MRS  LEELA KUNWAR DEORA', '2003-01-30', '109, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3566', 0, 9, 1, '', '', '', '0000-00-00'),
(3559, 'AYUSH LODHA', 'MR  ANIL LODHA', 'MRS  ANITA LODHA', '2003-02-19', '21, ARVIND NAGAR, SUNDERWAS, UDAIPUR', 'MDS-SS-3567', 0, 9, 1, '', '', '', '0000-00-00'),
(3560, 'KOMAL SHARMA', 'MR  SHYAM SUNDER SHARMA', 'MRS  MANJU SHARMA', '2002-12-21', '17, SAMTA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3568', 0, 9, 2, '', '', '', '0000-00-00'),
(3561, 'MAHENDRA DANGI', 'MR  CHUNILAL DANGI', 'MRS  SHOBHA DANGI', '2002-06-26', 'ROAD NO  2, SUBHASH NAGAR, NEAR MOTHER PUBLIC SCHOOL, UDAIPUR', 'MDS-SS-3569', 0, 9, 2, '', '', '', '0000-00-00'),
(3562, 'TIYA CHHAJED', 'MR  VIPUL CHHAJED', 'MRS  SONIKA CHHAJED', '2003-07-05', '5, SAMTA NAGAR, NEAR RIVER, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3570', 0, 9, 1, '', '', '', '0000-00-00'),
(3563, 'ADITYA RAJ SINGH', 'MR  MANOJ RAJPUT', 'MRS  ASHA RAJPUT', '2003-04-04', '313, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3571', 0, 9, 1, '', '', '', '0000-00-00'),
(3564, 'KAMLESH PATEL', 'MR  DEVILAL PATEL', 'MRS  BHAMRI BAI', '2001-09-13', '147, SHRIJI VIHAR, NEW VIDHYA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3572', 0, 9, 1, '', '', '', '0000-00-00'),
(3565, 'RAHUL MISHRA', 'MR  NEERAJ MISHRA', 'MRS  ANITA MISHRA', '2003-10-08', 'SEC  3 , 5 ,NAKODA NAGAR', 'MDS-SS-3573', 0, 9, 2, '', '', '', '0000-00-00'),
(3566, 'ANKIT PARMAR', 'MR  UMESH PARMAR', 'MRS  MAMTA DEVI', '2003-02-18', '4,JYOTI NAGAR, MANWAKHEDA ROAD/B/O  VAISHALI APARTMENT, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3574', 0, 9, 1, '', '', '', '0000-00-00'),
(3567, 'HARSHIL AMETA', 'MR  ANIL AMETA', 'MRS  SUSHAMA SHARMA', '2004-03-03', '4, ASHOK VIHAR SEC  3 HIRAN MAGRI UDR ', 'MDS-SS-3575', 0, 9, 2, '', '', '', '0000-00-00'),
(3568, 'PALAK CHAWARE', 'MR  VINOD CHAWARE', 'MRS  MANISHA CHAWARE', '2003-06-17', '98, Tilak Nagar, Sect  No  3, Hiran Magri, Udaipur', 'MDS-SS-3576', 0, 9, 2, '', '', '', '0000-00-00'),
(3569, 'PRATIKSHA YADAV', 'MR  DASHRATH SINGH YADAV', 'MRS  MANBHAVATI YADAV', '2003-10-18', '29,  SAVINA VERMAN COLONY, SECT  NO  9, UDAIPUR', 'MDS-SS-3577', 0, 9, 2, '', '', '', '0000-00-00'),
(3570, 'NAMEET MAHESHWARI', 'MR VISHNU MAHESHWARI', 'MRS  INDU MAHESHWARI', '2002-12-04', '15, CHHOTI MAHESHWARIO KI SEHARI, DHANMANDI, UDAIPUR', 'MDS-SS-3578', 0, 9, 1, '', '', '', '0000-00-00'),
(3571, 'VAIBHAVRAJ SINGH RANAWAT', 'MR  RAJENDRA SINGH RANAWAT', 'MRS  KIRAN CHOUHAN', '2003-05-31', '33, SHANTI NAGAR, BEHIND OF MDS SCHOOL, HIRAN MAGRI, SEC  3', 'MDS-SS-3579', 0, 9, 1, '', '', '', '0000-00-00'),
(3572, 'RONIT JAIN', 'MR  MUKESH JAIN', 'MRS  SHARMILA JAIN', '2001-05-06', '15, GOKUL PURA, BEKNI PULIYA, UNIVERSITY ROAD, UDAIPUR', 'MDS-SS-3580', 0, 9, 1, '', '', '', '0000-00-00'),
(3573, 'TUSHAR CHOUDHARY', 'MR VERENDRA SINGH CHOUDHARY', 'MRS MONIKA CHOUDHARY', '2002-08-07', 'A-207, DWARIKA APPARTMENT, MANVA KHEDA, UDAIPUR', 'MDS-SS-3581', 0, 9, 1, '', '', '', '0000-00-00'),
(3574, 'SAMEEP PANCHAL', 'MR  KUNAL PANCHAL', 'MRS  SARITA MALVIUYA PANCHAL', '2003-12-06', 'T-22, BASANT VIHAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDS-SS-3323', 0, 9, 2, '', '', '', '0000-00-00'),
(3575, 'ADITI SHARMA', 'MR  BHUPENDRA KUMAR SHARMA', 'MRS  BHAWANA SHARM', '2003-05-03', '28, SHANTI NAGAR, SECT  NO  3, UDAIPUR', 'MDS-SS-3582', 0, 9, 2, '', '', '', '0000-00-00'),
(3576, 'AAYUSH GEHI', 'MR  MANISH GEHI', 'MRS  BHARTI GEHI', '2002-12-22', 'J-3, HIRAN MAGRI, SECT  NO  5, NEAR UDAI PARK, UDAIPUR', 'MDS-SS-3583', 0, 9, 1, '', '', '', '0000-00-00'),
(3577, 'PRANJAL VIJAYVARGIYA', 'MR  SATYA PRAKASH VIJAYVARGIYA', 'MRS  KALA VIJAYVARGIYA', '2003-06-10', '10, AMBIKA NAGAR, NR  SAWITRY VATIKA, SECTOR NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3584', 0, 9, 2, '', '', '', '0000-00-00'),
(3578, 'AARADHYA LOHAR', 'MR  HARISH LOHAR', 'MRS  LAJWANTI LOHAR', '2003-03-08', '80, MAHAVEER STEEL FURNITURE GLASS FACTORY, KHAMPURA ROAD, UDAIPUR', 'MDS-SS-3585', 0, 9, 2, '', '', '', '0000-00-00'),
(3579, 'NAMAN MEHTA', 'MR  INDERJEET MEHTA', 'MRS  NEELIMA MEHTA', '2003-08-07', '15, DARSHANPURA, OPP  M B  COLLEGE, NEAR RAGHU MAHAL HOTEL, UDAIPUR', 'MDS-SS-3586', 0, 9, 1, '', '', '', '0000-00-00'),
(3580, 'DHRUV KOTHARI', 'MR  HIMMAT SINGH KOTHARI', 'MRS  MEENA KOTHARI', '2003-10-03', '14, GAYTRI NAGAR H  M  SEC  5 UDR ', 'MDS-SS-3587', 0, 9, 1, '', '', '', '0000-00-00'),
(3581, 'KOMAL DANGI', 'MR  DHARMENDRA DANGI', 'MRS  PUSPA DANGI', '2002-05-17', 'MANWAKHERA, SECT  NO  4, UDAIPUR', 'MDS-SS-3588', 0, 9, 1, '', '', '', '0000-00-00'),
(3582, 'HIMANSHI JAWARIYA', 'MR  LALIT JAWARIYA', 'MRS  FULA JAWARIYA', '2003-03-15', '20, SHANTI NAGAR, SECT  NO  3, HIRAN MAGRI, NEAR CHANDNI VATIKA, UDAIPUR', 'MDS-SS-3589', 0, 9, 2, '', '', '', '0000-00-00'),
(3583, 'GARVIT JAIN', 'MR. CHANDRA PRAKASH JAIN', 'MRS  MADHUVANT CHITTORA', '2003-02-28', '210-C, GANESH NAGAR, PAHADA, UDAIPUR', 'MDS-SS-3590', 0, 9, 2, '', '', '', '0000-00-00'),
(3584, 'DASHRATH SHEKHAWAT', 'MR  SURENDRA SINGH SHEKHAWAT', 'MRS  DHEERAJ KANWAR', '2003-03-08', '766, 767 SURYA NAGAR SEC  3 UDR ', 'MDS-SS-3591', 0, 9, 1, '', '', '', '0000-00-00'),
(3585, 'RANVEER SINGH SOLANKI', 'MR  VIRENDRA SINGH SOLANKI', 'MRS  RENU SOLANKI', '2003-08-21', '340, SOUTH SUNDERWAS, BACK SIDE DHARTIDHAN, UDAIPUR', 'MDS-SS-3592', 0, 9, 1, '', '', '', '0000-00-00'),
(3586, 'YASH VAISHNAV', 'MR  MUKESH VAISHNAV', 'MRS  REKHA VAISHNAV', '2002-10-12', 'NR  BUS STAND LAKADWAS TEH  GIRWA UDR ', 'MDS-SS-3593', 0, 9, 1, '', '', '', '0000-00-00');
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`) VALUES
(3587, 'ANURAG CHOUDHARY', 'MR  MANI LAL KALAL', 'MRS  LAXMI DEVI KALAL', '2003-02-17', '58, ROSHAN NAGAR, SAVINA, UDAIPUR', 'MDS-SS-3594', 0, 9, 1, '', '', '', '0000-00-00'),
(3588, 'RAHUL PALIWAL', 'MR  BHERU LAL PALIWAL', 'MRS  GANESHI DEVI PALIWAL', '2004-03-07', '22, POSTAL COLONY, HIRAN MAGRI, SECTOR NO  5, UDAIPUR', 'MDS-SS-3595', 0, 9, 2, '', '', '', '0000-00-00'),
(3589, 'RADHIKA SINGH JADOUN', 'MR  GOPAL SINGH JADOUN', 'MRS  LEELA KUMARI JADOUN', '2004-02-23', '56, SUKHADIYA NAGAR, HIRAN MAGRI, SECT  NO  3, BEHIND UDAIPUR GAS GODOWN, UDAIPUR', 'MDS-SS-3596', 0, 9, 1, '', '', '', '0000-00-00'),
(3590, 'BHARAT SHARMA', 'MR. RAMESHWAR NAGDA', 'MRS  RADHA SHARMA', '2002-12-05', '64 EKLING COLONY SEC 3 CELEBRATION CAFÉ UDAIPUR', 'MDS-SS-3597', 0, 9, 1, '', '', '', '0000-00-00'),
(3591, 'RIYUKSHA SHUKLA', 'MR. RAJESH SHUKLA', 'MRS  ANITA SHUKLA', '2002-09-19', '4-A, "DEVGYAN" SHUKLABHAWAN, NORTH SUNDERWAS, UDAIPUR', 'MDS-SS-3598', 0, 9, 1, '', '', '', '0000-00-00'),
(3592, 'PRACHI TATED', 'MR  CHANDRA SINGH TATED', 'MRS  SEEMA TATER', '2003-03-19', '57, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3599', 0, 9, 2, '', '', '', '0000-00-00'),
(3593, 'ANURAG BAHETI', 'MR  DINESH BAHETI', 'MRS  SUNITA', '2003-07-24', 'H NO  140, SHREE JEE VIHAR, NEW VIDHYA NAGAR, HIRAN MAGRI SECT  NO  4, UDAIPUR', 'MDS-SS-3328', 0, 9, 2, '', '', '', '0000-00-00'),
(3594, 'JATIN CHOUBISA', 'MR  SURESH CHANDRA CHOUBISA', 'MRS  ISHWARI CHOUBISA', '2003-09-07', '433/4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3600', 0, 9, 2, '', '', '', '0000-00-00'),
(3595, 'MANSI JAIN', 'MR  ANIL KUMAR JAIN', 'LATE MRS  NIRMALA JAIN', '2003-07-04', '20, JAIRAM COLONY, THOKAR CHAURAHA, UDAIPUR', 'MDS-SS-3601', 0, 9, 1, '', '', '', '0000-00-00'),
(3596, 'SALONI CHOUBISA', 'MR  DINESH CHANDRA CHOUBISA', 'MRS  KRISHNA CHOUBISA', '2003-09-10', '33, SECT  NO 4, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3602', 0, 9, 1, '', '', '', '0000-00-00'),
(3597, 'HARSHITA JENA', 'MR  DILIP K  JENA', 'MRS  BASANTI JENA', '2004-04-27', 'UIT COLONY, 323, AKASHWANI KE SAMNE, UDAIPUR', 'MDS-SS-3603', 0, 9, 2, '', '', '', '0000-00-00'),
(3598, 'HIMANSHU BHAGZAI', 'MR  HARISH BHAGZAI', 'MRS  MUSKAN BHAGZAI', '2002-01-28', '1454, GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDS-SS-3604', 0, 9, 1, '', '', '', '0000-00-00'),
(3599, 'ARIN SHARMA', 'MR  OM PRAKASH SHARMA', 'MRS  SOMYA SHARMA', '2004-04-22', '403, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3605', 0, 9, 2, '', '', '', '0000-00-00'),
(3600, 'KAVISH SAHU', 'MR  SHYAMLAL SAHU', 'MRS  ANITA SAHU', '2003-02-13', '407, KALKAMATA ROAD, BEKANI PULIYA, PAHADA, UDAIPUR', 'MDS-SS-3606', 0, 9, 1, '', '', '', '0000-00-00'),
(3601, 'TISHA JAIN', 'MR  MAHENDRA JAIN', 'MRS  PRITI JAIN', '2003-10-22', '398, HIRAN MAGRI, SECT  NO  4, PETROL PUMP, MAIN ROAD, UDAIPUR', 'MDS-SS-3345', 0, 9, 2, '', '', '', '0000-00-00'),
(3602, 'HARISH CHHATWANI', 'MR  SUNIL CHHATWANI', 'MRS  LATA CHHATWANI', '2003-10-20', 'C-3/32, PRATAP NAGAR, NEAR HAPPY SCHOOL, UDAIPUR', 'MDS-SS-3607', 0, 9, 1, '', '', '', '0000-00-00'),
(3603, 'AMAN DEV SHARMA', 'MR  DEVENDRA SHARMA', 'MRS  INDUBALA SHARMA', '2004-01-04', '27, SHANTI NAGAR, OPP  MDS SCHOOL, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3608', 0, 9, 1, '', '', '', '0000-00-00'),
(3604, 'VIHAR SONI', 'MR  HITENDRA SONI', 'MRS  MANISHA SONI', '2003-02-10', '261-A, SHREE JI VIHAR COLONY, NEW VIDYA NAGAR, SECT  NO  4, UDAIPUR', 'MDS-SS-3609', 0, 9, 1, '', '', '', '0000-00-00'),
(3605, 'GITIKA AGRAWAL', 'MR  ANIL AGRAWAL', 'MRS  HARIPRIYA AGARWAL', '2003-02-02', '407, GANESH APARTMENT SAMTA NAGAR BEDLA', 'MDS-SS-3610', 0, 9, 2, '', '', '', '0000-00-00'),
(3606, 'SHRESHTHA MAHESHWARI', 'MR  KOUSHAL GATTANI', 'MRS  JYOTI MAHESHWARI', '2003-11-19', '9, BAHUBALI COLONY, BOHRA GANESH ROAD, UDAIPUR', 'MDS-SS-3611', 0, 9, 2, '', '', '', '0000-00-00'),
(3607, 'SUMAN MEENA', 'MR  RAMSWAROOP MEENA', 'MRS  KELA DEVI', '2004-05-13', 'QTR  NO  36/A, RAILWAY COLONY, RANAPRATAP NAGAR, UDAIPUR', 'MDS-SS-3612', 0, 9, 1, '', '', '', '0000-00-00'),
(3608, 'VAIBHAV CHOUDHARY', 'MR  OM PRAKASH CHOUDHARY', 'MRS  PUSHPA CHOUDHARY', '2002-10-25', '724, SURYA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3613', 0, 9, 1, '', '', '', '0000-00-00'),
(3609, 'RIYA MAHESHWARI', 'MR  SANJAY MAHESHWARI', 'MRS  MONIKA MAHESHWARI', '2003-08-05', '34, SHIVA BRJ BUMI PARIVAHAN COLONY, TEKRI MADRI LINK ROAD, UDAIPUR', 'MDS-SS-3349', 0, 9, 2, '', '', '', '0000-00-00'),
(3610, 'JAYESH GURJAR', 'MR  MANGILAL GURJAR', 'MRS  SHAYAMU DEVI', '2003-07-06', 'SHIV KUNJ CHOWK, NORTH SUNDERWAS, UDAIPUR', 'MDS-SS-3614', 0, 9, 1, '', '', '', '0000-00-00'),
(3611, 'PURVI GUPTA', 'MR  SANJAY GUPTA', 'MRS  RASHI GUPTA', '2003-01-23', '48-49, TILAK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3615', 0, 9, 2, '', '', '', '0000-00-00'),
(3612, 'YAGVENDRA SINGH RAO', 'MR  KAMLENDRA SINGH RAO', 'MRS  DURGAVATI RAO', '2003-05-18', '441, SOUTH SUNDERWAS, UDAIPUR', 'MDS-SS-3616', 0, 9, 1, '', '', '', '0000-00-00'),
(3613, 'PRIYA RATHORE', 'RAJENDER SINGH RATHORE', 'MRS  RANJANA KUNWAR', '2004-02-20', 'H2 POLICE LINE TEKRI UDR ', 'MDS-SS-3617', 0, 9, 1, '', '', '', '0000-00-00'),
(3614, 'ISHIKA MUKESH JAIN', 'MR  MUKESH JAIN (BHANDARI)', 'MRS  REKHA JAIN', '2003-01-03', '3, NAMINATH NAGAR, SECT  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3357', 0, 9, 2, '', '', '', '0000-00-00'),
(3615, 'ANUJ SHARMA', 'MR  SANJEEV SHARMA', 'MRS  ASHA GOUR', '2001-12-29', '843, NEW TRAC NAGAR, UDAIPUR', 'MDS-SS-3618', 0, 9, 1, '', '', '', '0000-00-00'),
(3616, 'MANAN KOTHARI', 'MR  SUSHIL KOTHARI', 'MRS  MEENA KOTHARI', '2003-04-14', 'C 6, VARDHMAN NAGAR, NORTH SUNDERWAS, UDAIPUR', 'MDS-SS-3619', 0, 9, 1, '', '', '', '0000-00-00'),
(3617, 'NIMIT JAIN', 'MR  ARVIND JAIN', 'MRS  SUNITA JAIN', '2003-03-23', 'C-7, VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3405', 0, 9, 1, '', '', '', '0000-00-00'),
(3618, 'HARSHAL SONI', 'MR  RAKESH SONI', 'MRS  MADHU SONI', '2003-05-08', 'ASHOK GALI, BEDLA, UDAIPUR', 'MDS-SS-3422', 0, 9, 2, '', '', '', '0000-00-00'),
(3619, 'AVIRAL PRATAP SINGH CHAWDA', 'MR. ARINDAM SINGH CHAWDA', 'DR. ARTI SHARMA', '2003-06-26', '36, ROHAN VILLA, TULSI NAGAR, SECT. 5, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3639', 0, 9, 2, '', '', '', '0000-00-00'),
(3620, 'KRITESH SAHU', 'MR.', 'MRS. MAYA SAHU', '2003-08-24', '4, GOKULPURA, AYAD BAKNI PULIYA KA PASS, UNIVERSITY ROAD, UDAIPUR', 'MDS-SS-3694', 0, 9, 1, '', '', '', '0000-00-00'),
(3621, 'HALCHAL MEENA', 'MR. VISHRAM MEENA', 'MRS. VANDANA MEENA', '2005-03-01', 'QTR. NO. 48-A, RAILWAY COLONY, NEAR CITY RLY. STATION, UDAIPUR', 'MDSPS-2179', 0, 9, 1, '', '', '', '0000-00-00'),
(3622, 'ROHAN AGRAWAL', 'MR  SUNIL AGRAWAL', 'MRS  SEEMA AGRAWAL', '2000-12-20', 'CIVIL LINE ROAD, WARD NO  3, GANGAPUR, DISTT  BHILWARA', 'MDS-SS-2745', 0, 11, 2, '', '', '', '0000-00-00'),
(3623, 'DIYA DAVE', 'MR  KAMLESH DAVE', 'MRS  MANISHA DAVE', '2002-03-15', 'A2-202, VAISHALI APT  MANWA KHEDA ROAD, SEC - 4, UDAIPUR', 'MDS-SS-2848', 0, 11, 6, '', '', '', '0000-00-00'),
(3624, 'R N SRILALITA', 'MR  R N  NARASIMHAMURHY', 'MRS  R N  SATYAVANI', '2000-12-03', '58-A, AZAD NAGAR, SAJJANGARH ROAD, UDAIPUR', 'MDS-SS-2582', 0, 11, 2, '', '', '', '0000-00-00'),
(3625, 'PALLAVI SUMERIYA', 'MR  HARISH KUMAR SUMERIYA', 'MRS  PREETI SUMIRIYA', '2001-08-10', '15, SARASWATI NAGAR, MALI COLONY, TEKRI ROAD, UDAIPUR', 'MDS-SS-2666', 0, 11, 2, '', '', '', '0000-00-00'),
(3626, 'JASPAL SINGH CHUNDAWAT', 'MR  GANPAT SINGH CHUNDAWAT', 'MRS  RATAN KUNWAR', '2002-03-09', 'VPO PARSOLI, VAYA BARI SADRI, CHITTORGARH/NEAR SANJEEVANI HOSPITAL, SEVASHRAM, UDAIPUR', 'MDS-SS-2945', 0, 11, 6, '', '', '', '0000-00-00'),
(3627, 'JINESH JAIN', 'MR  NARENDRA JAIN', 'MRS  SHEETAL JAIN', '2002-01-14', '18, MANDI KI NAL, DHAN MANDI, UDAIPUR', 'MDS-SS-2847', 0, 11, 2, '', '', '', '0000-00-00'),
(3628, 'HIMANK VAISHNAV', 'MR  NAVIN KUMAR VAISHNAV', 'MRS  REKHA VAISHNAV', '2000-12-14', '43, NEAR CHANDANI VATIKA, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2873', 0, 11, 1, '', '', '', '0000-00-00'),
(3629, 'YOGESH KUMAR', 'MR  VINOD KUMAR', 'MRS  REENA YADAV', '2002-01-11', '130/4, JCO, EKLINGGARH CANTT  UDAIPUR', 'MDS-SS-2595', 0, 11, 2, '', '', '', '0000-00-00'),
(3630, 'HARSH MAHESHWARI', 'MR  AJAY MAHESHWARI', 'MRS  VANDANA MAHESHWARI', '2001-12-05', '8, SECTOR NO  8, HIRAN MAGRI, NEAR BARODA NURSERY, MAIN ROAD, UDAIPUR', 'MDS-SS-1749', 0, 11, 2, '', '', '', '0000-00-00'),
(3631, 'RAJSHREE MESHRAM', 'DR  AVINASH MESHRAM', 'MRS  LEENA MESHRAM', '2000-09-09', 'H NO  3, SHUBHAM COMPLEX, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2592', 0, 11, 2, '', '', '', '0000-00-00'),
(3632, 'NILAY NAGORI', 'MR  RAKESH NAGORI', 'MRS  MONIKA NAGORI', '2001-03-15', '32, MAHAVEER NAGAR, HIRAN MAGRI, SECTOR NO  4, BEHIND TULSI NIKETAN HOSTEL, UDAIPUR', 'MDS-SS-2608', 0, 11, 2, '', '', '', '0000-00-00'),
(3633, 'KULDEEP PATEL', 'MR  RAJENDRA PRATAP PATEL', 'MRS  RAJKUMARI PATEL', '2001-01-02', '4-D-13, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2874', 0, 11, 6, '', '', '', '0000-00-00'),
(3634, 'AKSHAT JAIN', 'MR  PRAVEEN JAIN', 'MRS  NEETA JAIN', '2001-09-08', '2, NEW VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2879', 0, 11, 6, '', '', '', '0000-00-00'),
(3635, 'NEHA JAIN', 'MR  MAHAVEER MEHTA', 'MRS  MADHU MEHTA', '2001-11-10', '36-C, OPP  TO AIR TOWER, MADRI PUROHITAN, UIT COLONY, UDAIPUR', 'MDS-SS-2880', 0, 11, 6, '', '', '', '0000-00-00'),
(3636, 'LAKSHITA PANDYA', 'MR  MANOJ PANDYA', 'MRS  KAVITA PANDYA', '2000-09-18', '3-M-26-PRABHAT NAGAR, SECTOR NO  5, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2849', 0, 11, 2, '', '', '', '0000-00-00'),
(3637, 'BHANUPRATAP SINGH SHAKTAWAT', 'MR  VIJAY SINGH SHAKTAWAT', 'MRS  MONA RATHORE', '2001-12-18', '134/A, SUBHASH NAGAR, UDAIPUR', 'MDS-SS-2864', 0, 11, 6, '', '', '', '0000-00-00'),
(3638, 'MANISHA PATEL', 'MR  BRIJESH KUMAR PATEL', 'MRS  SANGEETA PATEL', '2001-09-01', '134-B, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2852', 0, 11, 6, '', '', '', '0000-00-00'),
(3639, 'MAYANK KOTHARI', 'MR  RAJENDRA KOTHARI', 'MRS  MAMTA KOTHARI', '2000-10-30', '29, SAMTA NAGAR, BEHIND MDS SCHOOL, SECTOR NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2861', 0, 11, 6, '', '', '', '0000-00-00'),
(3640, 'MAYA DANGI', 'MR  PRABHULAL DANGI', 'MRS  LEELA DEVI DANGI', '2001-05-03', 'EKLINGPURA, TEN  GIRVA, UDAIPUR', 'MDS-SS-2882', 0, 11, 6, '', '', '', '0000-00-00'),
(3641, 'CHANDRANSHU KHIRIYA', 'MR  CHANDRA VEER SINGH KHIRIYA', 'MRS  JYOTI DEWAL', '2001-12-06', 'B-8, ADARSH NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2883', 0, 11, 2, '', '', '', '0000-00-00'),
(3642, 'ISHITA JAIN', 'MR RAMESH KUMAR JAIN', 'MRS  MANISHA JAIN', '2001-02-03', '6 E 7, VIP COLONY, PKM SEC - 9, OPP  MUKESH GASS AGENCY, UDAIPUR', 'MDS-SS-2890', 0, 11, 6, '', '', '', '0000-00-00'),
(3643, 'DHWANI SHARMA', 'MR  INDER SHARMA', 'MRS  MEENAKSHAI SHARMA', '2001-06-08', '139, SHREE JI VIHAR, NEW VIDHYA NAGAR COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2897', 0, 11, 6, '', '', '', '0000-00-00'),
(3644, 'NAMRATA RANKA', 'MR  GANESH KUMAR RANKA', 'MRS  REKHA RANKA', '2001-07-02', '16/1137, MEERA COLONY, BEHIND SUNDERWAS, AYAD, UDAIPUR', 'MDS-SS-2911', 0, 11, 6, '', '', '', '0000-00-00'),
(3645, 'TALIB AMAR', 'MR  MUSLIM AMAR', 'MRS  IRFANA AMAR', '2001-10-16', '78, DR  ZAKIR HUSSAIN MARG, BOHARAWADI, UDAIPUR', 'MDS-SS-2924', 0, 11, 2, '', '', '', '0000-00-00'),
(3646, 'ARNAV KUMAR JAIN', 'MR  SHRIPAL JAIN', 'MRS  PREETI JAIN', '2001-08-11', '82 , SWAMI NAGAR, TEKRI MADRI LINK ROAD, UDAIPUR', 'MDS-SS-2688', 0, 11, 2, '', '', '', '0000-00-00'),
(3647, 'HITESHI CHOUDHARY', 'MR  BHAGWATI LAL JALANIA', 'MRS  SHOBHANA JALANIA', '2000-10-21', '53-54, ROSHAN NAGAR, SEC - 12, SAVINA, UDAIPUR', 'MDS-SS-2678', 0, 11, 1, '', '', '', '0000-00-00'),
(3648, 'BHUVAN DAMOR', 'MR  RANCHHOD LAL DAMOR', 'MRS  VARSHA KHARADI', '2000-11-01', 'BEHIND POOJA SURJICAL HOSPITAL, GREEN PARK COLONY, DUNGARPUR', 'MDS-SS-2732', 0, 11, 2, '', '', '', '0000-00-00'),
(3649, 'NAMAN SAMARIYA', 'MR  PRAKASH CHANDRA SAMARIYA', 'MRS  PREMLATA', '2001-07-02', '3-T-24, PRABHAT NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDS-SS-2600', 0, 11, 1, '', '', '', '0000-00-00'),
(3650, 'KANCHI LODHA', 'MR  NEERAJ LODHA', 'MRS  GEETA LODHA', '2001-09-12', '15, TAGORE NAGAR, SEC - 4, UDAIPUR', 'MDS-SS-2642', 0, 11, 2, '', '', '', '0000-00-00'),
(3651, 'HIMANSHU SHARMA', 'MR  DINESH SHARMA', 'MRS  PUSHPA SHARMA', '2000-07-31', '877, POOJA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-PS-1164', 0, 11, 6, '', '', '', '0000-00-00'),
(3652, 'HIMESH SHARMA', 'MR  GOPESH CHANDRA SHARMA', 'MRS  KAVITA SHARMA', '2002-08-08', '48-B, RISHABH NAGAR, KALKA MATA ROAD, NEAR WATER TANK, UDAIPUR', 'MDS-SS-3050', 0, 11, 6, '', '', '', '0000-00-00'),
(3653, 'GAURANG PANERI', 'MR  YOGESH CHANDRA PANERI', 'MRS  SHARDA PANERI', '2001-11-24', 'MANDAKNI SADAN, 25/100, KISHKINDA HANUMAN TEMPLE, BHAT TALAI NOHRA, PANORIYO KI MADRI, UDAIPUR', 'MDS-SS-2967', 0, 11, 1, '', '', '', '0000-00-00'),
(3654, 'SUJAL LAXMIKANT VAJIRE', 'MR  LAXMIKANT M  VAJIRE', 'MRS  SUNITA L  VAJIRE', '2001-04-29', 'PLOT NO  14, SHANTI NAGAR, HIRAN MAGRI, SECT  NO 3, UDAIPUR', 'MDS-SS-2920', 0, 11, 6, '', '', '', '0000-00-00'),
(3655, 'ABHINAV SINGH SHEKHAWAT', 'MR  MAHIPAL SINGH SHEKHAWAT', 'MRS  KAMLESH KANWAR', '2002-02-11', '12, SIDDHARTH COMPLEX, SEC - 5, UDAIPUR', 'MDS-SS-2894', 0, 11, 1, '', '', '', '0000-00-00'),
(3656, 'TARUNA SUTHAR', 'MR  BALU LAL SUTHAR', 'MRS  PREMLATA SUTHAR', '2001-07-01', '62, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2869', 0, 11, 6, '', '', '', '0000-00-00'),
(3657, 'DAKSH GUPTA', 'MR  DEVENDRA GUPTA', 'MRS  MEENA GUPTA', '2001-12-22', '16, NEAR RADHE KRISHNA APARTMENT, NEW VIDHYA NAGAR, SECT  NO  4, UDAIPUR', 'MDS-SS-2577', 0, 11, 2, '', '', '', '0000-00-00'),
(3658, 'KANISHKA SAHU', 'MR  PUSHKAR RAJ SAHU', 'MRS GEETANJALI SAHU', '2002-04-18', '63, NEW COLONY, SAVINA, UDAIPUR', 'MDS-SS-2617', 0, 11, 6, '', '', '', '0000-00-00'),
(3659, 'CHAHAT BHANDARI', 'MR  AJAY BHANDARI', 'MRS  RUCHIKA BHANDARI', '2001-10-30', '92/6, ASHOK NAGAR, UDAIPUR', 'MDS-SS-2665', 0, 11, 2, '', '', '', '0000-00-00'),
(3660, 'LAKSHYA RAJ BAANSI', 'MR  MANISH RAJ BAANSI', 'MRS  SEEMA JAIN', '2001-06-17', '1-DA-46, SHIV MARG, NEAR SARAS PARLOR, HIRAN MAGRI, SECT  NO   5, UDAIPUR', 'MDS-SS-2891', 0, 11, 1, '', '', '', '0000-00-00'),
(3661, 'AAYUSH SARRAF', 'MR  KULDEEP SARRAF', 'MRS  MAMTA SARAF', '2000-08-09', '1-P-38, HOUSING BOARD COLONY, HIRAN MAGRI, SECTOR NO  4, OPPOSITE LIC QUARTERS, UDAIPUR', 'MDS-SS-2722', 0, 11, 1, '', '', '', '0000-00-00'),
(3662, 'MOULIK BHARADWAJ', 'MR  VISHAL KUMAR SHARMA', 'MRS  NEELU SHARMA', '2001-12-17', '103/A 2, AASHLESHA, VAISHALI APARTMENTS, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2854', 0, 11, 2, '', '', '', '0000-00-00'),
(3663, 'NAMAN DOSHI', 'MR  PRASHANT DOSHI', 'MRS  NAYANA DOSHI', '2001-05-08', '5-K-49, RAM SINGH JI KI BARI, SECT  NO  11, UDAIPUR', 'MDS-SS-2640', 0, 11, 2, '', '', '', '0000-00-00'),
(3664, 'HARSHAL JAIN', 'MR  B C  JAIN', 'MRS  RENU JAIN', '2000-09-23', '17, BHERAV DHAM COLONY, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-PS-1993', 0, 11, 2, '', '', '', '0000-00-00'),
(3665, 'TEESTA SOLANKI', 'MR  UDAI SINGH SOLANKI', 'MRS MADHU SOLANKI', '2002-05-25', 'HOUSE NO  01,MAHAVIR NAGAR SEC  NO  14 HIRAN MAGRI', 'MDS-SS-3028', 0, 11, 2, '', '', '', '0000-00-00'),
(3666, 'NANDINI MAHESHWARI', 'MR  NARESH MAHESHWARI', 'MRS  KUNTAL MAHESHWARI', '2001-07-11', '210, CHANAKYAPURI, HIRNA MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3043', 0, 11, 2, '', '', '', '0000-00-00'),
(3667, 'NAGENDRA SINGH JHALA', 'MR PUSHPENDRA SINGH JHALA', 'MRS BABY KUNWAR', '2001-03-15', '100, MEERA NAGAR, PRATAP NAGAR, OLD RTO OFFICE, DHEEKLI ROAD, UDAIPUR', 'MDS-SS-2937', 0, 11, 2, '', '', '', '0000-00-00'),
(3668, 'ADITYA SINGH RAJAWAT', 'MR  SHIV MANGAL SINGH', 'MRS  LALITA RAJAWAT', '2001-03-19', '15, SHANTI NAGAR, SEC  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2949', 0, 11, 1, '', '', '', '0000-00-00'),
(3669, 'SIDDHI NAUSALIYA', 'MR  BRAJBHUSHAN NAUSALIYA', 'MRS  PRERNA NAUSALIYA', '2000-10-10', '5-B, DURGA COLONY, BEDLA, UDAIPUR', 'MDS-SS-2646', 0, 11, 2, '', '', '', '0000-00-00'),
(3670, 'L DEEPANSHI', 'MR  LOKCHAND', 'MRS  GEETA LOKCHAND', '2001-06-14', '69, SHRI RAM COLONY, PRATAP NAGAR, UDAIPUR', 'MDS-SS-2641', 0, 11, 2, '', '', '', '0000-00-00'),
(3671, 'PIYUSH SAINI', 'MR  BHOPAL RAM SAINI', 'MRS  KOSHALYA SAINI', '2001-09-18', '89, NEW FLORA COMPLEX, ROAD NO 3A, PULLA, UDAIPUR', 'MDS-SS-2681', 0, 11, 2, '', '', '', '0000-00-00'),
(3672, 'KAVYA AGARWAL', 'MR  KAMAL AGARWAL', 'MRS  DEEPIKA AGARWAL', '2001-08-16', '101, RAJ KAMAL APPARTMENT, BEDLA-BADGAON LINK ROAD, BEDLA, UDAIPUR', 'MDS-SS-2700', 0, 11, 2, '', '', '', '0000-00-00'),
(3673, 'DIKSHA SHARMA', 'MR  RAVI KANT SHARMA', 'MRS  MINU SHARMA', '2001-02-25', '19, SARASWATI NAGAR, MALI COLONY, SIKH COLONY, TEKRI LINK ROAD, UDAIPUR', 'MDS-SS-2707', 0, 11, 2, '', '', '', '0000-00-00'),
(3674, 'SHRUTI SHRIMALI', 'DR  LALIT SHRIMALI', 'MRS  SHILPA SHRIMALI', '2001-05-17', 'OPP  BN COLLEGE, SHUBHASH NAGAR, UDAIPUR', 'MDS-SS-2709', 0, 11, 2, '', '', '', '0000-00-00'),
(3675, 'SAHIL LUNJ', 'MR  DILIP KUMAR LUNJ', 'MRS  VARSHA LUNJ', '2000-11-06', '1400, BANK COLONY, GAYATRI NAGAR, HIRAN MAGRI, SECT   5, UDAIPUR', 'MDS-SS-2695', 0, 11, 1, '', '', '', '0000-00-00'),
(3676, 'NEETI AGRAWAL', 'MR  DHARMENDRA AGRAWAL', 'MRS  TARUNA AGRAWAL', '2001-02-16', '504, SIDHIVINAYAK COMPLEX, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2757', 0, 11, 2, '', '', '', '0000-00-00'),
(3677, 'ROHIT MEENA', 'MR  BHAGAT RAM MEENA', 'MRS  SUNITA MEENA', '2001-08-31', '4/217, GOVT  QUARTER,', 'MDS-SS-2820', 0, 11, 2, '', '', '', '0000-00-00'),
(3678, 'KUSHAL RATHI', 'MR  RAMESH RATHI', 'MRS  NEELAM JOSHI', '2002-05-15', '230, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2799', 0, 11, 1, '', '', '', '0000-00-00'),
(3679, 'CHINMAY BHANDARI', 'MR  ANIL KUMAR BHANDARI', 'MRS  SNEHLATA', '2002-09-20', '24, SHANTI NAGAR, NEAR CHANDNI VATIKA, HIRAN MAGRI, SECT  3, UDAIPUR', 'MDS-SS-3316', 0, 11, 6, '', '', '', '0000-00-00'),
(3680, 'SHUBHANJALI SINGH', 'MR  MOHAN SINGH', 'MRS  RENU SINGH', '2001-07-06', '1/102, HOUSING BOARD COLONY, SAVINA, SECT  9, C-BLOCK, UDAIPUR', 'MDS-SS-3317', 0, 11, 2, '', '', '', '0000-00-00'),
(3681, 'JAHNAVI MEHTA', 'AVDHESH PRASAD MEHTA', 'MRS  MEETA MEHTA', '2002-06-27', 'KHERWARA', 'MDS-SS-2893', 0, 11, 2, '', '', '', '0000-00-00'),
(3682, 'ISHA CHHAJED', 'MR SUNIL CHHAJED', 'MRS ASHA CHHAJED', '2001-05-12', '47-A SAMTA NAGAR NEAR MDS GAS GODOWN ROAD, SEC  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2921', 0, 11, 6, '', '', '', '0000-00-00'),
(3683, 'VIVEK DANGI', 'MR  DALICHAND DANGI', 'MRS  CHANDA DANGI', '2001-04-28', 'VILLAGE POST KALADWAS, THE  GIRVA, DISTT  UDAIPU', 'MDS-SS-2923', 0, 11, 6, '', '', '', '0000-00-00'),
(3684, 'LEENA PARMAR', 'MR  PURAN SINGH PARMAR', 'MRS  KANCHAN KUNWAR', '2001-10-05', '348, GAS GODOWN ROAD, RISHABH NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2915', 0, 11, 1, '', '', '', '0000-00-00'),
(3685, 'HARSH POKHARANA', 'MR  MAHENDRA POKHARANA', 'MRS  MEENA POKHARANA', '2001-03-07', '30, NAVJEEVAN SOCIETY, MAHAVEER NAGAR, HIRAN MAGRI, SECT  NO  4, MAHAVEER NAGAR, UDAIPUR', 'MDS-SS-2898', 0, 11, 2, '', '', '', '0000-00-00'),
(3686, 'JAYESH JAGETIA', 'MR  VIJAY KUMAR JAGETIA', 'MRS  GAYATRI DEVI JAGETIA', '2001-08-31', '408, OPP  GARDEN GAJBAN, SEC - 3, UDAIPUR', 'MDS-SS-2899', 0, 11, 1, '', '', '', '0000-00-00'),
(3687, 'NIKHIL SACHDEV', 'MR  HARISH SACHDEV', 'MRS  RITU SACHDEV', '2002-11-20', '107-B- INDRAPRASTH COMPLEX, HIRAN MAGRI, SECTOR NO  14, UDAIPUR', 'MDS-SS-2900', 0, 11, 1, '', '', '', '0000-00-00'),
(3688, 'AKANSHA MEHTA', 'MR  LAXMI CHAND MEHTA', 'MRS  KIRAN MEHTA', '2000-10-23', 'H NO  14, GAS GODOWN ROAD, SEC  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2903', 0, 11, 6, '', '', '', '0000-00-00'),
(3689, 'BHAVIKA JAIN', 'MR  RAMESH CHANDRA BOHRA', 'MRS  URMILA JAIN', '2001-01-22', 'D-32, VARDHMAN NAGAR, NORTH SUNDERWAS, UDAIPUR', 'MDS-SS-2904', 0, 11, 6, '', '', '', '0000-00-00'),
(3690, 'GARVIT SINGH SISODIYA', 'MR  MAHENDRA SINGH SISODIYA', 'MRS  PUSHPENDRA SISODIYA', '2001-01-25', '4/348,49, RHB COLONY, SECT  NO  14, UDAIPUR', 'MDS-SS-2906', 0, 11, 1, '', '', '', '0000-00-00'),
(3691, 'CHESHTA MENARIA', 'MR  NAND KISHOR MENARIA', 'MRS  VIDHYA MENARIA', '2002-08-28', 'H NO  126, PANERIYON KI MADRI, OPP  POLICE STATION, SECT  NO  6, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2910', 0, 11, 6, '', '', '', '0000-00-00'),
(3692, 'NISHANT JOSHI', 'MR  KAILASH KUMAR JOSHI', 'MRS  MINAXI JOSHI', '2001-11-15', 'VPO PUNALI, DISTT  DUNGARPUR', 'MDS-SS-2832', 0, 11, 2, '', '', '', '0000-00-00'),
(3693, 'SHWETA SINGHVI', 'MR  PRAVEEN SINGHVI', 'MRS  ANITA SINGHVI', '2002-01-26', '5, SAMTA NAGAR, SEC - 3, UDAIPUR', 'MDS-SS-2853', 0, 11, 6, '', '', '', '0000-00-00'),
(3694, 'PRANAY JAIN', 'MR  CHANDRA PRAKASH JAIN', 'MRS  SEEMA JAIN', '2001-12-10', '2-A, NEW SADRI COLONY, KALAJI GORAJI, UDAIPUR', 'MDS-SS-2851', 0, 11, 6, '', '', '', '0000-00-00'),
(3695, 'HARDIK AMETA', 'MR  MAHESH CHANDRA AMETA', 'MRS  ANJANA AMETA', '2001-02-06', '124, SHREE JI VIHAR, NEW VIDHYA NAGAR, SECT  NO  4, UDAIPUR', 'MDS-SS-2871', 0, 11, 6, '', '', '', '0000-00-00'),
(3696, 'CHIRAG SEN', 'MR  RAJENDRA KUMAR SEN', 'MRS  SEEMA VERMA', '2001-11-04', '101, SUBHASH NAGAR, ROAD NO  4, OPP  B N  COLLEGE, UDAIPUR', 'MDS-SS-2881', 0, 11, 6, '', '', '', '0000-00-00'),
(3697, 'DEEPANSHU DANGI', 'MR  UDAI LAL DANGI', 'MRS  LALU BAI DANGI', '2001-05-29', '10, ASHOK VIHAR, SECT  NO  3, UDAIPUR', 'MDS-SS-2875', 0, 11, 6, '', '', '', '0000-00-00'),
(3698, 'RAJAT AGRAWAL', 'MR LOKESH GUPTA', 'MRS MANJU AGRAWAL', '2002-03-04', 'HOUSE NO  21, HIRAN MAGRI, SECT  NO  13, UDAIPUR', 'MDS-SS-2878', 0, 11, 6, '', '', '', '0000-00-00'),
(3699, 'MUDIT MENARIA', 'MR  MAHESH MENARIA', 'MRS  BHANU MENARIA', '2000-12-16', '28, NAIO KI TALAI, UDAIPUR', 'MDS-SS-2856', 0, 11, 1, '', '', '', '0000-00-00'),
(3700, 'ADITI CHOUDHARY', 'MR  RAKESH KUMAR CHOUDHARY', 'MRS  PRIYANKA CHOUDHARY', '2002-01-01', 'Flat No  B- 207, Dwarika Apartment, Opp  Sect  No  5, Jhamar Kotra Road, Udaipur', 'MDS-SS-2858', 0, 11, 2, '', '', '', '0000-00-00'),
(3701, 'MANISH CHOUDHARY', 'MR  GAUTAM LAL CHOUDHARY', 'MRS  SHARDA DEVI', '2001-01-04', '1/114, AJAD VIHAR, NEAR UMEDVILA HOTEL, TITARDI, UDAIPUR', 'MDS-SS-2859', 0, 11, 6, '', '', '', '0000-00-00'),
(3702, 'PIYUSH MENARIA', 'MR  PRAHLAD MENARIA', 'MRS  RAMI DEVI MENARIA', '2001-06-10', '27/310-A, NEAR GOVT  SENIOR SECONDARY SCHOOL, PANERION KI MADRI, UDAIPUR', 'MDS-SS-2860', 0, 11, 1, '', '', '', '0000-00-00'),
(3703, 'BHINI DAVE', 'MR  SANJAY DAVE', 'MRS  RASHMI DAVE', '2001-04-14', '47, CHOTI BRAHMPURI, GARBA KA CHOWK, UDAIPUR', 'MDS-SS-2863', 0, 11, 2, '', '', '', '0000-00-00'),
(3704, 'SIDDHARTH SINGH JADON', 'MR  AJAYDEEP SINGH JADOUN', 'MRS  AARTI KUNWAR', '2001-04-24', '111,A, RISHI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2865', 0, 11, 1, '', '', '', '0000-00-00'),
(3705, 'MAYANK BALOT', 'MR  PRITHVI RAJ', 'MRS  MAMTA SINGH', '2003-02-28', '38, CHOTTI MAHESHWARIYO KI SEHRI, DHAN MANDI , UDAIPUR', 'MDS-SS-2846', 0, 11, 2, '', '', '', '0000-00-00'),
(3706, 'KAUSHAL TALANI', 'MR  VED PRAKASH TALANI', 'MRS  KIRAN TALANI', '2001-12-13', '245, AKASHWANI COLONY, MADRI, UDAIPUR', 'MDS-SS-2934', 0, 11, 1, '', '', '', '0000-00-00'),
(3707, 'PANKAJ DANGI', 'MR  LAXMI LAL DANGI', 'MRS  HEERA DEVI', '1999-12-04', 'KANPUR KHEDA, NEAR MINES, UDAIPUR', 'MDS-SS-2935', 0, 11, 6, '', '', '', '0000-00-00'),
(3708, 'HARSHIT MEHTA', 'MR  KRISHAN KUMAR MEHTA', 'MRS  USHA MEHTA', '2001-02-06', '220/25, PANERION KI MADRI, OPP  NICE COMPUTER, UDAIPUR', 'MDS-SS-2877', 0, 11, 2, '', '', '', '0000-00-00'),
(3709, 'PULKIT MEHTA', 'MR  SHEETAL MEHTA', 'MRS  NEETU MEHTA', '2001-04-07', '24, AASTHA, NIRMAL VIHAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2867', 0, 11, 1, '', '', '', '0000-00-00'),
(3710, 'KHWAISH KHATOD', 'MR  ANIL KUMAR KHATOD', 'MRS  MADHU KHATOD', '2001-10-24', '340, VASANT VIHAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDS-SS-2885', 0, 11, 6, '', '', '', '0000-00-00'),
(3711, 'KAVISH CHORDIA', 'MR  DINESH CHORDIA', 'MRS  NAYANA CHORDIA', '2002-02-11', '52, VRINDAWAN VIHAR, SEC - 3, UDAIPUR', 'MDS-SS-2699', 0, 11, 2, '', '', '', '0000-00-00'),
(3712, 'YUVRAJ SINGH RAO', 'MR  CHANCHAL SINGH RAO', 'MRS  RADHA KUNWAR RAO', '2001-03-15', '45, SHARDA NAGAR, BOHARA GANESH JI, UDAIPUR', 'MDS-SS-2951', 0, 11, 6, '', '', '', '0000-00-00'),
(3713, 'HARSH JAIN', 'DR  LALIT PRAKASH JAIN', 'MRS  LATA KOTHARI JAIN', '2002-02-26', '6, BALAJI NAGAR, JALVIHAR, MANWA KHERA, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3024', 0, 11, 2, '', '', '', '0000-00-00'),
(3714, 'DHVANI JAIN', 'MR  KAMLESH JAIN', 'MRS  SONAL JAIN', '2003-10-29', 'T-3, SANTOSH NAGAR, GARIYAWAS, GALI NO  9, UDAIPUR', 'MDS-SS-2984', 0, 11, 6, '', '', '', '0000-00-00'),
(3715, 'CHIRAG CHHATWANI', 'MR  SURENDRA CHHATWANI', 'MRS  EKTA CHHATWANI', '2001-06-16', '73, JAWAHAR NAGAR, UDAIPUR', 'MDS-SS-2696', 0, 11, 6, '', '', '', '0000-00-00'),
(3716, 'DIVYANI SHAKTAWAT', 'MR.  DASHRATH SINGH', 'MRS  KRISHNA KUNWAR', '2002-08-08', 'VILLAGE BHEEMPUR, TEHSIL SEMARI, DISTT  UDAIPUR', 'MDS-SS-2720', 0, 11, 1, '', '', '', '0000-00-00'),
(3717, 'ANAS AIJAZ', 'MR  AIJAZ AHMAD', 'MRS  FARZANA SHAHIN', '2001-11-16', '13, ALIPURA, STREET NO 5, NEAR ST  PAUL SCHOOL, UDAIPUR', 'MDS-SS-2889', 0, 11, 2, '', '', '', '0000-00-00'),
(3718, 'DHEERAJ VYAS', 'MR  SANTOSH VYAS', 'MRS  SUNITA VYAS', '2002-12-26', '129, ARIHANT VIHAR, NEAR AKASHWANI KENDRA, MADRI PUROHITAN, UDAIPUR', 'MDS-SS-2884', 0, 11, 6, '', '', '', '0000-00-00'),
(3719, 'NAMONARAYAN PRAJAPAT', 'MR  SHANKAR LAL PRAJAPAT', 'MRS  SUNDER DEVI PRAJAPAT', '2000-06-27', '839, ROAD NO 1, TELIO KA MOHALLA, MADRI, UDAIPUR', 'MDS-SS-2907', 0, 11, 1, '', '', '', '0000-00-00'),
(3720, 'GAGAN PANWAR', 'MR  NAND LAL PANWAR', 'MRS  MANJU PANWAR', '2000-12-03', '423, JYOTI COLONY, STREET NO   3, NEAR GLASS FACTORY, UDAIPUR', 'MDS-SS-2943', 0, 11, 1, '', '', '', '0000-00-00'),
(3721, 'TANU SHREE SUTHAR', 'MR  SHANTI LAL SUTHAR', 'MRS  RADHA SUTHAR', '2001-11-15', 'F/5, GALI NO  3, SANTOSH NAGAR, GARIYAS, UDAIPUR', 'MDS-SS-2946', 0, 11, 6, '', '', '', '0000-00-00'),
(3722, 'DIVYANSH JAIN', 'MR  MAHESH KUMAR JAIN', 'MRS  ANITA JAIN', '2001-10-02', '23, MAHAVEER NAGAR, HIRAN MAGRI, SECT  NO  14, UDAIPUR', 'MDS-SS-2929', 0, 11, 2, '', '', '', '0000-00-00'),
(3723, 'ALOK BHANAWAT', 'MR  ANIL BHANAWAT', 'MRS  PRAMILA BHANAWAT', '2001-04-19', '186, "GULZAR BHAWAN"  HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2933', 0, 11, 1, '', '', '', '0000-00-00'),
(3724, 'SANDEEP PATEL', 'MR  NAVAL RAM PATEL', 'MRS  DALI BAI PATEL', '2001-06-23', '324, CHANAKYAPURI SECT  NO  4, NEAR GURU NANAK PUBLIC SCHOOL, UDAIPUR', 'MDS-SS-2917', 0, 11, 6, '', '', '', '0000-00-00'),
(3725, 'VINITA SOLANKI', 'MR  VIRENDRA SINGH', 'MRS  RAJKUMARI', '2001-07-17', '1333, ADARSH NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2895', 0, 11, 1, '', '', '', '0000-00-00'),
(3726, 'SUCHI SHARMA', 'MR  PREM SHANKAR SHARMA', 'MRS  CHANCHAL SHARMA', '2001-04-01', '40-41, KUMBHA NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2919', 0, 11, 1, '', '', '', '0000-00-00'),
(3727, 'SAKSHAM JAIN', 'MR  RAJKUMAR JAIN', 'MRS  BHAGYAWATI JAIN', '2000-11-06', 'MAHAVEER NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2942', 0, 11, 6, '', '', '', '0000-00-00'),
(3728, 'DEEPESH JAIN', 'MR  HITESH JAIN', 'MRS  VIDHYA JAIN', '2001-04-21', '229, VIVEK NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2909', 0, 11, 1, '', '', '', '0000-00-00'),
(3729, 'MEEMANSA CHOUDHARY', 'MR  YOGESHWER S  CHOUDHARY', 'MRS  RANJEETA CHOUDHARY', '1999-11-01', '24, KRISHNA VIHAR, NEAR NEW VIDYA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2905', 0, 11, 1, '', '', '', '0000-00-00'),
(3730, 'HEENA JAIN', 'MR  GUNWANT C  JAIN', 'MRS  ANJU JAIN', '2001-03-07', '190-175, GARBHA STREET, NORTH AAYAD, UDAIPUR', 'MDS-SS-2706', 0, 11, 1, '', '', '', '0000-00-00'),
(3731, 'TANYA JAIN', 'MR  LALIT JAIN', 'MRS  BHAWIKA JAIN', '2001-11-15', '101, PARKVIEW APPARTMENT, SUKHADIYA CIRCLE, UDAIPUR', 'MDS-SS-2862', 0, 11, 6, '', '', '', '0000-00-00'),
(3732, 'ISHANK PALIWAL', 'MR  LAXMI NARAYAN PALIWAL', 'MRS  DARPANA PALIWAL', '2001-09-20', '742, SURYA NAGAR, RANAWAT POLTRY FARM, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2872', 0, 11, 6, '', '', '', '0000-00-00'),
(3733, 'YUVRAJ SINGH SHEKHAWAT', 'MR  RAGHVENDER SINGH', 'MRS  MADHU KANWAR', '2001-02-17', '39, ARIHANT VIHAR, UDAI SAGAR ROAD, MADRI, UDAIPUR', 'MDS-SS-2887', 0, 11, 6, '', '', '', '0000-00-00'),
(3734, 'KHUSHI SHEKHAWAT', 'MR  B S SHEKHAWAT', 'MRS  VEENU KANWAR', '2001-04-30', '39, ARIHANT VIHAR, UDAI SAGAR ROAD, MADRI IND  UDAIPUR', 'MDS-SS-2888', 0, 11, 6, '', '', '', '0000-00-00'),
(3735, 'JASH HINGER', 'MR  SUNIL KUMAR HINGER', 'MRS  MANJU HINGER', '2001-09-27', '15, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2926', 0, 11, 6, '', '', '', '0000-00-00'),
(3736, 'JATIN AHARI', 'MR  ANIL KUMAR AHARI', 'MRS  SUSHILA AHARI', '2000-10-07', '9, SAMTA NAGAR, ROSHAN JI KI BARI, SECT  NO  14, UDAIPUR', 'MDS-SS-2914', 0, 11, 6, '', '', '', '0000-00-00'),
(3737, 'TANMAY SHARMA', 'MR  RAM CHANDRA SHARMA', 'MRS  GEETA SHREE SHARMA', '2001-10-28', '53, NEAR HARSH PILES HOSPITAL, SHASTRI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDSPS-1797', 0, 11, 1, '', '', '', '0000-00-00'),
(3738, 'BHAVESH SHARMA', 'MR. GHANSHYAM SHARMA', 'MRS  SEEMA SHARMA', '2002-09-15', '40, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2694', 0, 11, 6, '', '', '', '0000-00-00'),
(3739, 'SANJANA MEENA', 'MR  HARKESH MEENA', 'MRS  PUSHPA MEENA', '2003-09-20', 'QUATER NO  55/C, RAILWAY COLONY, OPP  RANAPRATAP NAGAR RAILWAY STATION, UDAIPUR', 'MDS-SS-2810', 0, 11, 6, '', '', '', '0000-00-00'),
(3740, 'TANVI MEGHWAL', 'MR  MANGILAL MEGHWAL', 'MRS  NIRMALA MEGHWAL', '2001-12-12', '1-K-9, SHIV MARG, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2918', 0, 11, 6, '', '', '', '0000-00-00'),
(3741, 'AJAY BAJPAI', 'MR  A K  BAJPAI', 'MRS  RADHA BAJPAI', '2001-02-27', '321, UIT COLONY, AKASHWANI KE SAMNE, UDAIPUR', 'MDS-SS-2931', 0, 11, 1, '', '', '', '0000-00-00'),
(3742, 'DISHA MOD', 'MR  RAJENDRA MOD', 'MRS  GAYATRI MOD', '2002-02-15', '35, RISHI NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2932', 0, 11, 6, '', '', '', '0000-00-00'),
(3743, 'CHANDNI SARPOTA', 'MR  ISHWAR LAL SARPOTA', 'MRS  PUSHPA SARPOTA', '2000-12-08', 'SARPATA WARD NO  09, GAWARI, GAWADI, DUNGARPUR', 'MDS-SS-2977', 0, 11, 1, '', '', '', '0000-00-00'),
(3744, 'ADITYA RATHORE', 'MR  KISHAN LAL MEGHWAL', 'MRS  REKHA MEGHWAL', '2001-02-19', 'QTR  NO  3, SATELITE CAMPUS, HIRAN MAGRI, SECT  NO  6, UDAIPUR', 'MDS-SS-2940', 0, 11, 2, '', '', '', '0000-00-00'),
(3745, 'KUNIKA VAISHNAV', 'MR  POORAN DAS VAISHNAV', 'MRS  JAMNA VAISHNAV', '2001-08-15', '39, SHANTI NAGAR, HIRAN MAGRI, SEC  NO  3, UDAIPUR', 'MDS-SS-2876', 0, 11, 1, '', '', '', '0000-00-00'),
(3746, 'GARVIT SARAIYA', 'MR  RAKESH JAIN', 'MRS  DEEPIKA JAIN', '2001-06-10', '64, LAXMI NAGAR, HIRAN MAGRI, SECT  NO  8, UDAIPUR', 'MDS-SS-2870', 0, 11, 1, '', '', '', '0000-00-00'),
(3747, 'SEJAL CHITRIYA', 'MR  MAHAVEER CHITRIYA', 'MRS  NISHA JAIN', '2001-11-17', '545, TAGORE NAGAR, NEAR BSNL OFFICE, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2868', 0, 11, 1, '', '', '', '0000-00-00'),
(3748, 'PALKA LODHA', 'MR  ANIL LODHA', 'MRS  KEERTI LODHA', '2000-10-25', '228, VIVEK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2913', 0, 11, 1, '', '', '', '0000-00-00'),
(3749, 'YASH KUMAWAT', 'MR  MANOJ KUMAWAT', 'MRS  YACHNA KUMAWAT', '2000-12-26', '171-E,ADARSH NAGAR, KALKAMATA ROAD, UDAIPUR', 'MDS-SS-2925', 0, 11, 2, '', '', '', '0000-00-00'),
(3750, 'KINSHUK BHATI', 'MR  RAJENDRA SINGH BHATI', 'MRS  NISHA BHATI', '2000-05-24', 'A-1, BLOCK-C, ASHIRVWAD NAGAR, UNIVERSITY ROAD, UDAIPUR', 'MDS-SS-3035', 0, 11, 1, '', '', '', '0000-00-00'),
(3751, 'MOHIT BHARDWAJ', 'MR  LOKESH BHARDWAJ', 'MRS  RENUKA BHARDWAJ', '2002-12-16', '245-N H  8, WARD NO  54, NEAR HANUMAN TEMPLE, PULLA, UDAIPUR', 'MDS-SS-2950', 0, 11, 1, '', '', '', '0000-00-00'),
(3752, 'AARTI JAIN', 'MR  RAJESH JAIN', 'MRS  INDRA DEVI JAIN', '2000-06-06', '23-C, ADINATH BHAWAN, RIICO COLONY, UDAIPUR', 'MDS-SS-2944', 0, 11, 6, '', '', '', '0000-00-00'),
(3753, 'PIYUSH MALI', 'MR LODE SURESH MALI', 'MRS  VIJAYLAXMI', '2001-05-05', '142, PUROHITO KI MADRI, KHEDA MANDIR KE PASS, UDAIPUR', 'MDS-SS-2947', 0, 11, 1, '', '', '', '0000-00-00'),
(3754, 'VAISHALI MAJMUDAR', 'MR  HIMANSHU MAJMUDAR', 'MRS  PUSHPA MAJMUDAR', '2001-01-08', '1-DA-12, HOUSING BOARD SOCIETY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2916', 0, 11, 1, '', '', '', '0000-00-00'),
(3755, 'GOPAL LADDHA', 'MR  HARI PRASAD LADDHA', 'MRS  ASHA LADDHA', '2001-05-21', 'G-20, UDAI PARK, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2908', 0, 11, 1, '', '', '', '0000-00-00'),
(3756, 'BHANUPRATAP SINGH RATHORE', 'MR  PRADEEP SINGH RATHORE', 'MRS  SUMITA RATHORE', '1999-03-09', '33/1291, NEAR AIM COMPUTERS, OPP  PETROL PUMP, UDAIPUR', 'MDS-SS-2927', 0, 11, 1, '', '', '', '0000-00-00'),
(3757, 'RISHABH JAIN', 'MR  GEHRILAL JAIN', 'MRS  VANITA JAIN', '2002-05-02', 'DUNGARPUR, PRATAP NAGAR 100 FT  ROAD', 'MDS-SS-3300', 0, 11, 2, '', '', '', '0000-00-00'),
(3758, 'PRAVEEN SINGH CHARAN', 'MR  BHANWAR SINGH CHARAN', 'MRS  KANCHAN', '2001-04-07', '268, AAKASHWANI, SURYA NAGAR,MADRI, UDAIPUR', 'MDS-SS-2939', 0, 11, 1, '', '', '', '0000-00-00'),
(3759, 'KRITI DASHORA', 'MR  SUBHASH DASHORA', 'MRS  VANDANA DASHORA', '2002-02-06', '3A-158, GUPTESHWAR NAGAR, HIRAN MAGRI, SECT  NO  7, UDAIPUR', 'MDS-SS-2857', 0, 11, 1, '', '', '', '0000-00-00'),
(3760, 'ATANU DADHEECH', 'MR  DHARMENDRA DEV', 'MRS  PAWAN DADHEECH', '2002-06-17', '170, INFRONT OF HADIRANI B ED  COLLEGE, SHOBHAGPURA, UDAIPUR', 'MDS-SS-2743', 0, 11, 2, '', '', '', '0000-00-00'),
(3761, 'SHEETAL RATHORE', 'MR  BHARAT SINGH RATHORE', 'MRS  VISHNU KUNWAR DULAWAT', '2002-02-13', '845, SHRI RAM COLONY, PRATAP NAGAR, UDAIPUR', 'MDS-SS-1787', 0, 11, 6, '', '', '', '0000-00-00'),
(3762, 'TUSHAR DHARAMSALANI', 'MR  NARESH DHARAMSALANI', 'MRS  VINITA DHARAMSALANI', '2000-12-12', '1-G 20, HBC, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2902', 0, 11, 1, '', '', '', '0000-00-00'),
(3763, 'NEER SINGH RATHORE', 'MR  PASHUPATI SINGH RATHORE', 'MRS  VANDANA RATHORE', '2000-11-25', '1-B-14,GAYATRI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDS-SS-2922', 0, 11, 1, '', '', '', '0000-00-00'),
(3764, 'CHINMAY DEORA', 'MR  HEMANT PRAKASH DEORA', 'MRS  SAROJ JAIN', '2001-11-26', '586, TAGORE NAGAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-2941', 0, 11, 1, '', '', '', '0000-00-00'),
(3765, 'GAJENDRA SINGH RAO', 'MR  SURENDRA SINGH RAO', 'MRS  VIMLA RAO', '2002-12-07', 'L-314, BAPPA NAGAR, SECT  NO  6, UDAIPUR', 'MDS-SS-3394', 0, 11, 6, '', '', '', '0000-00-00'),
(3766, 'TARUNA CHUNDAWAT', 'LATE MR  KUNDAN SINGH CHUNDAWAT', 'MRS  KANAK KUNWAR', '2000-01-29', '18, TAGOR NAGAR, UDAIPUR', 'MDS-SS-2901', 0, 11, 6, '', '', '', '0000-00-00'),
(3767, 'AKSHAYRAJ SINGH JODHA', 'MR  VIKRAM SINGH JODHA', 'MRS  POONAM JODHA', '2000-05-04', 'PLOT NO  11, VRINDAVANDHAM GALI NO  3, NEW BHOPALPURA, UDAIPUR', 'MDS-SS-2850', 0, 11, 2, '', '', '', '0000-00-00'),
(3768, 'PARIKSHIT RANAWAT', 'MR VIJAYPAL SINGH RANAWAT', 'MRS OM KUNWAR', '2002-03-10', '48, BALAJI NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-2936', 0, 11, 6, '', '', '', '0000-00-00'),
(3769, 'VISHVAJEET SINGH RAO', 'MR  VIKRAM SINGH RAO', 'MRS  SARITA KUNWAR RAO', '2001-05-22', '68, RISHI NAGAR, NEAR INDIAN GAS GODOWN, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-2952', 0, 11, 1, '', '', '', '0000-00-00'),
(3770, 'MADHAV BHATIA', 'MR  RAJESH BHATIA', 'MRS  PREETI BHATIA', '2001-09-16', '118, VIDHYA NAGAR, HIRAN MAGRI, SECT  NO  4, OPP  RANAWAT PAULTRY FORM, UDAIPUR', 'MDS-SS-2948', 0, 11, 1, '', '', '', '0000-00-00'),
(3771, 'VAISHALI SHARMA', 'MR  VINOD SHARMA', 'MRS  ANJANA SHARMA', '2001-03-30', '12/785, MIA, PUROHITO KI MADRI, KHEDA MATA MANDIR KE PASS, UDAIPUR', 'MDS-SS-2953', 0, 11, 6, '', '', '', '0000-00-00'),
(3772, 'GARGI JAIN', 'MR  ARVIND JAIN', 'MRS  PUSHPA JAIN', '2001-08-05', '19, NAIYON KI TALAI, KALAJI GORAJI, UDAIPUR', 'MDS-SS-2725', 0, 11, 2, '', '', '', '0000-00-00'),
(3773, 'YASHWANT DANGI', 'MR  TULSI RAM JI DANGI', 'MRS  SUSHILA DANGI', '2002-10-05', 'PULA SHOBHAGPURA ROAD,  KATECHA KUA, MANDIR KE PASS, UDAIPUR', 'MDS-SS-2930', 0, 11, 1, '', '', '', '0000-00-00'),
(3774, 'JAYESH MALI', 'MR. NARAYAN LAL MALI', 'MRS. PREMLATA MALI', '2000-08-14', 'SAVINA KHERA, SEC. NO. 14, SHREE NATH COLONY, NEAR DEEP JYOTI SCHOOL, UDAIPUR', 'MDS-SS-00343', 0, 11, 1, '', '', '', '0000-00-00'),
(3775, 'AVISH MEHTA', 'MR. RAKESH KUMAR MEHTA', 'MRS. BHAVANA MEHTA', '2001-12-26', 'HOUSE NO. 47-A, SECTOR NO. 14, HIRAN MAGRI, UDAIPU8R', 'MDS-SS-3624', 0, 11, 2, '', '', '', '0000-00-00'),
(3776, 'ARPITA MEENA', 'MR  BHAGAT RAM MEENA', 'MRS  SUNITA MEENA', '2002-08-29', '4/217, GOVT  QUARTER, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3185', 0, 10, 2, '', '', '', '0000-00-00'),
(3777, 'PAVITRA SHARMA', 'MR  OM PRAKASH SHARMA', 'MRS  LAAD SHARMA', '2002-05-22', 'FLAT NO  604, SILVER PALACE APARTMENT, OPP  ANUSHRI VATIKA, ASHIRWAD NAGAR, ROOP SAGAR ROAD, UDAIPUR', 'MDS-SS-3191', 0, 10, 2, '', '', '', '0000-00-00'),
(3778, 'ARZOO BAPNA', 'MR  RAJ KUMAR BAPNA', 'DR  ANJU BAPNA', '2001-11-12', '10, MAHAVIR COLONY, SECT  4, UDAIPUR', 'MDS-SS-3196', 0, 10, 2, '', '', '', '0000-00-00'),
(3779, 'AYUSH SAHU', 'MR  MUKESH KUMAR SAHU', 'MRS  REKHA JHARWAR', '2002-09-25', '28, SHIV COLONY, NEW SWAMI NAGAR, TEKRI MADRI LINK ROAD, UDAIPUR', 'MDS-SS-3215', 0, 10, 2, '', '', '', '0000-00-00'),
(3780, 'MOHAMMED AMAAN', 'MR  FIROZ MOHAMMED', 'MRS  BIRJEES FATIMA', '2003-05-12', '218, MANSURI PARK, MULLA TALAI, UDAIPUR', 'MDS-SS-3234', 0, 10, 2, '', '', '', '0000-00-00'),
(3781, 'MRIDUL SISODIYA', 'MR  VIMAL PRAKASH SISODIYA', 'MRS  MEERA TAILOR', '2002-01-03', 'PLOT NO  106, SIDDHI VINAYAK PARK, CA CIRCLE, H M  SECT  14, UDAIPUR', 'MDS-SS-3247', 0, 10, 2, '', '', '', '0000-00-00'),
(3782, 'DEVRAJ CHOUDHARY', 'MR  CHHAGAN LAL JAT', 'MRS  SANTOSH JAT', '2002-04-20', 'B-2, VALLABH EMPIRE, NEW NAVRATAN COMPLEX, BHUWANA, UDAIPUR', 'MDS-SS-3248', 0, 10, 2, '', '', '', '0000-00-00'),
(3783, 'ANSHIKA BAPNA', 'MR  AJAY BAPNA', 'MRS  PRIYANKA BAPNA', '2002-04-12', 'C/O  SHRI SUSHIL BAPNA, BAPNA GAS, UDAIPUR', 'MDS-SS-3254', 0, 10, 6, '', '', '', '0000-00-00'),
(3784, 'CHIRAG MEHTA', 'MR  HEMENDRA MEHTA', 'MRS  INDIRA MEHTA', '2002-04-13', '51, SAMTA NAGAR, HIRAN MAGRI, SECT  3,  UDAIPUR', 'MDS-SS-3261', 0, 10, 2, '', '', '', '0000-00-00'),
(3785, 'AYUSH SURANA', 'MR  MAHENDRA SURANA', 'MRS  SWEETY SURANA', '2003-06-25', 'MANAK CHOWK, GOGUNDA, UDAIPUR', 'MDS-SS-3262', 0, 10, 6, '', '', '', '0000-00-00'),
(3786, 'DEVRAJ SINGH CHOUHAN', 'DR  D S  CHOUHAN', 'MRS  YASHWANT CHOUHAN', '2002-07-01', '68-J P  NAGAR, SECT  NO  8, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3267', 0, 10, 2, '', '', '', '0000-00-00'),
(3787, 'PRACHI SHARMA', 'MR  KULDEEP SHARMA', 'MRS  PINKI SHARMA', '2002-08-11', '16/1125, MEERA COLONY, NORTH AYAD, UDAIPUR', 'MDS-SS-3268', 0, 10, 6, '', '', '', '0000-00-00'),
(3788, 'RAJAT TALDAR', 'MR  MANISH TALDAR', 'MRS  NEETU TALDAR', '2001-10-18', '53-54-B, SHAKTI NAGAR, UDAIPUR', 'MDS-SS-3271', 0, 10, 2, '', '', '', '0000-00-00'),
(3789, 'VIDUSHI JOSHI', 'MR  AVADHESH K  JOSHI', 'MRS  RACHANA JOSHI', '2002-09-01', 'TC 2/3, VEDANTA VIHAR, DARIBA, RAJSAMAND', 'MDS-SS-3274', 0, 10, 2, '', '', '', '0000-00-00'),
(3790, 'PRANVIR SINGH SHAKTAWAT', 'MR  PRAHLAD SINGH SHAKTAWAT', 'MRS  NAND KUNWAR', '2002-12-27', '606, RIVER VIEW APPARTMENT, SUBHASH NAGAR, UDAIPUR', 'MDS-SS-3277', 0, 10, 6, '', '', '', '0000-00-00'),
(3791, 'DHRUV SEN', 'MR  RAKESH SEN', 'MRS  ANU SEN', '2002-03-08', '78-79, FLORA COMPLEX, ROAD NO  1, PULA, UDAIPUR', 'MDS-SS-3280', 0, 10, 2, '', '', '', '0000-00-00'),
(3792, 'GARV JAIN', 'MR  MANI LAL JAIN', 'MRS  SUMITRA JAIN', '2003-07-27', '1-MA-54, HOUSING BOARD COLONY, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3286', 0, 10, 6, '', '', '', '0000-00-00'),
(3793, 'VIDHA KATHAIT', 'MR  BHUPENDRA SINGH KATHAIT', 'MRS  JAYANTI KATHAIT', '2002-06-10', 'HOUSE NO  1278, ADARSH NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3093', 0, 10, 6, '', '', '', '0000-00-00'),
(3794, 'ANKIT PARIKH', 'MR. JAYESH PARIKH', 'MRS  PARUL PARIKH', '2002-06-08', 'H NO  1-A-13, BHERAV NAGAR COLONY SECT  NO  7, UDAIPUR', 'MDS-SS-3109', 0, 10, 1, '', '', '', '0000-00-00'),
(3795, 'ANANYA BACHHIWAL', 'MR  LOKESH KUMAR BACHHIWAL', 'MRS  JYOTI BACHHIWAL', '2002-11-19', '11, KESHAV NAGAR, UNIVERSITY ROAD, UDAIPUR', 'MDS-SS-3144', 0, 10, 2, '', '', '', '0000-00-00'),
(3796, 'ROMIR MEHTA', 'MR  JAINENDRA MEHTA', 'MRS  VINITA MEHTA', '2002-08-15', 'LIC OFFICERS QUARTER NO  11, JAIN MANDIR ROAD, SECTOR 4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3293', 0, 10, 2, '', '', '', '0000-00-00'),
(3797, 'YASH SHAH', 'MR  YOGESH KUMAR SHAH', 'MRS  ANJALI SHAH', '2003-02-24', 'SWASTIK COLONY, 20, SHOPS BACKWARD, KHERWARA', 'MDS-SS-3294', 0, 10, 2, '', '', '', '0000-00-00'),
(3798, 'MAANSI SAHU', 'MR  RAJAN SAHU', 'MRS  SAROJ SAHU', '2002-03-26', '17, FRIENDS COLONY, NEW BHOPALPURA, KHARAKUA, UDAIPUR', 'MDS-SS-3295', 0, 10, 2, '', '', '', '0000-00-00'),
(3799, 'SAMYAK SURANA', 'MR  PANKAJ SURANA', 'MRS  PRATIBHA SURANA', '2002-08-31', '4-K-13, HIRAN MAGRI, SECT  NO  4, HOUSING BOARD COLONY, UDAIPUR', 'MDS-SS-3296', 0, 10, 6, '', '', '', '0000-00-00'),
(3800, 'KOUSTUBH MANE', 'DR  VIJAY MANE', 'MRS  SUJATA MANE', '2003-11-26', '81, KRISHNA VIHAR, BEHIND MDS, REBARIYONKA GUDA, DHIKALI ROAD, PRATAP NAGAR UDAIPUR', 'MDS-SS-3140', 0, 10, 2, '', '', '', '0000-00-00'),
(3801, 'AADRA SHUKLA', 'MR  RAHUL KUMAR SHUKLA', 'MRS  NIDHI SHUKLA', '2002-09-02', '502-B, SILVER SQUARE APPARTMENT, NEW VIDHYA NAGAR, SEC - 4, UDAIPUR', 'MDS-SS-3066', 0, 10, 2, '', '', '', '0000-00-00'),
(3802, 'AKHILA SAJIN', 'MR  V K  SAJIN', 'MRS  LETHIKA SAJIN', '2002-10-26', 'KARUNA, 57, AZAD NAGAR, NEAR SAJJAN GARH ROAD, UDAIPUR', 'MDS-SS-3067', 0, 10, 2, '', '', '', '0000-00-00'),
(3803, 'TEJAS INGALE', 'MR  BASAVARAJ INGALE', 'MRS  ANITA INGALE', '2002-03-09', 'III/4, FRU COMPLEX, SAJJAN NAGAR, UDAIPUR', 'MDS-SS-3075', 0, 10, 2, '', '', '', '0000-00-00'),
(3804, 'JYOTSNA PATNAIK', 'MR  SRINIVAS', 'MRS  BHARATI SADASIVUNI', '2002-02-11', '23, GAYATRI NAGAR, SEC  NO  5 UDR ', 'MDS-SS-3078', 0, 10, 2, '', '', '', '0000-00-00'),
(3805, 'DHANUSHA POKHARNA', 'MR  LAXMI LAL POKHARNA', 'MRS  LALITA POKHARNA', '2003-04-10', '19 A, KASHIPURI, MANWA KHEDA HIRAN MAGRI, SEC  NO  5, UDAIPUR', 'MDS-SS-3087', 0, 10, 1, '', '', '', '0000-00-00'),
(3806, 'SANIDHYA PORWAL', 'MR  DEVENDRA PORWAL', 'MRS  MAYA PORWAL', '2002-06-01', '52, TILAK NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3089', 0, 10, 2, '', '', '', '0000-00-00'),
(3807, 'AYUSH JAIN', 'MR  NANALAL JAIN', 'MRS  MANJU JAIN', '2002-04-14', '160, ROOP NAGAR, SECT  NO  3, UDAIPUR', 'MDS-SS-3092', 0, 10, 1, '', '', '', '0000-00-00'),
(3808, 'VINEET INTODIA', 'MR  HARISH INTODIA', 'MRS  UPASANA BABEL', '2003-03-11', '18, ANAND VIHAR-I, TULSI NAGAR, TEKRI MADRI ROAD, UDAIPUR', 'MDS-SS-3107', 0, 10, 6, '', '', '', '0000-00-00'),
(3809, 'ADHIRAJ CHOUDHARY', 'MR  PRADEEP CHOUDHARY', 'MRS  SONU CHOUDHARY', '2003-01-21', 'HOUSE NO 29, SEC  4 HIRAN MAGRI SAVITRAL VATIKA SHUBHAM COM ', 'MDS-SS-3178', 0, 10, 2, '', '', '', '0000-00-00'),
(3810, 'JAGRAT CHATURVEDI', 'MR  KULDEEP CHATURVEDI', 'DR  SHABNAM CHATURVEDI', '2002-08-04', '10, PREM NAGAR, ROOPSAGAR MARG, UNIVERSITY ROAD, UDAIPUR', 'MDS-SS-3071', 0, 10, 2, '', '', '', '0000-00-00'),
(3811, 'OM PARMAR', 'MR  PRAVEEN PARMAR', 'MRS  VANDANA PARMAR', '2002-06-10', '4, JYOTI NAGAR, BEHIND VAISHALI APARTMENT, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3085', 0, 10, 6, '', '', '', '0000-00-00'),
(3812, 'SEJAL VEERWANI', 'MR  SATISH KUMAR VEERWANI', 'MRS  REENA VEERWANI', '2003-05-26', '1 J 33, H B C, SEC - 4, UDAIPUR', 'MDS-SS-3128', 0, 10, 1, '', '', '', '0000-00-00'),
(3813, 'DEVMITRA JAWALIA', 'MR  DEVENDRA JAWALIA', 'DR  MAITREYES JAWALIA', '2002-01-12', '101, HAMIR GADH HOUSE, BHATTIYANI CHOHATTA, UDAIPUR', 'MDS-SS-3159', 0, 10, 2, '', '', '', '0000-00-00'),
(3814, 'CHETAN MAHESHWARI', 'MR  UMESH MAHESHWARI', 'MRS  SITA MAHESHWARI', '2001-10-04', '23, GANPATI VIHAR, SIDDHARTH COMPLEX, SECT  NO  5, HIRAN MAGRI , UDAIPUR', 'MDS-SS-3164', 0, 10, 2, '', '', '', '0000-00-00'),
(3815, 'VIDHI VISHVAKARMA', 'MR  DINESH CHANDRA VISHVAKARMA', 'MRS  PURNIMA SHARMA', '2003-12-19', '65, SOIBHAGYA NAGAR, NEAR OF N C A  SCHOOL, RAKAMPURA ROAD, BEDWAS, UDAIPUR', 'MDS-SS-3120', 0, 10, 6, '', '', '', '0000-00-00'),
(3816, 'VIJANSH AGARWAL', 'MR  VINAY KUMAR AGARWAL', 'MRS  NEERU AGARWAL', '2002-03-21', '101-B SANSKAR II APARTMENT NEW NAVRATAN COMPLEX', 'MDS-SS-3170', 0, 10, 2, '', '', '', '0000-00-00'),
(3817, 'SHRESHTHA PANDYA', 'MR  RAJENDRA PANDYA', 'MRS  SANGEETA PANDYA', '2003-12-11', 'B  L  MALARA PUSHPA MALARA, 9 SAMTA NAGAR UDR ', 'MDS-SS-3173', 0, 10, 1, '', '', '', '0000-00-00'),
(3818, 'ABHISHEK YADAV', 'MR  RAMESH CHAND YADAV', 'MRS  SHARMILA YADAV', '2002-05-30', '994, GYAN NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3177', 0, 10, 1, '', '', '', '0000-00-00'),
(3819, 'SAHIL BHAWNANI', 'MR  KISHORE KUMAR BHAWNANI', 'MRS  RAJNI BHAWNANI', '2003-01-27', 'T-5 NEAR UDAIPUR HIRAN MAGRI SEC  5', 'MDS-SS-3154', 0, 10, 6, '', '', '', '0000-00-00'),
(3820, 'DEEPESH SHARMA', 'MR  GIRDHARI LAL SHARMA', 'MRS  YASHODA PUSHKARNA', '2002-10-02', 'H NO  13, MAHAVEER NAGAR, HIRAN MAGRI, SECTOR NO  4, ROAD NO  3, UDAIPUR', 'MDS-SS-3156', 0, 10, 1, '', '', '', '0000-00-00'),
(3821, 'NAKSHATRA KHANDELWAL', 'MR  SANJAY KHANDELWAL', 'MRS  SEEMA GUPTA', '2002-08-16', '48, GANDHI NAGAR, GANDHI COMPLEX  KALKA MATA ROAD, PAHADA, UDAIPUR', 'MDS-SS-3121', 0, 10, 1, '', '', '', '0000-00-00'),
(3822, 'DEEPENDRA SINGH CHUNDAWAT', 'MR  BHUPENDRA SINGH CHUNDAWAT', 'MRS  KAUSHALLYA KUNWAR', '2002-02-16', '4-K-5, ADARSH HOUSING SOCIETY, VIDHYA NAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3123', 0, 10, 1, '', '', '', '0000-00-00'),
(3823, 'ATEEB HAQUE', 'MR  ISRAR UL HAQUE', 'MRS  ISHRAT HAQUE', '2001-12-19', '89, ARIHANT NAGAR SAVINA UDR ', 'MDS-SS-3115', 0, 10, 1, '', '', '', '0000-00-00'),
(3824, 'HARENDRA GOCHAR', 'MR  RAJESH GOCHAR', 'MRS  REENA GOUCHAR', '2003-05-09', 'HOUSE NO  32, WARD A SOUTH, SUNDERWAS, UDAIPUR', 'MDS-SS-3119', 0, 10, 6, '', '', '', '0000-00-00'),
(3825, 'MUKUL DANGI', 'MR  UDAI LAL DANGI', 'MRS   ANITA DANGI', '2002-07-13', '613, KANPUR NEAR MANDHLIYA TEMPLE UDR ', 'MDS-SS-3135', 0, 10, 2, '', '', '', '0000-00-00'),
(3826, 'VAISHNAVI JOSHI', 'MR  HITENDRA JOSHI', 'MRS  SAVITA JOSHI', '2003-02-10', '56-C, SEC - 9, SAVINA, UDAIPUR', 'MDS-SS-3137', 0, 10, 1, '', '', '', '0000-00-00'),
(3827, 'CHAITRA ARORA', 'MR  RAVI PRAKASH ARORA', 'MRS  VEENA ARORA', '2002-09-24', '784, SWAMI NAGAR, TEKRI MADRI ROAD, UDAIPUR', 'MDS-SS-3088', 0, 10, 6, '', '', '', '0000-00-00'),
(3828, 'MANAN JAIN', 'MR  SUSHIL KUMAR JAIN', 'MRS  SEEMA JAIN', '2002-10-04', '3-V-3, HIRAN MAGRI, SECT  NO  5, PRABHAT NAGAR, UDAIPUR', 'MDS-SS-3095', 0, 10, 6, '', '', '', '0000-00-00'),
(3829, 'SHIKHAR JOSHI', 'MR  RAJESH KUMAR JOSHI', 'MRS  BHAVANA JOSHI', '2003-03-13', '03, SHIV NAGAR, PANERION KI MADRI, UDAIPUR', 'MDS-SS-3096', 0, 10, 2, '', '', '', '0000-00-00'),
(3830, 'HARSHIT SHARMA', 'MR  MUKESH SHARMA', 'MRS  VIJAY LAXMI SHARMA', '2002-03-15', '2T9, SHANTI NAGAR, SEC - 5, UDAIPUR', 'MDS-SS-3074', 0, 10, 1, '', '', '', '0000-00-00'),
(3831, 'PURVI AGRAWAL', 'MR  MUKESH AGRAWAL', 'MRS  RANJANA AGRAWAL', '2003-04-16', '28, HARSH NIKUNJ HANUMAN NAGAR MANWA KHEDA', 'MDS-SS-3076', 0, 10, 2, '', '', '', '0000-00-00'),
(3832, 'HARSHIL JAIN', 'MR  OM PRAKASH JAIN', 'MRS  ARUNA KUMARI JAIN', '2003-01-19', '35, VIDHYA  NAGAR, SECT  NO  5, UDAIPUR', 'MDS-SS-3069', 0, 10, 2, '', '', '', '0000-00-00'),
(3833, 'YAMINI SHARMA', 'MR  RAMESH SHARMA', 'MRS  ANITA SHARMA', '2002-02-07', '521, KALAJI GORAJI, GULAB BAG ROAD, UDAIPUR', 'MDS-SS-3310', 0, 10, 6, '', '', '', '0000-00-00'),
(3834, 'ARSHINA KHAN', 'MR  SHAHID KHAN', 'MRS  SHABNAM KHAN', '2001-09-07', '20, MURSHID NAGAR, SAVINA, UDAIPUR', 'MDS-SS-3174', 0, 10, 1, '', '', '', '0000-00-00'),
(3835, 'HARSHAL JAIN', 'MR  VINOD KUMAR JAIN', 'MRS  RUPAL JAIN', '2001-12-04', '26, SHIV COLONY KALKA LINK ROADUDR ', 'MDS-SS-3079', 0, 10, 2, '', '', '', '0000-00-00'),
(3836, 'DEEPIKA SHARMA', 'MR  SANJAY SHARMA', 'MRS  PUSHPA SHARMA', '2002-07-01', '815/31, TELIO KA MOHALLA, PUROHITON KI MADRI, MIA, UDAIPUR', 'MDS-SS-3091', 0, 10, 1, '', '', '', '0000-00-00'),
(3837, 'VISHAL JAIN', 'MR  LAXMI LAL JAIN', 'MRS  KAVITA JAIN', '2001-03-29', 'VILLAGE LAKADWAS, JAIN COLONY NEAR CHARBHUJA MANDIR', 'MDS-SS-3090', 0, 10, 6, '', '', '', '0000-00-00'),
(3838, 'DIYA ATTRAY', 'MR  VIVEK CHOUDHARY', 'MRS  SMITA CHOUDHARY', '2002-12-12', '51, TRIMURTI COMPLEX, SECT  NO  4, UDAIPUR', 'MDS-SS-3108', 0, 10, 6, '', '', '', '0000-00-00'),
(3839, 'DEVVRATH JAIN', 'MR  MANISH JAIN', 'MRS  REKHA JAIN', '2003-04-29', '46, SHANTI NAGAR SEC  3 HIRAN MAGRI UDR ', 'MDS-SS-3162', 0, 10, 6, '', '', '', '0000-00-00'),
(3840, 'KRITIKA VAGRECHA', 'MR  SUNIL VAGRECHA', 'MRS  TARA VAGRECHA', '2002-09-30', 'H NO  270, SHASTRI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3117', 0, 10, 6, '', '', '', '0000-00-00'),
(3841, 'KUMKUM WADHWANI', 'MR  GURUMUKH WADHWANI', 'MRS  VARSHA WADHWANI', '2002-09-01', '57, A BLOCK ,C CLASS PRATAP NAGAR UDR,', 'MDS-SS-3124', 0, 10, 6, '', '', '', '0000-00-00'),
(3842, 'MEGHA WADHWANI', 'MR  SURESH WADHWANI', 'MRS  HIRANSHI WADHWANI', '2002-12-24', 'H NO  4-K-31, HIRAN MAGRI, SECT  NO  4, HOUSING BOARD COLONY, UDAIPUR', 'MDS-SS-3125', 0, 10, 6, '', '', '', '0000-00-00'),
(3843, 'VANSHIKA BAJAJ', 'MR  PRAVEEN BAJAJ', 'MRS  SUNITA BAJAJ', '2001-12-27', '215, JYOTI COLONY, KHEMPURA, PRATAP NAGAR  UDAIPUR', 'MDS-SS-3126', 0, 10, 6, '', '', '', '0000-00-00'),
(3844, 'VIDISHA DUNGARWAL', 'MR  PAVAN DUNGARWAL', 'MRS  MEENAKSHI DUNGARWAL', '2002-05-14', '5, NEMI NAGAR, NOKHA ROAD, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3127', 0, 10, 6, '', '', '', '0000-00-00'),
(3845, 'PRATYUSH PAREEK', 'MR  LOKESH PAREEK', 'MRS  MEGHA PAREEK', '2002-06-18', '45, SAMTA NAGAR, SECTOR NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3097', 0, 10, 1, '', '', '', '0000-00-00'),
(3846, 'YEARAGRA PALIWAL', 'MR  RAJESH PALIWAL', 'MRS  HEMA PALIWAL', '2001-11-17', '5, KANWAR PADA MARG, NANI GALI, UDAIPUR', 'MDS-SS-3103', 0, 10, 6, '', '', '', '0000-00-00');
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`) VALUES
(3847, 'ANURAG CHOUDHARY', 'MR  MOHAN LAL CHOUDHARY', 'MRS  KAMLA DEVI CHOUDHARY', '2001-11-27', '61, ROSHAN NAGAR, SAVINA, SECT  NO  12, UDAIPUR', 'MDS-SS-3104', 0, 10, 1, '', '', '', '0000-00-00'),
(3848, 'AMAN JAIN', 'MR  RISHABH JAIN', 'MRS  ANJANA JAIN', '2002-03-09', '140, ROOP NAGAR, HIRAN MAGRI, SEC 3  NO  3, UDAIPUR', 'MDS-SS-3110', 0, 10, 6, '', '', '', '0000-00-00'),
(3849, 'HARSHIL JAIN', 'MR  PUKHRAJ JAIN', 'MRS  KIRAN JAIN', '2001-12-04', '20, SAMATA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3111', 0, 10, 1, '', '', '', '0000-00-00'),
(3850, 'LAKSHITA JAIN', 'MR  SUNIL JAIN', 'MRS  SUNITA JAIN', '2001-11-28', '20, SAMATA NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3112', 0, 10, 1, '', '', '', '0000-00-00'),
(3851, 'ARPIT MAHESHWARY', 'MR  NIKHIL MAHESHWARY', 'MRS  ANJU MAHESHWARY', '2002-07-04', '21, R K  PURAM, TITARDI, UDAIPUR', 'MDS-SS-3113', 0, 10, 2, '', '', '', '0000-00-00'),
(3852, 'NIDHI CHAUDHARY', 'MR  VERENDRA SINGH CHAUDHARY', 'MRS  MONIKA CHAUDHARY', '2001-01-30', 'A-207, DWARKA APPARTMENT, MANVA KHEDA, SEC  5 UDAIPUR', 'MDS-SS-3094', 0, 10, 2, '', '', '', '0000-00-00'),
(3853, 'HARSH VARDHAN SINGH CHOUHAN', 'GOVIND SINGH CHOUHAN', 'MRS  JASWANT KUNWAR', '2003-12-11', 'TEKRI, SERWASWAR COLONY, UDAIPUR', 'MDS-SS-3080', 0, 10, 6, '', '', '', '0000-00-00'),
(3854, 'ANURAG MISHRA', 'MR  NEERAJ MISHRA', 'MRS  ANITA MISHRA', '2002-02-18', '05 NAKODA NAGAR HIRAN MAGRI SEC  3', 'MDS-SS-3084', 0, 10, 6, '', '', '', '0000-00-00'),
(3855, 'ROHIT SINHA', 'MR  RAVI SHANKAR SINHA', 'MRS  GITA SINHA', '2001-12-08', '6B3, ZINC PARK, MOTI MAGRI SCHEME, UDAIPUR', 'MDS-SS-3077', 0, 10, 2, '', '', '', '0000-00-00'),
(3856, 'DEV MADHWANI', 'MR  BASANT MADHWANI', 'MRS  NEELAM MADHWANI', '2002-01-18', 'E, CLASS COLONY ,D-BLOCK D-27, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3086', 0, 10, 1, '', '', '', '0000-00-00'),
(3857, 'SHIKHA JOSHI', 'MR  PURSHOTAM JOSHI', 'MRS  BASANTI DEVIPANERIYON KI MADRI, UDAIPUR', '2002-08-23', 'NEAR SENIOR SEC  SCHOOL,PLOT NO  24 PANERIYON KI MADRI, UDAIPUR', 'MDS-SS-3160', 0, 10, 6, '', '', '', '0000-00-00'),
(3858, 'MAYANK KALRA', 'MR  MUKESH KALRA', 'MRS  RICHA KALRA', '2002-05-19', '1373, BANK COLONY, SHANTI NAGAR, HIRAN MAGRI, SECT  NO  5, UDAIPUR', 'MDS-SS-3161', 0, 10, 1, '', '', '', '0000-00-00'),
(3859, 'GARIMA PARMAR', 'MR RAKESH KUMAR PARMAR', 'Mrs  Hemlata Parmar', '2001-12-18', '364, A, GAS GODAM ROAD HIRAN MAGRI SEC, 3 UDR ', 'MDS-SS-3150', 0, 10, 6, '', '', '', '0000-00-00'),
(3860, 'DILKHUSH SALVI', 'MR  RAMLAL SALVI', 'MRS  KALI BAI', '2002-01-19', 'BHERU JI KA CHABUTRA, KALADWAS, GIRVA, UDAIPUR', 'MDS-SS-3155', 0, 10, 1, '', '', '', '0000-00-00'),
(3861, 'ASHISH MENARIA', 'MR  SHIV SHANKER MENARIA', 'MRS  DURGA MENARIA', '2001-11-13', 'H NO  603, DHOLI MAGARY, GALI NO  1, PANERIYO KI MADRI, UDAIPUR', 'MDS-SS-3122', 0, 10, 1, '', '', '', '0000-00-00'),
(3862, 'ASHISH NAGDA', 'MR  RAJENDRA NAGDA', 'MRS  ANITA NAGDA', '2002-06-09', '2, NAGDA BHAWAN, PATHAN GALI, GARIYAWAS, UDAIPUR', 'MDS-SS-3129', 0, 10, 1, '', '', '', '0000-00-00'),
(3863, 'JAY PARIKH', 'MR  DHARMENDRA PARIKH', 'MRS  NETUL PARIKH', '2001-12-19', '119, SECT  NO  3, VIVEK NAGAR, UDAIPUR', 'MDS-SS-3130', 0, 10, 1, '', '', '', '0000-00-00'),
(3864, 'NISHANT SHARMA', 'MR  UPENDRA SHARMA', 'MRS  TARUN PRABHA SHARMA', '2002-08-16', '17, LAXMI NARAYAN NAGAR, SECT  9, SAVINA, UDAIPUR', 'MDS-SS-3163', 0, 10, 2, '', '', '', '0000-00-00'),
(3865, 'BHAVYA JAIN', 'MR  LOKESH JAIN', 'MRS  SONIKA JAIN', '2002-12-05', '583, NEAR ARPAN APARTMENT, HIRAN MAGRI, SECT  NO  11, UDAIPUR', 'MDS-SS-3166', 0, 10, 1, '', '', '', '0000-00-00'),
(3866, 'ANURAG JOSHI', 'MR  BHARAT JOSHI', 'MRS  SUSHMA JOSHI', '2002-11-21', '68, ROAD NO  3 SUBHASH NAGAR OPP  BN COLLEGE UDR ', 'MDS-SS-3072', 0, 10, 6, '', '', '', '0000-00-00'),
(3867, 'BHUMIN KUMAWAT', 'MR  JYOTI PRAKASH KUMAWAT', 'MRS  RENU KUMAWAT', '2002-03-09', 'D-3, SOUTH SUNDERWAS, BEHIND DHARTIDHAN FACTORY, UDAIPUR', 'MDS-SS-3073', 0, 10, 6, '', '', '', '0000-00-00'),
(3868, 'SAUMYA DOSHI', 'MR  JAYANT DOSHI', 'MRS  MEETU DOSHI', '2002-09-19', 'MAIN MARKET, SADAR BAZAR, SALUMBER', 'MDS-SS-3315', 0, 10, 2, '', '', '', '0000-00-00'),
(3869, 'JITENDRA LOHAR', 'MR  KANHAIYA LAL LOHAR', 'MRS  SUNITA GORANA', '2000-12-28', '48, KRISHNA VIHAR COLONY, SECT  NO  4, NEW VIDHYA NAGAR, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3157', 0, 10, 1, '', '', '', '0000-00-00'),
(3870, 'SHEETAL GARG', 'MR  GANESH GARG', 'MRS  YASHODA GARG', '2001-08-17', 'MDS SCHOOL CAMPUS, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3147', 0, 10, 1, '', '', '', '0000-00-00'),
(3871, 'RAJAT CHOUHAN', 'MR  S K  CHOUHAN', 'MRS  SHAKUNTLA CHOUHAN', '2002-07-18', 'KENDRIYA VIDYALAYA NO  1, STAFF QTRS  NO  3, TYPE-III, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3142', 0, 10, 6, '', '', '', '0000-00-00'),
(3872, 'SIMRAN SHEKHAWAT', 'MR  SURENDRA SINGH SHEKHAWAT', 'MRS  DHEERAJ KANWAR', '2001-12-19', '765-66 SURYA NAGAR SEC  3', 'MDS-SS-3151', 0, 10, 2, '', '', '', '0000-00-00'),
(3873, 'JATIN BANSAL', 'MR  NARESH KUMAR BANSAL', 'MRS  HEMA AGRAWAL', '2002-03-11', 'FLAT NO  -B-40 MANWA KHEDA DWARIKA APARTMENT UDR', 'MDS-SS-3153', 0, 10, 1, '', '', '', '0000-00-00'),
(3874, 'NAYAN SALVI', 'MR  MANGI LAL SALVI', 'MRS  LALITA DEVI', '2002-06-23', '28/142, NEAR SHIV MANDIR, GARIYAWAS, UDAIPUR', 'MDS-SS-3168', 0, 10, 1, '', '', '', '0000-00-00'),
(3875, 'NIKHIL KUMAR', 'MR  DHANIRAM KAMAL', 'MRS  SARASWATI', '2001-07-03', '4 A CHIRAG COMPLEX PANERIO KI MADRI', 'MDS-SS-3083', 0, 10, 2, '', '', '', '0000-00-00'),
(3876, 'TUSHYA SANJAY', 'MR  SANJAY KAMAL', 'MRS  SUNITA V  PANICKER', '2002-05-24', '4, KHUSHAL BAGH KESHAV 1  NR  JAIN MANDIR, UNIVERSITY ROAD, UDAIPUR', 'MDS-SS-3101', 0, 10, 2, '', '', '', '0000-00-00'),
(3877, 'DHRUVAL PARIKH', 'MR  DHARMENDRA PARIKH', 'MRS  NETUL PARIKH', '2000-11-29', '119, SECT  NO  3, VIVEK NAGAR, UDAIPUR', 'MDS-SS-3131', 0, 10, 1, '', '', '', '0000-00-00'),
(3878, 'KHUSHI AASURIYA', 'MR  ROSHAN AASURIYA', 'MRS  SAROJ AASURIYA', '2002-09-18', '14, ANAND VIHAR, HIRAN MAGRI, SECT  NO  4, UDAIPUR', 'MDS-SS-3133', 0, 10, 6, '', '', '', '0000-00-00'),
(3879, 'KHUSHI KOTHARI', 'MR  SANJAY KOTHARI', 'MRS  SUNITA KOTHARI', '2002-09-29', 'D-8, RAGHUKUL COMPLEX, SUBHASH NAGAR, UDAIPUR', 'MDS-SS-3134', 0, 10, 6, '', '', '', '0000-00-00'),
(3880, 'MOHIT SHARMA', 'MR  PURUSHOTTAM SHARMA', 'MRS  NAVEENA SHARMA', '2002-05-20', '327, MDS ROAD OPP  SHIV MANDIR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3082', 0, 10, 1, '', '', '', '0000-00-00'),
(3881, 'DHWANI CHOUDHARY', 'MR  SHANKER JAT', 'MRS  NEHA CHOUDHARY', '2003-01-30', '5, KASHI PURI, SEC - 5, UDAIPUR', 'MDS-SS-3068', 0, 10, 1, '', '', '', '0000-00-00'),
(3882, 'KARMENDRA MAHAWAR', 'MR  HUKUM SINGH', 'MRS  KIRAN', '2002-06-11', '3/382, HOUSING BOARD COLONY, GOVERDHAN VILAS, SECT  NO  14, UDAIPUR', 'MDS-SS-3070', 0, 10, 2, '', '', '', '0000-00-00'),
(3883, 'HARSH JOSHI', 'MR  SAMEER JOSHI', 'MRS  RAJANI JOSHI', '2002-10-02', '56, RISHI NAGAR, NEAR GAS GODOWN, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3114', 0, 10, 1, '', '', '', '0000-00-00'),
(3884, 'DISHA VAYA', 'MR  VIJAY VAYA', 'MRS  INDU VAYA', '2002-07-01', '32, ROOP NAGAR, HIRAN MAGRI, SECT  NO  3, UDAIPUR', 'MDS-SS-3138', 0, 10, 1, '', '', '', '0000-00-00'),
(3885, 'HARMISH SONI', 'MR  DILIP KUMAR SONI', 'MRS  MEGHNA SONI', '2002-03-24', '21, SAMTA NAGAR, BEDLA, UDAIPUR', 'MDS-SS-3329', 0, 10, 2, '', '', '', '0000-00-00'),
(3886, 'YASH JAIN', 'MR  MAHESH JAIN', 'MRS  KIRAN JAIN', '2001-12-14', 'H NO  28, NEW SAROJ COLONY, KALAJI GORAJI, UDAIPUR', 'MDS-SS-3330', 0, 10, 2, '', '', '', '0000-00-00'),
(3887, 'SHYAM SUNDER DHAKER', 'MR BABU LAL DHAKAR', 'MRS  DURGA', '2002-07-01', 'POST AMARPURA, RAWAT KATALAB, CHITTORGARH', 'MDS-SS-3331', 0, 10, 2, '', '', '', '0000-00-00'),
(3888, 'DEEPAK DHAKER', 'MR  SHOBHA RAM', 'MRS  MANJU DEVI', '2003-07-27', 'AATA, TEH  JAWAD, DISTT  NEEMUCH', 'MDS-SS-3332', 0, 10, 2, '', '', '', '0000-00-00'),
(3889, 'NISHCHAYA SONARTHI', 'MR  VISHNU LAL SALVI', 'MRS  GEETA SALVI', '2002-05-28', '3/43, HBC PRATAP NAGAR, UDAIPUR', 'MDS-SS-3333', 0, 10, 6, '', '', '', '0000-00-00'),
(3890, 'RINKLE CHAPLOT', 'MR  RAKESH CHAPLOT', 'MRS  SANGEETA CHAPLOT', '2002-12-28', '66, HIRAN MAGRI, SECTOR 3, NEAR VIKAS HOSPITAL, UDAIPUR', 'MDS-SS-3337', 0, 10, 2, '', '', '', '0000-00-00'),
(3891, 'TARSHVI BHANDARI', 'MR  ASHOK BHANDARI', 'MRS  RITU BHANDARI', '2002-01-08', '92/6, ASHOK NAGAR, UDAIPUR', 'MDS-SS-3338', 0, 10, 2, '', '', '', '0000-00-00'),
(3892, 'DHANISHA RAWAL', 'MR  PUSHKAR RAWAL', 'MRS  INDIRA RAWAL', '2002-02-09', '34/35, GAYATRI NAGAR, UNIVERSITY ROAD, UDAIPUR', 'MDS-SS-3339', 0, 10, 6, '', '', '', '0000-00-00'),
(3893, 'SHIVAKSHA CHOUBISA', 'MR  SHYAM SUNDER', 'MRS  GEETA', '2002-01-08', '101, NORTH AYAD, SUTHARWADA, UDAIPUR', 'MDS-SS-3340', 0, 10, 6, '', '', '', '0000-00-00'),
(3894, 'AMARTYA PANWAR', 'MR  NARESH PANWAR', 'MRS  SUNITA ARYA', '2003-10-26', '71-A, SUKUN ADARSH NAGAR, R K  PURAM, TITARADI, UDAIPUR', 'MDS-SS-3341', 0, 10, 2, '', '', '', '0000-00-00'),
(3895, 'SHAILESH MEGHWAL', 'MR  BHERU LAL MEGHWAL', 'MRS  LAJWANTI MEGHWAL', '2002-06-30', 'SAMTA NAGAR SEC  3 HIRAN MAGRI', 'MDS-SS-3118', 0, 10, 6, '', '', '', '0000-00-00'),
(3896, 'KHYATI SHAH', 'MR  SHAILESH SHAH', 'MRS  NEELAM SHAH', '2002-05-03', '6/4, RHB COLONY, SECT  NO  14, GOVERDHAN VILAS, UDAIPUR', 'MDS-SS-3145', 0, 10, 2, '', '', '', '0000-00-00'),
(3897, 'PRABHAV MAHESHWARI', 'MR  KAMAL NAYAN NYATI', 'MRS  SITA NYATI', '2003-01-15', 'K-404, RADHA KRISHN APPTS, NEW VIDHYANAGAR, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3146', 0, 10, 2, '', '', '', '0000-00-00'),
(3898, 'KHUSHI SHARMA', 'MR  ARVIND KUMAR SHARMA', 'MRS  PUSHPALATA SHARMA', '2002-04-23', '1096 GAYAN NAGAR SECTOR NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3152', 0, 10, 1, '', '', '', '0000-00-00'),
(3899, 'ANJALI NAGDA', 'DINESH NAGDA', 'TARA NAGDA', '2001-02-08', 'RAKAMPURA ROAD, NAKODA NAGAR, DHAUJI KI BAWARI, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3081', 0, 10, 2, '', '', '', '0000-00-00'),
(3900, 'VAIBHAV CHOUDHARY', 'MR  JASWANT SINGH', 'MRS  VIMLESH CHOUDHARY', '2003-06-20', '21, SAMTA NAGAR, OPP  MDS, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3098', 0, 10, 6, '', '', '', '0000-00-00'),
(3901, 'CHARVI UPADHYAY', 'MR  VINAY UPADHYAY', 'DR  SEEMA UPADHYAY', '2001-10-04', 'FLAT NO  105, RAJ KAMAL APPARTMENT, BEDLA BEDGON LINK ROAD, UDAIPUR', 'MDS-SS-3346', 0, 10, 2, '', '', '', '0000-00-00'),
(3902, 'KAPIL SWAMI', 'MR  SUNIL SWAMI', 'MRS  MADHU SWAMI', '2002-06-11', 'ARIHANT COLONY HOUSE NO  540 , OPP ROAD NO 3, PUROHITON KI MADRI, UDAIPUR', 'MDS-SS-3100', 0, 10, 1, '', '', '', '0000-00-00'),
(3903, 'SNEH SHRIVASTAV', 'MR  SANJAY SHRIVASTAV', 'MRS  NEHA SHRIVASTAV', '2002-04-19', '81-D, BLOCK, UIT ROAD NO  4, PUROHITO KI MADRI, UDAIPUR', 'MDS-SS-3143', 0, 10, 6, '', '', '', '0000-00-00'),
(3904, 'UMESH MALLICK', 'MR  KARTIK CHANDRA MALLICK', 'MRS  RUPALI MALLICK', '2003-04-25', '4, SAMTA NAGAR HIRAN MAGRI SEC  3', 'MDS-SS-3136', 0, 10, 1, '', '', '', '0000-00-00'),
(3905, 'AASHI SRIVASTAVA', 'MR  ASEEM SHANKER SRIVASTAVA', 'MRS  RUCHI SHANKER SRIVASTAVA', '2002-06-13', 'SF-24, GAYATRI NAGAR, SECT  NO  5, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3351', 0, 10, 2, '', '', '', '0000-00-00'),
(3906, 'PALASH SHRIMALI', 'MR  MUKESH SHRIMALI', 'MRS  BHARTI SHRIMALI', '2002-01-05', '119, NEAR MAHAVEER ACADEMY SCHOOL, GARIYAWAS, UDAIPUR', 'MDS-SS-3167', 0, 10, 1, '', '', '', '0000-00-00'),
(3907, 'ARVIND SINGH RATHORE', 'MR  PREM SINGH RATHORE', 'MRS  LALITA KUNWAR RATHORE', '2001-01-03', '2, BARI VILLA SEC  5 HIRAN MAGRI OPP  NARAYAN SEVA SANSTHAN', 'MDS-SS-3165', 0, 10, 1, '', '', '', '0000-00-00'),
(3908, 'BHAWESH PANDIYAR', 'MR  KANHAIYA LAL SAHU', 'MRS  SAROJ SAHU', '2001-11-19', '41, SATYNARAYAN MARG, CHOTTI BRAHMPURI, AMAL KA KANTA, UDAIPUR', 'MDS-SS-3358', 0, 10, 6, '', '', '', '0000-00-00'),
(3909, 'MAHIPAL SINGH DEVRA', 'MR  ANOP SINGH DEVRA', 'MRS  OSHAB KUMARI PANWAR', '2001-12-06', '20-A, KAPIL VIHAR, BEDWAS, UDAIPUR', 'MDS-SS-3359', 0, 10, 6, '', '', '', '0000-00-00'),
(3910, 'SUSHMITA MEGHWAL', 'MR  BHANWAR LAL MEGHWAL', 'MRS  NARWADA MEGHWAL', '2003-07-17', '98-C HIRAN MAGRI SEC  9 SAVINA', 'MDS-SS-3102', 0, 10, 6, '', '', '', '0000-00-00'),
(3911, 'RAJAT MISHRA', 'MR  MAYANK MISHRA', 'MRS  ANUBHA MISHRA', '2002-10-08', '115/3, SHANTI NIKETAN APPARTMENT, FLAT NO  T-2, ASHOK NAGAR, UDAIPUR', 'MDS-SS-3106', 0, 10, 2, '', '', '', '0000-00-00'),
(3912, 'KRISH PRATAP RAJ', 'MR  ANIL KUMAR DAS', 'MRS  MEENA KUMARI', '2003-03-22', 'DGMS COLONY, QTR  NO   V/1, SECT  6, NEAR J B  HISPITAL, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3379', 0, 10, 2, '', '', '', '0000-00-00'),
(3913, 'RITESH MAHESHWARI', 'MR  DILIP MAHESHWARI', 'MRS  PRABHA MAHESHWARI', '2002-08-14', '9, BAHUBALI COLONY, BOHRA GANESH ROAD, UDAIPUR', 'MDS-SS-3176', 0, 10, 6, '', '', '', '0000-00-00'),
(3914, 'RISHI CHOUBISA', 'MR  DEVENDRA CHOUBISA', 'MRS  ANJANA CHOUBISA', '2001-01-25', '2, SAMTA NAGAR, SECT  NO  3, UDAIPUR', 'MDS-SS-3381', 0, 10, 6, '', '', '', '0000-00-00'),
(3915, 'YASHVADHAN SINGH GURJAR', 'MR  PRAVEEN BANSAL', 'MRS  SANGEETA BANSAL', '2004-04-04', 'D-8, GAYATRI NAGAR, SECT  NO  5, UDAIPUR', 'MDS-SS-3392', 0, 10, 2, '', '', '', '0000-00-00'),
(3916, 'SHOURY PRATAP SINGH SISODIYA', 'MR  MAHIPAL SINGH', 'MRS  REKHA KUNWAR', '2002-05-05', '165, SUBHASH NAGAR, UDAIPUR', 'MDS-SS-3398', 0, 10, 6, '', '', '', '0000-00-00'),
(3917, 'LOKENDRA SINGH CHUNDAWAT', 'MR  KUNDAN SINGH CHUNDAWAT', 'MRS  KANAK KUNWAR', '2001-03-28', '18,  RISHAB SOCIETY TAGORE NAGAR SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3139', 0, 10, 1, '', '', '', '0000-00-00'),
(3918, 'MITAKSH GOUR', 'MR  MAHESH GOUR', 'MRS  SANGEETA GOUR', '2002-01-31', '18-C ANAND VIHAR NEW MALI COLONY', 'MDS-SS-3169', 0, 10, 6, '', '', '', '0000-00-00'),
(3919, 'DEVRAJ SINGH RAO', 'MR  VIKRAM SINGH RAO', 'MRS  SARITA KANWAR', '2002-12-22', '68, RISHI NAGAR, SECT  NO  3, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3172', 0, 10, 1, '', '', '', '0000-00-00'),
(3920, 'KARAN SINGH RANAWAT', 'MR  SARDAR SINGH RANAWAT', 'MRS  SYAMA RANAWAT', '2003-12-21', '1/125, RHB COLONY, GOVERDHAN VILLAS, UDAIPUR', 'MDS-SS-3179', 0, 10, 6, '', '', '', '0000-00-00'),
(3921, 'KUNAL SAHU', 'MR  DEVENDRA SAHU', 'MRS  GEETA SAHU', '2002-03-23', '33, JOSHI JI KI GALI, DHANMANDI, UDAIPUR', 'MDS-SS-3416', 0, 10, 1, '', '', '', '0000-00-00'),
(3922, 'LAKSHYA KALASUA', 'MR  PREM PRAKASH', 'MRS  SANGEETA', '2002-01-22', 'PLOT NO  9, SECT  NO  4, HIRAN MAGRI, UDAIPUR', 'MDS-SS-3417', 0, 10, 1, '', '', '', '0000-00-00'),
(3923, 'RISHIKA JAIN', 'MR  SHAILENDRA JAIN', 'MRS  PURNIMA JAIN', '2002-12-29', '30/EKLING COLONY, HIRAN MAGRI, SECT  3, BEHIND RELIANCE FRESH, UDAIPUR', 'MDS-SS-3423', 0, 10, 2, '', '', '', '0000-00-00'),
(3924, 'AYUSHI KOTHARI', 'MR  DHANPAL KOTHARI', 'MRS  RENUKA KOTHARI', '2002-04-01', 'NIRMAL NAGAR, SECT  NO  3, NEAR MDS SCHOOL, UDAIPUR', 'MDS-SS-3427', 0, 10, 6, '', '', '', '0000-00-00'),
(3925, 'NAMAN BHATT', 'MR. HITENDRA KUMAR BHATT', 'MRS. DAKSHA DEVI BHATT', '2002-11-05', '5, LAXMINARAYAN NAGAR, BHATTMEVADA COLONY, SAVINA, UDAIPUR', 'MDS-SS-3436', 0, 10, 6, '', '', '', '0000-00-00'),
(3926, 'UJJWAL GUPTA', 'MR. KULDEEP GUPTA', 'MRS. RITU GUPTA', '2002-12-25', 'H.NO. 10, VINAYAK NAGAR, SECT. 4, UDAIPUR', 'MDS-SS-3440', 0, 10, 1, '', '', '', '0000-00-00'),
(3927, 'SACHIN DHAKER', 'MR. SATYANARAYAN DHAKER', 'MRS. SUMITRA DEVI', '2003-02-10', 'FLAT NO. 202, 1151-C, ADARSH NAGAR, HIRAN MAGRI, SECT. 4, UDAIPUR', 'MDS-SS-3625', 0, 10, 2, '', '', '', '0000-00-00'),
(3928, 'JAI SHARMA', 'MR. SUMIT SHARMA', 'MRS. HEMLATA SHARMA', '2003-01-31', '1-J-2, MEERA MARG, SECT. NO. 11, UDAIPUR', 'MDS-SS-3635', 0, 10, 2, '', '', '', '0000-00-00'),
(3929, 'HARSH JAIN', 'MR. JITENDRA JAIN', 'MRS. ANITA JAIN', '2002-10-29', '34, ANUBHRAT NAGAR, HIRAN MAGRI, SECT. 4, UDAIPUR', 'MDS-SS-3684', 0, 10, 2, '', '', '', '0000-00-00'),
(3930, 'MOHSIN RAZZA', 'MR. AYYUB MOHAMMAD', 'MRS. GULSHAN BEGAM', '2003-12-15', 'P.NO. 33-D, NEAR AT VIVEK PARK, VIVEK NAGAR, UDAIPUR', 'MDS-SS-3689', 0, 10, 1, '', '', '', '0000-00-00'),
(3931, 'MOHIT SHARMA', 'MR. SHANTI LAL SHARMA', 'MRS. RATAN SHARMA', '2004-07-22', '', 'MDSPS-2302', 0, 8, 1, '', '', '', '0000-00-00'),
(3932, 'TANMAY MITTAL', 'MR. BHUWNESH MITTAL', 'BHAWNA MITTAL', '2005-03-01', '', 'MDSPS-', 0, 8, 2, '', '', '', '0000-00-00'),
(3933, 'name', 'father_name', 'mother_name', 'dob', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00'),
(3934, 'AAKASH H NAIR', 'MR. HARISH NAIR', 'MRS. JAYA H. NAIR', '11/29/1999', '', 'MDS-SS-3437', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3935, 'AASTIK BHATNAGAR', 'MR. SANJAY BHATNAGAR', 'MRS. ALKA BHATNAGAR', '4/8/2000', '', 'MDS-SS-3213', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3936, 'ABHIK MEHTA', 'MR. AJAY KUMAR MEHTA', 'MRS. ANAMIKA MEHTA', '12/17/2000', '', 'MDS-SS-3370', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3937, 'ADIT CHHAPARWAL', 'MR. MUKESH CHHAPARWAL', 'MRS. RAJNI CHHAPARWAL', '7/9/2000', '', 'MDS-SS-3365', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3938, 'ADITI BAGDI', 'MR. SUKH SAMPAT BAGDI', 'MRS. KRISHNA BAGDI', '9/16/2000', '', 'MDS-SS-3318', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3939, 'ADITYA RAJAK', 'MR. LALIT KUMAR RAJAK', 'MRS. RAJKUMARI RAJAK', '7/26/2000', '', 'MDS-SS-3321', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3940, 'ADITYA SHARMA', 'MR. MANISH SHARMA', 'MRS. TILOTAMA SHARMA', '11/9/1999', '', 'MDS-SS-3260', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3941, 'ADITYA TALESARA', 'MR. MANISH TALESRA', 'MRS. DEEPA TALESRA', '4/23/2000', '', 'MDS-SS-3203', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3942, 'AKARSH MITTAL', 'MR. ANUJ KUMAR MITTAL', 'MRS. NIDHI MITTAL', '3/28/2000', '', 'MDS-SS-3197', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3943, 'AKSHAT GOYAL', 'MR. SUBHASH GOYAL', 'MRS. PREETI GOYAL', '6/12/2000', '', 'MDS-SS-3222', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3944, 'AKSHAT KHANNA', 'DR. VIPIN KHANNA', 'DR. RITU KHANNA', '10/7/2001', '', 'MDS-SS-3285', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3945, 'AMAN MATHUR', 'MR. AMIT MATHUR', 'MRS. ANJANA MATHUR', '8/29/2000', '', 'MDS - SS - 2211', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3946, 'AMOL SAMOTA', 'MR. AJAY SAMOTA', 'MRS. ANITA SAMOTA', '4/21/2000', '', 'MDS-SS-3269', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3947, 'ANAM QUAZI', 'MR. SHAFIK AHMAD QUAZI', 'MRS. SABIHA PARVEEN QUAZI', '6/10/2011', '', 'MDS-SS-3397', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3948, 'ANIRUDDH DUGAR', 'MR. HARISH DUGAR', 'MRS. ANJANA DUGAR', '1/16/2000', '', 'MDS-SS-3218', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3949, 'ANSHUMAN SINGH RATHORE', 'MR. DEVENDRA SINGH RATHORE', 'MRS. BINDU CHAUHAN', '11/30/2000', '', 'MDS-SS-3418', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3950, 'ANUBHUTI JHA', 'MR. BASANT JHA', 'MRS. KUSUM JHA', '7/27/2000', '', 'MDS-SS-3419', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3951, 'APOORVA CHOUDHARY', 'MR. PAWAN CHOUDHARY', 'MRS. ANAMIKA CHOUDHARY', '11/12/2000', '', 'MDS-SS-3192', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3952, 'ARNAV JAIN', 'MR. SANDEEP KUMAR JAIN', 'MRS. AVANI JAIN', '5/8/2000', '', 'MDS-SS-3187', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3954, 'AVINASH SETH', 'MR. YOGESH SETH', 'MRS. ANITA SETH', '1/20/2001', '', 'MDS-SS-3420', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3955, 'AVISH PORWAL', 'MR. VIKAS PORWAL', 'MRS. NEETU PORWAL', '4/3/2000', '', 'MDS-SS-3270', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3956, 'AYUSH MAHESHWARI', 'MR. RAKESH MAHESHWARI', 'MRS. ANJU MAHESHWARI', '5/5/2000', '', 'MDS-SS-3643', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3957, 'AYUSH SHARMA', 'MR. JAYANT SHARMA', 'MRS. SUNITA SHARMA', '5/30/2000', '', 'MDS-SS-3389', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3958, 'BHAGYESH GAUR', 'MR. MUKESH GAUR', 'MRS. GAYATRI GAUR', '10/6/2000', '', 'MDS-SS-3626', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3959, 'BHAVI JAROLI', 'MR. KAMLESH JAROLI', 'MRS. PRATIBHA JAROLI', '11/11/1999', '', 'MDS-SS-3324', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3960, 'BHAVYA JAIN', 'MR. SUNIL K. JAIN', 'MRS. PURNIMA JAIN', '1/22/2001', '', 'MDS-SS-3355', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3961, 'BHAVYA MAROO', 'MR. SANJAY MAROO', 'MRS. SARITA MAROO', '1/21/2001', '', 'MDS-SS-3265', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3962, 'BHAVYA THADA', 'MR. SUNIL KUMAR THADA', 'MRS. INDRA DEVI', '5/22/2000', '', 'MDS-SS-3313', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3963, 'BHAWANA WADHWANI', 'MR. VIJAY ANAND WADHWANI', 'MRS. PRIYA WADHWANI', '7/14/2000', '', 'MDS-SS-3399', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3964, 'BHAWANI SINGH CHUNDAWAT', 'MR. SHANKAR SINGH CHUNDAWAT', 'MRS. SANTOSH KUNWAR', '9/7/2000', '', 'MDS-SS-3408', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3965, 'BHUMIK JOSHI', 'MR. KAILASH CHANDRA JOSHI', 'MRS. MANISHA JOSHI', '11/13/1999', '', 'MDS-SS-3264', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3966, 'CHINMAY BAPNA', 'MR. NARENDRA BAPNA', 'MRS. NIRUPAMA BAPNA', '12/6/2000', '', 'MDS-SS-3253', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3967, 'CHIRAG JAIN', 'MR. MAHENDRA KUMAR JAIN', 'MRS. ANJANA JAIN', '3/7/2000', '', 'MDS-SS-3304', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3968, 'CHIRAG KOTHARI', 'MR. RAJNEESH KOTHARI', 'MRS. USHA KOTHARI', '2001-03-25', 'UDAIPUR', 'MDS-SS-3257', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3969, 'CHITRANG MATHUR', 'MR. NEERAJ MATHUR', 'MRS. DEEPALI MATHUR', '8/30/2000', '', 'MDS-SS-3410', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3970, 'DEEP KATEJA', 'MR. SANJAY KATEJA', 'MRS. VINITA KATEJA', '10/22/1999', '', 'MDS-SS-3233', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3971, 'DEEYA JAIN', 'MR. NIRMAL KUMAR JAIN', 'MRS. PREETI JAIN', '6/24/2000', '', 'MDS-SS-3356', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3972, 'DEVANG BAJPAI', 'MR. NAND KISHOR BAJPAI', 'MRS. ANITA BAJPAI', '3/30/2001', '', 'MDS-SS-3230', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3973, 'DEVESH GOYAL', 'DR. J.P. GOYAL', 'MRS. SAROJ GOYAL', '3/8/2000', '', 'MDS-SS-3221', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3974, 'DHWANI SHRIMAL', 'MR. UTPAL SHRIMAL', 'MRS. GARIMA SHRIMAL', '7/4/2001', '', 'MDS-SS-3366', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3975, 'DIGVIJAY NAGDA', 'MR. MOHAN LAL NAGDA', 'MRS. MADHU NAGDA', '12/16/1999', '', 'MDS - SS - 2301', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3976, 'DIKSHANT SHEKHAWAT', 'MR. SATPAL SINGH SHEKHAWAT', 'MRS. MANJU RATHORE', '9/11/2001', '', 'MDS-SS-3201', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3977, 'DISHA SHAH', 'MR. YOGESH KUMAR SHAH', 'MRS. ANJALI SHAH', '6/15/2001', '', 'MDS-SS-3298', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3978, 'DIV CHAUDHARY', 'DR. AJAY KUMAR CHOUDHARY', 'DR. ARCHANA CHOUDHARY', '5/29/2000', '', 'MDS-SS-3200', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3979, 'DIVISHA BAPNA', 'MR. VIPIN BAPNA', 'MRS. REKHA BAPNA', '9/14/2000', '', 'MDS-SS-3373', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3980, 'DIVYAM JAIN', 'MR. VIMAL CHAND JAIN', 'MRS. SUNITA JAIN', '5/3/2000', '', 'MDS-SS-3199', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3981, 'DIVYANK GUPTA', 'MR. RAJESH GUPTA', 'MRS. SWATI GUPTA', '1/12/2000', '', 'MDS-SS-3353', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3982, 'DIVYANSHI JAIN', 'MR. ', 'MRS. MAMTA JAIN', '10/11/2000', '', 'MDS-SS-3235', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3983, 'DIVYANSHI PAGARIA', 'MR. KAILASH CHANDRA PAGARIA', 'MRS. URMILA PAGARIA', '1/30/2001', '', 'MDS - SS - 2346', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3984, 'DIYA GARG', 'DR. MUKESH GARG', 'DR. GARIMA BHANDARI', '11/8/2000', '', 'MDS-SS-3363', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3985, 'FAIZAN ALI PIPAWALA', 'MR. AZIZ HUSSAIN', 'MRS. ZAHIDABANU', '3/29/2000', '', 'MDS-SS-3352', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3986, 'GAURANSHI CHAUHAN', 'MR. RAMPAL JINGAR', 'MRS. VEENA', '1/25/2001', '', 'MDS-SS-3291', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3987, 'GAURAV LODHA', 'MR. ASHOK LODHA', 'MRS. SANGEETA LODHA', '4/29/2000', '', 'MDS-SS-3690', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3988, 'GUHIKA BHANDARI', 'MR. ASHOK BHANDARI', 'MRS. RITU BHANDARI', '1/10/2000', '', 'MDS-SS-3303', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3989, 'HARSH JAIN', 'MR. ROSHAN LAL JAIN', 'MRS. REKHA JAIN', '7/3/2000', '', 'MDS-SS-3372', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3990, 'HARSH PRADEEP JETHANI', 'MR. PRADEEP JETHANI', 'MRS. JAYA JETHANI', '11/27/1999', '', 'MDS-SS-3627', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3991, 'HARSH SINGH', 'MR. SUNIL KUMAR SINGH', 'MRS. MINA SINGH', '8/25/2000', '', 'MDS-SS-3205', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3992, 'HARSHIT SUKHWAL', 'MR. KAILASH SUKHWAL', 'MRS. SARITA SUKHWAL', '3/15/2000', '', 'MDS-SS-3432', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3993, 'HIMANSHI BHAMBHANI', 'DR. GOPESH BHAMBHANI', 'MRS. ANSHU BHAMBHANI', '11/27/1999', '', 'MDS-SS-3245', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3994, 'IRFAN AHMED HITAWALA', 'MR. ABID ALI HITAWALA', 'MRS. FARIDA BANU', '1/21/2000', '', 'MDS-SS-3430', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3995, 'ISHA BANSAL', 'MR. ARUN BANSAL', 'MRS. RIYA BANSAL', '12/7/1999', '', 'MDS-SS-3289', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3996, 'JAIRAJ DHABHAI', 'MR. OM PRAKASH DHABHAI', 'MRS. KIRAN DHABHAI', '6/3/2000', '', 'MDS-SS-3242', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3997, 'JATIN SHRIMALI', 'MR. OM SHANKAR SHRIMALI', 'MRS. PREMLATA SHRIMALI', '5/1/2000', '', 'MDS-SS-3641', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3998, 'JAY BANGAR', 'MR. ANIL BANGAR', 'MRS. KAUSHLYA BANGAR', '4/26/2000', '', 'MDS-SS-3287', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(3999, 'JAY PALIWAL', 'MR. RAJESH PALIWAL', 'MRS. TARUNA PALIWAL', '12/11/1999', '', 'MDS-SS-3396', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4000, 'JAYWARDHAN CHARAN', 'DR. HIMMAT SINGH CHARAN', 'MRS. KIRTI CHARAN', '12/11/1999', '', 'MDS-SS-3284', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4001, 'JITESH KUMAR NEMBHNANI', 'MR. MAHESH KUMAR NEMBHNANI', 'MRS. GEETANJALI KESWANI', '11/14/2000', '', 'MDS-SS-3217', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4002, 'KALPESH SONI', 'MR. RAVISH SONI', 'MRS. PRITI SONI', '8/15/2001', '', 'MDS-SS-3693', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4003, 'KARTIK PANCHAL', 'MR. PRAKASH CHANDRA LOHAR', 'MRS. PRAVEENA LOHAR', '12/19/2000', '', 'MDS-SS-3314', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4004, 'KARTIK SHARMA', 'MR. SATYANARAYAN SHARMA', 'MRS. BHAWANA SHARMA', '12/23/1999', '', 'MDS-SS-3686', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4005, 'KARTIKEYA SHARMA', 'DR. VINOD KUMAR SHARMA', 'MRS. ARCHANA SHARMA', '10/11/2000', '', 'MDS-SS-3211', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4006, 'KARTIKEYA SINGH CHARAN', 'MR. RAJENDER SINGH CHARAN', 'MRS. URMILA CHARAN', '2/26/1999', '', 'MDS - SS - 1798', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4007, 'KAUSHAL SHARMA', 'MR. DHARMENDRA SHARMA', 'MRS. TRIPTI SHARMA', '7/27/2000', '', 'MDS-SS-3421', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4008, 'KAUSHIK NIMAWAT', 'MR. MUKESH NIMAWAT', 'MRS. SUNITA NIMAWAT', '4/11/2000', '', 'MDS-SS-3400', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4009, 'KAVISH LODHA', 'MR. SUNIL KUMAR LODHA', 'MRS. VANITA LODHA', '11/14/2000', '', 'MDS - SS - 1019', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4010, 'KHUSH JOSHI', 'MR. VIPEEN JOSHI', 'MRS. MONIKA JOSHI', '8/31/2002', '', 'MDS-SS-3646', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4011, 'KHUSHI JAIN', 'MR. MAHENDRA JAIN', 'MRS. SANGEETA', '3/30/2000', '', 'MDS - SS - 1329', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4012, 'KHUSHI MEHTA', 'MR. ASHOK MEHTA', 'MRS. RANJANA MEHTA', '5/15/2001', '', 'MDS-SS-3239', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4013, 'KHUSHI SAHU', 'MR. RAMCHANDRA SAHU', 'MRS. LALITA SAHU', '9/21/1999', '', 'MDS-SS-3431', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4014, 'KOUSHAL TRIVEDI', 'MR. MOHAN LAL TRIVEDI', 'MRS. SARLA TRIVEDI', '9/22/2000', '', 'MDS-SS-3210', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4015, 'KRATIK HARCHANDANI', 'MR. NARENDRA HARCHANDANI', 'MRS. CHITRA HARCHANDANI', '4/10/2000', '', 'MDS-SS-3308', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4016, 'KSHITIJ SURANA', 'MR. LALIT SURANA', 'MRS. VEENU JAIN', '9/19/2000', '', 'MDS-SS-3195', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4017, 'LAVISHA SOMANI', 'MR. RAKESH SOMANI', 'MRS. SUMITRA SOMANI', '8/21/2000', '', 'MDS - SS - 2632', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4018, 'LOCHAN BANDI', 'MR. VIVEK BANDI', 'MRS. SUNITA BANDI', '2/12/2000', '', 'MDS-SS-3297', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4019, 'MADHAVI PATIDAR', 'MR. GANESH LAL PATIDAR', 'MRS. VARSHA PATIDAR', '8/28/2000', '', 'MDS-SS-3309', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4020, 'MAHARSI PRAKASH MISHRA', 'MR. OM PRAKASH MISHRA', 'MRS. GAYATRI MISHRA', '4/23/2001', '', 'MDS - SS - 2247', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4021, 'MAITREYEE PALIWAL', 'MR. SUNIL PALIWAL', 'MRS. VARSHA PALIWAL', '1/24/2000', '', 'MDS-SS-3299', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4022, 'MAITRI BANSAL', 'MR. RAJKUMAR BANSAL', 'MRS. RAMA BANSAL', '1/13/2001', '', 'MDS-SS-3395', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4023, 'MANAN MEHTA', 'MR. UJJWAL MEHTA', 'MRS. ARCHANA MEHTA', '8/1/2000', '', 'MDS-SS-3282', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4024, 'MANSI GANDHI', 'MR. RAJKUMAR GANDHI', 'MRS. BELA JAIN', '2/21/2000', '', 'MDS-SS-3336', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4025, 'MANU ABHAY SINGHAL', 'MR. VINIT KUMAR SINGHAL', 'MRS. ARCHANA SINGHAL', '5/12/2000', '', 'MDS-SS-3190', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4026, 'MANUSHRI JAIN', 'MR. MUKESH JAIN', 'MRS. ANJANA JAIN', '9/26/2000', '', 'MDS-SS-3259', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4027, 'MAYANK SHARMA', 'MR. RADHEY SHYAM SHARMA', 'MRS. GEETA SHARMA', '2/19/2001', '', 'MDS-SS-3343', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4028, 'MD. IFHAM SHAKIL', 'MR. MD. SHAKIL AHMAD', 'MRS. NOORJAHAN KHAN', '2000-10-29', 'UDAIPUR', 'MDS-SS-3302', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4029, 'MEHUL VIJAYVARGIYA', 'MR. PRAVEEN VIJAYVARGIYA', 'MRS. KAVITA VIJAYVARGIYA', '1/23/2000', '', 'MDS-SS-3305', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4030, 'MIHIR AGARWAL', 'MR. SURESH AGARWAL', 'MRS. REKHA MOR', '11/2/1999', '', 'MDS-SS-3227', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4031, 'MILIND PUROHIT', 'MR. ANIMESH PUROHIT', 'MR. NEENA PUROHIT', '11/2/2000', '', 'MDS-SS-3402', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4032, 'MOHAMMED RAUF ASHRAF BAIG MIRZA', 'MR. MOHAMMED YUSUF BEG', 'MRS. PARVEEN', '5/1/2000', '', 'MDS-SS-3368', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4033, 'MUSKAN VERMA', 'MR. SATISH KUMAR VERMA', 'MRS. REKHA VERMA', '12/8/2000', '', 'MDS - SS - 2809', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4034, 'NEHANSH PORWAL', 'MR. MUKESH PORWAL', 'MRS. SARITA PORWAL', '3/24/2000', '', 'MDS-SS-3326', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4035, 'NIKHIL DHAKA', 'PROF. MAHENDER SINGH DHAKA', 'DR. SUNITA DHAKA', '11/26/2000', '', 'MDS-SS-3407', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4036, 'NIMISH BHATNAGAR', 'MR. ANUPAM BHATNAGAR', 'MRS. MANILA BHATNAGAR', '7/12/2000', '', 'MDS-SS-3226', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4037, 'NINAD SAHU', 'DR. OMPRAKASH SAHU', 'MRS. LEENA SAHU', '1/20/2001', '', 'MDS-SS-3249', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4038, 'PALAK BABEL', 'MR. AJAY BABEL', 'MRS. MONIKA BABEL', '9/27/2000', '', 'MDS-SS-3348', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4039, 'PALLAV JAIN', 'MR. DILIP KUMAR JAIN', 'MRS. VIDHYA JAIN', '12/30/1999', '', 'MDS-SS-3243', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4040, 'PANKAJ KATARIA', 'MR. RAJENDRA KATARIA', 'MRS. SUSHMA KATARIA', '10/9/1999', '', 'MDS-SS-3256', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4041, 'PARSHVI SAMAR', 'MR. MANISH SAMAR', 'MRS. SUMITRA SAMAR', '1/1/2000', '', 'MDS-SS-3228', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4042, 'PRADHYUMAN SINGH SINDAL', 'MR. BHUPENDRA SINGH SINDAL', 'MRS. SHEETAL SINDAL', '2/12/2001', '', 'MDS-SS-3390', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4043, 'PARAKRAM SINGH SANKHLA', 'MR. VIKRAM SINGH SANKHLA', 'MRS. MEENA SANKHLA', '2/12/2000', '', 'MDS-SS-3258', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4044, 'PRANAV SHARMA', 'MR. SHASHI MOHAN ', 'MRS. GEETA SHARMA', '11/10/2000', '', 'MDS-SS-3212', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4045, 'PRATHAM SWARNKAR', 'RAJENDRA KUMAR SWARNKAR', 'MRS. MANJU SONI', '7/28/2001', '', 'MDS-SS-3409', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4046, 'PRIYA JAWARIYA', 'MR. LALIT KUMAR JAWARIYA', 'MRS. FULA JAWARIYA', '9/1/2000', '', 'MDS - SS - 1064', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4047, 'PROKTA JAHAGIRDAR', 'MR. PRAMOD JAHAGIRDAR', 'MRS. SHUBHA JAHAGIRDAR', '3/23/2000', '', 'MDS-SS-3306', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4048, 'PUSHPENDRA JANWA', 'MR. SHYAM LAL JANWA', 'MRS. GAYATRI JANWA', '5/14/2001', '', 'MDS-SS-3688', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4049, 'RAHUL CHOUDHARY', 'MR. CHHAGAN LAL JAT', 'MRS. SANTOSH JAT', '12/1/2000', '', 'MDS-SS-3189', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4050, 'RAHUL SURANA', 'MR. BHUPENDRA SURANA', 'MRS. SUMAN SURANA', '5/16/2000', '', 'MDS-SS-3251', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4051, 'RAHUL VINAYAK', 'MR. VIJAY VINAYGAR', 'MRS. AJANTA VINAYAK', '11/29/2000', '', 'MDS-SS-3361', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4052, 'RAHUL YADAV', 'MR. SHISHUPAL SINGH YADAV', 'MRS. ANJU YADAV', '8/31/2000', '', 'MDS-SS-3238', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4053, 'RAJAN JAIN', 'MR. RAJESH JAIN', 'MRS. SHARMILA JAIN', '12/31/1999', '', 'MDS-SS-3194', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4054, 'RAJAT GAHLOT', 'MR. SANJAY KUMAR GAHLOT', 'MRS. MEENA GAHLOT', '9/19/2001', '', 'MDS-SS-3325', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4055, 'RAKSHITA MUNDRA', 'MR. RAVINDRA MUNDRA', 'MRS. KAVITA MUNDRA', '1/1/2000', '', 'MDS-SS-3229', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4056, 'RAM KUMAR', 'MR. DHALCHAND PRASAD', 'MRS. DHANESHWARI DEVI', '12/9/2000', '', 'MDS-SS-3387', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4057, 'RISHABH JAIN', 'MR. JITESH JAIN', 'MRS. MANEESHA JAIN', '7/8/2000', '', 'MDS-SS-3300', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4058, 'RISHABH KHANDELWAL', 'MR. SHARAD KHANDELWAL', 'MRS. SUNITA KHANDELWAL', '4/6/2000', '', 'MDS-SS-3406', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4059, 'RISHABH SINGHVI', 'MR. SUNIL SINGHVI', 'MRS. SANGEETA SINGHVI', '11/24/2000', '', 'MDS-SS-3266', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4060, 'RITIKA BHAMU', 'MR. PRAHLAD SINGH BHAMU', 'MRS. SUMITRA DEVI BHAMU', '5/5/2001', '', 'MDS-SS-3637', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4061, 'ROHAN YADAV', 'MR. SHISHUPAL SINGH YADAV', 'MRS. ANJU YADAV', '8/31/2000', '', 'MDS-SS-3207', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4062, 'ROHIT AHARI', 'MR. MOHAN LAL AHARI', 'MRS. HAJUDEVI AHARI', '5/6/2000', '', 'MDS-SS-3380', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4063, 'RONAK SINGHATWADIA', 'MR. PRADEEP SINGHATWADIA', 'MRS. ARUNA SINGHATWADIA', '7/22/2000', '', 'MDS-SS-3220', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4064, 'RUCHIR MEHTA', 'MR. JAINENDRA MEHTA', 'MRS. VINITA MEHTA', '12/21/2000', '', 'MDS-SS-3292', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4065, 'RUHAL DOSHI', 'DR. RAJESH DOSHI', 'MRS. PINAL DOSHI', '11/7/1999', '', 'MDS-SS-3202', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4066, 'SAHIL BOLIA', 'MR. LALIT KUMAR BOLIA', 'MRS. SHUBHA BOLIA', '2/8/2000', '', 'MDS-SS-3393', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4067, 'SAKSHI THADANI', 'MR. MANISH THADANI', 'MRS. BHARTI THADANI', '9/12/2000', '', 'MDS-SS-3367', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4068, 'SAMEER PARVEZ', 'MR. SHAHID PARVEZ', 'MRS. SHABANA PARVEZ', '9/10/1999', '', 'MDS-SS-3244', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4069, 'SAMYAK JAIN', 'MR. RAJENDRA JAIN', 'MRS. RAKSHA JAIN', '6/24/2000', '', 'MDS-SS-3438', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4070, 'SANKALP KALE', 'DR. ANIL S. KALE', 'MRS. MAMTA ANIL KALE', '9/13/2000', '', 'MDS - SS - 2184', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4071, 'SANKALP NAG', 'MR. SANJAY NAG', 'MRS. KAVITA MATHUR', '9/10/2000', '', 'MDS - SS - 1110', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4072, 'SATVIK JAIN', 'MR. DEEPAK KUMAR JAIN', 'MRS. MANILA JAIN', '2000-09-11', 'UDAIPUR', 'MDS-SS-3290', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4073, 'SAURABH SUTHAR', 'MR. NARAYAN LAL SUTHAR', 'MRS. LEELA SUTHAR', '6/22/2000', '', 'MDS-SS-3237', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4074, 'SHABDANK BHANAWAT', 'DR. TUKTAK BHANAWAT', 'MRS. RANJANA BHANAWAT', '4/19/2000', '', 'MDS-SS-3642', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4075, 'SHALIN JAIN', 'MR. KRISHNA KUMAR JAIN', 'MRS. MAMTA JAIN', '3/16/2000', '', 'MDS-SS-3279', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4076, 'SHISHIR RAJ BAIRATHI', 'DR. RAJEEV BAIRATHI', 'MRS. SANGEETA BAIRATHI', '11/10/1999', '', 'MDS-SS-3204', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4077, 'SHIVAM RAJ TRIVEDI', 'MR. RAJ KUMAR TRIVEDI', 'MRS. BANDANA TRIVEDI', '1/2/2001', '', 'MDS-SS-3319', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4078, 'SIDDHARTH AGARWAL', 'MR. SANJAY KUMAR AGARWAL', 'MRS. SEEMA AGARWAL', '11/1/1999', '', 'MDS - SS - 2265', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4079, 'SIDDHARTH POKHARNA', 'MR. PRAKASH CHANDRA POKHARNA', 'MRS. HEMLATA POKHARNA', '2/24/2002', '', 'MDS-SS-3320', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4080, 'SIDDHARTH SHARMA', 'MR. LALIT KUMAR SHARMA', 'MRS. VINITA SHARMA', '5/18/2000', '', 'MDS-SS-3364', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4081, 'SPARSH SHARMA', 'MR. ASHISH SHARMA', 'MRS. PUNITA SHARMA', '4/1/2000', '', 'MDS-SS-3312', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4082, 'SRINIVAS CHALLA', 'MR. V.K. RAO CHALLA', 'MRS. BHARATI CHALLA', '3/31/2001', '', 'MDS-SS-3263', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4083, 'SUDARSHAN MEHTA', 'MR. SUBHASH JAIN', 'MRS. SUNITA JAIN', '7/12/2000', '', 'MDS-SS- 3186', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4084, 'SUDHANSHU SANGANERIA', 'MR. SANDEEP KUMAR SANGANERIA', 'MRS. USHA SANGANERIA', '9/11/2001', '', 'MDS-SS-3401', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4085, 'SUDHANSHU SHARMA', 'MR. MADAN MOHAN SHARMA', 'MRS. SUDHA SHARMA', '9/24/2000', '', 'MDS-SS-3225', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4086, 'SUPRIYA SINHA', 'MR. RAKESH KUMAR SINHA', 'MRS. NIDHI SINHA', '8/31/2001', '', 'MDS-SS-3240', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4087, 'SURYANSH GEHLOT', 'MR. RAVI GEHLOT', 'MRS. SAMTA GEHLOT', '2/3/2000', '', 'MDS-SS-3219', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4088, 'TORAL GOGIYA', 'MR. LAXMI LAL GOGIYA', 'MRS. JASHODA GOGIYA', '7/9/2001', '', 'MDS-SS-3425', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4089, 'UJJWAL SONI', 'MR. PRADEEP SONI', 'MRS. SAROJ SONI', '1/18/2000', '', 'MDS-SS-3224', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4090, 'URVASHI VASITA', 'MR. UDAILAL VASITA', 'MRS. KAVITA VASITA', '11/23/1999', '', 'MDS-SS-3426', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4091, 'VAIBHAV GAKHREJA', 'MR. HEMANT GAKHREJA', 'MRS. RAKSHA GAKHREJA', '7/9/1999', '', 'MDS-SS-3214', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4092, 'VAIBHAV JOSHI', 'MR. HERAMB JOSHI', 'MRS. VINEETA JOSHI', '8/24/2000', '', 'MDS - SS - 2284', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4093, 'VANSHIKA BORDIA', 'MR. DEEPAK BORDIA', 'MRS. VIJAY LAXMI BORDIA', '6/1/2000', '', 'MDS-SS-3403', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4094, 'VARDHAN PALIWAL', 'MR. RAM NARAYAN PALIWAL', 'MRS. KIRAN PALIWAL', '2000-04-08', 'UDAIPUR', 'MDS-SS-3360', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4095, 'VATSAL AGRAWAL', 'MR. VARIJ AGRAWAL', 'MRS. VARSHA AGRAWAL', '3/27/1999', '', 'MDS-SS-3342', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4096, 'VEDANT BORDIA', 'MR. VIVEK BORDIA', 'MRS. NEELAM BORDIA', '12/27/1999', '', 'MDS-SS-3232', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4097, 'VEDANTA SHARMA', 'MR. ANIL SHARMA', 'MRS. PRATIBHA SHARMA', '3/12/2000', '', 'MDS-SS-3429', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4098, 'VIKRAM SINGH CHOUDHARY', 'MR. BADRI LAL CHOUDHARY', 'MRS. NARBDA DEVI CHOUDHARY', '2/4/2000', '', 'MDS-SS-3246', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4099, 'VISHAL MEGHWAL', 'MR. HARISH KUMAR MEGHWAL', 'MRS. LEELA MEGHWAL', '10/29/2000', '', 'MDS-SS-2338', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4100, 'VISHVADEEP JAIN', 'MR. GANESH LAL JAIN', 'MRS. SHASHIBALA JAIN', '8/23/2000', '', 'MDS - SS - 326', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4101, 'VIVEK KUMAR', 'MR. TAPAN KUMAR', 'MRS. POONAM DEVI', '6/13/2000', '', 'MDS-SS-3388', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4102, 'YAGNA AMETA', 'MR. LOVENISH AMETA', 'MRS. MANISHA AMETA', '11/27/2000', '', 'MDS-SS-3198', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4103, 'YASH TALESARA', 'MR. JITENDRA TALESARA', 'DR. SHILPA TALESARA', '10/20/1999', '', 'MDS-SS-3383', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4104, 'YASHVARDHAN SINGH DEORA', 'MR. MOHABBAT SINGH DEORA', 'MRS. UTTAM KANWAR', '8/8/2001', '', 'MDS-SS-3334', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4105, 'YATNESH GYANI', 'MR. GYANENDRA GYANI', 'MRS. VANDANA GYANI', '10/14/1999', '', 'MDS-SS-3415', 0, 12, 3, '', 'JA', '', '0000-00-00'),
(4106, 'AKSHITA SHARMA', 'MR. MUKESH SHARMA', 'MRS. MEENAKSHI SHARMA', '2/1/2000', '', 'MDS-SS-3184', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4107, 'ANUSHKA GOUR', 'MR. RANJIT SINGH RAJPUT', 'MRS. LAKXMI', '2/28/2000', '', 'MDS-SS-3631', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4109, 'DIVYANSH JAIN', 'MR. RAKESH JAIN', 'MRS. REKHA JAIN', '1/31/2001', '', 'MDS-SS-3216', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4110, 'DIVYANSH KOTHARI', 'MR. PAWAN KOTHARI', 'MRS. REKHA KOTHARI', '1/14/2000', '', 'MDS-SS-3369', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4111, 'GAURAV SAINI', 'MR. PREM CHAND MALI', 'MRS. ANITA MALI', '9/13/2000', '', 'MDS - SS - 2246', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4112, 'HARDIK KHAMESRA', 'MR. ARUN KUMAR KHAMESRA', 'MRS. ASHA KHAMESRA', '5/9/2000', '', 'MDS-SS-3193', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4113, 'JHALAK SHAH', 'ANIL SHAH', 'PRATIBHA JAIN', '9/15/2000', '', 'MDS - SS - 2596', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4114, 'JHANVI DAVE', 'MR. KAMLESH DAVE', 'MRS. MAMTA DAVE', '2/4/2000', '', 'MDS-SS-3377', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4115, 'MAHI AGRAWAL', 'MR. ANIL AGRAWAL', 'MRS. HARIPRIYA AGRAWAL', '5/11/2000', '', 'MDS - SS - 1072', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4116, 'NEETI PANWAR', 'MR. NARESH PANWAR', 'MRS. SUNITA PANWAR', '3/15/2001', '', 'MDS-SS-3382', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4117, 'NIHARIKA KUMAWAT', 'MR. OM PRAKASH KUMAWAT', 'MRS. SNEHLATA KUMAWAT', '8/26/2001', '', 'MDS-SS-3335', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4118, 'NIKITA KUNWAR RAO', 'MR. GOVIND SINGH RAO', 'MRS. VISHNU KUNWAR RAO', '3/25/2000', '', 'MDS-SS-3386', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4119, 'PRAGYA JOSHI', 'MR. AVADHESH ', 'MRS. RACHNA JOSHI', '2/10/2001', '', 'MDS-SS-3272', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4120, 'SHREYA MATHUR', 'MR. MAHIPAL MATHUR', 'MRS. RENU MATHUR', '4/1/2000', '', 'MDS-SS-3634', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4121, 'SUJAY ARBAT', 'MR. SANTOSH ARBAT', 'MRS. KALPANA HIRWADE', '10/2/2000', '', 'MDS-SS-3413', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4122, 'TINKLE NAGORI', 'MR. PRADEEP NAGORI', 'MRS. PRAMILA NAGORI', '10/24/2000', '', 'MDS-SS-3354', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4123, 'VIBHUTI AGRAWAL', 'MR. VIVEK AGRAWAL', 'MRS. JYOTI AGRAWAL', '2/14/2000', '', 'MDS - SS - 2193', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4124, 'name', 'father_name', 'mother_name', 'dob', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00'),
(4125, 'AAYUSH BAGRECHA', 'MR. VIJAY MANAKCHAND BAGRECHA', 'MRS. SUJATA VIJAY BAGRECHA', '', '', 'MDS - SS - 2651', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4126, 'ABHAY SHARMA', 'MR. ANIL SHARMA', 'MRS. PRABHA SHARMA', '', '', 'MDS - SS - 2713', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4127, 'ABHISHEK KUMAR', 'MR. AJEET KUMAR', 'MRS. BEENA', '', '', 'MDS - SS - 2761', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4128, 'ADITI CHUNDAWAT', 'MR. SURPAL S CHUNDAWAT', 'MRS. GIRIJA CHUNDAWAT', '', '', 'MDS - SS - 2803', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4129, 'AGRIMA DEEDWANIA', 'MR. ATUL KUMAR DEEDWANIA', 'MRS. SUDHA DEEDWANIA', '', '', 'MDS - SS - 2630', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4130, 'AHMED ANWAR FAIZ', 'MR. HASAN ANWAR DANISH', 'MRS. SHAMIMA DANISH', '', '', 'MDS - SS - 2621', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4131, 'AKHIL SHAH', 'MR. MANOJ KUMAR SHAH', 'MRS. RADHA SHAH', '', '', 'MDS-SS-3623', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4132, 'AKSHAT AGARWAL', 'MR. RAJESH AGARWAL', 'MRS. NISHA AGARWAL', '', '', 'MDS - SS - 2690', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4133, 'AKSHAT TALESARA', 'MR. KAMLESH TALESARA', 'MRS. SADHANA TALESARA', '', '', 'MDS - SS - 1799', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4134, 'AKSHIT DEVPURA', 'MR KAMAL DEVPURA', 'MRS PRAVEENA DEVPURA', '', '', 'MDS - SS - 2581', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4135, 'AKSHITA MEHTA', 'MR. ANIL MEHTA', 'MRS. ANUJA MEHTA', '', '', 'MDS - SS - 2680', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4136, 'AMAN VAYA', 'MR. PRAKASH VAYA', 'MRS. SAVITA VAYA', '', '', 'MDS - SS - 2843', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4137, 'ANIKET CHOWDHURY', 'MR. BIJAY CHOWDHURY', 'MRS. NANDITA CHOWDHURY', '', '', 'MDS - SS - 733', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4138, 'ANKIT SOLANKI', 'MR. BHERU LAL KHATIK', 'MRS. SITA DEVI', '', '', 'MDS - SS - 2689', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4139, 'ANKUSH POKHARNA', 'MR. RAKESH POKHARNA', 'MRS. SUNITA POKHARNA', '', '', 'MDS - SS - 2714', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4140, 'ANSHUL BHANDARI', 'MR. ANIL KUMAR BHANDARI', 'MRS. SNEHLATA BHANDARI', '', '', 'MDS - SS - 2635', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4141, 'ANUPREET DUBE', 'MR. ANURAG DUBE', 'MRS. MONICA DUBE', '', '', 'MDS-SS-2636', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4142, 'ANUSHKA AGARWAL', 'MR. NAVEEN AIRAN', 'MRS. DEEPALI AIRAN', '', '', 'MDS - SS - 2771', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4143, 'AYUSH GUPTA', 'MR. RAHUL GUPTA', 'MRS. NEHA GUPTA', '', '', 'MDS - SS - 2795', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4144, 'AYUSH TALESRA', 'MR. RAMESH TALESRA', 'MRS. KALPANA TALESRA', '', '', 'MDS-SS-1022', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4145, 'BHAVINI MITTAL', 'MR. VIVEK MITTAL', 'MRS. MEENA MITTAL', '', '', 'MDS - SS - 2697', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4146, 'BHAVIT MATHUR', 'MR. CHANDRA PRAKASH MATHUR', 'MRS. SAVITA MATHUR', '', '', 'MDS-SS-2584', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4147, 'BHAVYA SAI KHANDAL', 'MR. UMASHANKER SHARMA', 'MRS. SUNITA SHARMA', '', '', 'MDS-SS-2628', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4148, 'CHESHTA JOSHI', 'MR. SUBHASH JOSHI', 'MRS. RENU JOSHI', '', '', 'MDS - SS - 2785', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4149, 'CHIRAG SAINANI', 'MR. TOPN DAS SINDHI', 'MRS. GEETA SINDHI', '', '', 'MDS - SS - 2623', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4150, 'CHIRAG SONI', 'MR. RAJESH SONI', 'MRS. NEETA SONI', '', '', 'MDS - SS - 2611', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4151, 'DEEPALI GOUR', 'MR. RAJESH GOUR', 'MRS. PUSHPA GOUR', '', '', 'MDS - SS - 2589', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4152, 'DEVASHISH SAINI', 'MR. OM PRAKASH SAINI', 'MRS. RASHMI SAINI', '', '', 'MDS - SS - 2788', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4153, 'DEVESH AGARWAL', 'MR. KAMAL AGARWAL', 'MRS. DEEPIKA AGARWAL', '', '', 'MDS - SS - 2660', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4154, 'DHANRAJ MANE', 'DR. VIJAY MANE', 'MRS. SUJATA MANE', '', '', 'MDS - SS - 2593', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4155, 'DHRUVESH JOSHI', 'MR. PANNA LAL JOSHI', 'MRS. VISHNU JOSHI', '', '', 'MDS - SS - 2692', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4156, 'DHRUVIT BABEL', 'MR. RAJIV BABEL', 'MRS. SHARMILA BABEL', '', '', 'MDS-SS-2964', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4157, 'DIVYANSHU MEHTA', 'MR. RAKESH KUMAR MEHTA', 'MRS. BHAVANA MEHTA', '', '', 'MDS - SS - 2693', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4158, 'DIVYARTH DAVE', 'MR. NARESH DAVE', 'MRS. KAMLA DAVE', '', '', 'MDS - SS - 847', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4159, 'FATEH SINGH', 'MR. MAHENDRA SINGH', 'MRS. LUNI KANWAR', '', '', 'MDS - SS - 2591', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4160, 'FATIMA ALAM', 'MR. AZIZ ALI BOHRA', 'MRS. NAZIMA ALAM', '', '', 'MDS - SS - 2602', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4161, 'GAURAV AILANEY', 'MR. NARESH AILANEY', 'MRS. REKHA AILANEY', '', '', 'MDS - SS - 1794', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4162, 'GAURAV KALRA', 'MR. ASHOK KUMAR KALRA', 'MRS. ANUPAM KALRA', '', '', 'MDS - SS - 2760', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4163, 'HARDIK DUBE', 'MR. CHANDRAKANT DUBE', 'MRS. RITU DUBE', '', '', 'MDS - SS - 2814', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4164, 'HARDIK SAXENA', 'MR. AVINASH SAXENA', 'MRS. ANCHAL SWARUP SAXENA', '', '', 'MDS - SS - 2712', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4165, 'HARSH KOTHARI', 'MR. PAWAN KOTHARI', 'MRS. SANGEETA KOTHARI', '', '', 'MDS - SS - 1353', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4166, 'HARSHIT AGARWAL', 'MR. MUKESH KUMAR AGARWAL', 'MRS. HEMLATA AGARWAL', '', '', 'MDS - SS - 2840', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4167, 'HARSHIT CHOUDHARY', 'MR. RAJENDRA SINGH CHOUDHARY', 'MRS. MANJU CHOUDHARY', '', '', 'MDS - SS - 2718', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4168, 'HARSHITA BHANAWAT', 'MR. PRAKASH BHANAWAT', 'MRS. USHA BHANAWAT', '', '', 'MDS - SS - 2638', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4169, 'HARSHUL JAIN', 'MR. RAJKUMAR JAIN', 'MRS. LALITA JAIN', '', '', 'MDS - SS - 2667', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4170, 'HIMANI AGARWAL', 'MR. KAMAL AGARWAL', 'MRS. REKHA AGARWAL', '', '', 'MDS - SS - 2831', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4171, 'HIMANSHU BADALA', 'MR. JEEVAN KUMAR BADALA', 'MRS. MANJU BADALA', '', '', 'MDS-SS-2968', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4172, 'HIMANSHU BHATNAGAR', 'MR. MAHIPAL SINGH BHATNAGAR', 'MRS. VANDANA NIGAM', '', '', 'MDS - SS - 2645', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4173, 'HIMI PANDYA', 'MR. UMANG PANDYA', 'MRS. JYOTI PANDYA', '', '', 'MDS - SS - 2710', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4174, 'HIRENDRA SINGH GEHLOT', 'MR. DALPAT SINGH GEHLOT', 'MRS. VIJAY LAXMI GEHLOT', '', '', 'MDS-SS-3030', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4175, 'HONEY NALWAYA', 'MR. SANJAY NALWAYA', 'MRS. ASHA NALWAYA', '', '', 'MDS - SS - 2647', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4176, 'HRISHIK JOSHI', 'MR. LOKESH JOSHI', 'MRS. SHANTA JOSHI', '', '', 'MDS - SS - 2775', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4177, 'ISHAN JAIN', 'MR. HANS KUMAR JAIN', 'MRS. LAJJA JAIN', '1999-08-24', 'Udaipur', 'MDS - SS- 2576', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4178, 'JAY PARIKH', 'MR. LALIT KUMAR PARIKH', 'MRS. NIDHI SONI', '', '', 'MDS - SS - 2658', 0, 13, 3, '', 'JP', '', '0000-00-00');
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`) VALUES
(4179, 'JAYA GUPTA', 'MR. DEVENDRA GUPTA', 'MRS. MEENA GUPTA', '', '', 'MDS - SS - 2773', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4180, 'JAYANT OJHA', 'MR. KRISHNA KUMAR OJHA', 'MRS. PRABHA OJHA', '', '', 'MDS - SS - 2615', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4181, 'JYOTIRMAY SWARNKAR', 'MR. LALCHAND SWARNKAR', 'MRS. MEENA SWARNKAR', '', '', 'MDS - SS - 2756', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4182, 'KALPIT KOTHARI', 'DR. MAHESH KOTHARI', 'MRS. SUNITA KOTHARI', '', '', 'MDS - SS - 2812', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4183, 'KALPIT VEERWAL', 'MR. PUSHKAR LAL VEERWAL', 'MRS. PUSHPA VEERWAL', '', '', 'MDS - SS - 1281', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4184, 'KAPIL JAIN', 'MR. RAMESH KUMAR TALETIA', 'MRS. BHAWANA JAIN', '', '', 'MDS - SS - 2607', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4185, 'KARIL GARG', 'MR. TARUN GARG', 'MRS. MANISHA GARG', '', '', 'MDS - SS - 2792', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4186, 'KEERTI HARPAVAT', 'MR. BHUPENDRA HARPAVAT', 'MRS. PUSHPA HARPAVAT', '', '', 'MDS - SS - 2649', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4187, 'KHUSHI TALESRA', 'MR. KULDEEPAK TALESARA', 'DR. ANITA TALESRA', '', '', 'MDS - SS - 2634', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4188, 'KINSHUK CHAPLOT', 'KAMAL CHAPLOT', 'SAROJ CHAPLOT', '', '', 'MDS - SS - 2594', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4189, 'KISHAN MANDOWARA', 'MR. SATY NARAYNA MANDOWARA', 'MRS. DAKSHA MANDOWARA', '', '', 'MDS - SS - 2571', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4190, 'KRITI VERMA', 'MR. RAJEEV VERMA', 'MRS. MAMTA VERMA', '', '', 'MDS - SS - 2599', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4191, 'KRITIK PATNI', 'MR. RAKESH PATNI', 'MRS. REKHA JAIN', '', '', 'MDS - SS - 2805', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4192, 'KULIN GALUNDIA', 'MR. KAMAL GALUNDIA', 'MRS. ASHA GALUNDIA', '', '', 'MDS-SS-2983', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4193, 'KUSHAGRA GALUNDIA', 'MR. ANIL GALUNDIA', 'MRS. SHILPA GALUNDIA', '', '', 'MDS - SS - 2576', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4194, 'KUSHAL PRAKASH YADAV', 'MR. VED PRAKASH YADAV', 'MRS. MEENA YADAV', '', '', 'MDS - SS - 1540', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4195, 'MAHIMA JAIN', 'MR. LALIT JAIN', 'MRS. RAKHI JAIN', '', '', 'MDS - SS - 2629', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4196, 'MANAN SHARMA', 'MR. HARIDATT SHARMA', 'MRS. KAVITA SHARMA', '', '', 'MDS - SS - 2691', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4197, 'MANAN SONI', 'MR. SANDEP SONI', 'MRS. MANJU SONI', '', '', 'MDS - SS - 2578', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4198, 'MANAS JAIN', 'MR. NARENDRA KUMAR JAIN', 'MRS. PRERNA JAIN', '', '', 'MDS-SS-2586', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4199, 'MANEET LODHA', 'LATE MR. DINESH LODHA', 'MRS. INDU LODHA', '', '', 'MDS - SS - 2839', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4200, 'MANSI VAISHNAV', 'MR. DINESH VAISHNAV', 'MRS. NEERA VAISHNAV', '', '', 'MDS - SS - 2800', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4201, 'MANVI JOSHI', 'ASHISH JOSHI', 'ARCHANA JOSHI', '', '', 'MDS - SS - 2574', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4202, 'MAYANK MEGHWAL', 'MR. DURGA LAL MEGHWAL', 'MRS. VIDHYA MEGHWAL', '', '', 'MDS - SS - 2747', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4203, 'MEET JOSHI', 'MR. SHAILENDRA JOSHI', 'MRS. CHANCHAL JOSHI', '', '', 'MDS - SS - 2797', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4204, 'MEGHANA GOSWAMI', 'MR. VIJENDRA GIRI GOSWAMI', 'MRS. MADHURLATA PURI', '', '', 'MDS-SS-2978', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4205, 'MISHIKA RAJE RANAWAT', 'MR. MAHAVEER SINGH', 'MRS. ANITA RANAWAT', '', '', 'MDS - SS - 2012', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4206, 'MISHKA JAIN', 'MR. JITENDRA JAIN', 'MRS. SEMA JAIN', '', '', 'MDS-SS-3059', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4207, 'MRIDUL GAJAWAT', 'MR. VINAY GAJAWAT', 'MRS. DISHA GAJAWAT', '', '', 'MDS - SS - 2639', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4208, 'MUFADDAL PATHAN', 'MR. ABDUL KADAR PATHAN', 'MRS. FARIDA PATHAN', '', '', 'MDS - SS - 2567', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4209, 'MUKUL ISRANI', 'MR. DUNGERMAL ISRANI', 'MRS. HEMLATA ISRANI', '', '', 'MDS-SS-3414', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4210, 'MUSKAN AGRAWAL', 'MR. LOKESH AGRAWAL', 'MRS. POOJA AGRAWAL', '', '', 'MDS - SS - 2637', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4211, 'MUSKAN GAMBHIR', 'MR. SURENDRA PAL GAMBHIR', 'MRS. NEELU GAMBHIR', '', '', 'MDS - SS - 2612', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4212, 'NAMAN MATHUR', 'MR. MUKESH MATHUR', 'MRS. SHARDA MATHUR', '', '', 'MDS - SS - 2573', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4213, 'NEHA KUMAWAT', 'MR. SURESH KHANDARIA', 'MRS. GOPI KUMAWAT', '', '', 'MDS - SS - 2662', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4214, 'NEWSHI DUNGERPURIYA', 'MR. RAJKUMAR JAIN', 'MRS. JWELLI JAIN', '', '', 'MDS - SS - 2837', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4215, 'NIKHIL UPADHYAY', 'MR. BHARAT PRAKASH UPADHYAY', 'MRS. RITU UPADHYAY', '', '', 'MDS - SS - 2633', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4216, 'NISHI JAIN', 'MR. AVINASH JAIN', 'MRS. KIRAN JAIN', '', '', 'MDS - SS - 1834', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4217, 'NISHTHA AGRAWAL', 'MR. SUNIL AGRAWAL', 'MRS. MONICA AGRAWAL', '', '', 'MDS - SS - 2610', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4218, 'NISHTHA CHANDALIYA', 'MR. JASWANT SINGH CHANDALIYA', 'MRS. NEELAM CHANDALIYA', '', '', 'MDS - SS - 2825', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4219, 'P  PUVANDRAN', 'MR. PRAKASH SUNDARAM', 'MRS. KANAGAVALLI PRAKASH', '', '', 'MDS - SS - 2618', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4220, 'P  SUHASINI', 'MR. B. PRAVEEN', 'MRS. SUMAN PRAVEEN', '', '', 'MDS-SS-3034', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4221, 'PALASH NAGORI', 'MR. PRAMOD NAGORI', 'MRS. VIDHYA NAGORI', '', '', 'MDS - SS - 2614', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4222, 'PALASH SHARMA', 'MR. VINOD SHARMA', 'MRS. NITU SHARMA', '', '', 'MDS-SS-2956', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4223, 'PARTH JAWALIA', 'MR. ARYENDRA JAWALIA', 'MRS. ALKA JAWALIA', '', '', 'MDS - SS - 2834', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4224, 'PARTH SEN', 'MR. HARISH KUMAR SEN', 'MRS. MEENA SEN', '', '', 'MDS - SS - 2759', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4225, 'PERUL JAIN', 'MR. VISHAL JAIN', 'MRS. SIDDHI JAIN', '', '', 'MDS - SS - 2619', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4226, 'POOJAN SONI', 'MR. PARAS RAM SONI', 'MRS. JYOTI SONI', '', '', 'MDS - SS - 2613', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4227, 'PRACHI PAMECHA', 'MR. ANUPAM PAMECHA', 'MRS. SUDHA PAMECHA', '', '', 'MDS - SS - 2590', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4228, 'PRAJWAL PAWAR', 'MR. PRAMNDRA SINGH', 'MRS. POONAM SINGH', '', '', 'MDS - SS - 2568', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4229, 'PRANAV AMETA', 'MR. KAMLESH AMETA', 'MRS. USHA AMETA', '', '', 'MDS - SS - 2572', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4230, 'PRATEEK DEMBLA', 'MR. KAILASH DEMBLA', 'MRS. ROSHNI DEMBLA', '', '', 'MDS - SS - 2631', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4231, 'PRATEEK PAMECHA', 'MR. SHANTI LAL PAMECHA', 'MRS. CHANDRA KALA PAMECHA', '', '', 'MDS - SS - 2836', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4232, 'PRATEEK SHARMA', 'MR. VINAY KUMAR SHARMA', 'MRS. SANDHYA SHARMA', '', '', 'MDS - SS - 2664', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4233, 'PULKIT JAIN', 'MR. RAJESH JAIN', 'MRS. RITU JAIN', '', '', 'MDS-SS-2627', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4234, 'PURVA SINGHVI', 'MR. RAKESH SINGHVI', 'MRS. MADHU SINGHVI', '', '', 'MDS - SS - 2587', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4235, 'PURVI MANDOT', 'DR. SANJAY MANDOT', 'DR. DEEPIKA MANDOT', '', '', 'MDS-SS-2991', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4236, 'RAJAT SINHA', 'MR. RAVI SHANKAR SINHA', 'MRS. GITA SINHA', '', '', 'MDS - SS - 2813', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4237, 'RAM ASHIYA', 'MR. BHAWDEV SINGH ASHIYA', 'MRS. HEMLATA ASHIYA', '', '', 'MDS-SS-2960', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4238, 'RAVI KUMAR MEENA', 'MR. MUKESH MEENA', 'MRS. REKHA MEENA', '', '', 'MDS - SS - 2648', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4239, 'REVA DASHOTTAR', 'MR. AJAY DASHOTTAR', 'MRS. JYOTI DASHOTTAR', '', '', 'MDS-SS-1810', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4240, 'RITWIK JAIN', 'MR. ATUL JAIN', 'MRS. SUSHMA JAIN', '', '', 'MDS - SS - 2605', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4241, 'RUHANSHI BARAD', 'MR. RAJENDRA SINGH BARAD', 'MRS. MEENAKSHI BARAD', '', '', 'MDS-SS-3433', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4242, 'SAYAM CHOUDHARY', 'MR. RAJENDRA CHOUDHARY', 'MRS. LEELA CHOUDHARI', '', '', 'MDS - SS - 2604', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4243, 'SHIVAN MAHESHWARI', 'MR. SANAT KUMAR MAHESHWARI', 'MRS. MAYA MAHESHWARI', '', '', 'MDS-SS-3060', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4244, 'SHIVANGI JAITAWAT', 'MR. HANUMANT SINGH JAITAWAT', 'MRS. NEELAM JAITAWAT', '', '', 'MDS - SS - 2624', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4245, 'SHIVANSH MATHUR', 'MR. AKHIL MATHUR', 'MRS. SANGEETA MATHUR', '', '', 'MDS - SS - 2616', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4246, 'SHREYA PANDEY', 'DR. ANIL KUMAR PANDEY', 'DR. JYOTSNA PANDEY', '', '', 'MDS - SS - 1712', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4247, 'SHUBHAM NAGORI', 'MR. P.S. NAGORI', 'MRS. SANGEETA NAGORI', '', '', 'MDS - SS - 2566', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4248, 'SHUBHI MAHESHWARI', 'MR. SHARAD MAHESHWARI', 'MRS. SHWETA MAHESHWARI', '', '', 'MDS - SS - 2746', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4249, 'SIDDHARTH MEHTA', 'MR. RAVIN MEHTA', 'MRS. PAYAL MEHTA', '', '', 'MDS - SS - 1768', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4250, 'SOMYA KATTA', 'MR.  VINAY KATTA', 'MRS. SUMAN KATTA', '', '', 'MDS-SS-3062', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4251, 'SRISTI JAIN', 'MR. PANKAJ KUMAR GELDA', 'MRS. REKHA CHORDIA', '', '', 'MDS - SS - 2609', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4252, 'SWAPNIL MITTAL', 'MR. DHARMENDRA KUMAR JAIN', 'MRS. ANITA JAIN', '', '', 'MDS - SS - 1806', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4253, 'SWAPNIL PALOD', 'MR. ANIL PALOD', 'MRS. CHANDA PALOD', '', '', 'MDS-SS-2963', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4254, 'TANMAY SINGHVI', 'MR. NIMISH SINGHVI', 'MRS. ARTI SINGHVI', '', '', 'MDS-SS-3054', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4255, 'TANU AGRAWAL', 'MR. KISHAN SWAROOP GOYAL', 'MRS. KANTA AGRAWAL', '', '', 'MDS - SS - 1058', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4256, 'TOKIR ANWAR', 'MR. MAKSOOD ALI', 'MRS. SHABNAM BANU', '', '', 'MDS - SS - 2606', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4257, 'TUSHAR UPADHYAY', 'MR. PRADEEP UPADHYAY', 'MRS. VEENA', '', '', 'MDS - SS - 2650', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4258, 'VEDANT GOYAL', 'DR. K. A. GOYAL', 'DR. AMITA GOYAL', '1970-01-01', 'UDAIPUR', 'MDS - SS - 2717', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4259, 'VEDANT SHARMA', 'MR. S.N. SHARMA', 'MRS. VANDANA SHARMA', '', '', 'MDS-SS-3029', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4260, 'VEERA CHATURVEDI', 'MR. SHARAD CHATURVEDI', 'MRS. CHANDRIKA CHATURVEDI', '', '', 'MDS - SS - 2670', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4261, 'VIBHOR SHROTRIYA', 'MR. D.S. SHROTRIYA', 'MRS. RASHMI SHROTRIYA', '', '', 'MDS - SS - 2044', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4262, 'VIDIT MEHTA', 'MR. SANDEEP MEHTA', 'MRS. JAYA MEHTA', '', '', 'MDS - SS - 2845', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4263, 'VISHAL AMETA', 'MR. HEMENDRA KUMAR AMETA', 'MRS. HEMLATA AMETA', '', '', 'MDS - SS - 2601', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4264, 'VISHAL JAIN', 'MR. JAINENDRA JAIN', 'MRS. PUSHPA JAIN', '', '', 'MDS - SS - 2815', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4265, 'WAHEEDA K R', 'MR. SIRAJ ALI K R', 'MRS. FATIMA K R', '', '', 'MDS - SS - 2585', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4266, 'YASRA FATEMA', 'MR. MOHAMMED YUSUF BEG', 'MRS. PARVEEN', '', '', 'MDS - SS - 2716', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4267, 'YATEENDRA MISHRA', 'MR. TIRTHANAND MISHRA', 'MRS. AJITA MISHRA', '', '', 'MDS - SS - 1693', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4268, 'YUVRAJ DANGI', 'LATE MR. ANIL KUMAR DANGI', 'MRS. CHANDA DANGI', '', '', 'MDS-SS-3327', 0, 13, 3, '', 'JP', '', '0000-00-00'),
(4269, 'name', 'father_name', 'mother_name', 'dob', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00'),
(4270, 'AISHWARYA PANCHAL', 'MR. KRISHAN GOPAL PANCHAL', 'MRS. MEENAKSHEE PANCHAL', '', '', 'MDS - SS - 2661', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4271, 'ANUSHRAV JAIN', 'DR. RAHUL JAIN', 'DR. MADHU BALA JAIN', '', '', 'MDS - SS - 2588', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4272, 'APARNA JAIN', 'MR. JAMBOO KUMAR JAIN', 'MRS. RANI JAIN', '', '', 'MDS - SS - 2772', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4273, 'BHAVINI GURJAR', 'MR. VIJAY K. GURJAR', 'MRS. KAMLESH GURJAR', '', '', 'MDS - SS - 1392', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4274, 'CHANDANIKA DHAKOLIA', 'MR. LALA PRABHU DHAKOLIA', 'MRS. NITU LALA DHAKOLIA', '', '', 'MDS -SS - 2652', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4275, 'DEEPA JOSHI', 'MR. ANIL JOSHI', 'MRS. MEENA JOSHI', '', '', 'MDS - SS - 2715', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4276, 'DEEPANSHI NAGDA', 'MR. PURAN NAGDA', 'MRS. BHAWNA SHARMA', '', '', 'MDS - SS - 2807', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4277, 'KAASHEFA TASKEEN SHEIKH', 'MR. MOHAMMED TASKIN SHEIKH', 'MRS. KAZEMA SHEIKH', '', '', 'MDS - SS - 2663', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4278, 'KANIKA BHARGAVA', 'DR. KAPIL BHARGAVA', 'DR. SHALINI BHARGAVA', '', '', 'MDS - SS - 2153', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4279, 'KSHEMYA PARMAR', 'MR. CHHOGA LAL MEGHWAL', 'MRS. KAILASH MEGHWAL', '', '', 'MDS - SS - 2580', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4280, 'MADHURIYA LODHA', 'MR. MUKESH LODHA', 'MRS. KUSUM BOKADIA', '', '', 'MDS - SS - 1720', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4281, 'MAHAK GOYAL', 'MR. PRAMOD GOYAL', 'MRS. BIMLA AGRAWAL', '', '', 'MDS - SS - 1719', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4282, 'MUSKAAN WADHAWAN', 'DR. GAURAV WADHAWAN', 'DR. NIKITA WADHAWAN', '', '', 'MDS - SS - 2653', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4283, 'NAVNIDHI SHARMA', 'MR. ASHUTOSH SHARMA', 'MRS. GEETA SHARMA', '', '', 'MDS - SS - 1816', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4284, 'NIKITA CHOUDHARY', 'DATTATRAYA CHOUDHARY', 'ASHA CHOUDHARY', '', '', 'MDS - SS - 2620', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4285, 'PALLAVI SRIVASTAVA', 'MR. NISHEETH KUMAR SRIVASTAVA', 'MRS. RASHMI SRIVASTAVA', '', '', 'MDS - SS - 2679', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4286, 'PRATIKSHA REDIYA', 'MR. CHOTHMAL REGAR', 'MRS. GANGESHWAR REGAR', '', '', 'MDS - SS - 2676', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4287, 'SARAH ANSARI', 'MR. MOHAMMED HUSAIN', 'MRS. SHABNAM', '1970-01-01', 'Udaipur', 'MDS-SS-3322', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4288, 'SEJAL VYAS', 'MR. SATISH VYAS', 'MRS. PRAGATI VYAS', '', '', 'MDS - SS - 2804', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4289, 'TANMAYEE BHIMIREDDY', 'MR. BHIMIREDDY RAJA SEKHARA REDDY', 'MRS. BHIMIREDDY SANTHI PRIYA', '1970-01-01', 'UDAIPUR', 'MDS - SS - 2758', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4290, 'TULIKA LASHAKER', 'MR. GANGA RAM LASHAKER', 'MRS. SHAKUNTLA BAIRWA', '', '', 'MDS - SS - 2687', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4291, 'VARTIKA GUPTA', 'DR. LALIT KUMAR GUPTA', 'DR. ANJANA GUPTA', '', '', 'MDS - SS - 2752', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4292, 'VEERAL CHATURVEDI', 'PRAVIN CHATURVEDI', 'MRS. VARSHA CHATURVEDI', '', '', 'MDS - SS - 2342', 0, 13, 4, '', 'MP', '', '0000-00-00'),
(4293, 'SHRUTI SHARMA', 'MUKESH KUMAR', 'Anuradha Sharma', '2000-12-05', '    no', 'MDS-SS-3692', 0, 12, 4, '', 'MA', '', '0000-00-00'),
(4294, 'SHAGUN VERMA', 'Mr Shalandra Verma', 'Neelam Verma', '2009-03-12', 'H.NO. 24 Samta Nagar Sec-3', 'MDSPS-2416', 0, 3, 2, '', '', '', '0000-00-00'),
(4295, ' SRASHTI PAL', 'SHIVOM PAL', 'ANJU PAL', '2009-03-25', 'H.NO. 1153 SEC-4 HIRAN MAGRI UDAIPUR (RAJ.)', 'MDSPS-2415', 0, 4, 1, '', '', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `student_health`
--

CREATE TABLE `student_health` (
  `id` int(11) NOT NULL,
  `scholar_no` varchar(200) NOT NULL,
  `master_health_id` int(11) NOT NULL,
  `value` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` int(20) NOT NULL,
  `scholar_no` varchar(100) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `sub_subject_id` int(11) NOT NULL,
  `term_id` int(5) NOT NULL,
  `exam_category_id` int(11) NOT NULL,
  `master_exam_type_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `scholar_no`, `subject_id`, `sub_subject_id`, `term_id`, `exam_category_id`, `master_exam_type_id`, `marks`) VALUES
(1, '', 1, 0, 1, 1, 1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `student_result`
--

CREATE TABLE `student_result` (
  `id` int(11) NOT NULL,
  `class_id` int(5) NOT NULL,
  `section_id` int(5) NOT NULL,
  `scholar_no` varchar(50) NOT NULL,
  `roll_no` int(9) NOT NULL,
  `term_id` int(2) NOT NULL,
  `total` int(5) NOT NULL COMMENT '(Obtained Marks)',
  `total_marks` varchar(20) NOT NULL COMMENT '(Maximum Marks)',
  `per` varchar(5) NOT NULL,
  `status` varchar(50) NOT NULL,
  `final_status` text NOT NULL,
  `next_class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_result`
--

INSERT INTO `student_result` (`id`, `class_id`, `section_id`, `scholar_no`, `roll_no`, `term_id`, `total`, `total_marks`, `per`, `status`, `final_status`, `next_class_id`) VALUES
(1, 2, 2, 'MDSPS-1319', 0, 1, 0, '0', '0.00', 'Promoted to Class III', 'Pass', 3),
(6, 1, 1, 'MDSPS-1503', 0, 1, 0, '0', '0.00', 'Promoted to Class II', 'Pass', 2),
(7, 0, 0, '', 0, 0, 0, '0', '0.00', 'Promoted to Class I', 'Pass', 1),
(50, 1, 1, '16351', 0, 1, 0, '1400', '0.00', 'Detained in Class Pre Nursery', 'Fail', 1),
(54, 7, 1, '', 0, 1, 0, '0', '0.00', 'Promoted to Class IV', 'Pass', 8),
(59, 1, 1, '', 0, 1, 5, '1200', '0.42', 'Detained in Class Pre Nursery', 'Fail', 1);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `elective` int(2) NOT NULL,
  `senior` int(2) NOT NULL,
  `sub_subjects` varchar(5) NOT NULL,
  `grade` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject`, `elective`, `senior`, `sub_subjects`, `grade`) VALUES
(1, 'English', 0, 0, '', ''),
(2, 'Hindi', 0, 0, '', ''),
(3, 'Maths', 0, 1, '', ''),
(4, 'EVS', 0, 0, '', ''),
(5, 'Computer', 0, 1, '', ''),
(6, 'G.K.', 0, 0, '', ''),
(7, 'Art', 0, 0, '', 'G'),
(8, 'Physical Education', 0, 1, '', 'G'),
(9, 'Music', 0, 0, '', 'G'),
(10, 'Science', 0, 0, '', ''),
(11, 'Social Study', 0, 0, '', ''),
(12, 'Sanskrit', 1, 0, '', ''),
(13, 'French', 1, 0, '', ''),
(14, 'Physics', 0, 0, '', ''),
(15, 'Chemistry', 0, 0, '', ''),
(16, 'Biology', 0, 1, '', ''),
(17, 'Business Study', 0, 0, '', ''),
(18, 'Accounts', 0, 0, '', ''),
(19, 'Economics', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `subject_allocation`
--

CREATE TABLE `subject_allocation` (
  `id` int(20) NOT NULL,
  `class_id` int(20) NOT NULL,
  `section_id` int(5) NOT NULL,
  `subject_id` int(20) NOT NULL,
  `sub_subject_id` int(11) NOT NULL,
  `elective` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_allocation`
--

INSERT INTO `subject_allocation` (`id`, `class_id`, `section_id`, `subject_id`, `sub_subject_id`, `elective`) VALUES
(1, 12, 1, 1, 0, 0),
(2, 12, 1, 2, 0, 0),
(3, 12, 1, 14, 0, 0),
(4, 12, 1, 15, 0, 0),
(5, 12, 1, 0, 0, 3),
(6, 12, 1, 0, 0, 5),
(7, 12, 1, 0, 0, 8),
(8, 12, 1, 0, 0, 16),
(9, 12, 1, 0, 0, 17),
(10, 12, 1, 0, 0, 18),
(11, 11, 1, 1, 0, 0),
(12, 11, 1, 14, 1, 0),
(13, 11, 1, 15, 1, 0),
(14, 11, 1, 0, 0, 3),
(15, 11, 1, 0, 0, 8),
(16, 11, 1, 0, 0, 16),
(17, 11, 2, 0, 0, 3),
(18, 11, 2, 0, 0, 8),
(19, 11, 2, 0, 0, 16),
(20, 11, 2, 1, 0, 0),
(21, 11, 2, 14, 0, 0),
(22, 11, 2, 15, 0, 0),
(23, 1, 1, 1, 0, 0),
(24, 1, 1, 2, 0, 0),
(25, 1, 1, 3, 0, 0),
(26, 1, 1, 4, 0, 0),
(27, 1, 1, 5, 0, 0),
(28, 1, 1, 6, 0, 0),
(29, 1, 1, 7, 0, 0),
(30, 1, 1, 8, 0, 0),
(31, 1, 1, 9, 0, 0),
(32, 2, 1, 1, 0, 0),
(33, 2, 1, 2, 0, 0),
(34, 2, 1, 3, 0, 0),
(35, 2, 1, 4, 0, 0),
(36, 2, 1, 5, 0, 0),
(37, 2, 1, 6, 0, 0),
(38, 2, 1, 7, 0, 0),
(39, 2, 1, 8, 0, 0),
(40, 2, 1, 9, 0, 0),
(41, 3, 1, 1, 0, 0),
(42, 3, 1, 2, 0, 0),
(43, 3, 1, 3, 0, 0),
(44, 3, 1, 5, 0, 0),
(45, 3, 1, 6, 0, 0),
(46, 3, 1, 7, 0, 0),
(47, 3, 1, 8, 0, 0),
(48, 3, 1, 9, 0, 0),
(49, 3, 1, 10, 0, 0),
(50, 3, 1, 11, 0, 0),
(51, 4, 1, 1, 0, 0),
(52, 4, 1, 2, 0, 0),
(53, 4, 1, 3, 0, 0),
(54, 4, 1, 5, 0, 0),
(55, 4, 1, 6, 0, 0),
(56, 4, 1, 7, 0, 0),
(57, 4, 1, 8, 0, 0),
(58, 4, 1, 9, 0, 0),
(59, 4, 1, 10, 0, 0),
(60, 4, 1, 11, 0, 0),
(61, 5, 1, 1, 0, 0),
(62, 5, 1, 2, 0, 0),
(63, 5, 1, 3, 0, 0),
(64, 5, 1, 5, 0, 0),
(65, 5, 1, 6, 0, 0),
(66, 5, 1, 7, 0, 0),
(67, 5, 1, 8, 0, 0),
(68, 5, 1, 9, 0, 0),
(69, 5, 1, 10, 0, 0),
(70, 5, 1, 11, 0, 0),
(71, 10, 1, 0, 0, 12),
(72, 10, 1, 0, 0, 13),
(73, 12, 5, 1, 0, 0),
(74, 12, 5, 8, 0, 0),
(75, 12, 5, 17, 0, 0),
(76, 12, 5, 18, 0, 0),
(77, 12, 5, 19, 0, 0),
(78, -1, 1, 1, 0, 0),
(79, -1, 1, 2, 0, 0),
(80, 8, 1, 1, 0, 0),
(81, 8, 1, 2, 0, 0),
(82, 8, 1, 3, 0, 0),
(83, 8, 1, 5, 0, 0),
(84, 8, 1, 6, 0, 0),
(85, 8, 1, 7, 0, 0),
(86, 8, 1, 8, 0, 0),
(87, 8, 1, 9, 0, 0),
(88, 8, 1, 10, 0, 0),
(89, 8, 1, 11, 0, 0),
(90, 7, 1, 1, 0, 0),
(91, 7, 1, 2, 0, 0),
(92, 7, 1, 3, 0, 0),
(93, 7, 1, 5, 0, 0),
(94, 7, 1, 6, 0, 0),
(95, 7, 1, 7, 0, 0),
(96, 7, 1, 8, 0, 0),
(97, 7, 1, 9, 0, 0),
(98, 7, 1, 10, 0, 0),
(99, 7, 1, 11, 0, 0),
(100, 6, 1, 1, 0, 0),
(101, 6, 1, 2, 0, 0),
(102, 6, 1, 3, 0, 0),
(103, 6, 1, 5, 0, 0),
(104, 6, 1, 6, 0, 0),
(105, 6, 1, 7, 0, 0),
(106, 6, 1, 8, 0, 0),
(107, 6, 1, 9, 0, 0),
(108, 6, 1, 10, 0, 0),
(109, 6, 1, 11, 0, 0),
(110, 6, 1, 0, 0, 12),
(111, 6, 1, 0, 0, 13),
(112, 8, 1, 0, 0, 12),
(113, 8, 1, 0, 0, 13),
(114, 7, 1, 0, 0, 12),
(115, 7, 1, 0, 0, 13),
(116, 9, 1, 1, 0, 0),
(117, 9, 1, 2, 0, 0),
(118, 9, 1, 3, 0, 0),
(119, 9, 1, 10, 0, 0),
(120, 9, 1, 11, 0, 0),
(121, 10, 1, 1, 0, 0),
(122, 10, 1, 2, 0, 0),
(123, 10, 1, 3, 0, 0),
(124, 10, 1, 10, 0, 0),
(125, 10, 1, 11, 0, 0),
(126, 11, 3, 1, 0, 0),
(127, 11, 3, 3, 0, 0),
(128, 11, 3, 8, 0, 0),
(129, 11, 3, 14, 0, 0),
(130, 11, 3, 15, 0, 0),
(131, 11, 4, 1, 0, 0),
(132, 11, 4, 8, 0, 0),
(133, 11, 4, 14, 0, 0),
(134, 11, 4, 15, 0, 0),
(135, 11, 4, 16, 0, 0),
(136, 12, 3, 1, 0, 0),
(137, 12, 3, 3, 0, 0),
(138, 12, 3, 8, 0, 0),
(139, 12, 3, 14, 0, 0),
(140, 12, 3, 15, 0, 0),
(141, 12, 4, 1, 0, 0),
(142, 12, 4, 8, 0, 0),
(143, 12, 4, 14, 0, 0),
(144, 12, 4, 15, 0, 0),
(145, 12, 4, 16, 0, 0),
(146, 11, 3, 0, 0, 5),
(147, 11, 3, 0, 0, 13),
(148, 11, 5, 1, 0, 0),
(149, 11, 5, 17, 0, 0),
(150, 11, 5, 18, 0, 0),
(151, 11, 5, 0, 0, 3),
(152, 11, 5, 0, 0, 19),
(153, 1, 2, 1, 0, 0),
(154, 1, 2, 2, 0, 0),
(155, 1, 2, 3, 0, 0),
(156, 1, 2, 4, 0, 0),
(157, 1, 2, 5, 0, 0),
(158, 1, 2, 6, 0, 0),
(159, 1, 2, 7, 0, 0),
(160, 1, 2, 8, 0, 0),
(161, 1, 2, 9, 0, 0),
(162, 2, 2, 1, 0, 0),
(163, 2, 2, 2, 0, 0),
(164, 2, 2, 3, 0, 0),
(165, 2, 2, 4, 0, 0),
(166, 2, 2, 5, 0, 0),
(167, 2, 2, 6, 0, 0),
(168, 2, 2, 7, 0, 0),
(169, 2, 2, 8, 0, 0),
(170, 2, 2, 9, 0, 0),
(171, 3, 2, 1, 0, 0),
(172, 3, 2, 2, 0, 0),
(173, 3, 2, 3, 0, 0),
(174, 3, 2, 5, 0, 0),
(175, 3, 2, 6, 0, 0),
(176, 3, 2, 7, 0, 0),
(177, 3, 2, 8, 0, 0),
(178, 3, 2, 9, 0, 0),
(179, 3, 2, 10, 0, 0),
(180, 3, 2, 11, 0, 0),
(181, 4, 2, 1, 0, 0),
(182, 4, 2, 2, 0, 0),
(183, 4, 2, 3, 0, 0),
(184, 4, 2, 5, 0, 0),
(185, 4, 2, 6, 0, 0),
(186, 4, 2, 7, 0, 0),
(187, 4, 2, 8, 0, 0),
(188, 4, 2, 9, 0, 0),
(189, 4, 2, 10, 0, 0),
(190, 4, 2, 11, 0, 0),
(191, 5, 2, 1, 0, 0),
(192, 5, 2, 2, 0, 0),
(193, 5, 2, 3, 0, 0),
(194, 5, 2, 5, 0, 0),
(195, 5, 2, 6, 0, 0),
(196, 5, 2, 7, 0, 0),
(197, 5, 2, 8, 0, 0),
(198, 5, 2, 9, 0, 0),
(199, 5, 2, 10, 0, 0),
(200, 5, 2, 11, 0, 0),
(201, 8, 2, 1, 0, 0),
(202, 8, 2, 2, 0, 0),
(203, 8, 2, 3, 0, 0),
(204, 8, 2, 5, 0, 0),
(205, 8, 2, 6, 0, 0),
(206, 8, 2, 7, 0, 0),
(207, 8, 2, 8, 0, 0),
(208, 8, 2, 9, 0, 0),
(209, 8, 2, 10, 0, 0),
(210, 8, 2, 11, 0, 0),
(211, 7, 2, 1, 0, 0),
(212, 7, 2, 2, 0, 0),
(213, 7, 2, 3, 0, 0),
(214, 7, 2, 5, 0, 0),
(215, 7, 2, 6, 0, 0),
(216, 7, 2, 7, 0, 0),
(217, 7, 2, 8, 0, 0),
(218, 7, 2, 9, 0, 0),
(219, 7, 2, 10, 0, 0),
(220, 7, 2, 11, 0, 0),
(221, 6, 2, 1, 0, 0),
(222, 6, 2, 2, 0, 0),
(223, 6, 2, 3, 0, 0),
(224, 6, 2, 5, 0, 0),
(225, 6, 2, 6, 0, 0),
(226, 6, 2, 7, 0, 0),
(227, 6, 2, 8, 0, 0),
(228, 6, 2, 9, 0, 0),
(229, 6, 2, 10, 0, 0),
(230, 6, 2, 11, 0, 0),
(231, 6, 2, 0, 0, 12),
(232, 6, 2, 0, 0, 13),
(233, 8, 2, 0, 0, 12),
(234, 8, 2, 0, 0, 13),
(235, 7, 2, 0, 0, 12),
(236, 7, 2, 0, 0, 13),
(237, 9, 2, 1, 0, 0),
(238, 9, 2, 2, 0, 0),
(239, 9, 2, 3, 0, 0),
(240, 9, 2, 10, 0, 0),
(241, 9, 2, 11, 0, 0),
(242, 10, 2, 1, 0, 0),
(243, 10, 2, 2, 0, 0),
(244, 10, 2, 3, 0, 0),
(245, 10, 2, 10, 0, 0),
(246, 10, 2, 11, 0, 0),
(247, 10, 2, 12, 0, 0),
(248, 10, 2, 13, 0, 0),
(249, 9, 6, 1, 0, 0),
(250, 9, 6, 2, 0, 0),
(251, 9, 6, 3, 0, 0),
(252, 9, 6, 10, 0, 0),
(253, 9, 6, 11, 0, 0),
(254, 10, 6, 1, 0, 0),
(255, 10, 6, 2, 0, 0),
(256, 10, 6, 3, 0, 0),
(257, 10, 6, 10, 0, 0),
(258, 10, 6, 11, 0, 0),
(259, 10, 6, 12, 0, 0),
(260, 10, 6, 13, 0, 0),
(261, 11, 2, 14, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `id` int(11) NOT NULL,
  `roll_no` text NOT NULL,
  `name` text NOT NULL,
  `scholer` text NOT NULL,
  `class` int(11) NOT NULL,
  `section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `roll_no`, `name`, `scholer`, `class`, `section`) VALUES
(2, '5001', 'Aarti Kharadi', '14631', 9, 8),
(3, '5002', 'Aman Khan', '16678', 9, 8),
(4, '5003', 'Bhawesh Ramnani', '13424', 9, 8),
(5, '5004', 'Chakshu Bhati', '12793', 9, 8),
(6, '5005', 'Dhairya Tiwari', '14619', 9, 8),
(7, '5006', 'Diwanshi Bhatnagar', '13247', 9, 8),
(8, '5007', 'Hardik Bhardwaj', '14786', 9, 8),
(9, '5008', 'Harsh Vaishnav', '14014', 9, 8),
(10, '5009', 'Harshvardhan Singh Rathore', '15682', 9, 8),
(11, '5010', 'Heeya Sharma', '15279', 9, 8),
(12, '5011', 'Heeya Vyas', '13109', 9, 8),
(13, '5012', 'Kavya Sharma', '15643', 9, 8),
(14, '5013', 'Lakshita Rawat', '13354', 9, 8),
(15, '5014', 'Lakshyaraj Singh', '', 9, 8),
(16, '5015', 'Lavanya Ajmera', '15657', 9, 8),
(17, '5016', 'Madhvi Khatri', '15728', 9, 8),
(18, '5017', 'Mohit Bhatnagar', '', 9, 8),
(19, '5018', 'Mohit Paliwal', '13383', 9, 8),
(20, '5019', 'Netra Chandrayan', '12716', 9, 8),
(21, '5020', 'Nidhi Mali', '12897', 9, 8),
(22, '5021', 'Pratham Naresh Jain', '16515', 9, 8),
(23, '5022', 'Prithviraj Guru', '16373', 9, 8),
(24, '5023', 'Sahitya Dave', '12694', 9, 8),
(25, '5024', 'Shorya Vaishnav', '12858', 9, 8),
(26, '5025', 'Somya Lohani', '14950', 9, 8),
(27, '5026', 'Surbhi Rathore', '13269', 9, 8),
(28, '5027', 'Tanmay Kalal', '15280', 9, 8),
(29, '5028', 'Varnika Agarwal', '13379', 9, 8),
(30, '5029', 'Yash Soni', '15110', 9, 8),
(31, '5030', 'Yashika Jain', '15869', 9, 8),
(32, '5031', 'Yug Khaturiya', '14909', 9, 8),
(33, '5032', 'Abhishek Kumar', '16495', 9, 9),
(34, '5033', 'Aryan Panwar', '13999', 9, 9),
(35, '5034', 'Aryan Sharma', '14744', 9, 9),
(36, '5035', 'Bhavesh Garhwal', '13274', 9, 9),
(37, '5036', 'Bhavyanshu  Vaishnav', '14875', 9, 9),
(38, '5037', 'Chandrashekar Paliwal', '13449', 9, 9),
(39, '5038', 'Charul Shrimali', '12758', 9, 9),
(40, '5039', 'Daksh Audichya', '14087', 9, 9),
(41, '5040', 'Dharamveer Sawnkhe', '12722', 9, 9),
(42, '5041', 'Dhreya Pariyani', '13310', 9, 9),
(43, '5042', 'Gaurav Singh', '16504', 9, 9),
(44, '5043', 'Hanshika  Sen', '15658', 9, 9),
(45, '5044', 'Harshita Bhati', '14785', 9, 9),
(46, '5045', 'Himanshu Dangi', '13927', 9, 9),
(47, '5046', 'Janesh Anil Agarwal', '12303', 9, 9),
(48, '5047', 'Jaswinder Kaur', '15753', 9, 9),
(49, '5048', 'Khushbu Patel', '12830', 9, 9),
(50, '5049', 'Krinjal Sharma', '14766', 9, 9),
(51, '5050', 'Manan Jain', '12640', 9, 9),
(52, '5051', 'Mohit Swami', '14782', 9, 9),
(53, '5052', 'Nandini Sahu', '14790', 9, 9),
(54, '5053', 'Nayan Wadhwani', '12705', 9, 9),
(55, '5054', 'Niharika Walvani', '14044', 9, 9),
(56, '5055', 'Nitin Borana', '12982', 9, 9),
(57, '5056', 'Palaksh Sharma', '12729', 9, 9),
(58, '5057', 'Prabhgun Singh Bhui', '13395', 9, 9),
(59, '5058', 'Raghav Kansara', '13993', 9, 9),
(60, '5059', 'Soham Dadhich', '14148', 9, 9),
(61, '5060', 'Sujal Damor', '15376', 9, 9),
(62, '5061', 'Tanushree  Rathore', '15282', 9, 9),
(63, '5062', 'Yuvraj Vaishnav', '14761', 9, 9),
(64, '5063', 'Akshay Chakrawati', '15283', 9, 10),
(65, '5064', 'Anjali Kumawat', '13863', 9, 10),
(66, '5065', 'Anshul Chanderia', '14595', 9, 10),
(67, '5066', 'Arth Singh Panwar', '16431', 9, 10),
(68, '5067', 'Daksh Choudhary', '15281', 9, 10),
(69, '5068', 'Deepak Suthar', '13662', 9, 10),
(70, '5069', 'Diya Joshi', '14930', 9, 10),
(71, '5070', 'Druvin  Dhupiya', '12733', 9, 10),
(72, '5071', 'Duaa Rawat', '13353', 9, 10),
(73, '5072', 'Garv Bhardwaj', '16199', 9, 10),
(74, '5073', 'Gautam Sharma', '15334', 9, 10),
(75, '5074', 'Giriraj Joshi', '16139', 9, 10),
(76, '5075', 'Jatin Gujar', '14186', 9, 10),
(77, '5076', 'Kamakshi Choudhary', '12292', 9, 10),
(78, '5077', 'Kathanshi Jain', '13328', 9, 10),
(79, '5078', 'Khawahish Sharma', '13345', 9, 10),
(80, '5079', 'Krish Bhalodia', '14007', 9, 10),
(81, '5080', 'Krishna Karda', '13420', 9, 10),
(82, '5081', 'Manthan Nara', '12961', 9, 10),
(83, '5082', 'Muskan Kalra', '16311', 9, 10),
(84, '5083', 'Neeraj Aswani', '15692', 9, 10),
(85, '5084', 'Pranjal Sukhwal', '15078', 9, 10),
(86, '5085', 'Priyansh Soni', '13587', 9, 10),
(87, '5086', 'Ranu Prajapat', '13118', 9, 10),
(88, '5087', 'Riya Bhatt', '12939', 9, 10),
(89, '5088', 'Sourabh Sharma', '12706', 9, 10),
(90, '5089', 'Swaraj Singh Tanwar', '16642', 9, 10),
(91, '5090', 'Tushar jain', '12463', 9, 10),
(92, '5091', 'Vedika Tak', '12704', 9, 10),
(93, '5092', 'Yashashvi Rathore', '15393', 9, 10),
(94, '5093', 'Yuvraj Devra', '12973', 9, 10),
(95, '5094', 'Abhinav Raj Jhala', '13799', 9, 11),
(96, '5095', 'Abhishek Soni', '13172', 9, 11),
(97, '5096', 'Apruva Chakravorty', '14103', 9, 11),
(98, '5097', 'Ayush Lohar', '14054', 9, 11),
(99, '5098', 'Bhupesh Kumar  Ojat', '14922', 9, 11),
(100, '5099', 'Chirag Bajpai', '13226', 9, 11),
(101, '5100', 'Dhriti Singh Panwar', '15711', 9, 11),
(102, '5101', 'Gunjan Katara', '12780', 9, 11),
(103, '5102', 'Harshit Chug', '12725', 9, 11),
(104, '5103', 'Harshita Yadav', '12737', 9, 11),
(105, '5104', 'Harshraj Singh Ranawat', '13569', 9, 11),
(106, '5105', 'Harvi Pandya', '14006', 9, 11),
(107, '5106', 'Kanak Audichya', '12517', 9, 11),
(108, '5107', 'Karanveer Singh Devda', '12842', 9, 11),
(109, '5108', 'Khushi Upadhyay', '16130', 9, 11),
(110, '5109', 'Lakshya Mamnani', '12860', 9, 11),
(111, '5110', 'Lovepreet Singh', '16178', 9, 11),
(112, '5111', 'Manan Kalara', '12730', 9, 11),
(113, '5112', 'Manitya Upadhyay', '13285', 9, 11),
(114, '5113', 'Mokshal Jain', '13129', 9, 11),
(115, '5114', 'Nehal Jain', '12794', 9, 11),
(116, '5115', 'Neerja Sharma', '16308', 9, 11),
(117, '5116', 'Pragati Dulani', '13624', 9, 11),
(118, '5117', 'Prakhar Bhawsar', '16401', 9, 11),
(119, '5118', 'Pranjal Jain', '16116', 9, 11),
(120, '5119', 'Prateek Chapriband', '13889', 9, 11),
(121, '5120', 'Priyank Tater', '12528', 9, 11),
(122, '5121', 'Riddhi Prajapat', '13119', 9, 11),
(123, '5122', 'Rishi Jain', '14886', 9, 11),
(124, '5123', 'Sarvesh Audichya', '12783', 9, 11),
(125, '5124', 'Siddhi Chouhan', '13193', 9, 11),
(126, '5125', '  Tanvi Jajot', '16385', 9, 11),
(127, '5126', 'Tanishk Kasera', '14179', 9, 11),
(128, '4001', 'Aastha Jain', '13434', 8, 8),
(129, '4002', 'Aavay  Bandi', '13028', 8, 8),
(130, '4003', 'Charvi Jain', '16357', 8, 8),
(131, '4004', 'Dhruvit  Alawat', '14807', 8, 8),
(132, '4005', 'Divyansh Patel', '14584', 8, 8),
(133, '4006', 'Divyanshi Chhatwani', '14783', 8, 8),
(134, '4007', 'Garvit Suhalka', '13370', 8, 8),
(135, '4008', 'Granth Jain', '14015', 8, 8),
(136, '4009', 'Jahanvi Hada', '12821', 8, 8),
(137, '4010', 'Jaivardhan Singh Jhala', '16095', 8, 8),
(138, '4011', 'Jyaistha Rathore', '15226', 8, 8),
(139, '4012', 'Jyoti Ratore', '14211', 8, 8),
(140, '4013', 'Kushal Patel', '12955', 8, 8),
(141, '4014', 'Lakshita Sahu', '14026', 8, 8),
(142, '4015', 'Lakshya Singh Panwar', '16430', 8, 8),
(143, '4016', 'Megha Jain', '16404', 8, 8),
(144, '4017', 'Moxit Singhvi', '13344', 8, 8),
(145, '4018', 'Nency Jain', '13737', 8, 8),
(146, '4019', 'Narendra Jhala', '14398', 8, 8),
(147, '4020', 'Nidhi Choubisa', '12977', 8, 8),
(148, '4021', 'Nishant Mahawar', '14609', 8, 8),
(149, '4022', 'Nishtha Jain', '14016', 8, 8),
(150, '4023', 'Parth Sharma', '16348', 8, 8),
(151, '4024', 'Prince Gorana', '14205', 8, 8),
(152, '4025', 'Sachin Shivnani', '15485', 8, 8),
(153, '4026', 'Sahil Kataria', '15288', 8, 8),
(154, '4027', 'Sahil Soni', '16076', 8, 8),
(155, '4028', 'Tanishka', '15448', 8, 8),
(156, '4029', 'Tanushree Jadia', '14656', 8, 8),
(157, '4030', 'Vaibhavi Bhavsar', '16402', 8, 8),
(158, '4031', 'Vidit Paliwal', '15286', 8, 8),
(159, '4032', 'Yuval Gour', '14095', 8, 8),
(160, '4033', 'Sakshi Sekhawat', '16522', 8, 8),
(161, '4034', 'Rajveer Katara', '13314', 8, 8),
(162, '4035', 'Uttam Singh Jat', '16637', 8, 8),
(163, '4036', 'Arush Jain', '16667', 8, 8),
(164, '4037', 'Anuj Gupta', '15850', 8, 9),
(165, '4038', 'Arjun Diwakar', '13782', 8, 9),
(166, '4039', 'Avani Jain', '13406', 8, 9),
(167, '4040', 'Bhavya Menaria', '16033', 8, 9),
(168, '4041', 'Devprakash Kumawat', '14828', 8, 9),
(169, '4042', 'Devraj Salvi', '13821', 8, 9),
(170, '4043', 'Dheeraj Sharma', '16428', 8, 9),
(171, '4044', 'Dipendra ', '16474', 8, 9),
(172, '4045', 'Divyansh Singh Kachawab', '14638', 8, 9),
(173, '4046', 'Garima Gautam', '15398', 8, 9),
(174, '4047', 'Heemika Doshi', '13957', 8, 9),
(175, '4048', 'Himan Jain', '14885', 8, 9),
(176, '4049', 'Himmat Meena', '15804', 8, 9),
(177, '4050', 'Hinal Ameta', '15081', 8, 9),
(178, '4051', 'Honey Audhichya', '13399', 8, 9),
(179, '4052', 'Madhukar Rajpurohit', '13390', 8, 9),
(180, '4053', 'Monil Sahu', '14784', 8, 9),
(181, '4054', 'Nandini Sahu', '14202', 8, 9),
(182, '4055', 'Nomita Suhalka', '13766', 8, 9),
(183, '4056', 'Palksha Parmar', '15845', 8, 9),
(184, '4057', 'Pushpendra Parmar', '15846', 8, 9),
(185, '4058', 'Rajdeep Datta', '13410', 8, 9),
(186, '4059', 'Shri Sen', '13510', 8, 9),
(187, '4060', 'Tarika Kumawat', '13389', 8, 9),
(188, '4061', 'Vanshika Sahu', '13409', 8, 9),
(189, '4062', 'Vyom Paneri', '13466', 8, 9),
(190, '4063', 'Yash Chouhan', '14127', 8, 9),
(191, '4064', 'Yashika Vaishnav', '13400', 8, 9),
(192, '4065', 'Yuvraj Mochi', '15649', 8, 9),
(193, '4133', 'Jay Shihra', '16615', 8, 9),
(194, '4134', 'Piyush R Singh', '16656', 8, 9),
(195, '4066', 'Ankit Malviya', '14659', 8, 10),
(196, '4067', 'Ankush Sangwani', '16451', 8, 10),
(197, '4068', 'Bhavesh Bagora', '16167', 8, 10),
(198, '4069', 'Bhupendra Singh', '13968', 8, 10),
(199, '4070', 'Dhruva Audhichya', '16001', 8, 10),
(200, '4071', 'Dhruva Joshi', '14052', 8, 10),
(201, '4072', 'Dhruva R Singh', '15287', 8, 10),
(202, '4073', 'Dev Sen', '13650', 8, 10),
(203, '4074', 'Divesh Nimawat', '13441', 8, 10),
(204, '4075', 'Diya Vyas', '14750', 8, 10),
(205, '4076', 'Dushant Pratap S Rathore', '15392', 8, 10),
(206, '4077', 'Gunjit Sharma', '13654', 8, 10),
(207, '4078', 'Hardik Chandwani', '14099', 8, 10),
(208, '4079', 'Harshita Jadia', '14657', 8, 10),
(209, '4080', 'Harshita Prajapat', '13914', 8, 10),
(210, '4081', 'Himanshi Jashi', '16421', 8, 10),
(211, '4082', 'Hiya Salvi', '13387', 8, 10),
(212, '4083', 'Kratika Joshi', '15457', 8, 10),
(213, '4084', 'Lahar Pratap S Rajawat', '13876', 8, 10),
(214, '4085', 'Mayur Choubisa', '15071', 8, 10),
(215, '4086', 'Nupur Maheshwari', '13397', 8, 10),
(216, '4087', 'Prakhar Singh Bharva', '14916', 8, 10),
(217, '4088', 'Praval Prajapat', '15414', 8, 10),
(218, '4089', 'Prem Gehi', '14065', 8, 10),
(219, '4090', 'Priyank Sahu', '13848', 8, 10),
(220, '4091', 'Rajveer Vaishnav', '15224', 8, 10),
(221, '4092', 'Saksham Jain', '13401', 8, 10),
(222, '4093', 'Savya Sanchi Vyas', '15747', 8, 10),
(223, '4094', 'Sneha Pareek', '14507', 8, 10),
(224, '4095', 'Aditya Meghwal', '16214', 8, 10),
(225, '4096', 'Yashwin Vaishnav', '14462', 8, 10),
(226, '4097', 'Yashmita Kunwar', '16127', 8, 10),
(227, '4098', 'Yuvraj Singh Rathore', '15212', 8, 10),
(228, '4099', 'Ayush Vairagi', '13418', 8, 11),
(229, '4100', 'Anurag Patel', '13928', 8, 11),
(230, '4101', 'Avani Rawat', '13875', 8, 11),
(231, '4102', 'Bhawani Singh', '16488', 8, 11),
(232, '4103', 'Bhavya Jain', '13790', 8, 11),
(233, '4104', 'Bhavya Rathore', '15285', 8, 11),
(234, '4105', 'Daksh Khatri', '13675', 8, 11),
(235, '4106', 'Diptanshuka Singh', '16161', 8, 11),
(236, '4107', 'Dishiraj Singh', '15878', 8, 11),
(237, '4108', 'Divita Acharya', '16396', 8, 11),
(238, '4109', 'Divya Pariyani', '13607', 8, 11),
(239, '4110', 'Divyanshi Sharma ', '14489', 8, 11),
(240, '4111', 'Divyanshi Vadera', '16258', 8, 11),
(241, '4112', 'Gunjan Sharma', '13398', 8, 11),
(242, '4113', 'Hitansh Parikh', '15860', 8, 11),
(243, '4114', 'Hitarth Tabiyad ', '16098', 8, 11),
(244, '4115', 'Hitesh Patel', '13936', 8, 11),
(245, '4116', 'Insiya Bambora', '14024', 8, 11),
(246, '4117', 'Jiya Chouhan', '13553', 8, 11),
(247, '4118', 'Keshav Mantri', '14171', 8, 11),
(248, '4119', 'Khiloni Kalal', '15645', 8, 11),
(249, '4120', 'Nayan Parmar', '14500', 8, 11),
(250, '4121', 'Parthiv Choubisa', '13480', 8, 11),
(251, '4122', 'Prashant Singh', '16565', 8, 11),
(252, '4123', 'Raviraj Sharma', '16461', 8, 11),
(253, '4124', 'Sagar Suman', '16445', 8, 11),
(254, '4125', 'Shashwat Paliwal', '14294', 8, 11),
(255, '4126', 'Shivanee Rot', '16229', 8, 11),
(256, '4127', 'Shubham Singh', '13951', 8, 11),
(257, '4128', 'Tanish Singh Chouhan', '13426', 8, 11),
(258, '4129', 'Vasudha Damor', '14501', 8, 11),
(259, '4130', 'Veenal Trivedi', '13780', 8, 11),
(260, '4131', 'Yashraj Chaparwal', '16447', 8, 11),
(261, '4132', 'Akansha Meena', '16669', 8, 11),
(262, '3001', 'Aaliya Kausar', '14691', 7, 8),
(263, '3002', 'Aditya Singh', '16505', 7, 8),
(264, '3003', 'Aditi Sharma', '14208', 7, 8),
(265, '3004', 'Adnan Khan', '16653', 7, 8),
(266, '3005', 'Agrim Kuriyal', '15451', 7, 8),
(267, '3006', 'Amisha Saini', '14388', 7, 8),
(268, '3007', 'Amiksha Bhati', '14130', 7, 8),
(269, '3008', 'Chitransha Chawala', '16539', 7, 8),
(270, '3009', 'Divyanshi Jain', '14693', 7, 8),
(271, '3010', 'Divyanshu Pandey', '16369', 7, 8),
(272, '3011', 'Durwakshi Menariya', '15824', 7, 8),
(273, '3012', 'Harshita  Chouhan', '16045', 7, 8),
(274, '3013', 'Himadari Kuwar Chouhan', '15289', 7, 8),
(275, '3014', 'Ishwar Bhatnagar', '14108', 7, 8),
(276, '3015', 'Kartik Vaishnav', '14646', 7, 8),
(277, '3016', 'Krishnakant Borana', '14178', 7, 8),
(278, '3017', 'Laksh Kumawat', '16347', 7, 8),
(279, '3018', 'Mehak Mehra', '16512', 7, 8),
(280, '3019', 'Mahi Lodha', '14694', 7, 8),
(281, '3020', 'Moh. Anas', '16491', 7, 8),
(282, '3021', 'Naitik Sood', '16574', 7, 8),
(283, '3022', 'Navjot Kaur Karanwat', '15755', 7, 8),
(284, '3023', 'P. Moksheshwar', '16006', 7, 8),
(285, '3024', 'Parin Walwani', '14690', 7, 8),
(286, '3025', 'Pranshu Singh Rajpurohit', '13396', 7, 8),
(287, '3026', 'Pratyush Suhalka', '14664', 7, 8),
(288, '3027', 'Prince Trivedi', '16658', 7, 8),
(289, '3028', 'Ritika Sharma', '15676', 7, 8),
(290, '3029', 'Rohit Dangi', '15663', 7, 8),
(291, '3030', 'Sunita Mavliya', '15148', 7, 8),
(292, '3031', 'Trupti Kuwar Chouhan', '15290', 7, 8),
(293, '3032', 'Yashika kalra', '14008', 7, 8),
(294, '3033', 'Yatharth Soni', '13879', 7, 8),
(295, '3034', 'Aaditya Sharma', '16394', 7, 9),
(296, '3035', 'Abhinav Singh', '16648', 7, 9),
(297, '3036', 'Akshay Dodiyar', '16378', 7, 9),
(298, '3037', 'Bhavya Patel', '14567', 7, 9),
(299, '3038', 'Chavi Prajapat', '15413', 7, 9),
(300, '3039', 'Daksh Wadhwa', '14110', 7, 9),
(301, '3040', 'Devraj Singh Chouhan', '14780', 7, 9),
(302, '3041', 'Gaurav Kharadi', '14632', 7, 9),
(303, '3042', 'Harshita Vasita', '15291', 7, 9),
(304, '3043', 'Himani Modiya', '16168', 7, 9),
(305, '3044', 'Kartik Goyal', '16029', 7, 9),
(306, '3045', 'Kritika Sen', '14671', 7, 9),
(307, '3046', 'Lakshya Raj Chouhan', '16448', 7, 9),
(308, '3047', 'Mannat Jain', '14083', 7, 9),
(309, '3048', 'Mayank Singh Tanwar', '16641', 7, 9),
(310, '3049', 'Meetali Soni', '15293', 7, 9),
(311, '3050', 'Parikshit Meena', '13909', 7, 9),
(312, '3051', 'Parv Jain', '14884', 7, 9),
(313, '3052', 'Paritosh Garg', '14605', 7, 9),
(314, '3053', 'Prayas Mali', '13386', 7, 9),
(315, '3054', 'Prince Paliwal', '16012', 7, 9),
(316, '3055', 'Priyansh Hasija', '14760', 7, 9),
(317, '3056', 'Rajveer Chug', '13419', 7, 9),
(318, '3057', 'Samridhi Sain', '13946', 7, 9),
(319, '3058', 'Sanjay Singh', '16564', 7, 9),
(320, '3059', 'Siddharth Paliwal', '14018', 7, 9),
(321, '3060', 'Sristhi Chaturvedi', '16325', 7, 9),
(322, '3061', 'Sweeti Lohar', '16120', 7, 9),
(323, '3062', 'Trisha Tripathi', '15843', 7, 9),
(324, '3063', 'Vashali Chavda', '16370', 7, 9),
(325, '3064', 'Vaishnavi Paliwal', '14019', 7, 9),
(326, '3065', 'Vinay Nagda', '15294', 7, 9),
(327, '3066', 'Yashraj Singh Chouhan', '14781', 7, 9),
(328, '3067', 'Anees Meena', '15882', 7, 10),
(329, '3068', 'Chaitanya Vishwakarma', '15297', 7, 10),
(330, '3069', 'Chhavi Ameta', '14565', 7, 10),
(331, '3070', 'Daksha Chaplot', '14001', 7, 10),
(332, '3071', 'Divyansh Moad', '16419', 7, 10),
(333, '3072', 'Gauri Kumawat', '14687', 7, 10),
(334, '3073', 'Harsh', '16654', 7, 10),
(335, '3074', 'Hitarth Kumawat', '14689', 7, 10),
(336, '3075', 'Ishan Vijayargiya', '14695', 7, 10),
(337, '3076', 'Jayansh Joshi', '14716', 7, 10),
(338, '3077', 'Kavish Tak', '16069', 7, 10),
(339, '3078', 'Nandini Chouhan', '14013', 7, 10),
(340, '3079', 'Neel Jain', '14569', 7, 10),
(341, '3080', 'Neha Chawala', '13967', 7, 10),
(342, '3081', 'Piyanshi Ranawat', '14904', 7, 10),
(343, '3082', 'Prakhar Bhatnagar', '14546', 7, 10),
(344, '3083', 'Punit Rathore', '14697', 7, 10),
(345, '3084', 'Ratna Kumawat', '14692', 7, 10),
(346, '3085', 'Romil Parikh', '14022', 7, 10),
(347, '3086', 'Sakshi Patel', '14010', 7, 10),
(348, '3087', 'Sameer Damor', '15708', 7, 10),
(349, '3088', 'Sejal Dashora', '16034', 7, 10),
(350, '3089', 'Siddh Katara', '13956', 7, 10),
(351, '3090', 'Simran Das', '16223', 7, 10),
(352, '3091', 'Shubhanshu Vaishnav', '15468', 7, 10),
(353, '3092', 'Suryadev Singh Rathore', '14197', 7, 10),
(354, '3093', 'Tanisha Prajapat', '15415', 7, 10),
(355, '3094', 'Tanishka Khandelwal', '15118', 7, 10),
(356, '3095', 'Vaibhav  Acharya', '15665', 7, 10),
(357, '3096', 'Vaibhav Sharma', '14566', 7, 10),
(358, '3097', 'Vimlata Dangi', '14882', 7, 10),
(359, '3098', 'Vinay Choudhary', '13388', 7, 10),
(360, '2001', 'Aaradhya Sharma', '16393', 6, 8),
(361, '2002', 'Aditi Pandya', '15090', 6, 8),
(362, '2003', 'Avni Shakdwipee', '14795', 6, 8),
(363, '2004', 'Bhavya Vaishnav', '16064', 6, 8),
(364, '2005', 'Bhoumik Bhatt', '15140', 6, 8),
(365, '2006', 'Daksh Sen', '16344', 6, 8),
(366, '2007', 'Disha Kunwar', '14811', 6, 8),
(367, '2008', 'Gagan Rawal', '15157', 6, 8),
(368, '2009', 'Hemant Ahari', '16328', 6, 8),
(369, '2010', 'Jai Prajapati', '16011', 6, 8),
(370, '2011', 'Jayaditya Ajmera', '14827', 6, 8),
(371, '2012', 'Kartik Bariwal', '16536', 6, 8),
(372, '2013', 'Khushal Paliwal', '15029', 6, 8),
(373, '2014', 'Lakshit Mali', '14830', 6, 8),
(374, '2015', 'Lavanya Gupta', '14859', 6, 8),
(375, '2016', 'Navadha Joshi', '14819', 6, 8),
(376, '2017', 'Pankaj Ramesh Adwani', '15861', 6, 8),
(377, '2018', 'Parth Nara', '14919', 6, 8),
(378, '2019', 'Prabal Paliwal', '14736', 6, 8),
(379, '2020', 'Pranjal Meena', '16602', 6, 8),
(380, '2021', 'Pratistha Rao', '16573', 6, 8),
(381, '2022', 'Priyadarshan Charan', '14812', 6, 8),
(382, '2023', 'Sakshi Sharma', '16057', 6, 8),
(383, '2024', 'Saransh Sharma', '15691', 6, 8),
(384, '2025', 'Sarwagya Trivedi', '15669', 6, 8),
(385, '2026', 'Shubham Choudhary', '15801', 6, 8),
(386, '2027', 'Taniya Diwakar', '15050', 6, 8),
(387, '2028', 'Tejal Mishra', '15154', 6, 8),
(388, '2029', 'Tript Vaishnav', '16107', 6, 8),
(389, '2030', 'Vaibhav Choubisa', '15165', 6, 8),
(390, '2031', 'Vansh Bhardwaj', '16085', 6, 8),
(391, '2032', 'Vijet Jain', '15666', 6, 8),
(392, '2033', 'Vikrant S Chouhan', '16410', 6, 8),
(393, '2034', 'Yash gurjar', '15717', 6, 8),
(394, '2035', 'Yashmeet Solanki', '16074', 6, 8),
(395, '2036', 'Yashwant Singh', '16453', 6, 8),
(396, '2037', 'Zoya Khan', '16015', 6, 8),
(397, '2038', 'Ankit Keer', '15007', 6, 9),
(398, '2039', 'Apeksha Salvi', '15300', 6, 9),
(399, '2040', 'Aryan Som', '16484', 6, 9),
(400, '2041', 'Bhakti Begarwar', '16031', 6, 9),
(401, '2042', 'Chestha Parihar', '15847', 6, 9),
(402, '2043', 'Chirag Mewara', '16124', 6, 9),
(403, '2044', 'Daksh Ajmera', '15668', 6, 9),
(404, '2045', 'Dhruv Mali', '16437', 6, 9),
(405, '2046', 'Dhruvika Kumawat', '16140', 6, 9),
(406, '2047', 'Geet Sahu', '15038', 6, 9),
(407, '2048', 'Geetansh Chatwani', '16025', 6, 9),
(408, '2049', 'Hansika Nimawat', '14835', 6, 9),
(409, '2050', 'Harshvardhan Singh', '15012', 6, 9),
(410, '2051', 'Kaniska Bhatt', '14843', 6, 9),
(411, '2052', 'Khyati Vaishnav', '15750', 6, 9),
(412, '2053', 'Kundan Solanki', '15328', 6, 9),
(413, '2054', 'Lokesh Gurjar', '14665', 6, 9),
(414, '2055', 'Manan Oad', '15718', 6, 9),
(415, '2056', 'Naman Soni', '16476', 6, 9),
(416, '2057', 'Navika Ganna', '14860', 6, 9),
(417, '2058', 'Nischal Shrimali', '16329', 6, 9),
(418, '2059', 'Navya Mali', '16683', 6, 9),
(419, '2060', 'Palak Jain', '14825', 6, 9),
(420, '2061', 'Parinati Bandi', '14894', 6, 9),
(421, '2062', 'Prachi Balani', '14834', 6, 9),
(422, '2063', 'Puneet Salvi', '14833', 6, 9),
(423, '2064', 'Rudra Mali', '15006', 6, 9),
(424, '2065', 'Samrat Salunkhey', '14735', 6, 9),
(425, '2066', 'Shivranjani Panwar', '15667', 6, 9),
(426, '2067', 'Tanisha ', '16496', 6, 9),
(427, '2068', 'Teena Rajak', '15795', 6, 9),
(428, '2069', 'Vaishnvi Saraswat', '15558', 6, 9),
(429, '2070', 'Varsha Kawar', '16501', 6, 9),
(430, '2071', 'Vikram Singh Rathore', '16066', 6, 9),
(431, '2072', 'Vishwjeet Singh', '16503', 6, 9),
(432, '2072', 'Akhil Kumawat', '14765', 6, 10),
(433, '2073', 'Aradhya Singh', '16655', 6, 10),
(434, '2074', 'Aryan Sangwan', '16452', 6, 10),
(435, '2075', 'Avay Jain', '15109', 6, 10),
(436, '2076', 'Avika Matta', '15163', 6, 10),
(437, '2077', 'Ayushi Rajput', '15304', 6, 10),
(438, '2078', 'Bhavin Soni', '15106', 6, 10),
(439, '2079', 'Bhavya Sharma', '16062', 6, 10),
(440, '2080', 'Bhavyanshi Choubisa', '15543', 6, 10),
(441, '2081', 'Diksha Menaria', '15132', 6, 10),
(442, '2082', 'Divyanshi Meena', '15075', 6, 10),
(443, '2083', 'Divyanshi Sethiya', '16292', 6, 10),
(444, '2084', 'Harsh Patel', '15834', 6, 10),
(445, '2085', 'Huvishka Sharma', '14863', 6, 10),
(446, '2086', 'Jaya Dangi', '15159', 6, 10),
(447, '2087', 'Jiyansee Mistri', '14592', 6, 10),
(448, '2088', 'Lalit  Kumar Roat', '16231', 6, 10),
(449, '2089', 'Maanyata Vyas', '15137', 6, 10),
(450, '2090', 'Madhav Mantri', '15303', 6, 10),
(451, '2091', 'Mishita Bhavaria', '15129', 6, 10),
(452, '2092', 'Mohammad Faisal', '14918', 6, 10),
(453, '2093', 'Mrigakshi Taunk', '14896', 6, 10),
(454, '2094', 'Nirbhay S Devra', '14841', 6, 10),
(455, '2095', 'Nishtha Chouhan', '16278', 6, 10),
(456, '2096', 'Pranshi Mittal', '15302', 6, 10),
(457, '2097', 'Prince  Faujdar', '16519', 6, 10),
(458, '2098', 'Raghav Pratap Rathore', '15639', 6, 10),
(459, '2099', 'Rajan  Valichawal Suthar', '15299', 6, 10),
(460, '2100', 'Renesh Gour', '15153', 6, 10),
(461, '2101', 'Rudraraj Singh Mojawat', '15056', 6, 10),
(462, '2102', 'Rudraksh Vaishnav', '14840', 6, 10),
(463, '2103', 'Sakshi Rajput', '15298', 6, 10),
(464, '2104', 'Taneedhya Acharya', '14814', 6, 10),
(465, '2105', 'Tanya Soni ', '15620', 6, 10),
(466, '2106', 'Yashank  Sharma', '15164', 6, 10),
(467, '1001', 'Alema Sheikh', '15099', 5, 8),
(468, '1002', 'Anant Agrawal', '16068', 5, 8),
(469, '1003', 'Anushka Seal', '16360', 5, 8),
(470, '1004', 'Atharva Sarawat', '15670', 5, 8),
(471, '1005', 'Avani Mali', '15206', 5, 8),
(472, '1006', 'Daksh Mohal', '15490', 5, 8),
(473, '1007', 'Daksh Samarwal', '15322', 5, 8),
(474, '1008', 'Gajendra Meena', '15593', 5, 8),
(475, '1009', 'Garv Sahu', '14960', 5, 8),
(476, '1010', 'Guntreddi. Harshita', '16359', 5, 8),
(477, '1011', 'Himanshu Pundir', '16483', 5, 8),
(478, '1012', 'Ishit S. Panwar', '16160', 5, 8),
(479, '1013', 'Jay Lodha', '15671', 5, 8),
(480, '1014', 'Kajal Rao', '15615', 5, 8),
(481, '1015', 'Manvendra Singh', '16526', 5, 8),
(482, '1016', 'Miral Audichya', '14883', 5, 8),
(483, '1017', 'Navika Kumawat', '15594', 5, 8),
(484, '1018', 'Nikhil Vaishnav', '16010', 5, 8),
(485, '1019', 'Parikshit Ajaria', '16380', 5, 8),
(486, '1020', 'Priyanshi Jain', '16375', 5, 8),
(487, '1021', 'Priyanshi Nagda', '16596', 5, 8),
(488, '1022', 'Rudra Pathak', '16582', 5, 8),
(489, '1023', 'Saashi J. Jain', '15672', 5, 8),
(490, '1024', 'Sanskriti Suhalka', '15204', 5, 8),
(491, '1025', 'Shourya Raj Singh', '15312', 5, 8),
(492, '1026', 'Surendra S. Rathore', '15143', 5, 8),
(493, '1027', 'Utkarsh Joshi', '15467', 5, 8),
(494, '1028', 'Vedant Rajpurohit', '15740', 5, 8),
(495, '1029', 'Viren Sharma', '16403', 5, 8),
(496, '1030', 'Vishvesh Gupta', '16629', 5, 8),
(497, '1031', 'Vivena Gupta', '15356', 5, 8),
(498, '1032', 'Yash Bulani', '15528', 5, 8),
(499, '1033', 'Abhay Sharma', '14914', 5, 9),
(500, '1034', 'Ajay Meghwal', '16624', 5, 9),
(501, '1035', 'Anushka Sharma', '16407', 5, 9),
(502, '1036', 'Atharva Sexena', '15721', 5, 9),
(503, '1037', 'Bharat Singh', '15805', 5, 9),
(504, '1038', 'Bhavya Jingar', '15602', 5, 9),
(505, '1039', 'Chirag Panchal', '16389', 5, 9),
(506, '1040', 'Daksh Raj Singh Sisodia', '16226', 5, 9),
(507, '1041', 'Hardik Prajapat', '15927', 5, 9),
(508, '1042', 'Hitansh Jain', '15600', 5, 9),
(509, '1043', 'Ishika Kalal', '16352', 5, 9),
(510, '1044', 'Jagrati Menaria', '16032', 5, 9),
(511, '1045', 'Kavya Manglani', '15595', 5, 9),
(512, '1046', 'Kitika Thakur', '15191', 5, 9),
(513, '1047', 'Kritika Pokharan', '15589', 5, 9),
(514, '1048', 'Lakshya Bohra', '16391', 5, 9),
(515, '1049', 'Mahi Rathore', '16353', 5, 9),
(516, '1050', 'Mitansh Prajapat', '15928', 5, 9),
(517, '1051', 'Mohammad Farhan', '15592', 5, 9),
(518, '1052', 'Nawal Yadav', '16470', 5, 9),
(519, '1053', 'Nikhil Gurjar', '15057', 5, 9),
(520, '1054', 'Palak Choudhary', '16636', 5, 9),
(521, '1055', 'Prithviraj Vijaysingh Gusinge', '16558', 5, 9),
(522, '1056', 'Ronak Yadav', '15306', 5, 9),
(523, '1057', 'Ronit Pandy', '16073', 5, 9),
(524, '1058', 'Rudraksh Salvi', '15442', 5, 9),
(525, '1059', 'Shubham Gupta', '15996', 5, 9),
(526, '1060', 'Siddhiksha Meena', '15542', 5, 9),
(527, '1061', 'Veer Pratap Rathore', '16395', 5, 9),
(528, '1062', 'Yashika Paliwal', '15314', 5, 9),
(529, '1063', 'Yashvi Gurjar', '15458', 5, 9),
(530, '1064', 'Aarchi Khandelwal', '15305', 5, 10),
(531, '1065', 'Abhay Pratap Gihar', '16444', 5, 10),
(532, '1066', 'Abhinav Prajapati', '15919', 5, 10),
(533, '1067', 'Akshayraj Singh Devda', '15732', 5, 10),
(534, '1068', 'AparnaSatyarthi', '16477', 5, 10),
(535, '1069', 'Bhavesh Prajapat', '15341', 5, 10),
(536, '1070', 'Bhuwnesh Keer', '15008', 5, 10),
(537, '1071', 'Chirag Jain', '15308', 5, 10),
(538, '1072', 'Darsh Sharma', '16071', 5, 10),
(539, '1073', 'Dhavni Chouhan', '15596', 5, 10),
(540, '1074', 'Dharam Sudarshan  Mehta', '15381', 5, 10),
(541, '1075', 'Dhruva  Singh  Bhadoria', '16480', 5, 10),
(542, '1076', 'Divya Raj Singh Sisodia', '15483', 5, 10),
(543, '1077', 'Geet Ameta', '15675', 5, 10),
(544, '1078', 'Ishant Wadhwani', '16060', 5, 10),
(545, '1079', 'Jai Raj Singh Chouhan', '16208', 5, 10),
(546, '1080', 'Mahi Choubisa', '15460', 5, 10),
(547, '1081', 'Mahi Sahu', '15564', 5, 10),
(548, '1082', 'Mokshit Katara', '15555', 5, 10),
(549, '1083', 'Naksh Khuseja', '16237', 5, 10),
(550, '1084', 'Nishant Vyas', '15749', 5, 10),
(551, '1085', 'Priyanshu Pundir', '16482', 5, 10),
(552, '1086', 'Pushpendra S Shekhawat', '15317', 5, 10),
(553, '1087', 'Ragini Bhatt', '15309', 5, 10),
(554, '1088', 'Rishi Rajak', '15792', 5, 10),
(555, '1089', 'Shivam Sharma', '15625', 5, 10),
(556, '1090', 'Siddhi Jain', '15430', 5, 10),
(557, '1091', 'Vighnesh Dadhich', '15484', 5, 10),
(558, '1092', 'Yadhvi Bhatnagar', '15313', 5, 10),
(559, '1093', 'Yash Sharma', '16414', 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `time_table`
--

CREATE TABLE `time_table` (
  `id` int(10) NOT NULL,
  `class_id` int(5) NOT NULL,
  `term_id` int(5) NOT NULL,
  `category_id` int(5) NOT NULL,
  `exam_id` int(5) NOT NULL,
  `exam_category_type_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(20) NOT NULL,
  `time_to` varchar(20) NOT NULL,
  `subject_id` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table`
--

INSERT INTO `time_table` (`id`, `class_id`, `term_id`, `category_id`, `exam_id`, `exam_category_type_id`, `date`, `time_from`, `time_to`, `subject_id`) VALUES
(1, 1, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '1,3'),
(2, 2, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '1'),
(3, 3, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '3'),
(4, 4, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '4'),
(5, 5, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '5'),
(6, 6, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '6'),
(7, 7, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '7'),
(8, 8, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '8'),
(9, 9, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '9'),
(10, 10, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '10'),
(11, 11, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '11'),
(12, 12, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '2'),
(13, 13, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '12'),
(14, 14, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '13'),
(15, 15, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '14'),
(16, 16, 1, 1, 0, 0, '2017-08-02', '9:00 AM ', '12:00 AM ', '15'),
(17, 1, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', '2'),
(18, 2, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(19, 3, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(20, 4, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(21, 5, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(22, 6, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(23, 7, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(24, 8, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(25, 9, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(26, 10, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(27, 11, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(28, 12, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(29, 13, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(30, 14, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(31, 15, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(32, 16, 1, 1, 0, 0, '2017-08-04', '9:00 AM ', '12:00 AM ', ''),
(33, 1, 1, 1, 0, 0, '2017-08-10', '8', '1', '1,3'),
(34, 2, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(35, 3, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(36, 4, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(37, 5, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(38, 6, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(39, 7, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(40, 8, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(41, 9, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(42, 10, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(43, 11, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(44, 12, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(45, 13, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(46, 14, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(47, 15, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(48, 16, 1, 1, 0, 0, '2017-08-10', '8', '1', ''),
(49, 1, 2, 1, 0, 0, '2017-08-04', '1', '1', '1,2,3'),
(50, 2, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(51, 3, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(52, 4, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(53, 5, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(54, 6, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(55, 7, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(56, 8, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(57, 9, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(58, 10, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(59, 11, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(60, 12, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(61, 13, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(62, 14, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(63, 15, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(64, 16, 2, 1, 0, 0, '2017-08-04', '1', '1', ''),
(65, 1, 1, 1, 0, 0, '2017-08-01', '1', '4', '1,3'),
(66, 2, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(67, 3, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(68, 4, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(69, 5, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(70, 6, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(71, 7, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(72, 8, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(73, 9, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(74, 10, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(75, 11, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(76, 12, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(77, 13, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(78, 14, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(79, 15, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(80, 16, 1, 1, 0, 0, '2017-08-01', '1', '4', ''),
(81, 1, 1, 1, 0, 0, '2017-08-02', '1', '4', '2'),
(82, 2, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(83, 3, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(84, 4, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(85, 5, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(86, 6, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(87, 7, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(88, 8, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(89, 9, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(90, 10, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(91, 11, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(92, 12, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(93, 13, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(94, 14, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(95, 15, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(96, 16, 1, 1, 0, 0, '2017-08-02', '1', '4', ''),
(97, 1, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', '1,3'),
(98, 2, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(99, 3, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(100, 4, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(101, 5, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(102, 6, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(103, 7, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(104, 8, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(105, 9, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(106, 10, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(107, 11, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(108, 12, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(109, 13, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(110, 14, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(111, 15, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(112, 16, 1, 1, 0, 0, '2017-08-02', '9 00 Am', '12 00 PM', ''),
(113, 1, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', '2'),
(114, 2, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(115, 3, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(116, 4, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(117, 5, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(118, 6, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(119, 7, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(120, 8, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(121, 9, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(122, 10, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(123, 11, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(124, 12, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(125, 13, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(126, 14, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(127, 15, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', ''),
(128, 16, 1, 1, 0, 0, '2017-08-03', '9 00 Am', '12 00 PM', '');

-- --------------------------------------------------------

--
-- Table structure for table `time_table_instruction`
--

CREATE TABLE `time_table_instruction` (
  `id` int(11) NOT NULL,
  `instruction` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `time_table_instruction`
--

INSERT INTO `time_table_instruction` (`id`, `instruction`) VALUES
(14, 'abc'),
(15, 'xyz');

-- --------------------------------------------------------

--
-- Table structure for table `user_settings`
--

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL,
  `fac_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_settings`
--

INSERT INTO `user_settings` (`id`, `fac_id`, `role_id`, `module_id`) VALUES
(1, 7, 0, 1),
(2, 7, 0, 2),
(3, 7, 0, 3),
(4, 7, 0, 4),
(5, 7, 0, 5),
(6, 7, 0, 7),
(7, 7, 0, 8),
(8, 7, 0, 9),
(9, 7, 0, 10),
(10, 7, 0, 11),
(11, 7, 0, 12),
(12, 7, 0, 15),
(13, 7, 0, 16),
(14, 7, 0, 18),
(15, 7, 0, 19),
(16, 7, 0, 20),
(17, 1, 0, 1),
(18, 1, 0, 2),
(19, 1, 0, 3),
(20, 1, 0, 4),
(21, 1, 0, 5),
(22, 1, 0, 7),
(23, 1, 0, 8),
(24, 1, 0, 9),
(25, 1, 0, 10),
(26, 1, 0, 11),
(27, 1, 0, 12),
(28, 1, 0, 15),
(29, 1, 0, 16),
(30, 1, 0, 18),
(31, 1, 0, 19),
(32, 1, 0, 20),
(33, 1, 0, 21),
(34, 1, 0, 22),
(35, 1, 0, 23),
(36, 1, 0, 24),
(37, 1, 0, 25),
(38, 1, 0, 26),
(39, 1, 0, 27),
(40, 9, 0, 1),
(41, 9, 0, 2),
(42, 9, 0, 3),
(43, 9, 0, 4),
(44, 9, 0, 5),
(45, 9, 0, 7),
(46, 9, 0, 8),
(47, 9, 0, 9),
(48, 9, 0, 10),
(49, 9, 0, 11),
(50, 9, 0, 12),
(51, 9, 0, 15),
(52, 9, 0, 16),
(53, 9, 0, 18),
(54, 9, 0, 19),
(55, 9, 0, 20),
(56, 9, 0, 21),
(57, 9, 0, 22),
(58, 9, 0, 23),
(59, 9, 0, 24),
(60, 9, 0, 25),
(61, 9, 0, 26),
(62, 9, 0, 27),
(63, 0, 1, 1),
(64, 0, 1, 9),
(65, 0, 1, 10),
(66, 0, 1, 11),
(67, 0, 1, 19),
(68, 0, 1, 38),
(69, 0, 1, 39),
(70, 0, 1, 40),
(71, 0, 1, 46),
(72, 0, 1, 47),
(73, 0, 1, 50),
(74, 0, 2, 1),
(75, 0, 2, 2),
(76, 0, 2, 3),
(77, 0, 2, 4),
(78, 0, 2, 5),
(79, 0, 2, 7),
(80, 0, 2, 8),
(81, 0, 2, 9),
(82, 0, 2, 10),
(83, 0, 2, 11),
(84, 0, 2, 12),
(85, 0, 2, 15),
(86, 0, 2, 16),
(87, 0, 2, 18),
(88, 0, 2, 19),
(89, 0, 2, 20),
(90, 0, 2, 21),
(91, 0, 2, 22),
(92, 0, 2, 23),
(93, 0, 2, 28),
(94, 0, 2, 29),
(95, 0, 2, 30),
(96, 0, 2, 31),
(97, 0, 2, 32),
(98, 0, 2, 37),
(99, 0, 2, 38),
(100, 0, 2, 39),
(101, 0, 2, 40),
(102, 0, 2, 42),
(103, 0, 2, 43),
(104, 0, 2, 44),
(105, 0, 2, 45),
(106, 0, 2, 46),
(107, 0, 2, 47),
(108, 0, 2, 48),
(109, 0, 2, 50),
(110, 0, 2, 51),
(111, 0, 2, 52),
(112, 0, 2, 53),
(113, 0, 2, 54),
(114, 0, 2, 55),
(115, 0, 2, 56),
(116, 0, 2, 57),
(117, 0, 2, 58),
(118, 0, 2, 59),
(119, 0, 2, 60),
(120, 0, 2, 61);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elective`
--
ALTER TABLE `elective`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category`
--
ALTER TABLE `exam_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_category_type`
--
ALTER TABLE `exam_category_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_mapping`
--
ALTER TABLE `exam_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mapping_section`
--
ALTER TABLE `mapping_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_architecture`
--
ALTER TABLE `master_architecture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_class`
--
ALTER TABLE `master_class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_grade`
--
ALTER TABLE `master_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_health`
--
ALTER TABLE `master_health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_scalling`
--
ALTER TABLE `master_scalling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_section`
--
ALTER TABLE `master_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_sub_subject`
--
ALTER TABLE `master_sub_subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_term`
--
ALTER TABLE `master_term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_health`
--
ALTER TABLE `student_health`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_result`
--
ALTER TABLE `student_result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_allocation`
--
ALTER TABLE `subject_allocation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table`
--
ALTER TABLE `time_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time_table_instruction`
--
ALTER TABLE `time_table_instruction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_settings`
--
ALTER TABLE `user_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `elective`
--
ALTER TABLE `elective`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `exam_category`
--
ALTER TABLE `exam_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `exam_category_type`
--
ALTER TABLE `exam_category_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `exam_mapping`
--
ALTER TABLE `exam_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `mapping_section`
--
ALTER TABLE `mapping_section`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `master_architecture`
--
ALTER TABLE `master_architecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_class`
--
ALTER TABLE `master_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `master_grade`
--
ALTER TABLE `master_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_health`
--
ALTER TABLE `master_health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_scalling`
--
ALTER TABLE `master_scalling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_section`
--
ALTER TABLE `master_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `master_sub_subject`
--
ALTER TABLE `master_sub_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_term`
--
ALTER TABLE `master_term`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4296;
--
-- AUTO_INCREMENT for table `student_health`
--
ALTER TABLE `student_health`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_result`
--
ALTER TABLE `student_result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `subject_allocation`
--
ALTER TABLE `subject_allocation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;
--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=560;
--
-- AUTO_INCREMENT for table `time_table`
--
ALTER TABLE `time_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `time_table_instruction`
--
ALTER TABLE `time_table_instruction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_settings`
--
ALTER TABLE `user_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
