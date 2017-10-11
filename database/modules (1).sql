-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2017 at 08:32 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_udaipur_2017-2018`
--

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
(4, ' Subject-Mapping', 'Master', 'fa fa-book', '', '', 'cls_sub.php', 'fa fa-book ', '', '', 8),
(5, ' Assign Max Marks', 'Master', 'fa fa-book', '', '', 'max_marks.php', 'fa fa-male', '', '', 14),
(7, ' Assign-Elective', 'Master', 'fa fa-book', '', '', 'elective.php', 'fa fa-bar-chart-o', '', '', 9),
(8, ' Add', 'Student Register', 'fa fa-child', '', '', 'student_reg.php', 'fa fa-user', '', '', 4),
(9, ' Download Excel', ' Marks', 'fa fa-edit', '', '', 'marks.php', 'fa fa-picture-o ', '', '', 3),
(10, 'Upload Excel', ' Marks', 'fa fa-edit', '', '', 'upload_marks.php', 'fa fa-thumbs-o-up ', '', '', 4),
(11, 'Marksheet View', ' Marks', 'fa fa-edit', '', '', 'marksheet.php', 'fa fa-picture-o ', '', '', 5),
(12, ' Edit Class Wise', ' Marks', 'fa fa-edit', '', '', 'number_view.php', 'fa fa-ticket ', '', '', 6),
(15, 'Activate Exam', 'Master', 'fa fa-book', '', '', 'term_block.php', 'fa fa-eye ', '', '', 17),
(16, ' Add', ' Faculty', 'fa fa-group', '', '', 'register.php', 'fa \nfa-check-square-o ', '', '', 5),
(18, 'View', ' Faculty', 'fa fa-group', '', '', 'staff_view.php', 'fa fa-level-up', '', '', 6),
(19, ' Password', ' Settings', 'fa fa-gears', '', '', 'password.php', 'fa fa-lock', '', '', 6),
(20, 'User Privileges', ' Settings', 'fa fa-gears', '', '', 'user.php', '', '', '', 7),
(21, 'Exam Mapping', 'Master', 'fa fa-book', '', '', 'assign_mark.php', '', '', '', 13),
(22, ' View', 'Student Register', 'fa fa-child', '', '', 'student_updt.php', 'fa fa-book', '', '', 5),
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
(42, 'Category', 'Master', 'fa fa-book', '', '', 'master_exam_category.php', '', '', '', 11),
(43, 'Category Type', 'Master', 'fa fa-book', '', '', 'master_exam_category_type.php', '', '', '', 12),
(44, 'Term', 'Master', 'fa fa-book', '', '', 'master_term.php', '', '', '', 10),
(45, 'Architecture', 'Master', 'fa fa-book', '', '', 'architecture.php', '', '', '', 15),
(46, 'Add Class', 'Master', 'fa fa-book', '', '', 'master_class.php', '', '', '', 2),
(47, 'Grade', 'Master', 'fa fa-book', '', '', 'master_grade.php', '', '', '', 16),
(48, 'Subject', 'Master', 'fa fa-book', '', '', 'master_subject.php', '', '', '', 5),
(50, 'Download', 'Health Status', 'fa fa-user-md', '', '', 'helth.php', '', '', '', 8),
(51, 'Upload', 'Health Status', 'fa fa-user-md', '', '', 'upload_health.php', '', '', '', 9),
(52, 'Edit', 'Health Status', 'fa fa-user-md', '', '', 'health_view.php', '', '', '', 10),
(53, ' Delete', ' Attendance', 'fa fa-gavel', '', '', 'remove_attendance.php', 'fa fa-warning', '', '', 10),
(54, 'Duty Charts', ' Faculty', 'fa fa-group', '', '', 'deuty_chart.php', 'fa \r\nfa-check-square-o ', '', '', 5),
(55, 'Roll No Allocation', 'Student Register', 'fa fa-child', '', '', 'roll_no_allocation.php', 'fa fa-user', '', '', 4),
(56, 'Time Table', 'Report', 'fa fa-file', '', '', 'time_table.php', '', '', '', 13),
(57, 'Roll No', 'Report', 'fa fa-file', '', '', 'roll_no.php', '', '', '', 14),
(58, 'Seating Arrangement', 'Report', 'fa fa-file', '', '', 'seat_arang.php', '', '', '', 15),
(59, 'Cross Class List', 'Report', 'fa fa-file', '', '', 'cross_class.php', '', '', '', 16),
(60, 'Cross Section List', 'Report', 'fa fa-file', '', '', 'cross_section.php', '', '', '', 17),
(61, 'Attendance', 'Report', 'fa fa-file', '', '', 'attendance_report.php', '', '', '', 18),
(62, 'Change section & Roll No', 'Student Register', 'fa fa-child', '', '', 'esit_student_section.php', 'fa fa-user', '', '', 4),
(63, 'Grade Subject', 'Master', 'fa fa-book', '', '', 'grade_subject.php', '', '', '', 7),
(64, 'Sub Subject', 'Master', 'fa fa-book', '', '', 'master_sub_subject.php', '', '', '', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
