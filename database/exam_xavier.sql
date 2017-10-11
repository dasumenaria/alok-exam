-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2017 at 10:32 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_xavier`
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
(1, 14, 1),
(2, 1, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 6, 1),
(7, 7, 1),
(8, 8, 1),
(9, 9, 1),
(10, 10, 1),
(11, 11, 1),
(12, 12, 1),
(13, 13, 1);

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
  `class_name` varchar(30) NOT NULL,
  `roman` varchar(30) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `section` varchar(30) NOT NULL,
  `flag` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_section`
--

INSERT INTO `master_section` (`id`, `section`, `flag`) VALUES
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
-- Table structure for table `master_section_main`
--

CREATE TABLE `master_section_main` (
  `id` int(11) NOT NULL,
  `section` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `master_section_main`
--

INSERT INTO `master_section_main` (`id`, `section`) VALUES
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
(1, 'AALIYA  KHAN', 'TAHIR  HUSSAIN', 'REHANA', '0000-00-00', '697, GARIB NAWAZ COLONEY MAGARI SCHOOL KE PASS MALLA TALAI', '3428', 0, 5, 1, '', '', '', '0000-00-00', 0),
(2, 'ALFARHAN  KHAN', 'SHOUKAT KHAN', 'SHABNAM', '0000-00-00', '80 FEET ROAD NEAR RATA KHET NEAR MASJID', '3341', 0, 5, 1, '', '', '', '0000-00-00', 0),
(3, 'ANAM  KHAN', 'JAVED KHAN', 'FARHEEN NAAZ', '0000-00-00', 'GALI NO-4 GARIB NAWAZ COLONEY MALLA TALAI', '3397', 0, 5, 1, '', '', '', '0000-00-00', 0),
(4, 'JAY  PALIWAL', 'HEMANT PALIWAL', 'LALITA PALIWAL', '0000-00-00', '2 SHRI NAGAR NEAR AADARSH RESORT RAMPURA', '3636', 0, 5, 1, '', '', '', '0000-00-00', 0),
(5, 'JUNED  KHAN', 'MUMTAJ KHAN', 'SHAKIRA BANO', '0000-00-00', 'L-1 GANDHI NAGAR MULLA TALI', '3647', 0, 5, 1, '', '', '', '0000-00-00', 0),
(6, 'KALPESH  JOSHI', 'RAKESH JOSHI', 'RAJESHWARI JOSHI', '0000-00-00', 'MALLA TALAI AMAR NAGAR HOUSE NO.63 UDAIPUR', '3326', 0, 5, 1, '', '', '', '0000-00-00', 0),
(7, 'MOINUDDIN  BEHLIM', 'RIYAZ BEHLIM', 'SOFIYA BANO', '0000-00-00', '649,GARIB NAWAZ COLONEY MALLA TALI', '3342', 0, 5, 1, '', '', '', '0000-00-00', 0),
(8, 'YASHMIT  JOSHI', 'DILIP JOSHI', 'SUNITA JOSHI', '0000-00-00', '3 EC SAJJAN NAGAR  A UIT QUATER', '3541', 0, 5, 1, '', '', '', '0000-00-00', 0),
(9, 'ZAINAB BANO  KHAN', 'MOHSIN KHAN PATHAN', 'NILOFAR KHANAM', '0000-00-00', '270 B BLOCK SAJJAN NAGAR', '3658', 0, 5, 1, '', '', '', '0000-00-00', 0),
(10, 'AFSHEEN  KHAN', 'MOHAMMED ANWAR KHAN', 'RUBINA KHAN', '0000-00-00', '54- JATWARI', '3083', 0, 6, 1, '', '', '', '0000-00-00', 0),
(11, 'DAKSH  TRIVEDI', 'VINOD KUMAR TRIVEDI', 'PYARI TRIVEDI', '0000-00-00', 'NIROG DHAM CLINIC KE PASS MAIN ROAD MALLA TALAI.', '3182', 0, 6, 1, '', '', '', '0000-00-00', 0),
(12, 'GORANSH  PANWAR', 'PRAVEEN PANWAR', 'KAVITA PANWAR', '0000-00-00', 'G-8, POLICE QUARTER', '3090', 0, 6, 1, '', '', '', '0000-00-00', 0),
(13, 'ISHAN  JOSHI', 'SUBHASH JOSHI', 'VANDANA JOSHI', '0000-00-00', '300,A BLOCK SAJJAN NAGAR GALI NO. 2', '3168', 0, 6, 1, '', '', '', '0000-00-00', 0),
(14, 'JATIN  PALIWAL', 'GAJANAND PALIWAL', 'RATAN DEVI PALIWAL', '0000-00-00', '83 BARIGAT INSIDE CHANDPOL', '3148', 0, 6, 1, '', '', '', '0000-00-00', 0),
(15, 'MISBAH  SHEIKH', 'NIZAM MOHD', 'RESHMA SHEIKH', '0000-00-00', 'AHMED HUSSAIN COLONY MALLA TALAI', '3353/14', 0, 6, 1, '', '', '', '0000-00-00', 0),
(16, 'MOHAMMED ASAD  SHEIKH', 'REHANUDDIN SHEIKH', 'AFSANA BANU', '0000-00-00', '438,GALI NO.1 GARIB NAWAZ COLONY MALLA TALAI', '3150', 0, 6, 1, '', '', '', '0000-00-00', 0),
(17, 'SAKSHI  RAI', 'DEVENDRA RAI', 'JAYANTI RAI', '0000-00-00', 'WARD NO. 8, CHAMPA COLONY, DUDHIYA GANESH JI MAHADEV MANDIR', '3363', 0, 6, 1, '', '', '', '0000-00-00', 0),
(18, 'ALFINA  BANU', 'MOHD HUSSAIN', 'MARIYAM BANU', '0000-00-00', '528/60 OTC SCHEME CHIPPA COLONY', '3068', 0, 7, 1, '', '', '', '0000-00-00', 0),
(19, 'FATMA  ZEHRA', 'SHEHJAD  KHAN', 'FARJANA BEGUM', '0000-00-00', '121 FARUQ AZAM COLONEY MALLA TALAI', '3608', 0, 7, 1, '', '', '', '0000-00-00', 0),
(20, 'KHUSHI  SARNOT', 'DEVENDRA SARNOT', 'SANGEETA SARNOT', '0000-00-00', 'MAHVEER COLONY, UPPALI SAHARI, VILLAGE - NAI', '3508', 0, 7, 1, '', '', '', '0000-00-00', 0),
(21, 'MOHAMMED ALI  KHAN', 'MOHSIN KHAN PATHAN', 'NILOFAR KHANAM', '0000-00-00', '270 B BLOCK SAJJAN NAGAR', '3659', 0, 7, 1, '', '', '', '0000-00-00', 0),
(22, 'MOHAMMED ANAS  SHEIKH', 'MOHAMMED ZAFAR SHEIKH', 'SHAMEEM BANU', '0000-00-00', '368/369,FARUQ AAZAM COLONY MALLA TALAI', '2966', 0, 7, 1, '', '', '', '0000-00-00', 0),
(23, 'MOHAMMED AYAN  SHEIKH', 'MOHAMMED SALIM SHEIKH', 'MOHSINA BANO', '0000-00-00', 'AMBA LAL JI WALI GALI 80 FEET', '3686', 0, 7, 1, '', '', '', '0000-00-00', 0),
(24, 'MOHAMMED OSAN  ', 'AKHLAK HUSSAIN', 'ZEENAT GORI', '0000-00-00', 'FARUKH AZAM COLONY GALI NO 2', '3685', 0, 7, 1, '', '', '', '0000-00-00', 0),
(25, 'MOHAMMED ZAKEE  ', 'MOHAMMED FAREED', 'ZULEKHA KHATUN', '0000-00-00', '5-83,GANDHI NAGAR,MALLA TALAI', '3049', 0, 7, 1, '', '', '', '0000-00-00', 0),
(26, 'ONIK  BACHANI', 'CHANDRA PRAKASH BACHANI', 'MUSKAN BACHANI', '0000-00-00', '6/2, MACHLA MAGRA, SECTORE 11', '3501', 0, 7, 1, '', '', '', '0000-00-00', 0),
(27, 'SALIK  KHAN', 'SHAKEEL KHAN', 'SHAHEEN BANU', '0000-00-00', 'CENTRAL ACADMY SCHOOL KE PASS, MALLA TALAI', '2917', 0, 7, 1, '', '', '', '0000-00-00', 0),
(28, 'SHIFA  SHAKEEL', 'MOHD SHAKEEL', 'SURAIYA', '0000-00-00', 'GANDHI NAGAR MALLA TALAI', '3076', 0, 7, 1, '', '', '', '0000-00-00', 0),
(29, 'SHRISHTHI  JOSHI', 'KISHAN JOSHI', 'NEHA JOSHI', '0000-00-00', 'CHAMPA COLONY DUDHIYA GANESH JI', '2711', 0, 7, 1, '', '', '', '0000-00-00', 0),
(30, 'ANURAKSHI  KARNOT', 'LAXMAN SINGH KARNOT', 'MANISHA KARNOT', '0000-00-00', '232 HARSH NAGAR RAMPURA ROAD', '2905', 0, 8, 1, '', '', '', '0000-00-00', 0),
(31, 'ARSHIL  RAZA', 'NABIL AHMED', 'RESHMA BANO', '0000-00-00', '80 FEET ROAD NEAR MOSQUE H.N.33 MALLA TALAI', '13-03-3291', 0, 8, 1, '', '', '', '0000-00-00', 0),
(32, 'BHAVYA  PALIWAL', 'SANJAY PALIWAL', 'KANTA PALIWAL', '0000-00-00', '0/8, NAGAR PARISHAD COLONY, BRAHAMPOLE', '2865', 0, 8, 1, '', '', '', '0000-00-00', 0),
(33, 'CHIRAG  NAGDA', 'MITHA LAL NAGDA', 'BHAWNA NAGDA', '0000-00-00', 'KRISHNA MAHILA COLLEGE NEAR SISARMA UDAIPUR', '2951', 0, 8, 1, '', '', '', '0000-00-00', 0),
(34, 'DEVRAJ SINGH CHOUHAN', 'VIRENDRA SINGH CHOUHAN', 'ANITA CHOUHAN', '0000-00-00', '222 HARSH NAGAR RAMPURA', '2871', 0, 8, 1, '', '', '', '0000-00-00', 0),
(35, 'HARSH  SARWAR', 'PANKAJ  KUMAR SARWAR', 'JYOTSANA DEVI SARWAR', '0000-00-00', 'C-4 C BLOCK BHILU RANA COLONY', '3197', 0, 8, 1, '', '', '', '0000-00-00', 0),
(36, 'HARSH  SHARMA', 'BINIT SHARMA', 'MANJU SHARMA', '0000-00-00', '22 HARSH NAGAR NEW RAMPURA  UDAIPUR', '1771/B', 0, 8, 1, '', '', '', '0000-00-00', 0),
(37, 'HARSHIT  JOSHI', 'RAJESH JOSHI', 'GAYATRI JOSHI', '0000-00-00', 'A BLOCK 167 SAJJAN NAGAR UDAIPUR', '2745', 0, 8, 1, '', '', '', '0000-00-00', 0),
(38, 'MOHAMMED FAISAL ', 'ZAKIR  HUSSAIN', 'BILKIS BANO', '0000-00-00', 'S 56 GANDHI NAGAR MULLATALAI', '3629', 0, 8, 1, '', '', '', '0000-00-00', 0),
(39, 'MOHAMMED SOHAIL  SHEIKH', 'MOHAMMED FARUQ', 'TABASSUM', '0000-00-00', 'AHMED HUSSAIN COLNEY MASTAN BABA KE PICHE', '3673', 0, 8, 1, '', '', '', '0000-00-00', 0),
(40, 'SAFA  DAYER', 'MOHD RIAZ DAYER', 'SOFIYA DAYER', '0000-00-00', '469,STREET NO.2 GARIB NAWAZ COLONY MALLA TALAI', '2910', 0, 8, 1, '', '', '', '0000-00-00', 0),
(41, 'SALEHA  RIZVI', 'RIYAZ AHMED', 'AREEN BANO', '0000-00-00', 'INSIDE SILAWATWADI NEEM KA CHOWK', '3287/13', 0, 8, 1, '', '', '', '0000-00-00', 0),
(42, 'ARPAN  SHARMA', 'OM PRAKASH SHARMA', 'SAPNA SHARMA', '0000-00-00', '168, RAO JI KA HATA, UDAIPUR', '2672', 0, 9, 1, '', '', '', '0000-00-00', 0),
(43, 'AYUSH  CHETNANI', 'SANJAY CHETNANI', 'REKHA CHETNANI', '0000-00-00', 'H.NO-21 KAILASH COLONY', '2436', 0, 9, 1, '', '', '', '0000-00-00', 0),
(44, 'CHITRANSH  NAGDA', 'KAILASH NAGDA', 'SANGEETA NAGDA', '0000-00-00', '81, RATA KHET, BAL SHIKSHA SADAN', '2448', 0, 9, 1, '', '', '', '0000-00-00', 0),
(45, 'DIPESH  BISWAS', 'ASIT BISWAS', 'PARWATI BISWAS', '0000-00-00', 'K-19, HARIDAS JI KI MAGRI MALLA TALAI', '2433', 0, 9, 1, '', '', '', '0000-00-00', 0),
(46, 'HARSHVARDHAN  DHANDRA', 'VIJAY KUMAR DHANDRA', 'TEENA DHANDRA', '0000-00-00', '36-GANDHI NAGAR, MALLA TALAI ,BEHIND WISDOM HOME SCHOOL UDAIPUR', '3386', 0, 9, 1, '', '', '', '0000-00-00', 0),
(47, 'KULDEEP  KOUR', 'INDRAJEET SARDAR', 'CHARANJEET KOUR', '0000-00-00', '2792, B-BLOCK, AMAR NAGAR,MALLA TALAI', '3204', 0, 9, 1, '', '', '', '0000-00-00', 0),
(48, 'LOVE KUMAR NAGDA', 'DILIP NAGDA', 'SHAKUNTALA NAGDA', '0000-00-00', '256, NAI ROAD, SITAMATA COLONY, SISARMA TEHSIL GIRVA UDAIPUR', '3375', 0, 9, 1, '', '', '', '0000-00-00', 0),
(49, 'MOHAMMED NOMAN  ', 'NOOR MOHAMMED', 'KOUSAR BANU SHEIKH', '0000-00-00', '185 B BLOCK O TC SAJJAN NAGAR', '3691', 0, 9, 1, '', '', '', '0000-00-00', 0),
(50, 'MOHAMMED REHAN  SHEIKH', 'MOHAMMED SALIM SHEIKH', 'MOHSINA BANU', '0000-00-00', 'AMBA LAL KHATIK WALI GALI AMAR NAGAR', '3687', 0, 9, 1, '', '', '', '0000-00-00', 0),
(51, 'NANDINI  CHOUHAN', 'KISHAN SINGH', 'USHA CHOUHAN', '0000-00-00', '15-B-HARIDAS JI KI MAGRI', '2850', 0, 9, 1, '', '', '', '0000-00-00', 0),
(52, 'RANVEER  PARGI', 'PRAKASH PARGI', 'SUDHA PARGI', '0000-00-00', 'SISARMA ROAD NEAR DUNGERPUR HOUSE', '2418', 0, 9, 1, '', '', '', '0000-00-00', 0),
(53, 'SANIYA  RATHORE', 'CHAIN SINGH RATHORE', 'CHAMPA RATHORE', '0000-00-00', 'JAI AMBE ELECTRIC SHOP, MALLA TALAI', '3502', 0, 9, 1, '', '', '', '0000-00-00', 0),
(54, 'TAKSH RAJ SINGH RANAWAT', 'DILIP SINGH RANAWAT', 'SURBHI KUNWAR RANAWAT', '0000-00-00', 'J-9 HARIDAS JI KI MAGRI', '3308', 0, 9, 1, '', '', '', '0000-00-00', 0),
(55, 'ABDUL ALMAS  KHAN', 'ABDUL WAHID KHAN', 'SHAHEEN BANO', '0000-00-00', 'H. NO.-814 KOMI EKTA NAGAR LANE NO.-2 MALLA TALAI', '2053', 0, 14, 1, '', '', '', '0000-00-00', 0),
(56, 'AMAN  KHAN', 'SHAHID KHAN', 'TARANNUM KHAN', '0000-00-00', 'O.T.C., B-BLOCK SAJJAN NAGAR, 80 FEET ROAD', '1771', 0, 14, 1, '', '', '', '0000-00-00', 0),
(57, 'ANU  PANDEY', 'SUDAMA PANDEY', 'SATYWATI PANDAY', '0000-00-00', 'B-8, HARIDAS JI KI MAGRI', '1251', 0, 14, 1, '', '', '', '0000-00-00', 0),
(58, 'BHAVESH  AUDICHYA', 'TULSI RAM BHATT', 'KUSUM LATA AUDICHYA', '0000-00-00', 'NEW RAM PURA COLONEY MULLA TALAI', '3540', 0, 14, 1, '', '', '', '0000-00-00', 0),
(59, 'BHAVIKA CHOUHAN  ', 'DALPAT SINGH CHOUHAN', 'PRAMILA CHOUHAN', '0000-00-00', 'RATA KHET', '2177', 0, 14, 1, '', '', '', '0000-00-00', 0),
(60, 'BILAL  SHEIKH', 'SHABBIR SHEIKH', 'SHABNAM SHEIKH', '0000-00-00', '103, B-BLOCK, AMAR NAGAR', '2257', 0, 14, 1, '', '', '', '0000-00-00', 0),
(61, 'DEEPTI  SINGH', 'SHATRUGHAN SINGH', 'ADITI SINGH', '0000-00-00', 'VILLAGE POST - BHARHE CHOURA, BHATNI, SALEMPUR,', '2808', 0, 14, 1, '', '', '', '0000-00-00', 0),
(62, 'DEV SINGH RAJPUT', 'SATYENDRA SINGH', 'PARVATI SINGH', '0000-00-00', '2037. 80 FEET ROAD SAJJAN NAGAR', '2576', 0, 14, 1, '', '', '', '0000-00-00', 0),
(63, 'DIVYANSHU  SINGH', 'SHATRUGHAN SINGH', 'ADITI SINGH', '0000-00-00', 'VILLAGE POST - BHARHE CHOURA, BHATNI, SALEMPUR', '2809', 0, 14, 1, '', '', '', '0000-00-00', 0),
(64, 'FAIZA  KHAN', 'MOHAMMED SHAKIL KHAN', 'SHABNAM KHAN', '0000-00-00', '52, RAZA COLONY, MALLA TALAI', '2584', 0, 14, 1, '', '', '', '0000-00-00', 0),
(65, 'GOURAV  AMETA', 'LATE ASHOK AMETA', 'GAYATRI AMETA', '0000-00-00', 'EKLAVYA COLONY', '1245', 0, 14, 1, '', '', '', '0000-00-00', 0),
(66, 'HARSHIT SINGH  BHATI', 'PARMENDRA SINGH BHATI', 'SEEMA BHATI', '0000-00-00', '8, RANG NIVAS CHOUKI', '2268', 0, 14, 1, '', '', '', '0000-00-00', 0),
(67, 'HARSHITA  JOSHI', 'BHARAT JOSHI', 'REKHA JOSHI', '0000-00-00', 'C-3, HARIDAS JI KI MAGRI', '1770', 0, 14, 1, '', '', '', '0000-00-00', 0),
(68, 'HONEY  GOSWAMI', 'HARISH GOSWAMI', 'RAJANI GOSWAMI', '0000-00-00', '10, KOL-POL BADA BAZAR', '1521', 0, 14, 1, '', '', '', '0000-00-00', 0),
(69, 'HUMA  SHEIKH', 'MOHAMMED SAEED SHEIKH', 'SHABANA SHEIKH', '0000-00-00', '114, RAZA COLONY, MALLA TALAI', '1243', 0, 14, 1, '', '', '', '0000-00-00', 0),
(70, 'IRFAN  ALI', 'SAYAAD ALI', 'SHIKILA BANU', '0000-00-00', 'KOMI KETA NAGAR GALI NO.-2', '3240', 0, 14, 1, '', '', '', '0000-00-00', 0),
(71, 'KAYNAT  KHAN', 'HUSSAIN KHAN', 'SHABANA KHAN', '0000-00-00', 'GARIB NAWAZ COLONY,MALLA TALAI', '2071', 0, 14, 1, '', '', '', '0000-00-00', 0),
(72, 'LOVE  KHATRI', 'DEEPAK KHATRI', 'KAVITA KHATRI', '0000-00-00', '74, RAO JI KA HATA, CHINTA MANI MARG', '1764', 0, 14, 1, '', '', '', '0000-00-00', 0),
(73, 'MOHAMMED ADIL  ', 'MOHAMMED RASHID', 'SHABNAM BANO', '0000-00-00', 'SAJJAN NAGAR A- BLOCK EC-6', '3384', 0, 14, 1, '', '', '', '0000-00-00', 0),
(74, 'MOHAMMED AMEEN  ', 'MOHAMMED ZAKIR SHEIKH', 'SULTANA SHEIKH', '0000-00-00', '2, A- KOMI EKTA NAGAR, MALLA TALAI', '1545', 0, 14, 1, '', '', '', '0000-00-00', 0),
(75, 'MOHAMMED AYAN  ', 'AIJAZ AHMED', 'ANISHA BANU', '0000-00-00', '236, O.T.C. RAZA COLONY MALLA TALAI', '2262', 0, 14, 1, '', '', '', '0000-00-00', 0),
(76, 'MOHAMMED JUNAID AZAM KHAN', 'MOHD AKRAM KHAN', 'ASHIYA BEGAM', '0000-00-00', '17, KALESAT, NEAR MOSQUE, JATWARI', '1599', 0, 14, 1, '', '', '', '0000-00-00', 0),
(77, 'NIKITA  JOSHI', 'BRIJ MOHAN JOSHI', 'MADHU JOSHI', '0000-00-00', '105, O.T.C. B- BLOCK, AMAR NAGAR', '1835', 0, 14, 1, '', '', '', '0000-00-00', 0),
(78, 'PRATEEK  UPADHYAY', 'KAUSHAL KUMAR NAGDA', 'GEETA NAGDA', '0000-00-00', 'BHUJDA CHAR BHUJA JI KI MANDIR KE PASS', '1576', 0, 14, 1, '', '', '', '0000-00-00', 0),
(79, 'SAHIL  KHAN', 'SHAKIL KHAN', 'SHAHIN BANU', '0000-00-00', 'LANE-3, KOMI EKTA NAGAR CENTRAL ACADEMY SCHOOL', '1402', 0, 14, 1, '', '', '', '0000-00-00', 0),
(80, 'SEETA  KUNWAR', 'AMAR SINGH DEVRA', 'KAMLA KUNWAR', '0000-00-00', 'C-3, SISARMA, RAJ POLICE QUARTER', '3242', 0, 14, 1, '', '', '', '0000-00-00', 0),
(81, 'SHARLI  JAMES', 'JARRELD JAMES', 'LATE EDLINA JAMES', '0000-00-00', 'H.N-191 HARSH NAGAR SISARMA ROAD', '1419', 0, 14, 1, '', '', '', '0000-00-00', 0),
(82, 'SHIVANGI  CHOUHAN', 'PRAVEEN CHOUHAN', 'VIJAY LAXMI  CHOUHAN', '0000-00-00', '232,HARSH NAGAR', '1567', 0, 14, 1, '', '', '', '0000-00-00', 0),
(83, 'SHWETA  KARNOT', 'LAXMAN SINGH KARNOT', 'MANSHA KUNWAR', '0000-00-00', '232, HARSH NAGAR MAIN ROAD MALLA TALAI', '1216', 0, 14, 1, '', '', '', '0000-00-00', 0),
(84, 'ANUSHKA  SHAKTAWAT', 'VIMAL SINGH SHAKTWAT', 'LAXMI KUNWAR', '0000-00-00', '31 AMBAWADI UBESHWAR ROAD', '3616', 0, 4, 1, '', '', '', '0000-00-00', 0),
(85, 'BHAVI KUNWAR RATHORE', 'RAGHUVEER SINGH RATHORE', 'SANJU KUNWAR RATHORE', '0000-00-00', '80, AMAR NAGAR NEAR JAGRATI SCHOOL, DUDIYA GANESH JI MALLA TALAI', '3454', 0, 4, 1, '', '', '', '0000-00-00', 0),
(86, 'DARAFSHA  BANO', 'MOHAMMED  JAMEEL', 'SURRAIYA BANO', '0000-00-00', '198 OUT SIDE CHAND POLE BHINDER KI HAVELI', '3652', 0, 4, 1, '', '', '', '0000-00-00', 0),
(87, 'MAHIN  KHAN', 'JAVED KHAN', 'NAZMIN KHAN', '0000-00-00', 'H. NO.-563, BEHIND MAGRI SCHOOL, MALLA TALAI', '3458', 0, 4, 1, '', '', '', '0000-00-00', 0),
(88, 'MOHAMMED JAID KHAN', 'JAVED KHAN', 'CHAMAN ARA', '0000-00-00', '50 KISHAN POLE NEAR EXICE OFFICE', '3630', 0, 4, 1, '', '', '', '0000-00-00', 0),
(89, 'PRACHI  NAGDA', 'DILIP NAGDA', 'SHAKUNTALA NAGDA', '0000-00-00', '256, NAI ROAD, SEETA MATA COLONY, SISARMA', '3459', 0, 4, 1, '', '', '', '0000-00-00', 0),
(90, 'SEJAL SINGH CHOUHAN', 'LALIT SINGH CHOUHAN', 'SURBHI SISODIYA', '0000-00-00', '5/99 BAGOUR KA NOHARA, OUTSIDE CHANDPOLE', '3455', 0, 4, 1, '', '', '', '0000-00-00', 0),
(91, 'SHIFA  BANO', 'ARIF HUSSAIN', 'YASMIN BANO', '0000-00-00', '264 OTC A BLOCK SAJJAN NAGAR MULLA TALAI', '3479', 0, 4, 1, '', '', '', '0000-00-00', 0),
(92, 'SONIYA  SAHANI', 'MONTU SAHANI', 'REENA SAHANI', '0000-00-00', 'B-6 HARI DAS JI KI MAGARI MIULLA TALAI', '3556', 0, 4, 1, '', '', '', '0000-00-00', 0),
(93, 'SUDHEER PRATAP SINGH', 'CHAIN SINGH RATHORE', 'CHAMPAT RATHORE', '0000-00-00', 'EKLAVYA COLONY MALLA TALAI', '3452', 0, 4, 1, '', '', '', '0000-00-00', 0),
(94, 'AFZAL  KHAN', 'JAVED KHAN', 'SULTANA BANO', '0000-00-00', 'RAM MANOHAR LOHIYA NAGAR', '3606', 0, 3, 1, '', '', '', '0000-00-00', 0),
(95, 'ALFIYA  SHEIKH', 'FIROJ KHAN', 'TAHIRA BANO', '0000-00-00', '224 RAZA COLONY MALLATALAI', '3615', 0, 3, 1, '', '', '', '0000-00-00', 0),
(96, 'DARSH  DAVE', 'HIMANSHU DAVE', 'JAYA DAVE', '0000-00-00', '36 ACHARYA MARG OUT SIDE CHAND POLE', '3584', 0, 3, 1, '', '', '', '0000-00-00', 0),
(97, 'DEV  DAVE', 'HIMANSHU DAVE', 'JAYA DAVE', '0000-00-00', '36 ACHARYA MARG O/S CHAND POLE', '3585', 0, 3, 1, '', '', '', '0000-00-00', 0),
(98, 'GARGI  DAVE', 'BHUPENDRA DAVE', 'SURAJ DAVE', '0000-00-00', '103 CHODHARY GUST HOUSE KI GALI AMBAWADI', '3587', 0, 4, 1, '', '', '', '0000-00-00', 0),
(99, 'IBRA  SHEIKH', 'MOHAMMED JAVED SHEIKH', 'RAHAT KOUSAR', '0000-00-00', '114 RAZA COLONEY', '3601', 0, 3, 1, '', '', '', '0000-00-00', 0),
(100, 'JAYAN  BHATI', 'MANOJ BHATI', 'GANGA BHATI', '0000-00-00', 'K-13 HARI DAS JI KI MAGARI', '3600', 0, 3, 1, '', '', '', '0000-00-00', 0),
(101, 'LAKSHYARAJ PUROHIT  ', 'RAJ KUMAR PUROHIT', 'JYOTI PUROHIT', '0000-00-00', 'NEAR GAS GODOWN SRI NAGAR', '3719', 0, 3, 1, '', '', '', '0000-00-00', 0),
(102, 'MOHAMMED ARSH KHAN  ', 'MOHAMMED RAFIQ', 'SHAHEEN BANO', '0000-00-00', 'RAM MANOHAR LOHIA NAGAR KACHHI BASTI', '3743', 0, 3, 1, '', '', '', '0000-00-00', 0),
(103, 'MOHAMMED FAIZAN  ', 'MOHAMMED SALIM', 'HEENA BANO', '0000-00-00', '528/14 CHHIPA COLONY', '3760', 0, 3, 1, '', '', '', '0000-00-00', 0),
(104, '', 'MOHSIN KHAN', 'NILOFAR KHANAM', '0000-00-00', '270 B BLOCK SAJJAN NAGAR', '3594', 0, 2, 1, '', '', '', '0000-00-00', 0),
(105, 'MOHAMMED SAIFUL  RAZA', 'IDRIS KHAN', 'SAIMA KHAN', '0000-00-00', '577 GARIB NAWAZ COLONY GALI NO. 3 NEAR MAGRI SCHOOL', '3762', 0, 3, 1, '', '', '', '0000-00-00', 0),
(106, 'PALAK  RAI', 'DEVENDRA RAI', 'JAYANTI RAI', '0000-00-00', 'B 19 HARIDAS JI KI MAGRI', '3698', 0, 3, 1, '', '', '', '0000-00-00', 0),
(107, 'RIDA  FATIMA', 'KALEEM  AALAM', 'HEENA BANO', '0000-00-00', '174 CHITTORO KA TIMBA MAHAWAT WADI', '3591', 0, 3, 1, '', '', '', '0000-00-00', 0),
(108, 'SHADAF RAZA  ', 'IRSHAD KHAN', 'SHER KHAN', '0000-00-00', 'KELWA HOUSE BICHHU GHATI HATHIPOLE', '3723', 0, 3, 1, '', '', '', '0000-00-00', 0),
(109, 'TAYUSH  PUJARI', 'HEMANT PUJARI', 'SANTOSH PUJARI', '0000-00-00', '48 AMBAWADI CHOUDHARY GUEST  HOUSE RAMPURA', '3581', 0, 3, 1, '', '', '', '0000-00-00', 0),
(110, 'YAHVI SINGH CHOUHAN', 'KISHAN SINGH CHOUHAN', 'USHA CHOUHAN', '0000-00-00', 'C/O RAMESHWAR LAL PRAJAPAT B-2 HARI DAS JI KI MAGARI', '3599', 0, 3, 1, '', '', '', '0000-00-00', 0),
(111, 'YUHANISH  KHAN', 'MOHAMMED RASHID KHAN', 'RUBEENA PARVEEN', '0000-00-00', '156 NAGA NAGARI OUT SIDE CHAND POLE', '3602', 0, 3, 1, '', '', '', '0000-00-00', 0),
(112, 'AARTI  CHOUHAN', 'BIRENDRA CHOUHAN', 'ANITA CHOUHAN', '0000-00-00', '222 HARSH NAGAR, NEW RAMPURA', '2171', 0, 10, 1, '', '', '', '0000-00-00', 0),
(113, 'ANAND  SINGH', 'SATYENDRA SINGH', 'PARWATI SINGH', '0000-00-00', '229 B AMAN NAGAR MULLATALAI', '3551', 0, 10, 1, '', '', '', '0000-00-00', 0),
(114, 'ANOSH  JAMES', 'RONALD JAMES', 'SHALU JAMES', '0000-00-00', 'NEAR AMABATA TEMPLE RAO COLONY', '2390', 0, 10, 1, '', '', '', '0000-00-00', 0),
(115, 'KRISH  BHATI', 'VIJAY BHATI', 'RANI BHATI', '0000-00-00', 'A-BLOCK 249 SAJJAN NAGAR', '2339', 0, 10, 1, '', '', '', '0000-00-00', 0),
(116, 'MANISHA  RAJPUT', 'KHUMAN SINGH RAJPUT', 'GULABI KUNWAR', '0000-00-00', 'AMBA WADI IN FRONT OF CHOUDHARY GUEST HOUSE, RAMPURA', '3511', 0, 10, 1, '', '', '', '0000-00-00', 0),
(117, 'MANVEER SINGH CHOUHAN', 'GOPAL SINGH CHOUHAN', 'PUSHPA KUNWAR', '0000-00-00', 'LAXMAN SINGH KARNOT, HOUSE NO.232 HARSH NAGAR SISARMA ROAD UDAIPUR.', '3374', 0, 10, 1, '', '', '', '0000-00-00', 0),
(118, 'MUSKAN  TIWARI', 'MANOJ TIWARI', 'KIRAN TIWARI', '0000-00-00', 'H.NO-61, DUDHIYA GANESH JI', '2333', 0, 10, 1, '', '', '', '0000-00-00', 0),
(119, 'PAYAL  TANWAR', 'MUKESH TANWAR', 'KIRAN TANWAR', '0000-00-00', 'MALLA TALAI', '2396', 0, 10, 1, '', '', '', '0000-00-00', 0),
(120, 'SANDHYA  SHARMA', 'RAMESH SHARMA', 'SAVITA SHARMA', '0000-00-00', 'NEAR ROYAL GARDEN RAMPURA ROAD', '2555', 0, 10, 1, '', '', '', '0000-00-00', 0),
(121, 'SHILPI  PATRA', 'PRAVAS PATRA', 'KAKULI PATRA', '0000-00-00', '45/142, KOL POLE BARA BAZAR', '2766', 0, 10, 1, '', '', '', '0000-00-00', 0),
(122, 'TABREJ  ALAM', 'AMANULLAH ANSARI', 'KITABUNISSA ANSARI', '0000-00-00', 'EKLAVYA COLONEY NEAR GOV. SCHOOL', '3518', 0, 10, 1, '', '', '', '0000-00-00', 0),
(123, 'YAGYARAJ SINGH KACHCHAWA', 'GIRIRAJ SINGH', 'HEMLATA', '0000-00-00', 'H.NO-6, NAGAR PARISHAD COLONY BHRAMPOLE', '2347', 0, 10, 1, '', '', '', '0000-00-00', 0),
(124, 'AARCHI  SHARMA', 'RAJESH SHARMA', 'DURGA SHARMA', '0000-00-00', '98, HAMIR GARH HOUSE BHATIYANI CHOHTTA', '2787', 0, 11, 1, '', '', '', '0000-00-00', 0),
(125, 'ANUSHK  NAGDA', 'DULHESHANKER NAGDA', 'HEMLATA NAGDA', '0000-00-00', '24-VILLAGAE SISARMA', '2367', 0, 11, 1, '', '', '', '0000-00-00', 0),
(126, 'DEEPAK  PALIWAL', 'SANJAY PALIWAL', 'KANTA PALIWAL', '0000-00-00', '21, NAGAR PRISHAD COLONY', '1636', 0, 11, 1, '', '', '', '0000-00-00', 0),
(127, 'DISHANT  BHATT', 'HARI SHANKAR BHATT', 'HEMLATA BHATT', '0000-00-00', '248 A-BLOCK SAJJAN NAGAR', '2165', 0, 11, 1, '', '', '', '0000-00-00', 0),
(128, 'DIVYANSHIKA  RATHORE', 'KAMAL SINGH RATHORE', 'CHANDA RATHORE', '0000-00-00', 'BAGOR KA NOHRA', '1698', 0, 11, 1, '', '', '', '0000-00-00', 0),
(129, 'FAJILA RIZVI  ', 'FARUKH MOHAMMED', 'SHABANA ANJUM', '0000-00-00', 'OPP MASJID 80 FIT ROAD', '3781', 0, 11, 1, '', '', '', '0000-00-00', 0),
(130, 'KRITIKA  SHARMA', 'SATYANARAYAN SHARMA', 'KAVITA SHARMA', '0000-00-00', '67, SUTHARON KI GALI AASHAPAL KI GALI', '1989', 0, 11, 1, '', '', '', '0000-00-00', 0),
(131, 'SANA  KHAN', 'SHAEED KHAN', 'REHANA KHAN', '0000-00-00', 'SAJJAN NAGAR 782', '2789', 0, 11, 1, '', '', '', '0000-00-00', 0),
(132, 'SNEHA  RATHORE', 'PRAMOD SINGH RATHORE', 'SWATI RATHORE', '0000-00-00', '12, JAGNNATH MARG, INSIDE CHANDPOLE', '2152', 0, 11, 1, '', '', '', '0000-00-00', 0),
(133, 'AAKIB KHAN PATHAN', 'FIROZ KHAN PATHAN', 'FARJANA KHAN PATHAN', '0000-00-00', '110, AMBAVGHAR KACHCHI BASTI UDAIPUR', '1704', 0, 12, 1, '', '', '', '0000-00-00', 0),
(134, 'ALMAS  SHEIKH', 'MOHD ZAKIR SHEIKH', 'SULTANA SHEIKH', '0000-00-00', '201, KOMI EKTA NAGAR,MALLA TALAI.', '2251', 0, 12, 1, '', '', '', '0000-00-00', 0),
(135, 'DIGVIJAY SINGH GOUD', 'SAJJAN SINGH GOUD', 'HEMA', '0000-00-00', 'VILLAGE NAI', '2273', 0, 12, 1, '', '', '', '0000-00-00', 0),
(136, 'DIGVIJAY SINGH KARNOT', 'JASWANT SINGH KARNOT', 'NIRU KUNWAR', '0000-00-00', '232, HARSH NAGAR SISARMA ROAD', '1719', 0, 12, 1, '', '', '', '0000-00-00', 0),
(137, 'HARSHIT  AMETA', 'CHITRANJAN AMETA', 'YASHODA AMETA', '0000-00-00', '361, EKLAVYA COLONY SAJJAN NAGAR MALLA TALAI', '1657', 0, 12, 1, '', '', '', '0000-00-00', 0),
(138, 'JAYESH  JOSHI', 'BHARAT JOSHI', 'REKHA JOSHI', '0000-00-00', 'C-3 HARIDAS JI KI MAGRI', '1650', 0, 12, 1, '', '', '', '0000-00-00', 0),
(139, 'KAJAL SOLANKI  ', 'MOHAN LAL SOLANKI', 'SANGEETA SOLANKI', '0000-00-00', 'LAXMI KIRANA STORE NEAR RAMPURA CHOURAHA', '3776', 0, 12, 1, '', '', '', '0000-00-00', 0),
(140, 'KUKSHI  NAGDA', 'DINESH NAGDA', 'VANDANA NAGDA', '0000-00-00', 'GANDHI NAGAR O.T.C. B- BLOCK MALLA TALAI', '1632', 0, 12, 1, '', '', '', '0000-00-00', 0),
(141, 'KUNAL  JOSHI', 'DHARMENDRA JOSHI', 'POOJA JOSHI', '0000-00-00', 'AMAR NAGAR B BLOCK DUDHIYA GANESH JI MALLA TALAI', '3367', 0, 12, 1, '', '', '', '0000-00-00', 0),
(142, 'MEHNAZ  KHAN', 'MUMTAZ KHAN', 'SHAKIRA KHAN', '0000-00-00', 'L-1 GANDHI NAGAR MULLA TALAI', '3668', 0, 12, 1, '', '', '', '0000-00-00', 0),
(143, 'REENA  NAGDA', 'KAMAL NAGDA', 'LEELAVATI NAGDA', '0000-00-00', '3636 HARIHAR COLONY HARSH NAGAR SISARMA ROAD', '3015', 0, 12, 1, '', '', '', '0000-00-00', 0),
(144, 'TAHIR KHAN  ', 'YASIN KHAN', 'SHABANAM KHAN', '0000-00-00', '58 MAHAWAT WADI BADE PUROHIT JI KA KHURRA GHANTAGHAR', '3780', 0, 12, 1, '', '', '', '0000-00-00', 0),
(145, 'TARA  RAJPUT', 'KHUMAN SINGH RAJPUT', 'GULABI KUNWAR', '0000-00-00', 'AMBA WADI, OPP CHOUDHARY PAYING GUEST HOUSE, RAMPURA', '3510', 0, 12, 1, '', '', '', '0000-00-00', 0),
(146, 'AASHISH  CHOUHAN', 'RANVEER CHOUHAN', 'RADHA CHOUHAN', '0000-00-00', 'YADAV COLONY, AMBAMATA', '2043', 0, 13, 1, '', '', '', '0000-00-00', 0),
(147, 'AKSHAT  SHARMA', 'SUNIL SHARMA', 'MADUKATA SHARMA', '0000-00-00', '26, CHOTI BHARMPURI GULAB BAG ROAD.', '1749/A', 0, 13, 1, '', '', '', '0000-00-00', 0),
(148, 'ALISHA  KHAN', 'HASIBUDDIN KHAN', 'SHAKIRA KHAN', '0000-00-00', '13 OUT SIDE HATIPOLE', '1603', 0, 13, 1, '', '', '', '0000-00-00', 0),
(149, 'AMAN  ANGEL', 'BABAR MIRZA', 'SUBHASHINI MATTHEW', '0000-00-00', '23, AMBAWADI RAMPURA', '3507', 0, 13, 1, '', '', '', '0000-00-00', 0),
(150, 'HARSH BHARTI  GOSWAMI', 'GAJENDRA GOSWAMI', 'ASHA GOSWAMI', '0000-00-00', '20,A,RATA KHET 80 FEET ROAD', '1518', 0, 13, 1, '', '', '', '0000-00-00', 0),
(151, 'KEJAR  KHAN', 'MISAL KHAN', 'ALAM ARA', '0000-00-00', '308 FARUKH A AZAM COLONY', '1582', 0, 13, 1, '', '', '', '0000-00-00', 0),
(152, 'LAKSHIT  SANADHAYA', 'MUKESH SANADHAYA', 'TARUNA SANADHAYA', '0000-00-00', '38, CHOTI BHRAMPURI', '1748/A', 0, 13, 1, '', '', '', '0000-00-00', 0),
(153, 'MOHAMMED JISHAN  SHEIKH', 'LATE SHEIKH DIN MOHAMMED', 'RANU KHAN', '0000-00-00', '778 KOMI EKTA NAGAR', '1618', 0, 13, 1, '', '', '', '0000-00-00', 0),
(154, 'SHIFA  SHAFAT', 'SHAFAT MOHAMMED SHEIKH', 'SHADAB SHEIKH', '0000-00-00', '11, RATA KHET, SAJJAN NAGAR B-BLOCK', '3499', 0, 13, 1, '', '', '', '0000-00-00', 0),
(155, 'VAIBHAV  CHOUDHARY', 'BHUPENDRA CHOUDHARY', 'RANU CHOUDHARY', '0000-00-00', '18 MALTAB STREET NEAR SHRINATH', '3233', 0, 13, 1, '', '', '', '0000-00-00', 0),
(156, 'VISHAKHA  PALIWAL', 'MADAN PALIWAL', 'MAMTA PALIWAL', '0000-00-00', '21, NEAR PARISHAD  COLONY', '1756/B', 0, 13, 1, '', '', '', '0000-00-00', 0),
(157, 'ALHAZ  ', 'MOHAMMED SHOAIB', 'RUBY SHOAIB', '0000-00-00', '528/6 OTC CHIPPA COLONEY', '3665', 0, 5, 2, '', '', '', '0000-00-00', 0),
(158, 'ALISHA  KHAN', 'SHAHEED HUSSAIN', 'SHAHEEN KHAN', '0000-00-00', '697, GARIB NAWAZ COLONEY MALLA TALAI', '3429', 0, 5, 2, '', '', '', '0000-00-00', 0),
(159, 'ANKIT KUMAR KANOJIA', 'AMARJEET KANOJIA', 'HEMA', '0000-00-00', '487, EKLAVYA COLONY NEAR MAHA DEV TEMPLE', '3339', 0, 5, 2, '', '', '', '0000-00-00', 0),
(160, 'AYAAN  KHAN', 'IMRAN KHAN', 'SHAIN BANO', '0000-00-00', '1081,GANDHI NAGAR MASTAN BABA ROAD MALLA TALAI', '3425', 0, 5, 2, '', '', '', '0000-00-00', 0),
(161, 'MAHIN NAAZ SHEIKH', 'MEHTAAB HUSSAIN SHEIKH', 'NAUSHEEN BANO', '0000-00-00', '9 B BLOCK 80 FEET ROAD MULLA TALAI', '3336', 0, 5, 2, '', '', '', '0000-00-00', 0),
(162, 'MOHAMMED ALI  KHAN', 'MOHAMMED IRFAN KHAN', 'SAHIMA KHAN', '0000-00-00', 'GALI NO 2 FARUQ E AZAM COLONEY', '3672', 0, 5, 2, '', '', '', '0000-00-00', 0),
(163, 'SADAF KHAN  ', 'SARWAR KHAN', 'ZEENAT ARA', '0000-00-00', '226 EKLAVYA COLONY NEAR LAKE', '3778', 0, 5, 2, '', '', '', '0000-00-00', 0),
(164, 'DHANI KUNWAR RATHORE', 'RAGHUVEER SINGH RATHORE', 'SANJU KANWAR', '0000-00-00', 'H.NO.80 AMAR NAGAR, NEAR JAGRITI SCHOOL', '3146', 0, 6, 2, '', '', '', '0000-00-00', 0),
(165, 'GULAM E  HUSSAIN', 'ASHFAQ KHAN', 'SIDDHIKA RANI', '0000-00-00', '', '3300', 0, 6, 2, '', '', '', '0000-00-00', 0),
(166, 'MAHI  SHARMA', 'ANIL SHARMA', 'ANJU SHARMA', '0000-00-00', 'SHREE GURU DEV NETRALAY OPP DUDHIYA GANESH JI SAJJAN GARH ROAD', '3639', 0, 6, 2, '', '', '', '0000-00-00', 0),
(167, 'MANSI KUMARI SAHANI', 'PRAHLAD SAHANI', 'REETA', '0000-00-00', '9, HARIDAS JI KI MAGRI, MALLA TALAI', '3360', 0, 6, 2, '', '', '', '0000-00-00', 0),
(168, 'UZMA  BANO', 'SHEHZAD HUSSAIN', 'REHANA BANU', '0000-00-00', 'H.NO-409 GARIB NAWAZ COLONY,MALLA TALAI', '3086', 0, 6, 2, '', '', '', '0000-00-00', 0),
(169, 'VEER  SHARMA', 'ROMIT SHARMA', 'SUMAN SHARMA', '0000-00-00', 'H.NO.2792, AMAR NAGAR SAJJAN GARGH ROAD', '3393', 0, 6, 2, '', '', '', '0000-00-00', 0),
(170, 'ZEESHAN  KHAN', 'ZAVED KHAN', 'NAZNIN KHAN', '0000-00-00', '107, RATA KHET RIM JIM VATIKA', '3140', 0, 6, 2, '', '', '', '0000-00-00', 0),
(171, 'AASIMA  BANO', 'SAJID MOHAMMED', 'AAMIN BANO', '0000-00-00', '891 NEAR MASTAN BABA', '3774', 0, 7, 2, '', '', '', '0000-00-00', 0),
(172, 'ARSHI  KHAN', 'KHALIL KHAN', 'FARZANA', '0000-00-00', '501 KELWA HOUSE BICHHU GHATI', '3753', 0, 7, 2, '', '', '', '0000-00-00', 0),
(173, 'BHAKTI  SARWAR', 'PANKAJ SARWAR', 'JYOTSANA SARWAR', '0000-00-00', 'C-4,C-BLOCK BHILURANA COLONY POLICE QUARTER', '3175', 0, 7, 2, '', '', '', '0000-00-00', 0),
(174, 'CHESHTA  SHARMA', 'HARISH SHARMA', 'KANCHAN SHARMA', '0000-00-00', '31,AZAD NAGAR 80 FEET ROAD', '3073', 0, 7, 2, '', '', '', '0000-00-00', 0),
(175, 'KUNAL  AMETA', 'MANOJ AMETA', 'LALITA AMETA', '0000-00-00', '38-B, AZAD NAGAR GAJ SINGH JI KI WADI', '2909', 0, 7, 2, '', '', '', '0000-00-00', 0),
(176, 'MAHI SINGH  RANAWAT', 'DILIP SINGH RANAWAT', 'SURBHI RANAWAT', '0000-00-00', 'HARIDAS JI KI MAGRI MALLA TALAI UDAIPUR', '3161', 0, 7, 2, '', '', '', '0000-00-00', 0),
(177, 'MOHAMMED ALFEZ  KHAN', 'MOHAMMED ZAFAR KHAN', 'AFROZ KHAN', '0000-00-00', '54,JAT WADI', '3005', 0, 7, 2, '', '', '', '0000-00-00', 0),
(178, 'MOHAMMED HASNAIN  SHEIKH', 'MOHD PARVEZ', 'SHEHZAD BANU', '0000-00-00', '80 FEET ROAD SAJJANNAGAR', '2955', 0, 7, 2, '', '', '', '0000-00-00', 0),
(179, 'MOHAMMED TANZIL  SHEIKH', 'MOHAMMED ZAKIR SHEIKH', 'SULTANA SHEIKH', '0000-00-00', '2,A KOMI EKTA NAGAR MALLA TALAI', '3183', 0, 7, 2, '', '', '', '0000-00-00', 0),
(180, 'RUDRAKSH  PUJARI', 'HEMANT PUJARI', 'SANTOSH PUJARI', '0000-00-00', '48,AMBA WADI CHOUDHARY GUEST HOUSE', '3177', 0, 7, 2, '', '', '', '0000-00-00', 0),
(181, 'SAKSHI  KARNOT', 'JASWANT SINGH KARNOT', 'NEERU KUNWAR', '0000-00-00', '232, HARSH NAGAR RAMPURA ROAD', '2962', 0, 7, 2, '', '', '', '0000-00-00', 0),
(182, 'SHAIVAL  PURBIA', 'LOKESH PURBIA', 'NEELAM PURBIA', '0000-00-00', '13,OTC B-BLOCK PURBIA COLONY', '2971', 0, 7, 2, '', '', '', '0000-00-00', 0),
(183, 'VIHAN  SHARMA', 'VIKAS SHARMA', 'KIRAN SHARMA', '0000-00-00', 'BEHIND PIONEER ACADEMY SR. SEC. SCHOOL/ GAJSINGH  JI KI BARI  SAJJAN NAGAR ROAD', '3433', 0, 7, 2, '', '', '', '0000-00-00', 0),
(184, 'KARANVEER  SINGH', 'BHARAT SINGH', 'USHA SINGH', '0000-00-00', '34,SOLANKIYO KI GHATI NEAR MAHILA MANDAL', '2715', 0, 8, 2, '', '', '', '0000-00-00', 0),
(185, 'KHUSHWANT  PANWAR', 'MANISH PANWAR', 'REENA PANWAR', '0000-00-00', '42 B HARIDAS JI KI MAGRI', '3195', 0, 8, 2, '', '', '', '0000-00-00', 0),
(186, 'MAHESHWAR SINGH RATHORE', 'SURENDRA SINGH RATHORE', 'RAJ KUWAR RATHORE', '0000-00-00', 'H.NO-16 SAKET CHAKRI AMBA COLONY, RAMPURA CHOUHRAYA', '2975', 0, 8, 2, '', '', '', '0000-00-00', 0),
(187, 'MAHI  MENARIA', 'DHANESHWAR MENARIA', 'LALITA MENARIA', '0000-00-00', '127,NAG MARG NAGA NAGRI CHANDPOLE', '3002', 0, 8, 2, '', '', '', '0000-00-00', 0),
(188, 'MANASVI  SHARMA', 'HARISH SHARMA', 'KANCHAN SHARMA', '0000-00-00', '31, AZAD NAGAR, 80 FEET ROAD', '2721', 0, 8, 2, '', '', '', '0000-00-00', 0),
(189, 'MISBA UL HAQ', 'SAJID KHAN', 'SHAHNAZ BANU', '0000-00-00', 'L-93 SAJJAN NAGAR A BLOCK', '3626', 0, 8, 2, '', '', '', '0000-00-00', 0),
(190, 'MOHIT  JOSHI', 'NIRAJ JOSHI', 'RANI JOSHI', '0000-00-00', 'H. NO. 27   AZAD NAGAR 80 FEET ROAD', '3649', 0, 8, 2, '', '', '', '0000-00-00', 0),
(191, 'NEHA  NAGDA', 'KAMAL NAGDA', 'LEELAVATI NAGDA', '0000-00-00', 'VILLAGE   SISARMA', '2943', 0, 8, 2, '', '', '', '0000-00-00', 0),
(192, 'NIDHI  SINGH', 'SATYENDRA SINGH', 'PARWATI SINGH', '0000-00-00', '229 B AMAN NAGAR MULLA TALAI', '3550', 0, 8, 2, '', '', '', '0000-00-00', 0),
(193, 'SAMARTHYA  SISODIYA', 'DINDAYAL SISODIYA', 'JAYA SISODIYA', '0000-00-00', '373, OTC B-BLOCK, AMAR NAGAR SAJJAN GARH ROAD OPP, JAGRITI SCHOOL', '3377', 0, 8, 2, '', '', '', '0000-00-00', 0),
(194, 'SHIROMANI SINGH BHATI', 'CHANDRAVEER SINGH BHATI', 'NEETU BHATI', '0000-00-00', 'BAGOR KA NOHRA, HANUMAN GHAT OUT SIDE CHANDPOLE', '3385', 0, 8, 2, '', '', '', '0000-00-00', 0),
(195, 'VAIBHAV  JOSHI', 'SHANKAR LAL JOSHI', 'SANGEETA JOSHI', '0000-00-00', 'SAJJAN NAGAR KACCHI BASTI', '2877', 0, 8, 2, '', '', '', '0000-00-00', 0),
(196, 'ZENAB AKHTAR  ', 'MOHAMMED SHAKEEL', 'RUKHSANA BANU', '0000-00-00', '100 MASTANPIYA COLONY', '3761', 0, 8, 2, '', '', '', '0000-00-00', 0),
(197, 'ALISHA  KHANAM', 'JAVED KHAN', 'NAZMEEN KHAN', '0000-00-00', '80, FEET ROAD, RATA KHET', '3209', 0, 9, 2, '', '', '', '0000-00-00', 0),
(198, 'ARIBA  HUSSAIN', 'WASIM HUSSAIN', 'SHAHEEN', '0000-00-00', '405, NOORI MANZIL TARUKH-E-AZAM COLONY', '2658', 0, 9, 2, '', '', '', '0000-00-00', 0),
(199, 'ARMAAN  KHAN', 'IMRAN KHAN', 'SHAHEEN BANO', '0000-00-00', '1081, GANDHI NAGAR KACCHIBASTI SAJJAN NAGAR A-BLOCK,UDAIPUR.', '3365', 0, 9, 2, '', '', '', '0000-00-00', 0),
(200, 'FARHAAN  KHAN', 'SALEEM KHAN', 'RANI KHAN', '0000-00-00', '146, MALLA TALAI RAZA COLONY', '2444', 0, 9, 2, '', '', '', '0000-00-00', 0),
(201, 'JAYDEEP  PALIWAL', 'ARVIND PALIWAL', 'YOGITA PALIWAL', '0000-00-00', 'B-116, ASHA DHAM ASHRAM GALI,', '3212', 0, 9, 2, '', '', '', '0000-00-00', 0),
(202, 'KHUSHI SHEIKH  ', 'FIROJ KHAN', 'TAHIRA SHEIKH', '0000-00-00', '224 RAZA COLONY', '3766', 0, 9, 2, '', '', '', '0000-00-00', 0),
(203, 'LAKSHYA  NYATI', 'VIKAS NYATI', 'SUNITA NYATI', '0000-00-00', '19 - F HARIDAS JI KI MAGRI', '3548', 0, 9, 2, '', '', '', '0000-00-00', 0),
(204, 'MOHAMMED NAKKI  ', 'MOHAMMED IDRIS', 'NILOFAR', '0000-00-00', '245, MALLA TALAI MANSURI PARK', '2750', 0, 9, 2, '', '', '', '0000-00-00', 0),
(205, 'MUBASH SHERA  RAZA', 'SHAHID RAZA', 'TANVEER RAZA', '0000-00-00', '25, CHURI GHARON KA MOHALLA MUKHARJEE CHOCK', '2748', 0, 9, 2, '', '', '', '0000-00-00', 0),
(206, 'NETRA  GODAKE', 'JEEVAN GODAKE', 'PRATIBHA GODAKE', '0000-00-00', '15, WELA WATO KI PALA, CLOCK TOWAR', '3205', 0, 9, 2, '', '', '', '0000-00-00', 0),
(207, 'NIVISHA  PALIWAL', 'LAXMI NARAYAN PALIWAL', 'PINKI PALIWAL', '0000-00-00', '5-45 GANDHI NAGAR', '2663', 0, 9, 2, '', '', '', '0000-00-00', 0),
(208, 'PRAKHAR  NAGDA', 'RAJ KUMAR NAGDA', 'GAYATRI NAGDA', '0000-00-00', 'SISARMA', '2675', 0, 9, 2, '', '', '', '0000-00-00', 0),
(209, 'PRINCE  SAHANI', 'UMA SHANKAR SAHANI', 'VIBHA SAHANI', '0000-00-00', 'K-10 HARI DAS JI KI MAGRI', '2760', 0, 9, 2, '', '', '', '0000-00-00', 0),
(210, 'REHAN  KHAN', 'RAIS KHAN', 'SHABANA KHAN', '0000-00-00', '146, RAZA COLONY, MALLA TALAI', '2469', 0, 9, 2, '', '', '', '0000-00-00', 0),
(211, 'SHAHADAT  HUSSAIN', 'SHARAFAT HUSSAIN', 'SHABINA HUSSAIN', '0000-00-00', '7/1843, NEAR SANJAY GARDEN ROAD, AHMED HUSSAIN COLONY', '2667', 0, 9, 2, '', '', '', '0000-00-00', 0),
(212, 'VARUN SOLANKI  ', 'MOHAN LAL SOLANKI', 'SANGEETA SOLANKI', '0000-00-00', 'LAXMI KIRANA STORE NEAR RAMPURA CHOURAHA', '3777', 0, 9, 2, '', '', '', '0000-00-00', 0),
(213, 'AHMED  RAZA', 'MOHAMMED ALI', 'REHANA BANO', '0000-00-00', '294, O.T.C B - BLOCK, FAROOK AZAM COLONY, MALLA TALAI', '3465', 0, 4, 2, '', '', '', '0000-00-00', 0),
(214, 'ALSHIFA  SHEIKH', 'ABDUL AZIZ', 'NAZRA BANO', '0000-00-00', 'DR RAM MANOHAR LOHIYA NAGAR SAJJAN NAGAR', '3582', 0, 4, 2, '', '', '', '0000-00-00', 0),
(215, 'DRONA  SHARMA', 'VIKAS SHARMA', 'KIRAN SHARMA', '0000-00-00', 'BEHIND PIONEER SCHOOL, SAJJANGHARH ROAD, MALLA TALAI', '3463', 0, 4, 2, '', '', '', '0000-00-00', 0),
(216, 'HUMERA NAAZ AZHARI', 'MOHSIN HUSSAIN AZHARI', 'CHAMAN ARA AZHARI', '0000-00-00', '565 A BLOCK SAJJAN NAGAR NEAR WATER TANK', '3604', 0, 4, 2, '', '', '', '0000-00-00', 0),
(217, 'KALPESH  PUROHIT', 'MADHU SUDAN PUROHIT', 'PREM KANTA', '0000-00-00', '31 DUDHUYA GANESH JI', '3493', 0, 4, 2, '', '', '', '0000-00-00', 0),
(218, 'MARIYAM  SHEIKH', 'SAJID MOHD', 'REHANA BANO', '0000-00-00', '432 GARIB NAWAZ COLONEY MULLA TALAI', '3477', 0, 4, 2, '', '', '', '0000-00-00', 0),
(219, 'MOHAMMED ALFEZ RAZA', 'MOHAMMED TASKIN', 'ZEENAT', '0000-00-00', '01 KELWA HOUSE BICCHU GHATI', '3471', 0, 4, 2, '', '', '', '0000-00-00', 0),
(220, 'MOHAMMED ANUS  RAZA', 'JAHIR BAKSH', 'SHABANA BANO', '0000-00-00', '203 KOMI EKTA NAGAR MULLA TALAI', '3484', 0, 4, 2, '', '', '', '0000-00-00', 0),
(221, 'MOHAMMED AYAZ  ', 'MOHAMMED SHAHRUKH', 'KARISHMA BANO', '0000-00-00', 'OAD BASTI INFRONT OF MASTAN BABA DARGAH', '3667', 0, 4, 2, '', '', '', '0000-00-00', 0),
(222, 'MOHAMMED DARAIN KHAN', 'MOHAMMED KALEEM', 'SABIRA BANO', '0000-00-00', '198 OUTSIDE CHAND POLE BHINDER KI HAWELI', '3653', 0, 4, 2, '', '', '', '0000-00-00', 0),
(223, 'NAYAN  GARG', 'NARENDRA GARG', 'NEELAM GARG', '0000-00-00', '102 AYURVAIDIK HOSPITAL ROAD NAI', '3660', 0, 4, 2, '', '', '', '0000-00-00', 0),
(224, 'NITYA  JAIN', 'RAJESH JAIN', 'NEHA JAIN', '0000-00-00', '129, AMBA WADI IN FRONT OF CHODHARY PAYING GUEST HOUSE UBESHWAR JI ROAD RAMPURA', '3467', 0, 4, 2, '', '', '', '0000-00-00', 0),
(225, 'SANCHI KUNWAR  CHOUHAN', 'GAJENDRA SINGH CHOUHAN', 'KALPANA CHOUHAN', '0000-00-00', 'ASHAPURA HOUSE KODIYAT ROAD RAMPURA', '3735', 0, 4, 2, '', '', '', '0000-00-00', 0),
(226, 'SOHAIL SHEIKH  ', 'FIROJ KHAN', 'TAHIRA BANO', '0000-00-00', '224 RAZA COLONY', '3666', 0, 4, 2, '', '', '', '0000-00-00', 0),
(227, 'ARHAN KHAN  ', 'MOHAMMED SHAKIL KHAN PATHAN', 'NAZNEEN KHAN', '0000-00-00', '31 NAG MARG BHINDAR KI HAWELI', '3767', 0, 3, 2, '', '', '', '0000-00-00', 0),
(228, 'AZLAAN KHAN  ', 'SALIM KHAN', 'NAHID KHAN', '0000-00-00', '146 RAZA COLONY MALLAH TALAI', '3716', 0, 3, 2, '', '', '', '0000-00-00', 0),
(229, 'EHSAN HASHMI  ', 'KAMRAAN AZEEM', 'SHAZIYA AZEEM', '0000-00-00', '', '3764', 0, 3, 2, '', '', '', '0000-00-00', 0),
(230, 'JAYWARDHAN  PANWAR', 'MANISH PANWAR', 'REENA PANWAR', '0000-00-00', 'B 42 HARIDAS JI KI MAGRI', '3768', 0, 3, 2, '', '', '', '0000-00-00', 0),
(231, 'KASHIF HUSSAIN  ', 'HAMID ASHRAF', 'SHAHAR BANU', '0000-00-00', 'A- 10 KOMI EKTA NAGAR', '3709', 0, 3, 2, '', '', '', '0000-00-00', 0),
(232, 'LOVEDEEP  SINGH', 'PARVINDER SINGH', 'GURMEET KOUR', '0000-00-00', '51 AMBAWADI OPP CHOUDHARY GUEST HOUSE RAMPURA', '3595', 0, 3, 2, '', '', '', '0000-00-00', 0),
(233, 'MINHAZ KHAN  ', 'MOHAMMED ZAHID', 'SHABNAM BANO', '0000-00-00', 'S-134CHHIPA COLONY BEHIND CHARAK HOSTEL', '3720', 0, 3, 2, '', '', '', '0000-00-00', 0),
(234, 'MOHAMMED TURFAL RAZA  ', 'SALEEM KHAN', 'HEENA BANO', '0000-00-00', '152 AMBAVGARH KACHHI BASTI', '3727', 0, 3, 2, '', '', '', '0000-00-00', 0),
(235, 'PRITIKA KUNWAR CHOUHAN', 'UDAI SINGH CHOUHAN', 'VANDANA KUNWAR CHOUHAN', '0000-00-00', 'S-31 GANDHI NAGAR MULLA TALAI', '3583', 0, 3, 2, '', '', '', '0000-00-00', 0),
(236, 'SHELVI  PATEL', 'VINOD PATEL', 'MEENA PATEL', '0000-00-00', 'B-65 AZAD NAGAR NEAR PIONEER SCHOOL', '3609', 0, 3, 2, '', '', '', '0000-00-00', 0),
(237, 'SWYAM JOSHI  ', 'KISHAN JOSHI', 'NEHA JOSHI', '0000-00-00', 'CHAMPA COLONY', '3717', 0, 3, 2, '', '', '', '0000-00-00', 0),
(238, 'TANVI  MEHTA', 'KAMLESH MEHTA', 'SUNITA MEHTA', '0000-00-00', 'K-2 A BLOCK SAJJAN NAGAR NEAR HANUMAN TEMPLE', '3579', 0, 3, 2, '', '', '', '0000-00-00', 0),
(239, 'TEJASW  SHARMA', 'ROMIT SHARMA', 'SUMAN SHARMA', '0000-00-00', '2792 AMAR NAGAR B BLOCK SAJJAN NAGAR', '3575', 0, 3, 2, '', '', '', '0000-00-00', 0),
(240, 'VISHWARAJ SINGH  RATHORE', 'PURAN SINGH RATHORE', 'MEENA KUNWAR', '0000-00-00', 'J- 5 HARIDAS JI KI MAGRI', '3731', 0, 3, 2, '', '', '', '0000-00-00', 0),
(241, 'DAZZLE  NAGDA', 'LILADHAR NAGDA', 'KRISHNA NAGDA', '0000-00-00', 'VILLAGE SISARMA', '2498', 0, 10, 2, '', '', '', '0000-00-00', 0),
(242, 'HITESH  AMETA', 'CHITRANJAN AMETA', 'YASHODA AMETA', '0000-00-00', '361, EKLAVYA COLONY', '2389', 0, 10, 2, '', '', '', '0000-00-00', 0),
(243, 'MOHAMMED AYAAN  KHAN', 'AKHTAR KHAN', 'SHANAZ BANO', '0000-00-00', '312, FARUQUE AZAM COLONY, MALLA TALAI', '3505', 0, 10, 2, '', '', '', '0000-00-00', 0),
(244, 'NEHA  BHARTI', 'NAND LAL BHARTI', 'REETA BHARTI', '0000-00-00', 'B-4 MALLA TALAI, HARIDAS JI KI MAGRI', '2321', 0, 10, 2, '', '', '', '0000-00-00', 0),
(245, 'NIKHIL  BHARTI', 'NAND LAL BHARTI', 'REETA BHARTI', '0000-00-00', 'B-4, HARIDAS JI KI MAGRI, MALLA TALAI', '2322', 0, 10, 2, '', '', '', '0000-00-00', 0),
(246, 'NILAKSH  UPADHYAY', 'KOUSHAL UPADHYAY', 'GEETA UPADHYAY', '0000-00-00', 'UPADYAY HOUSE BUJADA', '3637', 0, 10, 2, '', '', '', '0000-00-00', 0),
(247, 'PRASHANT  JOSHI', 'RADHESHYAM JOSHI', 'MAMTA JOSHI', '0000-00-00', '15, AMAR NAGAR', '1985', 0, 10, 2, '', '', '', '0000-00-00', 0),
(248, 'RAJNISH KUMAR SAHANI', 'JAY JANAM SAHANI', 'RADHA SAHANI', '0000-00-00', 'H.N. 120 HARIDAS JI KI MAGRI', '2295', 0, 10, 2, '', '', '', '0000-00-00', 0),
(249, 'SANIYA  KHAN', 'MUMTAZ KHAN', 'SHAKIRA KHAN', '0000-00-00', 'L-1 GANDHI NAGAR MULLA TALI', '3669', 0, 10, 2, '', '', '', '0000-00-00', 0),
(250, 'YASH  VED', 'KISHAN VED', 'MANJU VED', '0000-00-00', 'SISARMA', '2334', 0, 10, 2, '', '', '', '0000-00-00', 0),
(251, 'ANISHK  SHARMA', 'RAJEEV SHARMA', 'RANU SHARMA', '0000-00-00', '7,RANG NIWAS PALACE ROAD', '2780', 0, 11, 2, '', '', '', '0000-00-00', 0),
(252, 'DIVYA  PALIWAL', 'SHYAM SUNDAR PALIWAL', 'BINDU PALIWAL', '0000-00-00', '147 NAG MARG OUT SIDE CHANDPOLE', '3640', 0, 11, 2, '', '', '', '0000-00-00', 0),
(253, 'JAY PRAKASH JOSHI', 'BRIJ MOHAN JOSHI', 'MADHU JOSHI', '0000-00-00', '150, OTC, B-BLOCK, AMAR NAGAR', '2024', 0, 11, 2, '', '', '', '0000-00-00', 0),
(254, 'KAJAL  JOSHI', 'NIRAJ JOSHI', 'RANI JOSHI', '0000-00-00', 'H. NO. 27  AZAD NAGAR 80 FEET ROAD', '3648', 0, 11, 2, '', '', '', '0000-00-00', 0),
(255, 'MAHIPAL SINGH SHAKTAWAT', 'SURENDRA SINGH', 'MAINA KUNWAR', '0000-00-00', 'J-16 HARI DAS JI KI MAGARI', '3542', 0, 11, 2, '', '', '', '0000-00-00', 0),
(256, 'NAMAN  SHARMA', 'OM PRAKASH SHARMA', 'SAPNA SHARMA', '0000-00-00', '168, RAO JI KA HATA, GOPAL BHAWAN NEAR', '2534', 0, 11, 2, '', '', '', '0000-00-00', 0),
(257, 'NIKHIL  BHOI', 'LOKESH BHOI', 'PREM BHOI', '0000-00-00', 'SUKH DEVI NAGAR BEDLA TALAI NEAR SHIV MANDIR', '3436', 0, 11, 2, '', '', '', '0000-00-00', 0),
(258, 'NIKITA  GOUTAM', 'CHOTE LAL GOUTAM', 'INDU DEVI GOUTAM', '0000-00-00', '119-B AMABA WARI RAMPURA CHORAHA', '3633', 0, 11, 2, '', '', '', '0000-00-00', 0),
(259, 'OM  PALIWAL', 'MADAN PALIWAL', 'MAMTA PALIWAL', '0000-00-00', '27, NAGAR PARISHAD COLONY O/S BRAHMPOLE', '1987', 0, 11, 2, '', '', '', '0000-00-00', 0),
(260, 'SEJAL  JOSHI', 'BRIJ MOHAN JOSHI', 'MADHU JOSHI', '0000-00-00', '105, AMAR NAGAR, OTC BLOCK', '2166', 0, 11, 2, '', '', '', '0000-00-00', 0),
(261, 'SURYABHAN SINGH RATHORE', 'HOSHIYAR SINGH RATHORE', 'ANURADHA RATHORE', '0000-00-00', '69, CHINTAMANI MARG, RAO JI KA HATA', '1993', 0, 11, 2, '', '', '', '0000-00-00', 0),
(262, 'YASH  CHOUDHARY', 'DILIP CHOUDHARY', 'SAROJ CHOUDHARY', '0000-00-00', 'VILLAGE NAI', '3223', 0, 11, 2, '', '', '', '0000-00-00', 0),
(263, 'JHANVI  NAGDA', 'KAILASH NAGDA', 'SANGEETA NAGDA', '0000-00-00', '81, RATA KHET, NEAR BAL SHIKSHA SADAN', '1986', 0, 12, 2, '', '', '', '0000-00-00', 0),
(264, 'MAHIMA  BHATI', 'MITTHA LAL BHATI', 'CHANDAN BALA', '0000-00-00', '14, HARIDAS JI KI MAGRI', '2541', 0, 12, 2, '', '', '', '0000-00-00', 0),
(265, 'MOHAMMED DANISH  ', 'MAQBUL HUSSAIN', 'REHANA BEGUM', '0000-00-00', 'RAZA COLONY, MASJID KE PASS MALLA TALAI', '3169', 0, 12, 2, '', '', '', '0000-00-00', 0),
(266, 'MOHAMMED SHOAIB  ', 'ZAKIR HUSSAIN', 'BISMILLAH BANO', '0000-00-00', '251 NEAR MANSOORI PARK MULLA TALAI', '3529', 0, 12, 2, '', '', '', '0000-00-00', 0),
(267, 'MONIKA  JOSHI', 'SHANKAR LAL JOSHI', 'SANGEETA JOSHI', '0000-00-00', 'SAJJAN NAGAR KACHCHI BASTI', '1643', 0, 12, 2, '', '', '', '0000-00-00', 0),
(268, 'MUSKAN  SHEIKH', 'SADIK MOHAMMED SHEIKH', 'HEENA SHEIKH', '0000-00-00', '159, A- BLOCK SAJJAN NAGAR', '1730', 0, 12, 2, '', '', '', '0000-00-00', 0),
(269, 'NIKHIL  CHOUHAN', 'SHYAM CHOUHAN', 'SAPNA CHOUHAN', '0000-00-00', '479/33, HATHIPOLE INSIDE SABJI MARKET', '2012', 0, 12, 2, '', '', '', '0000-00-00', 0),
(270, 'NIKITA  SETH', 'SANJAY SETH', 'SANTOSH SETH', '0000-00-00', 'HARIDAS JI KI MAGRI', '1710', 0, 12, 2, '', '', '', '0000-00-00', 0),
(271, 'PREM KUMAR DHANDRA', 'VIJAY KUMAR DHANDRA', 'TEENA DHANDRA', '0000-00-00', '36, GANDHI NAGAR , MALLA TALAI  BEHIND WISDOM HOME SCHOOL', '3387', 0, 12, 2, '', '', '', '0000-00-00', 0),
(272, 'REENA KUNWAR JHALA', 'BHAGWAT SINGH JHALA', 'RATAN KUNWAR', '0000-00-00', '81, RATA KHET, BAL SIKSHA SADAN SCHOOL KE SAMNE', '2527', 0, 12, 2, '', '', '', '0000-00-00', 0),
(273, 'ROSHAN  SHARMA', 'RAMESH SHARMA', 'SAVITA SHARMA', '0000-00-00', 'ROYAL GARDEN RAMPURA ROAD', '2554', 0, 12, 2, '', '', '', '0000-00-00', 0),
(274, 'SANJANA  CHOUBISA', 'RADHESHYAM CHOUBISA', 'PUSHPA CHOUBISA', '0000-00-00', 'H.NO 1 HARSH NAGAR', '1692', 0, 12, 2, '', '', '', '0000-00-00', 0),
(275, 'ARSHAD MOHAMMED  ', 'YUNUS MOHAMMED', 'ANJUM ARA', '0000-00-00', '31, LAL MAGRI MASTAN BABA, MALLA TALAI', '3234/13', 0, 13, 1, '', '', '', '0000-00-00', 0),
(276, 'CHAHAT  PALIWAL', 'RAKESH PALIWAL', 'DHEERAJ PALIWAL', '0000-00-00', 'F-3 HARIDAS JI KI MAGRI', '1769/B', 0, 13, 1, '', '', '', '0000-00-00', 0),
(277, 'GAUTAM  JOSHI', 'LOKESH JOSHI', 'MAYA JOSHI', '0000-00-00', '422, TEACHERS COLONY', '1514', 0, 13, 1, '', '', '', '0000-00-00', 0),
(278, 'JAHNAVI  JOSHI', 'TARUN JOSHI', 'USHA JOSHI', '0000-00-00', '5, NAGAR PARISHAD COLONY', '1575', 0, 13, 1, '', '', '', '0000-00-00', 0),
(279, 'JANAVI SANADHAYA ', 'SANJAY SANADHAYA', 'JAISHREE SANADHAYA', '0000-00-00', 'H.NO.-2080, AZAD NAGAR HOUSING SOCIETY SAJJAN GARH ROAD', '1516', 0, 13, 1, '', '', '', '0000-00-00', 0),
(280, 'MOHIB SHABBAR  ', 'SHABBAR AHMED', 'SHABNAM', '0000-00-00', '1, DEWALI NEEMACHI KHEDA C-52A', '2185', 0, 13, 1, '', '', '', '0000-00-00', 0),
(281, 'MOHIT  VYAS', 'PARMESHWAR VYAS', 'YASHODA VYAS', '0000-00-00', 'EC 32 ABLOCK SAJJAN NAGAR MALLA TALAI', '2044', 0, 13, 1, '', '', '', '0000-00-00', 0),
(282, 'NISHCHAY  NAGDA', 'SHANTI LAL NAGDA', 'ANJANA NAGDA', '0000-00-00', 'NEAR CHARBHUJA TEMPLE', '1752/B', 0, 13, 1, '', '', '', '0000-00-00', 0),
(283, 'SANA  KHAN', 'MOHMMED ZAFAR KHAN', 'AFROZ KHAN', '0000-00-00', 'H. NO.-54, JATWADI', '2904', 0, 13, 1, '', '', '', '0000-00-00', 0),
(284, 'SHIFA PARVEEN ', 'MOHD ASHRAF MANSURI', 'BILKIS', '0000-00-00', '222, RAJA COLONY MALLA TALAI, UDAIPUR', '2568', 0, 13, 1, '', '', '', '0000-00-00', 0),
(285, 'TUSHAR  CHOUBISA', 'RADHE SHYAM CHOUBISA', 'PUSHPA CHOUBISA', '0000-00-00', '31-B KANHIYA MARG RAMPURA', '1571', 0, 13, 1, '', '', '', '0000-00-00', 0),
(286, 'VEDIK  MANDAVLIA', 'GOPAL MANDAVLIA', 'INDRA MANDAVLIA', '0000-00-00', 'HARIDAS JI KI MAGRI', '1616', 0, 13, 1, '', '', '', '0000-00-00', 0),
(287, 'YASHVI  JAIN', 'HEMANT JAIN', 'REKHA JAIN', '0000-00-00', '9 B SAJJAN NAGAR 80 FEET ROAD', '1549', 0, 13, 1, '', '', '', '0000-00-00', 0),
(288, 'ANISHA SAHANI  ', 'JAY JANAM SAHNI', 'RADHA SAHANI', '0000-00-00', 'BHILU RANA KACHHI BASTI', '3751', 0, 6, 3, '', '', '', '0000-00-00', 0),
(289, 'ANSH RAJ SINGH RATHORE', 'KULDEEP SINGH  RATHORE', 'ASHA RATHORE', '0000-00-00', 'S-49, GANDHI NAGAR MALLA TALAI  A-BLOCK', '3077', 0, 6, 3, '', '', '', '0000-00-00', 0),
(290, 'BINISH  KHANAM', 'SHAHID KHAN', 'ASHMA KHAN', '0000-00-00', 'H.NO.8 KELWA HOUSE, BICHCHU GHATI', '3155', 0, 6, 3, '', '', '', '0000-00-00', 0),
(291, 'BUSHRA  SHEIKH', 'RAFIQUE SHEIKH', 'RUBINA SHEIKH', '0000-00-00', 'A-4 KOMI EKTA NAGAR OPP.CENTRAL ACDEMY SCHOOL', '3100', 0, 6, 3, '', '', '', '0000-00-00', 0),
(292, 'HASNAIN  ALI', 'MOHAMMED ALIMUDDIN', 'RAJIYA ALI', '0000-00-00', '144, AHMED HUSSAIN COLONY, BEHIND MASTANA BABA KI DARGAH NEAR POLICE QUARTER  ,MALLA TALAI', '3389', 0, 6, 3, '', '', '', '0000-00-00', 0),
(293, 'HUMERA  HUSSAIN', 'WASIM HUSSAIN', 'SHAHEEN', '0000-00-00', '450 FARUKH-E-AZAM COLONY MALLA TALAI', '3085', 0, 6, 3, '', '', '', '0000-00-00', 0),
(294, 'JENIFER  KHAN', 'MUZAFFAR KHAN', 'SHABANA KHAN', '0000-00-00', '795 KOMI EKTA NAGAR WARD NO-3, MALLA TALAI', '3101', 0, 6, 3, '', '', '', '0000-00-00', 0),
(295, 'JINAL  MEHTA', 'KAMLESH KUMAR MEHTA', 'SUNITA MEHTA', '0000-00-00', 'K-2, A-BLOCK, SAJJAN NAGER NEAR HANUMAN KA TEMPLE', '3156', 0, 6, 3, '', '', '', '0000-00-00', 0),
(296, 'LAVISHA  GADIYA', 'MADHU SUDAN GADIYA', 'DEEPIKA GADIYA', '0000-00-00', 'HARI DASH JI KI MAGRI MALLA TALAI', '3160', 0, 6, 3, '', '', '', '0000-00-00', 0),
(297, 'MOHAMMD KAZIM  KHAN', 'HAMID ASHRAF', 'SHAHAR BANU', '0000-00-00', 'A-10 KOMI EKTA NAGAR OPP. CENTRAL ACDEMY SCHOOL MALLA TALAI', '3099', 0, 6, 3, '', '', '', '0000-00-00', 0),
(298, 'MOHAMMED SHARZIL  RAZA', 'MOHAMMED RAIS', 'AABEDA KHAN', '0000-00-00', 'BISHMILLA HOUSE KALLASATH KI GALI JATWADI', '3128', 0, 6, 3, '', '', '', '0000-00-00', 0),
(299, 'NISHPREET  KOUR', 'JITENDER SINGH DIGPAL', 'REKHA KOUR', '0000-00-00', '545,KACHCHI BASTI GANDI NAGER', '3081', 0, 6, 3, '', '', '', '0000-00-00', 0),
(300, 'RIDDHIMA  JOSHI', 'SATYA NARAYAN JOSHI', 'LALITA JOSHI', '0000-00-00', 'K-68, SAJJAN NAGAR KHACHCHI BASTI', '3117', 0, 6, 3, '', '', '', '0000-00-00', 0),
(301, 'SOHA  KHANAM', 'ABID KHAN', 'RASHIDA KHANAM', '0000-00-00', '80,FIT ROAD RATA KHET, SAJJAN NAGAR', '3141', 0, 6, 3, '', '', '', '0000-00-00', 0),
(302, 'VIVEK  TANWAR', 'MUKESH TANWAR', 'KIRAN TANWAR', '0000-00-00', '338. CHAMPA COLONY', '3121', 0, 6, 3, '', '', '', '0000-00-00', 0),
(303, 'ZISHAN  AALAM', 'NADEEM AALAM', 'SHABBO BANO', '0000-00-00', '174 CHITTORO KA TIMBA MAHAWATWADI', '3656', 0, 6, 3, '', '', '', '0000-00-00', 0),
(304, 'ALINA  SHEIKH', 'MOHAMMED RAFIQ SHEIKH', 'RUBINA', '0000-00-00', 'A-4 KOMI EKTA NAGAR MULLAHTALAI', '3703', 0, 3, 3, '', '', '', '0000-00-00', 0),
(305, 'ANAM  KHAN', 'MOHMMED HUSSAIN', 'RANU TABBASSUM', '0000-00-00', '37 LAL GHAT BEHIND JAGDISH MANDIR', '3576', 0, 3, 3, '', '', '', '0000-00-00', 0),
(306, 'ANUS  KHAN', 'MAJID KHAN', 'NAZMEEN BANO', '0000-00-00', '5 NEAR MASJID KALLESAT IMLI GHAT', '3697', 0, 3, 3, '', '', '', '0000-00-00', 0),
(307, 'ARHAN KHAN ', 'SADDAM KHAN', 'NAZMEEN BANO', '0000-00-00', '427, AHMED HUSSAIN COLONY GALI NO. - 3, LAL MAGRI', '3590', 0, 3, 3, '', '', '', '0000-00-00', 0),
(308, 'FATIMA ARSHEEN  ', 'MOHAMMED HANIF', 'NASREEN BANO', '0000-00-00', 'RAM MANOHAR LOHIA NAGAR KACHHI BASTI', '3742', 0, 3, 3, '', '', '', '0000-00-00', 0),
(309, 'HASNAIN KHAN  ', 'SHAHID KHAN', 'ASMA KHAN', '0000-00-00', 'KELWA HOUSE BICHHU GHATI HATHIPOLE', '3724', 0, 3, 3, '', '', '', '0000-00-00', 0),
(310, 'HUMERA KHANAM  ', 'JAVED KHAN', 'TAHIRA BANU', '0000-00-00', 'DHOLI MAGRI NEAR MASTAN BABA', '3769', 0, 3, 3, '', '', '', '0000-00-00', 0),
(311, 'JASLEEN KOUR  ', 'JITENDRA SINGH DIGPAL', 'REKHA KOUR', '0000-00-00', '545, OTC SCHEME D BLOCK, GANDHI NAGAR', '3712', 0, 3, 3, '', '', '', '0000-00-00', 0),
(312, 'MAHENOOR  ', 'GULAM MOINUDDIN', 'FIRDOUS BANO', '0000-00-00', 'GALI NO. 2 FARUQ E AZAM COLONEY', '3614', 0, 3, 3, '', '', '', '0000-00-00', 0),
(313, 'MAJID  ALAM', 'NADEEM ALAM', 'NASREEN BANO', '0000-00-00', '174 CHITTORO KA TIMBA JATWADI', '3592', 0, 3, 3, '', '', '', '0000-00-00', 0),
(314, 'MOHAMMED ALSALAN  KHAN', 'IRFAN KHAN', 'KANEEZ FATMA', '0000-00-00', '686 KALLESATH NEAR MASJID IMLIGHAT', '3605', 0, 3, 3, '', '', '', '0000-00-00', 0),
(315, 'MOHAMMED JUNAID  CHIPPA', 'MOHAMMED FARUKH', 'NAZIYA', '0000-00-00', '528/50 CHIPPA COLONY', '3611', 0, 3, 3, '', '', '', '0000-00-00', 0),
(316, 'MOHAMMED KASHIF  ', 'ASLAM HUSSAIN', 'RUBINA HUSSAIN', '0000-00-00', '41 GALI NO 3 AHMED HUSSAIN COLONY', '3704', 0, 3, 3, '', '', '', '0000-00-00', 0),
(317, 'NABILA BANO  ', 'ABDUL AHSAAN', 'RUBEENA BANO', '0000-00-00', '376 FARUK E AZAM COLONY MALLAH TALAI', '3726', 0, 3, 3, '', '', '', '0000-00-00', 0),
(318, 'KINJAL  SHARMA', 'RAJESH SHARMA', 'PINKY SHARMA', '0000-00-00', '132,B RAMPURA AMBA WARI', '3416', 0, 5, 1, '', '', '', '0000-00-00', 0),
(319, 'MEHZABEEN BANO MANSOORI', 'SHARAFAT AHMED MANSOORI', 'YAASMIN MANSOORI', '0000-00-00', '336,GARIB NAWAZ COLONEY MALLA TALAI', '3414', 0, 5, 1, '', '', '', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`, `hold`) VALUES
(320, 'AAFIYA  BANU', 'MOHD AAZAM', 'TARANNUM BANU', '0000-00-00', '336,GARIB NAWAZ COLONY GALI NO.4 MALLA TALAI', '3273/31/13', 0, 6, 1, '', '', '', '0000-00-00', 0),
(321, 'HAMJA  ', 'MOHD SALIM', 'MUMTAZ', '0000-00-00', '56, SAJJAN NAGAR, A-BLOCK', '3268/26/13', 0, 6, 1, '', '', '', '0000-00-00', 0),
(322, 'SAKEENA  BANU', 'IMRAN KHAN', 'BILKISH BANU', '0000-00-00', '19 KELWA HOUSE, BICHCHU GATI', '3266/24/13', 0, 6, 1, '', '', '', '0000-00-00', 0),
(323, 'VAIDIKA  JAIN', 'BHERU JAIN', 'PINKY JAIN', '0000-00-00', 'H. NO.-7/1174, A-BLOCK SAJJAN NAGAR', '13-10-3281', 0, 7, 1, '', '', '', '0000-00-00', 0),
(324, 'SEFEEN  DAYAR', 'AKRAM HUSSAIN', 'RAZIA BANU', '0000-00-00', '440-GARIB NAWAZ COLONY GALI NO.4', '3274/32/13', 0, 6, 2, '', '', '', '0000-00-00', 0),
(325, 'ZENAB KHAN ', 'MOHD IRFAN', 'MAHENOOR', '0000-00-00', '56,SAJJAN NAGAR,A-BLOCK', '3267/25/13', 0, 6, 2, '', '', '', '0000-00-00', 0),
(326, 'AVESH  HUSSAIN', 'MUSABBIR HUSSAIN', 'NUSRAT BANO', '0000-00-00', 'G-25, HARIDAS JI KI MAGRI, MALLA TALAI', '12-07-3278', 0, 7, 2, '', '', '', '0000-00-00', 0),
(327, 'MOHAMMED SHOYAB  RAZA', 'TAJ MOHAMMED', 'KHURSHIDA', '0000-00-00', 'GANDHI NAGAR MALLA TALAI UDAIPUR', '3284/13/13', 0, 7, 2, '', '', '', '0000-00-00', 0),
(328, 'SHABISTA  KHANAM', 'LT PATHAN MOHD SHARIF', 'SHIREEN BANU', '0000-00-00', '205 OUT SAID CHAND POL NAGA NAGARI', '3476', 0, 4, 2, '', '', '', '0000-00-00', 0),
(329, 'REHAN  ', 'ANSAR', 'REHANA', '0000-00-00', 'SAJJAN NAGAR KACHCHI BASTI', '3620', 0, 3, 2, '', '', '', '0000-00-00', 0),
(330, 'ARINA  KHAN', 'RAIS KHAN', 'MUNIRA KHAN', '0000-00-00', 'KANOD KI HAVELI SURAJ POL', '3261/19/13', 0, 6, 3, '', '', '', '0000-00-00', 0),
(331, 'PRANJAL  JALWANIYA', 'RAKESH SEN', 'RAJESWARI SEN', '0000-00-00', '29,B-HARIDAS JI KI MAGRI', '3265/23/13', 0, 6, 3, '', '', '', '0000-00-00', 0),
(332, 'SAIFEEN GUL  ', 'ARIF KHAN', 'RUKHSAR', '0000-00-00', '151, NAGANAGRI CHANDPOLE BAHAR', '3721', 0, 3, 3, '', '', '', '0000-00-00', 0),
(333, 'ANAHID  ANSARI', 'MOHD JAVED', 'NASIMA BANO', '0000-00-00', 'EKLAVYA ACADEMY NEAR GOVT SCHOOL GANDHI NAGAR MULLAHTALAI', '3519', 0, 5, 1, '', '', '', '0000-00-00', 0),
(334, 'BHAVIN  PRAJAPAT', 'RAJENDRA KUMAR PRAJAPAT', 'GOPI DEVI PRAJAPAT', '0000-00-00', '19,SANWARIYA HOUSE HARI HAR NAGAR RAMPURA', '3352', 0, 5, 1, '', '', '', '0000-00-00', 0),
(335, 'LAXITA  CHOUHAN', 'VIJENDRA CHOUHAN', 'BHAGWATI CHOUHAN', '0000-00-00', 'DHAPU BAI BHILO KA MOHALLA SISARMA', '3337', 0, 5, 1, '', '', '', '0000-00-00', 0),
(336, 'MAYANK TELI  ', 'MADAN TELI', 'PUSHPA TELI', '0000-00-00', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '3737', 0, 5, 1, '', '', '', '0000-00-00', 0),
(337, 'MOHAMMED ALFEZ  ', 'MOHAMMED PARVEZ', 'SHAHZAD BANU', '0000-00-00', 'RAM MANOHAR LOHIYA NAGAR SAJJAN NAGAR', '3394', 0, 5, 1, '', '', '', '0000-00-00', 0),
(338, 'NAVIKA  PURBIA', 'PRAVEEN PURBIA', 'DIMPLE  PURBIA', '0000-00-00', '15 AMBAMATA SCHEM', '3631', 0, 5, 1, '', '', '', '0000-00-00', 0),
(339, 'NISHA  OAD', 'UDESH OAD', 'NIRMA OAD', '0000-00-00', '4-B, HARIDAS JI KI MAGRI', '3349', 0, 5, 1, '', '', '', '0000-00-00', 0),
(340, 'PRIYANSHI  KALAL', 'VIRENDRA KUMAR KALAL', 'SANGEETA KALAL', '0000-00-00', '78 K.D RATA KHET,UDAIPUR NEAR TO BALSHIKSHA SADAN SCHOOL', '3324', 0, 5, 1, '', '', '', '0000-00-00', 0),
(341, 'SAIFIN  BANO', 'MOHAMMED SHAHRUKH', 'KHUSHBOO', '0000-00-00', '1510 AHMED HUSSAIN COLONY BEHIND MASTAN BABA', '3705', 0, 5, 1, '', '', '', '0000-00-00', 0),
(342, 'SOFIYA  NOOR', 'ABDUL RASHID', 'NASEEM BANO', '0000-00-00', 'H NO 439 GALI NO 1 GARIB NAWAZ COLONY', '3699', 0, 5, 1, '', '', '', '0000-00-00', 0),
(343, 'ADITYA  YADAV', 'BUNTI YADAV', 'MEERA YADAV', '0000-00-00', '15 RATA KHET 80 FIT ROAD', '3147', 0, 6, 1, '', '', '', '0000-00-00', 0),
(344, 'AFSHA  NOOR', 'MAQBUL HUSSAIN', 'REHANA BEGUM', '0000-00-00', '207 RAZA COLONY MALLA TALAI', '3170', 0, 6, 1, '', '', '', '0000-00-00', 0),
(345, 'BHAVYA  SEN', 'PRAMOD SEN', 'DIMPLE SEN', '0000-00-00', '199 B .O.T.C DUDIYA GANESH JI AMAR NAGAR', '3094', 0, 6, 1, '', '', '', '0000-00-00', 0),
(346, 'HANSINI  PRAJAPAT', 'DEVI LAL PRAJAPAT', 'PUSHPA PRAJAPAT', '0000-00-00', 'B-2 HARI DAS JI KI MAGRI', '3295', 0, 6, 1, '', '', '', '0000-00-00', 0),
(347, 'KAVYANSH SUTHAR  ', 'SURESH SUTHAR', 'TARA SUTHAR', '0000-00-00', '20 AMBAWADI OPP. CHOUDHRY GUEST HOUSE RAMPURA', '3728', 0, 6, 1, '', '', '', '0000-00-00', 0),
(348, 'MAHI  SEN', 'YATISH SEN', 'VANDANA SEN', '0000-00-00', '0', '3058', 0, 6, 1, '', '', '', '0000-00-00', 0),
(349, 'NIDHI  SONI', 'NARESH SONI', 'MEENA SONI', '0000-00-00', '11 C/O HIMMAT SING JI CHAJED HARIDAS JI KI MAGRI', '34050', 0, 6, 1, '', '', '', '0000-00-00', 0),
(350, 'PALAK  SAHANI', 'UMA SHANKAR SAHANI', 'BIBHA SAHANI', '0000-00-00', 'K - 10, HARI DAS JI KI MAGRI', '3426', 0, 6, 1, '', '', '', '0000-00-00', 0),
(351, 'SAKSHI  JHA', 'SHAILENDRA JHA', 'VINITA JHA', '0000-00-00', 'B-19, HARIDASH JI KI MAGRI MALLA TALAI', '3138', 0, 6, 1, '', '', '', '0000-00-00', 0),
(352, 'VANDANA  TELI', 'KISHAN LAL TELI', 'BHAWANA TELI', '0000-00-00', '3563,HARSH NAGAR SISARAMA ROAD', '3113', 0, 6, 1, '', '', '', '0000-00-00', 0),
(353, 'YUVRAJ  SEN', 'PURSHOTTAM SEN', 'PINKY SEN', '0000-00-00', '2,DUDHIYA GANESH JI NEAR AARTI RESTORANT', '3096', 0, 6, 1, '', '', '', '0000-00-00', 0),
(354, 'ZENAB  MANSOORI', 'MOHD IDRES', 'NILOFAR', '0000-00-00', '245,OTC MANSOORI COLONY MALLA TALAI', '3123', 0, 6, 1, '', '', '', '0000-00-00', 0),
(355, 'ABDUL AASHIT  ', 'ABDUL HAMEED', 'SHAHEEN ALI', '0000-00-00', '271, FAROOQ AZAM COLONY, MALLA TALAI', '3513', 0, 7, 1, '', '', '', '0000-00-00', 0),
(356, 'DIKSHANT  SEN', 'UKAAR LAL SEN', 'SUSHILA KUMARI', '0000-00-00', 'DUDHIYA GANESH JI SAJJAN GAGR ROAD', '3651', 0, 7, 1, '', '', '', '0000-00-00', 0),
(357, 'DIKSHIT  LAXKAR', 'SUDHIR LAXKAR', 'SEEMA LAXKAR', '0000-00-00', '25, HARI DAS JI KI MAGRI,MALLA TALAI', '3018', 0, 7, 1, '', '', '', '0000-00-00', 0),
(358, 'GUNJAN  DANGI', 'KESHAV LAL DANGI', 'KANKU DEVI DANGI', '0000-00-00', '1-4 POLICE QUARTER, MALLA TALAI', '3379', 0, 7, 1, '', '', '', '0000-00-00', 0),
(359, 'HANSIKA  VAISHNAV', 'RAJENDRA VAISHNAV', 'LALITA VAISHNAV', '0000-00-00', '141, O.T.C. B-BLOCK AMAR NAGAR,MALLA TALAI', '3178', 0, 7, 1, '', '', '', '0000-00-00', 0),
(360, 'HIMANI  LAKHARA', 'PURSHOTAM LAKHARA', 'KALPANA LAKHARA', '0000-00-00', '53,KALI MAGRI DUDHIYA GANESH JI', '3041', 0, 7, 1, '', '', '', '0000-00-00', 0),
(361, 'KAVYANSH  BHATI', 'MANOJ BHATI', 'GANGA BHATI', '0000-00-00', 'K-13,HARIDAS JI KI MAGRI, MALLA TALAI', '3184', 0, 7, 1, '', '', '', '0000-00-00', 0),
(362, 'KHUSHBU TELI  ', 'MADAN TELI', 'PUSHPA TELI', '0000-00-00', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '3738', 0, 7, 1, '', '', '', '0000-00-00', 0),
(363, 'KOMAL  SUTHAR', 'DINESH KUMAR', 'HEMLATA DEVI', '0000-00-00', '36 KAHNAYA NAGAR GAS GOUDAM KE PASS', '3536', 0, 7, 1, '', '', '', '0000-00-00', 0),
(364, 'LUBABA  ANSARI', 'MOHD JAVED', 'NASEEM BANO', '0000-00-00', 'EKLAYA  ACADEMY NEAR GOVT SCHOOL GANDHI NAGAR UDAIPUR', '3520', 0, 7, 1, '', '', '', '0000-00-00', 0),
(365, 'MINHAZ  AHMED', 'MAQBUL AHMED', 'NILOFER', '0000-00-00', 'AHMED HUSSAIN COLONY NEAR POLICE QUARTER', '2923', 0, 7, 1, '', '', '', '0000-00-00', 0),
(366, 'MOHAMMED ARSHAD  ', 'MOHAMMED AKRAM', 'IQBAL BANU', '0000-00-00', 'SAJJAN NAGAR NEAR WATER TANK KACHCHI BASTI', '3301', 0, 7, 1, '', '', '', '0000-00-00', 0),
(367, 'MOHAMMED MAZHAR  RAZA', 'GULAM MOIUNUDDIN', 'FIRDOUS BANU', '0000-00-00', 'KOMI EKTA NAGAR, GALI NO.2 FARUKHE AZAM COLONY', '3517', 0, 7, 1, '', '', '', '0000-00-00', 0),
(368, 'PRATHAM  PARIHAR', 'GOPAL PARIHAR', 'HETAL PARIHAR', '0000-00-00', 'B-BLOCK U.I.T. COLONY SAJJAN NAGAR, MALLA TALAI', '3007', 0, 7, 1, '', '', '', '0000-00-00', 0),
(369, 'ROHIT  SEN', 'SUNIL SEN', 'PREETI SEN', '0000-00-00', 'K-19, HARIDAS JI KI MAGRI', '2916', 0, 7, 1, '', '', '', '0000-00-00', 0),
(370, 'VISHAKHA  SEN', 'ANIL SEN', 'DIMPLE SEN', '0000-00-00', 'H. NO.-K-19, HARIDAS JI KI MAGRI', '2914', 0, 7, 1, '', '', '', '0000-00-00', 0),
(371, 'VISHAL  SUTHAR', 'SHANTI LAL SUTHAR', 'KIRAN SUTHAR', '0000-00-00', 'GAJSINGH JI KI BADI, AZAAD NAGAR', '2912', 0, 7, 1, '', '', '', '0000-00-00', 0),
(372, 'AALIMA  CHUNDRIGAR', 'ABDUL KHALIK', 'BADROONNISA', '0000-00-00', '28 CHAKARIYA AMBA NEW RAMPURA  UDAIPUR', '2677', 0, 8, 1, '', '', '', '0000-00-00', 0),
(373, 'AIMAN  BANO', 'ISHTIYAK AHMED', 'FARIDA BANO', '0000-00-00', 'NAVRANG SAREE STORE, HATHIPOLE', '2702', 0, 8, 1, '', '', '', '0000-00-00', 0),
(374, 'AJMAL  HUSSAIN', 'SHOUKAT HUSSAIN', 'SHABANA', '0000-00-00', '406 FARUKH - E- AZAM COLONY MALLA TALAI', '3000', 0, 8, 1, '', '', '', '0000-00-00', 0),
(375, 'ANISH  SAHANI', 'JAY JANAM SAHANI', 'RADHA SAHANI', '0000-00-00', 'K-110 HARI DAS JI KI MAGARI', '3359', 0, 8, 1, '', '', '', '0000-00-00', 0),
(376, 'ASMA  FAROOQUE', 'MOHD FAROOQUE', 'ABIDA BANO', '0000-00-00', '245 OTC MANSURI COLONY MALLA TALAI', '2719', 0, 8, 1, '', '', '', '0000-00-00', 0),
(377, 'AYESHA  KHAN', 'SHAHID HUSSAIN', 'SHAHIN KHAN', '0000-00-00', '697 GARIB NAWAZ COLONY MALLA TALAI UDAIPUR', '2733', 0, 8, 1, '', '', '', '0000-00-00', 0),
(378, 'FAISAL  NURANI', 'MOHAMMED FARUKH', 'KHURSHIDA BANO', '0000-00-00', 'MASTAN BABA KE SAMNE UDAIPUR', '2714', 0, 8, 1, '', '', '', '0000-00-00', 0),
(379, 'FARHAN  KHAN', 'ASIF KHAN', 'RESHMA ARA', '0000-00-00', 'GARIB NAWAZ COLONY', '2428', 0, 8, 1, '', '', '', '0000-00-00', 0),
(380, 'FARHAN  SHEIKH', 'HASNUDDIN SHEIKH', 'FARZANA', '0000-00-00', '56, CHITTORA KA TIMBA JATWARI', '2743', 0, 8, 1, '', '', '', '0000-00-00', 0),
(381, 'HIMANSHI  CHOUHAN', 'GAJENDRA CHOUHAN', 'KALPANA CHOUHAN', '0000-00-00', '22 HARSH NAGAR NEW RAMPURA UDAIPUR', '2889', 0, 8, 1, '', '', '', '0000-00-00', 0),
(382, 'JATIN  LOHAR', 'KIRAN KUMAR LOHAR', 'HEMA LOHAR', '0000-00-00', 'S-57 GANDHI NAGAR COLONY UDAIPUR', '2722', 0, 8, 1, '', '', '', '0000-00-00', 0),
(383, 'JATIN  NAMDEV', 'DINESH NAMDEV', 'REKHA NAMDEV', '0000-00-00', '34 KOLPOL BADA BAZAR KOTHARI HOUSE', '2690', 0, 8, 1, '', '', '', '0000-00-00', 0),
(384, 'JAYESH  KUMAWAT', 'KESHU LAL KUMAWAT', 'GOMTI DEVI', '0000-00-00', 'AMAR NAGAR OTC B BLOCK MALLA TALAI', '3431', 0, 8, 1, '', '', '', '0000-00-00', 0),
(385, 'KOSAR  BANU', 'SAYEED', 'SHAHISTA BANU', '0000-00-00', 'RATA KHET,80 FEET ROAD', '3060', 0, 8, 1, '', '', '', '0000-00-00', 0),
(386, 'PRACHI  JHA', 'SHAILENDRA JHA', 'VINITA JHA', '0000-00-00', 'HARIDAS JI KI MAGRI MALLA TALAI', '3176', 0, 8, 1, '', '', '', '0000-00-00', 0),
(387, 'PRINCE  CHOUDHARY', 'VINOD CHOUDHARY', 'JUMA CHOUDHARY', '0000-00-00', 'VILLAGE NAI NADESHWAR ROAD', '2900', 0, 8, 1, '', '', '', '0000-00-00', 0),
(388, 'PRINCE  YADAV', 'RAJKUMAR YADAV', 'MANORAMA YADAV', '0000-00-00', 'K-33, HARIDAS JI KI MAGRI', '3194', 0, 8, 1, '', '', '', '0000-00-00', 0),
(389, 'REHAN  KHAN', 'MUSABBIR HUSSAIN', 'NUSRAT BANU', '0000-00-00', 'G-25, HARIDAS JI KI MAGRI MALLA TALAI UDAIPUR', '2868', 0, 8, 1, '', '', '', '0000-00-00', 0),
(390, 'SUFFIYAN  NURI', 'LIYAKAT HUSSAIN', 'SHABANA BANU', '0000-00-00', '1483, AHMED HUSSAIN COLONY NEAR SANJAY GARDEN', '2692', 0, 8, 1, '', '', '', '0000-00-00', 0),
(391, 'TANISHA  LAKSHKAR', 'DEVENDRA LAKSHKAR', 'SARITA LAKSHKAR', '0000-00-00', '25, HARIDAS JI KI MAGRI, MALLA TALAI', '2725', 0, 8, 1, '', '', '', '0000-00-00', 0),
(392, 'AFSHEEN  SHEIKH', 'MOHD IRSHAD SHEIKH', 'ALAMARA SHEIKH', '0000-00-00', '304,MASRET MANZIL MALLA TALAI', '2472', 0, 9, 1, '', '', '', '0000-00-00', 0),
(393, 'ANIQUA  SHEIKH', 'NASEER SHEIKH', 'NOORJAHAN SHEIKH', '0000-00-00', '82,RAZA COLONY MALLA TALAI', '2407', 0, 9, 1, '', '', '', '0000-00-00', 0),
(394, 'ANJALI  KUMARI', 'AMARJEET KUMAR', 'HEMA DEVI', '0000-00-00', 'AMAR NAGAR, MALLA TALAI', '2755', 0, 9, 1, '', '', '', '0000-00-00', 0),
(395, 'BHUVANESH  YADAV', 'HANUMAN PRASAD YADAV', 'MANJU YADAV', '0000-00-00', '86, YADAV COLONY AMBAMATA', '2463', 0, 9, 1, '', '', '', '0000-00-00', 0),
(396, 'DAKSH  SONI', 'SUNIL SONI', 'DURGA SONI', '0000-00-00', '80,FEET ROAD SAJJAN NAGAR', '3208', 0, 9, 1, '', '', '', '0000-00-00', 0),
(397, 'FAIZ  KHILZI', 'IMTIYAZ KHILZI', 'NILOFAR', '0000-00-00', '86, RAZA COLONY MALLA TALAI', '2661', 0, 9, 1, '', '', '', '0000-00-00', 0),
(398, 'GOSIYA  BANO', 'NIYAZ KHAN', 'MUMTAZ', '0000-00-00', 'S-68, GANDHI NAGAR MALLA TALAI', '3017', 0, 9, 1, '', '', '', '0000-00-00', 0),
(399, 'KHUSH  PRAJAPAT', 'SHANKAR PRAJAPAT', 'MANJU PRAJAPAT', '0000-00-00', 'KUMAHARO KA MOHLLA SISARMA', '2427', 0, 9, 1, '', '', '', '0000-00-00', 0),
(400, 'MEENAKSHI  SONI', 'NARESH SONI', 'MEENA SONI', '0000-00-00', 'HN-11 MALLA TALAI CHOURAHA', '3404', 0, 9, 1, '', '', '', '0000-00-00', 0),
(401, 'MOHAMMED AYAN  MANSOORI', 'MOHAMMED AYUB MANSOORI', 'IRFANA BANU', '0000-00-00', 'S- 22 NEAR SHIV MANDIR GANDHI NAGAR', '3682', 0, 9, 1, '', '', '', '0000-00-00', 0),
(402, 'MOHAMMED REHAN  ', 'MOHAMMED ARIF', 'SAMINA BANU', '0000-00-00', 'KOMI EKTA NAGAR H.NO.782', '2296', 0, 9, 1, '', '', '', '0000-00-00', 0),
(403, 'NIYATI  SOLANKI', 'NIRMAL SOLANKI', 'MEENAKSHI SOLANKI', '0000-00-00', 'MALDAS STREET', '2765', 0, 9, 1, '', '', '', '0000-00-00', 0),
(404, 'RADHIKA  LAXKAR', 'DEVENDRA LAXKAR', 'SARITA LAXKAR', '0000-00-00', '25, HARI DAS JI KI MAGRI', '2481', 0, 9, 1, '', '', '', '0000-00-00', 0),
(405, 'SAKLAIN  RAZA', 'RAIS KHAN', 'ABIDA', '0000-00-00', '556,KASHAT, BISMILLAH HOUSE', '2442', 0, 9, 1, '', '', '', '0000-00-00', 0),
(406, 'SHOAIB  AHMED', 'JAMIL AHMED', 'SAMEENA BANU', '0000-00-00', '408, GARIB NAWAZ COLONY', '3206', 0, 9, 1, '', '', '', '0000-00-00', 0),
(407, 'ALMEEN NAAZ ', 'SAEED AHMED', 'NAFISA BANO', '0000-00-00', '24/A GANDHI NAGAR MALLA TALAI', '2811', 0, 14, 1, '', '', '', '0000-00-00', 0),
(408, 'AMAN RAZA ', 'MOHAMMED ANIS', 'RUKHSANA', '0000-00-00', '65, MAHAWAT WADI, BADE PUROHIT JI KA KHURRA', '3003', 0, 14, 1, '', '', '', '0000-00-00', 0),
(409, 'BHAVESH  SUTHAR', 'KHIYALI LAL SUTHAR', 'SHARDA DEVI SUTHAR', '0000-00-00', 'MALDAS STREET', '1766', 0, 14, 1, '', '', '', '0000-00-00', 0),
(410, 'DEVANSHI  LOHAR', 'KIRAN PRAKASH LOHAR', 'HEMA LOHAR', '0000-00-00', 'S-57, GANDHI NAGAR COLONY, MALLA TALA', '1778', 0, 14, 1, '', '', '', '0000-00-00', 0),
(411, 'GUFRAN  HUSSAIN', 'MOHAMMED KHATIB', 'MAJIDA FATIMA', '0000-00-00', '218 MANSOORI COLONEY MULLA TALA PH NOI 0294-2434646', '3664', 0, 14, 1, '', '', '', '0000-00-00', 0),
(412, 'MAHESH  SONI', 'MAHENDRA SONI', 'HEMLATA SONI', '0000-00-00', '30, SUBHASH MARG JADIO KI GALI', '1624', 0, 14, 1, '', '', '', '0000-00-00', 0),
(413, 'MAYURAKSHI  PURBIA', 'RAJESH PURBIA', 'MAYA PURBIA', '0000-00-00', 'B-BLOCK PURBIA COLONY', '1231', 0, 14, 1, '', '', '', '0000-00-00', 0),
(414, 'MOHAMMED ADNAN  AHMED', 'KHALIL AHMED', 'KHUSHNOOR', '0000-00-00', 'S-24, GANDHI NAGAR U.I.T COLONY,MALLA TALAI', '2062', 0, 14, 1, '', '', '', '0000-00-00', 0),
(415, 'MOHAMMED ANEES MANSOORI', 'MOHAMMED SHARIF MANSOORI', 'SAYRA BEGAM', '0000-00-00', '3077 B BLOCK SAJJAN NAGAR 80 FEET ROAD MALLATALAI', '3678', 0, 14, 1, '', '', '', '0000-00-00', 0),
(416, 'MOHAMMED SAHIL  KHAN', 'SADIK MOHAMMED', 'HEENA BANO', '0000-00-00', '159/60, A- BLOCK SAJJAN NAGAR', '2067', 0, 14, 1, '', '', '', '0000-00-00', 0),
(417, 'MOHAMMED SAIF  ', 'ABDUL KALAM', 'FARIDA BANU', '0000-00-00', 'RAZA COLONY, MALLA TALAI', '1774/B', 0, 14, 1, '', '', '', '0000-00-00', 0),
(418, 'MUBINA  JHADOLWALA', 'FAKRUDDIN JHADOLWALA', 'FATIMA JHADOLWALA', '0000-00-00', 'L-104, SAJJAN NAGAR MALLA TALAI', '1769', 0, 14, 1, '', '', '', '0000-00-00', 0),
(419, 'NAKSHATRA  SEN', 'VINOD SEN', 'KIRAN SEN', '0000-00-00', '13, CHOUBISA KI GALI OUT SIDE CHANDPOLE', '1224', 0, 14, 1, '', '', '', '0000-00-00', 0),
(420, 'PAWAN  SINDHAL', 'NEELKANTH TELI', 'SANTOSH', '0000-00-00', '11, RADHA SHYAM JI KI GALI INSIDE BAAHMPOLE', '1223', 0, 14, 1, '', '', '', '0000-00-00', 0),
(421, 'PRIYANSH  JHALWANIA', 'RAKESH JHALWANIA', 'RAJESHWARI JHALWANIA', '0000-00-00', 'A 222 SAJJAN NAGAR MALLA TALAI', '1400', 0, 14, 1, '', '', '', '0000-00-00', 0),
(422, 'REHANA PATHAN MAV', 'ASHFAQUE PATHAN', 'SIDDIQA RANI', '0000-00-00', 'A-222, SAJJAN NAGAR, MALLA TALAI', '1613', 0, 14, 1, '', '', '', '0000-00-00', 0),
(423, 'SAHIMA  KHILJI', 'IMTIYAZ KHILJI', 'NILOFAR', '0000-00-00', '87,MALLA TALAI', '1212', 0, 14, 1, '', '', '', '0000-00-00', 0),
(424, 'SAMEER  VERMA', 'CHANDRA SHEKHAR VERMA', 'NEETU VERMA', '0000-00-00', '117, BHILU RANA COLONY, SAJJAN NAGAR', '2813', 0, 14, 1, '', '', '', '0000-00-00', 0),
(425, 'SHAHISTA  ANJUM', 'ABID HUSSAIN', 'SHAMIM BANU', '0000-00-00', 'B- BLOCK, SAJJAN NAGAR, 80 FEET ROAD', '2927', 0, 14, 1, '', '', '', '0000-00-00', 0),
(426, 'SIMRAN SOLANKI  ', 'MOHAN LALSOLANKI', 'SANGEETA SOLANKI', '0000-00-00', 'NEW LAXMI KIRANA STORE RAMPURA CHOURAHA', '3775', 0, 14, 1, '', '', '', '0000-00-00', 0),
(427, 'TEENA  GOSWAMI', 'GAJENDRA BHARTI  GOSWAMI', 'ASHA GOSWAMI', '0000-00-00', 'A-20, RATA KHET SAJJAN NAGAR RAMPURA MAIN ROAD', '1519', 0, 14, 1, '', '', '', '0000-00-00', 0),
(428, 'TOHID  AALAM', 'ABDUL AZIZ', 'NASEEM', '0000-00-00', 'S-83, GANDHI NAGAR,MALLA TALAI', '2060', 0, 14, 1, '', '', '', '0000-00-00', 0),
(429, 'UZMA  KHAN', 'SHEHZAD KHAN', 'KAMRUN KHAN', '0000-00-00', '194, OUTSIDE CHANDPOLE, NAGA NAGRI', '2070', 0, 14, 1, '', '', '', '0000-00-00', 0),
(430, 'YASH  LOHAR', 'BHAGWATI LAL LOHAR', 'LEELA LOHAR', '0000-00-00', 'B-7, HARIDAS JI KI MAGRI, MALLA TALAI', '1410', 0, 14, 1, '', '', '', '0000-00-00', 0),
(431, 'AARYAK  PURBIA', 'LT PRAVEEN PURBIA', 'KUSUM PURBIA', '0000-00-00', 'K - 24 HARIDAS JI KI MAGRI, KRISHNA COMPLEX, MALLA TALAI', '3460', 0, 4, 1, '', '', '', '0000-00-00', 0),
(432, 'BHANVI  TELI', 'HARISH TELI', 'GORI TELI', '0000-00-00', '2769 SAJJAN NAGAR, B BLOCK 80 FEET ROAD. SHANI MAHARAJ JI KI GALI. MULLA TALAI', '3478', 0, 4, 1, '', '', '', '0000-00-00', 0),
(433, 'BHAVYA  LOHAR', 'MAHENDRA LOHAR', 'BHAGWANTI LOHAR', '0000-00-00', '4 PRAGATI NAGAR SAJJAN GARH ROAD OPP NIMAWAT RESTORENT POWER HOUSE', '3553', 0, 4, 1, '', '', '', '0000-00-00', 0),
(434, 'DIYA  PURBIA', 'KAMLESH KUMAR PURBIA', 'KIRAN PURBIA', '0000-00-00', '21 PURBIA COLONEY NEAR ASHA DHAM ASHRAM', '3491', 0, 4, 1, '', '', '', '0000-00-00', 0),
(435, 'HIMANSHU  SUHALKA', 'PANKAJ SUHALKA', 'YASHODA SUHALKA', '0000-00-00', '147, HARSH NAGAR', '3319', 0, 4, 1, '', '', '', '0000-00-00', 0),
(436, 'LAKSHYA RAJ SINGH CHOUHAN', 'VIJENDRA SINGH', 'BHAGWATI CHOUHAN', '0000-00-00', 'H - 22, HARI DAS JI KI MAGARI', '3486', 0, 4, 1, '', '', '', '0000-00-00', 0),
(437, 'MINAL  CHOUDHARY', 'MUKESH CHOUDHARY', 'GAYATRI CHOUDHARY', '0000-00-00', '132 KV GSS COLONEY 80 FET ROAD', '3641', 0, 5, 1, '', '', '', '0000-00-00', 0),
(438, 'MOHAMMED ARHAN  RAZA', 'MOHAMMED IRFAN', 'ANJUM PARVEEN', '0000-00-00', '333 NEEM KE GAWADI SILAWAT WARI', '3555', 0, 4, 1, '', '', '', '0000-00-00', 0),
(439, 'PREETI  PATEL', 'DHAN RAJ PATEL', 'SEET PATEL', '0000-00-00', '731 EKLAVYA COLONEY DUDHIYA GANESH JI', '3554', 0, 4, 1, '', '', '', '0000-00-00', 0),
(440, 'SHAHINA  HUSSAIN', 'SAYEED HUSSAIN', 'SHAHISTA HUSSAIN', '0000-00-00', 'G-25 HARI DAS JI KI MAGARI MULLA TALAI', '3473', 0, 4, 1, '', '', '', '0000-00-00', 0),
(441, 'VIRAJ  OAD', 'NARENDRA OAD', 'SEEMA OAD', '0000-00-00', 'B-19 HARI DAS JI KI MAGARI MALLA TALI', '3343', 0, 4, 1, '', '', '', '0000-00-00', 0),
(442, 'VRINDA  SIKLIGAR', 'YOGENDRA SIKLIGAR', 'SHITAL SIKLIGAR', '0000-00-00', '7 - NATHI MARG, INSIDE BRHAMPOLE', '3773', 0, 4, 1, '', '', '', '0000-00-00', 0),
(443, 'YASHWANT  SIKLIGAR', 'KAMLESH SIKLIGAR', 'MANOTI SIKLIGAR', '0000-00-00', 'PIPAL CHOWK RAM PURA', '3558', 0, 4, 1, '', '', '', '0000-00-00', 0),
(444, 'BUSHRA  ', 'MOHAMMED YUSUF SHEIKH', 'SHAHEEN', '0000-00-00', '315/B GARIB NAWAZ COLONY MULLAH TALAI', '3759', 0, 3, 1, '', '', '', '0000-00-00', 0),
(445, 'MOHIT LOHAR  ', 'MAHENDRA KUMAR LOHAR', 'KHUSHBOO LOHAR', '0000-00-00', '208 AMBAWADI UBESHWAR ROAD', '3744', 0, 3, 1, '', '', '', '0000-00-00', 0),
(446, 'NAKSH SUTHAR  ', 'PRAKASH SUTHAR', 'REKHA SUTHAR', '0000-00-00', 'SHIV COLONY AMBAWADI', '3765', 0, 3, 1, '', '', '', '0000-00-00', 0),
(447, 'NIVIKA  KUMAWAT', 'GAJENDRA KUMAWAT', 'POOJA KUMAWAT', '0000-00-00', '41 KARMSHEEL MARG OUT SIDE CHAND POLE', '3586', 0, 3, 1, '', '', '', '0000-00-00', 0),
(448, 'PEARL  LOHAR', 'JANKI LAL LOHAR', 'HEMLATA   MALVIYA LOHAR', '0000-00-00', '7-B HARI DAS JI KI MAGARI', '3494', 0, 3, 1, '', '', '', '0000-00-00', 0),
(449, 'SADIYA  BANO', 'MOHAMMED FAROOQ MANSOORI', 'AABEDA BANO', '0000-00-00', '245 MANSOORI COLONEY', '3610', 0, 3, 1, '', '', '', '0000-00-00', 0),
(450, 'SAHIL  HUSSAIN', 'SAYEED HUSSAIN', 'SHAHISTA  HUSSAIN', '0000-00-00', 'G-25 HARIDAS JI KI MAGARI MULLA TALAI', '3474', 0, 3, 1, '', '', '', '0000-00-00', 0),
(451, 'SOMYA ', 'DHANRAJ GURJAR', 'SUMITRA GURJAR', '0000-00-00', '198, GORELA UBESHWAR ROAD', '3783', 0, 2, 1, '', '', '', '0000-00-00', 0),
(452, 'UMME HAANI ATTARIYA  ', 'MUHAMMED IRFAN', 'NOOR AYESHA', '0000-00-00', '1613 UPAR KI MASJID KE PASS SILAWATWADI', '3711', 0, 3, 1, '', '', '', '0000-00-00', 0),
(453, 'VISHAL  TELI', 'KISHAN LAL', 'BHAWNA TELI', '0000-00-00', '240 HARSH NAGAR', '3603', 0, 3, 1, '', '', '', '0000-00-00', 0),
(454, 'BHUMIKA  CHOUDHARY', 'HEMENDRA CHOUDARY', 'PUSHPA CHOUDHARY', '0000-00-00', 'NAI VILLEGE NEAR DEV DEVRA', '3684', 0, 10, 1, '', '', '', '0000-00-00', 0),
(455, 'DHRUVIK  KUMAWAT', 'RAJENDRA KUMAWAT', 'SAROJ KUMAWAT', '0000-00-00', 'S,57 BAJRANG MARG, GADA GAMETI JI O/S CHANDPOL', '2526', 0, 10, 1, '', '', '', '0000-00-00', 0),
(456, 'HARISH  SEN', 'LT CHANDRA PRAKASH SEN', 'KAMLA SEN', '0000-00-00', '11, RAZA COLONEY MALLATALAI', '3544', 0, 10, 1, '', '', '', '0000-00-00', 0),
(457, 'HARSHIT  KASERA', 'HEMANT KASERA', 'JYOTI KASERA', '0000-00-00', '19, BHADESAR CHOWK NEAR JAGDISH MANDIR', '2366', 0, 10, 1, '', '', '', '0000-00-00', 0),
(458, 'ISHITA  SONI', 'HARISH SONI', 'SHEETAL SONI', '0000-00-00', '84 ACHARYA MARG O/S CHAND POLE', '2499', 0, 10, 1, '', '', '', '0000-00-00', 0),
(459, 'JAYESH  BHATI', 'PRAHLAD BHATI', 'MEENA BHATI', '0000-00-00', 'VILLAGE BHUZDA', '2357', 0, 10, 1, '', '', '', '0000-00-00', 0),
(460, 'JOY  PURBIA', 'KAMLESH KUMAR  PURBIA', 'KIRAN PURBIA', '0000-00-00', '21 B-BLOCK PURBIA COLONY', '2364', 0, 10, 1, '', '', '', '0000-00-00', 0),
(461, 'KHUSHBU  PARIHAR', 'GOPAL PARIHAR', 'HETAL PARIHAR', '0000-00-00', 'L 20 SAJJAN NAGAR A-BLOCK', '2141', 0, 10, 1, '', '', '', '0000-00-00', 0),
(462, 'KHUSHI  PURBIA', 'RAVI PURBIA', 'VIMLA PURBIA', '0000-00-00', 'K-24 KRISHNA COMPLEX HARIDAS JI KI MAGRI', '2372', 0, 10, 1, '', '', '', '0000-00-00', 0),
(463, 'MISBA  HABIBA', 'NASIB RAZA', 'SHABANA BANO', '0000-00-00', '528/26, OTC CHIPPA COLONY', '2491', 0, 10, 1, '', '', '', '0000-00-00', 0),
(464, 'MOHAMMED ATIF  ', 'MOHAMMED HUSSAIN', 'MARIAM BANU', '0000-00-00', '528/60,OTC CHIPPA COLONY', '2380', 0, 10, 1, '', '', '', '0000-00-00', 0),
(465, 'MOHAMMED FAIZAN  ', 'MOHAMMED ILIYAS', 'SHABANA BANU', '0000-00-00', 'H.NO 528/50, OTC CHIPPA COLONY', '2511', 0, 10, 1, '', '', '', '0000-00-00', 0),
(466, 'MOHAMMED FARHAAN  MEV', 'FAROOQ MOHAMMED', 'RIZWANA MEV', '0000-00-00', '80, FEET ROAD CHOTI MASZID KE PASS', '2361', 0, 10, 1, '', '', '', '0000-00-00', 0),
(467, 'MOHAMMED TOFIQ  ', 'MOHAMMED PARVEZ', 'RASHIDA BANU', '0000-00-00', '80 FEET ROAD BEHIND MASZID', '2507', 0, 10, 1, '', '', '', '0000-00-00', 0),
(468, 'MOHIT  KUMAWAT', 'RAMESHWAR KUMAWAT', 'ANITA KUMAWAT', '0000-00-00', 'NAGA NAGRI', '3217', 0, 10, 1, '', '', '', '0000-00-00', 0),
(469, 'MOHIT  SUTHAR', 'SURESH SUTHAR', 'MANJU SUTHAR', '0000-00-00', '202, HARIHAR NAGAR, SISARMA', '2323', 0, 10, 1, '', '', '', '0000-00-00', 0),
(470, 'NAWAZ  ALI', 'IQBAL ALI', 'SALMA ALI', '0000-00-00', 'GARIB NAWAZ COLONY', '2851', 0, 10, 1, '', '', '', '0000-00-00', 0),
(471, 'PRANAY  PATIL', 'NAMDEV PATIL', 'RUPALI PATIL', '0000-00-00', '30, SITAFAL KI GALI GANESH GHATI', '2989', 0, 10, 1, '', '', '', '0000-00-00', 0),
(472, 'SANIYA  BANU', 'MOHAMMAD IQBAL', 'FATIMA BANO', '0000-00-00', 'AMAR NAGAR, JAGRITI SEC. SCHOOL KE SAMNE', '2768', 0, 10, 1, '', '', '', '0000-00-00', 0),
(473, 'SHAHNAWAZ  KHAN', 'SABIR', 'SALMA', '0000-00-00', 'B - HARI DAS JI KI MAGRI', '2535', 0, 10, 1, '', '', '', '0000-00-00', 0),
(474, 'SK ABDULLA  ', 'SK FOZLUR RAHAMAN', 'ALIMA BEGUM', '0000-00-00', 'KOL POLE BADA BAZAR, WARD NO-45/142', '3216', 0, 10, 1, '', '', '', '0000-00-00', 0),
(475, 'SUMIT  SAHANI', 'ARUN SAHANI', 'SULEKHA SAHANI', '0000-00-00', 'RAMPURA CIRCLE, SHIV COLONY, NEAR GAS GODAM', '2853', 0, 10, 1, '', '', '', '0000-00-00', 0),
(476, 'TOSHIK  VAISHNAV', 'GANESH DAS VAISHNAV', 'REKHA VAISHNAV', '0000-00-00', 'SHIV TEMPLE SITA MATA ROAD, SISARAMA', '2483', 0, 10, 1, '', '', '', '0000-00-00', 0),
(477, 'AFREEN FATMA  MANSOORI', 'MOHAMMED AYUB MANSOORI', 'IRFANA BANU', '0000-00-00', 'S-22 NEAR SHIV MANDIR GANDHI NAGAR', '3683', 0, 11, 1, '', '', '', '0000-00-00', 0),
(478, 'ALFIYA  SHEIKH', 'SALEEM MOHAMMED SHEIKH', 'NEK PARVEEN SHEIKH', '0000-00-00', 'L-8, GANDHI NAGAR, MALLA TALAI', '3509', 0, 11, 1, '', '', '', '0000-00-00', 0),
(479, 'ALINA  SHEIKH', 'MOHD TANVEER SHEIKH', 'AFSANA BANO', '0000-00-00', '731, GARIB NAWAZ COLONY', '1947', 0, 11, 1, '', '', '', '0000-00-00', 0),
(480, 'ASMA  JABIN', 'AKIL MOHD', 'CHAMAN FATHMA', '0000-00-00', 'RAZA COLONY  MALLA TALAI', '1925', 0, 11, 1, '', '', '', '0000-00-00', 0),
(481, 'BHUMIKA  YADAV', 'RAJ KUMAR YADAV', 'MANORAMA YADAV', '0000-00-00', 'K-33 HARIDAS JI KI MAGRI', '1927', 0, 11, 1, '', '', '', '0000-00-00', 0),
(482, 'DEEPAK  MALI', 'FATEH LAL MALI', 'SEETA MALI', '0000-00-00', '39, HARSH NAGAR,RAMPURA', '2282', 0, 11, 1, '', '', '', '0000-00-00', 0),
(483, 'DIVYANSHI  PURBIA', 'LATE PRAVEEN PURBIA', 'KUSUM PURBIA', '0000-00-00', 'HARIDAS JI KI MAGRI', '2134', 0, 11, 1, '', '', '', '0000-00-00', 0),
(484, 'FAIZA  KHATOON', 'MOHD FAREED', 'ZUBKHA KHAN', '0000-00-00', 'GANDHI NAGAR S-83', '1938', 0, 11, 1, '', '', '', '0000-00-00', 0),
(485, 'GEET  YADAV', 'NARESH YADAV', 'HEMLATA YADAV', '0000-00-00', '209/4 HARIDAS JI KI MAGRI', '1953', 0, 11, 1, '', '', '', '0000-00-00', 0),
(486, 'HARSH VARDHAN SINGH', 'LAL SINGH RATHORE', 'LATA RATHORE', '0000-00-00', 'H2 HARIDAS JI KI MAGRI', '3224', 0, 11, 1, '', '', '', '0000-00-00', 0),
(487, 'HASNAIN RAZA  MANSOORI', 'AHMED HUSSAIN MANSOORI', 'PARVEEN BANO', '0000-00-00', '06 RATA KHETA 80 FEET ROAD', '3693', 0, 11, 1, '', '', '', '0000-00-00', 0),
(488, 'KANIZ FAATMA  ', 'MOHAMMED AYUB', 'MAKSUDA BANU', '0000-00-00', '3 GAVRI CHOWK RATA KHETA BACK SIDE', '3628', 0, 11, 1, '', '', '', '0000-00-00', 0),
(489, 'KARAN  SONI', 'VISHNU SONI', 'SUNITA SONI', '0000-00-00', 'J-33 HARIDAS JI KI MAGRI MALLA TALAI', '1931', 0, 11, 1, '', '', '', '0000-00-00', 0),
(490, 'KHUSHI  JOSHI', 'KAILASH JOSHI', 'MANJU JOSHI', '0000-00-00', 'B-9 HARIDAS JI KI MAGRI', '1948', 0, 11, 1, '', '', '', '0000-00-00', 0),
(491, 'MOHAMMED AMAN  ', 'MOHAMMED NISAR', 'MEHRUNISHA', '0000-00-00', 'OTC, SCHEME CHIPPA COLONY', '1999', 0, 11, 1, '', '', '', '0000-00-00', 0),
(492, 'MOHAMMED ARSH  KHAN', 'SHAHID KHAN', 'TARRANNUM KHAN', '0000-00-00', '80 FEET ROAD, B-BLOCK SAJJAN NAGAR', '2516', 0, 11, 1, '', '', '', '0000-00-00', 0),
(493, 'MOHAMMED ASJAD  RAZA', 'MOHAMMED IRFAN', 'ANJUM PARVEEN', '0000-00-00', '330, HATIPOLE UPPER KI MASJID SILAWAT WADI', '2781', 0, 11, 1, '', '', '', '0000-00-00', 0),
(494, 'MOHAMMED SERVER  ', 'JAVED HUSSAIN', 'SABRINA', '0000-00-00', '242, MALLA TALAI MANSURY COLONY', '2788', 0, 11, 1, '', '', '', '0000-00-00', 0),
(495, 'MOHAMMED SOYAL  ', 'MOHAMMED ASLAM', 'SHEHNAAZ PRAVEEN', '0000-00-00', 'CHIPA COLONY', '1957', 0, 11, 1, '', '', '', '0000-00-00', 0),
(496, 'MOHIT  SUTHAR', 'DINESH KUMAR SUTHAR', 'HEMLATA', '0000-00-00', '36 KANHAYA NAGAR NEAR GAS GOUDAM', '3534', 0, 11, 1, '', '', '', '0000-00-00', 0),
(497, 'MUKUL  YADAV', 'MUKESH YADAV', 'MAMTA YADAV', '0000-00-00', '9-K, HARIDAS JI KI MAGRI', '1939', 0, 11, 1, '', '', '', '0000-00-00', 0),
(498, 'NAVED  KHAN', 'SALIM KHAN', 'NAHID KHAN', '0000-00-00', '146, RAZA COLONY', '1942', 0, 11, 1, '', '', '', '0000-00-00', 0),
(499, 'NIDA  KHAN', 'IRSHAD HUSSAIN', 'YASMEEN', '0000-00-00', '34, RATA KHET SAJJAN NAGAR', '1997', 0, 11, 1, '', '', '', '0000-00-00', 0),
(500, 'PALAK  LAKHARA', 'ANAND LAKHARA', 'SAJJAN LAKHARA', '0000-00-00', 'DUDHIYA GANESH JI, MALLA TALAI', '2220', 0, 11, 1, '', '', '', '0000-00-00', 0),
(501, 'RANJANA  DANGI', 'KESHAV LAL DANGI', 'KANKU DEVI DANGI', '0000-00-00', '1-4 POLICE QUARTER,MALLA TALAI', '3380', 0, 11, 1, '', '', '', '0000-00-00', 0),
(502, 'SADAF  BANU', 'ISMAIL HUSSAIN', 'PAKIJA BANO', '0000-00-00', 'H.N.25 HARIDAS JI KI MAGRI, MALLA TALAI', '2854', 0, 11, 1, '', '', '', '0000-00-00', 0),
(503, 'SAHIL  KHAN', 'FARUKH KHAN', 'SHAMIM KHAN', '0000-00-00', 'SAJJAN NAGAR', '3222', 0, 11, 1, '', '', '', '0000-00-00', 0),
(504, 'SANA  RUHEEN', 'ABDUL HAMID', 'SHAHEENA ALI', '0000-00-00', '271, GARIB NAWAZ COLONY GALI NO.3', '3011', 0, 11, 1, '', '', '', '0000-00-00', 0),
(505, 'SURBHI  KUMAWAT', 'RAMESHWAR KUMAWAT', 'ANITA KUMAWAT', '0000-00-00', 'JAGDISH CHOWK', '3225', 0, 11, 1, '', '', '', '0000-00-00', 0),
(506, 'UMMEHABIBA  MAV', 'ASHFAQUE PATHAN', 'SIDDIQA RANI MAV', '0000-00-00', 'A-222, SAJJAN NAGAR', '2269', 0, 11, 1, '', '', '', '0000-00-00', 0),
(507, 'AAKASH  SONI', 'SAMPAT LAL SONI', 'BHARTI SONI', '0000-00-00', '16, PRAGATI NAGAR SAJJAN NAGAR ROAD', '2859', 0, 12, 1, '', '', '', '0000-00-00', 0),
(508, 'AAYAN  SHEIKH', 'HASNUDEEN SHEIKH', 'FARZANA SHEIKH', '0000-00-00', '56, CHITTORA KA TIMBA, ABOVE JATWARI', '1701', 0, 12, 1, '', '', '', '0000-00-00', 0),
(509, 'ALFIA  KHAN', 'RAEES KHAN', 'SHABAANA KHAN', '0000-00-00', '146, RAZA COLONY MALLA TALAI', '1633', 0, 12, 1, '', '', '', '0000-00-00', 0),
(510, 'ALMAS  SIDDIKA', 'MOHD HANIF', 'MUMTAJ', '0000-00-00', '528/16 OTC SCHEME CHIPPA COLONY', '1673', 0, 12, 1, '', '', '', '0000-00-00', 0),
(511, 'ASMA  BANU', 'MOHAMMED FARUKH MANSOORI', 'KHURSHIDA BANO', '0000-00-00', 'MOKHDUM NAGAR,IN FRONT OF MASTANA BABA', '1697', 0, 12, 1, '', '', '', '0000-00-00', 0),
(512, 'ASRA  SHEIKH', 'MOHAMMED ISHAQUE', 'BUSHRA SHEIKH', '0000-00-00', '148,RAZA COLONY,MALLA TALAI', '1682', 0, 12, 1, '', '', '', '0000-00-00', 0),
(513, 'DHRUVIKA  SUTHAR', 'SURESH CHANDRA SUTHAR', 'MANJU SUTHAR', '0000-00-00', '606, KARMSHEEL MARG, KHODI IMLI OUTSIDE CHANDPOLE', '1684', 0, 12, 1, '', '', '', '0000-00-00', 0),
(514, 'HIMANSHU  BHOI', 'LOKESH BHOI', 'PREM DEVI', '0000-00-00', 'HARIDAS JI KI MAGRI', '3435', 0, 12, 1, '', '', '', '0000-00-00', 0),
(515, 'KUNAL  SEN', 'HEMENDRA SEN', 'SHARDHA SEN', '0000-00-00', '94,RAO JI KA HATA', '2040', 0, 12, 1, '', '', '', '0000-00-00', 0),
(516, 'KUNAL  YADAV', 'RAJ KUMAR YADAV', 'MANJU YADAV', '0000-00-00', 'K-8, HARIDAS JI KI MAGRI', '1706', 0, 12, 1, '', '', '', '0000-00-00', 0),
(517, 'MOHAMMED AANAM  ', 'ASLAM KHAN', 'ANJUM NISHA', '0000-00-00', '146 FAROOQ-E-AZAM, NAGAR MALLA TALAI', '2018', 0, 12, 1, '', '', '', '0000-00-00', 0),
(518, 'MOHAMMED BILAL  MANSOORI', 'AHMED HUSSAIN MANSOORI', 'PARVEEN BANO', '0000-00-00', '06 RATA KHETA 80 FEET ROAD BEHIND RIMZIM WATIKA', '3694', 0, 12, 1, '', '', '', '0000-00-00', 0),
(519, 'MOHAMMED MUSHAHID RAZA', 'MOHAMMED MUSHARRAF RAZA', 'RUKHSANA MUSHARRAF', '0000-00-00', '408/2 SILAWAT WARI INSAID HATIPOLE', '3524', 0, 12, 1, '', '', '', '0000-00-00', 0),
(520, 'NOOR FATIMA ', 'FARID AHMED', 'RUKHSANA BANO', '0000-00-00', '246 NEAR BIG PARK MALLA TALAI', '3523', 0, 12, 1, '', '', '', '0000-00-00', 0),
(521, 'SIDDHARTH  CHOUDHARY', 'HEMENDRA CHOUDHARY', 'PUSHPA CHOUDHARY', '0000-00-00', 'NAI VILLAGE DEVA DEWARI KE PASS', '3638', 0, 12, 1, '', '', '', '0000-00-00', 0),
(522, 'AKSHAT  GOSWAMI', 'HARISH GOSWAMI', 'RAJNI GOSWAMI', '0000-00-00', '10, KOLPOL, BADA BAZAR', '1522', 0, 13, 1, '', '', '', '0000-00-00', 0),
(523, 'ANKIT  TELI', 'VIJAY SHANKER TELI', 'SITA DEVI', '0000-00-00', 'VINAYAK CHOUK BHUJDA', '1565', 0, 13, 1, '', '', '', '0000-00-00', 0),
(524, 'ASHAD  AHMED', 'JAHID AHMED', 'SHABANA BANO', '0000-00-00', '306, GARIB NAWAZ COLONY', '2249', 0, 13, 1, '', '', '', '0000-00-00', 0),
(525, 'DEEPAK  LAKHARA', 'ANANDI LAKHARA', 'SAJJAN LAKHARA', '0000-00-00', 'DUDHIYA GANESH JI, MALLA TALAI', '1447', 0, 13, 1, '', '', '', '0000-00-00', 0),
(526, 'DIKSHA  SEN', 'SUNIL SEN', 'PINKY SEN', '0000-00-00', '5,BHATT  WADI, AMBAMATA', '1468', 0, 13, 1, '', '', '', '0000-00-00', 0),
(527, 'DIVYA  JOSHI', 'RAJESH JOSHI', 'GAYATRI JOSHI', '0000-00-00', 'A-BLAOCK, 167 SAJJAN NAGAR', '1763/B', 0, 13, 1, '', '', '', '0000-00-00', 0),
(528, 'DIVYANSH  SEN', 'PANKAJ SEN', 'SHEETAL SEN', '0000-00-00', '2 VISHAL NAGAR RAMPURA', '1733/A', 0, 13, 1, '', '', '', '0000-00-00', 0),
(529, 'DIVYANSH  SONI', 'LALIT SONI', 'RANI SONI', '0000-00-00', '237, YADAV COLONY AMBAMATA', '1620', 0, 13, 1, '', '', '', '0000-00-00', 0),
(530, 'FAIZAN  RAZA', 'FARID MOHD', 'NASREEN SHEIKH', '0000-00-00', '308 FARUKH A AZAM COLONY', '2289', 0, 13, 1, '', '', '', '0000-00-00', 0),
(531, 'HAREEM RAZA ', 'MOHAMMED SIDDIQUE', 'MUMTAJ', '0000-00-00', '368, FARUQ AZAM COLONY, MALLA TALAI', '2045', 0, 13, 1, '', '', '', '0000-00-00', 0),
(532, 'IRAM  BANO', 'SHOKAT HUSSAIN', 'SHABANA BANU', '0000-00-00', 'DDP MOSQUE', '2037', 0, 13, 1, '', '', '', '0000-00-00', 0),
(533, 'KUSHAGRA  RAJMALI', 'JUGAL KISHORE RAJMALI', 'MANJU RAJMALI', '0000-00-00', 'L-47-MALLA TALAI NEAR MANSURI PARK', '2174', 0, 13, 1, '', '', '', '0000-00-00', 0),
(534, 'LOVELY  YADAV', 'VIKAS KUMAR YADAV', 'BALLO YADAV', '0000-00-00', 'K-24, HARI DAS JI KI MAGRI MALLA TALAI', '3043', 0, 13, 1, '', '', '', '0000-00-00', 0),
(535, 'MOHAMMED USMAN  ', 'MOHAMMED FARUK', 'MOSINA ANJUM', '0000-00-00', '528/140 OTC NEAR PANI KI  TANKI CHIPPA COLONY', '1644', 0, 13, 1, '', '', '', '0000-00-00', 0),
(536, 'NILESH  TELI', 'KHEM RAJ  TELI', 'RATAN DEVI', '0000-00-00', '18 NATHI GHAT MARG INSAID BRAHM POLE', '3528', 0, 13, 1, '', '', '', '0000-00-00', 0),
(537, 'PAYAL  SUTHAR', 'DINESH KUMAR SUTHAR', 'HEMLATA DEVI', '0000-00-00', '360KANHAYA NAGAR GAS GOUDAM RAMPURA', '3535', 0, 13, 1, '', '', '', '0000-00-00', 0),
(538, 'RUCHIKA  BHATI', 'DEVI SINGH', 'SUSHILA BHATI', '0000-00-00', '83, AMAR NAGAR', '1608', 0, 13, 1, '', '', '', '0000-00-00', 0),
(539, 'VIVEK  SONI', 'MAHENDRA PRAKASH SONI', 'HEMLATA SONI', '0000-00-00', '30, SUBHASH MARG JADIYO KI OAL', '1578', 0, 13, 1, '', '', '', '0000-00-00', 0),
(540, 'GOURANSH  PATWA', 'SATISH PATWA', 'SEEMA PATWA', '0000-00-00', 'H.NO. 140, NAGA NAGRI CHANDPOLE', '3442/14', 0, 5, 2, '', '', '', '0000-00-00', 0),
(541, 'IRAM  NAAZ', 'SHABBIR HUSSAIN', 'KULSUM BANO', '0000-00-00', 'K-16, SAJJAN NAGAR MASTANA BABA', '3411', 0, 5, 2, '', '', '', '0000-00-00', 0),
(542, 'JAGRATI  SEN', 'PRAMOD KUMAR SEN', 'MADHU SEN', '0000-00-00', 'J-33 HARIDAS JI KI MAGRI, BALVINAY MANDIR HOSTEL KA BESIDE.', '3322', 0, 5, 2, '', '', '', '0000-00-00', 0),
(543, 'KRIPA  KALAL', 'VIKRAM KALAL', 'ANJALI KALAL', '0000-00-00', '78-KD RATA KHET UDAIPUR NEAR BALSHIKSHA SADAN', '3323', 0, 5, 2, '', '', '', '0000-00-00', 0),
(544, 'KUSUM  SAHU', 'KAILASH SAHU', 'PUSHPA SAHU', '0000-00-00', 'HARIDASH JI KI MAGRI', '3331', 0, 5, 2, '', '', '', '0000-00-00', 0),
(545, 'MOHAMMED ABDUL  QUYYUM', 'MOHAMMED RAZZAK', 'SHABANA BANO', '0000-00-00', '92,RAZA COLONEY MALLA TALAI', '3396', 0, 5, 2, '', '', '', '0000-00-00', 0),
(546, 'MOHAMMED ADNAN  ', 'MOHAMMED SHAKEEL', 'SANJIDA BANU', '0000-00-00', '23,RATA KHET NEAR GAVRI CHOWK', '3166', 0, 5, 2, '', '', '', '0000-00-00', 0),
(547, 'MOHAMMED ARMAN  ', 'MOHAMMED HUSSAIN', 'RANU TABASSUM', '0000-00-00', '1638,RATA KHET GAWARI CHOWK', '3333', 0, 5, 2, '', '', '', '0000-00-00', 0),
(548, 'NAVYA VAISHNAV  ', 'MANOJ VAISHNAV', 'PRAMILA VAISHNAV', '0000-00-00', 'BEHIND KOTHARI SADAN UBESHWAR ROAD RAMPURA', '3725', 0, 5, 2, '', '', '', '0000-00-00', 0),
(549, 'SHARAD  AKHAWAT', 'ASHOK AKHAWAT', 'MADHU', '0000-00-00', '315/B GARIB NAWAZ COLONY', '3410', 0, 5, 2, '', '', '', '0000-00-00', 0),
(550, 'ALINA  NOORANI', 'MOHAMMED SHARIF MANSOORI', 'SAYRA BEGAM', '0000-00-00', '3077 B BLOCK SAJJAN NAGAR 80 FEET ROAD MALLA TALAI', '3679', 0, 6, 2, '', '', '', '0000-00-00', 0),
(551, 'ALOK  BHARTI', 'SEWA RAM BHARTI', 'REETA BHARTI', '0000-00-00', 'B-4, HARI DAS JI KI MAGRI, MALLA TALAI', '3441/14', 0, 6, 2, '', '', '', '0000-00-00', 0),
(552, 'ANKIT  SAHANI', 'MONTU SAHANI', 'REENA DEVI', '0000-00-00', 'B-12 HARIDAS JI KI MAGRI', '3130', 0, 6, 2, '', '', '', '0000-00-00', 0),
(553, 'JAYESH  OAD', 'BHAGWATI LAL OAD', 'DURGA OAD', '0000-00-00', 'B-30, HARI DAS JI KI MAGRI', '3104', 0, 6, 2, '', '', '', '0000-00-00', 0),
(554, 'MOHAMMED AADIL  ', 'AKIL MOHAMMED', 'KANIZA BANU', '0000-00-00', '23,RATA KHET NEAR GAVRI CHOWK', '3102', 0, 6, 2, '', '', '', '0000-00-00', 0),
(555, 'MOHAMMED AZLAN  MANSOORI', 'MUSHTAQ AHMED', 'SHAMIM', '0000-00-00', '293,FAROOQ-E-AZAM NAGAR MALLA TALAI', '3149', 0, 6, 2, '', '', '', '0000-00-00', 0),
(556, 'MUHIYUDDIN  HUSSAIN', 'AAFTAB HUSSAIN', 'TEHMEENA NAZ SHEIKH', '0000-00-00', '9,DR. ZAKIR HUSSAIN MARG, INSIDE HATHIPOLE, UDAIPUR.', '3361', 0, 6, 2, '', '', '', '0000-00-00', 0),
(557, 'PAWAN KUMAR SUHALKA', 'BHUPENDRA SUHALKA', 'FULWANTI SUHALKA', '0000-00-00', '63, RAMPURA POST SISARMA', '3108', 0, 6, 2, '', '', '', '0000-00-00', 0),
(558, 'PAYAL  SUHALKA', 'PANKAJ SUHALKA', 'YASHODA SUHALKA', '0000-00-00', '', '2907', 0, 6, 2, '', '', '', '0000-00-00', 0),
(559, 'SHAHID  RAZA', 'SWALEH MOHD', 'NOORANI BANU', '0000-00-00', '235,MALLA TALAI', '3091', 0, 6, 2, '', '', '', '0000-00-00', 0),
(560, 'ALISHA  KHAN', 'RAIS KHAN', 'KANIZ FATIMA', '0000-00-00', '271,A-BLOCK, SAJJAN NAGAR', '3019', 0, 7, 2, '', '', '', '0000-00-00', 0),
(561, 'ASMA BANO MANSOORI', 'FARID AHMED MANSOORI', 'RUKSANA BANO', '0000-00-00', '246 NEAR MANSOORI PARK MULLA TALAI', '3521', 0, 7, 2, '', '', '', '0000-00-00', 0),
(562, 'BHANU PRATAP  BAIRWA', 'PRAKASH CHANDRA BAIRWA', 'SHAKUNTLA', '0000-00-00', 'HARIDAS JI KI MAGRI MALLA TALAI UDAIPUR', '2983', 0, 7, 2, '', '', '', '0000-00-00', 0),
(563, 'BHAVESH  KASERA', 'SURENDRA KASERA', 'KIRAN KASERA', '0000-00-00', '19 BHADESSAR KA CHOWH JAGDISH CHOWK', '3539', 0, 7, 2, '', '', '', '0000-00-00', 0),
(564, 'JINAL  GEHLOT', 'RAJESH GEHLOT', 'AARTI GEHLOT', '0000-00-00', '29-B, KESHAV NAGAR', '2891', 0, 7, 2, '', '', '', '0000-00-00', 0),
(565, 'MASUMA  KHATUN', 'MOHAMMED ALI', 'TUHEENA BIBI', '0000-00-00', '14, KOL POLE BADA BAZAR', '3016', 0, 7, 2, '', '', '', '0000-00-00', 0),
(566, 'MOHAMMED ADNAN  MANSOORI', 'MOHAMMED AYUB MANSOORI', 'IRFANA BANU', '0000-00-00', 'S-22 NEAR SHIV MANDIR GANDHI NAGAR', '3681', 0, 7, 2, '', '', '', '0000-00-00', 0),
(567, 'MOHAMMED FAIZAL  KHAN', 'MOHD SALIM KHAN', 'FARHAT KHAN', '0000-00-00', 'H.NO.54, JATWADI', '2901', 0, 7, 2, '', '', '', '0000-00-00', 0),
(568, 'MOHAMMED REHAN  ', 'MOHAMMED FARUK', 'MOHSINA', '0000-00-00', '528/14 OTC', '3074', 0, 7, 2, '', '', '', '0000-00-00', 0),
(569, 'MOHAMMED SARIK  KHAN', 'MOHAMMED TARIK KHAN', 'SHIREEN', '0000-00-00', 'AHMED HUSSAIN COLONY BEHIND MASTANA BABA', '3052', 0, 7, 2, '', '', '', '0000-00-00', 0),
(570, 'MOHAMMED TOQEER  RAZA', 'ABDUL ATIK SHEIKH', 'SHAFEENA SHEIKH', '0000-00-00', '40,DR.RAM MANNOHAR LOHIYA NAGAR SAJJANNAGAR', '2956', 0, 7, 2, '', '', '', '0000-00-00', 0),
(571, 'MOHAMMED UBAID  ASHRAF', 'MOHAMMED AYUB', 'MAKSUDA BANU', '0000-00-00', '3,RATAKHET, GGARI CHOUK SAJJAN NAGAR', '2929', 0, 7, 2, '', '', '', '0000-00-00', 0),
(572, 'RUDRAKSHI  SONI', 'GOPAL SONI', 'MEENA SONI', '0000-00-00', '13-A AZAD NAGAR 80 FEET ROAD', '3362', 0, 7, 2, '', '', '', '0000-00-00', 0),
(573, 'SARA  ALI', 'WAZID ALI MANSOORI', 'ANISHA ALI', '0000-00-00', '3-RATA KHET GAVRI CHOUK', '2928', 0, 7, 2, '', '', '', '0000-00-00', 0),
(574, 'UNEZA  KHAN', 'YUSUF BAKSH', 'SALMA PATHAN', '0000-00-00', 'GANDHI NAGAR IN FRONT OF MASTAN PIYA', '2959', 0, 7, 2, '', '', '', '0000-00-00', 0),
(575, 'YASH  SAHU', 'KAILASH SAHU', 'PUSHPA SAHU', '0000-00-00', '19 -K, HARIDAS JI KI MAGRI UDAIPUR', '2932', 0, 7, 2, '', '', '', '0000-00-00', 0),
(576, 'ARMANA BEE  ', 'MUMTAZ ALI', 'REHANA BEE', '0000-00-00', '', '3662', 0, 8, 2, '', '', '', '0000-00-00', 0),
(577, 'CHESHTA  CHOUDHARY', 'DILIP CHOUDHARY', 'SAROJ CHOUDHARY', '0000-00-00', 'VILLAGE NAI', '3189', 0, 8, 2, '', '', '', '0000-00-00', 0),
(578, 'DAYAWANTI TELI  ', 'MADAN TELI', 'PUSHPA TELI', '0000-00-00', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '3739', 0, 8, 2, '', '', '', '0000-00-00', 0),
(579, 'FAIZAN  HUSSAIN', 'SHABBIR HUSSAIN', 'FARZANA', '0000-00-00', 'RAZA COLONY, MALLA TALAI', '3190', 0, 8, 2, '', '', '', '0000-00-00', 0),
(580, 'ISHIKA  MALHOTRA', 'KISHORE MALHOTRA', 'USHA MALHOTRA', '0000-00-00', '496,OTC D-BLOCK GANDHI NAGAR', '3303', 0, 8, 2, '', '', '', '0000-00-00', 0),
(581, 'JUHI  PANWAR', 'MAHESH PANWAR', 'SUNITA PANWAR', '0000-00-00', '38,B HARIDAS JI KI MAGRI', '2720', 0, 8, 2, '', '', '', '0000-00-00', 0),
(582, 'KHUSHI  KASERA', 'SHANKAR KASERA', 'ASHA KASERA', '0000-00-00', 'O/SIDE BHRAMHPOLE', '3200', 0, 8, 2, '', '', '', '0000-00-00', 0),
(583, 'MAHINOOR  KHAN', 'TAHIR HUSSAIN', 'REHANA KHAN', '0000-00-00', '697,MALLA TALAI, NEAR MAGRI SCHOOL', '2734', 0, 8, 2, '', '', '', '0000-00-00', 0),
(584, 'MOHAMMED ABDUL RAZZAQ ', 'YUSUF KHAN', 'MUBINA BANU', '0000-00-00', 'AHMED HUSSAIN COLONY, MASTANA BABA BEHIND GALI NO.3', '3201', 0, 8, 2, '', '', '', '0000-00-00', 0),
(585, 'MOHAMMED FAIZAN  ', 'ABID HUSSAIN', 'SABRA BANO', '0000-00-00', '28 - NEW RAMPURA SISARMA ROAD', '2739', 0, 8, 2, '', '', '', '0000-00-00', 0),
(586, 'MOHAMMED REHAN  ', 'MOHAMMED RAZZAK KHAN', 'SHABANA BANO', '0000-00-00', '92, MALLA TALAI RAZA COLONY', '2731', 0, 8, 2, '', '', '', '0000-00-00', 0),
(587, 'NIHANSHI  SONI', 'LALIT SONI', 'RANI SONI', '0000-00-00', '237, YADAV COLONY', '2697', 0, 8, 2, '', '', '', '0000-00-00', 0),
(588, 'PIYUSH  SEN', 'SUNIL SEN', 'PREETI SEN', '0000-00-00', 'HARIDAS JI KI MAGRI H.NO.- K-19', '2915', 0, 8, 2, '', '', '', '0000-00-00', 0),
(589, 'PREETAM SINGH BHATI', 'DEVI SINGH BHATI', 'SHUSHILA BHATI', '0000-00-00', 'HN 83 OTC B BLOCK AMAR NAGAR', '3354', 0, 8, 2, '', '', '', '0000-00-00', 0),
(590, 'PRITHVIRAJ SINGH CHOUHAN', 'HARENDRA SINGH CHOUHAN', 'POONAM CHOUHAN', '0000-00-00', '222, HARSH NAGAR RAMPURA', '2876', 0, 8, 2, '', '', '', '0000-00-00', 0),
(591, 'RUDRAKSHI  SONI', 'HEMANT SONI', 'DEEPIKA SONI', '0000-00-00', '45 DHABAI JI KI BARI NEAR CHOUDHRY GUEST HOUSE UBESHWAR JI ROAD', '3696', 0, 8, 2, '', '', '', '0000-00-00', 0),
(592, 'VISHAL  PATEL', 'GANESH LAL PATEL', 'DEVI PATEL', '0000-00-00', 'K215 , KARMSHEEL MARG AMBAWARI CHANDPOLE BAHAR', '3045', 0, 8, 2, '', '', '', '0000-00-00', 0),
(593, 'YASH  PARIHAR', 'KAMLESH PARIHAR', 'RANU PARIHAR', '0000-00-00', '334, GANDHI NAGAR MALLA TALAI', '2878', 0, 8, 2, '', '', '', '0000-00-00', 0),
(594, 'BHARAT  KHILOLIYA', 'AMRIT KHILOLIYA', 'HEMALATA KHILOLIYA', '0000-00-00', '31, B- HARIDAS JI KI MAGRI', '2887', 0, 9, 2, '', '', '', '0000-00-00', 0),
(595, 'BHUMI  CHOUHAN', 'RANVEER CHOUHAN', 'RADHA CHOUHAN', '0000-00-00', 'H.NO.370, AMBAMATA YADAV COLONY', '2299', 0, 9, 2, '', '', '', '0000-00-00', 0),
(596, 'DARSHIL  SUHALKA', 'RAMESH SUHALKA', 'JASHODA SUHALKA', '0000-00-00', '272, SAJJAN NAGAR ROAD.', '2419', 0, 9, 2, '', '', '', '0000-00-00', 0),
(597, 'DEEPESH  YADAV', 'JAI PRAKASH YADAV', 'SEEMA YADAV', '0000-00-00', '13,YADAV COLONY, AMBA MATA', '3203', 0, 9, 2, '', '', '', '0000-00-00', 0),
(598, 'HARSHIT  YADAV', 'BUNTY YADAV', 'MEERA YADAV', '0000-00-00', '80, FEET ROAD, MALLA TALAI', '2414', 0, 9, 2, '', '', '', '0000-00-00', 0),
(599, 'HARSHITA  SAHU', 'KAILASH SAHU', 'PUSHPA SAHU', '0000-00-00', 'HARIDAS JI KI MAGRI', '2662', 0, 9, 2, '', '', '', '0000-00-00', 0),
(600, 'KHUSHI  SONI', 'VISHNU SONI', 'SUNITA SONI', '0000-00-00', 'J-33 HARIDAS JI KI MAGRI', '2332', 0, 9, 2, '', '', '', '0000-00-00', 0),
(601, 'KUNJAL  YADAV', 'MUKESH YADAV', 'MAMTA YADAV', '0000-00-00', 'K-9 HARIDAS JI KI MAGRI', '2406', 0, 9, 2, '', '', '', '0000-00-00', 0),
(602, 'MOHAMMED AAMIN  MANSOORI', 'SALIM MOHAMMED MANSOORI', 'NASEEM BANU', '0000-00-00', '80, FEET, RATA KHET, NAGAR MASJID 33', '2482', 0, 9, 2, '', '', '', '0000-00-00', 0),
(603, 'NIDHI  YADAV', 'NARESH YADAV', 'HEMLATA YADAV', '0000-00-00', '25-E- HARIDAS JI KI MAGRI', '2401', 0, 9, 2, '', '', '', '0000-00-00', 0),
(604, 'NILAKSHI  GURJAR', 'TEJRAM GURJAR', 'MANJU GURJAR', '0000-00-00', '28, UBESHWAR ROAD', '2451', 0, 9, 2, '', '', '', '0000-00-00', 0),
(605, 'NISHAT  JAHAN', 'ABDUL WAHID', 'SHAHIN BANU', '0000-00-00', '814-6, KOMI EKTA NAGAR', '2441', 0, 9, 2, '', '', '', '0000-00-00', 0),
(606, 'PRIYANSHI  MUNDAVALIA', 'GOPAL MUNDAVALIA', 'INDU MUNDAVALIA', '0000-00-00', '74- HARI DAS JI KI MAGRI', '2424', 0, 9, 2, '', '', '', '0000-00-00', 0),
(607, 'SUFIYAN  HUSSAIN', 'ISMAIL HUSSAIN', 'PAKIZA BANU', '0000-00-00', 'HARIDAS JI KI MAGRI', '2666', 0, 9, 2, '', '', '', '0000-00-00', 0),
(608, 'LATIKA  LAKHARA', 'SUNDAR LAL LAKHARA', 'JYOTI LAKHARA', '0000-00-00', '113 B BLOCK SAJJAN NAGAR', '3627', 0, 4, 2, '', '', '', '0000-00-00', 0),
(609, 'MOHAMMED ZAID  ', 'MOHAMMED FAROOQ', 'GOHAR TASNEEM', '0000-00-00', '315/B GARIB NAWAZ COLONY MALLAH TALAI', '3758', 0, 4, 2, '', '', '', '0000-00-00', 0),
(610, 'MOHIT  GURJAR', 'SURESH GURJAR', 'MAMTA GURJAR', '0000-00-00', 'VILLAGE GORRILA', '3692', 0, 4, 2, '', '', '', '0000-00-00', 0),
(611, 'RIDA  CHHIPA', 'FARUKH MOHD', 'MEHRBAN CHHIPA', '0000-00-00', '1308, KOMI EKTA NAGAR', '3475', 0, 4, 2, '', '', '', '0000-00-00', 0),
(612, 'VAISHNAVI  SONI', 'NAVEEN SONI', 'BHARTI SONI', '0000-00-00', 'J-6, HARIDAS JI KI MAGRI', '3462', 0, 4, 2, '', '', '', '0000-00-00', 0),
(613, 'VIKUL  KASHYAP', 'SHASHI KUMAR KASHYAP', 'SHASHI KASHYAP', '0000-00-00', '580 HARI DAS JI KI MAGARI MALLA TALI', '3490', 0, 4, 2, '', '', '', '0000-00-00', 0),
(614, 'DURVA SONI  ', 'GOPAL SONI', 'MEENA SONI', '0000-00-00', '43 NEAR GOVT. SCHOOL EKLAVYA COLONY', '3722', 0, 3, 2, '', '', '', '0000-00-00', 0),
(615, 'HARDIK  SINDHAL', 'DEVI LAL SINDHAL', 'DALI BAI', '0000-00-00', '11-B HARI DAS JI KI MAGARI', '3588', 0, 3, 2, '', '', '', '0000-00-00', 0),
(616, 'HARSHAL SINDHAL  ', 'MAHESH SINDHAL', 'SEEMA SINDHAL', '0000-00-00', 'J -9 HARIDAS JI KI MAGRI', '3756', 0, 3, 2, '', '', '', '0000-00-00', 0),
(617, 'IFRA BANO  ', 'NASEEB RAZA', 'SHABANA BANO', '0000-00-00', '528/26 OTC SCHEME CHHIPA COLONY', '3718', 0, 3, 2, '', '', '', '0000-00-00', 0),
(618, 'JATIN  GURJAR', 'TEJ RAM GURJAR', 'MANJU DEVI GURJAR', '0000-00-00', 'UBESHWAR ROAD GORELA', '3574', 0, 3, 2, '', '', '', '0000-00-00', 0),
(619, 'KANISHKA KUMAWAT  ', 'NANDKISHOR KUMAWAT', 'REENA KUMAWAT', '0000-00-00', '6 HARIDAS JI KI MAGRI', '3706', 0, 3, 2, '', '', '', '0000-00-00', 0),
(620, 'KHIZRA  BANO', 'MOHAMMED FAROOQ', 'SAMREEN', '0000-00-00', '92 RAZA COLONEY NEAR CHARAK HOSTAL', '3598', 0, 3, 2, '', '', '', '0000-00-00', 0),
(621, 'KULDEEP  GURJAR', 'KISHAN GURJAR', 'LALITA GURJAR', '0000-00-00', 'GAON GORRILA', '3593', 0, 3, 2, '', '', '', '0000-00-00', 0),
(622, 'LAKSH SUHALKA  ', 'ANAND SUHALKA', 'SANJU SUHALKA', '0000-00-00', '1021 NEAR JAGRITI SCHOOL EKLAVYA COLONY', '3750', 0, 3, 2, '', '', '', '0000-00-00', 0),
(623, 'LAKSHITA  KUMAWAT', 'CHANDRA PRAKASH KUMAWAT', 'HEMLATA KUMAWAT', '0000-00-00', '26, JADA GANESH JI KA CHOWK', '3757', 0, 3, 2, '', '', '', '0000-00-00', 0),
(624, 'LATIKA  SEN', 'KHEMRAJ SEN', 'RANI SEN', '0000-00-00', '24 BAJRANG MARG JADA GANESH JI', '3607', 0, 3, 2, '', '', '', '0000-00-00', 0),
(625, 'RAGINI  YADAV', 'JITENDRA YADAV', 'GEETANJALI YADAV', '0000-00-00', 'K - 6 HARIDAS JI KI MAGRI', '3708', 0, 3, 2, '', '', '', '0000-00-00', 0),
(626, 'YATHARTH SIKLIGAR  ', 'SUNIL SIKLIGAR', 'JHANKAR SIKLIGAR', '0000-00-00', 'NATHI GHAT BRAHMPOLE', '3749', 0, 3, 2, '', '', '', '0000-00-00', 0),
(627, 'AASIM  RAZA', 'ASHFAQ HUSSAIN', 'AQUEELA BANU', '0000-00-00', '224, A-BLOCK SAJJAN NAGAR', '2770', 0, 10, 2, '', '', '', '0000-00-00', 0),
(628, 'AMAY  BHATT', 'KULDEEP BHATT', 'HEMLATA BHATT', '0000-00-00', '258, AMBAWADI RAMPURA UBAISHWAR ROAD', '3506', 0, 10, 2, '', '', '', '0000-00-00', 0),
(629, 'MAHEEN  KOUSAR', 'PARWEZ KHAN', 'SHAHZAD BANU', '0000-00-00', 'RAM MANOHAR LOHIYA KACHCHI BASTI', '2957', 0, 10, 2, '', '', '', '0000-00-00', 0),
(630, 'MIHIR  SEN', 'UKAAR LAL SEN', 'SHUSHILA SUMARI', '0000-00-00', 'DUDHIYA GANESH JI SAJJAN GARH ROAD', '3650', 0, 10, 2, '', '', '', '0000-00-00', 0),
(631, 'MOHAMMED HAADI  KHAN', 'MOHAMMED HANIF KHAN', 'SHABANA BANO', '0000-00-00', '17, KALLE SATH NEAR MOSQUE SILAWAT WADI', '2525', 0, 10, 2, '', '', '', '0000-00-00', 0),
(632, 'MOHIT  SUTHAR', 'KHAYALI LAL SUTHAR', 'SHARDA SUTHAR', '0000-00-00', '128, MALDAS STREET', '2529', 0, 10, 2, '', '', '', '0000-00-00', 0),
(633, 'MUKESH  SAHANI', 'LAKSHMAN SAHANI', 'DUKHNI SAHANI', '0000-00-00', 'HARIDAS JI K I MAGRI, MALLA TALAI', '2293', 0, 10, 2, '', '', '', '0000-00-00', 0),
(634, 'NIDA  BANU', 'SALEEM MOHAMMED CHHIPA', 'HEENA BANU', '0000-00-00', '258/14, O.T.C. SCHEME CHHIPA COLONY', '2376', 0, 10, 2, '', '', '', '0000-00-00', 0),
(635, 'PRAVEEN  MALI', 'FATEH LAL MALI', 'SITA MALI', '0000-00-00', '39, HARSH NAGAR', '2281', 0, 10, 2, '', '', '', '0000-00-00', 0),
(636, 'RASHIKA BANO MANSOORI', 'FARID AHMED', 'RUKSANA BANO', '0000-00-00', '246 NEAR BIG PARK MULLA TALAI', '3522', 0, 10, 2, '', '', '', '0000-00-00', 0),
(637, 'SAKSHI  SONI', 'DEEPAK SONI', 'HEMA SONI', '0000-00-00', 'RAO JI KA HATA INFRONT OF SAJJAN NAGAR HOUSE', '1950', 0, 10, 2, '', '', '', '0000-00-00', 0),
(638, 'SALONI  LAKHARA', 'PURUSHOTTAM LAKHARA', 'KALPANA LAKHARA', '0000-00-00', '53, GURU KRIPA DUDHIYA GANESH JI', '2487', 0, 10, 2, '', '', '', '0000-00-00', 0),
(639, 'SANIYA  BANU', 'MOHAMMEDD ISMAIL', 'SHABANA BANO', '0000-00-00', '333-MASTANA PIYA COLONY, CHURCH ROAD MALLA TALAI', '2767', 0, 10, 2, '', '', '', '0000-00-00', 0),
(640, 'SANIYA  KHAN', 'MOHD ZAFAR KHAN', 'AFROZ KHAN', '0000-00-00', '54, JAT, WADI', '2902', 0, 10, 2, '', '', '', '0000-00-00', 0),
(641, 'SUMBUL  RAZA', 'IRSHAD KHAN', 'SHER BANO', '0000-00-00', 'BICHCHU GATI, KELWA HOUSE        UDAIPUR', '2310', 0, 10, 2, '', '', '', '0000-00-00', 0),
(642, 'AYESHA  SIDDIKA', 'SIDDIK HUSSAIN', 'FARZANA BANO', '0000-00-00', '264 O.T.C A -BLOCK, SAJJAN NAGAR, MALLA TALAI', '2520', 0, 11, 2, '', '', '', '0000-00-00', 0),
(643, 'FAIZAN  HUSSAIN', 'ZAKIR HUSSAIN', 'JEBUN NISHA', '0000-00-00', 'K-16, MASTAN BABA ROAD, ODD BASTI', '2521', 0, 11, 2, '', '', '', '0000-00-00', 0),
(644, 'FARHAN  KHAN', 'ZAHID HUSSAIN', 'SHABNAM BANU', '0000-00-00', 'H.N-46 SAJJAN NAGAR BLOCK A, OTC SCHEME', '1995', 0, 11, 2, '', '', '', '0000-00-00', 0),
(645, 'HARDIK  MUNDANIYA', 'HARISH MUNDANIYA', 'MADHU MUNDANIYA', '0000-00-00', 'PRATAP BHAWAN INSIDE SURAJ POLE', '2325', 0, 11, 2, '', '', '', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`, `hold`) VALUES
(646, 'IZHAN  SHEIKH', 'MOHD ARSHAD SHEIKH', 'AALAM ARA SHEIKH', '0000-00-00', '304, MASRAT MANZIL, GANDHI NAGAR, MALLA TALAI', '2536', 0, 11, 2, '', '', '', '0000-00-00', 0),
(647, 'KUNAL  PRAJAPAT', 'NAND LAL PRAJAPAT', 'DAYA PRAJAPAT', '0000-00-00', 'B-2 HARIDAS JI KI MAGRI MALLA TALAI', '1945', 0, 11, 2, '', '', '', '0000-00-00', 0),
(648, 'MANAV  KALAL', 'VIKRAM KALAL', 'ANJU KALAL', '0000-00-00', '78, KD RATA KHET SHIV MANDIR KE PASS', '2379', 0, 11, 2, '', '', '', '0000-00-00', 0),
(649, 'MISBA  MANSOORI', 'SHABBIR HUSSAIN', 'SHABANA ANJUM', '0000-00-00', '216, MALLA TALAI UDAIPUR', '2142', 0, 11, 2, '', '', '', '0000-00-00', 0),
(650, 'MOHAMMED AYAN  KHAN', 'MOHAMMED ANWAR KHAN', 'RUBINA KHAN', '0000-00-00', 'H.N-54 JATWADI UDIAPUR', '2903', 0, 11, 2, '', '', '', '0000-00-00', 0),
(651, 'MOHAMMED SARJEEL  ', 'AAZAD MOHAMMED', 'SHAHIN BANO', '0000-00-00', '271, B- BLOCK 80 FEET ROAD RATA KHET', '2792', 0, 11, 2, '', '', '', '0000-00-00', 0),
(652, 'NANDINI  CHETNANI', 'SHYAM CHETNANI', 'ANITA CHETNANI', '0000-00-00', 'JAWAHAR NAGAR', '2791', 0, 11, 2, '', '', '', '0000-00-00', 0),
(653, 'PREETI  KACHAWA', 'JITENDRA KACHAWA', 'REKHA KACHAWA', '0000-00-00', 'B-30, HARIDAS JI KI MAGRI', '2145', 0, 11, 2, '', '', '', '0000-00-00', 0),
(654, 'RISHABH  TELI', 'CHANDRA SHEKHAR TELI', 'VISHNU TELI', '0000-00-00', '384, HARSH NAGAR, RATA KHET', '3514', 0, 11, 2, '', '', '', '0000-00-00', 0),
(655, 'RIYA  SUHALKA', 'RAMESH SUHALKA', 'YASHODA SUHALKA', '0000-00-00', 'PLOT NO.-272 SAJJAN GARH ROAD MALLA TALAI', '1943', 0, 11, 2, '', '', '', '0000-00-00', 0),
(656, 'RUDRAKSH  PALIWAL', 'RAKESH PALIWAL', 'JAYSHREE PALIWAL', '0000-00-00', '1956, NEW RAMPURA COLONY', '1994', 0, 11, 2, '', '', '', '0000-00-00', 0),
(657, 'SHIDRA  KHAN', 'MOHD SHAHID KHAN', 'SULTANA BEGUM', '0000-00-00', 'H.N.718 JATWADI NEAR KALLESAT MOSQUE', '1975', 0, 11, 2, '', '', '', '0000-00-00', 0),
(658, 'SUJAIN  MAKRANI', 'MEHFUZ KHAN', 'SHAMIM MAKRANI', '0000-00-00', '10, AMAR NAGAR NEAR BABA COLONY', '1972', 0, 11, 2, '', '', '', '0000-00-00', 0),
(659, 'UZMA  BANO', 'MOHAMMED RAZAK', 'SHABANA BANO', '0000-00-00', '92, RAZA COLONY, MALLA TALAI', '1941', 0, 11, 2, '', '', '', '0000-00-00', 0),
(660, 'UZRA  BANO', 'MOHAMMED RAZAK', 'SHABANA BANO', '0000-00-00', '92, RAZA COLONY, MALLA TALAI', '1940', 0, 11, 2, '', '', '', '0000-00-00', 0),
(661, 'VIKAS  SAHANI', 'UMA SHANKAR SAHANI', 'VIBHA SAHANI', '0000-00-00', 'K-40 HARIDAS JI KI MAGRI', '2360', 0, 11, 2, '', '', '', '0000-00-00', 0),
(662, 'YAMIN  HUSSAIN', 'SABBIR HUSSAIN', 'KALSUM BANO', '0000-00-00', 'K-16 MASTAN BABA ROAD', '2522', 0, 11, 2, '', '', '', '0000-00-00', 0),
(663, 'ALINA BANU PINJARA', 'SHAKEEL MOHAMMED', 'SANJEEDA BANU', '0000-00-00', '191, RAZA COLONY MALLA TALAI', '1727', 0, 12, 2, '', '', '', '0000-00-00', 0),
(664, 'DAKSH  PANWAR', 'MAHESH PANWAR', 'SUNITA PANWAR', '0000-00-00', '38, B- HARIDAS JI KI MAGRI', '2960', 0, 12, 2, '', '', '', '0000-00-00', 0),
(665, 'LOVE  SONI', 'MAHESH SONI', 'PREMLATA SONI', '0000-00-00', '235, RAO JI KA HATA', '2794', 0, 12, 2, '', '', '', '0000-00-00', 0),
(666, 'MISHBA  GUL', 'ASHAFAQ HUSSAIN', 'AKEELA', '0000-00-00', '224, A- BLOCK, SAJJAN NAGAR', '1696', 0, 12, 2, '', '', '', '0000-00-00', 0),
(667, 'MOHAMMED KAIF  RAZA', 'MEHRUDDIN KHAN', 'NAZIMA BANO', '0000-00-00', '80 FEET ROAD RATA KHET IN FRONT OF ALMIRAH FACTORY', '2793', 0, 12, 2, '', '', '', '0000-00-00', 0),
(668, 'MOHAMMED SHAHIR  KHAN', 'SHARIF KHAN', 'SHABANA', '0000-00-00', '52 RAZA COLONY, MALLA TALAI', '2890', 0, 12, 2, '', '', '', '0000-00-00', 0),
(669, 'MUSKAN  VAISHNAV', 'MANOJ VAISHNAV', 'PRAMILA VAISHNAV', '0000-00-00', 'NEW RAMPURA', '2016', 0, 12, 2, '', '', '', '0000-00-00', 0),
(670, 'NIDA  SHABBAR', 'SHABBAR AHMED', 'SHABNAM', '0000-00-00', 'NIMACH KHEDHA, DEWALI', '2186', 0, 12, 2, '', '', '', '0000-00-00', 0),
(671, 'NIHARIKA  SEN', 'NARENDRA SEN', 'RADHA SEN', '0000-00-00', 'HARIDAS JI KI MAGRI, MALLA TALAI', '1676', 0, 12, 2, '', '', '', '0000-00-00', 0),
(672, 'NOSHEEN  KHAN', 'DIL NISAR KHAN', 'NASREEN', '0000-00-00', 'GARIB NAWAZ COLONY, MALLA TALAI', '1637', 0, 12, 2, '', '', '', '0000-00-00', 0),
(673, 'RAVI  YADAV', 'VIKAS K YADAV', 'VIMLESH YADAV', '0000-00-00', 'HARI DAS JI KI MAGRI', '3044', 0, 12, 2, '', '', '', '0000-00-00', 0),
(674, 'RIYA  BHATI', 'GHANSHYAM LAL TELI', 'RADHA TELI', '0000-00-00', '14, HARI DAS JI KI MAGRI', '1709', 0, 12, 2, '', '', '', '0000-00-00', 0),
(675, 'SAMEERA  KHAN', 'MOHAMMED HANEEF', 'SHABANA', '0000-00-00', '17, KALLESATH NEAR MOSQUE', '1635', 0, 12, 2, '', '', '', '0000-00-00', 0),
(676, 'SANIYA  RANGREZ', 'MOHAMMED HARUN RANGREZ', 'NILOFAR RANGREZ', '0000-00-00', '22, SINDHI SAROLAR KI HAVELI, KHERA DI WADA', '2021', 0, 12, 2, '', '', '', '0000-00-00', 0),
(677, 'SHIFA  BEGUM', 'SHAMSHUDDIN', 'SALMA ARA', '0000-00-00', '25, HARIDAS JI KI MAGRI', '1951', 0, 12, 2, '', '', '', '0000-00-00', 0),
(678, 'SIBTAIN  RAZA', 'MOHAMMED SHEIKH RAZA', 'SULTANA BANU', '0000-00-00', '718, JAT WADI NEAR KALESAT MASJID', '1736', 0, 12, 2, '', '', '', '0000-00-00', 0),
(679, 'TANZEELA  AHMED', 'MOHAMMED SAYEED', 'RIZWANA BANU', '0000-00-00', '73, MALLA TALAI NEAR DEAF AND SLIMB SCHOOL', '1729', 0, 12, 2, '', '', '', '0000-00-00', 0),
(680, 'UDIT  BISHWAS', 'ASIT BISHWAS', 'PARWATI BISHWAS', '0000-00-00', 'K-19 HARI DAS JI KI MAGRI', '1677', 0, 12, 2, '', '', '', '0000-00-00', 0),
(681, 'DHARMAGYA  SOLANKI', 'RAMESH SOLANKI', 'DHAN LAXMI SOLANKI', '0000-00-00', '702 EKLAVYA COLONY', '2565', 0, 13, 1, '', '', '', '0000-00-00', 0),
(682, 'ERAM  NAAZ', 'MOHAMMED HUSSAIN', 'RUKHSANA BANO', '0000-00-00', '528/16 OTC SCHEME CHHIPA COLONY', '1751/A', 0, 13, 1, '', '', '', '0000-00-00', 0),
(683, 'HIMANSHI  KASERA', 'HEMANT KASERA', 'JYOTI KASERA', '0000-00-00', '19, BHADESER CHOWK VARIYON KI GHATI', '2285', 0, 13, 1, '', '', '', '0000-00-00', 0),
(684, 'JAYESH  KAMOYA', 'ANIL KAMOYA', 'HEMA KAMOYA', '0000-00-00', '2, BHERU GHATI CHANDPOLE UDAIPUR', '2569', 0, 13, 1, '', '', '', '0000-00-00', 0),
(685, 'MOHAMMED OVESH  ', 'ANSAR AHMED', 'MUMTAJ BEGUM', '0000-00-00', '170, AMBAVGHARH NEAR NATURAL HOTEL', '2804', 0, 13, 1, '', '', '', '0000-00-00', 0),
(686, 'MOHAMMED ZACKI  ', 'AHMED HUSSAIN', 'TABASSUM BANU', '0000-00-00', '37, LAL GHAT BEHIND JAGDISH TEMPLE', '1473', 0, 13, 1, '', '', '', '0000-00-00', 0),
(687, 'NAZAM  BANO', 'ISHTIYAQ AHMED', 'FARIDA BANO', '0000-00-00', '61, AHMED HUSSAIN COLONY', '1562', 0, 13, 1, '', '', '', '0000-00-00', 0),
(688, 'NIKHIL  SONI', 'RAJKUMAR SONI', 'LAJWANTI SONI', '0000-00-00', 'H.NO.51, SONI GANESH GATI GADIA DEVRA PANDU WADI KE PAS', '1754', 0, 13, 1, '', '', '', '0000-00-00', 0),
(689, 'RAJESHWARI  SONI', 'DILIP SONI', 'SUNITA SONI', '0000-00-00', '45 DHABHAI JI BARI RAMPURA', '3036', 0, 13, 1, '', '', '', '0000-00-00', 0),
(690, 'RISHABH  SARNOT', 'LT SUNDAR LAL SARNOT', 'SUMITRA SARNOT', '0000-00-00', 'S-43, GANDHI NAGAR MALLA TALAI', '1602', 0, 13, 1, '', '', '', '0000-00-00', 0),
(691, 'SANIYA BANO MANSOORI', 'MUSTAQ AHMED MANSOORI', 'SHAMIM BANO', '0000-00-00', 'C-2, FARUK - E- AZAM COLONY, MALLA TALAI', '2047', 0, 13, 1, '', '', '', '0000-00-00', 0),
(692, 'SANJANA  LAKHARA', 'PRAKASH LAKHARA', 'PRAMILA LAKHARA', '0000-00-00', 'O/S CHANDPOLE NAGA NAGRI BHIDAR KI HAWELI', '2048', 0, 13, 1, '', '', '', '0000-00-00', 0),
(693, 'TOUSHIPH  ALI', 'MOHAMMED ALI', 'TUHINA ALI', '0000-00-00', '26, CHITRAKALA MARG MAHAWAT WADI', '2566', 0, 13, 1, '', '', '', '0000-00-00', 0),
(694, 'VISHAL  KUMAWAT', 'KESU LAL KUMAWAT', 'GOMTI KUMAWAT', '0000-00-00', 'AMAR NAGAR O.T.C. B-BLOCK', '1773/B', 0, 13, 1, '', '', '', '0000-00-00', 0),
(695, 'ARSHI  KHAN', 'AARIF HUSSAIN', 'RAHILA BEGAM', '0000-00-00', 'EC-39, SAJJAN NAGAR A- BLOCK', '3118', 0, 6, 3, '', '', '', '0000-00-00', 0),
(696, 'ASMA  BANO', 'MOHD ISMAIL', 'SHABANA BANO', '0000-00-00', '333, MASTAN PIYA COLONY CHURCH ROAD', '3109', 0, 6, 3, '', '', '', '0000-00-00', 0),
(697, 'GURVI  SUHALKA', 'ANAND SUHALKA', 'SANJU SUHALKA', '0000-00-00', '1021 PRITIVILLA EKLAVYA COLONY', '3084', 0, 6, 3, '', '', '', '0000-00-00', 0),
(698, 'NOHA AKHTAR MANSOORI', 'MUBARIK HUSSAIN', 'RUBINA SHAHIN', '0000-00-00', '1482 AHMED HUSSAIN COLONEY BEHIND MASTAN BABA', '3657', 0, 6, 3, '', '', '', '0000-00-00', 0),
(699, 'BHAVIRAJ SINDHAL  ', 'NARAYAN LAL', 'KOSHLYA', '0000-00-00', '172 HARIDAS JI KI MAGRI', '3763', 0, 3, 3, '', '', '', '0000-00-00', 0),
(700, 'DIVYA  PRAJAPAT', 'NAND LAL PRAJAPAT', 'DAYA PRAJAPAT', '0000-00-00', 'B-2 HARI DAS JI KI MAGARI', '3597', 0, 3, 3, '', '', '', '0000-00-00', 0),
(701, 'KAVYANSH YADAV  ', 'HEERA LAL YADAV', 'PRIYA YADAV', '0000-00-00', 'BHILU RANA KACHHI BASTI', '3755', 0, 3, 3, '', '', '', '0000-00-00', 0),
(702, 'KHYATI  MALI', 'BHUPENDRA MALI', 'NEENA MALI', '0000-00-00', '274 A BLOCK SAJJAN NAGAR MULLA TALI', '3578', 0, 3, 3, '', '', '', '0000-00-00', 0),
(703, 'LAKSHIT  DANGI', 'KESHAV LAL DANGI', 'KANKU DEVI DANGI', '0000-00-00', 'I-4 POLICE QUARTER BEHIND MASTAN BABA', '3700', 0, 3, 3, '', '', '', '0000-00-00', 0),
(704, 'RASHID RAZA MANSOORI', 'SWALEH MOHMMED', 'NURANI BANU', '0000-00-00', '235 MULLA TALAI', '3577', 0, 3, 3, '', '', '', '0000-00-00', 0),
(705, 'RITIKA  PARMAR', 'HARISH PARMAR', 'KALA PARMAR', '0000-00-00', 'E-5 HARIDAS JI KI MAGARI MULLA TALI', '3492', 0, 3, 3, '', '', '', '0000-00-00', 0),
(706, 'SHIFA ANSARI  ', 'TAHIR ALI', 'AASHFA KHATOON', '0000-00-00', '156 RAZA COLONY', '3732', 0, 3, 3, '', '', '', '0000-00-00', 0),
(707, 'UJJAWAL KUMAR TELI', 'RAMESH KUMAR TELI', 'SAGAR DEVI TELI', '0000-00-00', 'B-7 HARI DAS JI KI MAGARI', '3596', 0, 3, 3, '', '', '', '0000-00-00', 0),
(708, 'YASHASVI  SONI', 'RAJ KUMAR SONI', 'LAJWANTI SONI', '0000-00-00', '51 GANESH GHATI  MARG NEAR PANDU WADI SWASTIK JWEELERS', '3589', 0, 2, 3, '', '', '', '0000-00-00', 0),
(709, 'ASAMA  BANO', 'MOHD HUSSAIN', 'TANSEEM BANO', '0000-00-00', 'GALI NO 3 AHMED HUSSAIN COLONY MASTAN BABA KE PICHE', '3419', 0, 5, 1, '', '', '', '0000-00-00', 0),
(710, 'GAVISH  PATWA', 'SATISH PATWA', 'SEEMA PATWA', '0000-00-00', '140 NAG MARG NAGAR WADI CHAND POUL', '3417', 0, 5, 1, '', '', '', '0000-00-00', 0),
(711, 'MOHAMMED SHAAD  ', 'MOHAMMED FAROOQ', 'GOHAR TASLEEM', '0000-00-00', '315-B GARIB NAWAZ COLONY GALI NO 2 MALLA TALAI', '3421', 0, 5, 1, '', '', '', '0000-00-00', 0),
(712, 'BHAVESH  TELI', 'JITENDRA TELI', 'PUSHPA TELI', '0000-00-00', '18, BHARAM POL, INSIDE', '3260/18/13', 0, 6, 1, '', '', '', '0000-00-00', 0),
(713, 'ALVEERA  KHAN', 'MOHD SHAHID KHAN', 'REHANA KHAN', '0000-00-00', '213,A BLOCK SAJJAN NAGAR GARIB NAWAZ COLONY', '12-12-3283', 0, 7, 1, '', '', '', '0000-00-00', 0),
(714, 'IRAM  NIDA', 'FARUKH', 'SHAMEEM BANO', '0000-00-00', 'SAJJAN NAGAR NEAR WATER TANK,MALLA TALAI', '3285/14/12', 0, 7, 1, '', '', '', '0000-00-00', 0),
(715, 'MOHAMMED ALI  HUSSAIN', 'MOHSIN KHAN', 'SHAKIRA BANU', '0000-00-00', '8/1723, B-BLOCK 80 FEET ROAD NEAR GRON WORKSHOP RATA KHET', '12-08-3279', 0, 7, 1, '', '', '', '0000-00-00', 0),
(716, 'BUSHRA  NOORI', 'RIYAZ AHMED', 'AREEN RAZA', '0000-00-00', 'NEEM KA CHOWK UPAR KI MASJID SILAWAT WARI HATIPOUL', '3489', 0, 4, 1, '', '', '', '0000-00-00', 0),
(717, 'VIDHI  SONI', 'KULDEEP SONI', 'SHARDA SONI', '0000-00-00', '181 O.T.C B BLOCK AMAR NAGAR', '3497', 0, 4, 1, '', '', '', '0000-00-00', 0),
(718, 'DIKSHITA  DAKOT', 'MURLIDHAR DAKOT', 'ANITA', '0000-00-00', 'L - 29, NEAR SHANI TEMPLE, GANDHI NAGAR', '3644', 0, 3, 1, '', '', '', '0000-00-00', 0),
(719, 'ALVEERA  KHAN', 'SAJID KHAN', 'SEHNAZ BANO', '0000-00-00', 'SAJJAN NAGAR MALLA TALAI', '3420', 0, 5, 2, '', '', '', '0000-00-00', 0),
(720, 'ANIKA  ', 'MOHD FARUKH', 'SHAMEEM BANO', '0000-00-00', 'GANDHI NAGAR MALLA TALAI', '3418', 0, 5, 2, '', '', '', '0000-00-00', 0),
(721, 'MOHAMMED HASNAIN  RAZA', 'AZAM HUSSAIN', 'BISMILAA', '0000-00-00', 'KACCHI BASI NEAR WATER TANK SAJJAN NAGAR', '3415', 0, 5, 2, '', '', '', '0000-00-00', 0),
(722, 'UMME ABIHA  ', 'MOHD ANSAR', 'AAYSHA', '0000-00-00', '70 AMBAV GARH SCHEME  HOTEL NATURAL ROAD', '3422', 0, 5, 2, '', '', '', '0000-00-00', 0),
(723, 'HARSHIT  NAI', 'MUKESH NAI', 'JYOTI NAI', '0000-00-00', '311, MAIN BAZAR NAI', '3272/30/13', 0, 6, 2, '', '', '', '0000-00-00', 0),
(724, 'LAKSHITA  KHILOLIYA', 'GOPAL KHILOLIYA', 'TARA DEVI', '0000-00-00', '31-B, HARI  DAS JI KI MAGRI', '3262/20/13', 0, 6, 2, '', '', '', '0000-00-00', 0),
(725, 'TARUN  JOSHI', 'LALIT JOSHI', 'LAJWANTI JOSHI', '0000-00-00', '422, MASTER COLONY  AMBA MATA', '3264/22/13', 0, 6, 2, '', '', '', '0000-00-00', 0),
(726, 'BUSHRA  HAYAT', 'UMAR FARUQ', 'HOOR BANO', '0000-00-00', '18 AHMED HUSSAIN COLONEY BEHIND POLICE QUATER ASHRAFI COMPLEX', '3468', 0, 4, 2, '', '', '', '0000-00-00', 0),
(727, 'MOHAMMED MUNIF  RAZA', 'MOHAMMED RAFIK', 'ASMA BANO', '0000-00-00', '646 GALI NO.2 GARIB NAWAZ COLONEY', '3498', 0, 4, 2, '', '', '', '0000-00-00', 0),
(728, 'STUTI  SONI', 'DILIP SONI', 'DEEPA SONI', '0000-00-00', '1 KOTHARIYO KI GALI MAJI KI BAWADI GHANTAGHAR', '3487', 0, 4, 2, '', '', '', '0000-00-00', 0),
(729, 'VANSH  LAXKAR', 'DEVENDRA LAXKAR', 'SARITA DEVI LAXKAR', '0000-00-00', '25 HARI DAS JI KI MAGARI', '3469', 0, 4, 2, '', '', '', '0000-00-00', 0),
(730, 'NOMAN  ', 'MOHSIN', 'HEENA KHAN', '0000-00-00', 'SAJJAN NAGAR KACHCHI BASTI', '3621', 0, 3, 2, '', '', '', '0000-00-00', 0),
(731, 'DISHANT  BHATI', 'GHANSHYAM LAL TELI', 'RADHA BHATI', '0000-00-00', '14,HARIDAS JI KI MAGRI', '3271/29/13', 0, 6, 3, '', '', '', '0000-00-00', 0),
(732, 'MEHUL  KASERA', 'SHANKER LAL KASERA', 'ASHA DEVI', '0000-00-00', '263,O/S BHRHAM POLE', '3270/28/13', 0, 6, 3, '', '', '', '0000-00-00', 0),
(733, 'NAIRA  ', 'BHAGWATI OAD', 'DIPANSHA', '0000-00-00', '780, OAD BASTI MASTAN ROAD GANDHI NAGAR', '3622', 0, 3, 3, '', '', '', '0000-00-00', 0),
(734, 'ANIRUDRA  FUMATIYA', 'VINOD KUMAR FUMATIYA', 'SONU FUMATIYA', '0000-00-00', '892, GANDHI NAGAR KACHHI BASTI MULLA TALAI', '3526', 0, 5, 1, '', '', '', '0000-00-00', 0),
(735, 'BHUMIKA  ATHWAL', 'SHANKAR LAL  ATHWAL', 'DHANWANTI ATHWAL', '0000-00-00', 'SAJJAN NAGAR A BLOCK  NEAR ARYA SAMAJ MANDIR', '3632', 0, 5, 1, '', '', '', '0000-00-00', 0),
(736, 'GEETIKA  GHAWARI', 'ROSHAN LAL GHAWARI', 'DOULAT GHAWARI', '0000-00-00', '535, OTC SCHEME  D BLOCK, MALLA TALAI', '3443', 0, 5, 1, '', '', '', '0000-00-00', 0),
(737, 'HEMISH  YADAV', 'NIRMAL YADAV', 'GAYATRI YADAV', '0000-00-00', '174 NEAR AMBRAI RESORT', '3525', 0, 5, 1, '', '', '', '0000-00-00', 0),
(738, 'NEHA  YADAV', 'SANJAY YADAV', 'BABITA YADAV', '0000-00-00', '615 CHAMAN PURA HATI POLE', '3677', 0, 5, 1, '', '', '', '0000-00-00', 0),
(739, 'NIKHIL  YADAV', 'PRAHALAD KUMAR YADAV', 'SANGEETA YADAV', '0000-00-00', '615 CHAMAN PURA HATI POLE', '3676', 0, 5, 1, '', '', '', '0000-00-00', 0),
(740, 'DEVANSHI  VED', 'JITENDRA KUMAR BERWA', 'REKHA BERWA', '0000-00-00', '318,MALLA TALAI, GRIB NAWAZ COLONY GALI NO.2', '3106', 0, 6, 1, '', '', '', '0000-00-00', 0),
(741, 'NARAYAN VERMA  ', 'MUKESH VERMA', 'SANGEETA VERMA', '0000-00-00', 'L- 2 GANDHI NAGAR', '3715', 0, 6, 1, '', '', '', '0000-00-00', 0),
(742, 'RAGINI  KASOTIYA', 'HEERA LAL KASOTIYA', 'MEENA KASOTIYA', '0000-00-00', 'A-76,EKLAVYA COLONY', '3129', 0, 6, 1, '', '', '', '0000-00-00', 0),
(743, 'SHOURYA RAJ  PANWAR', 'MAHESH PANWAR', 'RAKHI PANWAR', '0000-00-00', '807 GANDHI NAGAR NEAR WISDOM HOME SCHOOL', '3736', 0, 6, 1, '', '', '', '0000-00-00', 0),
(744, 'AADARSH  KANDARA', 'VINOD KANDARA', 'USHA KANDARA', '0000-00-00', '18,CHAMANPURA GALI NO.8 HATI POL', '3351', 0, 7, 1, '', '', '', '0000-00-00', 0),
(745, 'JAYESH  KHATIK', 'RAJESH KHATIK', 'KALPANA KHATIK', '0000-00-00', '504 NEAR PANGHAT AMBA MATA MANDIR MARG EKLAVYA COLONY', '3655', 0, 7, 1, '', '', '', '0000-00-00', 0),
(746, 'MIHIKA  BANSHIWAL', 'NARESH BANSHIWAL', 'VIMLESH BANSHIWAL', '0000-00-00', 'H.NO.-45,HARSH NAGAR BOHRA COLONY, RAMPURA CHOURAHA', '3046', 0, 7, 1, '', '', '', '0000-00-00', 0),
(747, 'PRIYANSHI  YADAV', 'ASHOK YADAV', 'ANJU YADAV', '0000-00-00', 'K-96, HARIDAS JI KI MAGRI NEAR ST. XAVIER SCHOOL', '2895', 0, 7, 1, '', '', '', '0000-00-00', 0),
(748, 'HANSIKA  KAMOYA', 'ANIL KUMAR KAMOYA', 'HEMA KAMOYA', '0000-00-00', '2, BHERU GHATI CHANDPOLE', '2698', 0, 8, 1, '', '', '', '0000-00-00', 0),
(749, 'HARSH  BHAGORA', 'MAHENDRA BHAGORA', 'PYARI BHAGORA', '0000-00-00', 'EKLAVYA COLONY', '2740', 0, 8, 1, '', '', '', '0000-00-00', 0),
(750, 'SANJANA  ATHWAL', 'SHANKAR LAL ATHWAL', 'DHANWANTI ATHWAL', '0000-00-00', 'MALLA TALAI SAJJAN NAGAR A- BLOCK NEAR ARYASAMAJ TEMPLE, UDAIPUR', '3381', 0, 8, 1, '', '', '', '0000-00-00', 0),
(751, 'VEERAM DEV GHARU', 'RAKESH GHARU', 'SEEMA GHARU', '0000-00-00', '44 HARIJAN BASTI GANDHI NAGAR MALLA TALAI', '2758', 0, 8, 1, '', '', '', '0000-00-00', 0),
(752, 'KHUSHI  GAMETI', 'VEER CHAND GAMETI', 'KANTA GAMETI', '0000-00-00', '3-DUDHIYA GANESH JI EKLAVYA COLONY', '2425', 0, 9, 1, '', '', '', '0000-00-00', 0),
(753, 'KRISH  SAVITA', 'SARVESH KUMAR', 'SUMAN', '0000-00-00', 'F-24, HARIDAS JI KI MAGRI', '2420', 0, 9, 1, '', '', '', '0000-00-00', 0),
(754, 'MANISHA  MEGHWAL', 'SOHAN LAL MEGHWAL', 'SUSHILA MEGHWAL', '0000-00-00', 'VILLAGE BUJHDA', '2674', 0, 9, 1, '', '', '', '0000-00-00', 0),
(755, 'PRIYANSHU  VASITA', 'LATE GHISU LAL VASITA', 'MANJU', '0000-00-00', 'HARSH NAGAR BOHRA COLONY SISARMA', '2435', 0, 9, 1, '', '', '', '0000-00-00', 0),
(756, 'SONAL  KHATIK', 'MAHENDRA KHATIK', 'PINKY KHATIK', '0000-00-00', 'H.NO.-35, M.B.HOSPITAL CAMPUS', '2972', 0, 9, 1, '', '', '', '0000-00-00', 0),
(757, 'JATIN  KASOTIYA', 'SHYAM KUMAR MEGHWAL', 'MANJU MEGHWAL', '0000-00-00', '72,B AMBAMATA SCHEME', '2588', 0, 14, 1, '', '', '', '0000-00-00', 0),
(758, 'JAYESH  CHANAL', 'BHANWAR LAL CHANAL', 'SAROJ CHANAL', '0000-00-00', 'EKLAVYA COLONY', '2227', 0, 14, 1, '', '', '', '0000-00-00', 0),
(759, 'KRITIKA  KASOTIYA', 'DILIP KUMAR MEGHWAL', 'PREM  MEGHWAL', '0000-00-00', 'B-72, AMBAMATA COLONY', '1239', 0, 14, 1, '', '', '', '0000-00-00', 0),
(760, 'ROHAN  NIMAWAT', 'PRADEEP NIMAWAT', 'RAJKUMARI NIMAWAT', '0000-00-00', '271,AMRUDO KI BADI AMBAMATA', '1220', 0, 14, 1, '', '', '', '0000-00-00', 0),
(761, 'SONAKSHI  YADAV', 'HEMSHANKAR YADAV', 'ANITA YADAV', '0000-00-00', '38 AMAR NAGAR GOVERDHAN KRIPA 80 FEET ROAD', '2995', 0, 14, 1, '', '', '', '0000-00-00', 0),
(762, 'MANSI  BAIRWA', 'PRAKASH CHANDRA BAIRWA', 'SHAKUNTALA', '0000-00-00', 'HARI DAS JI KI MAGARI', '3561', 0, 4, 1, '', '', '', '0000-00-00', 0),
(763, 'SANIDHYA SINGH PARIHAR', 'GOKUL SINGH PARIHAR', 'LAXMI PARIHAR', '0000-00-00', 'H.NO.-43, SANJAY COLONY RATA KHET', '3461', 0, 4, 1, '', '', '', '0000-00-00', 0),
(764, 'YUVRAJ  KHATIK', 'RAJESH KHATIK', 'KALPANA KHATIK', '0000-00-00', '504 NEAR PANGHAT AMBA MATA MANDIR MARG EKLAVYA COLONEY', '3654', 0, 4, 1, '', '', '', '0000-00-00', 0),
(765, 'HARSHIT SAMRIA  ', 'TARA CHAND KHATIK', 'PARWATI DEVI', '0000-00-00', 'NEAR CHOUDHRI GUEST HOUSE AMBAWADI RAMPURA', '3752', 0, 3, 1, '', '', '', '0000-00-00', 0),
(766, 'VARSHA  OAD', 'UDESH OAD', 'NIRMA OAD', '0000-00-00', 'B-4 HARIDAS JI KI MAGRI', '2313', 0, 10, 1, '', '', '', '0000-00-00', 0),
(767, 'NEHA  BARWA', 'PRAKASH BARWA', 'SHAKUNTALA BERWA', '0000-00-00', 'HARIDAS JI KI MAGRI NEAR FURNITURE SHOP', '2533', 0, 11, 1, '', '', '', '0000-00-00', 0),
(768, 'ARUN  MEGHWAL', 'SOHAN LAL MEGHWAL', 'SUSHILA MEGHWAL', '0000-00-00', 'VILLAGE-BUJHDA TEHSIL GIRWA UDAIPUR', '1656', 0, 12, 1, '', '', '', '0000-00-00', 0),
(769, 'HARSHAL  CHOUHAN', 'GAUTAM CHOUHAN', 'KIRAN CHOUHAN', '0000-00-00', '10, HATHI POLE, GANESH PURA NEAR SABJI MANDI', '1645', 0, 12, 1, '', '', '', '0000-00-00', 0),
(770, 'KHUSHI  MALHOTRA', 'KISHOR MALHOTRA', 'USHA MALHOTRA', '0000-00-00', '466,B-BLOCK MALLA TALAI', '1648', 0, 12, 1, '', '', '', '0000-00-00', 0),
(771, 'POOJA  VIRVAL', 'HEERALAL VIRVAL', 'SUSHILA VIRVAL', '0000-00-00', 'BLOCK A-169 SAJJAN NAGAR', '1715', 0, 12, 1, '', '', '', '0000-00-00', 0),
(772, 'MANTHAN  MALHOTRA', 'RAJESH MALHOTRA', 'REKHA MALHOTRA', '0000-00-00', '338, OTC B-BLOCK GANDHI NAGAR MALLA TALAI', '1527', 0, 13, 1, '', '', '', '0000-00-00', 0),
(773, 'BHAVYA  CHOUHAN', 'MANISH CHOUHAN', 'SANGEETA CHOUHAN', '0000-00-00', 'S 81 GANDHI NAGAR MALLA TALAI', '3527', 0, 5, 2, '', '', '', '0000-00-00', 0),
(774, 'DEEPESH  CHOUHAN', 'GANPAT CHOUHAN', 'MADHURI CHOUHAN', '0000-00-00', '8 RATA KHAET NEAR SHREE JI PUBLIC SCHOOL', '3670', 0, 5, 2, '', '', '', '0000-00-00', 0),
(775, 'DIVYANSHU  KHATIK', 'MAHENDRA KHATIK', 'PINKY KHATIK', '0000-00-00', 'N-3, NURSING Q, M.B HOSPITAL', '3398', 0, 5, 2, '', '', '', '0000-00-00', 0),
(776, 'DIVYANSHU  YADAV', 'ASHOK YADAV', 'ANJANA YADAV', '0000-00-00', 'K-6, NEAR BY ST.XAVIER SCHOOL,HARIDAS JI KI MAGRI,MALLA TALAI', '3330', 0, 5, 2, '', '', '', '0000-00-00', 0),
(777, 'GEETIKA  CHOUHAN', 'SHANTI LAL CHOUHAN', 'MANJU CHOUHAN', '0000-00-00', '239 EKLAVYA COLONEY MALLA TALAI', '3346', 0, 5, 2, '', '', '', '0000-00-00', 0),
(778, 'NITESH  AHIR', 'MADAN AHIR', 'LEELA AHIR', '0000-00-00', 'L-27 GANDHI NAGAR', '3427', 0, 5, 2, '', '', '', '0000-00-00', 0),
(779, 'TANISH  VER', 'DINESH VER', 'LEELA VER', '0000-00-00', 'HOTAL RAI PALACE 48-B AMBA MATA', '3423', 0, 5, 2, '', '', '', '0000-00-00', 0),
(780, 'YOGITA  DAHIYA', 'NITYA NAND DAHIYA', 'SUMAN', '0000-00-00', 'CHUNDA PALACE HARI DAS JI KI MAGARI', '3345', 0, 5, 2, '', '', '', '0000-00-00', 0),
(781, 'AIRIK  JINGER', 'DINESH JINGER', 'REKHA JINGER', '0000-00-00', '28, DHABAI JI KI BARI UBESHWAER ROAD RAMPURA', '3110', 0, 6, 2, '', '', '', '0000-00-00', 0),
(782, 'BHAWANA  DAHIYA', 'NITAYA NAND DAHIYA', 'SUMAN DAHIYA', '0000-00-00', 'CHUNDA PALACE HARI DAS JI KI MAGARI', '3357', 0, 6, 2, '', '', '', '0000-00-00', 0),
(783, 'KRISHNA  YADAV', 'PRAHALAD KUMAR YADAV', 'SANGEETA YADAV', '0000-00-00', '615, NEW CHARBHUJA TEMPLE, CHAMAN PURA, HATHIPOLE', '3680', 0, 6, 2, '', '', '', '0000-00-00', 0),
(784, 'SHORYA PANWAR  ', 'VIJAY PANWAR', 'SONU PANWAR', '0000-00-00', '229 OTC D BLOCK GANDHI NAGAR', '3782', 0, 6, 2, '', '', '', '0000-00-00', 0),
(785, 'VINIT  CHANDEL', 'GOVIND CHANDEL', 'SUMITRA CHANDEL', '0000-00-00', 'GANDHI NAGAR, MALLA TALAI 488 UDAIPUR.', '3369', 0, 6, 2, '', '', '', '0000-00-00', 0),
(786, 'AKSHRA  OAD', 'UDESH OAD', 'NIRMA OAD', '0000-00-00', 'B-4,HARIDAS JI KI MAGRI MALLA TALAI', '3067', 0, 7, 2, '', '', '', '0000-00-00', 0),
(787, 'MAHI  PANWAR', 'VIJAY PANWAR', 'SONU PANWAR', '0000-00-00', '229 OTC D BLOCK GANDHI NAGAR', '3779', 0, 7, 2, '', '', '', '0000-00-00', 0),
(788, 'PIYUSH VERMA ', 'DEEPAK VERMA', 'PINKI VARMA', '0000-00-00', 'L-91 A BLOCK SAJJAN NAGAR', '3530', 0, 7, 2, '', '', '', '0000-00-00', 0),
(789, 'PRIYANSHU  VERMA', 'DEEPAK VERMA', 'PINKI VERMA', '0000-00-00', 'L-91 A BLOCK SAJJAN NAGAR', '3531', 0, 7, 2, '', '', '', '0000-00-00', 0),
(790, 'ADITI  KANDARA', 'VINOD KANDARA', 'USHA KANDARA', '0000-00-00', '18,CHAMAN PURA GALI NO-8 HATI POLE', '3350', 0, 8, 2, '', '', '', '0000-00-00', 0),
(791, 'HARSHITA  CHHAPARWAL', 'VIJAY CHHAPARWAL', 'RAJANI CHHAPARWAL', '0000-00-00', '933 GANDHI NAGAR W.N.6 HARIJAN BASTI', '2730', 0, 8, 2, '', '', '', '0000-00-00', 0),
(792, 'KHUSHI  VASITA', 'ARJUN VASITA', 'MANJU VASITA', '0000-00-00', '366,AMBAV GARH KACCHI BASTI', '2695', 0, 8, 2, '', '', '', '0000-00-00', 0),
(793, 'NARENDRA  OAD', 'LAXMAN OAD', 'VINITA OAD', '0000-00-00', 'SAJJAN NAGAR A-BLOCK HANUMAN JI KA MANDIR', '3006', 0, 8, 2, '', '', '', '0000-00-00', 0),
(794, 'PARV  PURBIA', 'MUKESH PURBIA', 'REKHA PURBIA', '0000-00-00', '57 PURBIA COLONY OTC B BLOCK SAJJAN NAGAR', '2710', 0, 8, 2, '', '', '', '0000-00-00', 0),
(795, 'KARTIK  ATHWAL', 'SURAJ ATHWAL', 'SEEMA ATHWAL', '0000-00-00', 'MALLA TALAI, SAJJAN NAGAR A-BLOCK UDAIPUR.', '3382', 0, 9, 2, '', '', '', '0000-00-00', 0),
(796, 'GOURAV  NAKWAL', 'JASWANT NAKWAL', 'NEETU NAKWAL', '0000-00-00', '809 GANDHI NAGAR HARIJAN BASTI MALLATALAI', '3559', 0, 4, 2, '', '', '', '0000-00-00', 0),
(797, 'HIMANSHU MEGHWAL  ', 'GANPAT LAL MEGHWAL', 'ASHA MEGHWAL', '0000-00-00', 'MEGHWALON KA MOHALLA NAI', '3671', 0, 4, 2, '', '', '', '0000-00-00', 0),
(798, 'SHIVAM KUMAR YADAV', 'SANJAY YADAV', 'BABITA YADAV', '0000-00-00', '615 CHAMAN PURA HATIPOLE', '3675', 0, 4, 2, '', '', '', '0000-00-00', 0),
(799, 'VAISHALI  MEGHAWAL', 'LOKESH MEGHAWAL', 'PRIYANKA MEGHAWAL', '0000-00-00', 'MEGHWALO KA MOHLLA NAI', '3635', 0, 4, 2, '', '', '', '0000-00-00', 0),
(800, 'ASIMA  ', 'MOHAMMED HANIF', 'TARANNUM', '0000-00-00', '18 KALLESAT NEAR MOSQUE', '3612', 0, 3, 2, '', '', '', '0000-00-00', 0),
(801, 'RONAK  OAD', 'SHANTI LAL OAD', 'HEENA OAD', '0000-00-00', 'F-25 HARI DAS JI KI MAGARI', '3580', 0, 3, 2, '', '', '', '0000-00-00', 0),
(802, 'HARSH  ATHWAL', 'SHANKAR LAL ATHWAL', 'DHANWANTI ATHWAL', '0000-00-00', 'MALLA TALAI, SAJJAN NAGAR A- BLOCK NEAR ARAYA SAMAJ TAMPLE, UDAIPUR', '3383', 0, 10, 2, '', '', '', '0000-00-00', 0),
(803, 'VARSHA  OAD', 'LOGAR OAD', 'SUGNA OAD', '0000-00-00', 'EKLAVYA COLONY', '2510', 0, 10, 2, '', '', '', '0000-00-00', 0),
(804, 'BHAVIN  ARYA', 'HITESH ARYA', 'SHAKUNTALA ARYA', '0000-00-00', 'EKLAVYA COLONY H.NO 2098 NEAR RING ROAD', '3378', 0, 12, 2, '', '', '', '0000-00-00', 0),
(805, 'POOJA  BERA', 'DULAL BERA', 'CHANDAN BERA', '0000-00-00', 'CHANDPOL', '1752/A', 0, 13, 1, '', '', '', '0000-00-00', 0),
(806, 'VAISHNAVI  GHAWARI', 'ROSHAN GHAWARI', 'DOULAT GHAWARI', '0000-00-00', '535, OTC D BLOCK B/H MAGRI SCHOOL, MALLATALAI', '1761', 0, 13, 1, '', '', '', '0000-00-00', 0),
(807, 'MEGHNA  MEGHWAL', 'GANPAT LAL', 'ASHA MEGHWAL', '0000-00-00', 'MEGWALO KA MOHLA, NAI', '3368', 0, 6, 3, '', '', '', '0000-00-00', 0),
(808, 'PURVANSHI  NIMAWAT', 'SHAMBHU LAL NIMAWAT', 'MEENAKSHI NIMAWAT', '0000-00-00', '240,EKLAVYA COLONY, MALLA TALAI', '3162', 0, 6, 3, '', '', '', '0000-00-00', 0),
(809, 'TUSHAR  MEGHWAL', 'LALIT MEGHWAL', 'SHEETAL MEGHWAL', '0000-00-00', '457,BHARAM POLE ROAD MALLA TALAI', '3126', 0, 6, 3, '', '', '', '0000-00-00', 0),
(810, 'HARSHVARDHAN  CHOUHAN', 'GANPAT CHOUHAN', 'MADHURI CHOUHAN', '0000-00-00', '8 RATAKHET NEAR SHRIJI PUBLIC SCHOOL', '3740', 0, 3, 3, '', '', '', '0000-00-00', 0),
(811, 'SANSKAR  ATHWAL', 'VIKAS HARIJAN', 'POOJA KODLI', '0000-00-00', '97 OTC SCHEME D-BLOCK BEHIND MAGRI SCHOOL', '3695', 0, 3, 3, '', '', '', '0000-00-00', 0),
(812, 'VIRAJ CHOUHAN  ', 'ASHOK KUMAR CHOUHAN', 'KIRAN CHOUHAN', '0000-00-00', '8 RATAKHET NEAR SHRIJI PUBLIC SCHOOL', '3741', 0, 3, 3, '', '', '', '0000-00-00', 0),
(813, 'KHUSHALI  CHOUHAN', 'GOUTAM CHOUHAN', 'KIRAN CHOUHAN', '0000-00-00', 'H.NO.10 GALI NO 6, HATHIPOLE', '3275/22/13', 0, 6, 1, '', '', '', '0000-00-00', 0),
(814, 'NIHANSHI  KHATIK', 'SHAYAM CHOUHAN', 'SAPNA CHOUHAN', '0000-00-00', 'HATHIPOLE INSIDE SABJI MARKET KE PASS', '12-11-3282', 0, 7, 1, '', '', '', '0000-00-00', 0),
(815, 'CHAVI  KHATIK', 'CHANDRA PRAKASH KHATIK', 'BHAVNA KHATIK', '0000-00-00', '223, EKLAVYA COLONY, SAJJAN GARH ROAD', '3618', 0, 3, 1, '', '', '', '0000-00-00', 0),
(816, 'VINITA  CHHAPARWAL', 'VIJAY CHHAPARWAL', 'RAJNI CHHAPARWAL', '0000-00-00', '933, WN 36 HARIJAN BASTI GANDHI NAGAR MALLA TALI', '3413', 0, 5, 2, '', '', '', '0000-00-00', 0),
(817, 'SUMITRA  GHARU', 'RAKESH GHARU', 'SEEMA GHARU', '0000-00-00', '465, AMBAMATA SCHEEM UDAIPUR', '3277/35/13', 0, 6, 3, '', '', '', '0000-00-00', 0),
(818, 'JANVI DHOBI  ', 'RAJENDRA KUMAR', 'MAMTA', '0000-00-00', '131 B AMBAWADI RAMPURA', '3646', 0, 3, 3, '', '', '', '0000-00-00', 0),
(819, 'MANSI  VED', 'JITENDRA KUMAR BAIRWA', 'REKHA DEVI', '0000-00-00', 'H - 318 GANDHI NAGAR MALLA TALAI', '3619', 0, 3, 3, '', '', '', '0000-00-00', 0),
(820, 'JAYESH  GAMETI', 'RAMESH GAMETI', 'SAVITRI GAMETI', '0000-00-00', 'GORELA ADIVASI BASTI', '3547', 0, 5, 1, '', '', '', '0000-00-00', 0),
(821, 'JAYESH  MEENA', 'RAMESH MEENA', 'LAXMI MEENA', '0000-00-00', 'H.NO-176, EKLAVYA COLONY MALLA TALAI', '3135', 0, 5, 1, '', '', '', '0000-00-00', 0),
(822, 'KANISHK RAJ MEENA', 'VIRAT KUMAR GAURAVE', 'MEENAKSHI DAMORE', '0000-00-00', '659,EKLAVYA COLONY DUDHIYA GANESH JI', '3338', 0, 5, 1, '', '', '', '0000-00-00', 0),
(823, 'AARYAN  DAMOR', 'OM PRAKASH DAMOR', 'SARIPA DAMOR', '0000-00-00', 'NO-K-7 NOW POLICE QUARTER SISARMA 80 FIT ROAD', '3093', 0, 6, 1, '', '', '', '0000-00-00', 0),
(824, 'LAKSHITA  BHANAT', 'ANIL KUMAR BHANAT', 'REKH MEENA', '0000-00-00', '7 RATA KHETA NEAR SHREE JI PUBLIC SCHOOL', '3663', 0, 6, 1, '', '', '', '0000-00-00', 0),
(825, 'VARSHA  MEENA', 'PRAKASH MEENA', 'TARUNA MEENA', '0000-00-00', '809, GAMETIYON  KI GALI BHARMPOL', '3167', 0, 6, 1, '', '', '', '0000-00-00', 0),
(826, 'RAJSHEELA  DAMORE', 'RAMESH CHANDRA DAMOR', 'TARA DAMORE', '0000-00-00', 'NO-12,M-BLOCK,NEW POLICE LINE QUARTER', '2947', 0, 7, 1, '', '', '', '0000-00-00', 0),
(827, 'SHIVANI  MEENA', 'ASHOK MEENA', 'AASHA MEENA', '0000-00-00', '7, RATA KHET NEAR SHRI JI PUBLIC SCHOOL MALLA TALAI', '2906', 0, 7, 1, '', '', '', '0000-00-00', 0),
(828, 'SIDDHARTH  GAMETI', 'VEER CHAND  GAMETI', 'KANTA GAMETI', '0000-00-00', 'H.NO.-704, DUDHIYA GANESH JI PUBLIC SCHOOL MALLA TALAI', '2964', 0, 7, 1, '', '', '', '0000-00-00', 0),
(829, 'DIYANSH  BHAGORA', 'JITENDRA BHAGORA', 'HEMALATA BHAGORA', '0000-00-00', '176 EKLAVYA COLONY', '2737', 0, 8, 1, '', '', '', '0000-00-00', 0),
(830, 'NIHAL BHAGORA  ', 'DURGESH BHAGORA', 'HEMLATA BHAGORA', '0000-00-00', '177 EKLAVYA COLONY', '3754', 0, 8, 1, '', '', '', '0000-00-00', 0),
(831, 'PRAYAS  KHARADI', 'NANURAM KHARADI', 'RAMILA', '0000-00-00', '402 CHAMPA COLONY MALLA TALAI', '2064', 0, 14, 1, '', '', '', '0000-00-00', 0),
(832, 'DAMINI DODIYAR  ', 'VIJAY KUMAR DODIYAR', 'ANITA PARMAR', '0000-00-00', '751 EKLAVYA COLONY DUDHIYA GANESH JI', '3747', 0, 4, 1, '', '', '', '0000-00-00', 0),
(833, 'DIVYADARSHAN  BHANAT', 'ANIL KUMAR BHANAT', 'REKHA MEENA', '0000-00-00', '7 RATA KHETA NEAR SHREE JI PUBLIC SCHOOL', '3642', 0, 4, 1, '', '', '', '0000-00-00', 0),
(834, 'DIVYANSHU  PARGI', 'PRAKSAH PARGI', 'SUDHA PARGI', '0000-00-00', 'SISARMA ROAD NEAR FATEH NIWAS HOTEL', '3688', 0, 4, 1, '', '', '', '0000-00-00', 0),
(835, 'MAHIMA  GAMAR', 'HANS RAJ GAMAR', 'MEERA GAMAR', '0000-00-00', '1385 EKLAVYA COLONEY DUDHIYA GANESH JI', '3572', 0, 3, 1, '', '', '', '0000-00-00', 0),
(836, 'DIVYANSHU  SURECHA', 'KANAHAIYA LAL', 'SUNDER DEVI', '0000-00-00', '18 GAMETIYON  KI GALI 9/5 BHARMPOL', '2493', 0, 10, 1, '', '', '', '0000-00-00', 0),
(837, 'MUKESH MEENA  ', 'ANIL MEENA', 'NIRMALA MEENA', '0000-00-00', 'SAJJAN NAGAR A BLOCK NEAR ANAMI SCHOOL', '3729', 0, 12, 1, '', '', '', '0000-00-00', 0),
(838, 'JAYESH  BHIL', 'LAXMAN LAL', 'JASHODA DEVI', '0000-00-00', '236, EKLAVYA COLONY,MALLA TALAI', '3329', 0, 5, 2, '', '', '', '0000-00-00', 0),
(839, 'KALPESH  GAMAR', 'HANSRAJ GAMAR', 'MEERA GAMAR', '0000-00-00', 'EKLAVYA COLONY DUDHIYA GANESH JI SAJJAN NAGAR', '3409', 0, 5, 2, '', '', '', '0000-00-00', 0),
(840, 'KUSHAL  KATARA', 'RAMESH MEENA', 'JASODA MEENA', '0000-00-00', 'M-09, NEW POLICE LINE  BEHIND MASTAN BABA DARGAH', '3328', 0, 5, 2, '', '', '', '0000-00-00', 0),
(841, 'HARSHVARDHAN  MEENA', 'ASHOK MEENA', 'AASHA DEVI MEENA', '0000-00-00', 'RATA KHET NEAR SHRIJI PUBLIC SCHOOL, MALLA TALAI', '3079', 0, 6, 2, '', '', '', '0000-00-00', 0),
(842, 'MOHIT  GAMETI', 'LAXMAN GAMETI', 'SITA GAMETI', '0000-00-00', '570 EKLAVYA COLONEY MALLATALAI', '3634', 0, 6, 2, '', '', '', '0000-00-00', 0),
(843, 'BHUMIKA  MEENA', 'RAMESH MEENA', 'LAXMI MEENA', '0000-00-00', 'H. NO.-46, EKLAVYA COLONY MALLA TALAI', '3008', 0, 7, 2, '', '', '', '0000-00-00', 0),
(844, 'NIRMALA  GAMETI', 'LAXMAN GAMETI', 'SITA GAMETI', '0000-00-00', '570 EKLAVYA COLONEY', '3625', 0, 7, 2, '', '', '', '0000-00-00', 0),
(845, 'ASHA MEENA  ', 'ANIL MEENA', 'NIRMALA MEENA', '0000-00-00', 'SAJJAN NAGAR A BLOCK NEAR ANAMI SCHOOL', '3730', 0, 8, 2, '', '', '', '0000-00-00', 0),
(846, 'KAMAL  AERI', 'DAL CHAND AERI', 'ANITA AERI', '0000-00-00', 'S-499 EKLAVYA COLONY', '2480', 0, 9, 2, '', '', '', '0000-00-00', 0),
(847, 'VAISHALI  MEENA', 'ASHOK KUMAR', 'ASHA MEENA', '0000-00-00', '8- RATA KHET NEAR SHREE JI PUBLIC SCHOOL', '2680', 0, 9, 2, '', '', '', '0000-00-00', 0),
(848, 'VISHAKHA  MEENA', 'PRAKASH MEENA', 'TARUNA MEENA', '0000-00-00', '809, GAMETIYON KI GALI INSIDE BRAHAMPOLE', '3457', 0, 4, 2, '', '', '', '0000-00-00', 0),
(849, 'SAHIL  DHANGI', 'BABU LAL DHANGI', 'SUNITA DHANGI', '0000-00-00', 'HARI DAS JI KI MAGARI', '3571', 0, 3, 2, '', '', '', '0000-00-00', 0),
(850, 'NIDHI MEENA  ', 'RAKESH KUMAR MEENA', 'PRAMILA MEENA', '0000-00-00', '751 DUDHIYA GANESH JI', '3748', 0, 10, 2, '', '', '', '0000-00-00', 0),
(851, 'GAJENDRA  KHARADI', 'KALURAM KHARADI', 'DURGA KHARADI', '0000-00-00', '504, EKLAVYA COLONY, MALLA TALAI', '2136', 0, 11, 2, '', '', '', '0000-00-00', 0),
(852, 'ARPIT  BHAGORA', 'JITENDRA BHAGORA', 'HEMA BHAGORA', '0000-00-00', '176, EKLAVYA COLONY, MALLA TALAI', '1584', 0, 13, 1, '', '', '', '0000-00-00', 0),
(853, 'SAHIL  BHAGORA', 'MAHENDRA BHAGORA', 'PYARI BHAGORA', '0000-00-00', '176, EKLAVYA COLONY, MALLA TALAI', '1583', 0, 13, 1, '', '', '', '0000-00-00', 0),
(854, 'SANA  BHAGORA', 'ANIL BHAGORA', 'ARUNA BHAGORA', '0000-00-00', 'E 2/20 SAJJAN NAGAR KACCHI BASTI MASTANA BABA ROAD', '1572', 0, 13, 1, '', '', '', '0000-00-00', 0),
(855, 'YASHWANT  KHARADI', 'KALU RAM KHARADI', 'MANJU KHARADI', '0000-00-00', 'VILLAGE POST', '1411', 0, 13, 1, '', '', '', '0000-00-00', 0),
(856, 'DIMPLE  KATARA', 'VINOD KATARA', 'MONIKA KATARA', '0000-00-00', 'BHILU RANA COLONY NEAR GOVT SCHOOL BEHIND MASTANA BABA UDAIPUR', '3388', 0, 6, 3, '', '', '', '0000-00-00', 0),
(857, 'ANJAL PARMAR  ', 'KAMLESH PARMAR', 'ABHINAY GAURAV', '0000-00-00', '751 EKLAVYA COLONY DUDHIYA GANESH JI', '3746', 0, 3, 3, '', '', '', '0000-00-00', 0),
(858, 'ONICK PARMAR  ', 'KAMLESH PARMAR', 'ABHINAY GAURAV', '0000-00-00', '751 EKLAVYA COLONY DUDHIYA GANESH JI', '3745', 0, 3, 3, '', '', '', '0000-00-00', 0),
(859, 'RANJEET  MEENA', 'LATE BADRI LAL MEENA', 'MANJU MEENA', '0000-00-00', 'EKLAVYA COLONY', '3286/15/12', 0, 7, 2, '', '', '', '0000-00-00', 0),
(860, 'JYOTI  GAMETI', 'RAMESH GAMETI', 'SAVITRI', '0000-00-00', '71, GORELA AADIWASI BASTI', '3734', 0, 3, 3, '', '', '', '0000-00-00', 0),
(861, 'ANAM KHAN  ', 'ASLAM KHAN', 'PARVEEN BANO', '0000-00-00', 'PANDU WARI GADIYA DEWRA CHANDPOLE', '3772', 0, 5, 2, '', '', '', '0000-00-00', 0),
(862, 'NIRMAL  OAD', 'LAXMAN OAD', 'VINITA OAD', '0000-00-00', 'SAJJAN NAGAR A-BLOCK HANUMAN JI KI GALI', '3296', 0, 6, 2, '', '', '', '0000-00-00', 0),
(863, 'NISHA KUMARI SOLANKI', 'DEVI LAL SOLANKI', 'LAXMI BAI', '0000-00-00', 'VILLAGE BUJHDA', '3294', 0, 7, 2, '', '', '', '0000-00-00', 0),
(864, 'NILESH  BHARTI', 'NAND BHARTI', 'REETA BHARTI', '0000-00-00', '', '3299', 0, 6, 3, '', '', '', '0000-00-00', 0),
(865, 'YUVRAJ PANWAR  ', 'MAHESH PANWAR', 'RAKHI PANWAR', '0000-00-00', '807, GANDHI NAGAR', '3623', 0, 3, 1, '', '', '', '0000-00-00', 0),
(866, 'ZOYA FATIMA  ', 'RAIS', 'NASREEN', '0000-00-00', 'SAJJAN NAGARN KACHCHI BASTI', '3733', 0, 3, 1, '', '', '', '0000-00-00', 0),
(867, 'SHIFA  KOUSAR', 'ZAKIR HUSSAIN', 'ZABUNNISHA', '0000-00-00', 'K-16, MASTAN BABA COLONY SAJJAN NAGER', '3269/27/13', 0, 6, 2, '', '', '', '0000-00-00', 0),
(868, 'MOHAMMED  REHAN', 'MOHAMMED IDRIS', 'FIROJA BANO', '0000-00-00', '12 LALGHAT, BEHIND JAGDISH TEMPLE', '3799', 0, 10, 1, '', '', '', '0000-00-00', 0),
(869, 'NEELANSHI  SONI', 'NILESH SONI', 'JYOTI SONI', '0000-00-00', '16, HARIHAR NAGAR SISARMA ROAD ', '3784', 0, 2, 0, '', '', '', '0000-00-00', 0),
(870, 'TANISHA BEGUM ', 'JAMEEL MOHAMMED', 'AFSANA BEGUM', '0000-00-00', 'S-51 GANDHI NAGAR NEAR CHAMUNDA SERVICE CENTER', '3800', 0, 11, 1, '', '', '', '0000-00-00', 0),
(871, 'ANSHU MOHAMMED ', 'JAMEEL MOHAMMED', 'AFSANA BEGUM', '0000-00-00', 'S-51 GANDHI NAGAR', '3801', 0, 8, 0, '', '', '', '0000-00-00', 0),
(872, 'MUSHAYYAN  AHMED SHEIKH', 'MATIN AHMED SHEIKH', 'AFSANA ', '0000-00-00', '34/183 MAHAWAT WADI', '3802', 0, 7, 1, '', '', '', '0000-00-00', 0),
(873, 'SUMAIRA  ALI', 'IRFAN ALI', 'AFSANA BEGUM', '0000-00-00', '343, FAROOQ AZAM COLONY NEAR MASJID', '3856', 0, 2, 1, '', '', '', '0000-00-00', 0),
(874, 'MOHAMMED SAMIR ', 'MOHAMMED SHAKIL', 'SURAYYA BANO', '0000-00-00', '1-D GANDHI NAGAR', '7', 0, 10, 0, '', '', '', '0000-00-00', 0),
(875, 'KUSUM  KATARA ', 'VINOD KATARA', 'MONIKA KATARA', '0000-00-00', 'BHILURANA KACHHI BASTI', '3803', 0, 3, 1, '', '', '', '0000-00-00', 0),
(876, 'LAVESH  SOLANKI', 'PAWAN SOLANKI', 'MONIKA SOLANKI', '0000-00-00', 'SHRI NAGAR COLONY NEW RAMPURA', '3804', 0, 5, 1, '', '', '', '0000-00-00', 0),
(877, 'ABDUL  SAJID', 'ABDUL VAHID', 'PARVEEN KHAN', '0000-00-00', '142 KACHHI BASTI AMBAVGARH', '3805', 0, 7, 1, '', '', '', '0000-00-00', 0),
(878, 'AALIYA  PARVEEN', 'SAYYED MUQIMUDDIN', 'TABASSUM PARVEEN', '0000-00-00', '114 AHMED HUSSAIN COLONY NEAR POLICE QUARTER', '3786', 0, 2, 1, '', '', '', '0000-00-00', 0),
(879, 'LAKSHYA  GADIYA', 'NUTAN GADIYA', 'NEHA GADIYA', '0000-00-00', 'E-6 HARIDAS JI KI MAGRI', '3785', 0, 2, 1, '', '', '', '0000-00-00', 0),
(880, 'ALIFA  FATIMA', 'AMJAD KHAN', 'NAZIYA RASOOL KHAN', '0000-00-00', '457 JHARIYA MARG', '3787', 0, 2, 1, '', '', '', '0000-00-00', 0),
(881, 'AKSHA  KHAN ', 'AMJAD KHAN', 'NAZIYA RASOOL KHAN', '0000-00-00', '457 JHARIYA MARG HATHI POLE', '3806', 0, 5, 1, '', '', '', '0000-00-00', 0),
(882, 'MOHAMMED ASAD ', 'MOHAMMED SHAKIL', 'SURAYYA BANO', '0000-00-00', 'GANDHI NAGAR MULLAH TALAI', '3796', 0, 2, 1, '', '', '', '0000-00-00', 0),
(883, 'YAKSH  VERMA', 'MANOJ VERMA', 'RACHNA BALA VERMA', '0000-00-00', '290 AMBAMATA SCHEME BEHIND POLICE STATION', '3788', 0, 2, 1, '', '', '', '0000-00-00', 0),
(884, 'AATIF KHAN ', '', '', '0000-00-00', '', '17', 0, 8, 0, '', '', '', '0000-00-00', 0),
(885, 'NIHIT  GALUNDIA', 'RAHUL KUMAR GALUNDIYA', 'MEENA GALUNDIYA', '0000-00-00', '16, HARIDAS JI KI MAGRI', '18', 0, 2, 1, '', '', '', '0000-00-00', 0),
(886, 'RIYA   SHARMA', 'DEEPAK KUMAR SHARMA', 'NITU SHARMA', '0000-00-00', '', '3807', 0, 4, 1, '', '', '', '0000-00-00', 0),
(887, 'KRISHNA  KUMAWAT', 'MAHENDRA KUMAWAT', 'SUNITA KUMAWAT', '0000-00-00', 'Q. NO.RS/3,132, KV GSS COLONY', '3808', 0, 4, 1, '', '', '', '0000-00-00', 0),
(888, 'GARVIT   JAIN', 'MAHAVEER JAIN', 'SARITA JAIN', '0000-00-00', '374, BHATTWADI RAO COLONY', '21', 0, 5, 1, '', '', '', '0000-00-00', 0),
(889, 'KAYAN  PARMAR', 'GOVIND KUMAR PARMAR', 'MANISHA', '0000-00-00', '810, GAMETIYON KI GALI INSIDE BRAHMPOLE', '3809', 0, 3, 1, '', '', '', '0000-00-00', 0),
(890, 'AATIF KHAN PATHAN', 'ASLAM KHAN PATHAN', 'SHABANA PARVEEN', '0000-00-00', 'EC-26 A BLOCK SAJJAN NAGAR', '3810', 0, 8, 1, '', '', '', '0000-00-00', 0),
(891, 'MOHIT  SUTHAR', 'SATOSH SHARMA', 'REENA SHARMA', '0000-00-00', '78, SUTHARON KI GHATI', '3811', 0, 9, 1, '', '', '', '0000-00-00', 0),
(892, 'PRIYANSHI  SUTHAR', 'SANTOSH SHARMA', 'REENA SHARMA', '0000-00-00', '78, SUTHARON KI GHATI BHATTIYANI CHOHATTA', '24', 0, 7, 1, '', '', '', '0000-00-00', 0),
(893, 'SOMYA   GURJAR', 'DHANRAJ GURJAR', 'SUMITRA GURJAR', '0000-00-00', '198, GORELA BASTI GORELA', '25', 0, 2, 1, '', '', '', '0000-00-00', 0),
(894, 'MOHAMMED TOKIR KHAN', 'ABDUL KADIR', '', '0000-00-00', '', '3812', 0, 7, 1, '', '', '', '0000-00-00', 0),
(895, 'MOHAMMED ZAIB HUSSAIN', 'ZAKIR HUSSAIN', 'NASREEN BANO', '0000-00-00', 'KUTUBPURA INSIDE HATHIPOLE', '3813', 0, 5, 1, '', '', '', '0000-00-00', 0),
(896, 'DIVYANSH  YADAV', 'SHASHI YADAV', 'JAGRATI YADAV', '0000-00-00', 'H-7 POLICE QUARTER', '3789', 0, 2, 1, '', '', '', '0000-00-00', 0),
(897, 'AATIF   KHAN', 'AZAM KHAN', 'SHAHNAZ BANO', '0000-00-00', '', '3815', 0, 8, 1, '', '', '', '0000-00-00', 0),
(898, 'GUNJAN  OAD', 'RATAN OAD', '', '0000-00-00', '', '30', 0, 4, 1, '', '', '', '0000-00-00', 0),
(899, 'ISHAN   OAD', 'KISHAN OAD', 'MEENA OAD', '0000-00-00', '', '3817', 0, 7, 1, '', '', '', '0000-00-00', 0),
(900, 'TANISHQ  OAD', 'KISHAN OAD', 'MEENA OAD', '0000-00-00', '', '3818', 0, 9, 1, '', '', '', '0000-00-00', 0),
(901, 'JATIN   OAD', 'KISHAN OAD', 'MEENA OAD', '0000-00-00', '', '3819', 0, 4, 1, '', '', '', '0000-00-00', 0),
(902, 'SUMIT  DARANGI', 'BHANWAR LAL MEENA', 'BINDU DEVI', '0000-00-00', '', '3820', 0, 12, 1, '', '', '', '0000-00-00', 0),
(903, 'MILAN  DARANGI', '', '', '0000-00-00', '', '3821', 0, 8, 1, '', '', '', '0000-00-00', 0),
(904, 'MOHAMMED ATIK SHEIKH', 'MOHAMMED IDRIS SHEIKH', 'SHABANAM ', '0000-00-00', '', '3822', 0, 13, 1, '', '', '', '0000-00-00', 0),
(905, 'SHRAWAN  ATHWAL', 'SURAJ ATHWAL', 'SEEMA DEVI', '0000-00-00', 'OPP. ARYA SAMAJ TEMPLE GANDHI NAGAR', '37', 0, 11, 1, '', '', '', '0000-00-00', 0),
(906, 'BHAVISHYA  NAGDA', 'JOGENDRA NAGDA', 'NAGDA', '0000-00-00', '', '3824', 0, 8, 1, '', '', '', '0000-00-00', 0),
(907, 'JIA-UR-REHMAAN  MANSURI', 'GULAM SHABBIR', '', '0000-00-00', '10 RAZA COLONY NEAR RAZA COMPLEX', '39', 0, 2, 1, '', '', '', '0000-00-00', 0),
(908, 'FALAK   MANSURI', 'GULAM SHABBIR', '', '0000-00-00', '10, RAZA COLONY MULLATALAI', '40', 0, 4, 1, '', '', '', '0000-00-00', 0),
(909, 'AARISH  KHAN', 'SIDIK KHAN', 'YASMIN', '0000-00-00', '', '3823', 0, 4, 1, '', '', '', '0000-00-00', 0),
(910, 'MAYURRAJ SINGH  JHALA', 'GANPAT SINGH JHALA', 'PAWAN KUNWAR', '0000-00-00', 'HARIDAS JI KI MAGRI', '42', 0, 2, 1, '', '', '', '0000-00-00', 0),
(911, 'MOHAMMED ARSLAN ', 'AHMED HUSSAIN', 'TABASSUM HUSSAIN', '0000-00-00', '1638 RATA KHET 80 FIT ROAD', '3797', 0, 2, 1, '', '', '', '0000-00-00', 0),
(912, 'VIKAS  SUTHAR', 'DINESH SUTHAR', '', '0000-00-00', '', '3825', 0, 9, 1, '', '', '', '0000-00-00', 0),
(913, 'DIYA  SUTHAR', 'DINESH SUTHAR', 'TARA SUTHAR', '0000-00-00', '', '3826', 0, 12, 1, '', '', '', '0000-00-00', 0),
(914, 'MOHAMMED KONEN RAZA', 'MOHAMMED SHAMSHUL KAMAR', 'NILOFAR RAZA', '0000-00-00', '359,SILAWAT WADI HATHIPOLE', '3827', 0, 11, 1, '', '', '', '0000-00-00', 0),
(915, 'SUJAL   SUWALKA', 'BHERU LAL SUWALKA', '', '0000-00-00', '', '3828', 0, 9, 1, '', '', '', '0000-00-00', 0),
(916, 'KAVYANSH  KALYANA', 'MANISH KALYANA', 'CHANDA KALYANA', '0000-00-00', '', '3829', 0, 6, 1, '', '', '', '0000-00-00', 0),
(917, 'SHORYA  RAO', 'CHETAN RAO', 'LALITA RAO', '0000-00-00', '', '49', 0, 2, 1, '', '', '', '0000-00-00', 0),
(918, 'MOHAMMAD ARMAN ', 'ABID HUSSAIN', 'SABRA BANO', '0000-00-00', '28 NEW RAMPURA COLONY', '50', 0, 7, 1, '', '', '', '0000-00-00', 0),
(919, 'YUGANSH  KHOKAWAT', 'SHEKHAR KHOKAWAT', 'NEELU KHOKAWAT', '0000-00-00', '298, GANDHI NAGAR ', '51', 0, 2, 1, '', '', '', '0000-00-00', 0),
(920, 'BHAVYANSH  PRAJAPAT', 'CHANDRAKANT PRAJAPAT', 'LALITA PRAJAPAT', '0000-00-00', 'BHILON KI BASTI SISARMA', '52', 0, 4, 1, '', '', '', '0000-00-00', 0),
(921, 'VINITA  KASOTIYA', 'HEERA LAL KASOTIYA', 'MEENA KASOTIYA', '0000-00-00', 'A-76 EKLAVYA COLONY', '3794', 0, 2, 1, '', '', '', '0000-00-00', 0),
(922, 'SAPNA   RAWAL', 'RAKESH KUMAR RAWAL', 'LAXMI DEVI', '0000-00-00', 'CHAMPA COLONY OPP. SHIV MANDIR', '54', 0, 10, 1, '', '', '', '0000-00-00', 0),
(923, 'SAHIL   RAWAL', 'RAKESH KUMAR RAWAL', 'LAXMI DEVI', '0000-00-00', 'CHAMPA COLONY OPP. SHIV MANDIR', '55', 0, 6, 1, '', '', '', '0000-00-00', 0),
(924, 'ANKIT   RAWAL', 'RAKESH KUMAR RAWAL', 'LAXMI DEVI', '0000-00-00', 'CHAMPA COLONY OPP. SHIV MANDIR', '56', 0, 5, 1, '', '', '', '0000-00-00', 0),
(925, 'MOHAMMED KAMRAN KHAN', 'RAJU KHAN', 'RUKHSAR KHAN', '0000-00-00', '508, KELWA HOUSE BICHU GHATI', '57', 0, 7, 1, '', '', '', '0000-00-00', 0),
(926, 'MOHAMMED AAHIL  KHAN', 'RAJU KHAN', 'RUKHSAR KHAN', '0000-00-00', '508, KELWA HOUSE BICHU GHATI', '58', 0, 4, 1, '', '', '', '0000-00-00', 0),
(927, 'DEEP  SINGH BHATI', 'RANU SINGH BHATI', 'DARYAV KANWAR', '0000-00-00', '', '59', 0, 14, 1, '', '', '', '0000-00-00', 0),
(928, 'MAHIPAL SINGH BHATI', 'RANU SINGH BHATI', 'DARYAV KANWAR', '0000-00-00', '', '60', 0, 8, 1, '', '', '', '0000-00-00', 0),
(929, 'DIMPLE   JOSHI', 'DEEPAK JOSHI', 'SUNITA JOSHI', '0000-00-00', '', '61', 0, 9, 1, '', '', '', '0000-00-00', 0),
(930, 'JOYA  MANSOORI', 'ABDUL KADIR', 'SHIREEN', '0000-00-00', '', '62', 0, 8, 1, '', '', '', '0000-00-00', 0),
(931, 'DIKSHITA  VAISHNAV', 'DAMODAR DAS VAISHNAV', 'HEMLATA VAISHNAV', '0000-00-00', '73, CHARBHUJA JI KA MANDIR GANESH GHATI', '63', 0, 6, 1, '', '', '', '0000-00-00', 0),
(932, 'RAJDEEP   KASARA', 'MUKESH KASARA', 'RENU KASARA', '0000-00-00', 'H-20 BHDESAR KA CHOWK JAGDISH CHOWK', '64', 0, 7, 1, '', '', '', '0000-00-00', 0),
(933, 'MISBA  ALI ', 'ISHTIYAK ALI', 'MOBINA', '0000-00-00', '436, GARIB NAWAZ COLONY GALI NO. 01', '3795', 0, 2, 1, '', '', '', '0000-00-00', 0),
(934, 'HARSHAL  SOLANKI', 'TRILOK SOLANKI', 'POOJA SOLANKI', '0000-00-00', 'LAXMI DEPARTMENTAL STORE SAJJAN NAGAR MAIN ROAD', '3791', 0, 2, 1, '', '', '', '0000-00-00', 0),
(935, 'MITALI   DAHIYA', 'NITYANAND DAHIYA', 'SUMAN DAHIYA', '0000-00-00', '', '3790', 0, 2, 1, '', '', '', '0000-00-00', 0),
(936, 'MANISHA  SOM', 'MIHIR SOM', 'RUPALI SOM', '0000-00-00', 'E-7 HARIDAS JI KI MAGRI', '68', 0, 10, 1, '', '', '', '0000-00-00', 0),
(937, 'HARSH  SONWAL', 'VISHNU PRAKASH SONWAL', '', '0000-00-00', '501 AMBAMATA SCHEME BEHIND POLICE STATION', '69', 0, 11, 1, '', '', '', '0000-00-00', 0),
(938, 'KHUSHAL PRATAP  SINGH', 'GAJENDRA SINGH SOLANKI', 'GIRIJA KANWAR', '0000-00-00', '', '70', 0, 4, 1, '', '', '', '0000-00-00', 0),
(939, 'JAYSHREE  SOLANKI', 'GAJENDRA SINGH SOLANKI', 'GIRIJA KANWAR', '0000-00-00', '', '71', 0, 7, 1, '', '', '', '0000-00-00', 0),
(940, 'HARSHIT  MEENA', 'DHARMENDRA MEENA', 'REKHA MEENA', '0000-00-00', '809 GAMETIYON KI GALI BRAHM POLE', '3792', 0, 2, 1, '', '', '', '0000-00-00', 0),
(941, 'ALISHA  BANO', 'MOHAMMED IDRIS', '', '0000-00-00', '', '73', 0, 7, 1, '', '', '', '0000-00-00', 0),
(942, 'BHUPESH  SOLANKI', 'BHAGWATI LAL TELI', 'KALAWATI TELI', '0000-00-00', 'MAHAVEER COLONY, NAI', '74', 0, 3, 1, '', '', '', '0000-00-00', 0),
(943, 'LAKSHITA  SOLANKI', 'BHAGWATI LAL TELI', 'kala', '0000-00-00', 'MAHAVEER COLONY, NAI', '75', 0, 5, 1, '', '', '', '0000-00-00', 0),
(944, 'MOHAMMED  ABUZAR  KHAN', ' MOHAMMED SAJID KHAN ', '', '0000-00-00', '', '76', 0, 8, 1, '', '', '', '0000-00-00', 0),
(945, 'VIVEK  SOLANKI', 'SHANTI LAL SOLANKI', '', '0000-00-00', '', '77', 0, 10, 1, '', '', '', '0000-00-00', 0),
(946, 'VIVAAN  KATARA', 'AMBA LAL KATARA', 'VASUNDHARA', '0000-00-00', '8/659 DUDHIYA GANESH JI EKLAVYA COLONY', '3793', 0, 2, 1, '', '', '', '0000-00-00', 0),
(947, 'MANSVA  JAIN', 'RAJESH JAIN', 'PRATIBHA JAIN', '0000-00-00', '129, AMBAWADI UBESHWAR ROAD', '79', 0, 2, 1, '', '', '', '0000-00-00', 0),
(948, 'KANISHK  PURBIA', 'MUKESH PURBIA', 'PUSHPA PURBIA', '0000-00-00', '', '80', 0, 4, 1, '', '', '', '0000-00-00', 0),
(949, 'YATHARTH  PANWAR', 'MUKESH PANWAR', 'MEENA PANWAR', '0000-00-00', '807 GANDHI NAGAR MULLAH TALAI', '3798', 0, 2, 1, '', '', '', '0000-00-00', 0),
(950, 'MOHAMMAD AASHIR RAZA', 'SHAHNAWAZ KHAN', 'ROSHAN ARA', '0000-00-00', '380 FARUKH- AZAM COLONY', '82', 0, 2, 1, '', '', '', '0000-00-00', 0),
(951, 'BHAVIKA  RAO', 'RAVI RAO', 'SUNITA RAO', '0000-00-00', 'AZAD NAGAR 80 FIT ROAD FIRST LANE', '83', 0, 2, 1, '', '', '', '0000-00-00', 0),
(952, 'MANSI  SEN', 'ANIL SEN', 'DIMPLE SEN', '0000-00-00', '19-K HARIDAS JI KI MAGRI', '84', 0, 2, 1, '', '', '', '0000-00-00', 0),
(953, 'AL  AFIF SHEIKH', 'PARVEZ AHMED SHEIKH', 'SHAMINA SHEIKH', '0000-00-00', 'NEAR JAGRITI SCHOOL AMAR NAGAR', '85', 0, 14, 1, '', '', '', '0000-00-00', 0),
(954, 'FARAHAN  KHAN', 'JAHID KHAN', '', '0000-00-00', '', '86', 0, 2, 1, '', '', '', '0000-00-00', 0),
(955, 'MOHAMMED ALFEZ  ', 'FIROJ KHAN', 'HUSSAINA BANO', '0000-00-00', 'DHOLI MAGRI MASTAN BABA KE PASS', '87', 0, 3, 1, '', '', '', '0000-00-00', 0),
(956, 'PARNIKA KUMARI ', 'BHIMRAJ MEENA', 'DEVLI BAI', '0000-00-00', 'K-12 POLICE QUARTAR', '88', 0, 2, 1, '', '', '', '0000-00-00', 0),
(957, 'TANISH   DAMOR', 'OM PRAKASH DAMOR', 'SARIPA MEENA', '0000-00-00', 'K-7 POLICE QUARTAR', '89', 0, 2, 1, '', '', '', '0000-00-00', 0),
(958, 'MOHIT YADAV ', 'SHYAMLAL YADAV', 'HEMLATA YADAV', '0000-00-00', 'NEAR SHIV MANDIR BHILURANA KACHCHI BASTI SAJJAN GARH ROAD', '90', 0, 13, 1, '', '', '', '0000-00-00', 0),
(959, 'SHIVANI   KHARADI', 'SURYA PRAKASH KHARADI', 'PUSPA DAMOR', '0000-00-00', '', '91', 0, 14, 1, '', '', '', '0000-00-00', 0),
(960, 'DIKSHA   NAYAK', 'NARESH NAYAK', '', '0000-00-00', '301, OMKAR PALACE GAJSINGH JI KI BARI NEAR PIONEER ACADEMY', '92', 0, 8, 1, '', '', '', '0000-00-00', 0),
(961, 'NAYAN KUMAR PATEL', 'VINOD KUMAR PATEL', 'MEENA PATEL', '0000-00-00', 'B-65 GAJ SINGH JI KI BARI AZAD NAGAR', '93', 0, 2, 1, '', '', '', '0000-00-00', 0),
(962, 'MUKUL  LOHAR', 'HEMANT LOHAR', 'PUSHPA LOHAR', '0000-00-00', 'B-15 HARIDAS JI KI MAGRI', '94', 0, 2, 1, '', '', '', '0000-00-00', 0),
(963, 'SUHANI  KUNWAR', 'KAILASH SINGH', 'DHAPU KUNWAR', '0000-00-00', 'F-25 HARI DAS JIKI MAGARI', '95', 0, 4, 1, '', '', '', '0000-00-00', 0),
(964, 'SHIVANI  KHARADI', 'SURYA PRAKASH KHARADI', 'PUSHPA DAMOR', '0000-00-00', '', '96', 0, 14, 1, '', '', '', '0000-00-00', 0),
(965, 'YUDHVEER  KASRA', 'JITENDRA KASRA', 'CHANDA KASRA', '0000-00-00', 'B-17 HARIDAS JI KI MAGRI', '97', 0, 2, 1, '', '', '', '0000-00-00', 0),
(966, 'VANIA  BALAI', 'HIMMAT LAL BALAI', 'MANJU BALAI', '0000-00-00', '127, RAMPURA CHOURAHA', '98', 0, 2, 1, '', '', '', '0000-00-00', 0),
(967, 'BHARGAVI  CHAUHAN', 'MAAN SINGH CHAUHAN', 'RAJ KUNWAR CHAUHAN', '0000-00-00', '26, JETHIYON KA AKHARA OUTSIDE CHANDPOLE', '99', 0, 2, 1, '', '', '', '0000-00-00', 0),
(968, 'HANISH  GURJAR', 'BHUPENDRA GURJAR', 'ASHA GURJAR', '0000-00-00', 'UBESHWAR ROAD GORELLA', '100', 0, 2, 1, '', '', '', '0000-00-00', 0),
(969, 'ASAD  HUSSAIN', 'SHAHID HUSSAIN', 'TAMANNA BANO', '0000-00-00', '431, GARIB NAWAZ COLONY GALI NO.01 MALLAH TALAI', '101', 0, 2, 1, '', '', '', '0000-00-00', 0),
(970, 'BHAVYA  BHOI', 'PRAMOD BHOI', 'SHASHI KALA BHOI', '0000-00-00', 'B-15 HARIDAS JI KI MAGRI', '102', 0, 2, 1, '', '', '', '0000-00-00', 0),
(971, 'TANISHA  YADAV', 'SHASHI YADAV', '', '0000-00-00', 'H-7 POLICE QUARTER BEHIND MASTAN BABA DARGAH', '103', 0, 8, 1, '', '', '', '0000-00-00', 0),
(972, 'ASIM   SHEIKH', 'NIZAMUDDIN SHEIKH', 'KAYNAT SHEIKH', '0000-00-00', 'A-4 KOMI EKTA NAGAR', '104', 0, 2, 1, '', '', '', '0000-00-00', 0),
(973, 'SAFIYA  SHEIKH', 'MOHAMMED RAFIQ SHEIKH', 'RUBINA SHEIKH', '0000-00-00', 'A-4 KOMI EKTA NAGAR', '105', 0, 2, 1, '', '', '', '0000-00-00', 0),
(974, 'MAHIRA   ANSARI', 'ARIF', 'AZRA', '0000-00-00', '191 RAZA COLONY', '106', 0, 3, 1, '', '', '', '0000-00-00', 0),
(975, 'ERAM   NAAZ', 'MOHAMMED SARFARAZ', '', '0000-00-00', '', '107', 0, 13, 1, '', '', '', '0000-00-00', 0),
(976, 'ASHWANI  KUMAR', 'MEWA RAM', 'REETA DEVI', '0000-00-00', '', '108', 0, 4, 1, '', '', '', '0000-00-00', 0),
(977, 'ISRA  NOURIN', 'IDREES MOHAMMED', 'RAISA BANU', '0000-00-00', '', '109', 0, 3, 1, '', '', '', '0000-00-00', 0),
(978, 'SHAHZEB  KHAN', 'SAJID MOHAMMAD KHAN', '', '0000-00-00', '', '110', 0, 2, 1, '', '', '', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `pdf_path`, `pdf_update_date`, `hold`) VALUES
(979, 'NITU  KHARADI', 'AMRIT LAL KHARADI', 'KAMLA DEVI', '0000-00-00', '237, EKLAVYA COLONY', '111', 0, 3, 1, '', '', '', '0000-00-00', 0),
(980, 'RITU  KHARADI', 'KANTI LAL', 'SHILPA DEVI', '0000-00-00', '237, EKLAVYA COLONY', '112', 0, 6, 1, '', '', '', '0000-00-00', 0),
(981, 'KASHAF  NOOR', 'MOHAMMAD ARIF SHEIKH', 'SHABANAM', '0000-00-00', '', '113', 0, 2, 1, '', '', '', '0000-00-00', 0),
(982, 'MOHAMMED RUHAN ', 'MOHAMMED MAJID KHAN', 'TASKINA BANO', '0000-00-00', '', '114', 0, 2, 1, '', '', '', '0000-00-00', 0),
(983, 'AAFIYA  BANU', 'PATHAN MOHAMMED SHARIF KHAN', 'PATHAN SHIREEN BANO', '0000-00-00', '205, NAGA NAGARI OUT SIDE CHANDPOLE', '115', 0, 2, 1, '', '', '', '0000-00-00', 0),
(984, 'DIVYANSHI  GURJAR', 'SURESH DHABAI', 'GARIMA GURJAR', '0000-00-00', '12, GURJAR BASTI GORELLA', '116', 0, 4, 1, '', '', '', '0000-00-00', 0),
(985, 'PRADEEP SINGH  DEVRA', 'BHAGWAT SINGH DEVRA', 'KAILASH KANWAR', '0000-00-00', '', '117', 0, 3, 1, '', '', '', '0000-00-00', 0),
(986, 'NEEL   GURJAR', 'SURESH DHABAI', 'GARIMA GURJAR', '0000-00-00', '12 GURJAR BASTI GORELLA', '118', 0, 2, 1, '', '', '', '0000-00-00', 0),
(987, 'HEMENDRA SINGH DEVRA', 'FATEH SINGH DEVRA', 'SUNDER KANWAR', '0000-00-00', 'DARDA GORELLA', '119', 0, 4, 1, '', '', '', '0000-00-00', 0),
(988, 'NIRAJ  SINGH DEVRA', 'BHAGWAT SINGH DEVRA', 'KAILASH KANWAR', '0000-00-00', 'DARDA GORELLA', '120', 0, 4, 1, '', '', '', '0000-00-00', 0),
(989, 'ABU   SHIBLI', 'MOHAMMED ASHRAF', 'NADIRA BANO ASHRAFI', '0000-00-00', '146, FAROOQ E AZAM COLONY NEAR MAQDOOM GENRAL STORE', '121', 0, 2, 1, '', '', '', '0000-00-00', 0),
(990, 'LOVE  KUMAR PATEL', 'DHANRAJ PATEL', '', '0000-00-00', '', '122', 0, 11, 1, '', '', '', '0000-00-00', 0),
(991, 'ARHAN AHMED SHEIKH', 'RIZWAN AHMED SHEIKH', 'TASLEEM BANO', '0000-00-00', '117-B BLOCK SAJJAN NAGAR', '123', 0, 2, 1, '', '', '', '0000-00-00', 0),
(992, 'SADIYA SIDDIQUE ', 'SAEED AHMED', 'NAZIMA NISHA', '0000-00-00', 'GARIB NAWAZ COLONY', '124', 0, 3, 1, '', '', '', '0000-00-00', 0),
(993, 'JIVIKA  JOSHI', 'BHERU LAL JOSHI', '', '0000-00-00', 'S-770 CHAMPA COLONY', '125', 0, 2, 1, '', '', '', '0000-00-00', 0),
(994, 'HITANSHI  SUTHAR', 'SURESH SUTHAR', 'TARA SUTHAR', '0000-00-00', '10, NEAR CHOURDHRY GUEST HOUSE', '126', 0, 2, 1, '', '', '', '0000-00-00', 0),
(995, 'SIDDHARTH SINGH GEHLOT', 'SHYAM SINGH GEHLOT', 'ALKA SINGH', '0000-00-00', '172, BHILURANA COLONY NEAR POLICE QUARTER', '127', 0, 11, 1, '', '', '', '0000-00-00', 0),
(996, 'ADARSH  KUMAR', 'ARVIND KUMAR', 'BABITA DEVI', '0000-00-00', '226, EKLAVYA COLONY', '128', 0, 2, 1, '', '', '', '0000-00-00', 0),
(997, 'AYANA  KHAN', 'IRFAN KHAN', 'KANIZ FATIMA', '0000-00-00', '174, KALLESATH IMLI GHAT', '129', 0, 2, 1, '', '', '', '0000-00-00', 0),
(998, 'YUVAN  KUMAWAT', 'GIRIRAJ KUMAWAT', 'YOGITA KUMAWAT', '0000-00-00', '5 ACHARYA MARG OUT SIDE CHANDPOLE', '130', 0, 2, 1, '', '', '', '0000-00-00', 0),
(999, 'AGOSH   KHAN', 'AKRAM KHAN', 'farzana khan', '0000-00-00', '', '131', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1000, 'KULDEEP SINGH BISHT', 'BRIJESH SINGH BISHT', 'KAVITA DEVI', '0000-00-00', '30 BAJRANG MARG JADA GANESH CHOWK', '132', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1001, 'AYESHA  NAAZ', 'RAIS MOHAMMED', 'RIZWANA BANO', '0000-00-00', '', '133', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1002, 'BHAVYA  PHUNWAR', 'VIKAS PHUNWAR', 'AARTI PHUNWAR', '0000-00-00', '', '134', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1003, 'VAIBHAV  OAD', 'DHAMENDRA OAD', 'CHAND OAD', '0000-00-00', '', '135', 0, 1, 1, '', '', '', '0000-00-00', 0),
(1004, 'MALAYKA  KHAN', 'SHAKIL KHAN', 'NOORJAHAN BANO', '0000-00-00', '', '136', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1005, 'AFIFA  NILGAR', 'JAHANGIR HUSSAIN', 'FAHMEEDA BANU', '0000-00-00', '', '137', 0, 14, 1, '', '', '', '0000-00-00', 0),
(1006, 'AAISHA   NILGAR', '', '', '0000-00-00', '', '138', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1007, 'MOHAMMED UMAMA ', 'AHSAN ANSARI', 'REHANA KHATOON', '0000-00-00', '', '139', 0, 11, 1, '', '', '', '0000-00-00', 0),
(1008, 'YASH   PUJARI', 'RAJENDRA PUJARI', 'KOSHALYA PUJARI', '0000-00-00', '', '140', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1009, 'JAY  SOM', 'MIHIR SOM', 'RUPALI SOM', '0000-00-00', '', '141', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1010, 'SAKSHAM  CHANAL', 'GOVIND CHANAL', 'SUMITRA CHANAL', '0000-00-00', '', '142', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1011, 'KAVYA  KANDARA', 'MAHENDRA KANDARA', '', '0000-00-00', '', '143', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1012, 'DARSHANI   YADAV', 'SHASHI YADAV', 'JAGRITI YADAV', '0000-00-00', '', '144', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1013, 'MAHEEN  ZEBA RAZA', 'AHMED RAZA', 'SHABIYA SHEIKH', '0000-00-00', '', '145', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1014, 'MOKSHIKA  CHANDEL', 'VIJENDRA CHANDEL', 'TARA CHANDEL', '0000-00-00', '', '146', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1015, 'OSAF  HUSSAIN', 'MASIYAT HUSSAIN', 'FEZANA', '0000-00-00', '', '147', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1016, 'ANAYA  CHHIPA', 'MOHAMMED HANIF', 'NAZIA PARVEEN', '0000-00-00', '', '148', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1017, 'MOHAMMED AYAAN ', 'MOHAMMED SALIM', 'TABASSUM NAAZ', '0000-00-00', '', '149', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1018, 'MOHAMMED  ARMAAN ', 'MOHAMMED SALIM', 'TABASSUM NAAZ', '0000-00-00', '', '150', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1019, 'SHARIKA  ', 'MOHAMMAD SHAKIL', 'MUNIRA BANO', '0000-00-00', '', '151', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1020, 'ANIKA  ', 'MOHAMMED RAFIQ', '', '0000-00-00', '', '152', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1021, 'TASNEEM KHAN PATHAN', 'MOHAMMED SHARIF', '', '0000-00-00', '', '153', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1022, 'TRISHA  VAISHNAV', 'MUKESH VAISHNAV', 'MANISHA VAISHNAV', '0000-00-00', '', '154', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1023, 'SHRUTI  VAISHNAV', 'MUKESH VAISHNAV', 'MANISHA VAISHNAV', '0000-00-00', '', '155', 0, 4, 1, '', '', '', '0000-00-00', 0),
(1024, 'ASAD  RAZA', 'GULAM JILANI', '', '0000-00-00', '', '156', 0, 14, 1, '', '', '', '0000-00-00', 0),
(1025, 'TAHA   YUNUS', 'MOHAMMED YUNUS', '', '0000-00-00', '', '157', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1026, 'NANDINI  GEHLOT', 'PARMOD GEHLOT', 'POONAM GEHLOT', '0000-00-00', '', '158', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1027, 'KHWAHISH  BEE', 'MUBARAK HUSSAIN', 'NUSRAT BANO', '0000-00-00', '', '159', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1028, 'PRIYANSHI KUMARI YADAV', 'LALIT YADAV', 'RANI YADAV', '0000-00-00', '', '160', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1029, 'HARSHIT   YADAV', 'LALIT YADAV', 'RANI YADAV', '0000-00-00', '', '161', 0, 8, 1, '', '', '', '0000-00-00', 0),
(1030, 'DIVYANSH KUMAR YADAV', 'LALIT YADAV', 'RANI YADAV', '0000-00-00', '', '162', 0, 13, 1, '', '', '', '0000-00-00', 0),
(1031, 'KHIZRA  KHAN', 'MOHSIN KHAN', 'SHAKIRA BANU', '0000-00-00', '', '163', 0, 3, 1, '', '', '', '0000-00-00', 0),
(1032, 'SHIFALI   YADAV', 'LOKESH YADAV', 'NEHA YADAV', '0000-00-00', '2971,B BLOCK AMAR NAGAR', '164', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1033, 'TAHA  YUNUS', 'MOHAMMED yunus', 'naseem begum', '0000-00-00', '61 raza colony mullatali', '157', 0, 5, 1, '', '', '', '0000-00-00', 0),
(1034, 'MOHIT  TELI', 'MUKUL TELI', 'LALITA TELI', '0000-00-00', '', '166', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1035, 'GAURAV   MEGHWAL', 'LALURAM ', 'MANJU', '0000-00-00', '', '167', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1036, 'DIVYANSHI  MEGHWAL', '', '', '0000-00-00', '', '168', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1037, 'CHHAVI  MEGHWAL', 'LALURAM', 'MANJU', '0000-00-00', '', '169', 0, 7, 1, '', '', '', '0000-00-00', 0),
(1038, 'MOHAMMED ZAHEER ', 'ZOYEB AKHTAR', '', '0000-00-00', '', '170', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1039, 'AKHILESH   SHARMA', 'DILIP SHARMA', 'ANJALI SHARMA', '0000-00-00', 'RANGNIWAS PICHOLI', '171', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1040, 'MOHAMMED  OVESH KHAN', 'MOHSIN KHAN', 'NILOFAR KHANAM', '0000-00-00', '', '172', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1041, 'MANVIK  GHARU', 'KULDEEP GHARU', 'SUMAN GHARU', '0000-00-00', '', '173', 0, 2, 1, '', '', '', '0000-00-00', 0),
(1042, 'LOKESH   PATEL', 'DEVI LAL PATEL', 'DOLI PATEL', '0000-00-00', '', '174', 0, 6, 1, '', '', '', '0000-00-00', 0),
(1043, 'TIRTHRAJ  PATEL', 'DEVI LAL PATEL', 'DOLI PATEL', '0000-00-00', '', '175', 0, 9, 1, '', '', '', '0000-00-00', 0),
(1044, 'DHAIRYA  GARG', 'NARPAT GARG', 'BHAVINI GARG', '0000-00-00', '', '176', 0, 14, 1, '', '', '', '0000-00-00', 0),
(1045, 'DHAIRYA  GARG', 'NARPAT GARG', 'BHAVINI GARG', '0000-00-00', '', '177', 0, 14, 1, '', '', '', '0000-00-00', 0),
(1046, 'DHARYA  GARG', 'NARPAT GARG', 'BHAVINI GARG', '0000-00-00', '', '178', 0, 14, 1, '', '', '', '0000-00-00', 0),
(1047, 'mithilesh  purbia', 'giriraj', 'lalita purbia', '0000-00-00', 'OTC B BLOCK AMAR NAGAR', '179', 0, 10, 0, '', '', '', '0000-00-00', 0),
(1048, 'ZOYA   SHEIKH', 'MOHAMMED TARIK', 'NAZNEEN SHEIKH', '0000-00-00', '', '180', 0, 3, 1, '', '', '', '0000-00-00', 0);

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
-- Indexes for table `master_section_main`
--
ALTER TABLE `master_section_main`
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `master_architecture`
--
ALTER TABLE `master_architecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `master_class`
--
ALTER TABLE `master_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `master_section_main`
--
ALTER TABLE `master_section_main`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1049;
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
