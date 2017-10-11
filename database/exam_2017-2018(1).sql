-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 31, 2017 at 10:26 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_2017-2018`
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
(2, 'FA2');

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
(1, 'FA1'),
(2, 'FA2');

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
(2, 7, 1);

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
  `class` varchar(30) NOT NULL,
  `roman` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_class`
--

INSERT INTO `master_class` (`id`, `class`, `roman`) VALUES
(1, 'Pre Nursery', 'Pre Nursery'),
(2, 'Nursery', 'Nursery'),
(3, 'KG', 'KG'),
(4, 'Prep', 'Prep'),
(5, 'First', 'I'),
(6, 'Second', 'II'),
(7, 'Third', 'III'),
(8, 'Fourth', 'IV'),
(9, 'Fifth', 'V'),
(10, 'Sixth', 'VI'),
(11, 'Seventh', 'VII'),
(12, 'Eighth', 'VIII'),
(13, 'Ninth', 'IX'),
(14, 'Tenth', 'X'),
(15, 'Eleventh', 'XI'),
(16, 'Twelfth', 'XII');

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
(1, 'Lily'),
(2, 'Rose'),
(3, 'Marigold'),
(4, 'Science'),
(5, 'Commerce');

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
  `dob` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `scholar_no` varchar(100) NOT NULL,
  `roll_no` int(50) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `batch` varchar(50) NOT NULL,
  `photo_path` varchar(200) NOT NULL,
  `pdf_update_date` date NOT NULL,
  `hold` int(1) NOT NULL COMMENT '0=unhold, 1=hold'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `photo_path`, `pdf_update_date`, `hold`) VALUES
