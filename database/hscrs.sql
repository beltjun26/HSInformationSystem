-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2017 at 07:41 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hscrs`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountability`
--

CREATE TABLE `accountability` (
  `accountability_name` varchar(60) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(60) NOT NULL,
  `LRN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(60) NOT NULL,
  `status` varchar(60) NOT NULL,
  `date_borrowed` date NOT NULL,
  `LRN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE `grade` (
  `grade_name` varchar(60) NOT NULL,
  `LRN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `section_name` varchar(60) NOT NULL,
  `class_room` varchar(60) NOT NULL,
  `attribute` varchar(60) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `LRN` int(11) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `middle_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `mother_fullname` varchar(60) NOT NULL,
  `father_fullname` varchar(60) NOT NULL,
  `contact_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teach`
--

CREATE TABLE `teach` (
  `section_name` varchar(60) NOT NULL,
  `subject` varchar(60) NOT NULL,
  `time` time NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `grade_name` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `middle_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `position` varchar(60) NOT NULL,
  `address` varchar(60) NOT NULL,
  `contact_number` int(11) NOT NULL,
  `email_address` varchar(60) NOT NULL,
  `LRN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountability`
--
ALTER TABLE `accountability`
  ADD KEY `LRN` (`LRN`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `LRN` (`LRN`);

--
-- Indexes for table `grade`
--
ALTER TABLE `grade`
  ADD KEY `LRN` (`LRN`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`LRN`);

--
-- Indexes for table `teach`
--
ALTER TABLE `teach`
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `email_address` (`email_address`),
  ADD UNIQUE KEY `address` (`address`),
  ADD KEY `LRN` (`LRN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
