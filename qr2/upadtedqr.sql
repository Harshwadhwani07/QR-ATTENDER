-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2021 at 01:24 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upadtedqr`
--

-- --------------------------------------------------------

--
-- Table structure for table `dbms_attendance`
--

CREATE TABLE `dbms_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `dbms_attendance`
--
DELIMITER $$
CREATE TRIGGER `deldbms_trigger` BEFORE DELETE ON `dbms_attendance` FOR EACH ROW insert into deldbms set dtime=now(),name=old.student_name
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `dccn_attendance`
--

CREATE TABLE `dccn_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `dccn_attendance`
--
DELIMITER $$
CREATE TRIGGER `deldccn_trigger` BEFORE DELETE ON `dccn_attendance` FOR EACH ROW insert into deldccn set dtime =now(),name=old.student_name
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `deldbms`
--

CREATE TABLE `deldbms` (
  `sr_no` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deldccn`
--

CREATE TABLE `deldccn` (
  `sr_no` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deldms`
--

CREATE TABLE `deldms` (
  `sr_no` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `delmp`
--

CREATE TABLE `delmp` (
  `sr_no` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deltc`
--

CREATE TABLE `deltc` (
  `sr_no` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `delteacher`
--

CREATE TABLE `delteacher` (
  `sr_no` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `deltoc`
--

CREATE TABLE `deltoc` (
  `sr_no` int(11) NOT NULL,
  `dtime` datetime DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dms_attendance`
--

CREATE TABLE `dms_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `dms_attendance`
--
DELIMITER $$
CREATE TRIGGER `deldms_trigger` BEFORE DELETE ON `dms_attendance` FOR EACH ROW insert into deldms set dtime =now(),name=old.student_name
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `mp_attendance`
--

CREATE TABLE `mp_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `mp_attendance`
--
DELIMITER $$
CREATE TRIGGER `delmp_trigger` BEFORE DELETE ON `mp_attendance` FOR EACH ROW insert into delmp set dtime =now(),name=old.student_name
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `tc_attendance`
--

CREATE TABLE `tc_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `tc_attendance`
--
DELIMITER $$
CREATE TRIGGER `deltc_trigger` BEFORE DELETE ON `tc_attendance` FOR EACH ROW insert into deltc set dtime =now(),name=old.student_name
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teach_id` int(11) NOT NULL,
  `teach_name` varchar(40) DEFAULT NULL,
  `sub_name` varchar(40) DEFAULT NULL,
  `date` varchar(15) DEFAULT NULL,
  `qrgen_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teach_id`, `teach_name`, `sub_name`, `date`, `qrgen_time`) VALUES
(101, 'jyoti', 'dbms', '01-03-2021', '2021-07-16 09:57:34'),
(102, 'vinesh kumar', 'toc', '01-04-2021', '2021-07-16 09:58:09');

--
-- Triggers `teacher`
--
DELIMITER $$
CREATE TRIGGER `delteach_trigger` BEFORE DELETE ON `teacher` FOR EACH ROW insert into delteacher set dtime =now(),name=old.teach_name
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `toc_attendance`
--

CREATE TABLE `toc_attendance` (
  `student_name` varchar(40) DEFAULT NULL,
  `roll_no` varchar(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Triggers `toc_attendance`
--
DELIMITER $$
CREATE TRIGGER `deltoc_trigger` BEFORE DELETE ON `toc_attendance` FOR EACH ROW insert into deltoc set dtime =now(),name=old.student_name
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbms_attendance`
--
ALTER TABLE `dbms_attendance`
  ADD PRIMARY KEY (`roll_no`,`date`);

--
-- Indexes for table `dccn_attendance`
--
ALTER TABLE `dccn_attendance`
  ADD PRIMARY KEY (`roll_no`,`date`);

--
-- Indexes for table `deldbms`
--
ALTER TABLE `deldbms`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `deldccn`
--
ALTER TABLE `deldccn`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `deldms`
--
ALTER TABLE `deldms`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `delmp`
--
ALTER TABLE `delmp`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `deltc`
--
ALTER TABLE `deltc`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `delteacher`
--
ALTER TABLE `delteacher`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `deltoc`
--
ALTER TABLE `deltoc`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `dms_attendance`
--
ALTER TABLE `dms_attendance`
  ADD PRIMARY KEY (`roll_no`,`date`);

--
-- Indexes for table `mp_attendance`
--
ALTER TABLE `mp_attendance`
  ADD PRIMARY KEY (`roll_no`,`date`);

--
-- Indexes for table `tc_attendance`
--
ALTER TABLE `tc_attendance`
  ADD PRIMARY KEY (`roll_no`,`date`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teach_id`);

--
-- Indexes for table `toc_attendance`
--
ALTER TABLE `toc_attendance`
  ADD PRIMARY KEY (`roll_no`,`date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `deldbms`
--
ALTER TABLE `deldbms`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deldccn`
--
ALTER TABLE `deldccn`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deldms`
--
ALTER TABLE `deldms`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delmp`
--
ALTER TABLE `delmp`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deltc`
--
ALTER TABLE `deltc`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delteacher`
--
ALTER TABLE `delteacher`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deltoc`
--
ALTER TABLE `deltoc`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teach_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