(1, 'Ayush Suthar', 'Mr. Bherulal Suthar', '', '2014-07-21', 'Shreenath Colony [A] Nathdwara', '', 0, 1, 1, '', '', 'IMG_0933.JPG', '0000-00-00', 0),
(2, 'Deepak Gurjar', 'Mr. Shantilal Gurjar', '', '2013-09-21', 'Dipty Kheda, Rajsamand', '', 0, 1, 1, '', '', 'IMG_0061.JPG', '0000-00-00', 0),
(3, 'Devraj Singh Chouhan', 'Mr. Ratan Singh  Chouhan', '', '2013-05-31', 'Gunjol, Tehsil -  Nathdwara', '', 0, 1, 1, '', '', 'IMG_0932.JPG', '0000-00-00', 0),
(4, 'Dinisha Dhoka', 'Mr. Bhupesh Dhoka', '', '2014-10-17', 'Kothari Mohalla, Near Masjid, Sadar Bazar, Rajnagar(Raj)', '', 0, 1, 1, '', '', 'IMG_0062.JPG', '0000-00-00', 1),
(5, 'Gayatri Choudhary', 'Mr. Pradeep Choudhary', '', '2013-06-27', 'Krishna Nagar, Bhilwara Road, Kankroli (Raj.)', '', 0, 1, 1, '', '', 'IMG_0435.JPG', '0000-00-00', 0),
(6, 'Giriraj Inani', 'Mr. Mahesh Kumar Inani', '', '2013-08-21', 'Modiyon ki Khidak, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0063.JPG', '0000-00-00', 0),
(7, 'Ishita Sharma', 'Mr. Madhav Lal Sharma', '', '2014-05-17', 'Narayan Chowk, Sukhadia Nagar, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0064.JPG', '0000-00-00', 0),
(8, 'Jay Purohit', 'Mr. Pawan Kumar Purohit', '', '2013-12-07', 'Vill.- Gudla, Post- Dhanyala, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0065.JPG', '0000-00-00', 0),
(9, 'Love Kumar Jain', 'Mr. Mahesh Kumar Jain', '', '2013-12-13', 'Rakesh Tra. Co., Near Samiti, Awada, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0067.JPG', '0000-00-00', 0),
(10, 'Mayukh Dhoka', 'Mr. Ranjeet Dhoka', '', '2014-07-03', 'Near Emmanual Mission School, Kothari Mohalla, Rajnagar(Raj)', '', 0, 1, 1, '', '', 'IMG_0068.JPG', '0000-00-00', 0),
(11, 'Rajveer Chavan', 'Mr. Ramesh Chavan', '', '2013-01-11', 'Gunjol Circle,  Nathdwara', '', 0, 1, 1, '', '', 'IMG_0069.JPG', '0000-00-00', 0),
(12, 'Riddhi Prajapat', 'Mr. Pavan Kumar Prajapat', '', '2013-10-06', 'Naya Kumharwada, Sindhi Colony Road, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0070.JPG', '0000-00-00', 0),
(13, 'Vallabhi Bagora', 'Mr. Dharmendra Bagora', '', '2014-01-12', 'Mahaveer Health Club, Sukhadia Nagar, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0071.JPG', '0000-00-00', 1),
(14, 'Vansh Gollani', 'Mr. Mahendra Gollani', '', '2013-10-22', 'Sindhi Colony, Opp. Sukh Sagar, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0072.JPG', '0000-00-00', 0),
(15, 'Dakshish Salvi', 'Mr. Narayan Lal Salvi', '', '2013-11-13', 'Police Quarter, Nathuwas, Nathdwara', '', 0, 1, 1, '', '', 'IMG_0074.JPG', '0000-00-00', 1),
(16, 'Manvi Kataria', 'Mr. Abhishek Kataria', '', '2014-08-25', 'Lodha Ghati, Ganesh Nagar, Nathdwara ', '', 0, 1, 1, '', '', 'IMG_0076.JPG', '0000-00-00', 0),
(17, 'Pragyashree Solanki', 'Mr. Raja Daman Singh', '', '2014-11-18', '22 K, Sukhadia Nagar, Panchwati Chouraha, Nathdwara', '', 0, 1, 1, '', '', '01.JPG', '0000-00-00', 0),
(18, 'Karnaditya Singh Chouhan', '', '', '', '', '', 0, 1, 1, '', '', '02.JPG', '0000-00-00', 0),
(19, 'Avani Kumawat', 'Mr. Jitesh Kumawat', '', '2014-05-26', 'NH 8, Opp. Lalbaag, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0043.JPG', '0000-00-00', 0),
(20, 'Bhuvnesh Bhatt', 'Mr.Himanshu Bhatia', '', '2014-08-08', 'Shri Kunj, Be. Nikunj River Re., Kanvr Ro., Nathdwara', '', 0, 2, 1, '', '', 'IMG_0046.JPG', '0000-00-00', 0),
(21, 'Chakshu Kothari', 'Mr. Sharad Kothari', '', '2014-03-05', 'C/O Rang Niwas, Nai Abadi, kankroli, Raj.', '', 0, 2, 1, '', '', 'IMG_0052.JPG', '0000-00-00', 0),
(22, 'Dev Gurjar', 'Mr. Yudhisthir Gurjar', '', '2013-09-20', 'Vallabhpura, Near Gurjarpura Gati', '', 0, 2, 1, '', '', 'IMG_0053.JPG', '0000-00-00', 0),
(23, 'Divyansh Mali', 'Mr. Sheshnarayan Mali', '', '2014-02-05', 'Bhandari Bavdi, Lal Baag, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0054.JPG', '0000-00-00', 0),
(24, 'Fiya Joshi', 'Mr. Jai Prakash Joshi', '', '2013-09-14', 'Near Water Tank, Sukhadia Nagar, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0055.JPG', '0000-00-00', 0),
(25, 'Janmejay Koushik', 'Mr. Bhupendra K. Nandwana', '', '2014-03-27', '39 Yashaan, Bh. RSEB Off. , Ganesh Nagar, Jawad, Kankroli, Rajsamand', '', 0, 2, 1, '', '', 'IMG_0934.JPG', '0000-00-00', 0),
(26, 'Krishna Nikam', 'Mr. Ganesh Nikam', '', '2013-09-04', 'Gunjol Circle, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0056.JPG', '0000-00-00', 0),
(27, 'Lovnesh Kumar Agrawal', 'Mr. Pawan Agrawal', '', '2013-10-19', 'H.N. 43, Arihant Nagar, Near Shree Ji Hospital, Rajsamand', '', 0, 2, 1, '', '', 'IMG_0057.JPG', '0000-00-00', 0),
(28, 'Naman Jani', 'Mr. Shankar Shiv Lal Jani', '', '2014-03-21', 'Near Samiti Awada, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0058.JPG', '0000-00-00', 0),
(29, 'Pareen Kothari', 'Mr. Gagandeep Kothari', '', '2014-03-17', 'Near Sheetla Mata Temple, Sadar Bazar, Rajsamand', '', 0, 2, 1, '', '', 'IMG_0436.JPG', '0000-00-00', 0),
(30, 'Shree Tak', 'Mr. Bhagwati Lal Tak', '', '2014-07-05', 'W.N. 27 Sinand Nathdwara', '', 0, 2, 1, '', '', 'IMG_0059.JPG', '0000-00-00', 0),
(31, 'Tanveer Singh Dodiya', 'Mr. Vikram Singh Dodiya', '', '2014-12-28', 'Kotela, Bagol', '', 0, 2, 1, '', '', 'IMG_0438.JPG', '0000-00-00', 0),
(32, 'Yagna Pratap S. Rathore', 'Mr. Pramendra Singh Rathore', '', '2013-12-31', 'Shankar Pura Dhoinda, Kumbha Nagar , R.K. Hoapital, Raj.', '', 0, 2, 1, '', '', '03.JPG', '0000-00-00', 0),
(33, 'Nisha Suthar', 'Mr. Vimal Suthar', '', '2013-11-05', 'Sihad Uba Ganesh ji Ke Pass, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0060.JPG', '0000-00-00', 0),
(34, 'Aarohi Mali', 'Mr. Suresh Mali', '', '2013-12-15', 'Bajrang Chouraha, Rajnagar', '', 0, 2, 1, '', '', '48.JPG', '0000-00-00', 0),
(35, 'Yuviksha Singh Chouhan', 'Mr. Hukum Singh Chouhan', '', '2014-07-10', 'Vill. Post - Gunjol, Tehsil - Nathdwara', '', 0, 2, 1, '', '', '04.JPG', '0000-00-00', 0),
(36, 'Priyanshi Kunwar Chouhan', 'Mr. Bhoop Durgesh Singh Chouhan', '', '2014-05-12', 'Vill. Post - Gunjol, Tehsil - Nathdwara', '', 0, 2, 1, '', '', '05.JPG', '0000-00-00', 0),
(37, 'Anukriti Malpani', 'Mr. Sanjay Malpani', '', '2012-12-27', 'Near Telephone Exchange Sukhadia Nagar, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0078.JPG', '0000-00-00', 0),
(38, 'Ali Asgar Bohra', 'Mr. Mustafa Hussian', '', '2012-08-17', 'Bohra Bazar, Telipura, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0950.JPG', '0000-00-00', 0),
(39, 'Dhanvi Patel', 'Mr. Brijesh Suresh Bhai Patel', '', '2012-07-02', 'Near BSNL Extension, Kishore Nagar, Rajsamand', '', 0, 3, 2, '', '', 'IMG_0079.JPG', '0000-00-00', 0),
(40, 'Dhruvit Shekhar', 'Mr. Manish Shekhar', '', '2012-08-27', 'H.No. - 12, Opposite Lal Baag, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0080.JPG', '0000-00-00', 0),
(41, 'Hiral Jain', 'Mr. Hitesh Jain', '', '2012-12-31', 'Adarsh Nagar, Umang Palace, New Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0081.JPG', '0000-00-00', 0),
(42, 'Hiya Jain', 'Mr. Kapil Jain', '', '2013-05-17', 'Ambika Bhawan, Adarsh Nagar, New Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0082.JPG', '0000-00-00', 0),
(43, 'Jaynee Sanadhya', 'Mr. Rahul Sanadhya', '', '2013-04-04', 'Near Ambawara Akhada, Nathuwas Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0083.JPG', '0000-00-00', 0),
(44, 'Kritika Dashora', 'Mr. Sushil Dashora', '', '2012-06-20', 'Behind Sr. Sec. School, Near Shiv Mandir, Kankroli (Rajsamand)', '', 0, 3, 2, '', '', 'IMG_0084.JPG', '0000-00-00', 0),
(45, 'Lavansh Khandelwal', 'Mr. Manish Khandelwal', '', '2013-03-16', 'Rawaton Ka Darwaja, Kumharwara, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0085.JPG', '0000-00-00', 0),
(46, 'Mayank Sharma', 'Mr. Puranmal Sharma', '', '2012-07-22', 'RHB Sukhadia Nagar, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0086.JPG', '0000-00-00', 0),
(47, 'Moheen Ashwani', 'Mr. Suresh Ashwani', '', '2012-12-05', 'H. No. - 123, Friends Colony, Opposite Lal Baag, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0469.JPG', '0000-00-00', 0),
(48, 'Nehal Paliwal', 'Mr. Sunil Paliwal', '', '2013-04-15', 'Kanwa Nandsamand Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0087.JPG', '0000-00-00', 0),
(49, 'Pankhu Jain', 'Mr. Ujjwal Prakash Lodha', '', '2013-06-18', 'Nai Haweli Chowk, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0088.JPG', '0000-00-00', 0),
(50, 'Sarvaang Sharma', 'Mr. Shivhari Sharma', '', '2012-11-01', 'Near Samudyik Bhawan, Sukhadia Nagar, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0090.JPG', '0000-00-00', 0),
(51, 'Diya Mantri', 'Mr. Rakesh Mantri', '', '2012-02-29', 'Kishore Nagar, Manda, Rajsamand', '', 0, 3, 2, '', '', 'IMG_0091.JPG', '0000-00-00', 0),
(52, 'Divisha Mantri', 'Mr. Kamlesh Mantri', '', '2013-03-12', 'Kishore Nagar, Manda, Rajsamand', '', 0, 3, 2, '', '', 'IMG_0093.JPG', '0000-00-00', 0),
(53, 'Pankhudi Khandelwal', 'Mr. Rakesh Khandelwal', '', '2013-01-05', 'Front off Nani ji ka Baag, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0094.JPG', '0000-00-00', 0),
(54, 'Harwin Khushija', 'Mr. Nilesh Kushija', '', '2013-07-10', 'A-103 Mangalam Residency, RTDC road, Lal Baag, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0095.JPG', '0000-00-00', 0),
(55, 'Mridul Bhatia', 'Mr. Sachin Bhatia', '', '2013-04-21', 'Mohan Garh, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0097.JPG', '0000-00-00', 0),
(56, 'Vedant Sharma', 'Mr. Prakash Sharma', '', '2013-01-22', 'Nai Haveli Chowk, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0098.JPG', '0000-00-00', 0),
(57, 'Ragini Sahu', 'Mr. Govind Sahu', '', '2013-01-06', 'Badarda, Rajsamand', '', 0, 3, 2, '', '', 'IMG_0100.JPG', '0000-00-00', 0),
(58, 'Rajveer Tailor', 'Mr. Bheru Lal Tailor', '', '2013-03-29', '74 - Shiv Nagar Lal Baag, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0101.JPG', '0000-00-00', 0),
(59, 'Heramb Nandwana', 'Mr. Devesh Kumar Nandwana', '', '2013-01-01', 'Shanti Niketan, Nand Colony, Rajnagar', '', 0, 3, 2, '', '', 'IMG_0102.JPG', '0000-00-00', 0),
(60, 'Dakshraj Singh', 'Mr. Sumer Singh', '', '2012-07-10', 'Kalla Khedi, Badalawali, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0103.JPG', '0000-00-00', 0),
(61, 'Raghav Sahu', 'Mr. Dinesh Chandra Sahu', '', '2013-01-22', 'Badarda, Rajsamand', '', 0, 3, 2, '', '', 'IMG_0104.JPG', '0000-00-00', 0),
(62, 'Priyanshi Kunwar Chouhan', 'Mr. Gurudayal Singh Chouhan', '', '2013-06-18', 'Ambika Vill. Kuncholi', '', 0, 3, 2, '', '', 'IMG_0105.JPG', '0000-00-00', 0),
(63, 'Anushka Kumawat', 'Mr. Gaurav Kumawat', '', '2012-11-27', 'Lal Bag, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0106.JPG', '0000-00-00', 0),
(64, 'Batul Bohra', 'Mr. Hakimuddin Bohra', '', '2013-07-17', 'Tehsil Road, Holi Mangra, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0107.JPG', '0000-00-00', 0),
(65, 'Devishi Gurjar', 'Mr. Deepak Gurjar', '', '2013-02-13', 'Vallabhpura Gati, Govind Chowk, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0467.JPG', '0000-00-00', 0),
(66, 'Divya Choudhary', 'Mr. Yogendra Singh Choudhary', '', '2012-09-29', 'Rawato Ka Darwaja, Jaat Mohalla, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0108.JPG', '0000-00-00', 0),
(67, 'Garvit Boliwal', 'Mr. Kamla Shankar Boliwal', '', '2013-06-26', 'Banas Pul, Gunjol, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0951.JPG', '0000-00-00', 0),
(68, 'Himanshi Lohar', 'Mr. Manoj Lohar', '', '2012-12-31', 'Vill. & Post. Dhanyala, Teh. Nathdwara, Dist. Rajsamand', '', 0, 2, 1, '', '', 'IMG_0109.JPG', '0000-00-00', 0),
(69, 'Hriyansh Singh Chouhan', 'Mr. Ganpat Singh Chouhan', '', '2013-02-23', 'Kallakhedi Viran, Post - Gunjol, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0110.JPG', '0000-00-00', 0),
(70, 'Jay Kaneria', 'Mr. Kuldeep Kaneria', '', '2012-09-29', 'G.53, Sukhadia Nagar, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0111.JPG', '0000-00-00', 0),
(71, 'Kabir Mehta', 'Mr. Anil Kumar Mehta', '', '2012-03-31', 'Bhalawaton Ka Kheda, R.T.D.C. Road, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0468.JPG', '0000-00-00', 0),
(72, 'Lakshita Saini', 'Mr. Dheeraj Saini', '', '2012-12-23', 'Lal Baag, Kheto Par, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0112.JPG', '0000-00-00', 0),
(73, 'Leesha Dagliya', 'Mr. Jeevan Dagliya', '', '2012-10-03', 'Mahaveerpura, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0113.JPG', '0000-00-00', 0),
(74, 'Mann Bhatt', 'Mr. Shyam Sundar Bhatt', '', '2013-03-25', 'Near Uba Ganeshji Mandir, Sinhad, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0114.JPG', '0000-00-00', 0),
(75, 'Maayra Choudhary', 'Mr. Mahendra Singh Choudhary', '', '2012-09-29', 'Manli Villa, Shanti Colony, Kankroli, (Rajsamand)', '', 0, 2, 1, '', '', 'IMG_0115.JPG', '0000-00-00', 0),
(76, 'Prassan Lodha', 'Mr. Pawan Lodha', '', '2013-06-18', 'Sohan Villa, Mahaveerpura, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0117.JPG', '0000-00-00', 0),
(77, 'Preksha Choudhary', 'Mr. Rahul Singh Choudhary', '', '2013-03-28', 'Rawaton Ka Darwaja, Jat Mohalla, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0118.JPG', '0000-00-00', 0),
(78, 'Raghav Shrimali', 'Mr. Prakash Chandra Shrimali', '', '2012-05-05', 'Chintamani Ka Madada, Tehsil - Rajsamand', '', 0, 2, 1, '', '', 'IMG_0120.JPG', '0000-00-00', 0),
(79, 'Tanish Somani', 'Mr. Rajkumar Somani', '', '2012-10-17', 'Near Tera Panthi Nohra, Nai Haweli Chowk, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0121.JPG', '0000-00-00', 0),
(80, 'Gaurav Lohar', 'Mr. Praveen Lohar', '', '2012-08-02', 'Vill. & Post. Dhanyala, Teh. Nathdwara, Dist. Rajsamand', '', 0, 2, 1, '', '', 'IMG_0122.JPG', '0000-00-00', 0),
(81, 'Indra Vardhan Paliwal', 'Mrs. Manju Paliwal', '', '2013-07-31', 'FI Narayan Chowk, Sukhadia Nagar, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0123.JPG', '0000-00-00', 0),
(82, 'Hemant Kumar ', 'Mr. Rajgopal Maheshwari', '', '2012-11-06', 'Kishor Nagar Manda', '', 0, 2, 1, '', '', 'IMG_0124.JPG', '0000-00-00', 0),
(83, 'Gunjan Kumawat', 'Mr. Jagdish Chandra Kumawat', '', '2012-09-27', 'Near Swastik Cinema, Kankroli', '', 0, 2, 1, '', '', 'IMG_0125.JPG', '0000-00-00', 0),
(84, 'Vidhi Veerwal', 'Mr. Vinod Kumar Veerwal', '', '2012-12-09', 'Badarda, Rajsamand', '', 0, 2, 1, '', '', 'IMG_0128.JPG', '0000-00-00', 0),
(85, 'Ishita Inani', 'Mr. Bhagwati Lal Inani', '', '2013-07-31', 'H.No. - 200, Anand Nagar, Kothariya Road, Lal Baag, Nathdwara', '', 0, 2, 1, '', '', 'IMG_0127.JPG', '0000-00-00', 0),
(86, 'Shivansh Chouhan', 'Mr. Prahalad Singh Chouhan', '', '2013-03-10', 'IV / 37 Civil Lines, Kankroli (Rajsamand)', '', 0, 2, 1, '', '', 'IMG_0126.JPG', '0000-00-00', 0),
(87, 'Mohammad Sufiyan', 'Mr. Mohammad Iliyas', '', '', 'Indra colony, Kishore Nagar, Rajnagar', '', 0, 2, 1, '', '', 'IMG_0130.JPG', '0000-00-00', 0),
(88, 'Abhyuday Sing Chouhan', 'Mr. Ranjeet Singh Chouhan', '', '2012-01-04', 'Kalla Khedi, Gunjol, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0131.JPG', '0000-00-00', 0),
(89, 'Avani Shri Shrimal', 'Mr. Anil Shri Shrimal', '', '2012-07-12', 'Near Imali Wala Balaji, Naya Bazar, Kankroli', '', 0, 3, 2, '', '', 'IMG_0132.JPG', '0000-00-00', 0),
(90, 'Bhavya Choudhary', 'Mr. Rahul Singh Choudhary', '', '2011-07-14', 'Ravat Gate, Jat Mohalla, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0133.JPG', '0000-00-00', 0),
(91, 'Dhanvi Sharma', 'Mr. Vijay Sharma', '', '2012-07-04', 'Tejaji Chowk, Bagarwara, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0134.JPG', '0000-00-00', 0),
(92, 'Divit Mandhana', 'Mr. Kamal Kumar Maheshwari', '', '2012-02-25', '56, Suner Colony, Bhilwara Road, (Rajsamand)', '', 0, 3, 2, '', '', '47.JPG', '0000-00-00', 0),
(93, 'Falguni Shrimali', 'Mr. Bhagwati Prasad Shrimali', '', '2012-06-06', 'Shri Hem Villa, 300 K, Panch Ratan Complex, Kankroli', '', 0, 3, 2, '', '', 'IMG_0135.JPG', '0000-00-00', 0),
(94, 'Gative Surana', 'Mr. Nitesh Surana', '', '2011-12-01', 'Friends Colony, Lal Bagh, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0136.JPG', '0000-00-00', 0),
(95, 'Ishani Joshi', 'Mr. Rajesh Joshi', '', '2012-05-20', 'Joshi Jewellers, Temple Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0137.JPG', '0000-00-00', 0),
(96, 'Jenit Kumawat', 'Mr. Devendra Kumawat', '', '2012-03-19', '47, Krishna Jewellers, Fouz Mohalla, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0138.JPG', '0000-00-00', 0),
(97, 'Kanishk Dadhich', 'Mr. Ajay Dadhich', '', '2012-11-03', 'Behind Ice Factory, Shastri Nagar, Bhilwara Road, Kankroli', '', 0, 3, 2, '', '', 'IMG_0139.JPG', '0000-00-00', 0),
(98, 'Keya Talesara', 'Mr. Vipin Talesara', '', '2012-01-07', 'Tulsi Vihar, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0140.JPG', '0000-00-00', 0),
(99, 'Lavanya Sharma', 'Mr. Sanjay Kumar Sharma', '', '2011-10-13', 'Anand Nagar, Kotharia Road, Lal Baag, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0141.JPG', '0000-00-00', 0),
(100, 'Lavraj Singh Chouhan', 'Mr. Mahendra Singh Chouhan', '', '2012-05-06', 'Gunjol, Nathdwara, (Rajsamand)', '', 0, 3, 2, '', '', 'IMG_0143.JPG', '0000-00-00', 0),
(101, 'Navya Shekhar', 'Mr. Mahesh Chandra Shekhar', '', '2011-08-08', 'In Front Of Lal Baag, N.H. - 8, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0144.JPG', '0000-00-00', 0),
(102, 'Riya Jain', 'Mr. Himmat Jain', '', '2011-09-01', 'Mr. Rakesh Trading Company, Near Samiti, Govindpura Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0145.JPG', '0000-00-00', 0),
(103, 'Riya Surana', 'Mr. Pankaj Surana', '', '2011-11-23', 'Shreenath Colony ''B'', Near Police Station, Pawati Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0146.JPG', '0000-00-00', 0),
(104, 'Sanidhya Surana', 'Mr. Chirag Surana', '', '2011-11-30', 'Shreenath Colony ''B'', Near Police Station, Pawati Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0147.JPG', '0000-00-00', 0),
(105, 'Shailesh Prajapat', 'Mr. Vinod Prajapat', '', '2011-12-02', 'Naya Kumharwara, Sindhi Colony Road, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0148.JPG', '0000-00-00', 0),
(106, 'Yajur Sharma', 'Mr. Narendra Kumar Sharma', '', '2012-03-15', 'Bichhu Mangari, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0149.JPG', '0000-00-00', 0),
(107, 'Manas Vyas', 'Mr. Manish Vyas', '', '2011-12-05', '180 Nai Abadi, Kankroli', '', 0, 3, 2, '', '', 'IMG_0150.JPG', '0000-00-00', 0),
(108, 'Khyati Saini ', 'Dr. Vinod Saini', '', '2012-08-29', 'H,. No. -30, Dattatray Nagar, Bh. Ren Basera, Bhilwara Road, Kankroli, Rajsamand', '', 0, 3, 2, '', '', 'IMG_0151.JPG', '0000-00-00', 0),
(109, 'Soham Sharma', 'Mr. Manoj Sharma', '', '2012-02-01', 'H-4, White Gold Appartment, Mahaveer Nagar, 100 Ft. Road, Bh. HDFC Bank Rajsamand', '', 0, 3, 2, '', '', 'IMG_0152.JPG', '0000-00-00', 0),
(110, 'Rutva Vyas', 'Mr. Parag Vyas', '', '2011-09-03', 'J-19, Near Telephone Exchange, Sukhadia Nagar, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0935.JPG', '0000-00-00', 0),
(111, 'Utkrasht Shrimali', 'Mr. Harish Shrimali', '', '2011-09-08', 'Opp. Shiv- Gouri Mandir, Nai Abadi, Bhilwara Road,  Kankroli, Rajsamand', '', 0, 3, 2, '', '', 'IMG_0153.JPG', '0000-00-00', 0),
(112, 'Manas Bohra', 'Mr. Gopal Bohra', '', '2012-01-19', 'Vishveshver Nagar, Near Abhinandan Vatica, Station Road, Kankroli', '', 0, 3, 2, '', '', 'IMG_0154.JPG', '0000-00-00', 0),
(113, 'Khwahish Mandot', 'Mr. Rahul Kumar Mandot', '', '2012-01-08', 'Gokuldham Hotel Ke Samne, Lal Baag, Nathdwara', '', 0, 3, 2, '', '', 'IMG_0155.JPG', '0000-00-00', 0),
(114, 'Varun Maheshwari', 'Mr. Rajesh Maheshwari', '', '2012-03-28', '2 - 174, Nai Aabadi, Kankroli', '', 0, 3, 2, '', '', 'IMG_0156.JPG', '0000-00-00', 0),
(115, 'Shivi Dixit', 'Mr. Bhushan Sharma', '', '2012-04-30', 'Khano Ka Rasta, New Bhrmpuri, Dhoinda, Kankroli, Raj.', '', 0, 3, 2, '', '', 'IMG_0185.JPG', '0000-00-00', 0),
(116, 'Aakansha Keer', 'Mr. Kishan Lal Keer', '', '2011-09-17', 'S Ivam Near C. Graphic School, Panch Ratan Complex, Keshav Nagar, Gudali (Rajsamand)', '', 0, 3, 1, '', '', 'IMG_0157.JPG', '0000-00-00', 0),
(117, 'Chaitri Sanchihar', 'Mr. Bhaskar Sanchihar', '', '2012-03-26', 'Gopal Niwas, Hotal Ganga Sadan, Mohangarh', '', 0, 3, 1, '', '', 'IMG_0159.JPG', '0000-00-00', 0),
(118, 'Chanchal Foujdar', 'Mr. Ram Pratap Singh', '', '2011-09-19', 'Railway Police Line, Rajsamand', '', 0, 3, 1, '', '', 'IMG_0160.JPG', '0000-00-00', 0),
(119, 'Charvi Chaplot', 'Mr. Durgesh Chaplot', '', '2012-04-20', 'Chintamani Ka Madra, Post - Farara, (Rajsamand)', '', 0, 3, 1, '', '', 'IMG_0161.JPG', '0000-00-00', 0),
(120, 'Anshpuri Goswami', 'Mr. Manojpuri Goswami', '', '2012-01-28', 'Ganesh Nagar, Jawad, Kankroli, (Rajsamand)', '', 0, 3, 1, '', '', 'IMG_0162.JPG', '0000-00-00', 0),
(121, 'Falguni Juniwal', 'Mr. Harish Juniwal', '', '2012-07-04', 'Anand Nagar, Lal Baag, Kotharia Road, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0163.JPG', '0000-00-00', 0),
(122, 'Hardik Choudhary', 'Mr. Mahendra Singh Choudhary', '', '2011-08-16', 'Mahendra Singh, A - 7 Police Quarters, Nathuwas, Nathdwara', '', 0, 3, 1, '', '', '06.JPG', '0000-00-00', 0),
(123, 'Hemangani Shekhar Mali', 'Mr. Harshavardhan Shekhar Mali', '', '2011-12-14', 'Lal Baag Ke Samne, N.H. - 8 Road, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0164.JPG', '0000-00-00', 0),
(124, 'Moksh Bhatia', 'Mr. Himanshu Bhatia', '', '2012-04-05', 'Hanuman Mandir Road, Nikunj R., Bichhumangri, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0165.JPG', '0000-00-00', 0),
(125, 'Parishi Dadheech', 'Mr. Piyush Dadheech', '', '2011-11-21', 'Jeevan Jagrati Colony, Fouj Mohalla, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0166.JPG', '0000-00-00', 0),
(126, 'Pragyan Sharma', 'Mr. Krishna Chandra Sharma', '', '2012-04-07', 'C/o Mr. Khyali Lal Jain, Krishna Chandra Sharma, Behind Choudhary Petrol Pump, Jain Colony', '', 0, 3, 1, '', '', 'IMG_0167.JPG', '0000-00-00', 0),
(127, 'Radhika Audichya', 'Mr. Vitthal Audichya', '', '2012-01-17', 'Uba Ganesh Ji Mandir, Sinhad, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0168.JPG', '0000-00-00', 0),
(128, 'Riddhi Jain', 'Mr. Vimlesh Jain', '', '2012-05-05', 'Aadarsh Nagar, Tehsil Road, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0170.JPG', '0000-00-00', 0),
(129, 'Rudra Choudhary', 'Mr. Amit Choudhary', '', '2012-02-13', 'Rawaton Ka Darwaja, Patwari Payasa, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0171.JPG', '0000-00-00', 0),
(130, 'Siddhi Kunwar Chouhan', 'Mr. Hemant Singh Chouhan', '', '2011-12-02', 'Village - Jambu Talab, Post - Gunjol, Tehsil - Nathdwara, Dist. - (Rajsamand)', '', 0, 3, 1, '', '', 'IMG_0173.JPG', '0000-00-00', 0),
(131, 'Tanmay Bhatia', 'Mr. Bhupesh Bhatia', '', '2011-11-23', 'Matru Shri Campus'' Opp. Nathi Nagar, Govind Nagar, Bichhu Mangri, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0174.JPG', '0000-00-00', 0),
(132, 'Vedanshi Badola', 'Mr. Kapil Badola', '', '2012-05-23', 'Badola Sadan, Nayakwari, Rajnagar', '', 0, 3, 1, '', '', 'IMG_0176.JPG', '0000-00-00', 0),
(133, 'Yatharth Kumawat', 'Mr. Dr. Ashok Kumawat', '', '2012-03-14', '100 Fit Road, Near Ramanuj Vatika, Kankroli, (Rajsamand)', '', 0, 3, 1, '', '', 'IMG_0177.JPG', '0000-00-00', 0),
(134, 'Palak Soni', 'Mr. Chandra Prakash', '', '2012-10-02', 'Mahatma Gali, Dani Chabutra, Sadar Bazar, Raj.', '', 0, 3, 1, '', '', 'IMG_0178.JPG', '0000-00-00', 0),
(135, 'Lakshika Somani', 'Mr. Nirmal Somani', '', '2011-12-07', 'Bh. Bombay Cottage, Rampura, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0179.JPG', '0000-00-00', 0),
(136, 'Harshveer Singh Jhala', 'Mr. Raghuveer Singh Jhala', '', '2012-07-24', 'Bh. Garden View Hotel, Panchvati Colony, Near PO. Sta. Ntd.', '', 0, 3, 1, '', '', 'IMG_0180.JPG', '0000-00-00', 0),
(137, 'Bhavit Kumawat', 'Mr. Suresh Chandra Kumawat', '', '2012-07-30', 'Near Charbhuja Temple, Fauj Mohalla, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0181.JPG', '0000-00-00', 0),
(138, 'Naksh Raj Singh Chundawat', 'Mr. Arvind Singh Chundawat', '', '2012-07-11', '108, Police Line Rajsamand', '', 0, 3, 1, '', '', 'IMG_0182.JPG', '0000-00-00', 0),
(139, 'Rachit Sanchihar', 'Mr. Bhuvnesh Sanchihar', '', '2011-09-02', 'Gopal Niwas Hotel, Mohangadh, Nathdwara', '', 0, 3, 1, '', '', 'IMG_0183.JPG', '0000-00-00', 0),
(140, 'Kathan Sanchihar', 'Mr. Himanshu Sanchihar', '', '2012-11-11', 'Vitthalnath Ji Street, Opp. Pritham Pol, New Market , Ntd.', '', 0, 3, 1, '', '', 'IMG_0186.JPG', '0000-00-00', 0),
(141, 'Raj Rajeshwari Singh Chundawat', 'Mr. Dashrath Singh Chundawat', '', '2012-01-17', 'Dani Chabutra, Rajnagar, Rajsamand', '', 0, 3, 1, '', '', 'IMG_0187.JPG', '0000-00-00', 0),
(142, 'Ariz Gori', 'Mr. Ayab Mohmmd', '', '2011-05-24', 'Lal Baag, Kotharia Road, Nathdwara', '', 0, 3, 1, '', '', '45.JPG', '0000-00-00', 0),
(143, 'Bhavya Mandowara', 'Mr. Hemant Mandowara', '', '2012-07-30', 'C. 405 - 4 Floor, Shreeji Complex, Tehsil Road, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0188.JPG', '0000-00-00', 0),
(144, 'Dakshita Sharma', 'Mr. Alok Kumar Sharma', '', '2011-09-13', 'C/o Ganpat Badola, Kothari Mohalla, Rajnagar', '', 0, 3, 3, '', '', '07.JPG', '0000-00-00', 0),
(145, 'Darshil Sinyal', 'Mr. Yogesh Sinyal', '', '2011-08-16', 'Tehsil Road, Near Dak Bangla, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0189.JPG', '0000-00-00', 0),
(146, 'Dhawal Sahu', 'Mr. Govind Sahu', '', '2011-10-04', 'Village - Badarda, Dist. (Rajsamand)', '', 0, 3, 3, '', '', 'IMG_0190.JPG', '0000-00-00', 0),
(147, 'Divyansh Mali', 'Mr. Pankaj Mali', '', '2012-04-20', 'Opp. Gokuldham, Lal Baag, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0191.JPG', '0000-00-00', 0),
(148, 'Diyan Dhoka', 'Mr. Bhupesh Dhoka', '', '2011-09-14', 'Kothari Mohalla, Near Maszid, Sadar Bajar, (Rajsamand)', '', 0, 3, 3, '', '', 'IMG_0192.JPG', '0000-00-00', 0),
(149, 'Havi Tripathi', 'Mr. Chetnya Tripathi', '', '2012-04-17', 'Trivari Payasa, Lodha Gati, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0193.JPG', '0000-00-00', 0),
(150, 'Hriday Mehta', 'Mr. Lalit Mehta', '', '2012-01-10', 'Mahaveerpura, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0194.JPG', '0000-00-00', 0),
(151, 'Kanishk Shrimali', 'Mr. Hemant Shrimali', '', '2011-10-19', 'Chintamani Ka Madra, Post - Farara Mahadev, (Rajsamand)', '', 0, 3, 3, '', '', 'IMG_0195.JPG', '0000-00-00', 0),
(152, 'Kanishka Shrimali', 'Mr. Hemant Shrimali', '', '2011-10-19', 'Chintaman Ka Madra, Post - Farara Mahadev, (Rajsamand)', '', 0, 3, 3, '', '', 'IMG_0196.JPG', '0000-00-00', 0),
(153, 'Kartik Suthar', 'Mr. Shanti Lal Suthar', '', '2011-08-24', 'Suthar Ka Mohalla, Village - Upali Oden, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0197.JPG', '0000-00-00', 0),
(154, 'Kavya Kunwar Rathore', 'Mr.Neelam Singh Rathore', '', '2012-02-04', 'Village Post - Farara, Dist. - Rajsamand', '', 0, 3, 3, '', '', 'IMG_0198.JPG', '0000-00-00', 0),
(155, 'Kishkindha Singh', 'Mr. Dashrath Singh Chouhan', '', '2012-04-23', 'Village - Kalla Khedi, Post - Gunjol, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0199.JPG', '0000-00-00', 0),
(156, 'Kshitij Gurjar', 'Mr. Lokesh Gurjar', '', '2012-04-14', 'Patwari Payasa, Jat Mohalla, Nai Haveli, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0200.JPG', '0000-00-00', 0),
(157, 'Lakshraj Singh Rathore', 'Mr. Jashwant Singh Rathore', '', '2012-01-02', 'Village Post - Farara, Dist. - Rajsamand', '', 0, 3, 3, '', '', 'IMG_0202.JPG', '0000-00-00', 0),
(158, 'Manan Mantri', 'Mr. Gopal Mantri', '', '2011-08-29', 'Kishore Nagar, Manda, (Rajsamand), (Raj.)', '', 0, 3, 3, '', '', 'IMG_0203.JPG', '0000-00-00', 0),
(159, 'Naksh Sharma', 'Mr. Murli Sharma', '', '2012-04-10', 'Opp. Vishvakarma Temple, Maliwara, (Rajsamand), (Raj.)', '', 0, 3, 3, '', '', 'IMG_0524.JPG', '0000-00-00', 0),
(160, 'Piyush Kumar Karnani', 'Mr. Mahesh Karnani', '', '2012-04-05', 'C/o Ganpat Lal Sisodia, Ahinsa Nagar Civil Lines, Rajsamand', '', 0, 3, 3, '', '', '', '0000-00-00', 0),
(161, 'Priyanshu Mali', 'Mr. Mamtesh Kumar Mali ', '', '2012-03-09', 'Lal Baag, Kheton Par, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0204.JPG', '0000-00-00', 0),
(162, 'Pushti Sanadhya', 'Mr. Govind Sanadhya', '', '2011-12-19', 'Anand Bhawan, Vallabhpura, Govind Chowk, Nathdwara', '', 0, 3, 3, '', '', 'IMG_0205.JPG', '0000-00-00', 0),
(163, 'Lakshit Verma', 'Mr. Koshik Verma', '', '2012-01-31', 'Dholi Khan Road, Nai Aabadi, Sanwar, Rajnagar (Raj.)', '', 0, 3, 3, '', '', 'IMG_0207.JPG', '0000-00-00', 0),
(164, 'Jiya Boliya', 'Mr. Nikhil Boliya', '', '2012-05-12', 'A-3, Vardhman Shanti Colony, Nai Abadi, Kankroli', '', 0, 3, 3, '', '', 'IMG_0208.JPG', '0000-00-00', 0),
(165, 'Lakshita Shrimali', 'Mr. Rameshwar Shrimali', '', '2011-12-08', 'Kanadev Ka Guda, Post- Farara, Kankroli', '', 0, 3, 3, '', '', 'IMG_0209.JPG', '0000-00-00', 0),
(166, 'Harshvardhan Singh Jhala', 'Mr. Surendra Singh Jhala', '', '2012-06-23', 'Qtr. No. 212, Police Line Rajsamand', '', 0, 3, 3, '', '', 'IMG_0210.JPG', '0000-00-00', 0),
(167, 'Reyansh Raulo', 'Mr. Bijaya Kumar', '', '2012-03-03', 'Flat No. - 503, Gokul appartment, Krishna Resi., Ntd.', '', 0, 3, 3, '', '', 'IMG_0211.JPG', '0000-00-00', 0),
(168, 'Arnav Lodha', 'Mr. Kapil Lodha', '', '2011-07-24', '102, Sunrise Apartment, Opp. Bohra Petrol Pump, Bus Stand, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0314.JPG', '0000-00-00', 0),
(169, 'Darshil Shrimali', 'Mr. Rakash Shrimali', '', '2010-10-20', 'Uday Niwas, Shastri Nagar, Near Raj Ice - Factory, Kankroli', '', 0, 4, 2, '', '', 'IMG_0315.JPG', '0000-00-00', 0),
(170, 'Dheer Gurjar', 'Mr. Prakash Gurjar', '', '2010-11-10', 'Hela Wali Gali, Gurjarpura, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0316.JPG', '0000-00-00', 0),
(171, 'Dishank Pipada', 'Mr. Deepak Pipada', '', '2011-04-02', 'Near Shiv Mandir, Asotiya, Nai Abadi, Kankroli', '', 0, 4, 2, '', '', 'IMG_0317.JPG', '0000-00-00', 0),
(172, 'Hitarth Maheshwari', 'Mr. Anant Maheshwari', '', '2010-10-30', 'U -J Sukhadia Nagar, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0319.JPG', '0000-00-00', 0),
(173, 'Ishani Paliwal', 'Mr. Pramod Paliwal', '', '2011-06-26', '29 - J, ''Mudrika'', Sukhadia Nagar, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0320.JPG', '0000-00-00', 0),
(174, 'Jhanvi Gurjar', 'Mr. Deepak Gurjar', '', '2010-11-11', 'Jharna Darwaja, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0321.JPG', '0000-00-00', 0),
(175, 'Khyat Kothari', 'Mr. Manoj Kothari', '', '2010-11-13', 'Sajjan Villa, Ayodhyapuri, Kishore Nagar, Rajsamand', '', 0, 4, 2, '', '', 'IMG_0322.JPG', '0000-00-00', 0),
(176, 'Kishika Bhatia', 'Mr. Kapil Bhatia', '', '2011-03-15', 'Risala Chowk, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0965.JPG', '0000-00-00', 0),
(177, 'Kushagra Choudhary', 'Mr. Sanjay Kumar Choudhary', '', '2010-12-21', 'Mohangarh, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0323.JPG', '0000-00-00', 0),
(178, 'Manas Sanchihar', 'Mr. Vibhu Sanchihar', '', '2011-05-12', 'Near Mataji Mandir, Jagan Marble, Gunjol', '', 0, 4, 2, '', '', 'IMG_0324.JPG', '0000-00-00', 0),
(179, 'Nikunj Kushija', 'Mr. Nilesh Kushija', '', '2011-02-24', '101, Pawan Dham, R.T.D.C., Lal Baag, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0325.JPG', '0000-00-00', 0),
(180, 'Tanishk Meena', 'Mr. Ramprasad Meena', '', '2011-07-19', 'Behind Rajdeep Hotel, Near S.B.B.J. Bank, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0326.JPG', '0000-00-00', 0),
(181, 'Yatharth Nagda', 'Mr. Tejendra Nagda', '', '2011-05-19', 'Near Rajwadi Hotel, Bherunath Colony, Kankroli', '', 0, 4, 2, '', '', 'IMG_0327.JPG', '0000-00-00', 0),
(182, 'Yusuf Rangeen', 'Mr. Mohammed Rangeen', '', '2011-02-18', 'Rakhmal Bait'', Near New Rise Primary School, Holi Mangra, Tehsil Road, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0963.JPG', '0000-00-00', 0),
(183, 'Dhruvansh Lakhara', 'Mr. Narendra Lakhara', '', '2010-12-13', 'Chota Gopalpura, Nathdwara', '', 0, 4, 2, '', '', 'IMG_0328.JPG', '0000-00-00', 0),
(184, 'Chahak Chechani', 'Mr. kamlesh Chechani', '', '2011-05-29', 'Brijpura, Near Ahiliya Kund Nathdwara', '', 0, 4, 2, '', '', 'IMG_0329.JPG', '0000-00-00', 0),
(185, 'Madhvi Maheshwari', 'Mr. Vinesh Kumar Namdhar', '', '2010-11-01', 'Vallabhpura Ntd.', '', 0, 4, 2, '', '', 'IMG_0330.JPG', '0000-00-00', 0),
(186, 'Aachman Sukhwal', 'Mr. Anurag Sukhwal', '', '2011-03-29', 'C-45, Housing Board, Sukhadia Nagar, Ntd.', '', 0, 4, 2, '', '', 'IMG_0967.JPG', '0000-00-00', 0),
(187, 'Varsha Devpura', 'Mr. Satyanarayan Devpura', '', '2011-01-16', 'Nai Haveli Chowk, Ntd.', '', 0, 4, 2, '', '', 'IMG_0331.JPG', '0000-00-00', 0),
(188, 'Diya Mahakali', 'Mr. Pradeep Mahakali', '', '2011-04-30', 'Shri Ram Kripa, Sukhadia Nagar, Mudrika Chowk, Ntd.', '', 0, 4, 2, '', '', 'IMG_0332.JPG', '0000-00-00', 0),
(189, 'Digvijay Singh Bhati', 'Mr. Kamal Singh Bhati', '', '2011-10-11', '427, Shivam Colony, Sukhadia Nagar, Ntd.', '', 0, 4, 2, '', '', 'IMG_0333.JPG', '0000-00-00', 0),
(190, 'Kritika Bhati', 'Mr. Parwat Singh Bhati', '', '2011-07-28', '427, Shivam Colony, Sukhadia Nagar, Ntd.', '', 0, 4, 2, '', '', 'IMG_0334.JPG', '0000-00-00', 0),
(191, 'Akhil Kothari', 'Mr. Pintu Kothari', '', '2010-10-26', 'Pagaria Complex, Mukharji Chouraha, Kankroli', '', 0, 4, 1, '', '', 'IMG_0336.JPG', '0000-00-00', 0),
(192, 'Arav Choudhary', 'Mr. Rajesh Choudhary', '', '2011-07-24', 'Jat Mohalla, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0337.JPG', '0000-00-00', 0),
(193, 'Bhagyashri Jain', 'Mr. Suresh Jain', '', '2010-11-10', 'Laxmi Niwas'', Anand Nagar, Kotharia Road, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0338.JPG', '0000-00-00', 0),
(194, 'Dakshita Gurjar', 'Mr. Lokesh Gurjar', '', '2011-02-18', 'Patwari Paysa, Jat Mohalla, Nai Haveli, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0339.JPG', '0000-00-00', 0),
(195, 'Dheeren Sharma', 'Mr. Deepesh Sharma', '', '2010-11-10', 'Bombay Cottage, Rampura, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0340.JPG', '0000-00-00', 0),
(196, 'Dikshita Bansal', 'Mr. Amit Bansal', '', '2010-10-20', 'Lucky House, Ayodhyapuri, Civil Line, 100ft. Road, (Raj.)', '', 0, 4, 1, '', '', 'IMG_0341.JPG', '0000-00-00', 0),
(197, 'Heer Gurjar', 'Mr. Kamlesh Gurjar', '', '2011-03-17', 'Hela Wali Gali, Gurjarpura, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0342.JPG', '0000-00-00', 0),
(198, 'Kanishka Kunwar Chouhan', 'Mr. Devendra Singh Chouhan', '', '2011-04-11', 'A - 6, Housing Board Colony, Sukhadia Nagar, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0343.JPG', '0000-00-00', 0),
(199, 'Kavy Kothari', 'Mr. Sharad Kothari', '', '2010-08-07', 'Rang Niwas, Head Post Office Ke Samne, Kankroli', '', 0, 4, 1, '', '', 'IMG_0344.JPG', '0000-00-00', 0),
(200, 'Lakshyaraj Singh Ranawat', 'Mr. Narendra Singh Ranawat', '', '2010-10-24', 'Kuncholi, Post - Bagol, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0345.JPG', '0000-00-00', 0),
(201, 'Litisha Siyal', 'Mr. Arun Siyal', '', '2010-11-20', 'New Road, Opp. Siddhi Vinayak Hotel, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0347.JPG', '0000-00-00', 0),
(202, 'Preet Solanki', 'Mr. Hitesh Solanki', '', '2011-08-03', 'Mahadev Colony, Jal Chakki Road, Kankroli', '', 0, 4, 1, '', '', 'IMG_0348.JPG', '0000-00-00', 0),
(203, 'Riddhi Mehta', 'Mr. Umang Mehta', '', '2010-07-19', 'Hari Sudarshan, Near Bhalawato Ka Kheda, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0349.JPG', '0000-00-00', 0),
(204, 'Shreya Vagrecha', 'Mr. Kalu Lal Vagrecha', '', '2011-05-09', 'Near The Ankur School, Bagarwada, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0350.JPG', '0000-00-00', 0),
(205, 'Takshraj Singh Chouhan', 'Mr. Sumer Singh Chouhan', '', '2011-02-24', 'Kallakhedi, Post - Gunjol, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0351.JPG', '0000-00-00', 0),
(206, 'Vaibhav Agarwal', 'Mr. Vijay Kumar Agarwal', '', '2010-11-23', 'Court Campus, Nathuwas, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0352.JPG', '0000-00-00', 0),
(207, 'Yashika Choudhary', 'Mr. Mahendra Choudhary', '', '2010-04-22', 'Vivekanand Chouraha, Shanti Colony, Kankroli', '', 0, 4, 1, '', '', 'IMG_0353.JPG', '0000-00-00', 0),
(208, 'Yug Verma', 'Mr. Chandra Shekhar Verma', '', '2011-05-19', 'Nathuwas, (Pipali Chouraha), Nathdwara', '', 0, 4, 1, '', '', 'IMG_0354.JPG', '0000-00-00', 0),
(209, 'Adhiraj Singh Kitawat', 'Mr. Sajjan Singh Kittawat', '', '2010-05-29', 'Vill.- Uriya, Post -Uthnol, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0355.JPG', '0000-00-00', 0),
(210, 'Ruchika Mali', 'Mr. Mahesh Kumar Mali', '', '2010-09-25', 'Hotel Gokul Dham ke piche, Lal Baag, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0357.JPG', '0000-00-00', 0),
(211, 'Bhavik Jangid', 'Dr. Deepak Sharma', '', '2011-08-10', 'Anand Nagar, Lal Baag, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0358.JPG', '0000-00-00', 0),
(212, 'Harshita Gurjar', 'Late Dilip Gurjar', '', '2011-02-17', 'Chhota Gopalpura, Bohra Bazar, Nathdwara', '', 0, 4, 1, '', '', 'IMG_0966.JPG', '0000-00-00', 0),
(213, 'Ram Abhinav Maheshwari', 'Mr. Gourav Kumar Maheshwari', '', '2011-04-21', 'Mahadev Colony, Jal Chakki Road, Kankroli', '', 0, 4, 1, '', '', 'IMG_0359.JPG', '0000-00-00', 0),
(214, 'Archi Singh Chouhan', 'Mr. Shoorveer Singh Chouhan', '', '2011-01-13', 'G.H. Sukhadiya Nagar, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0361.JPG', '0000-00-00', 0),
(215, 'Darshi Sanadhya', 'Mr. Rakesh Sanadhya', '', '2010-12-13', 'Behind Temple, Joshipura, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0362.JPG', '0000-00-00', 0),
(216, 'Dixita Kumawat', 'Mr. Dinesh Chand Kumar Kumawat', '', '2010-11-12', 'Badarda, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0363.JPG', '0000-00-00', 0),
(217, 'Dipanshu Kumawat', 'Mr. Brij Lal Kumawat', '', '2011-06-24', 'R - 1, Kumavat, Shiv Colony, 100ft. Road', '', 0, 4, 3, '', '', 'IMG_0364.JPG', '0000-00-00', 0),
(218, 'Garima Maheshwari', 'Mr. Rajgopal Maheshwari', '', '2011-05-23', 'Abhishek Palace, Addarsh Nagar, Near Raj.', '', 0, 4, 3, '', '', 'IMG_0365.JPG', '0000-00-00', 0),
(219, 'Harshika Maheshwari', 'Mr. Kamlesh Maheshwari', '', '2011-03-15', 'Maheshwari Street, Near Old Post Office, Raj.', '', 0, 4, 3, '', '', 'IMG_0366.JPG', '0000-00-00', 0),
(220, 'Indraraj Singh Chouhan', 'Mr. Narendra Singh Chouhan', '', '2011-01-31', 'Kalla Khedi, Gunjol, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0367.JPG', '0000-00-00', 0),
(221, 'Naitalde Kunwar Rajawat', 'Mr. Rajendra Singh Rajawat', '', '2010-12-05', 'Behind Choudhary Petrol Pump, Bus Stand, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0368.JPG', '0000-00-00', 0),
(222, 'Payodhi Paliwal', 'Mr. Vijay Paliwal', '', '2011-06-11', 'Housing Board Colony, Teleyo Ka Talab, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0369.JPG', '0000-00-00', 0),
(223, 'Shambhavi Swarnkar', 'Mr. Lokesh Soni', '', '2010-10-10', 'Mohangarh, Nichala Chowk, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0370.JPG', '0000-00-00', 0),
(224, 'Shubha Maheshwari', 'Mr. Vishal Maheshwari', '', '2011-08-16', 'Subhash Nagar, Behind Sagun Ice Cream', '', 0, 4, 3, '', '', 'IMG_0371.JPG', '0000-00-00', 0),
(225, 'Taha Baha Bhaiwala', 'Mr. Mufaddal Bhaiwala', '', '2010-06-02', 'Boharwadi, Near Bohra Masjid, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0969.JPG', '0000-00-00', 0),
(226, 'Tanish Jain', 'Mr. Lalit Jain', '', '2011-05-13', 'Opposite Post Office, Bus Stand, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0372.JPG', '0000-00-00', 0),
(227, 'Vashika Fatima', 'Mr. Siraj Alam Mansuri', '', '2011-05-14', 'Bohra Mohalla, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0970.JPG', '0000-00-00', 0),
(228, 'Bhavyansh Sanadhya', 'Mr. Mahesh Sanadhya', '', '2010-11-09', 'Bada Gopalpura, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0373.JPG', '0000-00-00', 0),
(229, 'Raghvendra Soni', 'Mr. Yaghyesh Soni', '', '2011-05-15', 'Mohangarh, Nichala Chowk, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0376.JPG', '0000-00-00', 0),
(230, 'Shreerudransh Singh', 'Mr. Sanjay Kumar Lodha', '', '2011-07-20', 'Lodha Gati, Ganesh Nagar, Nathdwara', '', 0, 4, 3, '', '', 'IMG_0377.JPG', '0000-00-00', 0),
(231, 'Twisha Sharma', 'Mr. Saurabh Sharma', '', '2011-07-19', 'Khano ka Rasta, New Brampuri, Dhoinda, Kankroli, Raj.', '', 0, 4, 3, '', '', 'IMG_0968.JPG', '0000-00-00', 0),
(232, 'Manan Paliwal', 'Mr. Kailash Chandra', '', '2011-03-18', '425, Shivam Colony, Sukhadia Nagar, Ntd.', '', 0, 4, 3, '', '', 'IMG_0378.JPG', '0000-00-00', 0),
(233, 'Laxita Solanki', 'Mr. Chandan Singh', '', '2012-01-04', 'Kishor Nagar, Extension Scheme, Rajsamand', '', 0, 4, 3, '', '', 'IMG_0379.JPG', '0000-00-00', 0),
(234, 'Prinjal Kumavat', 'Mr. Dinesh Kumawat', '', '2011-07-07', 'Charbhuja Mandir, Fauj Mohalla, Ntd.', '', 0, 4, 3, '', '', 'IMG_0380.JPG', '0000-00-00', 0),
(235, 'Ridik Durgawat', 'Mr. Bhupesh Durgawat', '', '2010-12-03', '429, Sukhadiya Nagar, Ntd.', '', 0, 4, 3, '', '', 'IMG_0381.JPG', '0000-00-00', 0),
(236, 'Anjali Nandwana', 'Mr. Neeraj Nandwana', '', '2010-06-09', 'Shastri Nagar, Bhilwara Road, Kankroli', '', 0, 5, 2, '', '', 'IMG_0382.JPG', '0000-00-00', 0),
(237, 'Anushka Kumawat', 'Mr. Sunil Kumawat', '', '2009-10-07', 'Fauz Mohalla, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0383.JPG', '0000-00-00', 0),
(238, 'Charvi Karnawat', 'Mr. Ajay Karnawat', '', '2009-09-06', 'Opp. Aashirwad Complex, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0384.JPG', '0000-00-00', 0),
(239, 'Daksh Maheshwari', 'Mr. Ramesh Maheshwari', '', '2010-12-14', 'Naniji Ka Baag, Bus Stand, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0948.JPG', '0000-00-00', 0),
(240, 'Dishita Chandaliya', 'Mr. Atul Chandaliya', '', '2010-08-27', 'Brajpura, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0385.JPG', '0000-00-00', 0),
(241, 'Divyanshi Sinyal', 'Mr. Yogesh Sinyal', '', '2009-12-26', 'Tehsil Road, Near Dak Bangla, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0386.JPG', '0000-00-00', 0),
(242, 'Hardik Shrimali', 'Mr. Hitesh Kumar Shrimali', '', '2010-06-17', 'Village - Maja, Vaya - Kotharia Road', '', 0, 5, 2, '', '', 'IMG_0388.JPG', '0000-00-00', 0),
(243, 'Harshal Kabra', 'Mr. Nirmal Kabra', '', '2010-02-27', '44-G Near lal Kothi, Sukhadia Nagar, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0389.JPG', '0000-00-00', 0),
(244, 'Himanshu Sharma', 'Mr. Madhav Lal Sharma', '', '2009-05-28', 'Narayan Chowk, Sukhadia Nagar', '', 0, 5, 2, '', '', 'IMG_0390.JPG', '0000-00-00', 0),
(245, 'Ishan Jain', 'Mr. Nitesh Jain', '', '2009-12-29', 'Near Shrivilas, Bus Stand, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0391.JPG', '0000-00-00', 0),
(246, 'Kanishka Jain', 'Mr. Abhishek Jain', '', '2010-01-28', 'Behind Radhika Hospital, Kankroli', '', 0, 5, 2, '', '', 'IMG_0392.JPG', '0000-00-00', 0),
(247, 'Khushi Yadav', 'Mr. Jai Prakash Yadav', '', '2010-07-17', 'Near Girls School, Shanti Colony, Kankroli', '', 0, 5, 2, '', '', 'IMG_0393.JPG', '0000-00-00', 0),
(248, 'Kkunal Bhatia', 'Mr. Anoop Bhatia', '', '2009-12-03', 'Mohangarh, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0394.JPG', '0000-00-00', 0),
(249, 'Neha Sharma', 'Mr. Lokesh Sharma', '', '2009-11-17', 'Nai Haveli Chowk, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0395.JPG', '0000-00-00', 0),
(250, 'Riya Saini', 'Mr. Deepak Saini', '', '2010-07-18', 'Lal Baag, Kheto Par, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0396.JPG', '0000-00-00', 0),
(251, 'Rudra Dargar', 'Mr. Kamlesh Dargar', '', '2009-12-07', 'Behind Radhika Hospital, Kankroli', '', 0, 5, 2, '', '', 'IMG_0397.JPG', '0000-00-00', 0),
(252, 'Rudraksh Choudhary', 'Mr. Prasant Choudhary', '', '2010-07-19', 'Rawato Ka Darwaja, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0398.JPG', '0000-00-00', 0),
(253, 'Saksham Kawadia', 'Mr. Sanjay Kawadia', '', '2010-04-10', 'III Kawadia Kunj, 100ft. Road, (Rajsamand)', '', 0, 5, 2, '', '', 'IMG_0399.JPG', '0000-00-00', 0),
(254, 'Shorya Gupta', 'Mr. Sagar Gupta', '', '2010-10-17', 'Patwari Mohalla, Rawato Ka Darwaja, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0400.JPG', '0000-00-00', 0),
(255, 'Sohan Bhatia', 'Mr. Manish Bhatia', '', '2009-10-30', 'Sindhi Colony, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0401.JPG', '0000-00-00', 0),
(256, 'Varitika Kumawat', 'Mr. Ramdayal Kumawat', '', '2009-09-10', '3/12 Civil Line, (Rajsamand), Near Sharma Hospital', '', 0, 5, 2, '', '', 'IMG_0403.JPG', '0000-00-00', 0),
(257, 'Yatharth Khandelwal', 'Mr. Ashok Kumar Khandelwal', '', '2010-07-22', 'Plot No. - 8, Ganesh Nagar, Jawad, Kankroli', '', 0, 5, 2, '', '', 'IMG_0404.JPG', '0000-00-00', 0),
(258, 'Bhavya Dhakad', 'Mr. Ashok Dhakad', '', '2010-07-24', 'Aadarsh Nagar, New Road, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0405.JPG', '0000-00-00', 0),
(259, 'Jay Rathi', 'Mr. Pawan Rathi', '', '2010-02-13', 'A-15, Shree Nath Nagar, Govind Nagar -A, New Road, Nathdwara', '', 0, 5, 2, '', '', 'IMG_0406.JPG', '0000-00-00', 0),
(260, 'Nitesh Bishnoi', 'Mr. Rajesh Kumar Poonia', '', '2009-11-17', 'Ward-15, Near Tagore Sr.Sec. School, Anoopgarh, Raj.', '', 0, 5, 2, '', '', 'IMG_0407.JPG', '0000-00-00', 0),
(261, 'Sabhyajeet Bishnoi', 'Mr. Sandeep Kumar Bishnoi', '', '2010-11-16', 'Near Rajnagar Police Station, Raj.', '', 0, 5, 2, '', '', 'IMG_0408.JPG', '0000-00-00', 0),
(262, 'Vishrut Tripathi', 'Mr. Ajay Tripathi', '', '2010-04-18', 'Opp. Yashoda Nandan Garden, Bicchu Magri, Ntd.', '', 0, 5, 2, '', '', 'IMG_0409.JPG', '0000-00-00', 0),
(263, 'Yajat', 'Mr. Narendra Kumar', '', '2010-08-18', 'A-14, Dwarika Nagar, Housing Board, Raj.', '', 0, 5, 2, '', '', 'IMG_0410.JPG', '0000-00-00', 0),
(264, 'Aadi Kothari', 'Mr. Bhuvnesh Kothari', '', '2010-07-08', 'Nai Haveli Chowk, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0411.JPG', '0000-00-00', 0),
(265, 'Bhavya Lodha', 'Mr. Pawan Lodha', '', '2010-08-21', 'Mahaveerpura, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0412.JPG', '0000-00-00', 0),
(266, 'Dhruv Soni', 'Mr. Subhash Soni', '', '2010-06-27', 'Shreeji Optical Wali Gali, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0413.JPG', '0000-00-00', 0),
(267, 'Gati Jain', 'Mr. Kamlesh Bolia', '', '2010-07-27', 'Reti Mohalla, Kankroli', '', 0, 5, 1, '', '', 'IMG_0414.JPG', '0000-00-00', 0),
(268, 'Harshit Gurjar', 'Mr. Kanhaiya Lal Gurjar', '', '2009-09-17', 'Badshah  Ki Gali, Gurjarpura, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0415.JPG', '0000-00-00', 0),
(269, 'Ishita Chouhan', 'Mr. Prahlad Singh Chouhan', '', '2010-02-21', 'IV / 137 Civil Lines, Rajsamand', '', 0, 5, 1, '', '', 'IMG_0416.JPG', '0000-00-00', 0),
(270, 'Kavya Sisodiya', 'Mr. Rajesh Sisodiya', '', '2009-07-20', 'Nai Haveli Chowk, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0417.JPG', '0000-00-00', 0),
(271, 'Krishna Bolia', 'Mr. Kiran Kumar Bolia', '', '2010-05-17', 'Mukharji Chouraha, Kankroli', '', 0, 5, 1, '', '', 'IMG_0418.JPG', '0000-00-00', 0),
(272, 'Krishnpal Singh', 'Mr. Dunger S. Chundawat', '', '2009-08-14', '100ft. Road, Maharana Pratap Chouraha, (Raj.)', '', 0, 5, 1, '', '', 'IMG_0419.JPG', '0000-00-00', 0),
(273, 'Lakshya Khandelwal', 'Mr. Manish Khandelwal', '', '2010-02-21', 'Rawaton Ka Darwaja, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0420.JPG', '0000-00-00', 0),
(274, 'Lakshya Kunwar Rathore', 'Mr. Shaitan S. Rathore', '', '2010-01-07', 'Bageri Naka Office, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0421.JPG', '0000-00-00', 0),
(275, 'Mansvi Paliwal', 'Mr. Lalit Paliwal', '', '2009-11-10', 'Gurjarpura, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0947.JPG', '0000-00-00', 0),
(276, 'Mitansh Soni', 'Mr. Vishal Soni', '', '2010-02-01', 'Aadarsh Nagar, Nathdwara', '', 0, 5, 1, '', '', '', '0000-00-00', 0),
(277, 'Monika Mali', 'Mr. Sheshnarayan Mali', '', '2009-01-14', 'Bhandari Bawari Ke Pass, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0422.JPG', '0000-00-00', 0),
(278, 'Radhika Gurjar', 'Mr. Manish Gurjar', '', '2010-04-28', 'Near Purohit Hospital, Nathuwas Chouraha, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0423.JPG', '0000-00-00', 0),
(279, 'Sakshi Kunwar', 'Mr. Jay Singh ', '', '2011-07-01', 'Shanti Colony, Nai Aabadi, Kankroli', '', 0, 5, 1, '', '', 'IMG_0424.JPG', '0000-00-00', 0),
(280, 'Siddh Daglia', 'Mr. Kapil Daglia', '', '2009-10-02', 'Mahaveerpura, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0425.JPG', '0000-00-00', 0),
(281, 'Tanishq Motiwala', 'Mr. Girish Parikh', '', '2010-03-05', 'Shreejee Kripa, Rampura, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0426.JPG', '0000-00-00', 0),
(282, 'Yash Mehta', 'Mr. Kushal Mehta', '', '2011-01-02', 'Behind SBI Bank, Rajnagar Road, (Raj.)', '', 0, 5, 1, '', '', 'IMG_0427.JPG', '0000-00-00', 0),
(283, 'Yashasvi Jangid', 'Mr. Mukesh Jangid', '', '2010-07-22', 'Radhika Hospital, Krishna Nagar, Kankroli', '', 0, 5, 1, '', '', 'IMG_0428.JPG', '0000-00-00', 0),
(284, 'Yashvi Lodha', 'Mr. Dayanand Lodha', '', '2010-05-29', 'Ganesh Nagar, Lodha Ghati, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0429.JPG', '0000-00-00', 0),
(285, 'Yug Mehta', 'Mr. Arun Mehta', '', '2010-12-07', 'Behind SBI Bank, Rajnagar Road, (Raj.)', '', 0, 5, 1, '', '', 'IMG_0430.JPG', '0000-00-00', 0),
(286, 'Kavish Caplot', 'Mr. Pradeep Caplot', '', '2011-01-18', 'A-63, Aavkar, Nai Abadi Asotiya, Kankroli', '', 0, 5, 1, '', '', '43.JPG`', '0000-00-00', 0),
(287, 'Kartikey Sanadhya', 'Mr. Deepak Sanadhya', '', '2010-09-04', 'Near bheru Ji Ka Mandir, Dhora Mohalla, Kankroli', '', 0, 5, 1, '', '', 'IMG_0431.JPG', '0000-00-00', 0),
(288, 'Dilan Poonia', 'Mr. Rajesh Poonia', '', '2010-07-31', 'Bada Pada Mohalla, Rajnagar', '', 0, 5, 1, '', '', 'IMG_0432.JPG', '0000-00-00', 0),
(289, 'Yahvi Soni', 'Mr. Indrajeet Soni', '', '2011-01-01', 'Vallabhpura, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0433.JPG', '0000-00-00', 0),
(290, 'Nandni Soni', 'Mr. Bhupendra Soni', '', '2010-05-28', '2 - K, Bicchu Mangari, Nathdwara', '', 0, 5, 1, '', '', 'IMG_0434.JPG', '0000-00-00', 0),
(291, 'Arham Surana', 'Mr. Jitendra Surana', '', '2010-06-20', 'Near Choudhary Petrol Pump, Bus Stand, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0439.JPG', '0000-00-00', 0),
(292, 'Bhanu Solanki', 'Mr. Hitesh Solanki', '', '2010-05-02', 'Madhav Colony, Jal Chakki Road, Kankroli', '', 0, 5, 3, '', '', 'IMG_0440.JPG', '0000-00-00', 0),
(293, 'Daksh Malani', 'Mr. Nitesh Malani', '', '2009-08-04', 'Sukhadia Nagar, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0441.JPG', '0000-00-00', 0),
(294, 'Darsh Shekhar', 'Mr. Lokesh Chandra Shekhar', '', '2009-12-24', 'Opp. Lal Baag, Nathdwara', '', 0, 5, 3, '', '', '46.JPG', '0000-00-00', 0),
(295, 'Karan Kaneria', 'Mr. Kuldeep Kaneria', '', '2010-04-19', 'Sukhadia Nagar, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0442.JPG', '0000-00-00', 0),
(296, 'Khushi Choudhary', 'Mr. Amit Choudhary', '', '2010-01-17', 'Bhalawaton Ka Kheda, Lal Baag, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0443.JPG', '0000-00-00', 0),
(297, 'Khushi Shrimali', 'Mr. Tarun Shrimali', '', '2010-10-16', 'Lal Baag, Kothariya Road, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0444.JPG', '0000-00-00', 0),
(298, 'Lakshya Raj Gurjar', 'Mr. Yudhishtir Gurjar', '', '2010-01-24', 'Vallabhpura, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0445.JPG', '0000-00-00', 0),
(299, 'Lavisha Dagliya', 'Mr. Jeevan Dagliya', '', '2010-05-12', 'Mahaveerpura, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0446.JPG', '0000-00-00', 0),
(300, 'Manya Bhatiya', 'Mr. Chetanya Bhatiya', '', '2009-10-15', 'Shrikunj, Kanva Road, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0447.JPG', '0000-00-00', 0),
(301, 'Mayank Swami', 'Mr. Manoj Kumar Swami', '', '2010-06-22', 'Darji Chok, Rajsamand', '', 0, 5, 3, '', '', 'IMG_0448.JPG', '0000-00-00', 0),
(302, 'Megha Khandelwal', 'Mr. Anil Kumar Khandelwal', '', '2010-11-02', 'Plot No. - 8, Ganesh Nagar, Jawad, Kankroli', '', 0, 5, 3, '', '', 'IMG_0449.JPG', '0000-00-00', 0),
(303, 'Raghav Bhatia', 'Mr. Girish Bhatia', '', '2010-07-19', 'Gokul Dham Society, Bichhu Magri, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0450.JPG', '0000-00-00', 0),
(304, 'Samank Bharti', 'Mr. Guru Govind Bharti', '', '2010-07-29', 'Mohangarh, Niche Ka Chowk, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0451.JPG', '0000-00-00', 0),
(305, 'Shiv Soni', 'Mr. Naresh Kumar Soni', '', '2010-08-24', '403, Shyam Enclave, Tehsil Road, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0452.JPG', '0000-00-00', 0),
(306, 'Siddhant Pagaria', 'Mr. Kuldeep Pagaria', '', '2010-02-16', 'Mukharji Chouraha, Bhilwara Road, Kankroli', '', 0, 5, 3, '', '', 'IMG_0453.JPG', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `photo_path`, `pdf_update_date`, `hold`) VALUES
(307, 'Vansh Choudhary', 'Mr. Yogendra Singh Choudhary', '', '2009-12-30', 'Rawto Ka Darwaja, Jaat Mohalla, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0454.JPG', '0000-00-00', 0),
(308, 'Vanshika Sharma', 'Mr. Sunil Sharma', '', '2010-09-28', 'Bada Gopalpura, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0455.JPG', '0000-00-00', 0),
(309, 'Viral Jain', 'Mr. Lokesh Dagliya', '', '2010-10-26', 'Mahaveerpura, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0456.JPG', '0000-00-00', 0),
(310, 'Pradhyuman Singh Rao', 'Mr. Virendra Singh Rao', '', '2009-11-12', 'Dewana Badarda, (Rajsamand)', '', 0, 5, 3, '', '', 'IMG_0457.JPG', '0000-00-00', 0),
(311, 'Rituraj Singh Rao', 'Mr. Dalpat Singh Rao', '', '2010-04-01', 'Dewana Badarda, (Rajsamand)', '', 0, 5, 3, '', '', 'IMG_0459.JPG', '0000-00-00', 0),
(312, 'Apurva', 'Mr. Subodh Kumar Singh', '', '2010-03-22', 'Krishna Residency, Ballav Block, Ntd.', '', 0, 5, 3, '', '', 'IMG_0460.JPG', '0000-00-00', 0),
(313, 'Hiya Bolia', 'Mr. Nikhil Bolia', '', '2010-05-18', 'A-3, Vardhman Shanti Colony, Nai Abadi, Kankroli', '', 0, 5, 3, '', '', 'IMG_0461.JPG', '0000-00-00', 0),
(314, 'Purwa Rathore', 'Mr. Pramendra Singh Rathore', '', '2009-09-27', 'Vill- Shankarpura, Near R.K. Hospital, Kankroli, rajsamand', '', 0, 5, 3, '', '', 'IMG_0462.JPG', '0000-00-00', 0),
(315, 'Zenab Bohra', 'Mr. Abbas Ali Bohra', '', '2009-11-28', 'Near Sr. Sec. School, Fauj Mohalla, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0463.JPG', '0000-00-00', 0),
(316, 'Mahi Paliwal', 'Mr. Rakesh Paliwal', '', '2010-05-21', 'Telio Ka Talab, Kanwa, Nathdwara', '', 0, 5, 3, '', '', 'IMG_0464.JPG', '0000-00-00', 0),
(317, 'Mohd. Ahid', 'Mr. Ayud Mohd.', '', '2009-02-19', 'Lal Baag, Kothariya Road, Nathdwara', '', 0, 5, 3, '', '', '44.JPG', '0000-00-00', 0),
(318, 'Samrat Gurjar', 'Mr. Ramesh Gurjar', '', '2010-04-11', 'Silver Spring Complex, 100 Ft. Road, Rajnagar', '', 0, 5, 3, '', '', '42.JPG', '0000-00-00', 0),
(319, 'Charvi Kumawat', 'Mr. Ravindra Kumawat', '', '2009-11-01', 'Uba Ganeshji, Nathdwara, Rajsamand', '', 0, 6, 2, '', '', 'IMG_0496.JPG', '0000-00-00', 0),
(320, 'Charvi Pagaria', 'Mr. Pankaj Pagaria', '', '2009-06-17', 'Navkar, Behind Radhika Hospital, Kankroli', '', 0, 6, 2, '', '', 'IMG_0498.JPG', '0000-00-00', 0),
(321, 'Dakshita Sanadhya', 'Mr. Govind Sanadhya', '', '2008-12-08', ' ''Anand Bhawan'' Vallabhpura, Govind Chowk, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0499.JPG', '0000-00-00', 0),
(322, 'Divya Kumawat', 'Mr. Jagdish Chandra Kumawat', '', '2008-11-10', 'Near Swastik Cinema, Kankroli, (Raj.)', '', 0, 6, 2, '', '', 'IMG_0500.JPG', '0000-00-00', 0),
(323, 'Drishti Raj Kumawat', 'Mr. Tilkesh Kumawat', '', '2009-04-23', 'N.H. - 8, Lal Baag, Nathdwara, (Raj.)', '', 0, 6, 2, '', '', 'IMG_0501.JPG', '0000-00-00', 0),
(324, 'Kavya Joshi', 'Mr. Rajesh Joshi', '', '2009-01-09', 'Ganesh Nagar, Nathdwara, (Raj.)', '', 0, 6, 2, '', '', 'IMG_0502.JPG', '0000-00-00', 0),
(325, 'Kavya Sharma', 'Mr. Narendra K. Sharma', '', '2008-10-21', 'Vitthal Nathji Temple, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0503.JPG', '0000-00-00', 0),
(326, 'Kuldeep Jakhar', 'Mr. Arvind Jakhar', '', '2009-09-30', 'Reserve Police Line, Rajsamand', '', 0, 6, 2, '', '', '51.JPG', '0000-00-00', 0),
(327, 'Lakshya Swarnkar', 'Mr. Santosh Kumar Swarnkar', '', '2008-11-13', 'Vallabhpura, Nathdwara, (Raj.)', '', 0, 6, 2, '', '', 'IMG_0504.JPG', '0000-00-00', 0),
(328, 'Moksh Bagrecha', 'Mr. Pravin Bagrecha', '', '2008-10-24', 'Near S.B.B.J. Bank, New Road, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0505.JPG', '0000-00-00', 0),
(329, 'Netik Mandot', 'Mr. Piyush Mandot', '', '2009-10-21', 'Ahilya Kund, Brijpura, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0506.JPG', '0000-00-00', 0),
(330, 'Parth Bhatia', 'Mr. Kamlesh Bhatia', '', '2007-12-04', 'Sukhadia Nagar, Nathdwara, (Raj.)', '', 0, 6, 2, '', '', 'IMG_0507.JPG', '0000-00-00', 0),
(331, 'Parth Mali', 'Mr. Abhishek Mali', '', '2009-06-01', 'P.W.D., Rest House, Near Tehsil Road, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0509.JPG', '0000-00-00', 0),
(332, 'Pranchi Samdani', 'Mr. Bhupendra Samdani', '', '2009-06-01', ' ''Hemant Villa'' Opp. Vandana Talkies, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0510.JPG', '0000-00-00', 0),
(333, 'Rudrakshi Paliwal', 'Mr. Sunil Paliwal', '', '2008-10-28', 'Nandsamand Road, Nathdwara, (Raj.)', '', 0, 6, 2, '', '', 'IMG_0511.JPG', '0000-00-00', 0),
(334, 'Shaili Joshi ', 'Mr. Jai Prakash Joshi', '', '2008-12-06', 'Near Water Tank, Sukhadia Nagar, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0512.JPG', '0000-00-00', 0),
(335, 'Shivi Girnara', 'Mr. Hemant K. Girnara', '', '2009-04-21', '12, Sukhadia Nagar, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0513.JPG', '0000-00-00', 0),
(336, 'Shourya Solanki', 'Mr. Praveen Solanki', '', '2009-03-24', 'Bombey Market, Sarrafa Bazar, Kankroli', '', 0, 6, 2, '', '', 'IMG_0514.JPG', '0000-00-00', 0),
(337, 'Simran Sharma', 'Mr. Shyam Sundar Sharma', '', '2008-03-07', 'A - 27, Nai Abadi, Kankroli', '', 0, 6, 2, '', '', 'IMG_0515.JPG', '0000-00-00', 0),
(338, 'Tanisha Lodha', 'Mr. Kapil Lodha', '', '2009-02-15', 'Sunrise Complex, Flat No. - 201, New Road, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0516.JPG', '0000-00-00', 0),
(339, 'Tanisha Tailor', 'Mr. Bheru Lal Tailor', '', '2008-12-23', 'Nakoda Nagar, Lal Baag, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0517.JPG', '0000-00-00', 0),
(340, 'Uttra Verma', 'Mr. Chandrashekhar Verma', '', '2008-12-11', 'Peepali Chauraha, Nathuwas, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0518.JPG', '0000-00-00', 0),
(341, 'Arihant Surana', 'Mr. Abhay Surana', '', '2009-02-06', 'Shrinath Colony, Behind Police Station, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0519.JPG', '0000-00-00', 0),
(342, 'Hiren Gahlot', 'Mr. Priytam Gahlot', '', '2009-09-16', 'Rissala Chowk, Nathdwara', '', 0, 6, 2, '', '', 'IMG_0956.JPG', '0000-00-00', 0),
(343, 'Nia Nagar', 'Mr. Shubhamkant Nagar', '', '2009-10-21', '202, Vardhman Complex, Naya Road Ntd.', '', 0, 6, 2, '', '', 'IMG_0520.JPG', '0000-00-00', 0),
(344, 'Kavish Tak', 'Mr. Kanhaiya Lal Tak', '', '2009-11-07', 'Opp. Dev Heritage, Near 100 ft. road, Rajsmand', '', 0, 6, 2, '', '', 'IMG_0521.JPG', '0000-00-00', 0),
(345, 'Sejal Kumawat', 'Mr. Ganesh Lal Kumawat', '', '2009-10-08', 'Hanuman Choraya, Badarda', '', 0, 6, 2, '', '', 'IMG_0523.JPG', '0000-00-00', 0),
(346, 'Kuldeep Soni', 'Mr. Himmat Lal Soni', '', '2009-01-10', '484, Sukhadia Nagar, Nathdwara', '', 0, 6, 2, '', '', '52.JPG', '0000-00-00', 0),
(347, 'Somil Charan', 'Mr. Surendra Singh Charan', '', '2009-07-11', 'V/P - Aniana, Teh. - Atru, Dist. - Bharan (Raj.)', '', 0, 6, 2, '', '', '49.JPG', '0000-00-00', 0),
(348, 'Aman Jha', 'Mr. Dharmendra Jha', '', '2009-06-20', 'A - 43, Nai Aabadi, Gokul Nagar, Kankroli', '', 0, 6, 1, '', '', 'IMG_0465.JPG', '0000-00-00', 0),
(349, 'Arham Jain', 'Mr. Dharmesh Jain', '', '2009-05-23', '20/29 Adarsh Nagar, New Road, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0466.JPG', '0000-00-00', 0),
(350, 'Bhoomi Maheshwari', 'Mr. Rakesh Maheshwari', '', '2009-09-26', 'Lal Bazar, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0470.JPG', '0000-00-00', 0),
(351, 'Bhoomi Makhija', 'Mr. Kamlesh Makhija', '', '2008-10-06', 'Babu Bhai Sindhi Ka Makan, Rampura, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0471.JPG', '0000-00-00', 0),
(352, 'Divya Suthar', 'Mr. Chetan Suthar', '', '2009-04-22', 'Gunjol, Opp. Lal Baag, Kotharia', '', 0, 6, 1, '', '', 'IMG_0472.JPG', '0000-00-00', 0),
(353, 'Hatim Bootwala', 'Mr. Abdul Qadir Bootwala', '', '2008-11-06', 'Bohra Bazar, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0473.JPG', '0000-00-00', 0),
(354, 'Jigar Lavti', 'Mr. Nilesh Lavti', '', '2008-10-10', 'Sukhadia Nagar, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0474.JPG', '0000-00-00', 0),
(355, 'Kartavya Sen', 'Mr. Navneet K. Sen', '', '2009-07-20', 'Royal House, Bus Stand, Bagol, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0955.JPG', '0000-00-00', 0),
(356, 'Krishn Bhatia', 'Mr. Shyam Sundar Bhatia', '', '2009-04-29', 'Sindhi Colony, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0475.JPG', '0000-00-00', 0),
(357, 'Krishna Chechani', 'Mr. Kamlesh Chechani', '', '2008-11-21', 'Brijpura, Near Ahilya Kund, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0476.JPG', '0000-00-00', 0),
(358, 'Manan Singhvi', 'Mr. Dinesh Singhvi', '', '2008-12-18', 'Nakoda Nagar, Lal Baag, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0477.JPG', '0000-00-00', 0),
(359, 'Mansi Gurjar', 'Mr. Vijay Gurjar', '', '2009-05-04', 'Badshah Ki Gali, Gurjarpura, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0478.JPG', '0000-00-00', 0),
(360, 'Manthan Sisodia', 'Mr. Abhishek Sisodia', '', '2008-10-23', 'Near SBBJ Bank, Adarsh Nagar, New Road,Nathdwara', '', 0, 6, 1, '', '', 'IMG_0479.JPG', '0000-00-00', 0),
(361, 'Mimansa Singh Ranawat', 'Mr. Narendra Singh Ranawat', '', '2009-01-13', 'Kuncholi', '', 0, 6, 1, '', '', 'IMG_0480.JPG', '0000-00-00', 0),
(362, 'Palak Lavti', 'Mr. Dinesh Chandra Lavti', '', '2009-10-17', 'Park Road, Sukhadia Nagar, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0481.JPG', '0000-00-00', 0),
(363, 'Pallav Joshi', 'Mr. Dilip Kumar Joshi', '', '2008-08-06', 'Bhalawaton Ka Kheda, Lal Baag, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0482.JPG', '0000-00-00', 0),
(364, 'Pragya Trivedi', 'Mr. Rakesh Trivedi', '', '2009-06-29', 'Shrinath Colony A, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0483.JPG', '0000-00-00', 0),
(365, 'Pranay Siyal', 'Mr. Vimal Siyal', '', '2008-12-19', 'New Road, Opp. Hotel Siddhi Vinayak, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0484.JPG', '0000-00-00', 0),
(366, 'Rahul Singh Rathore', 'Mr. Fateh Singh Rathore', '', '2009-03-14', 'Balaji Nagar, Somnath Chowk Ke Pass, Jawad, (Rajsamand)', '', 0, 6, 1, '', '', 'IMG_0485.JPG', '0000-00-00', 0),
(367, 'Raghav Krishna Nandwana', 'Mr. Arun Kumar Nandwana', '', '2008-10-29', 'Near Shiv Mandir, Girls School Road, Kankroli', '', 0, 6, 1, '', '', 'IMG_0486.JPG', '0000-00-00', 0),
(368, 'Riya Vyas', 'Mr. Manish Vyas', '', '2008-10-29', '19-G, Sukhadia Nagar, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0487.JPG', '0000-00-00', 0),
(369, 'Shivam Purohit', 'Mr. Narayan Lal Purohit', '', '2008-11-09', 'Friends Colony, Lal Baag, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0488.JPG', '0000-00-00', 0),
(370, 'Tanishka Somani', 'Mr. Rajkumar Somani', '', '2009-04-11', 'Near Tera Panthi Nohra, Nai Haweli Chowk, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0489.JPG', '0000-00-00', 0),
(371, 'Yashashvi Mali', 'Mr. Mahesh Kumar Mali', '', '2008-11-30', 'Friends Colony, Lal Baag, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0490.JPG', '0000-00-00', 0),
(372, 'Chinmay Sharma', 'Mr. Suresh Kumar Sharma', '', '2009-10-05', 'Jawahar Navodaya Vidyalaya, N.H. - 8, (Rajsamand)', '', 0, 6, 1, '', '', 'IMG_0491.JPG', '0000-00-00', 0),
(373, 'Shreeyansh Yadav', 'Mr. Dilip Yadav', '', '2009-10-07', 'Sindhi Colony, Vyas Academy School, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0494.JPG', '0000-00-00', 0),
(374, 'Eshaan Ganesh Patil', 'Mr. Ganesh Patil', '', '2009-06-20', 'Flat - 402, Giriraj ( apt. ), Krishna Residency, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0493.JPG', '0000-00-00', 0),
(375, 'Rishabh Chaplot', 'Mr. Amit Chaplot', '', '2009-04-28', 'Nai, Aabadi, Navkar A.6 - 63, Kankroli', '', 0, 6, 1, '', '', 'IMG_0495.JPG', '0000-00-00', 0),
(376, 'Divyansh Mali', 'Mr. Chetan Mali', '', '2009-01-04', 'New Road, Madhav Hotal, Nathdwara', '', 0, 6, 1, '', '', 'IMG_0492.JPG', '0000-00-00', 0),
(377, 'Aaryan Lodha', 'Mr. Tejpal Lodha', '', '2009-06-18', 'Ganesh Nagar, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0527.JPG', '0000-00-00', 0),
(378, 'Aayush Paliwal', 'Mr. Harish Paliwal', '', '2009-02-03', 'Near SBBJ Bank Gali, New Road, Nathdwara, (Rajsamand)', '', 0, 6, 3, '', '', 'IMG_0528.JPG', '0000-00-00', 0),
(379, 'Anushka Dhabhai', 'Mr. Rajendra Dhabhai', '', '2009-06-10', 'In Front Of Gandhi Sewa Sadan, Rajnagar, (Rajsamand)', '', 0, 6, 3, '', '', 'IMG_0529.JPG', '0000-00-00', 0),
(380, 'Aradhya Soni', 'Mr. Govind Soni', '', '2009-11-24', 'Lal Bagh, Friends Colony, Nathdwara, (Rajsamand), (Raj.)', '', 0, 6, 3, '', '', 'IMG_0530.JPG', '0000-00-00', 0),
(381, 'Bhavin Jain', 'Mr. Tarun Jain', '', '2009-05-14', 'A -  Gokul Nagar, R.T.D.C., Nathdwara', '', 0, 6, 3, '', '', 'IMG_0531.JPG', '0000-00-00', 0),
(382, 'Bhavya Bolia', 'Mr. Kamlesh Bolia', '', '2008-11-02', 'Reti Mohalla, Kankroli', '', 0, 6, 3, '', '', 'IMG_0532.JPG', '0000-00-00', 0),
(383, 'Darshil Bhoi', 'Mr. Anil Raj Bhoi', '', '2009-11-26', 'Behind Shitla Mata Mandir, S.B.B.J. Bank, Rajnagar, (Rajsamand)', '', 0, 6, 3, '', '', 'IMG_0533.JPG', '0000-00-00', 0),
(384, 'Dhairya Surana', 'Mr. Naveen Surana', '', '2008-02-18', 'Friends Colony, Lal Bagh, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0534.JPG', '0000-00-00', 0),
(385, 'Faiz Ahmed Mansuri', 'Moh. Firoj Khan', '', '2009-02-15', 'Mohangarh, Nichla Chowk, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0535.JPG', '0000-00-00', 0),
(386, 'Garima Shrimali', 'Mr. Kailash Chandra Shrimali', '', '2009-12-21', 'Chinta Man Ka Madra, Farara, (Rajsamand)', '', 0, 6, 3, '', '', 'IMG_0536.JPG', '0000-00-00', 0),
(387, 'Hardik Suthar', 'Mr. Shanti Lal Suthar', '', '2009-05-01', 'Sutharo Ka Mohalla, Upali Odan', '', 0, 6, 3, '', '', 'IMG_0537.JPG', '0000-00-00', 0),
(388, 'Mayank Joshi', 'Mr. Ramesh Chandra Joshi', '', '2008-12-17', 'Police Station Colony, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0538.JPG', '0000-00-00', 0),
(389, 'Nitish Soni', 'Mr. Ashish Soni', '', '2009-11-17', 'Near S.B.B.J. Bank, New Road, Nathdwara', '', 0, 6, 3, '', '', '53.JPG', '0000-00-00', 0),
(390, 'Pavitra Bagora', 'Mr. Ravi Bagora', '', '2009-05-06', 'Near Bhakti Palace, Mohangarh, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0539.JPG', '0000-00-00', 0),
(391, 'Raavi Gurjar', 'Mr. Deepak Gurjar', '', '2009-07-02', 'Vallabhapura Ghati, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0540.JPG', '0000-00-00', 0),
(392, 'Saksham Raj Ajmera', 'Mr. Shyam Sundar Ajmera', '', '2009-01-01', 'R.T.D.C., Lal Bagh, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0541.JPG', '0000-00-00', 0),
(393, 'Shivraj Singh Chouhan', 'Mr. Jivan S. Chouhan', '', '2009-04-20', 'Kalla Khedi Viran, Post - Gunjol, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0542.JPG', '0000-00-00', 0),
(394, 'Shivraj Singh Rathore', 'Mr. Shaitan S. Rathor', '', '2009-02-13', 'Bagheri Office, N.H. - 8, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0543.JPG', '0000-00-00', 0),
(395, 'Shrijeeka Soni', 'Mr. Jagdish Soni', '', '2009-11-25', 'Ganesh Takri Road, Vallabhpura, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0544.JPG', '0000-00-00', 0),
(396, 'Vedant Gorwa', 'Mr. Gulal Gorwa', '', '2009-01-26', 'Charnamrit Jharna Darwaja, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0545.JPG', '0000-00-00', 0),
(397, 'Vishwapratap Singh', 'Mr. Raghupal S. Chouhan', '', '2009-06-21', 'Kuncholi, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0546.JPG', '0000-00-00', 0),
(398, 'Yojitraj Singh', 'Mr. Hukamraj S. Chouhan', '', '2008-11-11', 'Village - Gunjol, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0547.JPG', '0000-00-00', 0),
(399, 'Bhor Sanchihar', 'Mr. Himanshu Sanchihar', '', '2009-06-13', 'Vitthal Nath ji ki gali, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0548.JPG', '0000-00-00', 0),
(400, 'Piyush Charan', 'Mr. Pramod Singh Charan', '', '2008-06-24', 'Vidhyaniketan School, Kankroli', '', 0, 6, 3, '', '', 'IMG_0549.JPG', '0000-00-00', 0),
(401, 'Rao Garvindar Singh', 'Mr. Mahendra Singh Rao', '', '2010-01-17', 'Dewana, Near Badarda, Kankroli', '', 0, 6, 3, '', '', 'IMG_0550.JPG', '0000-00-00', 0),
(402, 'Himanshi Jeengar', 'Mr. Rajesh Jeengar', '', '2009-01-12', 'Near Sheetla Mata Mandir, Rajnagar', '', 0, 6, 3, '', '', 'IMG_0551.JPG', '0000-00-00', 0),
(403, 'Aarushi Durgawat', 'Mr. Bhupesh Durgawat', '', '2009-08-12', '429, Sukhadia Nagar, Nathdwara', '', 0, 6, 3, '', '', 'IMG_0552.JPG', '0000-00-00', 0),
(404, 'Aishna Gurjar', 'Mr. Amit Gurjar', '', '2008-01-19', 'Sukhadia Nagar, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0553.JPG', '0000-00-00', 0),
(405, 'Aman Sharma', 'Mr. Rajesh Sharma', '', '2008-04-25', 'Meera Nagar, Nathuwas, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0554.JPG', '0000-00-00', 0),
(406, 'Dev Kaneria', 'Mr. Ajay Kaneria', '', '2007-12-18', 'Shiv Ganga, G - 53, Sukhadia Nagar, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0555.JPG', '0000-00-00', 0),
(407, 'Drishti Lodha', 'Mr. Ganesh Kumar Lodha', '', '2007-12-30', 'Lodha Ghati, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0556.JPG', '0000-00-00', 0),
(408, 'Drona Kumawat', 'Mr. Ganesh Lal Kumawat', '', '2008-07-23', 'Mohangarh, Nichala Chowk, Nathdwara', '', 0, 7, 2, '', '', '54.JPG', '0000-00-00', 0),
(409, 'Hari Soni', 'Mr. Naresh Kumar Soni', '', '2008-02-07', 'Tehsil Road, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0557.JPG', '0000-00-00', 0),
(410, 'Havish Maheshwari', 'Mr. Pradeep Maheshwari', '', '2008-07-31', '4 - J, Sukhadia Nagar, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0558.JPG', '0000-00-00', 0),
(411, 'Idris Bohra', 'Mr. Mustafa Hussain', '', '2007-10-17', 'Bohra Mohalla, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0960.JPG', '0000-00-00', 0),
(412, 'Khushi Maheshwari', 'Mr. Sagar Maheshwari', '', '2008-11-26', '100 ft. Road, Behind HDFC Bank, (Rajsamand)', '', 0, 7, 2, '', '', 'IMG_0559.JPG', '0000-00-00', 0),
(413, 'Khushi Sanadhya', 'Mr. Sanjay Sanadhya', '', '2008-05-26', 'Behind Temple, Joshipura, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0560.JPG', '0000-00-00', 0),
(414, 'Mansi Jadiya', 'Mr. Chandra Prakash Jadiya', '', '2008-08-30', 'New Road, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0961.JPG', '0000-00-00', 0),
(415, 'Naitik Shrimali', 'Mr. Hitesh Shrimali', '', '2008-03-27', 'Friends Colony, Lal Baag, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0561.JPG', '0000-00-00', 0),
(416, 'Nikhil Sharma', 'Mr. Yogesh Kumar Sharma', '', '2008-11-27', 'Panch Ratna Complex, Kankroli', '', 0, 7, 2, '', '', 'IMG_0562.JPG', '0000-00-00', 0),
(417, 'Prince Madrecha', 'Mr. Sanjay Kumar Madrecha', '', '2008-03-22', 'White House, Arihant Vihar, Kankroli', '', 0, 7, 2, '', '', 'IMG_0563.JPG', '0000-00-00', 0),
(418, 'Pushti Sharma', 'Mr. Vinod Kumar Sharma', '', '2008-01-07', 'Krishna Bhawan, Vallabhpura, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0564.JPG', '0000-00-00', 0),
(419, 'Shatrunjay Singh Chouhan', 'Mr. Jeevan Singh Chouhan', '', '2008-05-28', 'Shri Ram Marble, Kalla Khedi, Post - Gunjol, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0565.JPG', '0000-00-00', 0),
(420, 'Tanish Bhatia', 'Mr. Gaurav Bhatia', '', '2008-04-20', 'Bicchu Magri, Near Sunrise Academy, Ntd.', '', 0, 7, 2, '', '', 'IMG_0566.JPG', '0000-00-00', 0),
(421, 'Tasneem Lohawala', 'Mr. Mustafa Lohawala', '', '2008-05-23', 'Near New Rise Public School, Tehsil Road, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0567.JPG', '0000-00-00', 0),
(422, 'Unnat Gurjar', 'Mr. Yogesh Gurjar', '', '2009-06-30', 'Gurjarpura, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0568.JPG', '0000-00-00', 0),
(423, 'Yashraj Singh Rathore', 'Mr. Dungar Singh Rathore', '', '2010-01-01', 'Sukhadia Nagar, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0569.JPG', '0000-00-00', 0),
(424, 'Yatharth Gurjar', 'Mr. Manish Gurjar', '', '2008-02-29', 'Near Purohit Hospital, Nathuwas, Nathdwara', '', 0, 7, 2, '', '', 'IMG_0570.JPG', '0000-00-00', 0),
(425, 'Liza Rathore', 'Mr. Pramendra Singh Rathore', '', '2008-02-13', '31, Kumbha Nagar, Shankarpura, Near R.K. Hospital, Raj.', '', 0, 7, 2, '', '', 'IMG_0571.JPG', '0000-00-00', 0),
(426, 'Prapti Sanchihar', 'Mr. Bhuwnesh Sanchihar', '', '2007-09-12', 'Gopal Niwas Hotel Mohangarh, Naya Bazar, Ntd.', '', 0, 7, 2, '', '', 'IMG_0572.JPG', '0000-00-00', 0),
(427, 'Vedin Pareek', 'Mr. Manoj Kumar Pareek', '', '2007-08-22', 'Madhav panchratna Complex, Kankroli, Rajsamand', '', 0, 7, 2, '', '', 'IMG_0573.JPG', '0000-00-00', 0),
(428, 'Subransh', 'Mr. Narendra Kumar', '', '2008-10-11', 'A-14, Dwarika Nagar, Rajsamand', '', 0, 7, 2, '', '', 'IMG_0574.JPG', '0000-00-00', 0),
(429, 'Nitya Khandelwal', 'Mr. Yugal Kishore Khandelwal', '', '2008-10-31', 'Rawto ka Darwaza, Bus Stand Road, Ntd.', '', 0, 7, 2, '', '', 'IMG_0575.JPG', '0000-00-00', 0),
(430, 'Piyush Chaplot', 'Mr. Nirmal Chaplot', '', '2008-10-26', 'Mahaveerpura, Ntd.', '', 0, 7, 2, '', '', 'IMG_0576.JPG', '0000-00-00', 0),
(431, 'Aryan', 'Mr. Subodh Kumar Singh', '', '2008-04-05', 'Krishna Residency, Ntd.', '', 0, 7, 2, '', '', 'IMG_0577.JPG', '0000-00-00', 0),
(432, 'Aarya Agrawal ', 'Mr. Mukesh Agrawal', '', '2008-01-16', 'D - 213, Arihant Plaza, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0585.JPG', '0000-00-00', 0),
(433, 'Abhishek Yadav', 'Mr. Jaiprakash Yadav', '', '2008-08-09', 'Shanti Colony, Near G.S., Rajsamand', '', 0, 7, 1, '', '', 'IMG_0586.JPG', '0000-00-00', 0),
(434, 'Ankit Meena', 'Mr. Ram Prasad Meena', '', '2008-09-01', 'Near - Rajdeep Hotel, New Road, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0608.JPG', '0000-00-00', 0),
(435, 'Areen Sanadhya', 'Mr. Subhash Chandra Sanadhya', '', '2008-06-02', 'Nai Haveli Chowk, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0587.JPG', '0000-00-00', 0),
(436, 'Bhavya Soni', 'Mr. Pramod Soni', '', '2007-06-02', 'Gurjarpura Darwaja, Helawali, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0954.JPG', '0000-00-00', 0),
(437, 'Chahal Bhandari', 'Mr. Chandra Prakash Bhandari', '', '2008-06-28', '6 - Shriram Nagar, 100ft. Road, (Rajsamand)', '', 0, 7, 1, '', '', 'IMG_0588.JPG', '0000-00-00', 0),
(438, 'Darshil Boliwal', 'Mr. Kamla Shankar Boliwal', '', '2008-08-19', 'Banas Pool, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0952.JPG', '0000-00-00', 0),
(439, 'Dhruv Paliwal', 'Mr. Lalit Paliwal', '', '2008-04-27', 'Gurjarpura, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0953.JPG', '0000-00-00', 0),
(440, 'Dixita Lakhara', 'Mr. Narendra Lakhara', '', '2008-01-15', 'Chhota Gopalpura, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0589.JPG', '0000-00-00', 0),
(441, 'Fatima ', 'Mr. Murtaza', '', '2008-10-24', 'Tehsil Road, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0590.JPG', '0000-00-00', 0),
(442, 'Harshit Keer', 'Mr. Kishan Lal Keer', '', '2009-02-19', 'Panch Ratna Complex, Keshav Nagar, (Gudali), (Rajsamand)', '', 0, 7, 1, '', '', 'IMG_0591.JPG', '0000-00-00', 0),
(443, 'Harshita Tailor', 'Mr. Bheru Lal Tailor', '', '2006-10-15', 'Shiv Nagar, Lal Baag, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0592.JPG', '0000-00-00', 0),
(444, 'Jigisha Kataria', 'Mr. Abhishek Kataria', '', '2008-08-15', 'Lodha Ghati, Ganesh Nagar, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0593.JPG', '0000-00-00', 0),
(445, 'Latavya Pokhra', 'Mr. Kamal Pokhra', '', '2008-08-22', 'Opp. Gandhi Seva Sadan School Road, Rajsamand', '', 0, 7, 1, '', '', '50.JPG', '0000-00-00', 0),
(446, 'Madhav Shrimali', 'Mr. Dinesh Shrimali', '', '2008-01-25', 'Brijlai Road, Lal Baag, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0594.JPG', '0000-00-00', 0),
(447, 'Manan Gurjar', 'Mr. Manish Gurjar', '', '2007-12-01', 'Gurjarpura, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0595.JPG', '0000-00-00', 0),
(448, 'Nandini Lakhotia', 'Mr. Jagdish Lakhotia', '', '2007-11-12', 'Lakhotia Sadan, Brijpura, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0596.JPG', '0000-00-00', 0),
(449, 'Piyush Chandak', 'Mr. Laxmi Kant Chandak', '', '2008-08-05', 'Arihant Colony, J.K. Mod, Kankroli, Rajsamand', '', 0, 7, 1, '', '', 'IMG_0597.JPG', '0000-00-00', 0),
(450, 'Priyanshi Audichya', 'Mr. Vitthal Audichya', '', '2007-11-07', 'Near Uba Ganeshji , Sinhad, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0598.JPG', '0000-00-00', 0),
(451, 'Priyanshi Tak', 'Mr. Bhagwati Lal Tak', '', '2008-05-15', 'Sinhad, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0599.JPG', '0000-00-00', 0),
(452, 'Rishiraj Singh Chouhan', 'Mr. Ganpat Singh Chouhan', '', '2008-02-07', 'N.I.M., Kalla Khedi', '', 0, 7, 1, '', '', 'IMG_0600.JPG', '0000-00-00', 0),
(453, 'Saanchi Ajmera', 'Mr. Vikas Ajmera', '', '2008-12-05', '50 - Subhash Nagar, Rajsamand', '', 0, 7, 1, '', '', 'IMG_0601.JPG', '0000-00-00', 0),
(454, 'Samiksha Sanadhya', 'Mr. Mahesh Sanadhya', '', '2007-05-12', 'Bada Gopalpura, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0602.JPG', '0000-00-00', 0),
(455, 'Shubh Kogta', 'Mr. Lokesh Kogta', '', '2008-12-31', 'C- Subhash Nagar, Rajsamand', '', 0, 7, 1, '', '', 'IMG_0604.JPG', '0000-00-00', 0),
(456, 'Hanudra Sharma', '', '', '2007-10-04', 'Vallabha Bhojnalya, Choupati, Nathdwara', '', 0, 7, 1, '', '', 'IMG_0605.JPG', '0000-00-00', 0),
(457, 'Megha Mahakali', 'Mr. Prakash Mahakali', '', '2008-03-20', 'Near Telephone Exchange, Mudrika Chowk, Ntd.', '', 0, 7, 1, '', '', 'IMG_0606.JPG', '0000-00-00', 0),
(458, 'Shreya Gupta', 'Mr. Vijay Kumar Gupta', '', '2009-02-10', 'Narbada Colony, Near Sun Rise School, Ntd.', '', 0, 7, 1, '', '', 'IMG_0607.JPG', '0000-00-00', 0),
(459, 'Aastha Soni', 'Mr. Tilkesh Soni', '', '2008-02-12', 'Gokul Nagar, Lal Baag, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0578.JPG', '0000-00-00', 0),
(460, 'Ali Akber Lohawala', 'Mr. Shabbir Hussain', '', '2008-01-14', 'Tehsil Road, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0609.JPG', '0000-00-00', 0),
(461, 'Bhavya Paliwal', 'Mr. Pankaj Paliwal', '', '2008-08-14', 'Behind Lal Baag Hospital, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0610.JPG', '0000-00-00', 0),
(462, 'Bhavya Sharma', 'Mr. Sanjay Kumar Sharma', '', '2008-06-20', 'Anand Nagar, Lal Baag, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0579.JPG', '0000-00-00', 0),
(463, 'Bhupesh Gujarati', 'Mr. Durgesh Gujarati', '', '2008-05-24', 'Near Hanuman Ji Temple, Sinhad, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0611.JPG', '0000-00-00', 0),
(464, 'Devkrishna Parihar', 'Mr. Chandan Singh Parihar', '', '2007-08-31', 'Bohra Bazar, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0962.JPG', '0000-00-00', 0),
(465, 'Hussain Bohra', 'Mr. Burhanuddin Bohra', '', '2007-09-30', 'Bohra Bazar, Near Bohra Gati, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0612.JPG', '0000-00-00', 0),
(466, 'Jhanvi Purohit', 'Mr. Mangilal Purohit', '', '2008-01-09', 'Friends Colony, Lal Baag, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0581.JPG', '0000-00-00', 0),
(467, 'Kanishka Tak', 'Mr. Bharat Kumar Tak', '', '2008-01-10', 'Near Hanuman Temple, Sinhad, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0584.JPG', '0000-00-00', 0),
(468, 'Kritika Bolia', 'Mr. Ramesh Bolia', '', '2008-03-14', 'Shanti Colony, Nai Aabadi, Kankroli', '', 0, 7, 3, '', '', 'IMG_0582.JPG', '0000-00-00', 0),
(469, 'Lavish Tuklia', 'Mr. Vijay Tuklia', '', '2008-09-18', 'Holithada, J.K. Mode, Kankroli', '', 0, 7, 3, '', '', 'IMG_0613.JPG', '0000-00-00', 0),
(470, 'Mayank Suthar', 'Mr. Dinesh Suthar', '', '2008-03-19', 'Shreenath Colony (A), Nathdwara', '', 0, 7, 3, '', '', 'IMG_0614.JPG', '0000-00-00', 0),
(471, 'Mudrika Maheshwari', 'Mr. Basant Maheshwari', '', '2007-12-02', 'C - 41, Housing Board Colony, Sukhadiya Nagar', '', 0, 7, 3, '', '', 'IMG_0583.JPG', '0000-00-00', 0),
(472, 'Nehal Goswami', 'Mr. Guru Govind Bharti', '', '2008-05-20', 'Bharti Bhawan, Niche Ka Chowk, Mohangarh, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0615.JPG', '0000-00-00', 0),
(473, 'Nilansh Maheshwari', 'Mr. Bharat Maheshwari', '', '2008-05-21', 'Behind Swaminarayan Temple, Bus Stand, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0616.JPG', '0000-00-00', 0),
(474, 'Padmshree Jain', 'Mr. Somil Jain', '', '2008-07-10', 'Mukharji Chouraha, Jain Hospital, Kankroli', '', 0, 7, 3, '', '', 'IMG_0617.JPG', '0000-00-00', 0),
(475, 'Parth Audichya', 'Mr. Devishankar Audichya', '', '2008-03-23', 'Lal Baag, Shiv Nagar, Kothariya Road, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0618.JPG', '0000-00-00', 0),
(476, 'Priyanshi Sanadhya', 'Mr. Gopesh Sanadhya', '', '2008-10-27', 'Near Sundervilas, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0619.JPG', '0000-00-00', 0),
(477, 'Shrishtiraj Purohit', 'Mr. Narpat Singh Rajpurohit', '', '2007-11-22', 'Arihant Plaza, Bus Stand, Ntd.', '', 0, 7, 3, '', '', 'IMG_0620.JPG', '0000-00-00', 0),
(478, 'Sumit Bolia', 'Mr. Vinay Bolia', '', '2008-02-08', 'Manglam Auto Parts, Mukharji Chouraha, Kankroli', '', 0, 7, 3, '', '', 'IMG_0621.JPG', '0000-00-00', 0),
(479, 'Tanisha Surana', 'Mr. Manish Surana', '', '2008-08-08', 'Near Ankur School, Bagarwada, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0622.JPG', '0000-00-00', 0),
(480, 'Varsha Inani', 'Mr. Mahesh Kumar Inani', '', '2008-01-18', 'Modiyon Ki Khidak, Lodha Gati, Nathdwara', '', 0, 7, 3, '', '', 'IMG_0623.JPG', '0000-00-00', 0),
(481, 'Harshil Gurjar', 'Mr. Lokesh Gurjar', '', '2008-03-16', 'Tejaji Ka Chowk, Bagarwada, Ntd.', '', 0, 7, 3, '', '', 'IMG_0624.JPG', '0000-00-00', 0),
(482, 'Uddhav Raj', 'Mr. Govind Raj', '', '2008-09-03', 'Near Sundar Vilas Kund Nathdwara', '', 0, 7, 3, '', '', 'IMG_0625.JPG', '0000-00-00', 0),
(483, 'Harsh Jhanwar', 'Mr. Hari Shankar Jha', '', '2007-11-27', 'Mahaveer Nagar, Rajnagar', '', 0, 7, 3, '', '', 'IMG_0626.JPG', '0000-00-00', 0),
(484, 'Manvi Singh Kalal', 'Mr. Vishnu Kumar Somvanshi', '', '2008-06-09', 'A-15, Govind Nagar, Housing Board', '', 0, 7, 3, '', '', 'IMG_0627.JPG', '0000-00-00', 0),
(485, 'Ishika Veerwal', 'Mr. Vinod Veerwal', '', '2009-09-14', 'Near Hunumaan Mandir, Badarda, Rajsamand', '', 0, 7, 3, '', '', 'IMG_0628.JPG', '0000-00-00', 0),
(486, 'Aditi Maheshwari', 'Mr. Pradeep Maheshwari', '', '2007-02-22', '4 - J Sukhadiya Nagar, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0660.JPG', '0000-00-00', 0),
(487, 'Bharat Singh Solanki', 'Mr. Gamer Singh Solanki', '', '2007-06-30', 'Police Quarter, Nathuwas, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0661.JPG', '0000-00-00', 0),
(488, 'Bhuvi Kawdia', 'Mr. Sanjay Kawdia', '', '2007-01-17', 'Mahveer Nagar, Rajsamand', '', 0, 8, 2, '', '', 'IMG_0662.JPG', '0000-00-00', 0),
(489, 'Dev Shrimali', 'Mr. Yogesh Shrimali', '', '2007-08-29', 'Vinayak Vihar Colony, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0663.JPG', '0000-00-00', 0),
(490, 'Divydarshini Ranawat', 'Mr. Narendra Singh Ranawat', '', '2007-07-07', 'Kuncholi, Bagol, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0664.JPG', '0000-00-00', 0),
(491, 'Gourav Nagda', 'Mr. Nana Lal Nagda', '', '2006-08-10', 'Shiv Nagar, Lal Baag, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0665.JPG', '0000-00-00', 0),
(492, 'Hardik Gurjar', 'Mr. Deepak Gurjar', '', '2007-02-01', 'Meera Nagar, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0666.JPG', '0000-00-00', 0),
(493, 'Jatin Sanadhya', 'Mr. Kapil Sanadhya', '', '2006-09-05', 'Behind Choudhary Petrol Pump, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0667.JPG', '0000-00-00', 0),
(494, 'Jay Chaplot', 'Mr. Bhavesh Chaplot', '', '2007-09-22', 'Mahaveerpura, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0668.JPG', '0000-00-00', 0),
(495, 'Jay Dadheech', 'Mr. Neeraj Dadheech', '', '2008-11-08', 'Fauz Mohalla, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0669.JPG', '0000-00-00', 0),
(496, 'Krishna Sharma', 'Mr. Rajesh Sharma', '', '2007-01-30', 'Sukhadiya Nagar, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0670.JPG', '0000-00-00', 0),
(497, 'Kushagra Singhal', 'Mr. Satish Singhal', '', '2007-05-19', 'Doctor Quarter No. 2/3, R.K. Hospital Campus, Rajsamand', '', 0, 8, 2, '', '', 'IMG_0671.JPG', '0000-00-00', 0),
(498, 'Lakshraj Singh Chundawat', 'Mr. Gajendra Singh Chundawat', '', '2007-12-31', 'Kalaji Goraji Mandir, Panchwati, Kalawati', '', 0, 8, 2, '', '', 'IMG_0672.JPG', '0000-00-00', 0),
(499, 'Lokendra Vyas', 'Mr. Ram Dayal Vyas', '', '2007-10-27', 'Near Post Office, Kankroli', '', 0, 8, 2, '', '', 'IMG_0673.JPG', '0000-00-00', 0),
(500, 'Matul Jain', 'Mr. Mukesh Jain', '', '2007-01-14', '100ft. Road, Ayodhyapuri, Kankroli', '', 0, 8, 2, '', '', 'IMG_0674.JPG', '0000-00-00', 0),
(501, 'Mehul Sharma', 'Mr. Dilip Kumar Sharma', '', '2006-12-11', 'Lal Baag, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0675.JPG', '0000-00-00', 0),
(502, 'Nikhilesh Mali', 'Mr. Aditya Mali', '', '2006-12-18', 'Lal Baag, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0676.JPG', '0000-00-00', 0),
(503, 'Nishtha Mehta', 'Mr. Vinod Mehta', '', '2007-07-25', 'Maheshwari Mohalla, Rajnagar, Rajsamand, (Raj.)', '', 0, 8, 2, '', '', '24.JPG', '0000-00-00', 0),
(504, 'Parth Parikh', 'Late Manish Parikh', '', '2006-12-13', 'Setho Ka Paysa, Mandir Marg. Nathdwara', '', 0, 8, 2, '', '', 'IMG_0677.JPG', '0000-00-00', 0),
(505, 'Pratishtha Singh Choudhary', 'Mr. Yogesh Choudhary', '', '2008-01-11', 'Rawto Ka Darwaja, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0678.JPG', '0000-00-00', 0),
(506, 'Raghavi Gurjar', 'Mr. Deepak Gurjar', '', '2006-12-15', 'Jarna Darwaja, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0679.JPG', '0000-00-00', 0),
(507, 'Rajyavardhan Singh Chouhan', 'Mr. Kesar Singh Chouhan', '', '2007-07-05', 'Kalla Khedi, Gunjol, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0680.JPG', '0000-00-00', 0),
(508, 'Rakshit Bhatia', 'Mr. Sanjay Bhatia', '', '2006-08-01', 'Bichu Mangri, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0681.JPG', '0000-00-00', 0),
(509, 'Ronak Sukhlecha', 'Mr. Rajendra Kumar Sukhlecha', '', '2006-07-05', 'J.K. Mode, Kankroli', '', 0, 8, 2, '', '', 'IMG_0682.JPG', '0000-00-00', 0),
(510, 'Taksh Dhoka', 'Mr. Ranjeet Dhoka', '', '2008-01-30', 'Kothari Mohalla, Rajnagar', '', 0, 8, 2, '', '', 'IMG_0683.JPG', '0000-00-00', 0),
(511, 'Vatsal Lakhotia', 'Mr. Shyamsunder Lakhotia', '', '2007-12-22', 'Naniji Ka Baag, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0684.JPG', '0000-00-00', 0),
(512, 'Vikrant Singh Kumawat', 'Mr. Balram Singh Kumawat', '', '2007-03-23', 'Fauz Mohalla, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0685.JPG', '0000-00-00', 0),
(513, 'Drawal Verma', 'Mr. Rakesh Verma', '', '2006-12-01', 'Ragunath Nagar, Nathdwara', '', 0, 8, 2, '', '', 'IMG_0686.JPG', '0000-00-00', 0),
(514, 'Manvandra Singh', 'Mr. Mahandra Pal Singh', '', '2008-03-30', 'R.K. Hospital Rajsamand', '', 0, 8, 2, '', '', 'IMG_0687.JPG', '0000-00-00', 0),
(515, 'Abdul Tayyeb Mukhiya', 'Mr. Mufaddal Mukhiya', '', '2006-12-18', 'Mochi Bazar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0949.JPG', '0000-00-00', 0),
(516, 'Archita Kumawat', 'Mr. Yogesh Kumawat', '', '2007-02-02', 'Adarsh Nagar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0630.JPG', '0000-00-00', 0),
(517, 'Bhaskar Paliwal', 'Mr. Ravindra Paliwal', '', '2007-05-06', 'Sukhadia Nagar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0631.JPG', '0000-00-00', 0),
(518, 'Bhavya Jain', 'Mr. Rajkumar Jain', '', '2007-05-07', 'Near Ankur School, Bagarwada, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0632.JPG', '0000-00-00', 0),
(519, 'Bhavya Kabra', 'Mr. Pankaj Kabra', '', '2007-10-19', '44 - G, Sukhadia Nagar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0633.JPG', '0000-00-00', 0),
(520, 'Charvi Sharma', 'Mr. Rakesh Sharma', '', '2007-05-15', 'Near Samudaik Bhawan, Sukhadia Nagar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0634.JPG', '0000-00-00', 0),
(521, 'Daksh Maheshwari', 'Mr. Sunil Chechani', '', '2008-01-14', 'Sinhad, Near Hanumanji Temple, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0635.JPG', '0000-00-00', 0),
(522, 'Dhenushree Joshi', 'Mr. Hemant Joshi', '', '2007-01-17', 'Jaat Khidki, Kirtaniya Gati, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0636.JPG', '0000-00-00', 0),
(523, 'Drona Sharma', 'Mr. Dharmendra Sanadhya', '', '2006-11-30', 'Shreeji Vihar Colony, R.T.D.C. Road, Lal Bag, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0637.JPG', '0000-00-00', 0),
(524, 'Harshi Sisodiya', 'Mr. Shambhu Singh Sisodiya', '', '2007-04-24', 'Nai Haveli Chowk, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0653.JPG', '0000-00-00', 0),
(525, 'Harshraj Kunwar Chouhan', 'Mr. Devendra Singh Chouhan', '', '2007-02-28', 'A - 6, Housing Board Colony, Sukhadia Nagar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0638.JPG', '0000-00-00', 0),
(526, 'Jhanvi Lodha', 'Mr. Tejpal Singh Lodha', '', '2007-11-02', 'Ganesh Nagar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0639.JPG', '0000-00-00', 0),
(527, 'Jinni Sanadhya', 'Mr. Manish Sanadhya', '', '2006-08-09', 'Near Hanumanji Temple, Sinhad, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0640.JPG', '0000-00-00', 0),
(528, 'Kavyashree Sanadhya', 'Mr. Kailash Sanadhya', '', '2007-02-27', 'Rawton Ka Darwaja, Nai Haveli, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0641.JPG', '0000-00-00', 0),
(529, 'Lavina Rathi', 'Mr. Ramesh Rathi', '', '2007-04-18', 'Nai Haveli Chowk, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0654.JPG', '0000-00-00', 0),
(530, 'Naveen Kumar Meena', 'Mr. Mahendra Kumar Meena', '', '2008-02-25', 'Police Quater No. - D - 1, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0642.JPG', '0000-00-00', 0),
(531, 'Nikhil Israni ', 'Mr. Bhagwandas Sindhi', '', '2007-11-11', 'Indraprasth Complex, Rajnagar', '', 0, 8, 1, '', '', 'IMG_0643.JPG', '0000-00-00', 0),
(532, 'Nilesh Sharma', 'Mr. Lokesh Sharma', '', '2007-07-24', 'Tabela, Nai Haveli Chowk, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0644.JPG', '0000-00-00', 0),
(533, 'Nipun Paliwal', 'Mr. Deepak Paliwal', '', '2006-09-27', 'Near Govt. Hospital, Lal Bagh, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0645.JPG', '0000-00-00', 0),
(534, 'Rishi Jain', 'Mr. Lokesh Jain', '', '2007-06-22', 'Mahaveerpura, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0646.JPG', '0000-00-00', 0),
(535, 'Shreya Sanadhya', 'Mr. Rahul Sanadhya', '', '2006-10-04', 'Chitrakaro Ki Gali, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0647.JPG', '0000-00-00', 0),
(536, 'Siya Jain', 'Mr. Balwant Jain', '', '2007-01-21', 'Tehsil Road, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0648.JPG', '0000-00-00', 0),
(537, 'Vansh Gupta', 'Mr. Vishal Gupta', '', '2006-12-05', 'kothariya Road, Lal Bagh, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0649.JPG', '0000-00-00', 0),
(538, 'Vishesh Jain', 'Mr. Devendra Jain', '', '2007-10-02', 'Shreenath Colony - B, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0650.JPG', '0000-00-00', 0),
(539, 'Vivek Singh', 'Mr. Lokesh Singh ', '', '2009-07-01', 'Near Court Campus, Police Quarter, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0651.JPG', '0000-00-00', 0),
(540, 'Yashodhara Sethi', 'Mr. Manish Sethi', '', '2008-03-01', 'Opp. Hotel Siddhi Vinayak, New Road, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0652.JPG', '0000-00-00', 0),
(541, 'Yashvardhan Singh Gahlot', 'Mr. Shailendra Singh Gahlot', '', '2006-12-20', 'Gokul Plaza, New Road, Nathdwara', '', 0, 8, 1, '', '', '25.JPG', '0000-00-00', 0),
(542, 'Aarchi Shrimali ', 'Mr. Harish Shrimali', '', '2007-01-26', 'Bhilwada Road, Kankroli', '', 0, 8, 1, '', '', 'IMG_0629.JPG', '0000-00-00', 0),
(543, 'Sachin Jani', 'Mr. Shankar Shiv Lal Jani', '', '2007-11-01', 'Govindpura Road, Near Samiti, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0655.JPG', '0000-00-00', 0),
(544, 'Huzefa Bootwala', 'Mr. Kaid Johar', '', '2007-08-13', 'Bohra Bazar, Nathdwara', '', 0, 8, 1, '', '', 'IMG_0656.JPG', '0000-00-00', 0),
(545, 'Bhoomi Gurjar', 'Mr. Lokesh Gurjar', '', '2008-04-25', 'Dwarkesh Colony, Kankroli ', '', 0, 8, 1, '', '', 'IMG_0657.JPG', '0000-00-00', 0),
(546, 'Himakshi Soni', 'Mr. Lokesh Soni', '', '2007-11-28', 'Shanti Colony, Kankroli', '', 0, 8, 1, '', '', 'IMG_0658.JPG', '0000-00-00', 0),
(547, 'Vansh Samar', 'Mr. Rajiv Samar', '', '2007-03-24', 'Shitlamata Mandir, Rajnagar', '', 0, 8, 1, '', '', 'IMG_0659.JPG', '0000-00-00', 0),
(548, 'Dhruvika Singh', 'Mr. Shoorveer Singh', '', '2006-10-13', 'Sukhadiya Nagar, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0688.JPG', '0000-00-00', 0),
(549, 'Hemang Shrimali', 'Mr. Bhagwati Prasad Shrimali', '', '2007-03-27', 'Panchratan Complex, Kankroli', '', 0, 8, 3, '', '', 'IMG_0689.JPG', '0000-00-00', 0),
(550, 'Himanshu Khandelwal', 'Mr. Yagyanarayan Sharma', '', '2008-11-30', 'Panchratan Complex, Kankroli', '', 0, 8, 3, '', '', 'IMG_0690.JPG', '0000-00-00', 0),
(551, 'Jinit Sharma', 'Mr. Rajneesh Sharma', '', '2007-07-02', 'Ice Factory, Nai Haveli Chock, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0691.JPG', '0000-00-00', 0),
(552, 'Khushi Bagora', 'Mr. Rajesh Bagora', '', '2007-04-12', 'Sukhadiya Nagar, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0692.JPG', '0000-00-00', 0),
(553, 'Kritika Purohit', 'Mr. Bheru Lal Purohit', '', '2007-07-12', 'Yamuna Vihar Colony, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0693.JPG', '0000-00-00', 0),
(554, 'Rajdeep Singh Shaktawat', 'Mr. Dilip Singh Shaktawat', '', '2006-09-29', 'Near Jawad By Pass, Kankroli', '', 0, 8, 3, '', '', 'IMG_0694.JPG', '0000-00-00', 0),
(555, 'Suryadev Singh', 'Mr. Unkar Singh', '', '2007-04-20', 'Uriya, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0695.JPG', '0000-00-00', 0),
(556, 'Tanvi Verma', 'Mr. Chandrashekhar Verma', '', '2007-03-08', 'Pipli Chouraha, Nathuwas', '', 0, 8, 3, '', '', 'IMG_0696.JPG', '0000-00-00', 0),
(557, 'Vaibhav Shrimali', 'Mr. Kailash Chandra Shrimali', '', '2007-05-18', 'Chintamani Ka Madra, Farara, Rajsamand', '', 0, 8, 3, '', '', 'IMG_0697.JPG', '0000-00-00', 0),
(558, 'Anay Laddha', 'Mr. Sunil Laddha', '', '2007-02-17', ' ''Matra Shree'' Pratap Chouraha, Rajsamand', '', 0, 8, 3, '', '', 'IMG_0698.JPG', '0000-00-00', 0),
(559, 'Dikshika Mali', 'Mr. Ghanshyam Mali', '', '2007-04-17', 'Girirajpura, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0699.JPG', '0000-00-00', 0),
(560, 'Divyanshi Singh Rao', 'Mr. Sandeep Singh Rao', '', '2007-08-03', 'Friends Colony, Lal Baag, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0700.JPG', '0000-00-00', 0),
(561, 'Mansvi Makhija', 'Mr. Kamlesh Makhija', '', '2007-08-13', 'Rampura, Govind Chowk, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0701.JPG', '0000-00-00', 0),
(562, 'Munira Bohra', 'Mr. Abbas Ali ', '', '2007-02-09', 'High Sec. School, Fauj Mohalla, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0702.JPG', '0000-00-00', 0),
(563, 'Pranav Joshi', 'Mr. Prakash Chandra Joshi', '', '2006-09-23', 'Sukhadia Nagar, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0703.JPG', '0000-00-00', 0),
(564, 'Priya Mali', 'Mr. Sheshnarayan Mali', '', '2007-03-07', 'Lal Baag, (Jhankar Complex), Nathdwara', '', 0, 8, 3, '', '', 'IMG_0704.JPG', '0000-00-00', 0),
(565, 'Samridhi Khandelwal', 'Mr. Yugal Kishore Khandelwal', '', '2007-09-24', 'Rawton Ka Darwaja, Bus Stand Road, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0705.JPG', '0000-00-00', 0),
(566, 'Bhavishya Choudhary', 'Mr. Surendra Kumar', '', '2008-01-06', '100ft. Road, Rajsamand', '', 0, 8, 3, '', '', 'IMG_0706.JPG', '0000-00-00', 0),
(567, 'Bhagya Jain', 'Mr. Ashok Jain', '', '2007-03-13', '129, Mahaveer Nagar, Shree Siddhi Milan, 100ft. Road, Kankroli,  Rajsamand', '', 0, 8, 3, '', '', 'IMG_0707.JPG', '0000-00-00', 0),
(568, 'Ishika Rathi', 'Mr. Kailash Rathi', '', '2007-04-25', 'Arihant Plaza Complex, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0708.JPG', '0000-00-00', 0),
(569, 'Rishabh Bahedia', 'Mr. Anil Bahedia', '', '2007-05-28', 'A-46, Nai Abadi, Kankroli', '', 0, 8, 3, '', '', 'IMG_0709.JPG', '0000-00-00', 0),
(570, 'Soumy Dave', 'Mr. Rituraj Dave', '', '2007-05-07', 'Sundar Colony, Bhilwara Road, Kankroli', '', 0, 8, 3, '', '', 'IMG_0710.JPG', '0000-00-00', 0),
(571, 'Tanishq Gurjar', 'Mr. Shailendra Gurjar', '', '2007-12-07', 'E-34, Govind Nagar, Rajsamand', '', 0, 8, 3, '', '', 'IMG_0711.JPG', '0000-00-00', 0),
(572, 'Khwahish Paliwal', 'Mr. Mahesh Paliwal', '', '2008-02-06', 'Teliyo Ka talab, Nathdwara', '', 0, 8, 3, '', '', 'IMG_0712.JPG', '0000-00-00', 0),
(573, 'Parth Karanani', 'Mr. Mahesh Kumar Karanani', '', '2006-11-17', 'Opp. Kotak Bank, 100 Ft. Road', '', 0, 8, 3, '', '', '55.JPG', '0000-00-00', 0),
(574, 'Varun Singhal ', 'Mr. Manoj Kumar', '', '2007-08-07', 'K - 12, Dwarika Nagar, Kankroli, (Raj.)', '', 0, 8, 3, '', '', 'IMG_0713.JPG', '0000-00-00', 0),
(575, 'Kshitij Singh', 'Mr. Kumar Jitendra', '', '2006-05-03', 'Mayur Hotel, Kankroli, Rajsamand', '', 0, 8, 3, '', '', '', '0000-00-00', 0),
(576, 'Krisnakant Jhanwar', 'Mr. Harishankar Jhanwar', '', '2006-11-30', 'Mahaveerpura, Rajnagar', '', 0, 8, 3, '', '', 'IMG_0714.JPG', '0000-00-00', 0),
(577, 'Mohit Jain', 'Mr. Anil Jain', '', '2007-03-04', 'Near Bus Stand, Nathdwara', '', 0, 8, 3, '', '', '32.JPG', '0000-00-00', 0),
(578, 'Avani Maheshwari', 'Mr. Lalit Mundra', '', '2006-09-05', '45, Above Old Excise Office, (Raj.)', '', 0, 9, 2, '', '', 'IMG_0715.JPG', '0000-00-00', 0),
(579, 'Ayush Bohara', 'Mr. Jitendra Bohra', '', '2006-04-29', 'Balaji Kirana Store, Tehsil Road, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0716.JPG', '0000-00-00', 0),
(580, 'Bhavya Sharma', 'Mr. Lokendra Sharma', '', '2006-07-11', 'Mahadev Ji Ki Ghati, Bhimgadi, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0717.JPG', '0000-00-00', 0),
(581, 'Bhumii Bhatia', 'Mr. Anoop Kumar Bhatia', '', '2005-11-06', 'Mohangarh, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0718.JPG', '0000-00-00', 0),
(582, 'Dipesh jain', 'Mr. Pankaj Jain', '', '2005-09-18', 'Siddivinayak Appartment, Sinhad, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0719.JPG', '0000-00-00', 0),
(583, 'Diya Parikh', 'Mr. Harish Parikh', '', '2006-03-02', 'Setho Ka Paysa, Mandir Marg. Nathdwara', '', 0, 9, 2, '', '', 'IMG_0720.JPG', '0000-00-00', 0),
(584, 'Harsh Jain', 'Mr. Rajendra Jain', '', '2006-03-12', 'Aadarsh Nagar, Tehsil Road, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0721.JPG', '0000-00-00', 0),
(585, 'Harshita Chaplot', 'Mr. Nirmal Chaplot', '', '2006-04-08', 'Mahaveerpura, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0722.JPG', '0000-00-00', 0),
(586, 'Hitanshu Golani', 'Mr. Mahendra Golani', '', '2006-05-31', 'Sindhi Colony, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0723.JPG', '0000-00-00', 0),
(587, 'Ishan Bohra', 'Mr. Purushottam Bohra', '', '2005-12-14', 'Near Private Bus Stand, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0724.JPG', '0000-00-00', 0),
(588, 'Kanishk Jain', 'Mr. Rajendra Jain', '', '2006-06-26', 'Shiv Temple, Lal Baag, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0725.JPG', '0000-00-00', 0),
(589, 'Khushi Kanwar', 'Mr. Loomb Singh', '', '2006-10-03', 'Police Line, Rajnagar', '', 0, 9, 2, '', '', 'IMG_0726.JPG', '0000-00-00', 0),
(590, 'Krish Jain', 'Mr. Satish Jain', '', '2006-10-17', 'Mahaveerpura, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0727.JPG', '0000-00-00', 0),
(591, 'Kunal Lodha', 'Mr. Ujjwal Prakash Lodha', '', '2006-03-08', 'Gokul Plaza, New Road, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0728.JPG', '0000-00-00', 0),
(592, 'Kunal Meena', 'Mr. Shankar Meena', '', '2005-05-12', 'Behind Alok School, Dhoinda', '', 0, 9, 2, '', '', 'IMG_0729.JPG', '0000-00-00', 0),
(593, 'Muskan Sahu', 'Mr. Satyanarayan Sahu', '', '2006-12-05', 'Naya Bazar, Kankroli', '', 0, 9, 2, '', '', 'IMG_0730.JPG', '0000-00-00', 0),
(594, 'Nandini Soni', 'Mr. Mukesh Soni', '', '2006-04-16', 'Mohangarh Uper Ka Chowk, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0731.JPG', '0000-00-00', 0),
(595, 'Nihal Jain', 'Mr. Suresh Jain', '', '2006-07-08', 'Lal Baag, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0732.JPG', '0000-00-00', 0),
(596, 'Nishka Jain', 'Mr. Lalit Jain', '', '2006-01-26', 'Opposite Post Office, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0733.JPG', '0000-00-00', 0),
(597, 'Nitesh Kumar Meena', 'Mr. Mahendra Kumar Meena', '', '2006-07-21', 'Police Quarter ND - 1, Nathuwas, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0734.JPG', '0000-00-00', 0),
(598, 'Pawan Bhatia', 'Mr. Prakash Bhatia', '', '2006-04-13', 'Lad Parishad, Sukhadiya Nagar, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0735.JPG', '0000-00-00', 0),
(599, 'Raghvendra Paliwal', 'Mr. Komal Paliwal', '', '2006-12-17', 'Govind Chowk, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0937.JPG', '0000-00-00', 0),
(600, 'Ritika Shrimali', 'Mr. Roshan Lal Shrimali', '', '2006-03-17', 'Shrinath Colony - B, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0736.JPG', '0000-00-00', 0),
(601, 'Reetu Joshi', 'Mr. Ramesh Chandra Joshi', '', '2005-11-01', 'Nathuwas, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0737.JPG', '0000-00-00', 0),
(602, 'Rohit Paliwal', 'Mr. Vijay Paliwal', '', '2006-10-06', 'Shiv Nagar, Kotharia Road, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0738.JPG', '0000-00-00', 0),
(603, 'Sahil Bhatia', 'Mr. Prakash Bhatia', '', '2005-03-09', 'Lad Parishad, Sukhadiya Nagar, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0739.JPG', '0000-00-00', 0),
(604, 'Shreya Kumawat', 'Mr. Pravin Kumawat', '', '2006-06-25', 'Tehsil Road, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0740.JPG', '0000-00-00', 0),
(605, 'Shreya Lakhotia', 'Mr. Deepak Lakhotia', '', '2006-07-07', 'Mahadev Colony, Kankroli', '', 0, 9, 2, '', '', 'IMG_0741.JPG', '0000-00-00', 0),
(606, 'Tanmay Maheshwari', 'Mr. Rakesh Maheshwari', '', '2006-01-23', 'Lal Bazar Chowk, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0742.JPG', '0000-00-00', 0),
(607, 'Vedanti Bhatia', 'Mr. Giriraj Bhatia', '', '2006-09-13', 'Matri Shree Campus, Opposite Natthi Nagar, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0743.JPG', '0000-00-00', 0),
(608, 'Vidhan Jain', 'Mr. Sumit Jain', '', '2006-02-08', 'Aadarsh Nagar, Tehsil Road, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0744.JPG', '0000-00-00', 0),
(609, 'Vijay Purbiya', 'Mr. Bheru Lal Purbiya', '', '2005-12-26', 'Vallabhpura, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0745.JPG', '0000-00-00', 0),
(610, 'Yashasvi Gour', 'Mr. Rakesh Gour', '', '2006-05-15', 'Bhalavaton Ka Kheda, Nathdwara', '', 0, 9, 2, '', '', '40.JPG', '0000-00-00', 0),
(611, 'Yuvraj Sharma', 'Mr. Girish Sharma', '', '2006-02-21', 'Sukhadiya Nagar, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0746.JPG', '0000-00-00', 0),
(612, 'Bhuvi Surana', 'Mr. Vikas Surana', '', '2006-09-30', '301, Shree Complex Nathdwara', '', 0, 9, 2, '', '', 'IMG_0747.JPG', '0000-00-00', 0),
(613, 'Priyanshi Rathore', 'Mr. Narendra Singh Rathore', '', '2006-10-19', 'h-13, Shakti Nagar, Kankroli, Rajsamand', '', 0, 9, 2, '', '', 'IMG_0936.JPG', '0000-00-00', 0),
(614, 'Nehal Tripathi', 'Mr. Ajay Tripathi', '', '2006-08-05', 'Bicchu Mangri, Ntd.', '', 0, 9, 2, '', '', 'IMG_0748.JPG', '0000-00-00', 0),
(615, 'Raj Kumar Kabra', 'Mr. Rakesh Kumar Kabra', '', '2006-05-12', 'By Pass Road, Mahesh Nagar, Rajsamand', '', 0, 9, 2, '', '', 'IMG_0749.JPG', '0000-00-00', 0),
(616, 'Lakshya Raj Singh Rao', 'Mr. Mahendra Singh Rao', '', '2008-02-22', 'Badarda, Rajsamand', '', 0, 9, 2, '', '', 'IMG_0750.JPG', '0000-00-00', 0),
(617, 'Rishabh Vyas ', 'Mr. B. D. Vyas', '', '2006-04-15', '100 Ft. Road Rajsamand', '', 0, 9, 2, '', '', 'IMG_0751.JPG', '0000-00-00', 0),
(618, 'Pranay Gahlot', 'Mr. Hemant Gahlot', '', '2006-01-19', 'Karmachari Colony, Tehsil Road, Nathdwara', '', 0, 9, 2, '', '', 'IMG_0752.JPG', '0000-00-00', 0),
(619, 'Akshat Paliwal', 'Mr. Purnashankar Paliwal', '', '2006-10-24', 'New Road, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0753.JPG', '0000-00-00', 0),
(620, 'Anirudh Charan', 'Mr. Madhu Singh Charan', '', '2006-11-06', 'Police Line, Court Campus, Nathuwas', '', 0, 9, 1, '', '', 'IMG_0754.JPG', '0000-00-00', 0),
(621, 'Ashish Jain', 'Mr. Ratnesh Jain', '', '2005-10-17', 'Lal Bazar, Ahilya Kund, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0755.JPG', '0000-00-00', 0),
(622, 'Dhairya Mahawar', 'Mr. Jitendra Mali', '', '2006-08-07', 'Opp. Income Tax Office, Rajnagar', '', 0, 9, 1, '', '', 'IMG_0756.JPG', '0000-00-00', 0),
(623, 'Harshit Rathi', 'Mr. Govind Rathi', '', '2006-04-08', 'Nai Haveli Chowk, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0757.JPG', '0000-00-00', 0),
(624, 'Hiya Mehta', 'Mr. Anil Kumar Mehta', '', '2006-08-22', 'Bhalawato Ka Kheda, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0758.JPG', '0000-00-00', 0),
(625, 'Jay Panwar', 'Mr. Deepak Panwar', '', '2006-02-26', 'Naniji Ka Baag, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0938.JPG', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `photo_path`, `pdf_update_date`, `hold`) VALUES
(626, 'Jayshree Purohit', 'Mr. Yogesh Chandra Purohit', '', '2006-09-05', '54, Rampura, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0759.JPG', '0000-00-00', 0),
(627, 'Kanishkraj Singh Kumawat', 'Mr. Mahesh Kumar Kumawat', '', '2006-03-09', 'Kotharia Road, Lal Baag, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0760.JPG', '0000-00-00', 0),
(628, 'Kanishka Sanadhya', 'Mr. Chitresh Sanadhya', '', '2006-03-09', 'Mandir Marg, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0761.JPG', '0000-00-00', 0),
(629, 'Kartik Gurjar', 'Mr. Lokesh Gurjar', '', '2006-02-09', 'Jharna Darwaja, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0762.JPG', '0000-00-00', 0),
(630, 'Khushi Thakkar', 'Mr. Jeetendra Narayan Lal Thakkar', '', '2006-03-25', 'Sukhadia Nagar, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0763.JPG', '0000-00-00', 0),
(631, 'Kritika Gurjar', 'Mr. Lokesh Gurjar', '', '2006-02-09', 'Jharna Darwaja, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0764.JPG', '0000-00-00', 0),
(632, 'Lakshya Gurjar', 'Mr. Shailendra Gurjar', '', '2006-08-29', 'Gurjarpura, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0765.JPG', '0000-00-00', 0),
(633, 'Nikhil Somani', 'Mr. Ashok Somani', '', '2005-09-10', 'Tehsil Road, Karmchari Colony, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0767.JPG', '0000-00-00', 0),
(634, 'Pratyush Sharma', 'Mr. Sunil Kumar Sharma', '', '2007-11-09', 'Nikunj River Resort, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0768.JPG', '0000-00-00', 0),
(635, 'Priyadarshini Sisodiya', 'Mr. Shankar Sisodiya', '', '2005-10-26', 'Sukhadia Nagar, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0769.JPG', '0000-00-00', 0),
(636, 'Punit Chechani', 'Mr. Giriraj Chechani', '', '2006-01-21', 'Brajpura, Ahilya Kund, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0770.JPG', '0000-00-00', 0),
(637, 'Rishabh Singh Sankhala', 'Mr. Manohar Sankhala', '', '2005-11-28', 'Lal Baag, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0771.JPG', '0000-00-00', 0),
(638, 'Shaan Chaplot', 'Mr. Pradeep Chaplot', '', '2006-07-26', 'A 63 - Navkar, New Abadi, Asotiya, Kankroli', '', 0, 9, 1, '', '', 'IMG_0772.JPG', '0000-00-00', 0),
(639, 'Sneha Dhabhai', 'Mr. Rajendra Dhabhai', '', '2005-11-18', 'In Front Of Gandhi Sewa Sadan, Rajnagar, (Rajsamand)', '', 0, 9, 1, '', '', 'IMG_0773.JPG', '0000-00-00', 0),
(640, 'Tushar Meena', 'Mr. Nand Lal Meena', '', '2006-01-23', 'Nathuwas, Police Quarter', '', 0, 9, 1, '', '', 'IMG_0774.JPG', '0000-00-00', 0),
(641, 'Urvashi Paliwal', 'Mr. Praveen Paliwal', '', '2006-12-04', 'Gurjarpura, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0775.JPG', '0000-00-00', 0),
(642, 'Vasudev Souda', 'Mr. Om Singh Souda', '', '2006-08-28', 'Court Campus, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0776.JPG', '0000-00-00', 0),
(643, 'Vishwa Laddha', 'Mr. Rakesh Laddha', '', '2006-07-21', 'Maheshwari Mohalla, Rajnagar', '', 0, 9, 1, '', '', 'IMG_0777.JPG', '0000-00-00', 0),
(644, 'Yadu Dave', 'Mr. Lokesh Dave', '', '2005-12-30', 'Kanwa Basti, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0779.JPG', '0000-00-00', 0),
(645, 'Yashpal Singh Chundawat', 'Mr. Raghuveer Singh Chundawat', '', '2006-08-05', 'Police Line, Rajnagar', '', 0, 9, 1, '', '', 'IMG_0780.JPG', '0000-00-00', 0),
(646, 'Akshat Dashora', 'Mr. Sushil Dashora', '', '2006-10-04', 'Shanti Colony, Behind Girls Sr. Sec. School, Near Shiv Mandir, Raj.', '', 0, 9, 1, '', '', 'IMG_0781.JPG', '0000-00-00', 0),
(647, 'Nafisa Bootwala', 'Mr. Abdul Qadir Bootwala', '', '2006-02-06', 'Bohra Bazar, Ahilya Kund, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0782.JPG', '0000-00-00', 0),
(648, 'Sunidhi Tak', 'Mr. Om Prakash Tak', '', '2007-12-15', 'Langot Chauraya, Kankroli', '', 0, 9, 1, '', '', 'IMG_0783.JPG', '0000-00-00', 0),
(649, 'Kripa Soni', 'Mr. Ramesh Chandra Soni', '', '2007-09-06', '484, Sukhadia Nagar, Nathdwara', '', 0, 9, 1, '', '', 'IMG_0784.JPG', '0000-00-00', 0),
(650, 'Yuvraj Panwar', 'Mr. Badrilal Panwar', '', '2006-05-15', 'Near Kabutarkhana, Rajnagar', '', 0, 9, 1, '', '', 'IMG_0785.JPG', '0000-00-00', 0),
(651, 'Rehan Khan', 'Mr. Jakir Hussain', '', '2007-03-06', 'Raza Colony, Rajnagar', '', 0, 9, 1, '', '', 'IMG_0786.JPG', '0000-00-00', 0),
(652, 'Aditya Paliwal', 'Mr. Dinesh Paliwal', '', '2005-04-10', 'Jal Chakki Road, Kankroli', '', 0, 10, 2, '', '', 'IMG_0787.JPG', '0000-00-00', 0),
(653, 'Aditya Sharma', 'Mr. Ganpat Lal Sharma', '', '2004-08-09', 'Friends Colony, Lal Bagh, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0788.JPG', '0000-00-00', 0),
(654, 'Chitra Soni', 'Mr. Rajesh Soni', '', '2005-12-11', 'Gokul Nagar, Lal Baag, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0789.JPG', '0000-00-00', 0),
(655, 'Dakshh Tripathi', 'Mr. Bharat Kumar Tripathi', '', '2005-11-11', 'Panchratna Complex, Kankroli', '', 0, 10, 2, '', '', 'IMG_0790.JPG', '0000-00-00', 0),
(656, 'Dakshta Tripathi', 'Mr. Bharat Kumar Tripathi', '', '2005-11-11', 'Panchratna Complex, Kankroli', '', 0, 10, 2, '', '', 'IMG_0791.JPG', '0000-00-00', 0),
(657, 'Divyanshi Verma', 'Mr. Krishan Gopal Verma', '', '2005-08-22', 'Narayan Chowk, Sukhadia Nagar, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0792.JPG', '0000-00-00', 0),
(658, 'Himanshi Sanadhya', 'Mr. Gopesh Sanadhya', '', '2005-08-05', 'Opp. Sundar Vilas, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0793.JPG', '0000-00-00', 0),
(659, 'Ishita Sanadhya', 'Mr. Praveen Sanadhya', '', '2005-07-02', 'Rawton Ka Darwaja, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0794.JPG', '0000-00-00', 0),
(660, 'Jeenal Bolia', 'Mr. Kiran Kumar Bolia', '', '2005-08-18', 'Mukhar ji Chouraha, Kankroli', '', 0, 10, 2, '', '', 'IMG_0795.JPG', '0000-00-00', 0),
(661, 'Kalindi Dave', 'Mr. Lokesh Dave', '', '2004-11-29', 'Kanva Basti, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0796.JPG', '0000-00-00', 0),
(662, 'Kashish Agrawal', 'Mr. Vijay Kumar Agrawal', '', '2005-06-08', 'J. III - I, Court Campus, Nathuwas, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0797.JPG', '0000-00-00', 0),
(663, 'Kavya Sharma', 'Mr. Suresh Kumar Sharma', '', '2005-04-15', 'Jawahar Navodaya Vidyalaya, (Rajsamand)', '', 0, 10, 2, '', '', 'IMG_0799.JPG', '0000-00-00', 0),
(664, 'Laksh Ameta', 'Mr. Om Prakash Ameta', '', '2006-07-18', 'Panchratna Complex, Kankroli', '', 0, 10, 2, '', '', 'IMG_0800.JPG', '0000-00-00', 0),
(665, 'Manan Bhutra', 'Mr. Sunil Maheshwari', '', '2006-01-17', 'Meera Nagar, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0801.JPG', '0000-00-00', 0),
(666, 'Manisha Kunwar Chundawat', 'Mr. Vijay Singh Chundawat', '', '2005-01-28', 'Narayan Chowk, Sukhadia Nagar, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0802.JPG', '0000-00-00', 0),
(667, 'Manisha Jangid', 'Mr. Hari Ram Jangid', '', '2005-01-03', 'Nai Haveli School, Rawton Ka Darwaja, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0803.JPG', '0000-00-00', 0),
(668, 'Mayank Kumath', 'Mr. Samarth Kumath', '', '2005-09-02', 'Karmchari Colony, Tehsil Road, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0804.JPG', '0000-00-00', 0),
(669, 'Milan Bhatia', 'Mr. Bharat Bhatia', '', '2004-12-26', 'Mohangarh, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0805.JPG', '0000-00-00', 0),
(670, 'Navya Mahakali', 'Mr. Pradeep Mahakali', '', '2005-01-08', 'Sukhadia Nagar, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0806.JPG', '0000-00-00', 0),
(671, 'Nehal Sharma', 'Mr. Vijay Sharma', '', '2005-05-24', 'Bagarwada, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0807.JPG', '0000-00-00', 0),
(672, 'Nilaksh Raj Chouhan', 'Mr. Madan Singh Chouhan', '', '2004-12-10', 'Karjiya Ghati, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0808.JPG', '0000-00-00', 0),
(673, 'Samiksha Lakhara', 'Mr. Mangi Lal Lakhara', '', '2005-08-20', 'Ahilya Kund, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0809.JPG', '0000-00-00', 0),
(674, 'Shahi Nagar', 'Mr. Shubham Nagar', '', '2004-11-20', 'Flat No. - 202, B - Wing, Vardhman Complex, Nai Road, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0810.JPG', '0000-00-00', 0),
(675, 'Shivam Rathi', 'Mr. Pankaj Rathi', '', '2005-11-12', 'Nai Haveli Chowk, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0812.JPG', '0000-00-00', 0),
(676, 'Sneha Chundawat', 'Mr. Raghuveer Singh Chundawat', '', '2005-01-26', 'Police Line, Rajsamand', '', 0, 10, 2, '', '', 'IMG_0814.JPG', '0000-00-00', 0),
(677, 'Sumbul Fatima', 'Mr. Firoj Khan', '', '2005-10-06', 'Mohangarh, Nichla Chowk, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0815.JPG', '0000-00-00', 0),
(678, 'Tanisha Pipada', 'Mr. Deepak Pipada', '', '2005-10-07', 'Nai Abaadi, Kankroli', '', 0, 10, 2, '', '', 'IMG_0816.JPG', '0000-00-00', 0),
(679, 'Tisha Tak', 'Mr. Kishan Tak', '', '2006-12-11', '100ft. Road, Dev Heritage, Rajnagar', '', 0, 10, 2, '', '', 'IMG_0818.JPG', '0000-00-00', 0),
(680, 'Charvi Pareek', 'Mr. Manoj Pareek', '', '2005-02-14', 'Panchratna Complex, Kankroli', '', 0, 10, 2, '', '', 'IMG_0819.JPG', '0000-00-00', 0),
(681, 'Dinesh Jangid', 'Mr. kana Ram Jangid', '', '2004-02-09', 'Rawton Ka Darwaja, Nathdwara', '', 0, 10, 2, '', '', 'IMG_0820.JPG', '0000-00-00', 0),
(682, 'Kanishk Tak', 'Mr. Kanhaiya Lal Tak', '', '2005-02-20', 'Near Ramdev Tample', '', 0, 10, 2, '', '', 'IMG_0821.JPG', '0000-00-00', 0),
(683, 'Sanidhya Mandhana', 'Mr. Naresh Mandhana', '', '2005-11-22', '100 Ft. Road, Kankroli', '', 0, 10, 2, '', '', '31.JPG', '0000-00-00', 0),
(684, 'Katyayni Sharma', 'Mr. Yogesh Sharma', '', '2005-03-08', 'Kumarwada, Giriraj Darshan Complex', '', 0, 10, 2, '', '', 'IMG_0822.JPG', '0000-00-00', 0),
(685, 'Jatin Joshi', 'Mr. Purnashankar Joshi', '', '2005-03-07', 'Bijlai, Lal Baag, Nathdwara', '', 0, 10, 1, '', '', '26.JPG', '0000-00-00', 0),
(686, 'Aarya Sanchihar', 'Mr. Surya Prakash Sanchihar', '', '2005-12-12', 'Dhora Mohalla, Kankroli', '', 0, 10, 1, '', '', 'IMG_0824.JPG', '0000-00-00', 0),
(687, 'Aishwary Kumawat', 'Mr. Devendra Kumawat', '', '2005-03-16', 'Fouz Mohalla, Nathdwara', '', 0, 10, 1, '', '', 'IMG_1058.JPG', '0000-00-00', 0),
(688, 'Aksh Vijay Vargiya', 'Mr. Vinod Vijayvargiya', '', '2005-08-20', 'Radhika Hospital, Kankroli', '', 0, 10, 1, '', '', 'IMG_0825.JPG', '0000-00-00', 0),
(689, 'Anjali Parikh', 'Mr. Kalpesh Parikh', '', '2005-03-15', 'Setho Ka Payasa, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0826.JPG', '0000-00-00', 0),
(690, 'Ansh Joshi', 'Mr. Suresh Joshi', '', '2005-03-15', 'Sindhi Colony, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0827.JPG', '0000-00-00', 0),
(691, 'Chirag Singh', 'Mr. Ganshyam Singh ', '', '2005-08-17', 'Sinhad, Maruti Complex, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0828.JPG', '0000-00-00', 0),
(692, 'Devang Bhatia', 'Mr. Girish Bhatia', '', '2004-10-27', 'Gokuldham Socity, Nathdwara', '', 0, 10, 1, '', '', '29.JPG', '0000-00-00', 0),
(693, 'Dhruv Vijayvargiya', 'Mr. Naresh Vijayvargiya', '', '2005-07-21', 'Behind Sindhi Colony, Nathdwara', '', 0, 10, 1, '', '', '30.JPG', '0000-00-00', 0),
(694, 'Dirgh Upadhyay', 'Mr. Pushpraj Upadhyay', '', '2005-08-21', '186, Shanti Colony, Kankroli', '', 0, 10, 1, '', '', 'IMG_0829.JPG', '0000-00-00', 0),
(695, 'Dishant Jain', 'Mr. Himmat Jain', '', '2005-04-07', 'Govindpura Road, Nathdwara', '', 0, 10, 1, '', '', 'IMG_1059.JPG', '0000-00-00', 0),
(696, 'Hardik Jain', 'Mr. Vinod Jain', '', '2005-03-20', 'Mahaveerpura, Nathdwara', '', 0, 10, 1, '', '', '28.JPG', '0000-00-00', 0),
(697, 'Harshita Choudhary', 'Mr. Vijay Choudhary', '', '2004-12-01', 'Nai Haweli School, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0830.JPG', '0000-00-00', 0),
(698, 'Jhanvi Lavti', 'Mr. Dinesh Chandra Lavti', '', '2005-10-12', 'Sukhadia Nagar, Park Road, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0831.JPG', '0000-00-00', 0),
(699, 'Kavya Khichi', 'Mr. Suresh Khichi', '', '2005-03-18', 'Behind HDFC Bank, Mahaveer Nagar, Kankroli', '', 0, 10, 1, '', '', 'IMG_1060.JPG', '0000-00-00', 0),
(700, 'Keona Daglia', 'Mr. Kapil Kumar Daglia', '', '2005-09-25', 'Mahaveerpura, Nathdwara', '', 0, 10, 1, '', '', 'IMG_1061.JPG', '0000-00-00', 0),
(701, 'Lakshya Dave', 'Mr. Bhuvaneshwar Dave', '', '2005-05-07', 'Bhalawato Ka Kheda, Lal Baag, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0832.JPG', '0000-00-00', 0),
(702, 'Manthan Rathi', 'Mr. Lokesh Rathi', '', '2005-09-30', 'Lal Baag, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0833.JPG', '0000-00-00', 0),
(703, 'Mudit Paliwal', 'Mr. Kapil Paliwal', '', '2005-07-11', 'Rampura, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0834.JPG', '0000-00-00', 0),
(704, 'Nakul Nandwana', 'Mr. Dinesh Chandra Nandwana', '', '2005-03-31', 'Manushyam, Shastri Nagar, Kankroli', '', 0, 10, 1, '', '', 'IMG_0835.JPG', '0000-00-00', 0),
(705, 'Nishtha Jain', 'Mr. Dharmesh Jain', '', '2005-12-02', '20/29, Adarsh Nagar, Nathdwara', '', 0, 10, 1, '', '', 'IMG_1062.JPG', '0000-00-00', 0),
(706, 'Parv Goyal', 'Mr. Rakesh Goyal', '', '2005-01-04', 'Behind Kawadiya Hospital, 100ft. Road, Kankroli', '', 0, 10, 1, '', '', '', '0000-00-00', 0),
(707, 'Priya Soni', 'Mr. Dharmendra Soni', '', '2005-04-22', 'Friends Colony, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0836.JPG', '0000-00-00', 0),
(708, 'Rajat Soni', 'Mr. Mukesh Soni', '', '2005-06-15', 'Mohangarh, Uper Ka Chowk, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0837.JPG', '0000-00-00', 0),
(709, 'Ridhima Goyal', 'Mr. Rakesh Goyal', '', '2005-01-04', 'Behind Kawadiya Hospital, 100ft. Road, Kankroli', '', 0, 10, 1, '', '', '27.JPG', '0000-00-00', 0),
(710, 'Sampurn Laddha', 'Mr. Madhu Prakash Laddha', '', '2005-10-24', 'Matra Shree'', 100ft. Road, Rajnagar, (Raj.)', '', 0, 10, 1, '', '', 'IMG_0838.JPG', '0000-00-00', 0),
(711, 'Sanskar Panwar', 'Mr. Neeraj Kumar Panwar', '', '2004-12-17', 'Nav Bahar Colony, J.K. Turn, Kankroli', '', 0, 10, 1, '', '', 'IMG_1063.JPG', '0000-00-00', 0),
(712, 'Shubhi Sanadhya', 'Mr. Naresh Chandra Sanadhya', '', '2004-12-27', 'Bus Stand, Nathdwara', '', 0, 10, 1, '', '', 'IMG_1064.JPG', '0000-00-00', 0),
(713, 'Sneha Girnara', 'Mr. Sanjay Girnara', '', '2004-08-02', 'Badlawala Chowk, Nathdwara', '', 0, 10, 1, '', '', 'IMG_1065.JPG', '0000-00-00', 0),
(714, 'Sneha Mehta', 'Mr. Arun Mehta', '', '2006-02-23', 'Behind SBI Bank, Jal Chakki, Kankroli', '', 0, 10, 1, '', '', 'IMG_0839.JPG', '0000-00-00', 0),
(715, 'Lakshya Kabra', 'Mr. Hemant Kabra', '', '2005-11-30', 'Near Anand Takies, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0840.JPG', '0000-00-00', 0),
(716, 'Madhur Bhatia', 'Mr. Bharat Bhatia', '', '2004-12-26', 'Mohangarh, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0841.JPG', '0000-00-00', 0),
(717, 'Himanshu Bishnoi', 'Mr. Rajesh Kumar Poonia', '', '2005-06-15', 'Nandwanawas , Rajnagar', '', 0, 10, 1, '', '', 'IMG_0842.JPG', '0000-00-00', 0),
(718, 'Abhinav Swami', 'Mr. Jai Singh', '', '2006-07-19', 'Nandwanawas , Rajnagar', '', 0, 10, 1, '', '', 'IMG_0843.JPG', '0000-00-00', 0),
(719, 'Krishna Kunwar Rao', 'Mr. Chatur Singh Rao', '', '2006-12-16', 'Dewana', '', 0, 10, 1, '', '', 'IMG_0844.JPG', '0000-00-00', 0),
(720, 'Chetany Singhal', 'Mr. Manoj Kumar Gupta', '', '2004-12-21', 'Housing Board Dwarika Nagar', '', 0, 10, 1, '', '', 'IMG_1066.JPG', '0000-00-00', 0),
(721, 'Rahul Soni', 'Mr. Rambabu Soni', '', '2004-11-10', 'Talio ka Talab, Govind Nagar, Nathdwara', '', 0, 10, 1, '', '', 'IMG_0845.JPG', '0000-00-00', 0),
(722, 'Mehul Paliwal', 'Mr. Laxmi Lal Paliwal', '', '2004-03-06', '100 ft. Shri Ram Nagar', '', 0, 10, 1, '', '', 'IMG_0846.JPG', '0000-00-00', 0),
(723, 'Yogya Tripathi', 'Mr. Narayan Sharma', '', '2006-12-02', 'Shri Ji Vihar, Near Suncity', '', 0, 10, 1, '', '', 'IMG_0847.JPG', '0000-00-00', 0),
(724, 'Aayush Laddha', 'Mr. Sampat Lal Laddha', '', '2000-05-08', '100ft. Road, Pratap Chouraha, Rajsamand', '', 0, 15, 5, '', '', 'IMG_0282.JPG', '0000-00-00', 0),
(725, 'Ankita Soni', 'Mr. Anand Kumar Soni', '', '2000-12-02', 'Tehsil Road, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0292.JPG', '0000-00-00', 0),
(726, 'Arpan Sodani', 'Mr. Shankar Lal Sodani', '', '2000-07-19', 'Anand Nagar, Kothariya Road, Lalbagh, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0929.JPG', '0000-00-00', 0),
(727, 'Ayush Ameta', 'Mr. Dasharath Chandra Ameta', '', '2001-11-28', 'Panchratna Complex, Raj.', '', 0, 15, 5, '', '', 'IMG_0291.JPG', '0000-00-00', 0),
(728, 'Chesta Joshi', 'Mr. Deepak Joshi', '', '2000-10-13', 'Jat Khidki, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0295.JPG', '0000-00-00', 0),
(729, 'Dheeraj Maheshwari', 'Mr. Dinesh Chandra Maheshwari', '', '2000-04-25', 'Lal Baag, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0278.JPG', '0000-00-00', 0),
(730, 'Divyansh Madrecha', 'Mr. Vinod Madrecha', '', '2000-08-18', 'Old Bus Stand, Khatri Mohalla, Raj.', '', 0, 15, 5, '', '', 'IMG_0284.JPG', '0000-00-00', 0),
(731, 'Garima Chechani', 'Mr. Giriraj Chechani', '', '2000-03-31', 'Brajpura, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0298.JPG', '0000-00-00', 0),
(732, 'Gaurav Kumawat', 'Mr. Kishan Lal Kumawat', '', '1999-11-16', 'New Bus Stand, Kankroli', '', 0, 15, 5, '', '', 'IMG_0279.JPG', '0000-00-00', 0),
(733, 'Khushi Sharma', 'Mr. Prafful Kumar Sharma', '', '2000-07-29', 'Lodha Ghati, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0939.JPG', '0000-00-00', 0),
(734, 'Madhav Somani', 'Mr. Hemant Somani', '', '2000-09-14', 'Naniji Ka Baag, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0290.JPG', '0000-00-00', 0),
(735, 'Mansi Garg', 'Mr. Narendra Garg', '', '2000-08-29', 'C3, Alankar residence, 100 ft Road, Kankroli', '', 0, 15, 5, '', '', 'IMG_0300.JPG', '0000-00-00', 0),
(736, 'Mudita Nagori', 'Mr. Jitendra Nagori', '', '2000-12-16', 'New Road, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0303.JPG', '0000-00-00', 0),
(737, 'Muskan Soni', 'Mr. Jitendra Soni', '', '2001-08-28', 'Gurjarpura, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0304.JPG', '0000-00-00', 0),
(738, 'Nandani Jagetiya', 'Mr. Anil Jagetiya', '', '2000-10-20', 'Balaji Nagar, Kankroli', '', 0, 15, 5, '', '', 'IMG_0312.JPG', '0000-00-00', 0),
(739, 'Nikhil Sharma', 'Mr. Amba Lal Sharma', '', '2000-01-03', 'Annapurna Niwas, Shiv Colony, Jal Chakki, Rajsamand', '', 0, 15, 5, '', '', 'IMG_0288.JPG', '0000-00-00', 0),
(740, 'Nitesh Suthar', 'Mr. Kamla Shankar Suthar', '', '1999-11-09', 'Bus Stand, Upli Oden', '', 0, 15, 5, '', '', 'IMG_0289.JPG', '0000-00-00', 0),
(741, 'Prachi Lakhotia', 'Mr. Manoj Lakhotia', '', '2000-08-31', 'Brijpura, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0311.JPG', '0000-00-00', 0),
(742, 'Ranjana Chandel', 'Mr. Babu Lal Chandel', '', '2000-10-12', 'Ambika Chowk Mohalla, Jal Chakki Chouraha, Kankroli', '', 0, 15, 5, '', '', 'IMG_0293.JPG', '0000-00-00', 0),
(743, 'Riya Bhatia', 'Mr. Shailendra Bhatia', '', '2000-06-14', 'Mohangarh, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0297.JPG', '0000-00-00', 0),
(744, 'Rohit Lakhotiya', 'Mr. Shyam Sunder Lakhotiya', '', '2000-01-01', 'Naniji Ka Baag, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0280.JPG', '0000-00-00', 0),
(745, 'Saloni Bagrecha', 'Mr. Rajesh Bagrecha', '', '2000-07-11', 'Lal Bagh, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0306.JPG', '0000-00-00', 0),
(746, 'Shivani Kumawat', 'Mr. Prakash Chandra Kumawat', '', '2000-03-05', 'Sanwar, Rajsamand', '', 0, 15, 5, '', '', 'IMG_0310.JPG', '0000-00-00', 0),
(747, 'Shreya Porwal', 'Mr. Vikram Porwal', '', '1999-08-27', 'Brijpura, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0309.JPG', '0000-00-00', 0),
(748, 'Shrim Sharma', 'Mr. Jitendra Sanadhya', '', '1999-07-03', 'Shriji Vihar Collony, Bhalawanto Ka Kheda, R.T.D.C. Road, Lal Baag, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0301.JPG', '0000-00-00', 0),
(749, 'Shweta Paliwal', 'Mr. Mohan Paliwal', '', '2000-04-03', 'Housing Board, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0307.JPG', '0000-00-00', 0),
(750, 'Siya Paliwal', 'Mr. Satyanarayan Paliwal', '', '2000-04-02', 'Kirtanya Ghati, Behind Temple, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0296.JPG', '0000-00-00', 0),
(751, 'Sonal Joshi', 'Mr. Satyendra Prakash Joshi', '', '2000-07-10', 'Kasara Gali, Bada Bazar, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0308.JPG', '0000-00-00', 0),
(752, 'Swapnil Mehta', 'Mr. Prakash Chandra Mehta', '', '2000-09-10', 'In Front Of G.S.S., Kankroli', '', 0, 15, 5, '', '', 'IMG_0285.JPG', '0000-00-00', 0),
(753, 'Vidhi Laddha', 'Mr. Kamlesh Laddha', '', '2000-09-17', 'Pratap Chouraha, Rajsamand', '', 0, 15, 5, '', '', 'IMG_0313.JPG', '0000-00-00', 0),
(754, 'Chhavi Gurjar', 'Mr. Vishnu Kumar Gurjar', '', '2001-01-03', 'Pipli Chowk, Near Nathuwas Chauraha, Nathdwara', '', 0, 15, 5, '', '', 'IMG_0305.JPG', '0000-00-00', 0),
(755, 'Anshul Mehta', 'Mr. Alok Mehta', '', '2001-08-22', 'Panchratna Complex, Near Grafic School, Kankroli', '', 0, 15, 5, '', '', 'IMG_0294.JPG', '0000-00-00', 0),
(756, 'Amisha Lodha', 'Mr. Natwar Lal Lodha', '', '2000-11-10', 'Ganesh Nagar, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0865.JPG', '0000-00-00', 0),
(757, 'Chirag Agrawal', 'Mr. Rakesh Agrawal', '', '1999-12-17', 'Sundar Colony, Kankroli', '', 0, 15, 4, '', '', 'IMG_0866.JPG', '0000-00-00', 0),
(758, 'Dishita Surana', 'Mr. Sunil Surana', '', '2000-05-01', 'Nakoda Nagar, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0867.JPG', '0000-00-00', 0),
(759, 'Jay Sanadhya', 'Mr. Harish Kumar Sanadhya', '', '2001-05-14', 'Nakoda Nagar, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0869.JPG', '0000-00-00', 0),
(760, 'Karan Singh Asoliya', 'Mr. Chandan Singh Asoliya', '', '2001-08-25', 'J.K. Circle, Kankroli', '', 0, 15, 4, '', '', 'IMG_0871.JPG', '0000-00-00', 0),
(761, 'Keshav Purohit', 'Mr. Chandra Shekhar Purohit', '', '2000-06-04', 'Gurjarpura, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0874.JPG', '0000-00-00', 0),
(762, 'Khushi Lodha', 'Late Mr. Amit Lodha', '', '2001-03-31', 'Lodha Ghati, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0873.JPG', '0000-00-00', 0),
(763, 'Lavish Kothari', 'Mr. Dinesh Kothari', '', '1999-08-05', 'Ahilya Kund, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0872.JPG', '0000-00-00', 0),
(764, 'Naman Gokharu', 'Mr. Jeetendra Kumar Gokharu', '', '2001-07-30', 'Pancharatna Complex, Kankroli', '', 0, 15, 4, '', '', 'IMG_0875.JPG', '0000-00-00', 0),
(765, 'Nihir Sanadhya', 'Mr. Lavnesh Kumar Sanadhya', '', '2001-04-11', 'Nai Haveli Chowk, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0876.JPG', '0000-00-00', 0),
(766, 'Nitesh Rathore', 'Mr. Jogendra Rathore', '', '2000-04-24', '404- Block 2, Krishna residency , Nathdwara', '', 0, 15, 4, '', '', 'IMG_0877.JPG', '0000-00-00', 0),
(767, 'Paritosh Sanadhya', 'Mr. Kapil Sanadhya', '', '2000-12-19', 'Choudhary Petrol Pump, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0878.JPG', '0000-00-00', 0),
(768, 'Rishi Kumawat', 'Mr. Ganesh Lal Kumawat', '', '2001-01-18', 'Mohangarh, Nathdwara', '', 0, 15, 4, '', '', '38.JPG', '0000-00-00', 0),
(769, 'Ritesh Sharma', 'Mr. Anil Kumar Sharma', '', '1999-04-03', 'Shanti Colony, Kankroli', '', 0, 15, 4, '', '', 'IMG_0881.JPG', '0000-00-00', 0),
(770, 'Ritik Kumawat', 'Mr. Ghanshyam Kumawat', '', '2001-04-11', 'Fauz Mohalla, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0880.JPG', '0000-00-00', 0),
(771, 'Sejal Surana', 'Mr. Ravindra Surana', '', '2000-03-06', 'RTDC Road, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0879.JPG', '0000-00-00', 0),
(772, 'Siddharth Kabra', 'Mr. Rajesh Kumar Kabra', '', '2000-05-21', 'Nani Ji Ka Bhag, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0882.JPG', '0000-00-00', 0),
(773, 'Vaibhav Purohit', 'Mr. Jagdish Chandra Purohit', '', '1999-10-01', 'Gurjarpura, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0883.JPG', '0000-00-00', 0),
(774, 'Vijaya Bohra', 'Mr. Purushottam Bohra', '', '2000-11-13', 'Tehsil Road, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0870.JPG', '0000-00-00', 0),
(775, 'Arpit Birla', 'Mr. Kedarmal Birla', '', '2000-03-09', 'Birla Mandir, 100ft. Road, Kankroli', '', 0, 15, 4, '', '', 'IMG_0885.JPG', '0000-00-00', 0),
(776, 'Udit Hinger', 'Mr. Bheru Lal Hinger', '', '2000-05-23', 'Dev Rachna'' Hinger Medical Nr. K.N. Hospital, Kankroli', '', 0, 15, 4, '', '', 'IMG_0884.JPG', '0000-00-00', 0),
(777, 'Vaibhav Singh Charan', 'Mr. Narayan Singh', '', '2001-08-07', 'Kumbha Nagar, Shankarpura, Near R.K. Hospital, Kankroli', '', 0, 15, 4, '', '', 'IMG_0886.JPG', '0000-00-00', 0),
(778, 'Purushottam Singh Chundawat', 'Mr. Rajendra Singh', '', '2000-10-08', 'D - 23, Dwarika Nagar, Housing Board, Kankroli', '', 0, 15, 4, '', '', 'IMG_0888.JPG', '0000-00-00', 0),
(779, 'Raghunandan Singh', 'Mr. Govind Singh', '', '2000-09-13', 'Near Graphic School, Panch Ratna Complex, H.No. P - 30, Kankroli', '', 0, 15, 4, '', '', 'IMG_0868.JPG', '0000-00-00', 0),
(780, 'Yuvraj Singh Rathore', 'Mr. Abhay Singh', '', '2000-05-29', 'Anand Nagar, Nathdwara', '', 0, 15, 4, '', '', 'IMG_0889.JPG', '0000-00-00', 0),
(781, 'Krishan Pal Singh Chouhan', 'Mr. Bhim Singh Chouhan', '', '1998-07-22', 'Village - Kuncholi, Teh. - Nathdwara', '', 0, 15, 4, '', '', 'IMG_0887.JPG', '0000-00-00', 0),
(782, 'Aayush Jain', 'Mr. Dinesh Chandra Jain', '', '2001-03-27', 'Mahaveerpura, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1050.JPG', '0000-00-00', 0),
(783, 'Aishwarya Bhatia', 'Mr. Paresh Bhatia', '', '2001-04-25', 'Bicchu Mangri, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1038.JPG', '0000-00-00', 0),
(784, 'Anchal Joshi ', 'Mr. Suresh Joshi', '', '2001-11-11', 'Sindhi Colony, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1041.JPG', '0000-00-00', 0),
(785, 'Bharat Soni', 'Mr. Tilkesh Soni', '', '2001-10-20', 'Doctor''s Colony, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1053.JPG', '0000-00-00', 0),
(786, 'Bhavika Sanchihar', 'Mr. Girish Sanchihar', '', '2001-02-18', 'Mohangarh, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1039.JPG', '0000-00-00', 0),
(787, 'Chirag Mehta', 'Mr. Prakash Mehta', '', '2001-12-25', 'Near Gandhi Seva Sadan, Raj.', '', 0, 14, 5, '', '', 'IMG_1049.JPG', '0000-00-00', 0),
(788, 'Hardik Jain', 'Mr. Devendra Jain', '', '2002-01-02', 'Shreenath Colony - B, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1051.JPG', '0000-00-00', 0),
(789, 'Jagriti Somani', 'Mr. Ashok Somani ', '', '2001-10-23', 'Sinhad, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1044.JPG', '0000-00-00', 0),
(790, 'Kanishk Bagora', 'Mr. Deepak Bagora', '', '2001-09-11', 'Mohangarh, Nathdwara', '', 0, 14, 5, '', '', '17.JPG', '0000-00-00', 0),
(791, 'Khetaram Suthar', 'Mr. Hariram Suthar', '', '2000-10-20', 'Kumharwada, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1054.JPG', '0000-00-00', 0),
(792, 'Khushbu Rathore', 'Mr. Kalyan Singh Rathore', '', '2001-01-24', 'Sunder Colony, Raj.', '', 0, 14, 5, '', '', 'IMG_1048.JPG', '0000-00-00', 0),
(793, 'Madhuri Kumawat', 'Mr. Deepak Kumawat', '', '2001-10-14', 'Tehsil Road, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1036.JPG', '0000-00-00', 0),
(794, 'Manisha Dadheech', 'Mr. Mahesh Sharma', '', '2001-04-18', 'Sundar Colony, Kankroli', '', 0, 14, 5, '', '', 'IMG_1046.JPG', '0000-00-00', 0),
(795, 'Mayank Parikh', 'Mr. Krishnakant Parikh', '', '2001-12-06', 'New Road, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1056.JPG', '0000-00-00', 0),
(796, 'Mayank Sharma', 'Mr. Hari Prasad Sharma', '', '2001-03-10', 'Sinhad, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1055.JPG', '0000-00-00', 0),
(797, 'Muskan Soni', 'Mr. Madhusudan Soni', '', '2002-08-20', 'Vallabhpura, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1042.JPG', '0000-00-00', 0),
(798, 'Prateek Chechani', 'Mr. Shyam Chechani', '', '2001-09-18', 'Brijpura, Nathdwara', '', 0, 14, 5, '', '', '18.JPG', '0000-00-00', 0),
(799, 'Suhani Surana', 'Mr. Abhay Surana', '', '2002-03-13', 'Shreenath Colony - B, Nathdwara', '', 0, 14, 5, '', '', '23.JPG', '0000-00-00', 0),
(800, 'Vidhi Gurjar', 'Mr. Yogesh Gurjar', '', '2001-11-03', 'Gurjarpura, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1043.JPG', '0000-00-00', 0),
(801, 'Vinita Paliwal', 'Mr. Mohan Krishna Paliwal', '', '2001-11-03', 'Bijlai, Nathdwara', '', 0, 14, 5, '', '', '19.JPG', '0000-00-00', 0),
(802, 'Vishal Paliwal', 'Mr. Mohan Paliwal', '', '2001-09-11', 'Govind Nagar, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1052.JPG', '0000-00-00', 0),
(803, 'Kushagra Sharma', 'Mr. Mahesh Sharma', '', '2000-06-20', 'Sukhadia Nagar, Nathdwara', '', 0, 14, 5, '', '', 'IMG_1035.JPG', '0000-00-00', 0),
(804, 'Simran Khan', 'Mr. Barkhat Khan', '', '2000-02-22', 'Nathuwas, Court Nathdwara', '', 0, 14, 5, '', '', 'IMG_1037.JPG', '0000-00-00', 0),
(805, 'Harshita Kothari', 'Mr. Mahendra Kothari', '', '2002-03-07', 'Sunder Colony, Kankroli', '', 0, 14, 5, '', '', 'IMG_1047.JPG', '0000-00-00', 0),
(806, 'Rohit Soni', 'Mr. Manohar Lal Soni', '', '2001-02-13', 'Bada Pada, Dani Chabutra, Rajnagar ', '', 0, 14, 5, '', '', 'IMG_1057.JPG', '0000-00-00', 0),
(807, 'Rhitika Jain', 'Mr. Anil Jain', '', '2002-04-27', 'Anil Nikunj, Near Private Bus Stand, Nathdwara', '', 0, 14, 5, '', '', '20.JPG', '0000-00-00', 0),
(808, 'Neha Suthar', 'Mr. Radhakrishan Suthar', '', '2000-10-03', 'Maja, Bhadela', '', 0, 14, 5, '', '', '21.JPG', '0000-00-00', 0),
(809, 'Vishnu Vaishnav', 'Mr. Suresh Vaishnav', '', '2000-06-08', 'Gugali', '', 0, 14, 5, '', '', '22.JPG', '0000-00-00', 0),
(810, 'Akhil Joshi', 'Mr. Prahaladnarayan Joshi', '', '2002-06-10', 'Village Dipty, Raj.', '', 0, 14, 4, '', '', 'IMG_0891.JPG', '0000-00-00', 0),
(811, 'Amritpreet Arora', 'Mr. Taranbeer Arora', '', '2001-06-30', 'Subhash Nagar, Rajsamand', '', 0, 14, 4, '', '', 'IMG_0909.JPG', '0000-00-00', 0),
(812, 'Anchal Joshi ', 'Mr. Harinarayan Joshi', '', '2002-11-20', 'Village Dipty, Raj.', '', 0, 14, 4, '', '', 'IMG_0890.JPG', '0000-00-00', 0),
(813, 'Avani Tripathi', 'Mr. Chaitnya Tripathi', '', '2002-03-26', 'Sukhadiya Nagar, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0896.JPG', '0000-00-00', 0),
(814, 'Chirag Jain', 'Mr. Mahendra Jain', '', '2001-06-14', 'Fauz Mohalla, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0910.JPG', '0000-00-00', 0),
(815, 'Chanchal Kothari', 'Mr. Dilip Kothari', '', '2003-01-10', 'Tehsil Road, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0904.JPG', '0000-00-00', 0),
(816, 'Dhruvpal Singh Choudhary', 'Mr. Yogesh Choudhary', '', '2002-05-14', 'Rawaton Ka Darwaja, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0913.JPG', '0000-00-00', 0),
(817, 'Divyansh Sharma', 'Mr. Rakesh Sharma', '', '2001-07-12', 'Sukhadia Nagar, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0923.JPG', '0000-00-00', 0),
(818, 'Harsiddhi Dave', 'Mr. Chandraprakash Dave', '', '2000-07-03', 'Ankur Bed College Road, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0892.JPG', '0000-00-00', 0),
(819, 'Jinal Parihar', 'Mr. Prahlad Rai Jeengar', '', '2001-09-26', 'Subhash Nagar, Rajsamand', '', 0, 14, 4, '', '', 'IMG_0905.JPG', '0000-00-00', 0),
(820, 'Kanika Agrawal', 'Mr. Mukesh Agrawal', '', '2002-10-26', 'Suncity, Raj.', '', 0, 14, 4, '', '', 'IMG_0900.JPG', '0000-00-00', 0),
(821, 'Kanika Pal', 'Mr. Surendra Pal', '', '2001-06-21', 'Krishna Nagar, Raj.', '', 0, 14, 4, '', '', 'IMG_0942.JPG', '0000-00-00', 0),
(822, 'Kuldeep Paliwal', 'Mr. Babu Lal Paliwal', '', '2002-08-06', 'Village Dipty, Raj.', '', 0, 14, 4, '', '', 'IMG_0914.JPG', '0000-00-00', 0),
(823, 'Mansi Gupta', 'Mr. Vishal Gupta', '', '2002-02-09', 'Lalbagh, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0898.JPG', '0000-00-00', 0),
(824, 'Pranjal Sanadhya', 'Mr. Rajesh Sanadhya', '', '2002-03-28', 'Sukhadiya Nagar, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0894.JPG', '0000-00-00', 0),
(825, 'Pritesh Singh Lodha', 'Mr. Ramswroop Singh Lodha', '', '2001-12-09', 'Lodha Ghati, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0921.JPG', '0000-00-00', 0),
(826, 'Priyal Kumawat', 'Mr. Suresh Kumawat', '', '2002-04-20', 'Fouj Mohalla, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0902.JPG', '0000-00-00', 0),
(827, 'Raghav Mandowara', 'Mr. Dilip Mandowara', '', '2001-11-14', 'Sindhi Colony, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0925.JPG', '0000-00-00', 0),
(828, 'Raman Jeengar', 'Mr. Mukesh Jeengar', '', '2002-05-24', 'Housing Board, Raj.', '', 0, 14, 4, '', '', 'IMG_0917.JPG', '0000-00-00', 0),
(829, 'Rohit Jingar', 'Mr. Shiv Lal Jeengar', '', '2000-09-30', 'Mahaveer Nagar, Raj.', '', 0, 14, 4, '', '', 'IMG_0924.JPG', '0000-00-00', 0),
(830, 'Rudra Vyas', 'Mr. Jitendra Vyas', '', '2001-10-18', 'Natthi Nagar, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0915.JPG', '0000-00-00', 0),
(831, 'Rumit Nagori', 'Mr. Manish Nagori', '', '2002-03-14', 'Mehta Complex, Lalbhag, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0912.JPG', '0000-00-00', 0),
(832, 'Sakshi Rathi', 'Mr. Pankaj Rathi', '', '2001-09-27', 'Nai Haveli Chowk, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0893.JPG', '0000-00-00', 0),
(833, 'Shrey Vyas', 'Mr. Dilip Vyas', '', '2001-10-26', 'Fatak Darwaza, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0920.JPG', '0000-00-00', 0),
(834, 'Shreya Vyas', 'Mr. Manish Vyas', '', '2001-12-20', '19J,Sukhadia Nagar, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0897.JPG', '0000-00-00', 0),
(835, 'Tina Tungaria', 'Mr. Mohan Lal Regar', '', '2003-09-20', 'Arihant Plaza, Lal Bagh, Nathdwara', '', 0, 14, 4, '', '', 'IMG_0903.JPG', '0000-00-00', 0),
(836, 'Vaidehee Maheshwari', 'Mr. Lalit Mundra', '', '2001-12-03', 'Subhash Nagar, Rajsamand', '', 0, 14, 4, '', '', 'IMG_0895.JPG', '0000-00-00', 0),
(837, 'Dimple Rao', 'Mr. Ranjeet Singh Rao', '', '2001-10-11', 'Near Govt. School, Dewana, Rajsamand', '', 0, 14, 4, '', '', 'IMG_0943.JPG', '0000-00-00', 0),
(838, 'Shreya Verma', 'Mr. Om Prakash Verma', '', '2001-09-03', 'Suncity, Bhilwara Road, Kankroli', '', 0, 14, 4, '', '', 'IMG_0899.JPG', '0000-00-00', 0),
(839, 'Shivom Jaiswal', 'Mr. Dinesh Jaiswal', '', '2001-09-30', '100 Ft. Road, Kankroli', '', 0, 14, 4, '', '', 'IMG_0918.JPG', '0000-00-00', 0),
(840, 'Ravina Rathore', 'Mr. Narpat Singh Rathore', '', '2000-04-16', 'Near RK Hospital, Kankroli', '', 0, 14, 4, '', '', 'IMG_0907.JPG', '0000-00-00', 0),
(841, 'Somdutt Choudhary', 'Mr. Pradeep Choudhary', '', '2002-02-22', 'Radhika Hospital, Kankroli', '', 0, 14, 4, '', '', 'IMG_0916.JPG', '0000-00-00', 0),
(842, 'Paryank Bhatnagar', 'Mr. Avnish Bhatnagar', '', '2001-08-22', 'Jal Chakki, Kankroli', '', 0, 14, 4, '', '', 'IMG_0927.JPG', '0000-00-00', 0),
(843, 'Kaushal Khandelwal', 'Mr. Manish Kumar Khandelwal', '', '2003-01-16', 'Sunder Colony, Bhilwara Road, Rajsamand', '', 0, 14, 4, '', '', 'IMG_0911.JPG', '0000-00-00', 0),
(844, 'Diksha Chundawat', 'Mr. Karan Singh ', '', '2002-03-25', 'Behind Radhika Hospital, Krishna Nagar Colony,Rajsamand', '', 0, 14, 4, '', '', 'IMG_0906.JPG', '0000-00-00', 0),
(845, 'Harshit Galriya', 'Mr. Satya Narayan Sharma', '', '2002-07-11', 'Near Utsav Tent House', '', 0, 14, 4, '', '', 'IMG_0922.JPG', '0000-00-00', 0),
(846, 'Dhara Singh Jhala', 'Mr. Nirbhay Singh Jhala', '', '2003-02-15', 'Shiv Nagar, Near Alok School', '', 0, 14, 4, '', '', 'IMG_0946.JPG', '0000-00-00', 0),
(847, 'Rakshit Choudhary', 'Mr. Sanjay Choudhary', '', '2001-08-24', 'Bhilwara Road, Nai Abadi, Opp. to Corporation Bank', '', 0, 14, 4, '', '', '39.JPG', '0000-00-00', 0),
(848, 'Sejal Badala', 'Mr. Chandresh Kumar Badala', '', '2002-04-19', 'Dani Chabutra, Rajnagar', '', 0, 14, 4, '', '', '41.JPG', '0000-00-00', 0),
(849, 'Abhinav Jain', 'Mr. Tarun Jain', '', '2003-01-11', 'Lal Baag, Dr. Colony, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0232.JPG', '0000-00-00', 0),
(850, 'Anubhav Soni', 'Mr. Jagdish Soni', '', '2002-08-27', 'Ganesh Tekri, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0959.JPG', '0000-00-00', 0),
(851, 'Ayush Joshi', 'Mr. Jitendra Joshi', '', '2003-06-25', 'Nathuwas, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0230.JPG', '0000-00-00', 0),
(852, 'Bhavesh Kabra', 'Mr. Rajesh Kabra', '', '2002-09-16', 'Gurjarpura, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0218.JPG', '0000-00-00', 0),
(853, 'Dhwani Ameta', 'Mr. Om Prakash Ameta', '', '2002-12-06', 'Suncity Road, Panchratn Complex, Kankroli', '', 0, 13, 1, '', '', 'IMG_0215.JPG', '0000-00-00', 0),
(854, 'Divya Goswami', 'Mr. Rameshpuri Goswami', '', '2000-03-05', 'Nai Haweli Chowk, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0217.JPG', '0000-00-00', 0),
(855, 'Harshit Shrimali', 'Mr. Roshan Shrimali', '', '2002-03-23', 'Shreenath Colony - B, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0233.JPG', '0000-00-00', 0),
(856, 'Hemang Hiran', 'Mr. Pankaj Hiran', '', '2002-03-24', 'Ajanta Furniture, Kankroli', '', 0, 13, 1, '', '', 'IMG_0214.JPG', '0000-00-00', 0),
(857, 'Kartik Paliwal', 'Mr. Hargovind Paliwal', '', '2002-05-15', 'Near Newmorn Public School, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0227.JPG', '0000-00-00', 0),
(858, 'Kashish Paliwal', 'Mr. Deepak Paliwal', '', '2002-10-27', 'Behind Govt. Hospital, Lal Bagh, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0225.JPG', '0000-00-00', 0),
(859, 'Kavyansh Karnawat', 'Mr. Ajay Karnawat', '', '2002-03-22', 'Opp. Vandana Talkies, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0235.JPG', '0000-00-00', 0),
(860, 'Khushi Kabra', 'Mr. Satyanarayan Kabra', '', '2002-06-28', 'Gurjarpura, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0223.JPG', '0000-00-00', 0),
(861, 'Khushi Sanadhya', 'Mr. Chandrashekhar Sanadhya', '', '2002-11-10', 'Lambi Gali, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0220.JPG', '0000-00-00', 0),
(862, 'Lakshya Sanadhya', 'Mr. Sanjay Sanadhya', '', '2002-08-28', 'Behind Shreenathji Temple, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0212.JPG', '0000-00-00', 0),
(863, 'Nidhi Gurjar', 'Mr. Prakash Gurjar', '', '2003-09-17', 'Ganesh Tekri, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0224.JPG', '0000-00-00', 0),
(864, 'Nikunj Prajapat', 'Mr. Mukut Bihari Prajapat', '', '2002-03-14', 'Near Banas Pul, Gunjol, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0957.JPG', '0000-00-00', 0),
(865, 'Nitesh Singh Charan', 'Mr. Devraj Singh Charan', '', '2001-03-15', 'Kishor Nagar, (Manda), Rajsamand', '', 0, 13, 1, '', '', 'IMG_0231.JPG', '0000-00-00', 0),
(866, 'Parth Krishna Nandwana', 'Mr. Arun Kumar Nandwana', '', '2002-12-01', 'Shanti Colony, Near Shiv Mandir, Kankroli', '', 0, 13, 1, '', '', 'IMG_0234.JPG', '0000-00-00', 0),
(867, 'Prateek Nandwana', 'Mr. Dinesh Chandra Nandwana', '', '2002-03-29', 'Shastri Nagar, Kankroli', '', 0, 13, 1, '', '', 'IMG_0236.JPG', '0000-00-00', 0),
(868, 'Priyanshi Rathi', 'Mr. Govind Rathi', '', '2002-03-06', 'Neem Wali Gali, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0216.JPG', '0000-00-00', 0),
(869, 'Ravina Kunwar Kitawat', 'Mr. Onkar Singh', '', '2003-08-31', 'Uriya, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0226.JPG', '0000-00-00', 0),
(870, 'Rishit Laddha', 'Mr. Rakesh Laddha', '', '2002-05-11', 'Ram Nagar, Rajsamand', '', 0, 13, 1, '', '', 'IMG_0237.JPG', '0000-00-00', 0),
(871, 'Rishit Sharma', 'Mr. Alok Kumar Sharma', '', '2003-01-26', 'Sukhadiya Nagar, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0229.JPG', '0000-00-00', 0),
(872, 'Sahil Surana', 'Mr. Sunil Surana', '', '2002-12-22', 'New Road, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0958.JPG', '0000-00-00', 0),
(873, 'Sejal Jain', 'Mr. Rajendra Jain', '', '2002-04-03', 'Friends Colony, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0945.JPG', '0000-00-00', 0),
(874, 'Vishwas Sharma', 'Mr. Vishnu Sharma', '', '2002-05-03', 'Chitrakaron Ki Gali, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0241.JPG', '0000-00-00', 0),
(875, 'Yash Paliwal', 'Mr. Pramendra Paliwal', '', '2002-11-07', 'Rampura, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0239.JPG', '0000-00-00', 0),
(876, 'Yashpal Singh Solanki', 'Mr. Pabu Singh Solanki', '', '2002-07-31', 'Siddharth Nagar, Jawad, Rajsamand', '', 0, 13, 1, '', '', 'IMG_0240.JPG', '0000-00-00', 0),
(877, 'Yukta Arora', 'Mr. Ramesh Arora', '', '2002-01-12', 'Lakhotiya Gali, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0221.JPG', '0000-00-00', 0),
(878, 'Kanisha Joshi', 'Mr. Purnashankar Joshi', '', '2002-02-22', 'Bijalai, Nathdwara', '', 0, 13, 1, '', '', '36.JPG', '0000-00-00', 0),
(879, 'Yashraj Sahu', 'Mr. Rajesh Sahu', '', '2001-10-22', 'Mahaveerpura, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0228.JPG', '0000-00-00', 0),
(880, 'Ridhika Joshi', 'Mr. Bhagwati Lal Joshi', '', '2002-08-15', 'Rawto Ka Darwaja, Nathdwara', '', 0, 13, 1, '', '', 'IMG_0222.JPG', '0000-00-00', 0),
(881, 'Jainam Manish Jain', 'Mr. Manish Jain', '', '2002-08-22', 'Near Police Station, Nathdwara, Pavti Janevala Rasta.', '', 0, 13, 1, '', '', '37.JPG', '0000-00-00', 0),
(882, 'Abhinav Tripathi', 'Mr. Ashok Tripathi', '', '2004-08-26', 'Sundar Vilas, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0246.JPG', '0000-00-00', 0),
(883, 'Aditya Panwar', 'Mr. Deepak Panwar', '', '2002-01-21', 'Naniji Ka Bagh, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0244.JPG', '0000-00-00', 0),
(884, 'Amar Sain', 'Mr. Anil Sain', '', '2001-03-28', 'Naiyo Ki Gali, Kankroli', '', 0, 13, 2, '', '', 'IMG_0263.JPG', '0000-00-00', 0),
(885, 'Chanchal Bhatia', 'Mr. Sanjay Bhatia', '', '2002-02-17', 'Bichho Mangari, Nathdwara / J.P. Marg', '', 0, 13, 2, '', '', 'IMG_0276.JPG', '0000-00-00', 0),
(886, 'Dhananjay Sharma', 'Mr. Prakash Sharma', '', '2001-09-24', 'Uba Ganeshji, Nathdwara, Rajsamand', '', 0, 13, 2, '', '', 'IMG_0264.JPG', '0000-00-00', 0),
(887, 'Dhruvi Paliwal', 'Mr. Dharmendra Paliwal', '', '2001-04-21', 'Rampura, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0251.JPG', '0000-00-00', 0),
(888, 'Dilip Dave', 'Mr. Ashok Dave', '', '2002-08-25', 'Govind Nagar, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0255.JPG', '0000-00-00', 0),
(889, 'Gautam Paliwal', 'Mr. Om Prakash Paliwal', '', '2001-11-27', 'Rampura, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0247.JPG', '0000-00-00', 0),
(890, 'Harsh Soni', 'Mr. Lokesh Soni', '', '2003-05-22', 'Risala Chowk, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0253.JPG', '0000-00-00', 0),
(891, 'Himanshu Nandwana', 'Mr. Neeraj Nandwana', '', '2003-03-14', 'Shastri Nagar, Kankroli, (Raj.)', '', 0, 13, 2, '', '', 'IMG_0265.JPG', '0000-00-00', 0),
(892, 'Kavya Vaishnav', 'Mr. Mahesh Vairagi', '', '2003-07-10', 'Meera Nagar, Mobe Gadh, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0249.JPG', '0000-00-00', 0),
(893, 'Khushi Laddha', 'Mr. Manoj Laddha', '', '2002-08-27', 'Nayakwari, Rajnagar', '', 0, 13, 2, '', '', 'IMG_0267.JPG', '0000-00-00', 0),
(894, 'Krishna Chhaparwal', 'Mr. Bal Krishna Chhaparwal', '', '2002-05-15', 'New Road, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0266.JPG', '0000-00-00', 0),
(895, 'Kritika Sanadhya', 'Mr. Balendu Sanadhya', '', '2002-09-01', 'Sundar Vilas, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0272.JPG', '0000-00-00', 0),
(896, 'Lakshita Jadiya', 'Mr. Chandraprakash Jadiya', '', '2002-05-12', 'New Road, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0248.JPG', '0000-00-00', 0),
(897, 'Lalit Singh Asoliya', 'Mr. Chandan Singh Asoliya', '', '2002-09-24', 'Bhawani Nagar, Rajsamand', '', 0, 13, 2, '', '', 'IMG_0259.JPG', '0000-00-00', 0),
(898, 'Mahip Gorana', 'Mr. Rajesh Gorana', '', '2001-08-19', 'Govind Nagar, Rajsamand', '', 0, 13, 2, '', '', 'IMG_0252.JPG', '0000-00-00', 0),
(899, 'Mohit Daiya', 'Mr. Rakesh Daiya', '', '2001-11-09', 'Vallabhpura, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0242.JPG', '0000-00-00', 0),
(900, 'Payonidhi Joshi', 'Mr. Narendra Joshi', '', '2002-06-18', 'Bichhoo Mangari, Nathdwara / J.P. Marg', '', 0, 13, 2, '', '', 'IMG_0274.JPG', '0000-00-00', 0),
(901, 'Piyush Dave', 'Mr. Ashok Dave', '', '2001-09-18', 'Govind Nagar, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0243.JPG', '0000-00-00', 0),
(902, 'Priyansh Devpura', 'Mr. Dinesh Chandra Devpura', '', '2002-07-17', 'Kothariya Road, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0254.JPG', '0000-00-00', 0),
(903, 'Raghav Inani', 'Mr. Bhagwati Inani', '', '2002-12-02', 'Lal Baagh, Kotharia Road, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0256.JPG', '0000-00-00', 0),
(904, 'Raghav Laddha', 'Mr. Sharad Laddha', '', '2002-07-18', 'Nayakwadi, Rajnagar', '', 0, 13, 2, '', '', 'IMG_0261.JPG', '0000-00-00', 0),
(905, 'Rohit S. Chouhan', 'Mr. Loomb Singh Chouhan', '', '2003-01-25', 'Police Line, Rajnagar', '', 0, 13, 2, '', '', 'IMG_0257.JPG', '0000-00-00', 0),
(906, 'Sakshi Jain', 'Mr. Sanjay Madrecha', '', '2002-09-02', 'White House, Near Power House, Rajsamand', '', 0, 13, 2, '', '', 'IMG_0245.JPG', '0000-00-00', 0),
(907, 'Sudhanshu Somani', 'Mr. Navneet Somani', '', '2002-06-30', 'Lodha Ghati, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0258.JPG', '0000-00-00', 0),
(908, 'Swati Paliwal', 'Mr. Laxmi Lal Paliwal', '', '2001-10-28', 'Shri Ram Nagar, 100 Ft. Road, Kankroli', '', 0, 13, 2, '', '', 'IMG_0268.JPG', '0000-00-00', 0),
(909, 'Tanisha Maheshwari', 'Mr. Sagar Maheshwari', '', '2002-08-03', 'Mahaveer Nagar, 100 Feet Road, (Raj.)', '', 0, 13, 2, '', '', '16.JPG', '0000-00-00', 0),
(910, 'Urmila Deval', 'Mr. Sukhdev Singh Charan', '', '2002-08-30', 'Sukhadiya Nagar, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0269.JPG', '0000-00-00', 0),
(911, 'Vandini Gurjar', 'Mr. Manish Gurjar', '', '2002-11-21', 'Gurjarpura, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0270.JPG', '0000-00-00', 0),
(912, 'Varshita Sharma', 'Mr. Vikas Sharma', '', '2002-03-20', 'Sukhadia Nagar, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0273.JPG', '0000-00-00', 0),
(913, 'Vidhika Gaur', 'Mr. Rakesh Gaur', '', '2002-09-22', 'Laal Bagh, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0277.JPG', '0000-00-00', 0),
(914, 'Khushi Golani', 'Mr. Kishor Golani', '', '2003-01-05', 'D - 7, Housing Board, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0271.JPG', '0000-00-00', 0),
(915, 'Nirav Sharma', 'Mr. Jitendra Sanadhya', '', '2002-05-28', 'R.T.D.C. Road, Shri Ji Vihar Colony, Ntd.', '', 0, 13, 2, '', '', 'IMG_0262.JPG', '0000-00-00', 0),
(916, 'Chirag Agarwal', 'Mr. Mahaveer Prasad Agarwal', '', '2003-02-07', 'Sukhadia Nagar, Nathdwara', '', 0, 13, 2, '', '', 'IMG_0250.JPG', '0000-00-00', 0),
(917, 'Chhavi Surana', 'Mr. Pankaj Surana', '', '2003-03-12', 'Shreenath Colony - B, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1107.JPG', '0000-00-00', 0),
(918, 'Divyanshi Dave', 'Mr. Rajendra Dave', '', '2002-12-12', 'Ganesh Tekri, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1108.JPG', '0000-00-00', 0),
(919, 'Diya Jain', 'Mr. Balwant Jain', '', '2004-04-18', 'Tehsil Road, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1109.JPG', '0000-00-00', 0),
(920, 'Gungunraj Kumawat', 'Mr. Mahesh Kumawat', '', '2003-05-22', 'Kothariya Road, Lal Baag, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1110.JPG', '0000-00-00', 0),
(921, 'Koyal Soni', 'Mr. Dharmendra Soni', '', '2003-01-14', 'Friends Colony, Lal Baag, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1119.JPG', '0000-00-00', 0),
(922, 'Lakshyaraj Singh', 'Mr. Ghanshyam Singh', '', '2003-05-11', 'Sinhad, Near Hanumanji Temple, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1142.JPG', '0000-00-00', 0),
(923, 'Mayank Vijayvergiya', 'Mr. Anil Kumar Vijay', '', '2003-11-19', 'Asotia, Kankroli', '', 0, 12, 1, '', '', 'IMG_1144.JPG', '0000-00-00', 0),
(924, 'Mohammed Husain Bohra', 'Mr. Burhanuddin Bohra', '', '2002-12-28', 'Bohra Bazar, Nathdwara', '', 0, 12, 1, '', '', '12.JPG', '0000-00-00', 0),
(925, 'Nandini Bhatia', 'Mr. Sachin Bhatia', '', '2003-01-27', 'Mohangarh, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1113.JPG', '0000-00-00', 0),
(926, 'Nikita Rathore', 'Mr. Jogendra Rathore', '', '2003-05-25', 'Krishna Residency, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1114.JPG', '0000-00-00', 0),
(927, 'Nimit Jain', 'Mr. Ramesh Jain', '', '2002-06-24', 'Bus Stand, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1130.JPG', '0000-00-00', 0),
(928, 'Pritima Priyanshi Chouhan', 'Mr. Madan Singh Chouhan', '', '2002-12-27', 'Kalla Khedi, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1117.JPG', '0000-00-00', 0),
(929, 'Rishabh Chaplot', 'Mr. Chater Lal Chaplot', '', '2003-06-11', 'Mahaveerpura, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1136.JPG', '0000-00-00', 0),
(930, 'Saurabh Kumar Bomb', 'Mr. Ashok Kumar Bomb', '', '2002-05-06', 'Bagarwara, Nathdwara', '', 0, 12, 1, '', '', '13.JPG', '0000-00-00', 0),
(931, 'Sharan Kandwani', 'Mr. Parmanand Kandwani', '', '2003-11-15', 'Kumharwada, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1141.JPG', '0000-00-00', 0),
(932, 'Vanshita Purohit', 'Mr. Giriraj Purohit', '', '2003-05-31', 'Jat Khidki, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1111.JPG', '0000-00-00', 0),
(933, 'Vidhan Laddha', 'Mr. Kamlesh Laddha', '', '2003-11-22', '100ft. Road, Rajnagar, Rajsamand', '', 0, 12, 1, '', '', 'IMG_1128.JPG', '0000-00-00', 0),
(934, 'Yash Kumar Jain', 'Mr. Pankaj Jain', '', '2003-05-18', 'Sinhad, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1135.JPG', '0000-00-00', 0),
(935, 'Anjali Paliwal', 'Mr. Kamlesh Paliwal', '', '2003-10-05', 'Shiv Nagar, Lal Bagh, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1122.JPG', '0000-00-00', 0),
(936, 'Chhavi Sisodia', 'Mr. Shambhu Singh Sisodia', '', '2003-04-04', 'Nai Haveli Chowk, Nathdwara', '', 0, 12, 1, '', '', '33.JPG', '0000-00-00', 0),
(937, 'Jitendra Singh Jadawat', 'Mr. Ganpat Singh ', '', '2002-12-08', 'Chandradeep Colony', '', 0, 12, 1, '', '', 'IMG_1147.JPG', '0000-00-00', 0),
(938, 'Kartik Joshi', 'Mr. Prakash Chandra Joshi', '', '2002-12-20', 'Brahmpuri, Nathuwas, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1133.JPG', '0000-00-00', 0),
(939, 'Pragati Sanadhya', 'Mr. Sunil Dutt Sanadhya', '', '2004-01-13', 'Nai Haveli Chowk, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1116.JPG', '0000-00-00', 0),
(940, 'Pratham Lodha', 'Mr. Ganesh Kumar Lodha', '', '2004-09-27', 'Lodha Ghati, Ganesh Nagar, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1124.JPG', '0000-00-00', 0),
(941, 'Priyal Mehta', 'Mr. Umang Mehta', '', '2003-07-06', 'RTDC Road, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1118.JPG', '0000-00-00', 0),
(942, 'Ripunjay Garg', 'Mr. Narendra Garg', '', '2003-02-21', '100 Ft. Road, Alankar Residence, C3 , Rajsamand', '', 0, 12, 1, '', '', 'IMG_1137.JPG', '0000-00-00', 0),
(943, 'Ronak Maheshwari', 'Mr. Vishal Maheshwari', '', '2004-04-07', 'Subhash Nagar, Kankroli', '', 0, 12, 1, '', '', 'IMG_1131.JPG', '0000-00-00', 0),
(944, 'Sawan Ladha', 'Mr. Jitendra Ladha', '', '2003-07-18', 'Karni Vihar, Rajsamand', '', 0, 12, 1, '', '', '14.JPG', '0000-00-00', 0),
(945, 'Soumya Singh', 'Mr. Chattar Singh', '', '2004-02-21', 'Ganesh Nagar, Lodha Ghati, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1143.JPG', '0000-00-00', 0),
(946, 'Srishti Sharma', 'Mr. Lokendra Sharma', '', '2002-12-10', 'Mahadev Ji Ki Ghati, Bhimgadi, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1115.JPG', '0000-00-00', 0),
(947, 'Vaishnavi Bhatt', 'Mr. Shyam Sundar Bhatt', '', '2003-12-08', 'Uba Ganesh Ji, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1123.JPG', '0000-00-00', 0),
(948, 'Vivek Paliwal', 'Mr. Purnashankar Paliwal', '', '2003-10-04', 'New Road, Vardhman Complex, Nathdwara', '', 0, 12, 1, '', '', 'IMG_1138.JPG', '0000-00-00', 0),
(949, 'Harsh Sharma', 'Mr. Lokesh Sharma', '', '2002-01-19', 'Panch Ratan Complex, Bhilwara Road, Kankroli', '', 0, 12, 1, '', '', 'IMG_1132.JPG', '0000-00-00', 0),
(950, 'Jatin Vijayvergiya', 'Mr. Rakesh Vijayvergiya', '', '2004-12-08', 'A-55, Nai Abadi, Kankroli, Rajsamand', '', 0, 12, 1, '', '', 'IMG_1146.JPG', '0000-00-00', 0),
(951, 'Anjali Sahu', 'Mr. Dinesh Chandra Sahu', '', '2003-07-22', 'Purani Post Office Ki Gali, Maheshwari Mohalla, Rajnagar', '', 0, 12, 1, '', '', 'IMG_1121.JPG', '0000-00-00', 0),
(952, 'Swarup Jangid', 'Mr. Hariram Suthar', '', '2002-06-30', 'Sukhadia Nagar Road, Kumharwada, Nathdwara', '', 0, 12, 1, '', '', '15.JPG', '0000-00-00', 0),
(953, 'Mukesh Ameta', 'Mr. Ishwar Lal Ameta', '', '2004-01-18', 'Sun City, Gudli, Kankroli', '', 0, 12, 1, '', '', 'IMG_1134.JPG', '0000-00-00', 0),
(954, 'Priyansh Laddha', 'Mr. Arvind Laddha', '', '2005-02-12', 'Arvind Kirana Store, Rajnagar', '', 0, 12, 1, '', '', 'IMG_1139.JPG', '0000-00-00', 0);
INSERT INTO `student` (`id`, `name`, `father_name`, `mother_name`, `dob`, `address`, `scholar_no`, `roll_no`, `class_id`, `section_id`, `faculty`, `batch`, `photo_path`, `pdf_update_date`, `hold`) VALUES
(955, 'Keyur Bahedia', 'Mr. Anil Bahedia', '', '2004-05-21', 'A-45, Nai Abadi, Kankroli, Rajsamand', '', 0, 12, 1, '', '', 'IMG_1129.JPG', '0000-00-00', 0),
(956, 'Niviraj Singh Chundawat', 'Mr. Karan Singh Chundawat', '', '2003-09-13', 'Shree Krishna Nagar, Bhilwara Road, kankroli, Rajsamand', '', 0, 12, 1, '', '', 'IMG_1127.JPG', '0000-00-00', 0),
(957, 'Arihant Jain', 'Mr. Rajendra Jain', '', '2002-12-16', 'Adarsh Nagar, Tehsil Road, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1067.JPG', '0000-00-00', 0),
(958, 'Ayushman Singh Khangarot', 'Mr. Nand Singh Khangarot', '', '2005-05-27', 'Salampura, Kankroli', '', 0, 12, 2, '', '', 'IMG_1069.JPG', '0000-00-00', 0),
(959, 'Bhavya Pal', 'Mr. Surendra Singh Pal', '', '2003-09-05', 'Shree Krishna Nagar, Rajsamand', '', 0, 12, 2, '', '', 'IMG_1068.JPG', '0000-00-00', 0),
(960, 'Bhakti Bhatia', 'Mr. Giriraj Bhatia', '', '2003-01-30', 'Bicchu Mangri, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1070.JPG', '0000-00-00', 0),
(961, 'Devang Hiran', 'Mr. Pankaj Hiran', '', '2003-09-13', 'Devang, Sunder Colony, Rajsamand', '', 0, 12, 2, '', '', 'IMG_1071.JPG', '0000-00-00', 0),
(962, 'Dipansha Kumawat', 'Mr. Ghanshyam Kumawat', '', '2004-03-06', 'Fourj Mohalla, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1072.JPG', '0000-00-00', 0),
(963, 'Harshita Girnara', 'Mr. Sanjay Girnara', '', '2002-11-25', 'Badala Wala Chowk, Nathuwas, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1085.JPG', '0000-00-00', 0),
(964, 'Ishit Parikh', 'Lt. Mr. Manish Parikh', '', '2003-03-09', 'Setho Ka Payasa, Mandir Marg, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1076.JPG', '0000-00-00', 0),
(965, 'Jayesh Lodha', 'Mr. Natwar Lal Lodha', '', '2003-01-04', 'Ganesh Nagar, Lodha Ghati, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1104.JPG', '0000-00-00', 0),
(966, 'Kartik Agarwal', 'Mr. Praveen Agarwal', '', '2003-07-27', 'Rawaton Ka Darwaja, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1102.JPG', '0000-00-00', 0),
(967, 'Khushi Swarnkar', 'Mr. Santosh Swarnkar', '', '2004-01-05', 'Rampura, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1084.JPG', '0000-00-00', 0),
(968, 'Meenal Chaplot', 'Mr. Bhavesh Chaplot', '', '2003-01-21', 'Mahaveerpura, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1082.JPG', '0000-00-00', 0),
(969, 'Prateek Lakhotia', 'Mr. Deepak Lakhotia', '', '2003-10-23', 'Mahadev Colony, Jal Chakki, Kankroli', '', 0, 12, 2, '', '', 'IMG_1097.JPG', '0000-00-00', 0),
(970, 'Saasha Gupta', 'Mr. Sagar Gupta', '', '2003-11-22', 'Patwari Payasa, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1093.JPG', '0000-00-00', 0),
(971, 'Sanskar Bhatia', 'Mr. Gaurav Bhatia', '', '2003-03-31', 'Gokuldham Society, Bicchu Mangari, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1100.JPG', '0000-00-00', 0),
(972, 'Abhidev Sharma', 'Mr. Shiv Hari Sharma', '', '2003-10-03', 'Sukhadia Nagar, Near Community Hall, Nathdwara', '', 0, 12, 2, '', '', '', '0000-00-00', 0),
(973, 'Shashwat Sharma', 'Mr. Gajendra Sharma', '', '2003-04-05', 'Ganesh Nagar, Lodha Ghati, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1101.JPG', '0000-00-00', 0),
(974, 'Tanvi Bhutra', 'Mr. Sunil Bhutra', '', '2004-01-17', 'Meera Nagar, Mobegarh, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1086.JPG', '0000-00-00', 0),
(975, 'Arvind Singh ', 'Mr. Sajjan Singh ', '', '2003-06-03', 'Village - Uriya, Uthnol, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1075.JPG', '0000-00-00', 0),
(976, 'Drushti Rathi', 'Mr. Pawan Rathi', '', '2003-01-09', 'A - 15, Govind Nagar, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1073.JPG', '0000-00-00', 0),
(977, 'Garv  Purohit', 'Mr. Ashok Purohit', '', '2003-12-26', 'Lakshmi Sadan, Sunder Vilas, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1105.JPG', '0000-00-00', 0),
(978, 'Harshita Jha', 'Mr. Dharmendra Jha', '', '2003-03-15', 'A - 66, Nai Abadi, Kankroli', '', 0, 12, 2, '', '', 'IMG_1080.JPG', '0000-00-00', 0),
(979, 'Harshita Paliwal', 'Mr. Chandrashekhar Paliwal', '', '2003-09-04', 'Gurjarpura, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1090.JPG', '0000-00-00', 0),
(980, 'Idris Mukhiya', 'Mr. Mufaddal Mukhiya', '', '2003-03-12', 'Bohra Bazar, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1099.JPG', '0000-00-00', 0),
(981, 'Jeenal Jain', 'Mr. Ratnesh Jain', '', '2002-12-08', 'Opp. Mahadev Temple, Lal Bazar, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1089.JPG', '0000-00-00', 0),
(982, 'Jeetendra Deval', 'Mr. Sukhdev Singh Charan', '', '2001-06-09', 'Sukhadiya Nagar, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1095.JPG', '0000-00-00', 0),
(983, 'Jiya Agrawal', 'Mr. Mukesh Agrawal', '', '2004-05-10', 'Block - D, Arihant Plaza, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1079.JPG', '0000-00-00', 0),
(984, 'Khushi Girnara', 'Mr. Kamlesh Girnara', '', '2004-08-12', 'Shreenath Colony, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1078.JPG', '0000-00-00', 0),
(985, 'Kushal Purohit', 'Mr. Mangi Lal Purohit', '', '2001-05-16', 'Friends Colony, Lal Baag, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1094.JPG', '0000-00-00', 0),
(986, 'Lakshyaraj Chouhan', 'Mr. Devendra Chouhan', '', '2003-02-09', 'Sukhadiya Nagar, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1091.JPG', '0000-00-00', 0),
(987, 'Parth Bhandari', 'Mr. Chandraprakash Bhandari', '', '2003-08-12', 'Shree Ram Nagar, 100ft. Road, Rajsamand', '', 0, 12, 2, '', '', 'IMG_1096.JPG', '0000-00-00', 0),
(988, 'Radhika Maheshwari', 'Mr. Anant Maheshwari', '', '2003-02-02', 'Sukhadiya Nagar, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1087.JPG', '0000-00-00', 0),
(989, 'Suhani Jain', 'Mr. Dinesh Chandra Jain', '', '2003-07-19', 'Mahaveerpura, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1092.JPG', '0000-00-00', 0),
(990, 'Tanishka Khandelwal', 'Mr. Harikant Khandelwal', '', '2003-04-18', 'Bus Stand, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1088.JPG', '0000-00-00', 0),
(991, 'Vinti Thakkar', 'Mr. Lokesh Thakkar', '', '2002-05-14', 'Karmachari Colony, Tehsil Road, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1077.JPG', '0000-00-00', 0),
(992, 'Aaman Nandwana  ', 'Mr. Mukesh Nandwana', '', '2002-12-07', 'Dhani Chabutara, Rajnagar', '', 0, 12, 2, '', '', 'IMG_1074.JPG', '0000-00-00', 0),
(993, 'Naman Trivedi', 'Mr. Mukesh Trivedi', '', '2003-06-14', 'Santoshi Nagar, Kankroli', '', 0, 12, 2, '', '', '11.JPG', '0000-00-00', 0),
(994, 'Om Bharti Goswami', 'Mr. Nathu Bharti Goswami', '', '2005-03-29', 'Badla Wali Gali, Nathdwara', '', 0, 12, 2, '', '', 'IMG_1098.JPG', '0000-00-00', 0),
(995, 'Shashwat Gurjar', 'Mr. Shailendra Gurjar', '', '2003-06-01', 'E-24, Govind nagar, Rajsamand', '', 0, 12, 2, '', '', 'IMG_1106.JPG', '0000-00-00', 0),
(996, 'Akshat Khandelwal', 'Mr. Parmanand Khandelwal', '', '2004-10-23', 'Tehsil Road, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0971.JPG', '0000-00-00', 0),
(997, 'Ali Asgar ', 'Mr. Burhanuddin ', '', '2004-02-19', 'Fauz Mohalla, Tehsil Road, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0978.JPG', '0000-00-00', 0),
(998, 'Bharat Bhatia', 'Mr. Manish Kumar Bhatia', '', '2004-05-08', 'Sindhi Colony, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0973.JPG', '0000-00-00', 0),
(999, 'Bhavika Paliwal', 'Mr. Naresh Paliwal', '', '2003-12-24', 'Uba Ganesh Ji, Sinhad, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0974.JPG', '0000-00-00', 0),
(1000, 'Bhavishya Puri Goswami', 'Mr. Ramesh Puri Goswami', '', '2004-07-16', 'Nai Haveli Chowk, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0975.JPG', '0000-00-00', 0),
(1001, 'Daksh Choudhary', 'Mr. Bhanwar Singh Choudhary', '', '2004-09-28', 'Subhash Nagar, Rajsamand', '', 0, 11, 1, '', '', 'IMG_0976.JPG', '0000-00-00', 0),
(1002, 'Dashrath Bhatia', 'Mr. Shyam Sunder Bhatia', '', '2004-12-19', 'Sindhi Colony, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0977.JPG', '0000-00-00', 0),
(1003, 'Devendra Kumar Bomb', 'Mr. Ashok Kumar Bomb', '', '2003-11-07', 'Bagarwada, Nathdwara', '', 0, 11, 1, '', '', '08.JPG', '0000-00-00', 0),
(1004, 'Kinjal Kaneria', 'Mr. Sanjay Kaneria', '', '2004-09-08', 'Sukhadia Nagar, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0999.JPG', '0000-00-00', 0),
(1005, 'Mahi Samdani', 'Mr. Bhupendra Samdani', '', '2004-11-07', 'Vandana Talkies, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1003.JPG', '0000-00-00', 0),
(1006, 'Parth Paliwal', 'Mr. Pankaj Paliwal', '', '2004-01-14', 'Back Side of Lal Bagh Hospital, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0979.JPG', '0000-00-00', 0),
(1007, 'Priyanshi Purohit', 'Mr. Mangi Lal Purohit', '', '2004-04-05', 'Lal Bagh, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0980.JPG', '0000-00-00', 0),
(1008, 'Raghav Maheshwari', 'Mr. Purushottam Maheshwari', '', '2004-01-21', '4 J, Sukhadia Nagar, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0981.JPG', '0000-00-00', 0),
(1009, 'Siddham Bagrecha', 'Mr. Vinod Bagrecha', '', '2004-08-13', 'Adarsh Nagar, New Road, Near SBI Bank, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0982.JPG', '0000-00-00', 0),
(1010, 'Tanay Bagora', 'Mr. Jagdish Bagora', '', '2004-09-02', 'Bicchu Mangri, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0983.JPG', '0000-00-00', 0),
(1011, 'Zainab Attarwala', 'Mr. Abbas Ali Attarwala', '', '2004-11-12', 'Mohangarh, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0986.JPG', '0000-00-00', 0),
(1012, 'Himanshu Mehta ', 'Mr. Sushil Kumar Mehta', '', '2004-12-29', 'Mahaveer Nagar, 100 Ft. Road, Near HDFC Bank', '', 0, 11, 1, '', '', 'IMG_0984.JPG', '0000-00-00', 0),
(1013, 'Dhanishta Bishnoi', 'Mr. Sandeep Bishnoi', '', '2005-03-05', 'Kawadia House, Rajnagar', '', 0, 11, 1, '', '', 'IMG_0985.JPG', '0000-00-00', 0),
(1014, 'Yashir Khan', 'Mr. Umar Sed', '', '2006-07-26', 'Dhani Chabutra, Rajnagar', '', 0, 11, 1, '', '', 'IMG_0992.JPG', '0000-00-00', 0),
(1015, 'Garima Kunwar Rao', 'Mr. Chatur Singh Rao', '', '2004-12-27', 'Dewana, Charbhuja Chowk, Rajsamand', '', 0, 11, 1, '', '', 'IMG_0988.JPG', '0000-00-00', 0),
(1016, 'Advitya Singh', 'Mr. Sanjay Kumar Lodha', '', '2004-11-18', 'Vallabhpura, Patrakar Colony, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0989.JPG', '0000-00-00', 0),
(1017, 'Amatulla', 'Mr. Burhanuddin', '', '2004-02-19', 'Fauz Mohalla, Tehsil Road, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0991.JPG', '0000-00-00', 0),
(1018, 'Anjali Soni', 'Mr. Pramod Soni', '', '2004-08-06', 'Hela Wali Gali, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0990.JPG', '0000-00-00', 0),
(1019, 'Bhuvan Paliwal', 'Mr. Puneet Paliwal', '', '2004-07-02', 'Lal Baag, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0997.JPG', '0000-00-00', 0),
(1020, 'Darshan Lakhotia', 'Mr. Manoj Lakhotia', '', '2002-08-27', 'Brajpura, Ahilya Kund, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0994.JPG', '0000-00-00', 0),
(1021, 'Dhruv Jain', 'Late Bhupendra Kumar Jain', '', '2003-10-31', 'Dwarkadish Ki Khidak, Nai Haveli Chowk, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0995.JPG', '0000-00-00', 0),
(1022, 'Disha Trivedi', 'Mr. Pinakin Trivedi', '', '2004-11-21', 'Near Police Station, Vinayak Vihar', '', 0, 11, 1, '', '', 'IMG_0998.JPG', '0000-00-00', 0),
(1023, 'Harshal Jain', 'Mr. Gajendra K. Jain', '', '2004-06-21', 'Dwarkadhish Ki Khidak, Nai Haveli Chowk, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1009.JPG', '0000-00-00', 0),
(1024, 'Kapil Paliwal', 'Mr. Dharmendra Paliwal', '', '2004-10-21', 'Rampura, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1008.JPG', '0000-00-00', 0),
(1025, 'Kush Shrimali', 'Mr. Ashok Shrimali', '', '2003-04-11', 'Maliyon Ka Chowk, Fauz Mohalla, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1006.JPG', '0000-00-00', 0),
(1026, 'Parth Suthar', 'Mr. Bheru Lal Suthar', '', '2004-04-05', 'Vishwakarma Niwas, Nathuwas, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1001.JPG', '0000-00-00', 0),
(1027, 'Parv Sanchihar', 'Mr. Bhaskar Sanchihar', '', '2004-07-23', 'Gopal Niwas Hotel, Mohangarh, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1004.JPG', '0000-00-00', 0),
(1028, 'Priyanshu Soni', 'Late Madhusudhan Soni', '', '2004-05-30', 'Vallabhpura, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0996.JPG', '0000-00-00', 0),
(1029, 'Ronak Soni', 'Mr. Anand Soni', '', '2004-06-25', 'Karmachari Colony, Tehsil Road, Nathdwara', '', 0, 11, 1, '', '', '09.JPG', '0000-00-00', 0),
(1030, 'Sachin Souda', 'Mr. Om Singh Souda', '', '2004-01-25', 'Nathuwas Near By Court, Odan', '', 0, 11, 1, '', '', '10.JPG', '0000-00-00', 0),
(1031, 'Sujal Sethi', 'Mr. Manish Sethi', '', '2004-04-16', 'New Road, Nathdwara', '', 0, 11, 1, '', '', 'IMG_0993.JPG', '0000-00-00', 0),
(1032, 'Vishakha Jadiya', 'Mr. Chandraprakash Jadiya', '', '2004-04-22', 'New Road, In Front of Siddhi Vinayak, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1000.JPG', '0000-00-00', 0),
(1033, 'Yug Pratap Singh Chouhan', 'Mr. Kalyan Singh Chouhan', '', '2003-05-10', 'Village Dugwara, Kotharia', '', 0, 11, 1, '', '', 'IMG_1007.JPG', '0000-00-00', 0),
(1034, 'Yusuf Bohra', 'Mr. Mustafa Hussain', '', '2005-03-02', 'Bohra Bazar Choupati, Nathdwara', '', 0, 11, 1, '', '', 'IMG_1005.JPG', '0000-00-00', 0),
(1035, 'Prayraj', 'Mr. Karan Singh Chundawat', '', '2004-07-23', 'Bhilwara Road, Krishna Nagar Colony, Kankroli', '', 0, 11, 1, '', '', 'IMG_1002.JPG', '0000-00-00', 0),
(1036, 'Yogita Manish Jain', 'Mr. Manish Jain', '', '2004-10-19', 'Vinayak Villa, Near Police Station, Flat No. 403, Shreenath Colony, Nathdwara', '', 0, 11, 1, '', '', '34.JPG', '0000-00-00', 0),
(1037, 'Aagya Bagora', 'Mr. Ravi Bagora', '', '2004-04-21', 'Mohangarh, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1010.JPG', '0000-00-00', 0),
(1038, 'Aayush Joshi', 'Mr. Rajendra Prakash Joshi', '', '2004-02-25', 'Bijlai, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1017.JPG', '0000-00-00', 0),
(1039, 'Aksha Jain', 'Mr. Somil Jain', '', '2004-04-22', 'Jain Hospital, Mukharji Choraha, Rajsamand', '', 0, 11, 2, '', '', 'IMG_0854.JPG', '0000-00-00', 0),
(1040, 'Anand Sahu', 'Mr. Satyanarayan Sahu', '', '2004-12-19', 'Naya Bazar, Kankroli', '', 0, 11, 2, '', '', 'IMG_1019.JPG', '0000-00-00', 0),
(1041, 'Anubhuti Tripathi', 'Mr. Chetanya Kumar Triphathi', '', '2004-01-19', '24 GH, Sukhadia Nagar, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1011.JPG', '0000-00-00', 0),
(1042, 'Devansh Vyas', 'Mr. Parag Vyas', '', '2004-04-17', 'J - 19, Near Telephone Exchange, Sukhadia Nagar', '', 0, 11, 2, '', '', 'IMG_1013.JPG', '0000-00-00', 0),
(1043, 'Devshree Dave', 'Mr. Chandraprakash Dave', '', '2003-05-26', 'Opposite Ankur B-Ed College, Kanva Road', '', 0, 11, 2, '', '', 'IMG_1014.JPG', '0000-00-00', 0),
(1044, 'Diya Golani', 'Mr. Chandraprakash Golani', '', '2004-05-15', 'Housing Board, Teliyon Ka Talab, D - 7', '', 0, 11, 2, '', '', 'IMG_0859.JPG', '0000-00-00', 0),
(1045, 'Diya Sanadhya', 'Mr. Harikant Sanadhya', '', '2004-04-17', 'Shreeji Kripa,  Sukhadia Nagar', '', 0, 11, 2, '', '', 'IMG_0858.JPG', '0000-00-00', 0),
(1046, 'Ishi Gahlot', 'Mr. Priyatam Gahlot', '', '2004-04-22', 'Hotel Keshav, Opp. Rissala Chowk, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1015.JPG', '0000-00-00', 0),
(1047, 'Juhi Bhatia', 'Mr. Dilip Bhatia', '', '2003-11-28', 'Kumharwada, Nathdwara', '', 0, 11, 2, '', '', '35.JPG', '0000-00-00', 0),
(1048, 'Kanan Kabra', 'Mr. Ghanshyam Kabra', '', '2004-05-24', 'Shreeji Colony, Opp. Vandana Talkies, Bus Stand, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1016.JPG', '0000-00-00', 0),
(1049, 'Kartikey Sharma', 'Mr. Rajesh Kumar Sharma', '', '2004-10-05', '100ft. Road, Tulsi Vihar, Mahaveer Nagar', '', 0, 11, 2, '', '', 'IMG_1020.JPG', '0000-00-00', 0),
(1050, 'Keerti Thakkar', 'Mr. Lokesh Thakkar', '', '2003-09-20', 'Karmachari Colony, Private Bus Stand, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1018.JPG', '0000-00-00', 0),
(1051, 'Lakshya Mehta', 'Mr. Vinod Mehta', '', '2004-08-07', 'Maheshwari Mohalla, Rajnagar, Rajsamand, (Raj.)', '', 0, 11, 2, '', '', 'IMG_1021.JPG', '0000-00-00', 0),
(1052, 'Nidhi Bhatia', 'Mr. Paresh Bhatia', '', '2003-07-11', 'Bichchhu Mangri, Gokul Dham Society, Nathdwara', '', 0, 11, 2, '', '', 'IMG_0852.JPG', '0000-00-00', 0),
(1053, 'Nirav Maheshwari', 'Mr. Sunil Chehani ', '', '2004-08-23', 'Hanuman Temple, Opp. Avarimata Temple, Sinhad, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1034.JPG', '0000-00-00', 0),
(1054, 'Prakshit Suthar', 'Mr. Surendra Kumar Suthar', '', '2004-02-09', 'Dwarkesh Colony, Kankroli', '', 0, 11, 2, '', '', 'IMG_1033.JPG', '0000-00-00', 0),
(1055, 'Pritha Jain', 'Mr. Dinesh Jain', '', '2004-03-06', 'Nai Haweli Chowk, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1022.JPG', '0000-00-00', 0),
(1056, 'Pushti Rathi', 'Mr. Abhishek Rathi', '', '2004-12-07', 'New Road, Nathdwara', '', 0, 11, 2, '', '', 'IMG_0856.JPG', '0000-00-00', 0),
(1057, 'Saumya Ajmera', 'Mr. Vikas Ajmera', '', '2004-05-22', 'Subhash Nagar, 100ft. Road', '', 0, 11, 2, '', '', 'IMG_1023.JPG', '0000-00-00', 0),
(1058, 'Srishti Pagaria', 'Mr. Pankaj Pagaria', '', '2004-03-19', 'Shree Krishna Nagar, Behind Radhika Hospital, Bhilwara Road, Kankroli', '', 0, 11, 2, '', '', 'IMG_0857.JPG', '0000-00-00', 0),
(1059, 'Tanay Laddha', 'Mr. Sunil Laddha', '', '2004-08-23', 'Pratap Chouraha, 100ft. Road, Rajsamand', '', 0, 11, 2, '', '', 'IMG_0851.JPG', '0000-00-00', 0),
(1060, 'Vishal Chaplot', 'Mr. Bhavesh Chaplot', '', '2004-05-20', 'Mahaveerpura, Opposite Samiti, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1024.JPG', '0000-00-00', 0),
(1061, 'Yash Samar', 'Mr. Rajeev Samar', '', '2004-06-30', 'Shitla Mata Mandir Gali, Rajnagar, Rajsamand', '', 0, 11, 2, '', '', 'IMG_1027.JPG', '0000-00-00', 0),
(1062, 'Yashaswi Shrimali', 'Mr. Yogesh Shrimali', '', '2004-07-29', 'Vinayak Vihar, Behind Police Station', '', 0, 11, 2, '', '', 'IMG_1025.JPG', '0000-00-00', 0),
(1063, 'Bhavik Jain', 'Mr. Lokesh Jain', '', '2004-09-22', 'Lal Baag, Ntd.', '', 0, 11, 2, '', '', 'IMG_0853.JPG', '0000-00-00', 0),
(1064, 'Shourya Pratap Singh', 'Mr. Narendra Singh Rathore', '', '2004-09-27', 'H-30, Shakti Nagar, Near R.K. Hospital', '', 0, 11, 2, '', '', 'IMG_0855.JPG', '0000-00-00', 0),
(1065, 'Darshan Sanadhya', 'Mr. Rahul Sanadhya', '', '2004-02-06', 'Ambawada Akhada, Nathdwara', '', 0, 11, 2, '', '', 'IMG_0850.JPG', '0000-00-00', 0),
(1066, 'Garvita Paliwal', 'Mr. Vijay Paliwal', '', '2004-12-27', 'Kothariya Road, Shiv Nagar, Nathdwara', '', 0, 11, 2, '', '', 'IMG_0862.JPG', '0000-00-00', 0),
(1067, 'Madhuram Sanadhya', 'Mr. Balendu Sanadhya', '', '2004-05-01', 'Sundar Vilas, Nathdwara', '', 0, 11, 2, '', '', 'IMG_0849.JPG', '0000-00-00', 0),
(1068, 'Manay Purohit', 'Mr. Madan Purohit', '', '2004-08-12', 'Upli Oden, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1031.JPG', '0000-00-00', 0),
(1069, 'Sneha Sanadhya', 'Mr. Harish  Kumar Sanadhya', '', '2004-09-25', 'Nakoda Nagar, Lal Baag, Nathdwara', '', 0, 11, 2, '', '', 'IMG_0860.JPG', '0000-00-00', 0),
(1070, 'Sujal Agrawal', 'Mr. Rakesh Agrawal', '', '2004-04-15', 'Sundar Colony, Rajsamand', '', 0, 11, 2, '', '', 'IMG_0861.JPG', '0000-00-00', 0),
(1071, 'Veerendra Singh Jhala', 'Mr. Mahipal Singh Jhala', '', '2004-01-05', 'C, 19 Sukhadia Nagar, Nathdwara', '', 0, 11, 2, '', '', 'IMG_0848.JPG', '0000-00-00', 0),
(1072, 'Vivek Lakhotia', 'Mr. Mukesh Lakhotia', '', '2004-05-20', 'Lakhotia Gali, Chopati, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1030.JPG', '0000-00-00', 0),
(1073, 'Harshit Kabra', 'Mr. Nirmal Kabra', '', '2005-05-14', 'Kabra Tawer, Sukhadia Nagar', '', 0, 11, 2, '', '', 'IMG_1028.JPG', '0000-00-00', 0),
(1074, 'Vedant Gurjar', 'Mr. Kamal Gurjar', '', '2004-02-02', 'Goshala Road, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1032.JPG', '0000-00-00', 0),
(1075, 'Harshal Soni', 'Mr. Rajesh Soni', '', '2004-02-04', 'Bohara Bazar, Nathdwara', '', 0, 11, 2, '', '', 'IMG_1026.JPG', '0000-00-00', 0);

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
(58, 1, 1, '', 0, 1, 5, '1200', '0.42', 'Detained in Class Pre Nursery', 'Fail', 1);

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
(2, 1, 1, 1, 0, 0),
(3, 1, 1, 2, 0, 0),
(4, 1, 1, 3, 0, 0),
(5, 1, 1, 4, 0, 0),
(6, 1, 1, 5, 0, 0),
(7, 1, 1, 6, 0, 0),
(8, 1, 1, 0, 2, 13),
(9, 7, 1, 1, 0, 0);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `exam_category_type`
--
ALTER TABLE `exam_category_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1076;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `subject_allocation`
--
ALTER TABLE `subject_allocation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
