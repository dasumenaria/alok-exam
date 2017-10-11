-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2017 at 07:11 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_pratap_primary_2017-2018`
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
  `flag` int(3) NOT NULL COMMENT '1=sector, 2=pratap'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `name`, `gender`, `username`, `password`, `class`, `section`, `subject`, `role`, `flag`) VALUES
(1, 'Admin', 'Male', 'admin', '5d41402abc4b2a76b9719d911017c592', 6, 1, 0, 2, 1),
(2, 'dasu', 'Male', 'dasu', '304ef9a575bf4b50e337969df0c671a2', 7, 1, 1, 1, 1);

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
(23, 11, 4),
(24, 11, 5),
(25, -1, 1),
(26, -4, 1),
(27, -2, 1),
(28, -3, 1),
(29, -1, 2),
(30, 11, 6),
(31, 11, 7),
(32, 12, 4),
(33, 12, 7),
(34, 12, 6),
(35, 12, 5);

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
(3, 'C'),
(4, 'Comm-PE'),
(5, 'Math-PE'),
(6, 'BIO-PE'),
(7, 'Comm-Math');

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
(1, 'ALOK SENIOR SECONDARY SCHOOL', 'HIRAN MAGRI, SECTOR - 11, Udaipur', 'AFFILIATED TO CBSE, NEW DELHI, AFFILIATION NO.-1730007', 'Under the Aegis of Rashtriya Shiksha Samiti', 'CBALogo.png');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `mother_name` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `address` text NOT NULL,
  `scholar_no` varchar(100) NOT NULL,
  `roll_no` int(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `pdf_path` varchar(200) NOT NULL,
  `pdf_update_date` date NOT NULL,
  `hold` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`, `hold`) VALUES
