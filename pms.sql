-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2021 at 12:34 PM
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
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `c_id` int(10) NOT NULL,
  `c_fname` varchar(20) NOT NULL,
  `c_lname` varchar(20) NOT NULL,
  `c_uname` varchar(20) NOT NULL,
  `c_email` varchar(30) NOT NULL,
  `c_pwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`c_id`, `c_fname`, `c_lname`, `c_uname`, `c_email`, `c_pwd`) VALUES
(1, 'srinivas', 'D A', 'srini98', 'srini@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_maintenance_team`
--

CREATE TABLE `delivery_maintenance_team` (
  `dm_id` int(10) NOT NULL,
  `dm_user_name` varchar(20) NOT NULL,
  `dm_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `delivery_maintenance_team`
--

INSERT INTO `delivery_maintenance_team` (`dm_id`, `dm_user_name`, `dm_password`) VALUES
(1, 'dmteam', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `dep_main_report`
--

CREATE TABLE `dep_main_report` (
  `dmr_id` int(11) NOT NULL,
  `dmr_remarks` int(11) NOT NULL,
  `dmr_status` tinyint(1) NOT NULL,
  `dm_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dep_main_report`
--

INSERT INTO `dep_main_report` (`dmr_id`, `dmr_remarks`, `dmr_status`, `dm_id`, `p_id`) VALUES
(0, 0, 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `development_reports`
--

CREATE TABLE `development_reports` (
  `dv_id` int(11) NOT NULL,
  `dv_remarks` longtext NOT NULL,
  `dv_status` tinyint(1) NOT NULL,
  `d_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `development_reports`
--

INSERT INTO `development_reports` (`dv_id`, `dv_remarks`, `dv_status`, `d_id`, `p_id`) VALUES
(1, 'dv_remarks', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `development_team`
--

CREATE TABLE `development_team` (
  `d_id` int(10) NOT NULL,
  `d_user_name` varchar(20) NOT NULL,
  `d_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `development_team`
--

INSERT INTO `development_team` (`d_id`, `d_user_name`, `d_password`) VALUES
(1, 'dteam', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `p_id` int(10) NOT NULL,
  `p_title` varchar(50) NOT NULL,
  `p_duration` int(11) NOT NULL,
  `p_req` longtext NOT NULL,
  `p_addn_info` longtext NOT NULL,
  `c_id` int(10) NOT NULL,
  `rd_id` int(10) NOT NULL,
  `d_id` int(10) NOT NULL,
  `t_id` int(10) NOT NULL,
  `dm_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`p_id`, `p_title`, `p_duration`, `p_req`, `p_addn_info`, `c_id`, `rd_id`, `d_id`, `t_id`, `dm_id`) VALUES
(2, 'project1', 3, 'p_req', 'p_addn', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rd_reports`
--

CREATE TABLE `rd_reports` (
  `rdr_id` int(10) NOT NULL,
  `rdr_remarks` longtext NOT NULL,
  `rdr_status` tinyint(1) NOT NULL,
  `rd_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rd_reports`
--

INSERT INTO `rd_reports` (`rdr_id`, `rdr_remarks`, `rdr_status`, `rd_id`, `p_id`) VALUES
(1, 'rdr_remarks', 0, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `requirementanalysis_design_team`
--

CREATE TABLE `requirementanalysis_design_team` (
  `rd_id` int(10) NOT NULL,
  `rd_user_name` varchar(20) NOT NULL,
  `rd_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requirementanalysis_design_team`
--

INSERT INTO `requirementanalysis_design_team` (`rd_id`, `rd_user_name`, `rd_password`) VALUES
(1, 'rdteam', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `testing_reports`
--

CREATE TABLE `testing_reports` (
  `tr_id` int(11) NOT NULL,
  `tr_remarks` longtext NOT NULL,
  `tr_status` tinyint(1) NOT NULL,
  `t_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testing_reports`
--

INSERT INTO `testing_reports` (`tr_id`, `tr_remarks`, `tr_status`, `t_id`, `p_id`) VALUES
(1, 'tr_remarks', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `testing_team`
--

CREATE TABLE `testing_team` (
  `t_id` int(10) NOT NULL,
  `t_user_name` varchar(20) NOT NULL,
  `t_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testing_team`
--

INSERT INTO `testing_team` (`t_id`, `t_user_name`, `t_password`) VALUES
(1, 'tteam', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_id` (`c_id`);

--
-- Indexes for table `delivery_maintenance_team`
--
ALTER TABLE `delivery_maintenance_team`
  ADD PRIMARY KEY (`dm_id`);

--
-- Indexes for table `dep_main_report`
--
ALTER TABLE `dep_main_report`
  ADD KEY `dm_id` (`dm_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `development_reports`
--
ALTER TABLE `development_reports`
  ADD PRIMARY KEY (`dv_id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `development_team`
--
ALTER TABLE `development_team`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_user_name` (`d_user_name`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `dm_id` (`dm_id`),
  ADD KEY `d_id` (`d_id`),
  ADD KEY `rd_id` (`rd_id`),
  ADD KEY `t_id` (`t_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `rd_reports`
--
ALTER TABLE `rd_reports`
  ADD PRIMARY KEY (`rdr_id`),
  ADD KEY `p_id` (`p_id`),
  ADD KEY `rd_id` (`rd_id`);

--
-- Indexes for table `requirementanalysis_design_team`
--
ALTER TABLE `requirementanalysis_design_team`
  ADD PRIMARY KEY (`rd_id`);

--
-- Indexes for table `testing_reports`
--
ALTER TABLE `testing_reports`
  ADD PRIMARY KEY (`tr_id`),
  ADD KEY `t_id` (`t_id`),
  ADD KEY `p_id` (`p_id`);

--
-- Indexes for table `testing_team`
--
ALTER TABLE `testing_team`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `c_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_maintenance_team`
--
ALTER TABLE `delivery_maintenance_team`
  MODIFY `dm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `development_reports`
--
ALTER TABLE `development_reports`
  MODIFY `dv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `development_team`
--
ALTER TABLE `development_team`
  MODIFY `d_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rd_reports`
--
ALTER TABLE `rd_reports`
  MODIFY `rdr_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requirementanalysis_design_team`
--
ALTER TABLE `requirementanalysis_design_team`
  MODIFY `rd_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testing_reports`
--
ALTER TABLE `testing_reports`
  MODIFY `tr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testing_team`
--
ALTER TABLE `testing_team`
  MODIFY `t_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dep_main_report`
--
ALTER TABLE `dep_main_report`
  ADD CONSTRAINT `dep_main_report_ibfk_1` FOREIGN KEY (`dm_id`) REFERENCES `delivery_maintenance_team` (`dm_id`),
  ADD CONSTRAINT `dep_main_report_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `projects` (`p_id`);

--
-- Constraints for table `development_reports`
--
ALTER TABLE `development_reports`
  ADD CONSTRAINT `development_reports_ibfk_1` FOREIGN KEY (`d_id`) REFERENCES `development_team` (`d_id`),
  ADD CONSTRAINT `development_reports_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `projects` (`p_id`);

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`dm_id`) REFERENCES `delivery_maintenance_team` (`dm_id`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`d_id`) REFERENCES `development_team` (`d_id`),
  ADD CONSTRAINT `projects_ibfk_3` FOREIGN KEY (`rd_id`) REFERENCES `requirementanalysis_design_team` (`rd_id`),
  ADD CONSTRAINT `projects_ibfk_4` FOREIGN KEY (`t_id`) REFERENCES `testing_team` (`t_id`),
  ADD CONSTRAINT `projects_ibfk_5` FOREIGN KEY (`c_id`) REFERENCES `client` (`c_id`);

--
-- Constraints for table `rd_reports`
--
ALTER TABLE `rd_reports`
  ADD CONSTRAINT `rd_reports_ibfk_1` FOREIGN KEY (`p_id`) REFERENCES `projects` (`p_id`),
  ADD CONSTRAINT `rd_reports_ibfk_2` FOREIGN KEY (`rd_id`) REFERENCES `requirementanalysis_design_team` (`rd_id`);

--
-- Constraints for table `testing_reports`
--
ALTER TABLE `testing_reports`
  ADD CONSTRAINT `testing_reports_ibfk_1` FOREIGN KEY (`t_id`) REFERENCES `testing_team` (`t_id`),
  ADD CONSTRAINT `testing_reports_ibfk_2` FOREIGN KEY (`p_id`) REFERENCES `projects` (`p_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
