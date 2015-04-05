-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2015 at 11:02 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE IF NOT EXISTS `classes` (
  `class_id` varchar(8) NOT NULL,
  `class` varchar(50) NOT NULL,
  `dept_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`class_id`, `class`, `dept_id`) VALUES
('BA103', 'bachelor of architecture', 103),
('BT101', 'B.Tech', 101),
('BT102', 'B.Tech', 102);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
`dept_id` int(3) NOT NULL,
  `department` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `department`) VALUES
(101, 'department of computer science and engineering'),
(102, 'department of electronics engineering'),
(103, 'department of architecture'),
(104, 'department of physics');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `roll no` varchar(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `class_id` varchar(8) NOT NULL,
  `section` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`roll no`, `name`, `password`, `class_id`, `section`) VALUES
('2013CSA1001', 'AAKASH SINGH RATHORE', 'f84de1a6b06c34f8cc945d8acb67080c', 'BT101', 'a'),
('2013csa1002', 'noname', 'a8342cd3c1489d89bc3148c22682b6cd', 'BA103', 'a'),
('2013csa1003', 'aayush kohli', '4138f75dd0815108208a7304851ec995', 'BA102', 'b'),
('2013CSA1020', 'AMIT CHAWLA', '7dd5a16fffc9d0c2de4756004d2d4025', 'BT102', 'a'),
('2013CSA1021', 'AMIT MAHEY', 'cd14b7d83ddd017a3b283b8658b09a87', 'BA103', 'b'),
('2013csa1051', 'mayank', '4ac28374a916df91024cf0a08b25671b', 'BT101', 'b'),
('2013csa1062', 'himanshu gupta', 'fdd587d1b2d8c4e898971bb274242682', 'BT102', 'c');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `sub_id` varchar(6) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `teacher_id` varchar(5) NOT NULL,
  `class_id` varchar(8) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `subject`, `teacher_id`, `class_id`, `semester`) VALUES
('CSL240', 'Operating System', 'jsb', 'BT101', 2),
('CSL240', 'Operating System', 'jkm', 'BT104', 4),
('ECL295', 'electronics', 'skm', 'BT102', 1),
('ECL296', 'electrical', 'mpk', 'BT102', 1),
('ENL201', 'communication skills', 'mpk', 'BA103', 3);

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE IF NOT EXISTS `submissions` (
  `id` varchar(21) NOT NULL,
  `topic_id` varchar(10) NOT NULL,
  `rollno` varchar(11) NOT NULL,
  `teacher_id` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `file` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `topic_id`, `rollno`, `teacher_id`, `date`, `file`) VALUES
('2013CSA1001csl_os', 'csl_os', '2013CSA1001', 'mpk', '2015-03-14', '../submissions/department of computer science and engineering/B.Tech/sem 2/CSL240/operating system/'),
('2013csa1002enl_presen', 'enl_presen', '2013csa1002', 'mpk', '2015-03-14', '../submissions/department of architecture/bachelor of architecture/sem 3/ENL201/skills of presentation/'),
('2013csa1020102BT102EC', '102BT102EC', '2013csa1020', 'mpk', '2015-04-05', '../submissions/department of electronics engineering/B.Tech/sem 1/ECL296/section a/wires/'),
('2013csa1020ecl_wires', 'ecl_wires', '2013csa1020', 'rjn', '2015-04-04', '../submissions/department of electronics engineering/B.Tech/sem 1/ECL296/wires/'),
('2013CSA1021enl_presen', 'enl_presen', '2013CSA1021', 'mpk', '2015-03-14', '../submissions/department of architecture/bachelor of architecture/sem 3/ENL201/skills of presentation/'),
('2013csa1051csl_os', 'csl_os', '2013csa1051', 'mpk', '2015-03-14', '../submissions/department of computer science and engineering/B.Tech/sem 2/CSL240/operating system/'),
('2013csa1062ecl_wires', 'ecl_wires', '2013csa1062', 'rjn', '2015-03-14', '../submissions/department of electronics engineering/B.Tech/sem 1/ECL296/wires/');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE IF NOT EXISTS `teachers` (
  `id` varchar(5) NOT NULL,
  `teacher` varchar(30) NOT NULL,
  `dept_id` varchar(5) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `teacher`, `dept_id`, `password`) VALUES
('MPK', 'manpreet kaur', 'DCSE', '9ee8ed09d9c77dbc444414b1c6793747'),
('SKM', 'sukti sandu', 'DCSE', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE IF NOT EXISTS `topics` (
  `topic_id` varchar(10) NOT NULL,
  `topic` varchar(30) NOT NULL,
  `sub_id` varchar(6) NOT NULL,
  `due_date` date NOT NULL,
  `filetype` varchar(40) NOT NULL DEFAULT 'docx',
  `class_id` varchar(8) NOT NULL,
  `section` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topic_id`, `topic`, `sub_id`, `due_date`, `filetype`, `class_id`, `section`) VALUES
('102BT102EC', 'wires', 'ECL296', '2015-06-15', 'doc/docx', 'BT102', 'A'),
('csl_os', 'operating system', 'CSL240', '2015-06-24', 'docx', 'BT101', '0'),
('enl_presen', 'skills of presentation', 'ENL201', '2015-05-15', 'docx', 'BA103', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
 ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
 ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
 ADD PRIMARY KEY (`roll no`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
 ADD PRIMARY KEY (`sub_id`,`class_id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
 ADD PRIMARY KEY (`topic_id`,`sub_id`,`class_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
MODIFY `dept_id` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=105;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