(811, 'Yash Raj Singh', 'Mr. Raj Singh', 'Laxmi Kunwar', '2016-07-01', 'hrsh', 'MDS-ks001', 1, 1, 1, '', '', '', '0000-00-00', 0),
(812, 'Mayank Suthar', 'Nand Lal Suthar', 'Gunmala', '2016-06-28', 'hgf', 'MDS-ks002', 2, 1, 1, '', '', '', '0000-00-00', 0),
(911, 'AARAV BAMANIYA', 'MR AJAY KUMAR BAMANIYA', 'MRS PRAVEENA BAMANIYA', '1970-01-01', '4/5 OPP, PETROL PUMP, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3439', 0, 1, 1, '', '', '', '0000-00-00', 0),
(912, 'ANGEL KUNWAR CHUNDAWAT', 'MR SHAKTI SINGH CHUNDAWAT', 'MRS NEETU KUNWAR RATHORE', '1970-01-01', '28, OLD RTO OFFICE, MEERA NAGAR DHEEKLI ROAD, UDAIPUR', 'MDS-SS-2281', 0, 1, 1, '', '', '', '0000-00-00', 0),
(913, 'ARYAN SINGH DEVRA', 'MANGAL SINGH DEVRA', 'GUDDI KUNWAR', '1970-01-01', 'UIT COLONY, PRATAP NAGAR', 'MDS-SS-2422', 0, 1, 1, '', '', '', '0000-00-00', 0),
(914, 'AYUSHMAN SINGH CHUNDAWAT', 'MR SHAILENDRA SINGH CHUNDAWAT', 'MRS JAYA RATHORE', '1970-01-01', '5, SHANTI NATH NAGAR, CHANDRA COLONY, OPP. OLD RTO OFFICE, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3442', 0, 1, 1, '', '', '', '0000-00-00', 0),
(915, 'BHAVIL CHOUBISA', 'MR PRAVEEN KUMAR CHOUBISA', 'MRS NEETU CHOUBISA', '1999-06-16', '116,NAKODA NAGAR,BEDWAS,UDAIPUR', 'MDS-SS-2530', 0, 1, 1, '', '', '', '0000-00-00', 0),
(916, 'BHAVYA VERMA', 'DR SURENDRA KUMAR VERMA', 'MRS ANJANA VERMA', '1970-01-01', '54, MEERA NAGAR (A) DHEEKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-2157', 0, 1, 1, '', '', '', '0000-00-00', 0),
(917, 'CHINMAY CHOUBISA', 'MRTARUN CHOBISA', 'MRSNEELAM CHOBISA', '1970-01-01', '66,CHANDR COLONY,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2605', 0, 1, 1, '', '', '', '0000-00-00', 0),
(918, 'DHEERAJ KUMAR KURIA', 'MR BHURI LAL GAMETI', 'MRS VENKI DEVI GAMETI', '2011-05-01', 'KURIYO KI GUADI , DHEEKLI', 'MDS-SS-2477', 0, 1, 1, '', '', '', '0000-00-00', 0),
(919, 'DIGVI BAPNA', 'MR SHURVEER SINGH BAPNA', 'MRS CHETNA BAPNA', '1970-01-01', '421, DHEEKLI, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3455', 0, 1, 1, '', '', '', '0000-00-00', 0),
(920, 'HEMANSHI  VAISHNAV', 'RAMESH VAISHNAV', 'REKHA VAISHNAV', '1970-01-01', 'SHIV COLONY REBARION KA GUDA PRATAPNAGAR', 'MDS-SS-2536', 0, 1, 1, '', '', '', '0000-00-00', 0),
(921, 'HIREN KHANDIA', 'MR RAJ KUMAR KHANDIA', 'MRS MANJU KHANDIA', '1970-01-01', '98, N B NAGAR, DHAU JI KI BAWRI, BEDWAS, UDAIPUR', 'MDS-SS-2566', 0, 1, 1, '', '', '', '0000-00-00', 0),
(922, 'ISHIKA CHUNDAWAT', 'MR RAGHUNATH SINGH CHUNDAWAT', 'MRS TEJ KUNWAR', '2011-12-02', 'H2, N.B.COMPLEX NEAR POLICE SATAION PRATAP NAGAR', 'MDS-SS-2504', 0, 1, 1, '', '', '', '0000-00-00', 0),
(923, 'KANISHKA BANSIWAL', 'MR MANISH BANSIWAL', 'MRS NEELAM BANSIWAL', '1970-01-01', '72, RAVINDRA NAGAR, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3467', 0, 1, 1, '', '', '', '0000-00-00', 0),
(924, 'KISHAN PATEL', 'MR PRAKASH PATEL', 'MRS SASSI PATEL', '1970-01-01', 'CHANDRA COLONY NEAR ANKIT PUBLIC SCHOOL', 'MDS-SS2621', 0, 1, 1, '', '', '', '0000-00-00', 0),
(925, 'KRISHNA SHARMA', 'MR JITENDRA SHARMA', 'MRS SUMAN SHARMA', '2011-06-05', '25-E INDUSTRIAL AREA , PRATAP NAGAR UDAIPUR', 'MDS-SS-2539', 0, 1, 1, '', '', '', '0000-00-00', 0),
(926, 'KUSHAL SUTHAR', 'MR MAHENDRA SUTHAR', 'MRS KESAR SUTHAR', '2010-04-09', 'UDAIPUR', 'MDS-SS-3471', 0, 1, 1, '', '', '', '0000-00-00', 0),
(927, 'MONIKA MEGHWAL', 'MR SHANKER MEGHWAL', 'MRS SOVANI MEGHWAL', '2010-05-20', 'NEAR MDS SCHOOL ', 'MDS-SS-3664', 0, 1, 1, '', '', '', '0000-00-00', 0),
(928, 'NARENDRA JAKHAR', 'MR VINOD JAKHAR', 'MRS SHARMILA JAKHAR', '2010-10-10', '1/231, HBC, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3476', 0, 1, 1, '', '', '', '0000-00-00', 0),
(929, 'NARESH PATEL', 'MRGAUTAM PATEL', 'MRSKANKU PATEL', '1970-01-01', 'BASANT VIHAR HOUSE NO. 22 PRATAP NAGAR', 'MDS-SS-2151', 0, 1, 1, '', '', '', '0000-00-00', 0),
(930, 'PADMA KUMARI KURIA', 'MR BHURI LAL GAMETI', 'MRS DEVLI BAI GAMETI', '2009-10-12', 'KURIYO KI GUADI, DHEEKLI', 'MDS-SS-2478', 0, 1, 1, '', '', '', '0000-00-00', 0),
(931, 'PRIYANSHU KUMAWAT', 'MR VINOD KUMAWAT', 'MRS SHARDA KUMAWAT', '2011-02-03', 'OLD RTO SHIV COLONY PRATAP NAGAR', 'MDS-SS-2532', 0, 1, 1, '', '', '', '0000-00-00', 0),
(932, 'RAGHAV SHARMA', 'MR VIJENDRA SHARMA', 'MRS SUNITA SHARMA', '1970-01-01', '83, CHANDRA COLONY, GALI NO. 2, PRATAP NAGAR, UAIPUR', 'MDS-SS-2546', 0, 1, 1, '', '', '', '0000-00-00', 0),
(933, 'RISHIMA SHARMA', 'ABHILASH SHARMA', 'MRSMAMTA SHARMA', '1970-01-01', 'E-70, PRATAPNAGAR ', 'MDS-SS-3493', 0, 1, 1, '', '', '', '0000-00-00', 0),
(934, 'RITIKA KUNWAR RAO', 'MRPUSHPENDER SINGH RAO', 'MRSJYATSARA RAO', '2011-10-07', '103, NAKOTA NAGAR,UDAIPUR', 'MDS-SS-2589', 0, 1, 1, '', '', '', '0000-00-00', 0),
(935, 'SHIVENDRA SINGH SOLANKI', 'MR PRATHVI SINGH SOLANKI', 'MRS MITTU KUNWAR SOLANKI', '2011-11-03', '65, KRISHNA VIHAR, DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-2529', 0, 1, 1, '', '', '', '0000-00-00', 0),
(936, 'YASHIKA BANSIWAL', 'MR GITESH BANSIWAL', 'MRS MAMTA BANSIWAL', '2011-09-08', '72, RAVINDRA NAGAR, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3515', 0, 1, 1, '', '', '', '0000-00-00', 0),
(937, 'JAYRAJ MEGHWAL', 'MR NARAYAN LAL MEGHWAL', 'MRS SAROJ MEGHWAL', '2011-05-22', 'OLD RTO OFFICE PRATAP NAGAR DEEKHIL ROAD REBARIYON KA GUDA', 'MDS-SS-3727', 0, 1, 1, '', '', '', '0000-00-00', 0),
(938, 'CHITERSH SINGH RAO', 'MR BHOPAL SINGH RAO', 'MRS SANDHYA RAO', '2011-02-08', '24, SAMPAT SADAN NAKODA -I OPP. TRANSPORT NAGAR ', 'MDS-SS-3735', 0, 1, 1, '', '', '', '0000-00-00', 0),
(939, 'BHUMIKA JOSHI', 'MR. BHANWAR SINGH CHUNDAWAT', 'MRS.NIMA JOSHI', '2000-11-30', '92,NB COMPLEX,PRATAP NAGAR,NEAR POLICE STATION,UDAIPUR', 'MDS-SS-2598', 0, -1, 1, '', '', '', '0000-00-00', 0),
(940, 'CHANCHAL KUNWAR DULAWAT', 'MR. YASHWANT SINGH ', 'MRS.SAVITA KUNWAR', '2012-04-20', '29, MEERA NAGAR,OLD RTO ROAD,PRATAP NAGAR,DHIKLI ROAD,UDAIPUR', 'MDS-SS-2582', 0, -1, 1, '', '', '', '0000-00-00', 0),
(941, 'DEEKSHA BAGDI (DEEVISHA)', 'MR.HEMENDRA KHATIK', 'MRS.AKSHA BAGDI', '1970-01-01', 'BHAGWATI LAL KHATIK,208 SENTER CHOURAHA ,SAKRODA,DEBARI,UDAIPUR', 'MDS-SS-2585', 0, -1, 1, '', '', '', '0000-00-00', 0),
(942, 'DIKSHITA RAJ CHAUHAN', 'MR. BHAGWAT SINGH CHAUHAN', 'MRS. ANJU KUNWER CHAUHAN', '2012-12-06', 'CHOUDHARY MOHHALA', 'MDS-SS-3653', 0, -1, 1, '', '', '', '0000-00-00', 0),
(943, 'DRUVRAJ SINGH RANAWAT', 'MR.SURAJ SINGH RANAWAT', 'MRS.PRAKASH KUNWAR', '1970-01-01', 'KANAL COMPLEX,HOUSE NO.33,DHIKALI ROAD,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2578', 0, -1, 1, '', '', '', '0000-00-00', 0),
(944, 'HARSH VARDHAN SINGH SOLANKI', 'MR RAJENDER SINGH SOLANKI', 'MRS SANTOSH KUNWAR SOLANKI', '2012-02-04', 'C/O BALVEER SINGH KALYAN SINGH JALA REBARIYO KA GURA', 'MDS-SS-3021', 0, -1, 1, '', '', '', '0000-00-00', 0),
(945, 'HEMENDRA  PRATAP SINGH CHOUHAN', 'MR. MAHIPAL SINGH CHOUHAN', 'MRS. DURGA KUNWAR', '2012-05-03', '42, MEERA NAGAR OLD RTO ROAD PRATAP NAGAR', 'MDS-SS-3036', 0, -1, 1, '', '', '', '0000-00-00', 0),
(946, 'HEVISH DAGLIYA', 'MR.HITESH DAGLIYA', 'MRS. SHEELA DAGLIYA', '1970-01-01', 'DESINER HEIGHTS, FLAT NO. 205,DHIKLI ROAD NEAR OLD RTO, PRATAP NAGAR UDAIPUR.', 'MDS-SS-2567', 0, -1, 1, '', '', '', '0000-00-00', 0),
(947, 'JIVIKA JAIN', 'MR.RAKESH JAIN', 'MRS.MONIKA JAIN', '1970-01-01', 'SAKRODA,GIRVA,UDAIPUR', 'MDS-SS-2593', 0, -1, 1, '', '', '', '0000-00-00', 0),
(948, 'KANISHK LOHAR', 'MR. PURAN MAL LOHAR', 'MRS. PRWEM LATA', '2016-03-29', '12, UIT COLONY PRATAP NAGAR', 'MDS-SS-3660', 0, -1, 1, '', '', '', '0000-00-00', 0),
(949, 'KIRTIKA JHALA', 'MR. UPENDRA SINGH JHALA', 'MRS. HIMANT KUNWAR', '2012-04-11', 'ZINC COMP. DEBARI, UDAIPUR', 'MDS-SS-3470', 0, -1, 1, '', '', '', '0000-00-00', 0),
(950, 'KOMAL RATHORE', 'MR. BHERU SINGH RATHORE', 'MRS. NATVAR KUNWAR', '1970-01-01', 'REBARIYO KA GUDA , PRATAP NAGAR', 'MDS-SS-2510', 0, -1, 1, '', '', '', '0000-00-00', 0),
(951, 'KULDEEP SINGH RANAWAT', 'MR. MAHENDRA SINGH', 'MRS. FEFA KUNWAR', '1970-01-01', 'ZINC COMPLEX, JARNO KI SARAY, DEBARI, UDAIPUR', 'MDS-SS-3473', 0, -1, 1, '', '', '', '0000-00-00', 0),
(952, 'LAKSHIT  CHOUDHARY', 'MR. SANJAY CHOUDHARY', 'MRS. ANITA CHOUDHARY', '1970-01-01', 'DHINKLI BAGDA', 'MDS-SS-2616', 0, -1, 1, '', '', '', '0000-00-00', 0),
(953, 'MAHESH NATH YOGI', 'MR. KISHAN NATH YOGI', 'MRS. SONAL YOGI', '1970-01-01', '101-NAKODA COMPLEX,HIRAN MAGRI,SEC.-4,UDAIPUR', 'MDS-SS-3492', 0, -1, 1, '', '', '', '0000-00-00', 0),
(954, 'MITHALESH MEGHWAL', 'MR. RAMESH LAL MEGHWAL', 'MRS. KIRAN MEGHWAL', '2012-10-02', '43, REBARIYO KA GUDA PRATAP NAGAR', 'MDS-SS-2831', 0, -1, 1, '', '', '', '0000-00-00', 0),
(955, 'RISHABH GURJAR', 'MR.KISHAN LAL GURJAR', 'MRS.BENA GURJAR', '2011-02-09', '141 NB NAGAR,BEDWAS,UDAIPUR', 'MDS-SS-2586', 0, -1, 1, '', '', '', '0000-00-00', 0),
(956, 'RISHABH VIRVAAL', 'MR. SAMPAT LAL VIRVAL', 'MRS. MAYA VIRVAL', '2011-10-26', 'BACK SIDE MDS SCHOOL OLD RTO OFFICE PRATAP NAGAR ', 'MDS-SS-3668', 0, -1, 1, '', '', '', '0000-00-00', 0),
(957, 'RUDHRA DADHEECH', 'MR.BHAGAWATI PRASAD DADHEECH', 'MRS.BINDU DADHEECH', '1970-01-01', 'BHAGAWATI MEDICAL STORE, DHINKLI, BUDGAV,UDAIPUR', 'MDS-SS-2576', 0, -1, 1, '', '', '', '0000-00-00', 0),
(958, 'RUDRA PRATAP SINGH RAO', 'MR. PARVAT SINGH RAO', 'MRS. MADHU KUNWAR RAO', '2012-11-03', '159-UIT COLONY PRATAP NAGAR', 'MDS-SS-3041', 0, -1, 1, '', '', '', '0000-00-00', 0),
(959, 'RUDRAKSH SINGH RANAWAT', 'MR. SAMARVEER SINGH RANAWAT', 'MRS. SUMITRA', '2012-09-04', 'KRISHNA VIHAR COLONY,  DHEEKLI ROAD, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3498', 0, -1, 1, '', '', '', '0000-00-00', 0),
(960, 'SOMYA CHOUDHARY', 'MR BABULAL CHOUDHARY', 'MRS ASHA CHOUDHARY', '2012-01-09', 'H.NO 28 SHRI NATH NAGAR,BEDWAS,NEAR MVS SCHOOL,PRATAP NAGAR', 'MDS-SS-3670', 0, -1, 1, '', '', '', '0000-00-00', 0),
(961, 'SAROJ KUMARI CHOUHAN', 'MR. NARENDRA SINGH CHOUHAN', 'MRS. CHANDRA CHOUHAN', '2011-11-09', 'OLD RTO ROAD IN FRONT OF MDS SCHOOL MEERA NAGAR', 'MDS-SS-3671', 0, -1, 1, '', '', '', '0000-00-00', 0),
(962, 'SHIVANI KUNWAR SARANDEVOT', 'MR. HUKAM SINGH SARANDEVOT', 'MRS. KUSUM KUNWAR SARANDEVOT', '1970-01-01', 'MEERA NAGAR UDAIPUR (RAJ)', 'MDS-SS-2615', 0, -1, 1, '', '', '', '0000-00-00', 0),
(963, 'SHOURYAVEER SINGH BHATI', 'MR VIJAY PRATAP SINGH BHATI', 'MRS REKHA TANWAR', '1970-01-01', 'OPP OLD RTO OFFICE,DHIKLI ROAD,PRATAP NAGAR', 'MDS-SS-3032', 0, -1, 1, '', '', '', '0000-00-00', 0),
(964, 'TANMAY VAISHNAV', 'MR. RAMESH VAISHNAV', 'MRS. LAXMI VAISHNAV', '1970-01-01', '68, SHREE RAM COLONY, PRATAP NAGAR, UDAIPUR', 'MDS-SS-2565', 0, -1, 1, '', '', '', '0000-00-00', 0),
(965, 'VAIDANSHI RATHORE', 'MR.BHAGWAN SINGH RATHORE', 'MRS.SHIVA KUNWAR', '1970-01-01', 'P-2 AASHUTOSH NAGAR,DHIKLI ROAD,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2618', 0, -1, 1, '', '', '', '0000-00-00', 0),
(966, 'YUVRAJ MEGHWAL', 'MR. MAHESH MEGWAL', 'MRS. PREM DEVI', '2011-06-15', 'DHEEKHIL ROAD THE. BADGAUN', 'MDS-SS-3676', 0, -1, 1, '', '', '', '0000-00-00', 0),
(967, 'KIRTIRAJ SINGH JHALA', 'MR. DEVI SINGH JHALA', 'MRS. SHYAMA KUNWER', '2011-11-14', 'DHEEKLI ROAD KIRSHNA VIHAR PRATAP NAGAR', 'MDS-SS-2417', 0, -1, 1, '', '', '', '0000-00-00', 0),
(968, 'ASHMITA KANAWAT', 'MR. DHAN SINGH RAJPOOT', 'MRS. PANKAJ KUNWAR', '2012-12-27', 'C/O NARAYAN SINGH RANAWAT 45-MEERA NAGAR -I ', 'MDS-SS-3717', 0, -1, 1, '', '', '', '0000-00-00', 0),
(969, 'BHANUSHREE KUNWAR SHAKTAWAT', 'MR. BHAWAR SINGH', 'MRS. KRISHNA KUNWAR', '2012-08-25', '30. MEERA NAGAR -2 OLD RTO OFFICE PRATAP NAGAR ', 'MDS-SS-3718', 0, -1, 1, '', '', '', '0000-00-00', 0),
(970, 'SONU KUNWAR RAO', 'MR. GANPAT SINGH RAO', 'MRS. TARA KUNWAR', '2010-12-12', 'KRISHNA VIHAR', 'MDS-SS-3049', 0, -1, 1, '', '', '', '0000-00-00', 0),
(971, 'CHAVI GARASIYA', 'MR. RAHUL GARASIYA', 'MRS. AVINASH GEVI', '2012-05-23', 'MEERA NAGAR PRATAP NAGAR', 'MDS-SS-3724', 0, -1, 1, '', '', '', '0000-00-00', 0),
(972, 'PRANAV CHOUDHARY', 'MR. PREM CHAUDHARY', 'MRS. DURGA CHAUDHARY', '2012-03-09', 'CHAUDHARY KA MOHALLA DHIKHILI', 'MDS-SS-2823', 0, -1, 1, '', '', '', '0000-00-00', 0),
(973, 'PRANAV PRATAP SINGH SOLANKI', 'MR. AJIT SINGH SOLANKI', 'MRS. NEELU RATHORE', '2012-06-28', 'MEERA NAGAR OLD RTO OFFICE ROAD', 'MDS-SS-3738', 0, -1, 1, '', '', '', '0000-00-00', 0),
(974, 'BHUDEV SINGH DEVRA', 'MR. DILIP SINGH DEVRA', 'MRS. RADHA RATHORE', '2012-10-21', 'REBARIYON KA GUDA DHEEKHLI ROAD PRATAP NAGAR', 'MDS-SS-3750', 0, -1, 1, '', '', '', '0000-00-00', 0),
(975, 'BHAVYA NAGDA', 'MR. HEMANT NAGDA', 'MRS. SONA NAGDA', '2000-06-06', 'NO.9 SR.SEC SCHOOL,BANSWARA', 'MDS-SS-3443', 0, -2, 1, '', '', '', '0000-00-00', 0),
(976, 'CHETNA REBARI', 'MR. BRAYKUMAR REBARI', 'MRS. ANJALI', '2012-12-22', 'REBARIYO KA GUDA', 'MDS-SS-3654', 0, -2, 1, '', '', '', '0000-00-00', 0),
(977, 'DIVYANSHI GORAWAD', 'MR KANA RAM MEGHWAL', 'MRS SONU', '1970-01-01', 'REBARIYON KA GUDA', 'MDS-SS-3657', 0, -2, 1, '', '', '', '0000-00-00', 0),
(978, 'HIMANSHI GORAWAD', 'MR KANARAM MEGHWAL', 'MRS SONU', '1970-01-01', 'REBARIYON KA GUDA', 'MDS-SS-3661', 0, -2, 1, '', '', '', '0000-00-00', 0),
(979, 'KUNAL SHARMA', 'MR. BHARAT KUMAR SHARMA', 'MRS. KUSUM SHARMA', '1970-01-01', '49, CHANDRA COLONY, ROAD NO. 2, 2, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3490', 0, -2, 1, '', '', '', '0000-00-00', 0),
(980, 'RIDDHI LOHAR', 'MR VINOD LOHAR', 'MRS DIPTESH NANDINI LOHAR', '2012-12-11', '44 RAGHUPATI,TULSI NAGAR,PRATAP NAGAR', 'MDS-SS-3667', 0, -2, 1, '', '', '', '0000-00-00', 0),
(981, 'RISHIRAJ SINGH DEORA', 'MR. ARVIND SINGH DEORA', 'MRS. BHAGYAWANTI KUNWAR', '1970-01-01', '207 A, SHREENATH COMPLEX, JHARNO KI SARAI, DEBARI, UDAIPUR', 'MDS-SS-3499', 0, -2, 1, '', '', '', '0000-00-00', 0),
(982, 'TAKSHEEL SINGH RAO', 'MR. DEVENDRA SINGH RAO', 'MRS. NEETU SINGH RAO', '1970-01-01', '1/238, HBC, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3507', 0, -2, 1, '', '', '', '0000-00-00', 0),
(983, 'RUDRAPRATAP SINGH SHAKTAWAT', 'MR. LOKENDRA SINGH SHAKTAWAT', 'MRS. POOJA KUNWAR', '2012-10-23', '25. MEERA NAGAR I OLD RTO ROAD PRATAP NAGAR', 'MDS-SS-3702', 0, -2, 1, '', '', '', '0000-00-00', 0),
(984, 'MANVEER SINGH CHUNDAWAT', 'MR. GOVIND SINGH CHUNDAWAT', 'MRS. REENA KUNWAR', '2013-01-30', 'SAKRIYA KHEDA MAVLI', 'MDS-SS-3704', 0, -2, 1, '', '', '', '0000-00-00', 0),
(985, 'DEEPIKA BASOTIA', 'MR. RAJESH KUMAR BASOTIA', 'MRS. POONAM SHARMA', '2013-11-23', 'THARNO KI SARAIA SHREE NATH COMPLEX', 'MDS-SS-3706', 0, -2, 1, '', '', '', '0000-00-00', 0),
(986, 'GAMYA JOSHI', 'MR. ANIL KUMAR JOSHI', 'MRS. RENU JOSHI', '2012-11-19', '41, SHANTI NATH CHANDRA COLONY OLD RTO OFFICE NEAR ANKIT SCHOOL DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-3707', 0, -2, 1, '', '', '', '0000-00-00', 0),
(987, 'VEER PRATAP SINGH SHAKTAWAT', 'MR. VIKRAM SINGH SHAKTAWAT', 'MRS. ASHA KUNWAR SHAKTAWAT', '2013-08-06', 'B BLOCK JANAKPURI BEDWAS', 'MDS-SS-3709', 0, -2, 1, '', '', '', '0000-00-00', 0),
(988, 'HARSH RAJ SINGH SHAKTAWAT', 'MR. RANJEET SINGH SHAKTAWAT', 'MRS. REKHA KUNWAR', '2013-01-01', 'B 48, BHARU VILLA MEERA NAGAR DHIKLI ROAD PRATAP NAGAR', 'MDS-SS-3710', 0, -2, 1, '', '', '', '0000-00-00', 0),
(989, 'MONU KUNWAR RAO', 'MR. GANPAT SINGH RAO', 'MRS. TARA KUNWAR', '2012-01-02', 'KRISHNA VIHAR', 'MDS-SS-3719', 0, -2, 1, '', '', '', '0000-00-00', 0),
(990, 'UTTRANSHI SARAGDVOT ', 'MR. BHOPAL SINGH SARAGDEVOT', 'MRS.SEEMA KUNWAR', '2012-10-04', 'MEERA NAGAR FIRST DHIKLI ROAD PRATAP NAGAR', 'MDS-SS-3730', 0, -2, 1, '', '', '', '0000-00-00', 0),
(991, 'JAYRAJ VAISHNAV', 'MR. AMRIT DAS', 'MRS. MEENA VAISHNAV', '2013-10-12', 'RAHAT WALI GALI DHIKLI PRATAP NAGAR', 'MDS-SS-3731', 0, -2, 1, '', '', '', '0000-00-00', 0),
(992, 'SIDDHI RAJ SHAKTAWAT', 'MR.DASHRATH SINGH SHAKTAWAT', 'MRS. SUMAN KUNWAR', '2012-10-25', 'MEERA NAGAR RTO OFFICE ', '', 0, -2, 1, '', '', '', '0000-00-00', 0),
(993, 'ADARSH ABHISHEK PALIWAL', 'MR. ABHISHEK M. PALIWAL', 'MRS. VARSHA A. PALIWAL', '2013-07-11', '14, SHREE RAM COLONY PRATAP NAGAR', 'MDS-SS-3741', 0, -2, 1, '', '', '', '0000-00-00', 0),
(994, 'ADITYA BADGURJAR', 'MR. KUNDAN LAL', 'MRS. SARITA', '2013-04-11', '11, SHIV COLONY REBARIYON KA GUDA OLD RTO ', 'MDS-SS-3745', 0, -2, 1, '', '', '', '0000-00-00', 0),
(995, 'TITIKSHA CHAUHAN', 'MR. VIJAY KUMAR CHOUHAN', 'MRS. LALITA KHATIK', '2012-11-13', '31, REBARIYON KA GUDA  DHINKALI ROAD SHOBHAG PURA ', 'MDS-SS-3746', 0, -2, 1, '', '', '', '0000-00-00', 0),
(996, 'LAVISH KATHIK', 'MR. BHUPENDRA KATHIK', 'MRS. LATIKA KATHIK', '2012-11-26', '78, SHIV COLONY DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-3747', 0, -2, 1, '', '', '', '0000-00-00', 0),
(997, 'DHEERAJ REBARI', 'LATE MR. NARAYAN REBARI', 'MRS. PUSHPA REBARI', '2013-01-24', 'REBARIYON KA GUDA', 'MDS-SS-3748', 0, -2, 1, '', '', '', '0000-00-00', 0),
(998, 'VISHNU REBARI', 'MR. DINESH REBARI', 'MRS. SHANTA BAI REBARI', '2012-09-18', '192, REBARIYON KA GUDA', 'MDS-SS-3749', 0, -2, 1, '', '', '', '0000-00-00', 0),
(999, 'NIKUNJ SHARMA', 'MR. HEMANT KUMAR SHARMA', 'MRS.RINKU SHARMA', '2013-09-11', '2 CHANDRA COLONY ROAD NO. 1 OLD RTO MARG PRATAP NAGAR', 'MDS-SS-3723', 0, -3, 1, '', '', '', '0000-00-00', 0),
(1000, 'NARESH  PATEL', 'MR. PRAKASH PATEL', 'MRS. SARSI PATEL', '2014-01-25', 'MEERA NAGAR BEHIND ANKIT SCHOOL', 'MDS-SS-3728', 0, -3, 1, '', '', '', '0000-00-00', 0),
(1001, 'BHAVYARAJ SINGH SARANGDEVOT', 'MR. RAM CHANDRA SARANGDEVOT', 'MRS. AZZAD KUNWAR', '2013-11-07', '59, MEERA NAGAR NEAR GYAN CHETAN PUBLIC SCHOOL', 'MDS-SS-3740', 0, -3, 1, '', '', '', '0000-00-00', 0),
(1002, 'CHESTHA VAISHNAV', 'MR. BALU- DAS VAISHNAV', 'MRS. RAJESHVARI VAISHNAV', '2013-09-18', 'OLD RTO REBARIYON KA GUDA PRATAP NAGAR', 'MDS-SS-3742', 0, -3, 1, '', '', '', '0000-00-00', 0),
(1040, 'ALISHA JAIN', 'MR. BHARAT KUMAR JAIN', 'MRS. URMILA JAIN', '2009-08-20', '33-MEERA NAGAR,DHINKLI ROAD,PRATAP NAGAR,UDR', 'MDS-SS-1396', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1041, 'ANKIT VAISHNAV', 'MR. BHARAT DAS VAISHNAV', 'MRS. LALITA DEVI VAISHNAV', '2008-06-29', 'SHIV COLONY REBARIYO KA GUDA PRATAP NAGAR OLD RTO OFFICE ROAD', 'MDS-SS-2482', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1042, 'ASHUTOSH VAISHNAV', 'MR. GANPAT DAS VAISHNAV', 'MRS. ANITA VAISHNAV', '2010-04-18', 'REBARIYON KA GUDA PRATAP NAGAR UDAIPUR', 'MDS-SS-1485', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1043, 'BHUMI VAISHNAV', 'MR. OM PRAKASH VAISHNAV', 'MRS. ANITA VAISHNAV', '2009-04-17', 'OLD RTO OFFICE ROAD SHIV COLONY REBARIO KA GUDA PRATAP NAGARS', 'MDS-SS-2057', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1044, 'BHUMIT MEGHWAL', 'LT. MR. SANTOSH MEGHWAL', 'MRS.  KANTA MEGHWAL', '2009-06-10', 'H.NO. 448/36, JYOTI COLONY -2 GLASS FACTORY SUNDERWAS ', 'MDS-SS-3447', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1045, 'BHUPENDRA SINGH CHUNDAWAT', 'MR. HARI SINGH CHUNDAWAT', 'MRS. BHAWAR KANWAR', '2008-03-03', '33, MEERA NAGAR PRATAP NAGAR', 'MDS-SS-2524', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1046, 'DAKSH CHOUDHARY', 'MR. MANOHAR LAL CHOUDHARY', 'MRS. ASHA CHOUDHARY', '2009-10-31', '23,U.I.T.COLONY,DHIKLI ROAD, PARTAP NAGAR,UDR RAJ.', 'MDS-SS-1658', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1047, 'DHRUVI JAIN', 'MR. YOGESH JAIN', 'MRS. SHAKUNTALA JAIN', '2009-02-20', 'NEAR JAIN TEMPLE SAKRODA ', 'MDS-SS-1634', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1048, 'DHRUVI VAISHNAV', 'MR. HARI PRASAD VAISHNAV', 'MRS. MAMTA VAISHNAV', '2010-08-31', 'REBARIO KA GUDA, POST DHIKLI , THE. BARGOAN, UDAIPUR', 'MDS-SS-1703', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1049, 'GARVITRAJ SINGH RATHORE', 'MR. BHAGWAN SINGH RATHORE', 'MRS. SHIVA KUNWAR RATHORE', '2009-04-20', 'P2. ASHUTOSH NAGAR DHIKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-1659', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1050, 'HIMANSHU DAYMA', 'MR. NAVEEN KUMAR DAYMA', 'MRS. KAMLA DEVI', '2009-10-12', '25, LAXMI NAGAR, DHEEKLI ROAD, PRATAP NAGAR, UDAIPUR', 'MDS-SS-2155', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1051, 'KARTIK SHARMA', 'MR. NARESH KR. SHARMA', 'MRS. MAMTA VYAS', '2009-04-02', '78, CHANDRA COLONY DHIKLI ROAD PRATAP NAGAR', 'MDS-SS-3733', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1052, 'KINJAL JOSHI', 'MR. PURAN JOSHI', 'MRS.NIMA JOSHI', '2009-06-23', 'BEHIND OLD ANKIT PUBLIC SCHOOL, OLD RTO PRATAP NAGAR SHIV COLONY ,2', 'MDS-SS-2599', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1053, 'KISHAN DANGI ( PATEL)', 'MR. TEJA RAM DANGI ( PATEL)', 'MRS. DOLI BAI', '2005-09-05', '22, LAXMI NAGAR PRATAP NAGAR ', 'MDS-SS-2833', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1054, 'KUNDAN HAMRAJ SINGH CHAUHAN', 'MR. HAMRAJ SINGH N. CHAUHAN', 'MRS. KOMAL HAMRAJ SINGH CHAUHAN', '2009-07-02', '99, MEERA NAGAR, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3662', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1055, 'LAKSHYA RAJ SINGH CHUNDAWAT', 'MR. RAGHUNATH SINGH CHUNDAWAT', 'MRS. TEJ KUNWAR', '2008-10-11', 'H2 N.B. COMPLEX NEAR POLICE THANA PRATAP NAGAR', 'MDS-SS-1286', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1056, 'LALIT KUMAWAT', 'MR. VENI RAM KUMAWAT', 'MRS.DAKHI KUMAWAT', '2009-07-05', 'SHIV COLONY,OLD RTO OFFICE ROAD,DHIKLI ROAD,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2590', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1057, 'LAVISH VAISHNAV', 'MR. MANGI DAS VAISHNAV', 'MRS. GANGA VAISHNAV', '2008-02-13', 'PRITHVI SINGH JI KA KHERA POWER HOUSE DEBARI ', 'MDS-SS-1660', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1058, 'MAYANK GARG', 'MR. RATAN LAL GARG', 'MRS. NISHA GARG', '2008-02-23', 'MEERA NAGAR OLD RTO OFFICE ROAD', 'MDS-SS-3737', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1059, 'MEGHANSHI SARNGDEVOT', 'MR. BHOPAL SINGH', 'MRS. SEEMA KUNWAR', '2009-10-14', 'MEERA NAGAR FIRST DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-2955', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1060, 'MINAL CHOUDHARY', 'MR. NARENDRA CHOUDHARY', 'MRS. RUKMANI CHOUDHARY', '2009-04-06', 'CHOUDHRIYO KA MOHALA DHEEKLI  PRATAP NAGAR UDAIPUR', 'MDS-SS-1596', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1061, 'NARESH DANGI ( PATEL)', 'Mr. VALA RAM DANGI ( PATEL)', 'MRS. VALI BAI', '2005-09-07', '22, LAXMI NAGAR PRATAP NAGAR DHIKLI ROAD', 'MDS-SS-2834', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1062, 'NISHTHA VAISHNAV', 'MR. LEELADHAR VAISHNAV', 'SUMAN VAISHNAV', '2009-07-31', '68, SHREE RAM COLONY PRATAP NAGAR UDAIPUR', 'MDS-SS-1388', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1063, 'OM PRATAP SINGH CHUNDAWAT', 'MR. NARENDRA SINGH CHUNDAWAT', 'MRS. JYOTI PANWAR', '2009-08-15', 'C/0 SMT RANJANA GUPTA 8MEERA NAGAR ,OPP RTO OFFICE,DHAKLI ROAD PRATAP NAGER ,UDAIPUR', 'MDS-SS-2027', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1064, 'PAYAL PATEL', 'MR. GAUTAM PATEL', 'MRS. KANKU PATEL', '2008-04-15', '22 BASANT VIHAR NEAR MDS SCHOOL PRATAP NAGAR', 'MDS-SS-2071', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1065, 'PRINCE MALVIYA', 'MR. BHAGWATI LAL LOHAR', 'MRS. MEENA LOHAR', '2009-02-13', 'BHAGWATI LAL LOHAR 34,JINC KACOMPLEX JARNO KI SARAY DEBARI', 'MDS-SS-3715', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1066, 'PRIYANSHI ACHARYA', 'Mr. LOKESH KUMAR ACHARYA', 'REKHA SAHRMA', '2009-10-01', '42, KAPIL VIHAR BEDWAS', 'MDS-SS-2420', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1067, 'RAKESH REBARI', 'MR. SOHAN LAL REBARI', 'MRS. LAXMI BAI', '2008-02-08', 'REBARIYON KA GUDA, NEAR MATAJI MANDIR', 'MDS-SS-2075', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1068, 'RINKU KUMARI CHOUHAN', 'MR. NARENDRA SINGH CHOUHAN', 'MRS. CHANDRA CHOUHAN', '2009-07-12', 'NEAR SHIV TEMPLE FRONT OF MDS SCHOOL MEERA NAGAR', 'MDS-SS-3039', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1069, 'RITURAJ SINGH RANAWAT', 'MR. JORAWAR SINGH RANAWAT', 'MRS. RENU KUNWAR RANAWAT', '2009-04-10', 'NEAR MDS SCHOOL OLD RTO DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-1629', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1070, 'RUDRA JOSHI', 'MR. POORAN JOSHI', 'MRS. CHAHCHAL JOSHI', '2009-06-04', '531, RAHAT WALI GALI, DHIKLI, UDAIPUR', 'MDS-SS-2611', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1071, 'SAKSHI KUMAWAT', 'MR. DINESH KUMAR KUMAWAT', 'MRS.REKHA KUMAWAT', '2009-10-29', '18,MEERA NAGAR 3RD DHIKLI ROAD OPP.OLD RTO,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2596', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1072, 'SHIVNATH CHAUHAN', 'MR. BAHADUR NATH CHOUHAN', 'MRS.UMA KUNWAR CHOUHAN', '2009-05-18', 'SHIV COLONY MEERA NAGAR ROAD OLD RTO , PRATAP NAGAR UDAIPUR', 'MDS-SS-1382', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1073, 'SWARA AMETA', 'MR. DINESH CHANDRA AMETA', 'MRS. KUMUD AMETA', '2009-06-14', '20, MEERA NAGAR D.R.PRATAP NAGAR UDAIPUR', 'MDS-SS-1608', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1074, 'TANISHKA MITTAL', 'MR. LEKHRAJ MITTAL', 'MRS. MEENA MITTAL', '2009-01-15', '21 A N. BHAIRVAI NAGAR BEDWAS UDAIPUR', 'MDS-SS-1372', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1075, 'TANISHQ MEHTA', 'MR. PRINCE MEHTA', 'MRS. POOJA MEHTA', '2008-11-26', 'CHANDRA COLONY, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3502', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1076, 'VIRENDRA SINGH DEVRA', 'MR. RAJENDRA SINGH DEVRA', 'MRS. RAM KUNWAR', '2008-11-15', 'DHEEKLI, VAYA PRATAP NAGAR', 'MDS-SS-2500', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1077, 'YASHASVI KUNWAR SHAKTAWAT', 'MR. VIKRAM SINGH SHAKTAWAT', 'MRS. ASHA KUNWAR SHAKTAWAT', '2009-07-05', '46, B BLOCK JANAKPURI BEDWAS', 'MDS-SS-2584', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1078, 'YOGESH VAISHNAV', 'MR. POORAN DAS', 'MRS. BHAGWANTI', '2009-11-18', 'RAHAT WALI GALI DHIKLI ', 'MDS-SS-2600', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1110, 'AAYUSH SUTHAR', 'MR. HEMANT SUTHAR', 'MRS. PRATIBHA SUTHAR', '2008-09-19', 'NEAR JAIN  TEMPLE MAIN ROAD BHUWANA', 'MDS-SS-3440', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1111, 'AKSHANSH PUROHIT', 'MR. JAGDISH PUROHIT', 'MRS. ANJU PUROHIT', '2008-08-20', '69 SHOBHAGYA NAGAR RAKAM PURA ROAD N. BAIRWA NAGAR UDAIPUR', 'MDS-SS-1267', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1112, 'ANIRUDRA PRATAP SINGH DEORA', 'MR. MOHAN SINGH DEORA', 'MRS. VIJAY LAXMI DEORA', '2007-11-21', '93-MEERA NAGAR ,PRATAP NAGAR ,RTO', 'MDS-SS-1574', 0, 4, 1, '', '', 'MDS-SS-1574.pdf', '2017-01-04', 0),
(1113, 'BHAVIKA BANSAL', 'Mr. HARI PRAKASH BANSAL', 'KAMLA BANSAL', '2007-10-19', 'G-2, GROUND FLOOR,DESIGNER HEIGHTS COMPLEX,OLD RTO -DHIKALI,PRATAP NAGAR,UDAIPUR(RAJ.)', 'MDS-SS-3454', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1114, 'DEEPSHIKHA DEWRA', 'MR. JAIPAL SINGH DEWRA', 'MRS. MAYA KUNWAR', '2008-03-14', 'SHIV COLONY OLD RTO OFFICE DHINKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-1243', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1115, 'DEVWRATH SINGH CHOUHAN', 'MR. KALYAN SINGH CHOUHAN', 'MRS. MITHU KUNWAR', '2008-01-14', 'OLD RTO OFFICE PRATAP NAGAR MEERA NAGAR', 'MDS-SS-2214', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1116, 'DRASHTI JHALA', 'MR. UPENDRA SINGH JHALA', 'MRS. HIMMNT KUNWAR', '2009-01-31', 'ZINC COMPLEX, DEBARI, UDAIPUR', 'MDS-SS-3457', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1117, 'GARVIT MEGHWAL', 'MR. GIRISH MEGHWAL', 'MRS.RADHA MEGHWAL', '2008-10-11', '448/36 JYOTI COLONY,NO.2 GLASS FACTORY,SUNDERWAS,UDAIPUR', 'MDS-SS-2702', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1118, 'HARSHVARDHAN SINGH CHUNDAWAT', 'MR. JITENDER SINGH', 'MRS.DIMPAL KUNWER', '2007-11-11', 'B BLOCK JANAKPURI BEDWAS,UDAIPUR', 'MDS-SS-2749', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1119, 'HEMANK NAVAL', 'MR. VIRENDRA NAVAL', 'MRS. NEETA NAVAL', '2009-02-08', '113, BEHIND SURYA GAS GODOWN CHANDRA COLONY PRATAP NAGAR UDAIPUR', 'MDS-SS-1306', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1120, 'HEMENDRA SINGH DEVRA', 'MR. MAKHAN SINGH DEVRA', 'MRS. BHANWAR KUNWAR DEVRA', '2007-02-18', 'DEBARI SINGHAWATO KA WADAJI ', 'MDS-SS-2516', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1121, 'JHANVI VAIRAGI', 'MR OM PRAKASH VAIRAGI', 'MRS VIDHYA VAIRAGI', '2009-01-04', 'DHEEKLI ROAD,PRATAP NAGAR', 'MDS-SS-3019', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1122, 'KAPIL VAISHNAV', 'MR. SHANTI DAS VAISHNAV', 'MRS. DURGA VAISHNAV', '2009-02-06', 'REBARIYON KA GUDA, DHEEKLI, PRATAP NAGAR', 'MDS-SS-2509', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1123, 'KHUSHI KANWAR RATHORE', 'MR. BHAGWAT SINGH RATHORE', 'MRS. MEERA KANWAR RATHORE', '2008-07-16', '321, NAKODA NAGAR-2, BEDWAS, UDAIPUR', 'MDS-SS-3474', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1124, 'LOKENDRA SINGH GEHLOT', 'MR. LAL SINGH GEHLOT', 'MRS.MEERA KUNWAR', '2008-11-22', '17 KAMAL COMPLEX OLD RTO DHEEKLI ROAD UDAIPUR', 'MDS-SS-1939', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1125, 'MAITREYA NAGDA', 'MR. AMBA LAL NAGDA', 'MRS. KHUSHWANTI NAGDA', '2008-12-19', 'VPO- NAVANIA THE. VALLABH NAGAR ', 'MDS-SS-1670', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1126, 'MANVEER SINGH RAO', 'MR. HAMER SINGH RAO', 'MRS. PARAS KUNWAR', '2008-04-16', 'CHANDRA COLONY I STREET PRATAP NAGAR', 'MDS-SS-1296', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1127, 'NANDNI JHALA', 'MR. HARI SINGH JHALA', 'MRS. SAROJ KUNWAR JHALA', '2007-11-11', 'NAKODA NAGAR II RAKAMPURA ROAD PRATAP NAGAR', 'MDS-SS-2348', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1128, 'PRAGYAN RAJ SINGH RATHORE', 'MR SATYENDRA PAL SINGH', 'MRS MEENA KUNWAR', '2006-08-27', '202 SUBHASH NAGAR', 'MDS-SS-3028', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1129, 'PRIYANSHU SHARMA', 'MR. PRAKASH SHARMA', 'MRS. MANJU LATA  SHARMA', '2008-01-01', 'NEAR RAILWY CROSSING, BEDWAS , DEBARI THE. GIRWA UDAIPUR', 'MDS-SS-0938', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1130, 'RAHUL PATEL', 'MR. PURALAL PATEL', 'MRS. DEVI PATEL', '2007-07-24', '7,NEAR MDS SCHOOL ', 'MDS-SS-1098', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1131, 'RAJ JOSHI', 'MR. LALURAM JOSHI', 'MRS. SUNITA JOSHI', '2007-06-23', 'DHINKALI NEAR PANCHAYAT BHAWAN UDR', 'MDS-SS-1093', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1132, 'RISHI RAJ PATEL', 'MR. MAWARAM PATEL', 'MRS. CHANDA DEVI', '2008-08-09', '78, LAXMI NAGAR DHINKLI ROAD PN UDAIPUR', 'MDS-SS-1292', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1133, 'RITIK POONIA', 'MR. SOMVEER SINGH POONIA', 'MRS. SOMVEER SINGH POONIA  ', '2008-11-19', '98, NAKODA NAGAR-II, DHAUJI KI BAWARI, RAKAMPURA ROAD, UDAIPUR', 'MDS-SS-3494', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1134, 'RUDRA PRATAP SINGH DEVRA', 'MR. TAKHAT SINGH DEVRA', 'MRS. RADHA KUNWAR', '2007-09-14', 'DEBARI NORAHA THE. GIRWA UDAIPUR', 'MDS-SS-1648', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1135, 'SHIDDHARTH JAIN ', 'MR. RAKESH JAIN', 'MRS. MONIKA JAIN', '2008-07-22', 'DEVARO KA SAKRODA,ZINC SMELTER DEBARI ,UDAIPUR', 'MDS-SS-1635', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1136, 'TAMANNA MALI ', 'MR. SUNDAR LAL MALI', 'MRS. LAKSHMI DEVI MALI', '2008-09-10', '28, TULSI NAGAR  OLD RTO DHEEKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-2042', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1137, 'YASHWANT SUTHAR', 'MR. PURAN MAL SUTHAR', 'MRS.HEMLATA SUTHAR', '2008-10-05', 'SUTHRO KA MOHHALA ,DHEEKLI ROAD ', 'MDS-SS-2606', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1138, 'YUG DAGLIYA', 'MR. HITESH DAGLIA', 'MRS.SHEELA DAGLIYA', '2008-05-22', 'DESIGNER HEIGHTS,FLAT NO 205,DHIKLI ROAD,PRATAP NAGAR,NEAR OLD RTO,UDAIPUR', 'MDS-SS-2656', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1139, 'YUVRAJ SINGH LABANA', 'MR. BALVEER SINGH LABANA', 'MRS. SHARDA DEVI', '2007-12-22', 'NEAR CENTRAL ACADEMY, SEC - 3, UDIPUR', 'MDS-SS-3514', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1140, 'MANISH REBARI', 'MR. FATEH LAL REBARI', 'MRS.NARBDA DEVI', '2006-09-21', 'R.K. GUDA DHEEKLI ROAD', 'MDS-SS-2074', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1141, 'ADITI SINGH CHUNDAWAT', 'MR. NARENDRA SINGH CHUNDAWAT', 'MRS. JYOTI PANWAR', '2007-04-19', 'RANJANA GUPTA ,8 MEERA NAGAR OPP OLD RTO OFFICE DHIKALI ROAD PRATAP NAGAR UDAIPUR 313001', 'MDS-SS-2304', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1142, 'ADITYA CHOUDHARY', 'MR. RAJESH CHOUDHARY', 'MRS. SEEMA CHOUDHARY', '2007-03-25', 'V/P DHIKLI NEAR PRATAP NAGAR TEH. BADGAUN, DIST. UDAIPUR\r', 'MDS-SS-0945', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1143, 'ADITYA KUMAR KOUNDAL', 'MR. ABDESH KUMAR KOUNDAL', 'MR. ANU BALA KOUNDAL', '2006-08-01', '125, AMBFALA GUPTESWAR ROADGITANJALI HOSP. UDAIPUR ', 'MDS-SS-1681', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1144, 'APARNA VAISHNAV', 'MR. RAMESH VAISHNAV', 'MRS. LAXMI VAISHNAV', '2006-12-31', '68, SHREE RAM COLONY PRATAP NAGAR UDAOIPUR', 'MDS-SS-0777', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1145, 'BHARAT PATEL', 'MR. DEVILAL PATEL', 'MRS. SARITA PATEL', '2006-01-28', '78,SHIV COLONY PRATAP NAGARUDAIPUR', 'MDS-SS-0970', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1146, 'CHHAVI MITTAL', 'MR. LEKHRAJ MITTAL', 'MRS. MEENA MITTAL', '2006-12-07', '21 A N. BHAIRVAI NAGAR BEDWAS UDAIPUR', 'MDS-SS-1371', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1147, 'DEVENDRA NAGDA', 'MR. HEMANT NAGDA', 'MRS.SONA NAGDA', '2007-07-07', 'VILLEGE DHEEKLI TALAYA KA KUWA ', 'MDS-SS-2779', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1148, 'DHRUVIKA DAYMA', 'MR. NAVEEN KUMAR DAYMA', 'MRS. KAMLA DEVI', '2007-07-28', '25, LAXMI NAGAR, DHEEKLI ROAD, PRATAP NAGAR, UDAIPUR', 'MDS-SS-2154', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1149, 'DIVYA  CHUNDAWAT', 'MR. BHANWAR SINGH CHUNDAWAT', 'MRS. INDIRA KUNWAR', '2008-10-10', 'POSTAL ADD. 280-UIT COLONY PRATAP NAGAR UDAIPUR', 'MDS-SS-1746', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1150, 'GARVIT JOSHI', 'MR. KAMALESH JOSHI', 'MRS. PREMLATA JOSHI', '2007-08-27', '52, VAISHALI NAGAR, BLOCK - C, NEAR PACIFIC COLLEGE, DEBARI, UDAIPUR', 'MDS-SS-2564', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1151, 'GIRISH VERMA', 'MR. SURENDRA VERMA', 'MRS. ANJANA VERMA', '2007-04-13', 'PLOT NO. 13 N.B. NAGAR, NEAR  PRATAP NAGAR', 'MDS-SS-1942', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1152, 'HARSHVARDHAN SINGH RANAWAT', 'MR. SURAJPAL SINGH  RANAWAT', 'MRS. PRAKASH KUNWAR', '2006-09-17', '12,VASANT VIHAR OLD RTO ,PRATAP NAGAR ,UDAIPUR ', 'MDS-SS-2484', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1153, 'KASHISH UPADHYAY', 'MR. PRAKASH UPADHYAY', 'MRS. PREM UPADHYAY', '2008-09-06', 'TULSHI NAGAR, BEDWAS, UDAIPUR', 'MDS-SS-3468', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1154, 'KESHAV BASOTIA', 'MR. RAJESH KUMAR BASOTIA', 'MRS. POONAM BASOTIA', '2007-04-21', 'SHREE NATH COMPLEX JARON KI SARAI DEBARI UDAIPUR', 'MDS-SS-0975', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1155, 'KOMAL RAO', 'MR. BHANWAR SINGH RAO', 'MRS. MAMTA RAO', '2006-06-26', 'HN 21 E CLASS PRATAP NAGAR STONE QUARTERS', 'MDS-SS-1275', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1156, 'LAKSHITA SHAKTAWAT', 'MR. MAHENDRA SINGH SHAKTAWAT', 'MRS. PARAS KUWAR', '2010-09-01', '3A, MEERA NAGAR, DHEEKLI ROAD, UDAIPUR', 'MDS-SS-3472', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1157, 'LAKSHYA RAJ SINGH RATHORE', 'MR. PARVAT SINGH', 'MRS. ASHA KUNWAR', '2007-08-20', '92 MEERA NAGAR 1 OLD RTO , RTO ROAD, PRATAP NAGAR UDAIPUR', 'MDS-SS-0953', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1158, 'LOKENDRA SINGH CHUNDAWAT', 'MR. HARI SINGH CHUNDAWAT', 'BHAWAR KUWAR', '2007-11-06', '33,MEERANAGAR PRATAP NAGAR,UDAIPUR', 'MDS-SS-2525', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1159, 'LOVELY VAISHNAV', 'MR. AMRIT DAS VAISHNAV', 'MRS.MEENA VAISHNAV', '2008-10-26', 'RAHATWALI GHATI DHEEKLIUDAIPUR ', 'MDS-SS-2781', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1160, 'MANVENDRA SINGH CHUNDAWAT', 'MR. GANPAT SINGH', 'MRS. SUGANA KUNWAR', '2007-10-09', 'UIT COLONY, PLOT NO. 259, PRATAP NAGAR UDAIPUR', 'MDS-SS-1256', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1161, 'MONIKA TAGAYA', 'MR. SOHAN LAL', 'MRS. SANTOSH TIGAYA', '2007-12-29', 'MR. SOHAN LAL TAGAYA RTO OFFICE NR PRATAP NAGAR ', 'MDS-SS-1315', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1162, 'NIKHIL SUTHAR', 'MR. MANOHAR LAL SUTHAR', 'MRS. NARBDA SUTHAR', '2006-10-25', 'MEHRO KA GUDDA, AMBERI, UDAIPUR', 'MDS-SS-3478', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1163, 'PARIDHI SHARMA', 'MR. HEMANT SHARMA', 'MRS. RINKU SHARMA', '2007-10-09', '2, CHANDRA COLONY ROAD NO.1 OLD RTO MARG PRATAP NAGAR UDAIPUR', 'MDS-SS-0972', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1164, 'PRIYA KUNWAR RAO', 'MR BHANWAR SINGH RAO', 'MRS MAMTA KUNWAR', '2006-11-25', 'KRISHNA VIHAR OLD RTO PRATAP NAGAR', 'MDS-SS-3047', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1165, 'PUSHPENDRA SINGH BHATI', 'MR. LAXMAN SINGH BHATI', 'MRS. KAILASH KUNWAR', '2007-04-03', '32, MEERA NAGAR OLD RTO PRATAP NAGAR DHIKLI ROAD', 'MDS-SS-1258', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1166, 'RAHUL DANGI', 'MR. HEERA LAL DANGI', 'MRS. DURGA DEVI  DANGI', '2007-11-22', 'GUDLI DUNGARPURA THE. MAVLI UDAIPUR', 'MDS-SS-1662', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1167, 'RAJVEER SINGH RATHORE', 'MR. BHAGWAT SINGH RATHORE', 'MEERA KANWAR RATHORE', '2006-07-27', '321, NAKODA NAGAR, BEDWAS, UDAIPUR', 'MDS-SS-3666', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1168, 'RINKU POONIA', 'MR. SOMVEER SINGH POONIA', 'MRS. SURESHTA  POONIA', '2007-05-17', '98, NAKODA NAGAR-II, DHAUJI KI BAWARI, RAKAM PURA ROAD, UDAIPUR', 'MDS-SS-3491', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1169, 'RUDRAKSH SINGH RAO', 'MR. PUSPENDER SINGH RAO', 'MRS.JYOTSANA RAO', '2007-01-15', '103, NAKODA NAGAR, II RAKAM PURA ROAD PRATAP NAGR UDAIPUR', 'MDS-SS-2739', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1170, 'TANUSH PRAMOD SUNNE', 'MR. PRAMOD RAMESH SUNNE', 'MRS. PRIYA PRAMOD SUNNE', '2007-12-07', 'H.NO. B 5 GAYTRI NAGAR SOUTH SUNDERWAS', 'MDS-SS-3743', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1171, 'VARUN SINGH RANAWAT', 'MR. NARESH SINGH RANAWAT', 'MRS.SUMAN KUNWAR', '2007-09-14', 'H.NO. -29 TULSI NAGAR,OLD RTO ROAD,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2766', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1172, 'VISHISHTHA MEGHWAL', 'MR. RAMESH LAL MEGHWAL', 'MRS. KIRAN MEGHWAL', '2007-10-01', '43, REBARIYO KA GUDA PRATAP NAGAR', 'MDS-SS-2987', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1173, 'YASHWANT GAYARI', 'MR. PRABHU LAL GAYARI', 'MRS. LALITA DEVI', '2006-06-12', 'SUNDERWAS ,SHAYAM NAGAR ', 'MDS-SS-2994', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1174, 'AKSHIT JHAGRAWAT', 'MR. RAJESH JHAGRAWAT', 'MRS. MEENAKSHI JHARAWAT', '2006-05-06', 'C/O B.L.JHAGRAWAT 36-SHASTRI NAGAR, KHEMPURA UDAIPUR', 'MDS-SS-1948', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1175, 'ANIRUDH SINGH BHATI', 'MR. RAJENDRA SINGH', 'MRS. NIRMALA SINGH', '2005-06-23', 'NEW MEERA NAGAR PRATAP NAGAR ', 'MDS-SS-1294', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1176, 'ARYAVARAT SINGH RATHORE', 'MR SATYENDRA PAL SINGH', 'MRS MEENA KUNWAR', '2005-09-06', '202,SUBHASH NAGAR,UDAIPUR', 'MDS-SS-3027', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1177, 'ASTHA JHAGRAWAT', 'MR. DUNGRESH JHAGRAWAT', 'MRS. VANITA JHAGRAWAT', '2007-03-02', '36 SHASTRI NAGAR KHEMPURA', 'MDS-SS-1949', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1178, 'AYUSHI ACHARYA', 'MR. LOKESH KUMAR ACHARYA', 'MRS. REKHA SHARMA', '2007-01-19', '42, KAPIL VIHAR BEDWAS', 'MDS-SS-2419', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1179, 'BHAWANA  PATEL', 'MR. GAUTAM PATEL', 'MRS.KANKU PATEL', '2006-09-14', 'BASANT VIHAR H. NO. 22 PRATAP NAGAR', 'MDS-SS-2070', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1180, 'DEEPIKA RATHORE', 'MR. BHARAT SINGH RATHORE', 'MRS. BHAWAR KUNWAR', '2004-12-19', '29, RAJ COMPLEX MAYUR BHAWAN OLD RTO  PRATAP AGAR UDAIPUR', 'MDS-SS-2061', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1181, 'DIVYA VAISHNAV', 'MR. OM PRAKASH VAISHNAV', 'MRS ANITA VAISHNAV', '2005-11-12', 'SHIVA COLONY, REBARIYON KA GUDA', 'MDS-SS-2058', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1182, 'GAGAN MEGHWAL', 'MR. NARENDRA MEGHWAL', 'MRS.REENA MEGHWAL', '2006-11-27', '5 ARVIND NAGAR MAIN ROAD SUNDERWAS UDAIPUR', 'MDS-SS-1886', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1183, 'GOKUL PARMAR', 'MR. AMRIT LAL PARMAR', 'MRS. SAROJ  PARMAR', '2002-04-24', 'GOVT. MODEL RESIDENTIAL PUBLIC SCHOOL TRIBAL DHEEKLI UDAIPUR', 'MDS-SS-1254', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1184, 'GOURAV VAISHNAV', 'MR. NAVEEN VAISHNAV', 'MRS. TIRUBALA VAISHNAV', '2006-09-16', '368, B BLOCK SHRINATH COMPLEX NEAR BALAJI POLITECHNIQUE COLLAGE DEBARI', 'MDS-SS-1778', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1185, 'HIMANSHU SAHU', 'MR. RAM NARAYAN SAHU', 'MRS. YASHODA SAHU', '2006-05-05', '69, NAKODA NAGAR 3, BEDWAS PRATAP NAGAR UDAIPUR', 'MDS-SS-0817', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1186, 'JIGYASA VEERWAL', 'MR. SANTOSH VEERWAL', 'MRS. LALITA BEN VEERWAL', '2006-04-21', 'KRISHNA VIHAR OLD RTO OFFICE PRATAP NAGAR', 'MDS-SS-3659', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1187, 'KANISHKA CHOUDHARY', 'MR. LOKESH CHOUDHARY', 'MRS. REKHA CHAUDHARY', '2006-04-08', 'DHEEKLI CHOUDHRY KA MOHALLA ', 'MDS-SS-0544', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1188, 'KARAN CHOUDHARY', 'MR. NARENDRA CHOUDHARY', 'MRS. RUKMANI CHOUDHARY', '2005-08-30', 'CHOUDHRIYO KA MOHALA DHEEKLI  PRATAP NAGAR UDAIPUR', 'MDS-SS-0584', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1189, 'KARAN SINGH RAO', 'MR. PRATAP SINGH RAO', 'MRS. PUSHPA KUNWAR RAO', '2006-09-17', 'SHIV COLONY PRATAP NAGAR UDAIPUR', 'MDS-SS-1628', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1190, 'KUNAL DEV REDIYA', 'MR. CHOTH MAL REGAR', 'MRS.GANGESHWARI REGAR', '2006-07-23', '30 NAKODA NAGAR I,DHAUJI KI BADE,RAKAM PURA ROAD,BEDWAS,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2617', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1191, 'KUNDAN NATH CHOUHAN', 'MR. VAKTAWAR NATH CHOUHAN', 'MRS. SUNDER KUNWAR', '2006-07-05', 'MEERA NAGAR SHIV COLONY PRATAP NAGAR', 'MDS-SS-2306', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1192, 'LAKSHRAJ SINGH CHUNDAWAT', 'MR. YASHWANT SINGH CHUNDAWAT', 'MRS. PAWAN KUNWAR', '2005-06-30', '29, MEERA NAGAR, DHEEKLI ROAD, PRATAP NAGAR, UDAIPUR', 'MDS-SS-0664', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1193, 'LALITA KUNWAR DEVRA', 'MR. MAKHAN SINGH DEVRA', 'MRS. BHAWAR KUNWAR DEVRA', '2005-10-18', 'DEBARI SINGHWATO KA WADA', 'MDS-SS-2519', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1194, 'LOKESH PATIDAR', 'MR. SUNIL PATIDAR', 'MRS. DURGA PATIDAR', '2006-03-03', '15,GHARONDA UIT COLONY ', 'MDS-SS-3663', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1195, 'MAHI JHALA', 'MR. PUSHPENDRA SINGH JHALA', 'MRS. REENA KUNWAR', '2006-12-21', '68, MEERA NAGAR, PRATAP NAGAR', 'MDS-SS-0612', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1196, 'MAHIMA VAISHNAV', 'MR. NARESH KUMAR VAISHNAV', 'MRS. PREM LATA VAISHNAV', '2006-05-06', 'VILL. & POST. DHEEKLI UDAIPUR', 'MDS-SS-0631', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1197, 'MANTHAN PARIHAR', 'MR. VINOD PARIHAR', 'MRS. NEELU PARIHAR', '2006-09-21', 'SHIV COLONY DHIKHLI ROAD NEAR OLD RTO OFFICE PRATAP NAGAR', 'MDS-SS-3665', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1198, 'MONISH TAILOR', 'MR. CHANDRESH TAILOR', 'MRS. ROLI TAILOR', '2006-04-10', 'C/O SURESH GOYAL, 4-A, GANPATI NAGAR, BOHRA GANESH JI ROAD, UDAIPUR', 'MDS-SS-2230', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1199, 'NANDINI DETHA', 'MR. LALIT SINGH DETHA', 'MRS. RAJAL RATNU', '2006-06-10', '291 B-BLOCK, PRATAP NAGAR, NEAR KV-1', 'MDS-SS-2486', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1200, 'NARPAT SINGH PADIYAR', 'MR. SAJJAN SINGH PADIYAR', 'MRS. SITA KUNWAR', '2004-11-30', 'R/O ARJUN SINGH JHALA, CHANDRA COLONY-2, DHEEKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-1950', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1201, 'NAVEEN KRISHNA GORAWAD', 'MR. KANARAM MEGHWAL', 'MRS. SONU MEGHWAL', '2003-10-28', 'REBARIYON KA GUDA, UDAIPUR', 'MDS-SS-3484', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1202, 'NEETI DADHEECH', 'MR. BHAGWATI PRASAD DADHEECH', 'MRS. BINDU DADHEECH', '2006-09-27', 'BHAGWATI MEDICAL STORE, OLD RTO, VILL. & POST.DHEEKLI PRATAP NAGAR UDAIPUR', 'MDS-SS-0518', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1203, 'NEHA DEVRA', 'MR. KALYAN SINGH DEVRA', 'MRS. LAXMI KUNWAR', '2005-04-27', '3 CHANDRA COLONY BEHIND SURYA GAS AGENCY', 'MDS-SS-0633', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1204, 'NITIN VAISHNAV', 'MR. BHARAT DAS VAISHNAV', 'MRS. LALITA DEVI VAISHNAV', '2005-12-20', 'SHIV COLONY REBARIYO KA GUDA', 'MDS-SS-2487', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1205, 'PAVAN DANGI', 'MR. PRAKASH DANGI', 'MRS. DURGA DEVI', '2005-09-24', 'GUDLI VILLAGE TEHSIL-MAVALI,UDAIPUR', 'MDS-SS-3495', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1206, 'PRANAV JOSHI', 'MR DILIP JOSHI', 'MRS MAMTA JOSHI', '2006-01-21', '69 TIRUNATI NAGAR,OLD RTO,DHEEKLI ROAD,PRATAP NAGAR', 'MDS-SS-3053', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1207, 'PRATIBHA SHAKTAWAT', 'MR. GAJRAJ SINGH SHAKTAWAT', 'MRS. JASWANT KUNWAR', '2006-08-27', '144, SHREE N BAIRWA NAGAR', 'MDS-SS-0503', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1208, 'PRAVESH CHOUHAN', 'MR. VIJAY', 'MRS. MANJU', '2007-01-11', 'OLD RTO OFFICE SHIV COLONY PRATAP NAGAR', 'MDS-SS-3673', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1209, 'PARINEETA RANAWAT', 'MR. SAMARVEER SINGH RANAWAT', 'MRS. SUMITRA', '2006-07-02', 'KRISHNA VIHAR COLONY, DHEEKLI ROAD, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3504', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1210, 'PRIYESH PALIWAL', 'MR. GAJENDRA PALIWAL', 'MRS. BHAWANA PALIWAL', '2005-05-19', '81-NORTH SUNDERWAS VIDHYA VIHAR COLONY UDAIPUR', 'MDS-SS-0551', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1211, 'RADHE SHYAM GURJAR', 'MR. KISHANLAL GURJAR', 'MRS. BENA GURJAR', '2006-01-06', '141,N- BHERANEAYA NAGAR, BEDWAS UDAIPUR', 'MDS-SS-1068', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1212, 'SAVITA DANGI', 'MR. HEERA LAL DANGI', 'MRS. DURGA  DEVI DANGI', '2006-02-12', 'GUDLI DUNGARPURA THE. MAVLI UDAIPUR', 'MDS-SS-1663', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1213, 'SHUBHAM PARIHAR', 'MR. MUKESH PARIHAR', 'MRS. RANI PARIHAR', '2005-04-22', 'PARIHAR BHAWAN GLASS FACTORY CHOURYA SUNDERWAS', 'MDS-SS-1562', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1214, 'SUHANI RANAWAT', 'MR. SURENDRA SINGH RANAWAT', 'MRS. MADHU KUNWAR ', '2007-09-20', 'OLD RTO MEERA NAGAR HOUSE NO. 33, PRATAP NAGAR', 'MDS-SS-1297', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1215, 'VINAY SINGH RAO', 'MR. DHARMENDRA SINGH RAO', 'MRS.TRIGUNESHWARI RAO', '2007-03-24', 'HOUSE NO9,NAKODA NAGAR 2ND,NEAR NCA SCHOOL,UDAIPUR', 'MDS-SS-2675', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1216, 'VRINDA PUROHIT', 'MR. SUNIL PUROHIT', 'MRS. SIMMY PUROHIT', '2005-12-14', '272,273, NAKODA NAGAR, UDAIPUR', 'MDS-SS-1432', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1217, 'VIDHI SHAKTAWAT', 'MR. HIMMAT SINGH', 'MRS. VISHNU KUNWAR', '2005-10-21', '26/MEERA NAGAR OLD RTO ROAD PRATAP NAGAR', 'MDS-SS-0557', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1218, 'ARVIND SINGH JHALA', 'MR. BRIJ BHAN SINGH JHALA', 'MRS. SUMITRA KUNWAR', '2006-08-16', '64,SHREE NATH COMPLEX JARENO KI SARAY DEBARI', 'MDS-SS-1189', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1219, 'RAHUL VAISHNAV', 'MR. JEEVAN DAS JI VAISHNAV', 'MRS. PINKI DEVI VAISHNAV', '2006-06-20', 'RAHAT WALI GATI DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-3705', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1220, 'DIVYA RATHORE', 'MR. JAY SINGH RATHORE', 'MRS. JEEVAN KUNWAR', '2006-10-01', '24-25 CHANDRA COLONY OLD RTO ROAD PRATAP NAGAR', 'MDS-SS-1841', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1221, 'CHANDRIKA KUNWAR JHALA', 'MR. BAHADUR SINGH JHALA', 'MRS. RAJ KUNWAR', '2006-07-18', 'DHEEKLI ROAD PRATAP NAGAR ', 'MDS-SS-3716', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1222, 'KRISH SHARMA', 'MR. NARESH KR. SHARMA', 'MRS. MAMTA VYAS', '2006-05-28', '78, CHANDRA COLONY DHIKLI ROAD PRATAP NAGAR', 'MDS-SS-3732', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1258, 'ABHISHEK SINGH  SHAKTAWAT', 'MR. MAHENDRA S. SHAKTAWAT', 'MRS. PARWATI SHAKTAWAT', '2003-02-26', 'NEAR MDS SCHOOL DHEKLI ROAD PRATAP  NAGAR UDAIPUR', 'MDS-SS-0979', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1260, 'BHARAT KUMAWAT', 'MR. CHUNNI LAL KUMAWAT', 'MRS.PUSHPA DEVI KUMAWAT', '2004-09-21', 'HN-83 CHANDRA COLONY GALI NO. -2 PRATAP NAGAR', 'MDS-SS-3038', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1261, 'BHARAT SINGH RAO', 'MR. CHHAGAN SINGH RAO', 'MRS. DHANWANTI KUNWAR RAO', '2003-06-18', '289, UIT COLONY PRATAP NAGAR ', 'MDS-SS-0748', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1262, 'DEEPAK SINGH DEVRA', 'MR. MANGAL SINGH DEVRA', 'MRS. GUDDI KUNWAR', '2004-11-04', 'SHIV SHAKTI SADAN DHIKHLI ROAD PRATAP NAGAR', 'MDS-SS-2423', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1263, 'DILIP SINGH RAO', 'MR. KUBER SINGH RAO', 'MRS.LAXMI KUNWAR', '2003-09-12', '643 CHANDRA COLONY,ANKIT PUBLIC SCHOOL,DHIKLI ROAD,OLD RTO OFFICE,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2573', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1264, 'DIVYA SUTHAR', 'MR. MANOHAR SUTHAR', 'MRS.NARABADA SUTHAR', '2003-11-04', 'NR.CHAR BHUJA TEMPLE,MEHRO KA GUDDA,AMBERI,UDAIPUR', 'MDS-SS-2748', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1265, 'DIVYESH VEERWAL', 'MR. SANTOSH VEERWAL', 'MRS. LALITA BEN', '2003-12-29', 'KRISHNA VIHAR BEHIND MDS SCHOOL OLD RTO OFFICE PRATAP NAGAR', 'MDS-SS-3655', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1266, 'GAJRAJ SINGH SARANGDEVOT', 'MR. DEEP SINGH SARANGDEVOT', 'MRS. SHAILENDRA KUNWAR', '2005-05-28', '55 TULSI NAGAR OLD RTO OFFICE NAGAR UDAIPUR', 'MDS-SS-0920', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1267, 'GANVENDRA SINGH RATHORE', 'MR. BHUPENDRA SINGH RATHORE', 'MRS.ABHILASHA RATHORE', '2004-11-29', '59 MEERA NAGAR,DHIKLI ROAD,UDAIPUR', 'MDS-SS-2685', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1268, 'HARSHAL CHOUBISA', 'MR. PRAVEEN KUMAR CHOUBISA', 'MRS. NEETU CHOUBISA', '2003-11-15', '75, KRISHNA VIHAR COLONY, BEHIND MDS SCHOOL, OLD RTO PRATAP NAGAR', 'MDS-SS-2305', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1269, 'HARSHITA BANSAL', 'Mr. HARI PRAKASH BANSAL', 'MRS. KAMLA BANSAL', '2004-10-07', 'G-2,GROUND FLOOR,DESIGNER HEIGHTS COMPLEX,OLD RTO-DHIKALI,PRATAP NAGAR,UDAIPUR(RAJ.)', 'MDS-SS-3466', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1270, 'JHANVI CHOUHAN', 'MR. LALIT SINGH CHOUHAN', 'MRS. LALITA KUNWAR', '2004-02-18', '6, MEERA NAGAR OLD RTO ROAD PRATAP NAGAR', 'MDS-SS-1815', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1271, 'KHUSH JOSHI', 'MR. POORAN JOSHI', 'MRS. CHANCHAL JOSHI', '2004-10-22', '531, RAHTH WALI GHATI, DHINKALI', 'MDS-SS-2780', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1272, 'KHUSHAL VAISHNAV', 'MR. MADAN DAS VAISHNAV', 'MRS. KUSUM VAISHNAV', '2004-03-17', 'RAJ COMPLEX IN FRONT OF MDS PUBLIC SCHOOL UDAIPUR REBARIYON KA GUDA UDAIPUR', 'MDS-SS-0282', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1273, 'KHUSHBOO RANAWAT', 'MR. MAHENDRA SINGH RANAWAT', 'MRS. FEPA KUNWAR', '2004-03-23', 'JARIO KI SARAI , JINC COMPLEX DEBARI', 'MDS-SS-2518', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1274, 'KUSUM KUNWAR DEVRA', 'MR. MOHAN SINGH DEVRA', 'MRS. GULAB KUNWAR DEVAR', '2002-03-06', 'SINGAWATO KA KHEDA DEBARI', 'MDS-SS-1217', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1275, 'KUSUM MEGHWAL', 'MR. LACCHI RAM MEGHWAL', 'MRS. LEELA MEGHWAL', '2004-06-18', 'NANDWAL POST TEHSIL VALLABHNAGAR ', 'MDS-SS-1877', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1276, 'LAKSHIT TIGAYA', 'MR. SUKH DEV PRASAD TIGAYA', 'MRS. ANITA TIGAYA', '2004-03-23', '9, NEW NAKODA DHARSHAN COMPLEX CHANDRA COLONY PRATAP NAGAR', 'MDS-SS-0269', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1277, 'MANASVI MEGHWAL', 'MR. RAKESH MEGHWAL', 'MRS. LEELA MEGHWAL', '2005-12-05', '154, UIT COLONY PRATAP NAGAR', 'MDS-SS-2347', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1278, 'MEENAKSHI PATEL', 'MR. BHANWAR LAL PATEL', 'MRS. KANTA DEVI', '2003-08-01', 'B-56 MEERA NAGAR DHINKLI ROAD PN UDAIPUR', 'MDS-SS-1035', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1279, 'MONEEL SEN', 'MR. JAI NARAYAN SEN', 'MRS. RENU SEN', '2003-11-19', '48,MEERA NAGAR OLD RTO PRATAP NAGAR', 'MDS-SS-1780', 0, 8, 1, '', '', '', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`, `hold`) VALUES
(1280, 'NAVEKSHA VAIRAGI', 'MR. GOPAL VAISHNAV', 'MRS. JAYA VAISHNAV', '2005-03-04', 'CHANDRA COLONY PRATAPNAGAR UDAIPUR', 'MDS-SS-0954', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1281, 'NILESH PATEL', 'MR. PURA LAL PATEL', 'MRS. DEVI PATEL', '2004-01-20', '7, NEAR MDS SCHOOL', 'MDS-SS-1096', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1282, 'PRATEEK CHOUDHARY', 'MR. VIJAY PAL SINGH', 'MRS. PUSHPA DEVI CHOUDHARY', '2005-11-18', '19 D VESHALI NAGAR NEAR PACIFIC  DEBARI', 'MDS-SS-2041', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1283, 'POOJA SOLANKI', 'MR. PRATHVI SINGH SOLANKI', 'MRS. MITTU KUNWAR CHUNDAWAT', '2004-07-26', '65, KRISHNA VIHAR DHEEKHLI ROAD PRATAP NAGAR', 'MDS-SS-0985', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1284, 'PRAKSHIT SHARMA', 'MR. VIJENDRA SHARMA', 'MRS. SUNITA SHARMA', '2003-01-24', '83, CHANDRA COLONY OLD RTO OPP. SURYA NAGAR GAS GODWAN', 'MDS-SS-1668', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1285, 'PRAVEEN MALI', 'MR. SUNDAR LAL MALI', 'MRS. LAXMI MALI', '2003-03-19', 'PURANA RTO OFFICE PRATAP NAGAR', 'MDS-SS-1340', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1286, 'PRIYA KUNWAR DEVRA', 'MR. NIRBHAY SINGH DEVRA', 'MRS. PUSHPA KUNWAR DEVRA', '2003-01-11', 'VIP SINGAWATO KA WARA DEBARI, UDR', 'MDS-SS-1218', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1287, 'RAGINI VAISHNAV', 'MR. MOHAN DAS VAISHNAV', 'MRS. RADHA DEVI VAISHNAV', '2003-11-02', 'REBARIYON KA GUDA,DHIKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0820', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1288, 'RAJVEER SINGH RAO', 'MR. VIJAY SINGH RAO', 'MRS. MOHAN KUNWAR RAO', '2004-09-19', 'KRISHNA VIHAR OLD RTO OFFICE PRATAP NAGAR UDAIPUR', 'MDS-SS-0647', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1289, 'SAMAR PARIHAR', 'MR. RAJESH PARIHAR', 'MRS. SUDHA PARIHAR', '2004-06-08', 'OLD RTO OFFICE SHIV COLONY PRATAP NAGAR ANKIT SCHOOL NEAR', 'MDS-SS-3674', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1290, 'SHIVAM JOSHI', 'MR. MUKESH JOSHI', 'MRS. MAMTA JOSHI', '2003-04-28', '33, SHANTINATH NAGAR, NEAR ANKIT PUBLIC SCHOOL, OLD RTO PRATAP NAGAR', 'MDS-SS-2465', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1291, 'SUBHASH REBARI', 'MR. KALU LAL REBARI', 'MRS. GATTU  REBARI', '2004-07-26', 'REBARIYON KA GUDA THE. GIRWA UDAIPUR', 'MDS-SS-0805', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1292, 'TINA KUNWAR SOLANKI', 'MR. SULTAN SINGH SOLANKI', 'MRS. SAROJ KUNWAR', '2004-06-24', '2, BASANT VIHAR OLD RTO OFFICE DHEEKHLI ROAD ', 'MDS-SS-1082', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1293, 'KHUSHRAJ SINGH JHALA', 'MR. BALVEER SINGH JHALA', 'MRS. SHOBHA KUNWAR', '2003-07-14', 'OLD RTO MEERA NAGAR II', 'MDS-SS-3698', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1294, 'MAYANK PARIHAR', 'MR. VINOD PARIHAR ', 'MRS. NEELU PARIHAR', '2004-09-13', 'SHIV COLONY RTO TOAD PRATAP NAGAR ', 'MDS-SS-2527', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1295, 'LUCKY LOHAR', 'MR. BHAGWATI LAL LOHAR', 'MRS. MEENA LOHAR', '2004-01-01', 'BHAGWATI LAL LOHAR 34,JINC KACOMPLEX JARNO KI SARAY DEBARI', 'MDS-SS-3714', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1296, 'VARSHA SHARMA', 'MR. DEVI LAL SHARMA', 'MRS. HEERA SHARMA', '2004-08-09', 'TULSHI NAGAR BEDWAS', 'MDS-SS-0778', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1297, 'ARUL DEORA', 'MR. MOHAN SINGH DEORA', 'MRS. VIJAY LAXMI DEORA', '2003-04-22', '93, MEERA NAGAR PRATAP NAGAR OLD TRO', 'MDS-SS-0736', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1298, 'ARYAN CHOUDHARY', 'MR. RAJESH CHOUDHARY', 'MRS. SEEMA CHOUDHARY', '2003-09-23', 'VILL & PO. DHIKLI NEAR PRATAP NAGAR UDAIPUR', 'MDS-SS-0215', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1299, 'AYUSH ROY', 'MR. RAMPRAVESH ROY', 'MRS. RAGNI ROY', '2002-09-19', 'DHIKHILI ROAD  KRISHNA BIHARDAI', 'MDS-SS-1429', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1300, 'BHARAT SINGH DEVRA', 'MR. KALYAN SINGH DEVRA', 'MRS. LAXMI DEVRA', '2002-09-14', '3, CHANDRA COLONY PRATAP NAGAR', 'MDS-SS-0633', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1301, 'BHASKAR SALVI', 'MR. GOVERDHAN LAL SALVI', 'MRS. RANJANA SALVI', '2003-05-09', '38, SHIV COLONY OPP ANKIT PUBLIC SCHOOL PRATAP NAGAR UDAIPUR', 'MDS-SS-0604', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1302, 'DIVYANI PARMAR', 'MR. AMRIT LAL PARMAR', 'MRS. SURAJ DEVI PARMAR', '2001-01-01', 'GOVT. MODEL RESIDENTIAL PUBLIC SCHOOL TRIBAL DHEEKLI UDAIPUR', 'MDS-SS-1285', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1303, 'GUNGUN MEGHWAL', 'MR. NARENDRA MEGHWAL', 'MRS. REENA MEGHWAL', '2003-09-09', '5 ARVIND NAGAR MAIN ROAD SUNDERWAS UDAIPUR', 'MDS-SS-1887', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1304, 'ISHA JETHANI', 'MR. GIRDHARI LAL JETHANI', 'MRS. VEENA JETHANI', '2003-05-30', '23, pratap nagar', 'MDS-SS-217', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1305, 'JAHNAVI JAIN', 'MR. SUNIL KUMAR JAIN', 'MRS. JYOTI JAIN', '2002-08-22', 'UDAIPUR', 'MDS-SS-3465', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1306, 'JAYVEER SINGH SISODIYA', 'MR. NAVEEN SINGH SISODIYA', 'MRS. ANJALI SISODIYA', '2003-05-21', '87, NAKODA NAGER, 3,NEAR NAKODA COMPLEX BEDWAS', 'MDS-SS-2293', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1307, 'KAILASH PATEL', 'MR. SHANKER LAL PATEL', 'MRS. NATHI BHAI PATEL', '2001-12-29', 'KAILASH AMETA C/O HEERA LAL PATEL CHANDRA COLONY  NEAR ANKIT PUBLIC SCHOOL', 'MDS-SS-2620', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1308, 'KARNIRAJ SINGH SHAKTAWAT', 'MR. YUVRAJ SINGH SHAKTAWAT', 'MRS. SEEMA KUNWAR', '2002-11-01', 'MEERA NAGAR (LAXMI NAGAR II) OLD RTO ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-1255', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1309, 'KAVITA SHAKTAWAT', 'MR. KALYAN SINGH SHAKTAWAT', 'MRS. KRISHNA KUNWAR SHAKTAWAT', '2002-07-07', '6, NEW MEERA NAGAR', 'MDS-SS-1952', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1310, 'KHUSH VAIRAGI', 'MR. RADHESHYAM VAIRAGI', 'MRS. KALA VAIRAGI', '2003-12-26', 'OPP MDS SCHOOL DHIKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0935', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1311, 'KIRTAN CHOUDHARY', 'MR. MANOHAR LAL CHOUDHARY', 'MRS. ASHA CHOUDHARY', '2003-11-23', '23, U.I.T. DHIKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0494', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1312, 'LAKHAN MALI', 'MR. RAMESH MALI', 'MRS. MAYA MALI', '2002-04-15', 'MAIN ROAD, GUDLI, UDAIPUR', 'MDS-SS-3483', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1313, 'PIYUSH JHALA', 'MR. KALYAN SINGH JHALA', 'MRS. UMED KUNWAR', '2004-06-24', 'OLD RTO DHEEKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0712', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1314, 'POOJA DANGI', 'MR. HEERA LAL DANGI', 'MRS. DURGA DANGI', '2004-01-23', 'GUDLI DUNGARPURA THE. MAVLI UDAIPUR', 'MDS-SS-1661', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1315, 'PRIYANSHI VAISHNAV', 'MR RAJKUMAR VAISHNAV', 'MRS KHUSHBU VAISHNAV', '2004-09-16', 'VPU DHINKLI', 'MDS-SS-3011', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1316, 'RIDAM JAIN', 'MR. PAWAN JAIN', 'MRS. CHITRA JAIN', '2003-11-21', 'VILL & PO. SAKRODHA THE. GIRWA UDAIPUR', 'MDS-SS-0781', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1317, 'SATVIK PRAJAPAT', 'MR. RANJAN RAJ PRAJAPAT', 'MRS. SUSHEELA DEVI PRAJAPAT', '2004-10-02', '3A, TULSI NAGAR, 100 FEET ROAD, OLD RTO OFFICE ROAD, UDAIPUR', 'MDS-SS-3496', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1318, 'SEJAL DEVRA', 'MR. TAKHAT SINGH DEVRA', 'MRS. RADHA KUNWAR', '2003-09-16', 'DEBARI NOHRA THE. GIRWA UDAIPUR', 'MDS-SS-0732', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1319, 'SHREYA VAISHNAV', 'MR. KALYAN DAS VAISHNAV', 'MRS. REEMA VAISHNAV', '2003-08-02', 'NEAR MDS PUBLIC SCHOOL', 'MDS-SS-0765', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1320, 'SONU REBARI', 'MR. DALI CHAND REBARI', 'MRS. SITA REBARI', '2001-11-03', 'REBARIO KA GUDA, POST DHIKLI , THE. BARGOAN, UDAIPUR', 'MDS-SS-0309', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1321, 'SRISHTI REGAR', 'MR. BANSHI LAL REGAR', 'MRS. MOHANI REGAR', '2002-11-01', '176, N BAIRWA NAGAR BEDWAS ,PRATAP NAGAR UDAIPUR', 'MDS-SS-0281', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1322, 'SWASTIKA SINGH SHAKTAWAT', 'MR. INDER SINGH SHAKTAWAT', 'MRS. SHOBHA KUNWAR', '2003-07-17', 'VPO. PHILA TESHIL GIRVA DISTIRICUDAIPUR', 'MDS-SS-3501', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1323, 'TARUNA PATEL', 'MR. MAWA RAM PATEL', 'MRS. CHANDA DEVI', '2003-09-07', '78, LAXMI NAGAR II, DHINKLI ROAD, PRATAP NAGAR UDAIPUR', 'MDS-SS-0546', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1324, 'VIDHI JAIN', 'MR. MAHAVEER JAIN', 'MRS. PRITI JAIN', '2003-11-11', 'MEHTA BHAVAN VILL. SAKRODA KURABAD ROAD, GIRVA UDAIPUR', 'MDS-SS-0742', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1325, 'VIJAY SHARMA', 'MR. RAMESH CHANDRA SHARMA', 'MRS.SHOBHNA SHARMA', '2004-01-24', '303,UIT COLONY,PRATAP NAGAR,OLD RTO', 'MDS-SS-2595', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1326, 'VINIT AMETA', 'MR. CHANDRA SHAKHER AMETA', 'MRS. LAJWANTI AMETA', '2003-06-27', '15,16- RAJ COMPLEX DHEEKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0622', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1327, 'VINITA CHAUHAN', 'MR. BAHADUR NATH CHAUHAN', 'MRS. UMA KUNWAR', '2003-03-31', '65, CHANDRA COLONY H.NO. 02, RTO PRATAP NAGAR UDAIPUR', 'MDS-SS-0471', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1328, 'VINOD  REBARI', 'MR. MANGI LAL REBARI', 'MRS. BHALA BAI', '2002-03-21', 'REBARIYON KA GUDA THE. GIRWA UDAIPUR', 'MDS-SS-0818', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1329, 'LAKSHITA SINGH RANAWAT', 'MR. JORAWAR SINGH RANAWAT', 'MRS. RENU KUNWAR RANAWAT', '2003-05-28', 'NEAR MDS SCHOOL OLD RTO DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-0223', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1330, 'SONALI GARG', 'MR. RATAN LAL GARG', 'MRS. NISHA GARG', '2000-10-28', 'MEERA NAGAR OLD RTO OFFICE ROAD', 'MDS-SS-3708', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1331, 'RAJDEEP SINGH', 'MR. C.M. VERMA', 'MRS. MAYA BAJAD', '2003-07-24', 'OSWAL PLAZA -1 RANA PRATAP NAGAR ', 'MDS-SS-3712', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1332, 'PRATEEK SONI', 'MR. RADHESHYAM SONI', 'MRS. BHAVANA SONI', '2004-09-16', 'HOUSE NO. 2 ADARSH NAGAR H. M. SEC. 4', 'MDS-SS-3713', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1333, 'PUSHPENDRA SOLANKI', 'MR. JASWANT SINGH SOLANKI', 'MRS. JASWANT SINGH ', '2004-11-27', '21, TULSHI NAGAR BEDWAS CHORYA NEAR MSW COLLEGE PRATAP NAGAR', 'MDS-SS-3721', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1334, 'ADITYA JOSHI', 'MR. DINESH KUMAR', 'MRS  URMILA JAIN', '2002-01-07', '25, N.B. NAGAR DHAU JI KI BAWRI BEDWAS', 'MDS-SS-3441', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1335, 'AMAN KAVDIA', 'MR. TARUN KUMAR KAVDIA', 'MRS. SHARDA KAVDIA', '2002-01-01', 'GUDLI TEH. MAVLI', 'MDS-SS-2979', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1336, 'ANSHIKA KOUNDAL', 'MR. SANJAY SINGH KOUNDAL', 'MRS. SASHIBALA KOUNDAL', '2002-09-12', 'PRITHVI SINGH JI KA KHERA POWER HOUSE DEBARI UDAIPUR', 'MDS-SS-1274', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1337, 'ARCHI JAIN', 'MR. AANAND KUMAR JAIN', 'MRS. ARCHANA JAIN', '2002-08-08', '24, MEERA NAGAR REBARIO KA GUDA OPP.MDS SCHOOL', 'MDS-SS-3444', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1338, 'BHAVYARAJ SINGH SHAKTAWAT', 'MR. GAJENDRA SINGH SHAKTAWAT', 'MRS. BINDU  SHAKTAWAT', '2003-07-02', '1 CH 17, SEC - 4, UDAIPUR', 'MDS-SS-3445', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1339, 'BHIM SINGH BHAGROT', 'MR. PREM SINGH BHAGROT', 'MRS. TEJ KUNWAR BHAGROT', '2002-04-03', 'VILLAGE POST DEBARI,SINGAWATO KA WARA', 'MDS-SS-3448', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1340, 'BHUVNESHWARI CHOUHAN', 'MR. DASHRATH SINGH CHOUHAN', 'MRS.  SHIV KUNWAR CHOUHAN', '2001-06-08', 'MEERA NAGAR,  OLD RTO ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-1268', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1341, 'CHANDAN SAHU', 'MR. GOPAL SAHU', 'MRS.  USHA SAHU', '2002-03-16', 'H.NO.83 PRATAP NAGAR OLD RTO DHIKLI UDAIPUR', 'MDS-SS-0169', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1342, 'CHARYA ANUJ PATNI', 'MR. ANUJ SANTOSH PATNI', 'MRS. POONAM ANUJ PATNI', '2002-08-18', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3451', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1343, 'CHINMAY  CHOUBISA', 'MR. HEERA LAL CHOUBISA', 'MRS. NEETU CHOUBISA', '2002-11-15', '113, REBARIYO KA GUDA, NEAR RAKAMPURA SCHOOL, PRATAP NAGAR', 'MDS-SS-2272', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1344, 'CHIRAG TRIVEDI', 'MR. DEEPAK TRIVEDI', 'MRS. JYOTI TRIVEDI', '2002-10-21', 'HIRAN MAGRI SEC. 3 VIVEK NAGAR H. NO. 335', 'MDS-SS-2703', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1345, 'DEEPIKA SAHU', 'MR. RAM NARAYAN SAHU', 'MRS. YASHODA SAHU', '2003-07-15', '69,NAKODA NAGAR III, NEAR BEDWAS, PRATAP NAGAR', 'MDS-SS-0816', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1346, 'DHRUV SHARMA', 'MR. SURESH CHANDRA', 'MRS. INDU BALA SHARMA', '2003-08-09', 'NAKODA NAGAR II, BEDWAS, UDAIPUR', 'MDS-SS-3458', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1347, 'DRASHTA JAIN', 'MR. MAHESH JAIN', 'MRS. SHEETAL JAIN', '2001-08-18', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3460', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1348, 'EKSHA JAIN', 'MR. PRADEEP KUMAR JAIN', 'MRS. ALPANA JAIN', '2003-01-07', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3462', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1349, 'GARIMA CHOUHAN', 'MR. BAHADUR NATH CHOUHAN', 'MRS.  UMA CHOUHAN', '2002-01-14', 'SHIV COLONY MEERA NAGAR ROAD OLD RTO , PRATAP NAGAR UDAIPUR', 'MDS-SS-0470', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1350, 'GARIMA JAIN', 'MR. ABHINANDAN JAIN', 'MRS. PRIYANKA JAIN', '2001-05-09', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-0739', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1351, 'GAURAV AUDICHYA', 'MR. JAI PRAKASH AUDICHYA', 'MRS.GEETA AUDICHYA', '2001-12-30', '197,NB NAGAR,DAU JI KI BAWARI,UDAIPUR', 'MDS-SS-2686', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1352, 'HARI SINGH RATHORE', 'MR. LAXMAN SINGH RATHORE', 'MRS. SHAMBHU KUNWAR', '2001-05-26', 'MADRI IN.AREA NEAR BEDWAS UDAIPUR', 'MDS-SS-0424', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1353, 'HARSHVARDHAN SINGH CHUNDAWAT', 'MR. RAJENDRA SINGH CHUNDAWAT', 'MRS. MADAN KUNWAR', '2004-01-29', 'NEAR MDS SCHOOL , DHEEKLI ROAD , PRATAP NAGAR, UDAIPUR', 'MDS-SS-0442', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1354, 'HARSHVARDHAN SINGH MERTIYA', 'MR. SHAILENDRA SINGH MERTIYA', 'MRS. OM KUNWAR SHAKTAWAT', '2002-08-08', '56,MEERA NAGAR I DHEEKLI ROAD OLD RTO OFFICE PRATAP NAGAR UDAIPUR', 'MDS-SS-0501', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1355, 'HIMANJALI AMETA', 'MR. DINESH CHANDRA AMETA', 'MRS. URMILA AMETA', '2003-01-18', '27, KAMAL COMPLEX, DHEEKLI PRATAP NAGAR, UDAIPUR', 'MDS-SS-0867', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1356, 'JAHANVI UPADHYAY', 'MR. PRAKASH UPADHYAY', 'MRS. PREM UPADHYAY', '2003-05-20', 'TULSI NAGAR, BEDWAS, UDAIPUR', 'MDS-SS-3475', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1357, 'KHUSHI JAIN ', 'MR. ARVIND JAIN', 'MRS. RACHANA JAIN', '2003-03-31', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3479', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1358, 'KIRTI PAL SINGH  RATHORE', 'MR. BALVEER SINGH RATHORE', 'MRS. LAXMI RATHORE', '2002-06-11', '140 SHREE N. BAIRWA NAGAR BEDWAS UDAIPUR', 'MDS-SS-0495', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1359, 'KRISHNAPAL SINGH RATHORE', 'MR. BALVEER SINGH RATHORE', 'MRS. LAXMI RATHORE', '2002-06-11', '140 SHREE N. BAIRWA NAGAR BEDWAS UDAIPUR', 'MDS-SS-0496', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1360, 'KUSUM JAIN', 'MR. SANJEEV JAIN', 'MRS. RENU JAIN', '2001-04-01', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3480', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1361, 'SHAH LABHANSHI SANJAY', 'MR. SANJAY SHAH', 'MRS. SURAKSHA SHAH', '2003-02-08', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3481', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1362, 'MAHENDRA SINGH SISODIYA', 'MR BHAWAR SINGH SISODIYA', 'MRS GEETA KUNWAR', '2003-02-23', 'NEAR BASIK SCHOOL,BABGOAN', 'MDS-SS-3016', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1363, 'MANASI VAISHNAV', 'MR. RAMESH VAISHNAV', 'MRS. LAXMI VAISHNAV', '2002-01-31', '68, SHREE RAM COLONY PRATAP NAGAR UDAIPUR', 'MDS-SS-0162', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1365, 'NARENDRA SINGH DEVRA', 'MR. KESAR SINGH DEVRA', 'MRS. VIJAY LAXMI DEVRA', '2002-05-06', 'SINGHAWATO KA KHEDA, DEBARI, UDAIPUR', 'MDS-SS-1860', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1366, 'NEETU MALI', 'MR. SHANTI LAL MALI', 'MRS. CHANDRAKALA MALI', '2001-01-19', 'C- 144, KRISHNA COLONY, NEAR MDS SCHOOL', 'MDS-SS-3489', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1367, 'NIKITA RATHORE', 'MR. PARVAT SINGH RATHORE', 'MRS. ASHA KUNWAR', '2003-04-30', '92, MEERA NAGAR ,OLD RTO, UDAIPUR', 'MDS-SS-0955', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1368, 'NIMISHA MAKWANA', 'MR. RAJENDRA SINGH MAKWANA', 'MRS. SHEETAL MAKWANA', '2001-12-13', '24, UIT OLD RTO ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0164', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1369, 'NISHANT SAXENA', 'MR. UMESH SAXENA', 'MRS. RAKHI SAXENA', '2002-03-05', '11-NORTH SUNDERWAS, VIDHYA VIHAR COLONY, UDAIPUR', 'MDS-SS-1106', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1370, 'NOOPUR JOSHI', 'MR DILIP JOSHI', 'MRS MAMTA JOSHI', '2002-09-13', '96 TIRUPATI NAGAR,OLD RTO,DHEEKLI ROAD,PRATAPNAGAR', 'MDS-SS-3054', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1371, 'PALPAL JAIN', 'MR. PRAKASH JAIN', 'MRS. MEENA JAIN', '2003-06-08', 'DHEEKLI PRATAP NAGAR UDAIPUR', 'MDS-SS-0606', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1372, 'PARTH VAIRAGI', 'MR OM PRAKASH VAIRAGI', 'MRS VIDHYA VAIRAGI', '2003-03-22', 'DHEEKLI ROAD,PRATAP NAGAR', 'MDS-SS-3018', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1373, 'PRAGYA JAIN', 'MR. SURESH JAIN', 'MRS. MAMTA JAIN', '2002-09-08', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3508', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1374, 'PRIYA VAISHNAV', 'MR. MOHAN DAS VAISHNAV', 'MRS. RADHA VAISHNAV', '2002-11-12', 'REBARIYON KA GUDA THE. GIRWA  PRATAP NAGAR UDAIPUR', 'MDS-SS-1097', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1375, 'PRIYANKA SHAKTAWAT', 'MR. GAJRAJ SINGH SHAKTAWAT', 'MRS. JASWANT KUNWAR', '2002-04-15', '154, SHREE N BAIRWA NAGAR  BEDWAS ,PRATAP NAGAR UDAIPUR\r\n154, SHREE N BAIRWA NAGAR  BEDWAS ,PRATAP NAGAR UDAIPUR', 'MDS-SS-0433', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1376, 'PULKIT CHAUBISA', 'MR. VINOD KUMAR CHAUBISA', 'MRS. KRISHNA CHAUBISA', '2002-01-06', '51 NAKODA NAGAR DHOUJI KI BAWARI UDAIPUR', 'MDS-SS-2024', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1377, 'RAJAT JOSHI', 'MR RAM KISHAN JOSHI', 'MRS SHEELA TRIPATHI', '2004-10-25', '10 TULSI NAGAR,BADWAS', 'MDS-SS-3008', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1378, 'RAMNIWAS REBARI', 'MR. KALU LAL REBARI', 'MRS. GATTU BAI REBARI', '2000-05-15', 'REBARIYON KA GUDA THE. GIRWA UDAIPUR', 'MDS-SS-0637', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1379, 'RIMZIM SANGHVI', 'MR. VIVEK SANGHVI', 'MRS. PRENA JAIN', '2002-12-21', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3509', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1380, 'SANTOSH PURI GOSWAMI', 'MR. ROOP PURI GOSWAMI', 'MRS. RADHA GOSWAMI', '2002-12-16', '44, TULSI NAGAR DHEEKLI ROAD PRATAP NAGAR  UDAIPUR', 'MDS-SS-1249', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1381, 'SHAH KHUSHI', 'MR. SHAH VIPUL KUMAR', 'SHAH SANGEETA BEN', '2001-12-28', '648, HIRAN MAGRI SEC. 13 VIJAYA BANK ', 'MDS-SS-3510', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1382, 'SHANKER LAL PATEL', 'LATE MR. RAM LAL PATEL', 'MRS. BHAMRI DEVI PATEL', '2001-01-13', '22, LAXMI NAGAR PRATAP NAGAR', 'MDS-SS-2826', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1383, 'SHUBHI JAIN ', 'MR. SURENDRA JAIN', 'MRS. MANI JAIN', '2003-05-28', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3511', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1384, 'SUHANI RAIKWAL', 'MR. OM PRAKASH MEGHWAL', 'MRS. SUMITRA MEGHWAL', '2003-04-26', '209, STREET NO. 2, JYOTI COLONY, GLASS FACTORY, UDAIPUR', 'MDS-SS-3512', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1385, 'VINOD REBARI', 'MR. BANSI LAL REBARI', 'MRS. SEETA DEVI REBARI', '2002-06-22', 'R/O REBRIYON KA GUDAN THE. GIRWA, UDAIPUR', 'MDS-SS-0643', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1386, 'VISHUDHI JAIN', 'MR. VIKRAM JAIN', 'MRS. SARITA JAIN', '2002-07-07', 'SHASWAT DHAM EVERST AIRPORT ROAD DABOK', 'MDS-SS-3520', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1387, 'YASHPAL SINGH RATHORE', 'MR. MAHENDRA SINGH RATHORE', 'MRS. KASHEER KUNWAR', '2002-10-20', 'UIT COLONY PRATAP NAGAR, UDAIPUR', 'MDS-SS-0398', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1388, 'BHAVESH KUMAR SHARMA', 'MR. KAILASH C. SHARMA', 'MRS. MANJU DEVI SHARMA', '2004-02-26', 'H.NO.-II/3, WATERSHADE COLONY OPP. VISHAL PETROL PUMP PRATAP NAGAR', 'MDS-SS-3697', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1389, 'PRANEET JHALA', 'MR. BRIJ BHAN SINGH', 'MRS. SUMITRA KUNWAR', '2002-09-09', '64,SHREE NATH COMPLEX JARENO KI SARAY DEBARI', 'MDS-SS-1893', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1390, 'AYUSHI SUTHAR', 'MR. RAM NARAYAN SUTHAR', 'MRS. PRIYANKA SUTHAR', '2002-11-18', 'RAKAMPURA NEAR VISHWKARAMA TEMPLE POST DEBARI', 'MDS-SS-3725', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1391, 'MEDHAVI RAO', 'MR. BHOPAL SINGH RAO', 'MRS. SANDHYA RAO', '2003-12-15', '24, SAMPAT SADAN NAKODA -I OPP. TRANSPORT NAGAR ', 'MDS-SS-3734', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1392, 'ARYAN PRAKASH', 'MR. P. C. VERMA', 'MRS. MANISHA VERMA', '2003-04-14', 'H.NO. 26-27, PRATAP NAGAR K.V.SCHOOL ', 'MDS-SS-3736', 0, 10, 1, '', '', '', '0000-00-00', 0),
(1393, 'ANSHI JAIN', 'MR. ABADHEASH JAIN', 'MRS. SAPNA JAIN', '2002-06-05', 'SHIV COLONY DHEEKLI ROAD , PRATAP NAGAR, UDAIPUR', 'MDS-SS-3446', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1394, 'ANUBHOOTI JAIN', 'MR.ASHOK JAIN', 'MRS. JYOTI JAIN', '2002-01-26', 'VILLAGE POST DEBARI,SINGAWATO KA WARA', 'MDS-SS-3449', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1395, 'ANUBHUTI JAIN', 'MR. ARVIND JAIN', 'MRS. MEERA JAIN', '2002-01-03', 'SHASWAT DHAM,AIRPORT ROAD,DABOK,UDAIPUR', 'MDS-SS-3450', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1396, 'AYUSHI JAIN', 'MR.MANISH JAIN', 'MRS. RAKHI JAIN', '2001-11-08', 'SHASWAT DHAM,AIRPORT ROAD,DABOK,UDAIPUR', 'MDS-SS-3453', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1397, 'BHUMIKA SHAKTAWAT', 'MR. YUVRAJ S.SHAKTAWAT', 'MRS. SEEMA KUNWAR', '2000-11-29', 'MEERA NAGAR (LAXMI NAGAR II) OLD RTO ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-1253', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1398, 'BHUPENDRA SINGH RAO', 'MR. ARJUN SINGH RAO', 'MRS. DARIYAV KUNWAR RAO', '2002-02-09', '1/4 R H B COLONY ,PRATAP NAGAR', 'MDS-SS-0801', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1399, 'CHANCHAL TAK', 'MR. JAGDISH CHANDRA TAK', 'LATE. CHANDA TAK', '2001-10-02', 'RAHAT WALI GHATI, DHEEKLI TEH. GIRWA, UDAIPUR', 'MDS-SS-1471', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1400, 'CHARUL DEORA', 'MR. MOHAN S.DEORA', 'MRS. VIJAYLAXMI DEORA', '2001-10-04', 'PLOT NO 93, MEERA NAGAR DHEEKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0737', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1401, 'DEEPAK SINGH RATHORE', 'MR. YASHWANT SINGH RATHORE', 'MRS. KANCHAN KUNWAR', '2000-11-17', '6 A MEERA NAGAR DHEEKLI', 'MDS-SS-2425', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1402, 'DEEPENDRA SINGH RAO', 'MR. GOVIND S. RAO', 'MRS. MANGA KUNWAR', '2001-12-05', 'MEERA NAGAR, 24  OLD RTO ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0832', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1403, 'HARSHVARDHAN SINGH CHOUHAN', 'MR. NARAYAN SINGH CHOUHAN', 'MRS. RANU KUNWAR CHOUHAN', '2002-01-22', 'JABAR SINGH CHUNDAWAT, 51 JANAK PURI, NEAR MAA GAYATRI HOSPITAL, PRATAP NAGAR', 'MDS-SS-2339', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1404, 'HARSHVARDHAN SINGH RATHORE', 'MR. DAULAT S. RATHORE', 'MRS. RAJESHWARI KUNWAR', '2001-10-15', '133, SHREE N BHAIRWAY NAGAR, BEDWAS UDAIPUR', 'MDS-SS-0533', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1405, 'HIMANI MEENA', 'MR. NARENDRA KUMAR MEENA', 'MRS. TARUNA MEENA', '2002-08-27', '33-MEERA NAGAR, OPP. OLD RTO DHEEKLI ROAD, REBARIO KA GUDA, UDAIPUR', 'MDS-SS-0718', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1406, 'JAIPAL SINGH BHAGROT', 'MR. MOHAN S. BHAGROT', 'MRS. PREM KUNWAR', '2001-12-17', '133, SHRI N BHAIRVAY NAGAR, BEDWAS UDAIPUR', 'MDS-SS-0534', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1407, 'KAMAL RAJ SINGH SHAKTAWAT', 'MR. SURENDRA S. SHAKTAWAT', 'MRS. CHATAR KUNWAR', '2001-07-28', '28- B MEERA NAGAR, DHEEKLI ROAD PRATAPNAGAR UDAIPUR', 'MDS-SS-0764', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1408, 'KAMALNAYAN SINGH CHUNDAWAT', 'MR. RAJENDRA S. CHUNDAWAT', 'MRS. MADAN KUNWAR', '2002-09-21', 'NEAR MDS SCHOOL , DHEEKLI ROAD , PRATAP NAGAR, UDAIPUR', 'MDS-SS-0443', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1409, 'KANISHAK SINGH SARANGDEVOT', 'MR. DEEP SINGH SARANGDEVOT', 'MRS. SHAILENDRA KUNWAR', '2001-01-09', '55, TULSI NAGAR OLD RTO OFFICE KE SAMNE, PRATAP NAGAR UDAIPUR', 'MDS-SS-0923', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1410, 'KANISHKA RATHORE', 'MR. GHANSHYAM S. RATHORE', 'MRS. VISHNU KUNWAR', '2001-09-01', '181, KRISHNA VIHAR BEHIND MDS SCHOOL', 'MDS-SS-0605', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1411, 'KULDEEP SINGH RATHORE', 'MR.NARAYAN SINGH RATHORE', 'MRS.ANITA RANAWAT', '2002-05-17', '3, BASANT VIHAR,DHIKLI ROAD,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2819', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1412, 'KUNAL SINGH RAO', 'MR. BHANWAR SINGH RAO', 'MRS. MAMTA KUNWAR RAO', '2001-08-16', '21 E CLASS PRATAP NAGAR STONE QUARTERS', 'MDS-SS-1276', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1413, 'MAHESH MEGHWAL', 'MR. LACCHI RAM MEGHWAL', 'MRS. LEELA MEGHWAL', '2001-04-06', 'NANDWAL POST DABOK THE. VALLABH NAGAR', 'MDS-SS-1878', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1414, 'MAHIPAL SINGH RATHORE', 'MR. BHARAT SINGH RATHORE', 'MRS. BHANWAR KUNWAR', '2000-06-07', 'DHEEKLI ROAD NEAR MDS SCHOOL PARTAP NAGAR UDAIPUR', 'MDS-SS-0397', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1415, 'NANDINI JAIN', 'MR. NAVEEN JAIN', 'MRS. RAJANI JAIN', '2000-10-05', 'SHASHWAT DHAM AIRPORT ROAD DABOK', 'MDS-SS-3505', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1416, 'NIDHI KUNWAR SHAKTAWAT', 'MR. MAHENDRA SINGH SHAKTAWAT', 'MRS. PARWATI SHAKTAWAT', '2000-12-24', 'NEAR MDS SCHOOL DHEEKALI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0132', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1417, 'PIYUSH SHARMA', 'MR. DEVILAL SHARMA', 'MRS. HEERA SHARMA', '2001-10-16', '391, TULSHI NAGAR BEDWAS', 'MDS-SS-0741', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1418, 'PRANJAL SHAH', 'MR. ATUL KUMAR JAIN', 'MRS. KINNARI JAIN', '2001-08-21', 'SHASHWAT DHAM AIRPORT ROAD DABOK', 'MDS-SS-3506', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1419, 'PULKIT PATIDAR', 'MR. DURGA SHANKER KULMI', 'MRS. KAILASH DEVI', '2001-11-12', 'RAHAT WALI GHATI PRATAP NAGAR', 'MDS-SS-1845', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1420, 'PUNEET JETHANI', 'MR. LAXMAN JETHANI', 'MRS. ASHA JETHANI', '2001-05-06', '23, PRATAP NAGAR', 'MDS-SS-0167', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1421, 'RISHI SOUDA', 'MR.YAGYADUTT SOUDA', 'MRS.JYOTI KANWAR', '2003-06-02', 'B BLOCK,PLOT NO.5,MEERA NAGAR,OLD RTO,DHIKALI ROAD,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2674', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1422, 'RITU JAIN', 'MR. RAJESH JAIN', 'MRS. MANJU JAIN', '2001-07-01', 'SHASHWAT DHAM AIRPORT ROAD DABOK', 'MDS-SS-3513', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1423, 'RIYA CHUNDAWAT', 'MR. BHANWAR SINGH CHUNDAWAT', 'MRS. SUMAN CHUNDAWAT', '2002-10-18', '92, NB COMPLEX, PRATAP NAGAR, NEAR POLICE STATION , UDAIPUR', 'MDS-SS-0104', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1424, 'SANGEETA SHAKTAWAT', 'MR. KALYAN SINGH SHAKTAWAT', 'MRS. KRISHNA KUNWAR SHAKTAWAT', '2000-07-20', '6, NEW MEERA NAGAR', 'MDS-SS-1954', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1425, 'SHAGUN JAIN', 'MR. RAJESH JAIN', 'MRS. MEGHA JAIN', '2001-09-20', 'SHASHWAT DHAM AIRPORT ROAD DABOK', 'MDS-SS-3516', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1426, 'SHALINI JAIN', 'MR. ANIL JAIN', 'MRS. KUSUM JAIN', '2001-09-26', 'SHASHWAT DHAM AIRPORT ROAD DABOK', 'MDS-SS-3517', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1427, 'UDAIBHAN SINGH CHOUHAN', 'MR. KAMLENDRA SINGH CHOUHAN', 'MRS.VISHNU KUNWAR', '2002-07-20', '95,MEERA NAGAR OLD RTO OFFICE', 'MDS-SS-1781', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1428, 'VIRENDRA SINGH DULAWAT', 'MR. ROOP SINGH DULAWAT', 'MRS. LAXMAN KUNWAR DULAWAT', '2001-01-06', '29, RAJ COMPLEX DHEEKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-349', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1429, 'YAMINI RANAWAT', 'MR.NARESH SINGH RANAWAT', 'MRS.SUMAN KUNWAR', '2000-09-06', '50 TULSI NAGAR,OLD RTO,PRATAP NAGAR,UDAIPUR', 'MDS-SS-2767', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1430, 'YASHASVI SHARMA', 'MR. SATYA NARAYAN SHARMA', 'MRS. PINKY SHARMA', '2001-10-21', 'OPP KALYAN VATIKA, ZINC COMPLEX DEBARI UDAIPUR', 'MDS-SS-0750', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1431, 'YASHVARDHAN SINGH CHUNDAWAT', 'MR. NARENDRA SINGH CHUNDAWAT', 'MRS. SHEELA KUNWAR', '2002-11-17', 'C/O GANSHYAM SINGH 181, BACK SIDE OF MDS SCHOOL', 'MDS-SS-2232', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1432, 'KIRTIVARDHAN SINGH SHAKTAWAT', 'MR. HIMMAT SINGH', 'MRS. VISHNU KUNWAR', '2001-11-06', '26,MEERA NAGAR,OLD RTO ROAD,PRATAP NAGAR,UDAIPUR', 'MDS-SS-0556', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1433, 'NAKUL PALIWAL', 'MR. ASHOK PALIWAL', '', '2008-09-25', 'UDAIPUR', 'MDS-SS-3020', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1435, 'ANJALI DANGI', 'MR. GOPAL DANGI', 'MRS.MANGI DANGI', '2010-03-19', '35, CHANDRA COLONY GALI NO. 1 OLD RTO ROAD PRATAP NAGAR', 'MDS-SS-2060', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1436, 'BHAVYA SHARMA', 'MR. MUKESH SHARMA', 'MRS. LALITA SHARMA', '2009-08-04', 'B-45, DHEEKLI ROAD, OLD RTO OFFICE, UDAIPUR', 'MDS-SS-2079', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1437, 'BHUMIKA REBARI', 'LT. MR. NARAYAN REBARI', 'MRS.PUSHPA REBARI', '2010-06-30', 'REBARIO KA GUDA PRATAP NAGAR DHIKLI UDAIPUR', 'MDS-SS-2054', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1438, 'CHARVI BAGDI', 'MR. HEMANDRA KHATIK', 'MRS. AKSHA BAGDI', '2009-11-29', '208, CENTER CHOURAHA, VILL. SAKRODA, GIRWA UDAIPUR', 'MDS-SS-1692', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1439, 'DAKSHRAJ SINGH DEORA', 'MR. RAJENDRA SINGH DEORA', 'MRS. RAJKUMARI DEORA', '2011-02-16', 'HOUSE NO.15 P, VASHALI NAGAR,UNIVERSITY AREA UDAIPUR', 'MDS-SS-3459', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1440, 'HANSIKA SHAKTAWAT', 'MR. MAHENDRA SINGH SHAKTAWAT', 'MRS. PARAS KUWAR', '2010-06-15', '3A, MEERA NAGAR, PRATAP NAGAR, DHEEKLI ROAD, UDAIPUR', 'MDS-SS-3461', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1441, 'HARSHIT MEENA', 'MR. VEDRAJ MEENA', 'MRS. VEENU KUMARI ', '2010-01-03', '247, UIT COLONY, PRATAP NAGAR', 'MDS-SS-2480', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1442, 'HIMANSHU LABANA', 'MR. PANKAJ LABANA', 'MRS. REKHA LABANA', '2010-04-23', 'NEAR CENTRAL ACADEMY, SEC-3, UDAIPUR', 'MDS-SS-3464', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1443, 'ISHIKA NAGDA', 'MR. JAGDISH C. NAGDA', 'MRS. HEMLATA NAGDA', '2010-05-14', 'SHIV COLONY OLD RTO OFFICE DHEEKLI  ROAD UDAIPUR', 'MDS-SS-1876', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1444, 'ISHIKA SHARMA', 'MR. PRAKASH SHARMA', 'MRS. MANJU LATA SHARMA', '2009-12-01', 'BEDWAS NEAR RAILWAY BRIDGE', 'MDS-SS-2077', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1445, 'JITENDRA SINGH RAO', 'MR BHAWER SINGH RAO', 'MRS MAMTA KUNWAR RAO', '2008-11-05', 'KRISHNA VIHAR COLONY PRATAP NAGAR OLD RTO ROAD', 'MDS-SS-3048', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1446, 'JYENA TIGAYA', 'MR. SUKHDEV PRASAD', 'MRS. ANITA TIGAYA', '2010-07-25', '113, CHANDRA COLONY, PRATAP NAGAR, UDAIPUR', 'MDS-SS-2063', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1447, 'KAMAKSHI RAJAWAT', 'MR. SHAKTI SINGH RAJAWAT', 'MRS. SHAKTI SINGH RAJAWAT', '2010-04-20', 'RABARIYON KA GUDA, NEAR GOVT. SCHOOL UDAIPUR', 'MDS-SS-2356', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1448, 'KAUSHAL RAJ SINGH JHALA', 'MR. BAHADUR SINGH JHALA', 'MRS. MADALSA KUNWAR', '2010-10-01', '254, UIT SCEAM PRATAP NAGAR UDAIPUR', 'MDS-SS-1779', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1449, 'KAVYA BAYA', 'MR. LAL CHAND BAYA', 'MRS. ANTIM BAYA', '2010-06-13', 'S-20 NAKODA POORAM DHAOUJI KI BAWADIRAKAM PURA ROAD', 'MDS-SS-3010', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1450, 'LAKSHIT JAIN', 'MR. MAHAVEER JAIN', 'MRS. PRITI JAIN', '2010-07-06', 'MEHTA BHAVAN VILL. SAKRODA KURABAD ROAD, GIRVA UDAIPUR', 'MDS-SS-2038', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1451, 'MANMOHAN SINGH RATHORE', 'MR. DEVI SINGH RATHORE', 'MRS. LAXMI KUNWAR', '2010-02-01', '26, OPP.SURYA GAS GODWON OLD RTO DHEEKLI ROAD', 'MDS-SS-2031', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1452, 'MITANSHU BOHARA', 'MR. LALIT SINGH BOHARA', 'MRS. MAYA BOHARA', '2010-07-15', 'G-5 DESIGNER HEIGHTS APARTMENT DHIKILI ROAD NEAR PRATAP NAGAR OLD(RTO) ROAD UDAIPUR', 'MDS-SS-2568', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1453, 'MONARK NOGIYA', 'MR. CHANDRA PRAKASH NOGIYA', 'MRS. MEENAKSHI NOGIYA', '2010-10-06', '113 CHANDRA COLONY PRATAP NAGAR, UDAIPUR', 'MDS-SS-2064', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1454, 'NISHA KUNWAR MOJAWAT', 'MR. NAHAR SINGH MOJAWAT', 'MRS. HEERA KUNWAR MOJAWAT', '2010-01-10', 'VAISHALI NAGAR, D- BLOCK H.N.19, NEAR ST. GEORGE SCHOOL, DEBARI', 'MDS-SS-2534', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1455, 'PAVNEET KAUR ARORA', 'MR. BHAGAT SINGH ARORA', 'MRS. SIMRAN KAUR ARORA', '2010-03-29', '1/140 RHB COLONY PRATAP NAGAR', 'MDS-SS-2400', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1456, 'PIYUSH MALI', 'MR. FATAH LAL MALI', 'MRS. LAXMI MALI', '2008-10-26', 'MALIYON KA MOHALLA, VALLABH NAGAR, UDAIPUR', 'MDS-SS-3487', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1457, 'RACHIT SHARMA', 'MR. PRAHLAD SHARMA', 'MRS. SONAL MANDAWAT', '2010-09-11', 'UDAIPUR', 'MDS-SS-3497', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1458, 'SEJAL RANAWAT', 'MR. YUDHVEER SINGH RANAWAT', 'MRS. CHETAN KUNWAR', '2011-09-22', 'KRISHNA VIHAR COLONY, DHEEKLI ROAD, PRATAP NAGAR, UDAIPUR', 'MDS-SS-3500', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1459, 'TEJASVARI BHATI', 'MR. RAJENDRA SINGH BHATI', 'MRS. NIRMLA KUNWAR', '2009-12-15', '11, NEW MEERA NAGAR, STREET CHAMUNDA STONE SUPLIER, OLD RTO, PRATAP NAGAR', 'MDS-SS-2522', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1460, 'URVASHI SHARMA', 'MR. PUSHKAR LAL SUTHAR', 'MRS. GEETA SUTHAR', '2009-03-03', 'RAKAMPURA ,NEAR BY NB NAGAR', 'MDS-SS-3672', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1461, 'VAIBHAV MALI', 'MR. MUKESH MALI', 'MRS. VIMLA MALI', '2010-08-05', '141 CHANDRA COLONY ROAD NO 2,PRATAP NAGAR', 'MDS-SS-1770', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1462, 'VIDIT DEV SINGH CHUNDAWAT', 'MR. BHANWAR SINGH CHUNDAWAT', 'MRS. INDIRA KUNWAR', '2010-05-15', 'POSTAL ADD. 280-UIT COLONY PRATAP NAGAR UDAIPUR\r\nPOSTAL ADD. 280-UIT COLONY PRATAP NAGAR UDAIPUR', 'MDS-SS-1747', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1463, 'VISHAL SAHU', 'MR. GANESH SAHU', 'MRS. RADHA DEVI SAHU', '2010-02-10', '69-NAKODA NAGAR,DHAN JI KI BAWRI,PRATAP NAGAR', 'MDS-SS-3518', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1464, 'VISHVRAJ SINGH SIKARWAR', 'MR. BHAGWAT SINGH SIKARWAR', 'MRS. BHAWAR KUNWAR', '2010-04-17', '54, SHREE RAMCOLONY PETROL PUMP PRATAP NAGAR', 'MDS-SS-3519', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1465, 'YUVRAJ SINGH RATHORE', 'MR. GOPAL SINGH RATHORE', 'MRS. BHANWAR KUNWAR', '2008-09-13', 'C/O KALA VAISHNAV, RAJ COMPLEX PRATAP NAGAR', 'MDS-SS-2496', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1466, 'TANAY PRAMOD SUNNE', 'MR. PRAMOD RAMESH SUNNE', 'MRS. PRIYA PRAMOD SUNNE', '2010-11-07', 'H.NO. B 5 GAYTRI NAGAR SOUTH SUNDERWAS', 'MDS-SS-3744', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1467, 'YASHASHVI CHOUDHARY', 'MR. JHABAR MAL JAT', 'MRS. SUNITA', '2010-10-12', '11-A KRISHNA VIHAR NEAR MDS SCHOOL OLD RTO DHEEKLI ROAD PRATAP NAGAR', 'MDS-SS-3700', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1468, 'RITESH MEENA', 'MR. RAM BABU MEENA', 'MRS. SEEMA', '2009-03-14', '13/417, SOUTH SUNDERWAS NEAR SHYAM VATIKA UDAIPOUR', 'MDS-SS-2488', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1469, 'AARUSHI SINGH JHALA', 'MR. AJAY SINGH JHALA', 'MRS. CHANDA KUNWAR', '2009-12-30', 'OLD RTO PRATAP NAGAR NEAR MDS SCHOOL', 'MDS-SS-3711', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1470, 'RAJ RANI SHAKTAWAT', 'MR. DASHRATH SINGH SHAKTAWAT', 'MRS. SUMAN KUNWAR', '2010-02-04', 'MEERA NAGAR RTO OFFICE ', 'MDS-SS-3751', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1471, 'JAHNVI MEGHWAL', 'MR. MANISH MEGHWAL', 'MRS. NIRMALA MEGHWAL', '2010-07-27', 'KRISHNA VIHAR BEHIND MDS SCHOOL OLD RTO ROAD', 'MDS-SS-1854', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1472, 'ARVIND SINGH CHOUHAN', 'MR. KALYAN SINGH CHOUHAN', 'MRS. MITHU KUNWAR', '2005-01-18', 'OLD RTO OFFICE PRATAP NAGAR NEW MEERA NAGAR', 'MDS-SS-2213', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1473, 'ARVIND SINGH SHAKTAWAT', 'MR. RANJEET SINGH SHAKTAWAT', 'MRS. REKHA KUNWAR', '2006-01-05', 'B-48, BHARU VILL MEERA NAGAR DHEEKHLI ROAD ', 'MDS-SS-2033', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1474, 'BHUMIKA SUTHAR', 'MR. PURAN MAL SUTHAR', 'MRS. HEMLATA SUTHAR', '2006-02-24', 'SUTHRO KA MOHALLA DHIKHLI ROAD', 'MDS-SS-2607', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1475, 'BHAVNA PATEL', 'MR. TEJA RAM PATEL', 'MRS. DOLI BAI PATEL', '2005-06-05', '22, LAXMI NAGAR, PRATAP NAGAR, UDAIPUR', 'MDS-SS-2825', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1476, 'DAKSHITA SHARMA', 'MR. SURESH CHANDRA', 'MRS INDU BALA SHARMA', '2006-01-06', '294, NAKODA NAGAR-II, BEDWAS, UDAIPUR', 'MDS-SS-3452', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1478, 'GAJENDRA SINGH DEVRA', 'MR. DULHE SINGH DEVRA', 'MRS. TULSA KUNWAR DEVRA', '2004-03-17', 'PRITHVI SINGH JI KA KHEDA POWER HOUSE DEBARI', 'MDS-SS-0757', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1479, 'HIMANSHI SALVI', 'MR. TULSI RAM SALVI', 'MRS. SONIA SALVI', '2005-09-28', '104 REBARIO KA GUDA, UDAIPUR', 'MDS-SS-1853', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1480, 'JAGPAL SINGH RATHORE', 'MR. DULHE SINGH RATHORE', 'MRS. HEMLATA RATHORE', '2005-07-21', 'NAKODA NAGAR 2, DHAV JI KI BARI, PRATAP NAGAR, UDAIPUR', 'MDS-SS-1790', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1481, 'JAIRAJ SINGH RANAWAT', 'MR. SURENDRA SINGH RANAWAT', 'MRS. MADHU KUNWAR', '2005-08-20', 'OLD RTO MEERA NAGAR -I HOUSE NO. 33', 'MDS-SS-1295', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1482, 'JIGAR JOSHI', 'MR. LALU RAM JOSHI', 'MRS. SUNITA JOSHI', '2005-07-14', 'DHINKALI NEAR PANCHAYAT BHAWAN UDR', 'MDS-SS-1380', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1483, 'KARAN TAGAYA', 'MR. SOHAN LAL TAGAYA', 'MRS. SANTOSH DEVI TAGAYA', '2004-09-07', 'RTO OFFICE NEAR PRATAP NAGAR', 'MDS-SS-1314', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1484, 'KHUSH MALI', 'MR. SHANTI LAL MALI', 'MRS. CHANDRAKALA MALI', '2004-08-15', 'C-144, KRISHNA COLONY, NEAR MDS SCHOOL', 'MDS-SS-3469', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1485, 'KULDEEP SINGH SHAKTAWAT', 'MR. KALYAN SINGH SHAKTAWAT', 'MRS. KRISHNA KUNWAR SHAKTAWAT', '2004-07-29', '6, NEW MEERA NAGAR PRATAPNAGAR', 'MDS-SS-1953', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1486, 'MADHU VAISHNAV', ' MR. AMRIT DAS VAISHNAV', 'MRS.MEENA VAISHNAV', '2005-09-02', 'RAHAT WALI GHATI DHEEKHLI ', 'MDS-SS-2608', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1487, 'MITALI BOHARA', 'MR. LALIT SINGH BOHARA', 'MRS. MAYA BOHARA', '2005-03-24', 'G-5, DESIGNER HEIGHTS APARTMENT DHIKALI ROAD(OLD RTO), NEAR PRATAP NAGAR, UDAIPUR', 'MDS-SS-2569', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1488, 'MOHIT PATEL', 'MR. PYARE LAL PATEL', 'MRS. DURGA PATEL', '2006-04-01', 'VILLAGE BICHADI , ZINC SMELTER DEBARI UDAIPUR. 1-T-27- HIRAN MAGRI SEC. 4 UDR.', 'MDS-SS-1671', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1489, 'PIYUSH ROY', 'MR. RAM PRAVESH ROY', 'MRS. RAGANI ROY', '2003-04-20', 'DHIKHLI ROAD KRISHNA BIHAR COLONY', 'MDS-SS-1433', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1491, 'RAJPAL SINGH RATHORE', 'MR. BHERU SINGH RATHORE', 'MRS. NATVER KUNWAR', '2004-10-05', 'REBARIYON KA GUDAN , DHEEKLI ROAD PRATAPNAGAR UDAIPUR', 'MDS-SS-0445', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1492, 'RAM PRASAD REBARI', 'MR. RAJU LAL REBARI', 'MRS.MOHINI DEVI', '2006-03-16', 'REBARIYON KA GUDA', 'MDS-SS-1938', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1493, 'RANJANA GAYARI', 'MR. PRABHU LAL GAYARI', 'MRS. LALITA GAYRI', '2004-01-15', 'SUNDERWAS , SHAYAM NAGAR', 'MDS-SS-2836', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1494, 'SAMYAK JAIN', 'MR. ANKUSH JAIN', 'MRS. DEEPIKA JAIN', '2004-12-05', 'H. NO. 144, N. BHAIRAVAY NAGAR PRATAP NAGAR', 'MDS-SS-2822', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1495, 'SEJAL KUNWAR DEVRA', 'MR. KESHAR SINGH DEVRA', 'MRS. VIJAY LAXMI DEVRA', '2004-09-26', 'SINGHAWATO KA KHEDA DEBARI', 'MDS-SS-1861', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1496, 'SIDDHARTH SINGH RATHORE', 'MR. RAVINDRA SINGH RATHORE', 'MRS. SHAKUNTALA KUNWAR', '2005-01-02', '106, NOKODA NAGAR DHAU JI KI BAWARI', 'MDS-SS-1069', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1497, 'SOMYA LOHAR', 'MR. KAILASH LOHAR', 'MRS. MANJU LOHAR', '2005-09-27', '5, SHANTI NAGAR  PRATAP NAGAR OLD RTO', 'MDS-SS-1654', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1498, 'SUJAL SINGH MAKWANA', 'MR. RAJENDRA SINGH MAKWANA', 'MRS. SHEETAL MAKWANA', '2004-09-27', '24, UIT COLONY OLD RTO ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0648', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1499, 'TANUJ CHOUDHARY', 'MR. SUKHVEER SINGH CHOUDHARY', 'MRS.SANTRA DEVI CHOUDHARY', '2005-11-02', 'II-A PADHMAVATHI NAGAR NEAR MDS SCHOOL DHEEKHLI ROAD PRATAP NAGAR', 'MDS-SS-1964', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1500, 'TARUN MALI', 'MR. SUNDAR LAL MALI', 'MRS. LAXMI DEVI', '2005-01-06', '28, TULSI NAGAR DHIKALI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-1259', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1501, 'VIKRAM MALI', 'MR. BHERU LAL MALI', 'MRS. GANGA MALI', '2003-11-01', 'GHANDHI NAGAR PRATAP NEW RTO OFFICE', 'MDS-SS-3503', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1502, 'VIVEK BAYA', 'MR. LAL CHAND BAYA', 'MRS. ANTIM BALA BAYA', '2004-11-02', 'S-20 NAKODA POORAM III RAKAM PURA ROAD OPP.TRANSPORT NAGAR PRATAP NAGAR UDAIPUR', 'MDS-SS-1894', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1503, 'VIVEK SWARNKAR', 'MR. HARISH KUMAR SWARANKAR', 'MRS. HEERA SWARNKAR', '2006-04-21', '54, MEERA NAGAR (A) DHIKLI ROAD PRATAP NAGAR UDAIPUR', 'MDS-SS-0973', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1504, 'KHUSHI GARG', 'MR. RATAN LAL GARG', 'MRS. NISHA GARG', '2005-01-17', 'MEERA NAGAR OLD RTO OFFICE ROAD ', 'MDS-SS-3701', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1505, 'PRINCE VAISHNAV', 'MR. GANPAT DAS VAISHNAV', 'MRS ANITA BAI VAISHNAV', '2005-08-02', 'REBARIYON KA GUDA', 'MDS-SS-1324', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1506, 'YASH SUTHAR', 'MR. RAM NARAYAN SUTHAR', 'MRS. PRIYANKA SUTHAR', '2005-01-09', 'RAKAMPURA NEAR VISHWKARAMA TEMPLE POST DEBARI', 'MDS-SS-3726', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1507, 'name', 'father_name', 'mother_name', '0000-00-00', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00', 0),
(1508, 'AARUSHI KOTHARI', ' PURANMAL KOTHARI', ' AARTI KOTHARI', '0000-00-00', '', 'MDSSS2754', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1509, 'AASHI MAHESHWARI', ' KAILASH CHANDRA LAHOTI', ' SARITA LAWHTI', '0000-00-00', '', 'MDSSS1155', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1510, 'AJAY VAISHNAV', ' MOHAN DAS', ' RADHA VAISHNAV', '0000-00-00', '', 'MDSSS0165', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1511, 'AKASH SEN', ' SHYAM SEN', ' MANJU SEN', '0000-00-00', '', 'MDSSS3645', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1512, 'ANANYAA GUPTA', 'DR. GAJANAND GUPTA', ' MANISHA GUPTA', '0000-00-00', '', 'MDSSS2315', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1513, 'BHANUPRIYA SHARMA', ' MANGILAL SHARMA', ' MANJU SHARMA', '0000-00-00', '', 'MDSSS2344', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1514, 'BHAVESH SHRIMALI', ' OM PRAKASH SHRIMALI', ' ASHA SHRIMALI', '0000-00-00', '', 'MDSSS2359', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1515, 'BHAVI SHAH', ' DHANPAL C. SHAH', ' DILKUSH D. SHAH', '0000-00-00', '', 'MDSSS3375', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1516, 'BHAVIK LALAWAT', ' DEEPAK LALAWAT', ' SUREKHA LALAWAT', '0000-00-00', '', 'MDSSS3682', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1517, 'BHAVYANJALI AMETA', ' DINESH CHANDRA AMETA', ' URMILA AMETA', '0000-00-00', '', 'MDSSS0866', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1518, 'CHARUL PUJARI', 'SATISH CHANDRA PUJARI', ' MANJU SHARMA', '0000-00-00', '', 'MDSSS2037', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1519, 'DARSHAN SOMANI', ' NARENDRA KUMAR SOMANI', ' PANKAJ DEVI SOMANI', '0000-00-00', '', 'MDSSS3729', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1520, 'DEVEN BAPNA', ' NAVEEN BAPNA', ' DIMPLE BAPNA', '0000-00-00', '', 'MDSSS3456', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1521, 'DIVYA GOYAL', ' ANIL GOYAL', ' SUNITA GOYAL', '0000-00-00', '', 'MDSSS2273', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1522, 'GAJENDRA SINGH RAO', ' VIJAY SINGH RAO', ' GEETA KUNWAR RAO', '0000-00-00', '', 'MDSSS2409', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1523, 'GARIMA JAIN', ' MAHENDRA JAIN', ' CHITRA JAIN', '0000-00-00', '', 'MDSSS1272', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1524, 'HARSHINI PRATURI', 'PRATURI RAVI', 'PRATURI PURNIMA', '1970-01-01', 'd', 'MDSSS3236', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1525, 'HARSHIT LOHAR', ' PRAKASH CHANDRA LOHAR', ' REKHA LOHAR', '0000-00-00', '', 'MDSSS2254', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1526, 'HARSHIT NAGDA', ' NARENDRA JI NAGDA', ' GEETA NAGDA', '0000-00-00', '', 'MDSSS3636', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1527, 'HEMANT SINGH MERTIA', ' TEJSINGH MERATIA', ' SUNITA MERATIA', '0000-00-00', '', 'MDSSS1046', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1528, 'HIMADRI DAK', ' DEEPAK KUMAR DAK', ' MANJU DAK', '0000-00-00', '', 'MDSSS1029', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1529, 'HIMANSHI MALVIYA', ' RATAN LOHAR', ' KRISHNA LOHAR', '0000-00-00', '', 'MDSSS3658', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1530, 'HIMANSHU PALIWAL', ' HEMANT PALIWAL', ' LAJWANTI PALIWAL', '0000-00-00', '', 'MDSSS2308', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1531, 'HITISHA AMETA', ' KAILASH CHANDRA AMETA', ' MUNNA DEVI AMETA', '0000-00-00', '', 'MDSSS0921', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1532, 'JAIDEV NAGDA', ' LAXMI LAL NAGDA', ' HEMLATA NAGDA', '0000-00-00', '', 'MDSSS1492', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1533, 'KHUSHI PARMAR', ' PRAVEEN PARMAR', ' VANDANA PARMAR', '0000-00-00', '', 'MDSSS1171', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1534, 'KRITI SHAH', ' KIRTI SHAH', ' ANJANA SHAH', '0000-00-00', '', 'MDSSS2569', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1535, 'KUNJ SONI', ' HITENDRA SONI', ' MANISHA SONI', '0000-00-00', '', 'MDSSS1070', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1536, 'LAKSHIT SUKHWAL', ' SATYANARAYAN SUKHWAL', ' MANJU SUKHWAL ', '0000-00-00', '', 'MDSSS3700', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1537, 'LOVE KUSH MENARIYA', ' GANPATH LAL MENARIYA', ' PARVATI BAI', '0000-00-00', '', 'MDSSS3638', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1538, 'MAHENDRA YADAV', ' MANOJ YADAV', ' SUNITA YADAV', '0000-00-00', '', 'MDSSS2172', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1539, 'MAHIPAL SINGH CHUNDAWAT', ' BHANWAR SINGH CHUNDAWAT', ' SUMAN KUNWAR', '0000-00-00', '', 'MDSSS0128', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1540, 'MAMTA SUTHAR', ' MANGESH SUTHAR', ' MEERA DEVI SUTHAR', '0000-00-00', '', 'MDSSS1130', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1541, 'MANI JAIN', ' LT. SANJEEV JAIN', ' REKHA JAIN', '0000-00-00', '', 'MDSSS3485', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1542, 'MANSI KUMPAWAT', ' OOKAR SINGH KUMPAWAT', ' PURAN KUNWAR', '0000-00-00', '', 'MDSSS3482', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1543, 'MANVI JAIN', ' SHYAMSUNDER C. JAIN', ' ANJANA S. JAIN', '0000-00-00', '', 'MDSSS3376', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1544, 'MAYANK GOUR', ' KAILASH CHANDRA GOUR', ' SANTOSH GOUR', '0000-00-00', '', 'MDSSS3434', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1545, 'MINAL JAIN', ' HEMANT PRAKASH DEORA', ' SAROJ JAIN', '0000-00-00', '', 'MDSSS2255', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1546, 'MOHIT PATEL', ' RAMLAL PATEL', ' SHANTA PATEL', '0000-00-00', '', 'MDSSS1671', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1547, 'MRIGANK JOSHI', ' HEMANT KUMAR SHARMA', ' SUSHMA JOSHI', '0000-00-00', '', 'MDSSS3696', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1548, 'NIKITA CHOUDHARY', ' GAUTAM LAL CHOUDHARY', ' SHARDA DEVI', '0000-00-00', '', 'MDSSS2418', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1549, 'NIRMAL MENARIA', 'MOHAN LAL MENARIA', ' TARA DEVI MENARIA', '0000-00-00', '', 'MDSSS2286', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1550, 'NISHA TELI', ' PRABHULAL TELI', ' JANKI  DEVI', '0000-00-00', '', 'MDSSS0506', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1551, 'PALAK NAHTA', ' RAJEEV NAHTA', ' DEEPIKA NAHTA', '0000-00-00', '', 'MDSSS1139', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1552, 'PARAMVEER SINGH RATHORE', ' AMAR SINGH RATHORE', ' KAILASH KUNWAR', '0000-00-00', '', 'MDSSS1080', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1553, 'PREKSHA SINGHVI', ' GOUTAM SINGHVI', ' RASHMI SINGHVI', '0000-00-00', '', 'MDSSS1196', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1554, 'PRIYA KUNWER SOLANKI', ' GULAB SINGH SOLANKI', ' PUSHPA KUNWAR SOLANKI', '0000-00-00', '', 'MDSSS2531', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1555, 'PRIYANKA KACCHAWA', ' GOPAL SINGH KACCHAWA', ' SHARDA KACHHAVA', '1970-01-01', ' ', 'MDSSS3680', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1556, 'RAHUL MITTAL', ' SURESH AGRAWAL', ' RADHA AGRAWAL', '0000-00-00', '', 'MDSSS2288', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1557, 'RAHUL SHARMA', ' SANTOSH SHARMA', ' SULOCHANA SHARMA', '0000-00-00', '', 'MDSSS864', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1558, 'RAJVIR SINGH SHAKTAWAT', ' PRAHLAD SINGH SHAKTWAT', ' NAND KUNWAR', '0000-00-00', '', 'MDSSS3278', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1559, 'RITAKSHI KAILANI', ' RITESH KAJLANI', ' MEENAKSHI KALJANI', '0000-00-00', '', 'MDSSS2251', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1560, 'RITIK LODHA', ' SUNIL LODHA', ' VANITA LODHA', '0000-00-00', '', 'MDSSS2355', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1561, 'ROHIT KUMAR ACHARYA', ' BHUPESH KUMAR ACHARYA', 'LALITA ACHARYA', '0000-00-00', '', 'MDSSS2421', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1562, 'SALONI SURANA', ' PAVAN SURANA', ' REKHA SURANA', '0000-00-00', '', 'MDSSS1099', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1563, 'SHIKHA SURANA', ' VINAY SURANA', ' VANDANA SURANA', '0000-00-00', '', 'MDSSS1158', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1564, 'SHIVRAJ JAT', ' PANNA LAL JAT', ' PUSHPA DEVI', '0000-00-00', '', 'MDSSS3703', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1565, 'SHRESHTHA RAO', ' GOPAL SINGH RAO', ' YOGITA RAO', '0000-00-00', '', 'MDSSS1244', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1566, 'SUJAL VAISHNAV', ' KAILASH VAISHNAV', ' SANTOSH VAISHNAV', '0000-00-00', '', 'MDSSS1174', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1567, 'TANMAY SHRIMALI', ' YOGESH SHRIMALI', ' CHANCHAL SHRIMALI', '0000-00-00', '', 'MDSSS3698', 0, 12, 4, '', 'SA', '', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`, `hold`) VALUES
(1568, 'VIJESH SUTHAR', ' SATYA NARAYAN SUTHAR', ' SUSHILA', '0000-00-00', '', 'MDSSS2270', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1569, 'VIKAS PATEL', ' GANESH LAL PATEL', ' MOHAN DEVI PATEL', '0000-00-00', '', 'MDSSS1021', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1570, 'VIKRAM SINGH SISODIYA', ' BHAWAR SINGH SISODIYA', ' GEETA KUNWAR', '0000-00-00', '', 'MDSSS3699', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1571, 'VINAY PRATAP SINGH CHUNDAWAT', ' YASHWANT SINGH ', ' PAWAN KUNWAR', '0000-00-00', '', 'MDSSS0114', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1572, 'VINITA SINGH CHOUHAN', ' SHAMBHU SINGH CHOUHAN', ' USHA KUNWAR CHOUHAN', '0000-00-00', '', 'MDSSS2276', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1573, 'VISHVESH KIRAN KELAPURE', ' KIRAN SHRIKANT KELAURE', ' RUJUTA KIRAN KELAPURE', '0000-00-00', '', 'MDSSS1006', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1574, 'YASH JAIN', ' MANOJ KUMAR JAIN', ' RASHMI JAIN', '0000-00-00', '', 'MDSSS3628', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1575, 'YASHASHVI PALIWAL', ' KAILASH CHANDRA PALIWAL', ' KUSUM PALIWAL', '1970-01-01', 'Udaipur', 'MDSSS2257', 0, 12, 4, '', 'SA', '', '0000-00-00', 0),
(1576, 'BHAVYA GADIYA', ' MAHESH GADIYA', ' NISHA GADIYA', '0000-00-00', '', 'MDSSS1045', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1577, 'DHARAMVEER SINGH DEORA', ' JITENDRA SINGH', ' REKHA KUNWAR', '0000-00-00', '', 'MDSSS3311', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1578, 'DISHA JAIN', ' PRADYUMN PANCHORI', ' SANGEETA PANCHORI', '0000-00-00', '', 'MDSSS3622', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1579, 'GAUTAM JAISWAL', ' GYAN CHAND JAISWAL', ' NIRMALA JAISWAL', '0000-00-00', '', 'MDSSS1054', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1580, 'HARSHVARDHAN MALVIYA', ' BANSHI LAL LOHAR', ' DEVA KANYA LOHAR', '0000-00-00', '', 'MDSSS3739', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1581, 'JAHNVI TAK', ' VINAY TAK', ' SUMAN TAK', '0000-00-00', '', 'MDSSS2388', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1582, 'KALPIT MAHESHWARY', ' NIKHIL MAHESHWARY', ' ANJU MAHESHWARY', '0000-00-00', '', 'MDSSS1083', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1583, 'NAVEEN GARG', ' GANESH GARG', ' YASHODA GARG', '0000-00-00', '', 'MDSSS1175', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1584, 'NIRALI KODIA', ' NAVEEN KODIA', ' SONAL KODIA', '0000-00-00', '', 'MDSSS3283', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1585, 'RUCHIR JOSHI', ' RAJENDRA PRASAD JOSHI', ' VANDANA JOSHI', '0000-00-00', '', 'MDSSS3276', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1586, 'SHREYA SOMANI', ' RAVINDRA SOMANI', ' REKHA SOMANI', '0000-00-00', '', 'MDSSS3385', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1587, 'VISHAL SONI', 'SURESH JI SONI', ' MEENAKSHI SONI', '0000-00-00', '', 'MDSSS2354', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1588, 'VISHESH KOTHARI', ' DHANPAL KOTHARI', ' RENUKA KOTHARI', '0000-00-00', '', 'MDSSS3428', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1589, 'YUGAL KAVDIA', 'RAJESH KAVDIA', 'MAMTA KAVDIA', '0000-00-00', '', 'MDSSS3424', 0, 12, 7, '', 'SA', '', '0000-00-00', 0),
(1590, 'name', 'father_name', 'mother_name', '0000-00-00', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00', 0),
(1591, 'AMIT JAIN', ' ASHOK KUMAR JAIN', ' ARUNA JAIN', '0000-00-00', '', 'MDSSS1108', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1592, 'ANIKET VERMA', ' M.R. VERMA', ' SAROJ VERMA', '0000-00-00', '', 'MDSSS3679', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1593, 'BHAVIN KALAL', ' MOTILAL KALAL', ' LAXMI DEVI', '0000-00-00', '', 'MDSSS3044', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1594, 'CHIRAYU NEGI', ' DEVENDRA KUMAR NEGI', ' KUSUM LATA CHOUHAN', '0000-00-00', '', 'MDSSS3412', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1595, 'CHITRANG VERMA', ' MUNEESH KUMAR VERMA', ' MADHU VERMA', '0000-00-00', '', 'MDSSS1311', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1596, 'Deepesh B Teli', ' BHAGWATI LAL TELI', ' MANJU TELI', '0000-00-00', '', 'MDSSS1362', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1597, 'DHEERAJ KULMI', ' CHOUTHMAL KULMI', ' MEENA KULMI', '0000-00-00', '', 'MDSSS3644', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1599, 'GOPAL KUMAWAT', ' SURESH KUMAWAT', ' BADAMI DEVI', '0000-00-00', '', 'MDSSS3722', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1600, 'HIMANSHU KHOKHAWAT', ' RAJENDRA KHOKHAWAT', ' ANITA DEVI', '0000-00-00', '', 'MDSSS3677', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1601, 'HINAL JAIN', ' VINOD KUMAR JAIN', ' ANITA JAIN', '0000-00-00', '', 'MDSSS3650', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1602, 'KETAN GUPTA', ' RAJU GUPTA', ' CHANCHAL GUPTA', '0000-00-00', '', 'MDSSS2249', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1603, 'LOKENDRA VYAS', ' GANESH LAL VYAS', ' NARAYANI DEVI VYAS', '0000-00-00', '', 'MDSSS3640', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1604, 'MOHIT SONI', ' SUBASH CHANDRA VERMA', ' SUNITA SONI', '0000-00-00', '', 'MDSSS3630', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1605, 'NEHAL MAHESHWARI', ' VISHNU AGAL', ' INDU AGAL', '0000-00-00', '', 'MDSSS1114', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1606, 'NILESH CHHIPA', ' CHANDRA SHEKHAR CHIPPA', ' DEEPMALA CHHIPA', '0000-00-00', '', 'MDSSS3691', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1607, 'PARNIKA AGARWAL', 'DR. DINESH K AGARWAL', 'DR. MANJU AGARWAL', '0000-00-00', '', 'MDSSS2200', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1608, 'PRAGY RAJ SINGH CHOUHAN', ' DEVI SINGH CHOUHAN', ' DASHRAT KUNWAR', '0000-00-00', '', 'MDSSS3633', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1609, 'PRIYAVARDHAN SINGH MERTIYA', ' SHAILENDRA SINGH MERTIYA', ' OM KUNWAR ', '0000-00-00', '', 'MDSSS0248', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1610, 'RACHANA JAIN', ' JITENDRA JAIN', ' GAURI JAIN', '0000-00-00', '', 'MDSSS3647', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1612, 'SHUBHAM MAHESHWARI', ' BANTESH LAVTI', ' SEEMA LAVTI', '0000-00-00', '', 'MDSSS2206', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1613, 'SOURABH NIRWAN', ' GAJANAND JEENGAR', ' MEERA CHOUHAN', '0000-00-00', '', 'MDSSS3685', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1614, 'UMA DOSHI', ' MANOJ DOSHI', ' REKHA DOSHI', '0000-00-00', '', 'MDSSS3652', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1615, 'VIJAY JANGID', ' FATEH LAL SUTHAR', ' BHAGWANTI', '0000-00-00', '', 'MDSSS2380', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1616, 'VISHVENDRA SINGH ATTRAY', ' VIKAS SINGH ATTRAY', ' SANTOSH ATTRAY', '0000-00-00', '', 'MDSSS1094', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1617, 'VISHWAS CHOUBISA', ' NARESH CHOUBISA', ' KANTA CHOUBISA', '0000-00-00', '', 'MDSSS3371', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1618, 'YASH JOSHI', ' PURSHOTAM JOSHI', ' BASANTI DEVI', '0000-00-00', '', 'MDSSS2207', 0, 12, 5, '', 'SA', '', '0000-00-00', 0),
(1619, 'AMISHA HINGER', ' SUNIL KUMAR HINGER', ' MANJU HINGER', '0000-00-00', '', 'MDSSS1161', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1620, 'ANJALI JANGID', ' SHANTI LAL SUTHAR', ' SHANTI', '0000-00-00', '', 'MDSSS2381', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1621, 'BHUSHAN MAMTANI', ' INDRA KUMAR MAMTANI', ' DHANWANTI MAMTANI', '0000-00-00', '', 'MDSSS1214', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1622, 'HARSH GUPTA', ' KULDEEP GUPTA', ' RITU GUPTA', '0000-00-00', '', 'MDSSS3523', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1623, 'HARSHCHHAYA SALVI', ' OM PRAKASH SALVI', ' NIRMALA SALVI', '0000-00-00', '', 'MDSSS1059', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1624, 'HIMANSHI JAIN', ' BABULAL JAIN', ' LEENA JAIN', '0000-00-00', '', 'MDSSS3411', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1625, 'JAINAM JAIN', ' NARENDRA KUMAR JAIN', ' TARA JAIN', '0000-00-00', '', 'MDSSS3404', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1626, 'KARTIK CHANDAT', ' RAM CHANDRA MEENA', ' ANITA MEENA', '0000-00-00', '', 'MDSSS2239', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1627, 'MAHENDRA SINGH', ' BABU SINGH', ' MANJU KANWAR', '0000-00-00', '', 'MDSSS3651', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1628, 'PRAKASH GADRI', ' BHERULAL JI', ' RUPI BAI GADRI', '0000-00-00', '', 'MDSSS2209', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1629, 'PRASHANT CHAUDHARY', ' SANJAY CHAUDHARY', ' PREETI CHAUDHARY', '0000-00-00', '', 'MDSSS1107', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1630, 'PRERANA BAGRI', ' OMPRAKASH BAGRI', ' SARITA BAGRI', '0000-00-00', '', 'MDSSS1016', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1631, 'REENA GOSWAMI', ' MOHAN GIRI GOSWAMI', ' MANI DEVI', '0000-00-00', '', 'MDSSS3347', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1632, 'SHAKTI SINGH DEVRA', ' NIRBHAY SINGH DEVRA', ' PUSHPA KUNWAR DEVRA', '0000-00-00', '', 'MDSSS1238', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1633, 'SHIPRA PATEL', ' SHANKER LAL PATEL', ' KAMLA PATEL', '0000-00-00', '', 'MDSSS3344', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1634, 'SOMYA DASHORA', ' KAMLESH DASHORA', ' VIMI DASHORA', '0000-00-00', '', 'MDSSS2317', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1635, 'VIJAY KUMAWAT', ' NARAYAN LAL KUMAWAT', ' LAXMIDEVI KUMAWAT', '0000-00-00', '', 'MDSSS3648', 0, 12, 6, '', 'SA', '', '0000-00-00', 0),
(1636, 'name', 'father_name', 'mother_name', '0000-00-00', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00', 0),
(1698, 'name', 'father_name', 'mother_name', '0000-00-00', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00', 0),
(1760, 'name', 'father_name', 'mother_name', '0000-00-00', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00', 0),
(1761, 'ABHISHEK SHARMA', 'MR. SUNIL SHARMA', 'MRS. SANDHYA SHARMA', '0000-00-00', '', 'MDS - SS - 1769', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1762, 'ANKIT NAGORI', 'MR PRASS JI NAGORI', 'MRS REKHA NAGORI', '0000-00-00', '', 'MDS - SS - 3026', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1763, 'ANSHUL NAGORI', 'MR. RAJENDRA NAGORI', 'MRS. ANITA NAGORI', '0000-00-00', '', 'MDS-SS-2973', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1764, 'ANUSHKA MEHTA', 'MR. SUDHIR MEHTA', 'MRS. KIRAN MEHTA', '0000-00-00', '', 'MDS - SS - 1347', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1765, 'ARADHITA PANWAR', 'MR. RANVEER S. PANWAR', 'MRS. SHYAMA PANWAR', '0000-00-00', '', 'MDS-SS-2976', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1766, 'ARPIT UPADHYAY', 'MR. DINESH UPADHYAY', 'MRS. SUNITA UPADHYAY', '0000-00-00', '', 'MDS - SS - 779', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1767, 'ARYAN PATWA', 'MR. NARESH PATWA', 'MRS. CHETNA PATWA', '0000-00-00', '', 'MDS - SS - 1805', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1768, 'ASHUTOSH SOMANI', 'MR. RAJENDRA SOMANI', 'MRS. RATAN SOMANI', '0000-00-00', '', 'MDS - SS - 2842', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1769, 'ASHWIN MEHTA', 'MR. SURESH KUMAR MEHTA', 'MRS. PADMA MEHTA', '0000-00-00', '', 'MDS - SS - 807', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1770, 'AYUSHI SHARMA', 'MR. DEVENDRA SHARMA', 'MRS. MADHU SHARMA', '0000-00-00', '', 'MDS-SS-1573', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1771, 'CHAYAN JAIN', 'MR. MAHENDRA JAIN', 'MRS. SHALINI JAIN', '0000-00-00', '', 'MDS-SS-2975', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1772, 'DHRUV KISHAN SHARMA', 'MR. KISHAN LAL SHARMA', 'MRS. DARPAN SHARMA', '0000-00-00', '', 'MDS-SS-1507', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1773, 'DISHANT SAHU', 'MR. RADHA KISHAN SAHU', 'MRS. LALITA SAHU', '0000-00-00', '', 'MDS-SS-3014', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1774, 'DIVYANSHU SAMAR', 'MR. RAJESH SAMAR', 'MRS. SUNITA SAMAR', '0000-00-00', '', 'MDS - SS - 1427', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1775, 'GAURAV JAIN', 'MR. RAMESH CHANDRA JAIN', 'MRS. MANJU JAIN', '0000-00-00', '', 'MDS-SS-1944', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1776, 'HARSHIT JAIN', 'MR. ARVIND JAIN', 'MRS. PUSHPA JAIN', '0000-00-00', '', 'MDS-SS-2723', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1777, 'HARSHIT SHARMA', 'MR. KAMAL NAYAN SHRAMA', 'MRS. CHANDRAKALA SHARMA', '0000-00-00', '', 'MDS - SS - 2801', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1778, 'HARSHVARDHAN JAIN', 'MR. MANISH JAIN', 'MRS. REKHA JAIN', '0000-00-00', '', 'MDS - SS - 744', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1779, 'HEENA SALVI', 'MR. MUKESH SALVI', 'MRRS. SUMAN SALVI', '0000-00-00', '', 'MDS-SS-2469', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1780, 'HIMANI MAHESHWARI', 'MR. ', 'MRS. SUMAN LATA MANDOWARA', '0000-00-00', '', 'MDS-SS-2989', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1781, 'HIMESH SONI', 'MR. ARJUN JI SONI', 'MRS. HEMLATA SONI', '0000-00-00', '', 'MDS-SS-3620', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1782, 'JATIN JAGETIA', 'MR. VIJAY KUMAR JAGETIA', 'MRS. GAYATRI DEVI JAGETIA', '0000-00-00', '', 'MDS - SS - 1701', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1783, 'JAY DOSHI', 'MR. RAJENDRA JI DOSHI', 'MRS. SHEELU DOSHI', '0000-00-00', '', 'MDS-SS-3621', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1784, 'KARTAVYA KUMAR KALA', 'MR. GAJENDRA KUMAR KALA', 'MRS. SEEMA KALA', '0000-00-00', '', 'MDS - SS - 2598', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1785, 'MANISH PATEL', 'MR. BRIJESH KUMAR PATEL', 'MRS. SANGEETA PATEL', '0000-00-00', '', 'MDS - SS - 2045', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1786, 'MANJARI MATHUR', 'MR. RAJNEESH MATHUR', 'MRS. CHANDA MATHUR', '0000-00-00', '', 'MDS - SS - 1381', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1787, 'MAYANK TAK', 'MR. RAMESH CHANDRA TAK', 'MRS. CHANDRA KANTA', '0000-00-00', '', 'MDS-SS-2965', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1788, 'NAGESHWAR DANGI', 'MR. MANA RAM DANGI', 'MRS. SUNDER DEVI', '0000-00-00', '', 'MDS-SS-3013', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1789, 'NIKHIL JAIN', 'MR. BHAGWATI LAL JAIN', 'MRS. MAYA JAIN', '0000-00-00', '', 'MDS - SS - 2719', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1790, 'NIKITA JAIN', 'MR. BHANU KUMAR JAIN', 'MRS. SAROJ JAIN', '0000-00-00', '', 'MDS - SS - 2774', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1791, 'NIPUN MAHESHWARI', 'MR. LAXMI SHANKER GANDHI', 'MRS. MANJU GANDHI', '0000-00-00', '', 'MDS-SS-3053', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1792, 'NISHA MAHESHWARI', 'MR. KISHAN MAHESHWARI', 'MRS. SARITA MAHESHWARI', '0000-00-00', '', 'MDS - SS - 713', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1793, 'PARAMVEER SINGH SARANGDEVOT', 'MR. HIMMAT SINGH', 'MRS. NAINA KUNWAR', '0000-00-00', '', 'MDS - SS - 1164', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1794, 'PARUL KATARIYA', 'MR. MUKESH KATARIYA', 'MRS. CHANCHAL KATARIYA', '0000-00-00', '', 'MDS - SS - 2791', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1795, 'PAWAN MEHTA', 'MR. DINESH MEHTA', 'MRS. LALITA', '0000-00-00', '', 'MDS - SS - 2698', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1796, 'PRAGATI DOSHI', 'MR. KAMLESH ', 'MRS. PISTA DOSHI', '0000-00-00', '', 'MDS - SS - 902', 0, 13, 7, '', 'SP', '', '0000-00-00', 0),
(1797, 'PRASHANT PURUSOTTAM SHARMA', 'MR. PURASOTTAM SHARMA', 'MRS. NAVINA SHARMA', '0000-00-00', '', 'MDS - SS - 853', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1798, 'PRIYAL PAMECHA', 'MR. PARMESH PAMECHA', 'MRS. SEEMA PAMECHA', '0000-00-00', '', 'MDS - SS - 1391', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1799, 'PUNIT SONI', 'MR. BHUPENDRA SONI', 'MRS. MANJU SONI', '0000-00-00', '', 'MDS-SS-2971', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1800, 'RAGHAV SHARMA', 'MR. SHREEDHAR SHARMA', 'MRS. RITU SHARMA', '0000-00-00', '', 'MDS - SS - 1980', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1801, 'RASHI KUMAWAT', 'MR. MANOJ KUMAWAT', 'MRS. YACHNA KUMAWAT', '0000-00-00', '', 'MDS - SS - 719', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1802, 'RITIKA MAHESHWARI', 'MR. MUKESH MUNDRA', 'MRS. NEERU MUNDRA', '0000-00-00', '', 'MDS - SS - 1817', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1803, 'ROCHAK VIJAYVARGIYA', 'MR. BADRI LAL VIJAYVARGIYA', 'MRS. SEEMA VIJAYVARGIYA', '0000-00-00', '', 'MDS - SS - 2824', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1804, 'SABIR ALI PLANA', 'MR.MUSTAN ALI PLANA', 'MRS. FARZANA', '0000-00-00', '', 'MDS - SS - 1808', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1805, 'SAKSHI KHATHER', 'MR. SUNIL KHATHER', 'MRS. KAVITA KHATHER', '0000-00-00', '', 'MDS - SS - 782', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1806, 'SARTHAK DHAKED', 'MR.MANISH DHAKED', 'MRS.RAJKUMARI DHAKED', '0000-00-00', '', 'MDS - SS - 743', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1807, 'SHASHANK VASHISHTHA', 'MR. DEVESH KUMAR SHARMA', 'MRS. SHEELA SHARMA', '0000-00-00', '', 'MDS - SS - 2829', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1808, 'SHAYAN JAIN', 'MR. SANTOSH JAIN', 'MRS. NEETA JAIN', '0000-00-00', '', 'MDS-SS-3006', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1809, 'SHIVANI SONI', 'MR. SHYAM SUNDER SONI', 'MRS. ANITA SONI', '0000-00-00', '', 'MDS-SS-2990', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1810, 'SOMIL PATHAK', 'MR. ADITYA PATHAK', 'MRS. SHALINI PATHAK', '0000-00-00', '', 'MDS-SS-3015', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1811, 'SUMIT NAGDA', 'LATE. PRAKASH NAGDA', 'MRS. KUNTI BALA', '0000-00-00', '', 'MDS - SS - 1862', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1812, 'TITIKSHA JOSHI', 'MR. CHAMAN JOSHI', 'MRS. KUSUM JOSHI', '0000-00-00', '', 'MDS - SS - 2734', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1813, 'VAIBHAV TAK', 'MR. SURESH KUMAR TAK', 'MRS. VIJAY SHREE TAK', '0000-00-00', '', 'MDS-SS-2996', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1814, 'VISHAL MENARIA', 'MR. BHAGWATI LAL MENARIA', 'MRS. ASHA DEVI MENARIA', '0000-00-00', '', 'MDS - SS - 1581', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1815, 'VIVEK JAIN', 'MR. KANHAIYALAL JAIN', 'MRS. VILAS DEVI JAIN', '0000-00-00', '', 'MDS-SS-3007', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1816, 'YASHRAJ SINGH CHOUHAN', 'MR. PUSHKAR SINGH CHOUHAN', 'MRS. DHIRAJ KUNWAR', '0000-00-00', '', 'MDS - SS - 2808', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1817, 'YASHVI AGARWAL', 'MR. OM PRAKASH AGARWAL', 'MRS. SANGITA AGARWAL', '0000-00-00', '', 'MDS-SS-2957', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1818, 'NAKSHARTA PAL SINGH JHALA', 'SHAKTI SINGH JHALA', 'GOVIND KUNWAR JHALA', '0000-00-00', '', 'MDS-SS3009', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1819, 'KANAHIYALAL MENARIA', 'UDAI LAL', 'PUSHPA DEVI', '0000-00-00', '', 'MDS-SS-068', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1820, 'REENA KUNWAR DEVRA', 'DULHE SINGH DEVRA', 'TULSA KUNWAR DEVRA', '0000-00-00', '', 'MDS-SS-0759', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1821, 'GARVIT MALVIYA', 'DAMODAR MALVIYA', 'SAVITA MALVIYA', '0000-00-00', '', 'MDS-SS-1852', 0, 13, 4, '', 'SP', '', '0000-00-00', 0),
(1822, 'name', 'father_name', 'mother_name', '0000-00-00', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00', 0),
(1823, 'BHAVANA BHATI', 'MR. HARISH BHATI', 'MRS. SUNITA BHATI', '0000-00-00', '', 'MDS - SS - 897', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1824, 'DIGVIJAY SINGH CHOUHAN', 'MR. DASHRATH SINGH CHOUHAN', 'MRS. DASHRATH KUNWAR', '0000-00-00', '', 'MDS-SS-3681', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1825, 'FARHANA SHEIKH', 'MR. NASRUDDIN SHEIKH', 'MRS. FARJANA SHEIKH', '0000-00-00', '', 'MDS-SS-3002', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1826, 'GARGI AMETA', 'LALIT KUMAR AMETA', 'SAVITRI AMETA', '0000-00-00', '', 'MDS-SS-1774', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1827, 'HARSHITA SHARMA', 'MR. KAILASH CHANDRA SHARMA', 'MRS. SANGEETA NAGDA', '0000-00-00', '', 'MDS - SS - 1181', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1828, 'HARSHITA TIWARI', 'MR. VISHWA BANDHU TIWARI', 'MRS. SHANU TIWARI', '0000-00-00', '', 'MDS-SS-990', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1829, 'MANASVEN RAINA', 'MR. PRAVEEN RAINA', 'MRS. MEETA RAINA', '1970-01-01', 'Udaipur', 'MDS - SS - 701', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1830, 'NIMISHA KASERA', 'MR. PRADEEP KUMAR KASERA', 'MRS. NEETA KASERA', '0000-00-00', '', 'MDS-SS-3056', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1831, 'ZEEL SHARMA', 'MR. DILIP SHARMA', 'MRS. MONIKA SHARMA', '0000-00-00', '', 'MDS-SS-3063', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1832, 'ANKIT SINGH KOUNDAL', 'SANJAY SINGH KOUNDAL', 'SHASHI BALA', '1970-01-01', 'Udaipur', 'MDS-SS-492', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1833, 'BHARAT MEGHWAL', 'MADAN LAL MEGHWAL', 'FEFA MEGHWAL', '1970-01-01', 'Udaipur', 'MDS-SS-1665', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1834, 'GOPAL VAISHNAV', 'KALYAN DAS VAISHNAV', 'REEMA VAISHNAV', '1970-01-01', 'Udaipur', 'MDS-SS0762', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1835, 'HEMADRI RAO', 'DHARMENDRA SINGH RAO', 'TRIGUNESHWARI RAO', '1970-01-01', 'Udaipur', 'MDS-SS-2673', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1836, 'LATIKA SWARNKAR', 'HARISH KUMAR SWARNKAR', 'HEERA SWARNKAR', '1970-01-01', 'Udaipur', 'MDS-SS-971', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1837, 'NARESH KUMAR DANGI', 'MOHAN LAL', 'MANI DEVI', '0000-00-00', '', 'MDS-SS-1478', 0, 13, 6, '', 'SP', '', '0000-00-00', 0),
(1838, 'name', 'father_name', 'mother_name', '0000-00-00', 'address', 'scholar_no', 0, 0, 0, 'faculty', '', '', '0000-00-00', 0),
(1839, 'ABHINAV JAIN', 'MR. RISHABH KUMAR JAIN', 'MRS. REKHA JAIN', '0000-00-00', '', '', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1840, 'ARYA SEN', 'MR. RAJESH SEN', 'MRS. SONIYA SEN', '0000-00-00', '', 'MDS-SS-2970', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1841, 'BHARAT PALIWAL', 'MR. NAND KISHOR PALIWAL', 'MRS. GEETA PALIWAL', '0000-00-00', '', 'MDS - SS - 767', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1842, 'BHARAT SHARMA', 'MR. DEVI LAL SHARMA', 'MRS. NIRMALA SHARMA', '0000-00-00', '', 'MDS-SS-2841', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1843, 'HARDIK GUPTA', 'MR. AJAY KUMAR GUPTA', 'MRS. SAMIKSHA GUPTA', '0000-00-00', '', 'MDS-SS-2985', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1844, 'HARSHIT SHARMA', 'MR. PRAHALAD KUMAR SHARMA', 'MRS. CHANDAN BALA SHARMA', '0000-00-00', '', 'MDS-SS-2786', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1845, 'HIMANSHU MAHESHWARI', 'MR. C.P. MAHESHWARI', 'MRS. AMITA MAHESHWARI', '0000-00-00', '', '', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1846, 'KAJAL SINGHVI', 'LATE MR. NARENDRA SINGHVI', 'MRS. REKHA SINGHVI', '0000-00-00', '', 'MDS - SS - 2844', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1847, 'KARTIK JANGID', '', '', '0000-00-00', '', '', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1848, 'KISHAN PRATAP SINGH', 'MR. RAM PRATAP SINGH', 'MRS. SARITA SINGH', '0000-00-00', '', 'MDS-SS-833', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1849, 'KRISHN SHARMA', 'MR. NARENDRA SHARMA', 'MRS. MEENU SHARMA', '0000-00-00', '', 'MDS - SS - 2655', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1850, 'MANSI PANDEY', 'MR. MANOJ KUMAR PANDEY', 'MRS. ARCHANA PANDEY', '0000-00-00', '', 'MDS - SS - 705', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1851, 'MEHUL JOSHI', 'MR. BHARAT SHANKAR JOSHI', 'MRS. SUSHMA JOSHI', '1970-01-01', 'UDAIPUR', 'MDS - SS - 1758', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1852, 'NIKHIL POKHARANA', 'MR. LAXMI LAL POKHARNA', 'MRS. LALITA POKHARNA', '0000-00-00', '', 'MDS - SS - 1416', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1853, 'OJESH VYAS', 'MR. CHANDRA SHEKHAR VYAS', 'MRS. USHA VYAS', '0000-00-00', '', 'MDS-SS-2961', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1854, 'PRAKHAR SHUKLA', 'MR. RAKESH PRABHAKAR SHUKLA', 'MRS. SULEKHA SHUKLA', '0000-00-00', '', 'MDS - SS - 826', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1855, 'PRITHVI RAJ SINGH JHALA', 'MR. MAHENDRA SINGH JHALA', 'MRS. PARAS JHALA', '0000-00-00', '', 'MDS - SS - 2827', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1856, 'PULKIT MUNDRA', 'MR. MOHAN LAL MUNDRA', 'MRS. SOMNA MUNDRA', '0000-00-00', '', 'MDS - SS - 2711', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1857, 'RAVI BAJPAI', 'MR. ASHOK BAJPAI', 'MRS. RADHA BAJPAI', '0000-00-00', '', 'MDS - SS - 821', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1858, 'RIYAM JAIN', 'MR. MAHAVEER JAIN', 'MRS. REENA JAIN', '0000-00-00', '', 'MDS-SS-3003', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1859, 'SHASHVATA GHOSH', 'MR. SUBRATA KB GHOSH', 'MRS. TAPATI GHOSH', '0000-00-00', '', 'MDS - SS - 2622', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1860, 'SHUBHAM SONI', 'MR. SHYAM SUNDER SONI', 'MRS. ANITA SONI', '0000-00-00', '', 'MDS-SS-2988', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1861, 'VAIBHAV JAIN', 'MR. KAMLESH JAIN', 'MRS. SONAL JAIN', '0000-00-00', '', 'MDS-SS-2974', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1862, 'VINAYAK PALIWAL', 'MR. KAMAL PALIWAL', 'MRS. MEENA PALIWAL', '0000-00-00', '', 'MDS - SS - 2769', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1863, 'YASH SETHIYA', 'MR. KAMLESH SETHIYA', 'MRS. REKHA SETHIYA', '0000-00-00', '', 'MDS - SS - 2835', 0, 13, 5, '', 'SP', '', '0000-00-00', 0),
(1864, 'VIRENDRA SINGH DEVRA', 'MR.  MOHAN SINGH DEVRA', 'MRS. GULAB KUNWAR DEVRA', '0000-00-00', 'Udaipur', 'MDS-SS-1239', 0, 12, 6, '', '', '', '0000-00-00', 0);

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
(12, 11, 1, 14, 0, 0),
(13, 11, 1, 15, 0, 0),
(14, 11, 1, 0, 0, 3),
(15, 11, 1, 0, 0, 8),
(16, 11, 1, 0, 0, 16),
(17, 11, 2, 0, 0, 3),
(18, 11, 2, 0, 0, 8),
(19, 11, 2, 0, 0, 16),
(20, 11, 2, 1, 0, 0),
(21, 11, 2, 14, 0, 0),
(22, 11, 2, 15, 0, 0),
(23, 11, 3, 1, 0, 0),
(24, 11, 3, 17, 0, 0),
(25, 11, 3, 18, 0, 0),
(26, 11, 3, 0, 0, 3),
(27, 11, 3, 0, 0, 19),
(28, 1, 1, 1, 0, 0),
(29, 1, 1, 2, 0, 0),
(30, 1, 1, 3, 0, 0),
(31, 1, 1, 4, 0, 0),
(32, 1, 1, 5, 0, 0),
(33, 1, 1, 6, 0, 0),
(34, 1, 1, 7, 0, 0),
(35, 1, 1, 8, 0, 0),
(36, 1, 1, 9, 0, 0),
(37, 3, 1, 1, 0, 0),
(38, 3, 1, 2, 0, 0),
(39, 3, 1, 3, 0, 0),
(40, 3, 1, 5, 0, 0),
(41, 3, 1, 6, 0, 0),
(42, 3, 1, 7, 0, 0),
(43, 3, 1, 8, 0, 0),
(44, 3, 1, 9, 0, 0),
(45, 3, 1, 10, 0, 0),
(46, 3, 1, 11, 0, 0),
(47, 4, 1, 1, 0, 0),
(48, 4, 1, 2, 0, 0),
(49, 4, 1, 3, 0, 0),
(50, 4, 1, 5, 0, 0),
(51, 4, 1, 6, 0, 0),
(52, 4, 1, 7, 0, 0),
(53, 4, 1, 8, 0, 0),
(54, 4, 1, 9, 0, 0),
(55, 4, 1, 10, 0, 0),
(56, 4, 1, 11, 0, 0),
(57, 5, 1, 1, 0, 0),
(58, 5, 1, 2, 0, 0),
(59, 5, 1, 3, 0, 0),
(60, 5, 1, 5, 0, 0),
(61, 5, 1, 6, 0, 0),
(62, 5, 1, 7, 0, 0),
(63, 5, 1, 8, 0, 0),
(64, 5, 1, 9, 0, 0),
(65, 5, 1, 10, 0, 0),
(66, 5, 1, 11, 0, 0),
(67, 6, 1, 1, 0, 0),
(68, 6, 1, 2, 0, 0),
(69, 6, 1, 3, 0, 0),
(70, 6, 1, 5, 0, 0),
(71, 6, 1, 6, 0, 0),
(72, 6, 1, 7, 0, 0),
(73, 6, 1, 8, 0, 0),
(74, 6, 1, 9, 0, 0),
(75, 6, 1, 10, 0, 0),
(76, 6, 1, 11, 0, 0),
(77, 8, 1, 1, 0, 0),
(78, 8, 1, 2, 0, 0),
(79, 8, 1, 3, 0, 0),
(80, 8, 1, 5, 0, 0),
(81, 8, 1, 6, 0, 0),
(82, 8, 1, 7, 0, 0),
(83, 8, 1, 8, 0, 0),
(84, 8, 1, 9, 0, 0),
(85, 8, 1, 10, 0, 0),
(86, 8, 1, 11, 0, 0),
(87, 8, 1, 0, 0, 12),
(88, 8, 1, 0, 0, 13),
(89, 7, 1, 1, 0, 0),
(90, 7, 1, 2, 0, 0),
(91, 7, 1, 3, 0, 0),
(92, 7, 1, 5, 0, 0),
(93, 7, 1, 6, 0, 0),
(94, 7, 1, 7, 0, 0),
(95, 7, 1, 8, 0, 0),
(96, 7, 1, 9, 0, 0),
(97, 7, 1, 10, 0, 0),
(98, 7, 1, 11, 0, 0),
(99, 7, 1, 0, 0, 12),
(100, 7, 1, 0, 0, 13),
(101, 6, 1, 0, 0, 12),
(102, 6, 1, 0, 0, 13),
(103, 2, 1, 1, 0, 0),
(104, 2, 1, 2, 0, 0),
(105, 2, 1, 3, 0, 0),
(106, 2, 1, 4, 0, 0),
(107, 2, 1, 5, 0, 0),
(108, 2, 1, 6, 0, 0),
(109, 2, 1, 7, 0, 0),
(110, 2, 1, 8, 0, 0),
(111, 2, 1, 9, 0, 0),
(112, 10, 1, 1, 0, 0),
(113, 10, 1, 3, 0, 0),
(114, 10, 1, 7, 0, 0),
(115, 10, 1, 8, 0, 0),
(116, 10, 1, 9, 0, 0),
(117, 10, 1, 10, 0, 0),
(118, 10, 1, 11, 0, 0),
(119, 10, 1, 0, 0, 2),
(120, 10, 1, 0, 0, 12),
(121, 9, 1, 1, 0, 0),
(122, 9, 1, 3, 0, 0),
(123, 9, 1, 7, 0, 0),
(124, 9, 1, 8, 0, 0),
(125, 9, 1, 9, 0, 0),
(126, 9, 1, 10, 0, 0),
(127, 9, 1, 11, 0, 0),
(128, 9, 1, 0, 0, 2),
(129, 9, 1, 0, 0, 12),
(130, 11, 6, 1, 0, 0),
(131, 11, 6, 8, 0, 0),
(132, 11, 6, 14, 0, 0),
(133, 11, 6, 15, 0, 0),
(134, 11, 6, 16, 0, 0),
(135, 11, 5, 1, 0, 0),
(136, 11, 5, 3, 0, 0),
(137, 11, 5, 8, 0, 0),
(138, 11, 5, 14, 0, 0),
(139, 11, 5, 15, 0, 0),
(140, 12, 5, 1, 0, 0),
(141, 12, 5, 3, 0, 0),
(142, 12, 5, 8, 0, 0),
(143, 12, 5, 14, 0, 0),
(144, 12, 5, 15, 0, 0),
(145, 12, 6, 1, 0, 0),
(146, 12, 6, 8, 0, 0),
(147, 12, 6, 14, 0, 0),
(148, 12, 6, 15, 0, 0),
(149, 12, 6, 16, 0, 0),
(150, 11, 4, 1, 0, 0),
(151, 11, 4, 17, 0, 0),
(152, 11, 4, 18, 0, 0),
(153, 11, 4, 19, 0, 0),
(154, 11, 4, 0, 0, 8),
(155, 11, 7, 1, 0, 0),
(156, 11, 7, 17, 0, 0),
(157, 11, 7, 18, 0, 0),
(158, 11, 7, 19, 0, 0),
(159, 11, 7, 0, 0, 3),
(160, 12, 4, 1, 0, 0),
(161, 12, 4, 17, 0, 0),
(162, 12, 4, 18, 0, 0),
(163, 12, 4, 19, 0, 0),
(164, 12, 4, 0, 0, 8),
(165, 12, 7, 1, 0, 0),
(166, 12, 7, 17, 0, 0),
(167, 12, 7, 18, 0, 0),
(168, 12, 7, 19, 0, 0),
(169, 12, 7, 0, 0, 3);

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
(0, 7, 0, 1),
(0, 7, 0, 2),
(0, 7, 0, 3),
(0, 7, 0, 4),
(0, 7, 0, 5),
(0, 7, 0, 7),
(0, 7, 0, 8),
(0, 7, 0, 9),
(0, 7, 0, 10),
(0, 7, 0, 11),
(0, 7, 0, 12),
(0, 7, 0, 15),
(0, 7, 0, 16),
(0, 7, 0, 18),
(0, 7, 0, 19),
(0, 7, 0, 20),
(0, 1, 0, 1),
(0, 1, 0, 2),
(0, 1, 0, 3),
(0, 1, 0, 4),
(0, 1, 0, 5),
(0, 1, 0, 7),
(0, 1, 0, 8),
(0, 1, 0, 9),
(0, 1, 0, 10),
(0, 1, 0, 11),
(0, 1, 0, 12),
(0, 1, 0, 15),
(0, 1, 0, 16),
(0, 1, 0, 18),
(0, 1, 0, 19),
(0, 1, 0, 20),
(0, 1, 0, 21),
(0, 1, 0, 22),
(0, 1, 0, 23),
(0, 1, 0, 24),
(0, 1, 0, 25),
(0, 1, 0, 26),
(0, 1, 0, 27),
(0, 9, 0, 1),
(0, 9, 0, 2),
(0, 9, 0, 3),
(0, 9, 0, 4),
(0, 9, 0, 5),
(0, 9, 0, 7),
(0, 9, 0, 8),
(0, 9, 0, 9),
(0, 9, 0, 10),
(0, 9, 0, 11),
(0, 9, 0, 12),
(0, 9, 0, 15),
(0, 9, 0, 16),
(0, 9, 0, 18),
(0, 9, 0, 19),
(0, 9, 0, 20),
(0, 9, 0, 21),
(0, 9, 0, 22),
(0, 9, 0, 23),
(0, 9, 0, 24),
(0, 9, 0, 25),
(0, 9, 0, 26),
(0, 9, 0, 27),
(0, 0, 1, 1),
(0, 0, 1, 9),
(0, 0, 1, 10),
(0, 0, 1, 11),
(0, 0, 1, 19),
(0, 0, 1, 38),
(0, 0, 1, 39),
(0, 0, 1, 40),
(0, 0, 1, 46),
(0, 0, 1, 47),
(0, 0, 1, 50),
(0, 0, 2, 1),
(0, 0, 2, 2),
(0, 0, 2, 3),
(0, 0, 2, 4),
(0, 0, 2, 5),
(0, 0, 2, 7),
(0, 0, 2, 8),
(0, 0, 2, 9),
(0, 0, 2, 10),
(0, 0, 2, 11),
(0, 0, 2, 12),
(0, 0, 2, 15),
(0, 0, 2, 16),
(0, 0, 2, 18),
(0, 0, 2, 19),
(0, 0, 2, 20),
(0, 0, 2, 21),
(0, 0, 2, 22),
(0, 0, 2, 23),
(0, 0, 2, 28),
(0, 0, 2, 29),
(0, 0, 2, 30),
(0, 0, 2, 31),
(0, 0, 2, 32),
(0, 0, 2, 37),
(0, 0, 2, 38),
(0, 0, 2, 39),
(0, 0, 2, 40),
(0, 0, 2, 42),
(0, 0, 2, 43),
(0, 0, 2, 44),
(0, 0, 2, 45),
(0, 0, 2, 46),
(0, 0, 2, 47),
(0, 0, 2, 48),
(0, 0, 2, 50),
(0, 0, 2, 51),
(0, 0, 2, 52),
(0, 0, 2, 53),
(0, 0, 2, 54),
(0, 0, 2, 55),
(0, 0, 2, 56),
(0, 0, 2, 57),
(0, 0, 2, 58),
(0, 0, 2, 59),
(0, 0, 2, 60),
(0, 0, 2, 61);

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
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mapping_section`
--
ALTER TABLE `mapping_section`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1865;
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
