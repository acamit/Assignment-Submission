-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2015 at 06:18 PM
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
('BT101', 'B.Tech', 101),
('BT102', 'B.Tech', 102),
('MC101', 'M.C.A', 101);

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

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE IF NOT EXISTS `subjects` (
  `sub_id` varchar(6) NOT NULL,
  `subject` varchar(70) NOT NULL,
  `teacher_id` varchar(5) NOT NULL,
  `class_id` varchar(8) NOT NULL,
  `semester` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`sub_id`, `subject`, `teacher_id`, `class_id`, `semester`) VALUES
('CSL242', 'Microprocessor and assembly language programming', 'jsb', 'BT101', 4);

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
('jsb', 'Jaspreet sing baath', '101', 'aed32f5fffcfe750aaecdfca61773909');

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
