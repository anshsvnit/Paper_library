-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2017 at 06:12 AM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nitsurat_Papers_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `appchem3`
--

CREATE TABLE IF NOT EXISTS `appchem3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appchem4`
--

CREATE TABLE IF NOT EXISTS `appchem4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appchem5`
--

CREATE TABLE IF NOT EXISTS `appchem5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appchem6`
--

CREATE TABLE IF NOT EXISTS `appchem6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appchem7`
--

CREATE TABLE IF NOT EXISTS `appchem7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appchem8`
--

CREATE TABLE IF NOT EXISTS `appchem8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appchem9`
--

CREATE TABLE IF NOT EXISTS `appchem9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appchem10`
--

CREATE TABLE IF NOT EXISTS `appchem10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath3`
--

CREATE TABLE IF NOT EXISTS `appmath3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath4`
--

CREATE TABLE IF NOT EXISTS `appmath4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath5`
--

CREATE TABLE IF NOT EXISTS `appmath5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath6`
--

CREATE TABLE IF NOT EXISTS `appmath6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath7`
--

CREATE TABLE IF NOT EXISTS `appmath7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath8`
--

CREATE TABLE IF NOT EXISTS `appmath8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath9`
--

CREATE TABLE IF NOT EXISTS `appmath9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appmath10`
--

CREATE TABLE IF NOT EXISTS `appmath10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy3`
--

CREATE TABLE IF NOT EXISTS `appphy3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy4`
--

CREATE TABLE IF NOT EXISTS `appphy4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy5`
--

CREATE TABLE IF NOT EXISTS `appphy5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy6`
--

CREATE TABLE IF NOT EXISTS `appphy6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy7`
--

CREATE TABLE IF NOT EXISTS `appphy7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy8`
--

CREATE TABLE IF NOT EXISTS `appphy8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy9`
--

CREATE TABLE IF NOT EXISTS `appphy9` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `appphy10`
--

CREATE TABLE IF NOT EXISTS `appphy10` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `B.Tech`
--

CREATE TABLE IF NOT EXISTS `B.Tech` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `Year` varchar(15) NOT NULL,
  `Semester` varchar(15) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Sem_table_name` varchar(15) NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data for table `B.Tech`
--

INSERT INTO `B.Tech` (`_id`, `Year`, `Semester`, `Department`, `Sem_table_name`) VALUES
(1, '2nd Year', '3', 'Computer Engineering', 'comps3'),
(2, '2nd Year', '4', 'Computer Engineering', 'comps4'),
(3, '3rd Year', '5', 'Computer Engineering', 'comps5'),
(4, '3rd Year', '6', 'Computer Engineering', 'comps6'),
(5, '4th Year', '7', 'Computer Engineering', 'comps7'),
(6, '4th Year', '8', 'Computer Engineering', 'comps8'),
(7, '2nd Year', '3', 'Chemical Engineering', 'chem3'),
(8, '2nd Year', '4', 'Chemical Engineering', 'chem4'),
(9, '3rd Year', '5', 'Chemical Engineering', 'chem5'),
(10, '3rd Year', '6', 'Chemical Engineering', 'chem6'),
(11, '4th Year', '7', 'Chemical Engineering', 'chem7'),
(12, '4th Year', '8', 'Chemical Engineering', 'chem8'),
(13, '2nd Year', '3', 'Civil Engineering', 'civil3'),
(14, '2nd Year', '4', 'Civil Engineering', 'civil4'),
(15, '3rd Year', '5', 'Civil Engineering', 'civil5'),
(16, '3rd Year', '6', 'Civil Engineering', 'civil6'),
(17, '4th Year', '7', 'Civil Engineering', 'civil7'),
(18, '4th Year', '8', 'Civil Engineering', 'civil8'),
(19, '2nd Year', '3', 'Electrical Engineering', 'ele3'),
(20, '2nd Year', '4', 'Electrical Engineering', 'ele4'),
(21, '3rd Year', '5', 'Electrical Engineering', 'ele5'),
(22, '3rd Year', '6', 'Electrical Engineering', 'ele6'),
(23, '4th Year', '7', 'Electrical Engineering', 'ele7'),
(24, '4th Year', '8', 'Electrical Engineering', 'ele8'),
(25, '2nd Year', '3', 'Electronics and Communication Engineering', 'ec3'),
(26, '2nd Year', '4', 'Electronics and Communication Engineering', 'ec4'),
(27, '3rd Year', '5', 'Electronics and Communication Engineering', 'ec5'),
(28, '3rd Year', '6', 'Electronics and Communication Engineering', 'ec6'),
(29, '4th Year', '7', 'Electronics and Communication Engineering', 'ec7'),
(30, '4th Year', '8', 'Electronics and Communication Engineering', 'ec8'),
(31, '2nd Year', '3', 'Mechanical Engineering', 'mech3'),
(32, '2nd Year', '4', 'Mechanical Engineering', 'mech4'),
(33, '3rd Year', '5', 'Mechanical Engineering', 'mech5'),
(34, '3rd Year', '6', 'Mechanical Engineering', 'mech6'),
(35, '4th Year', '7', 'Mechanical Engineering', 'mech7'),
(36, '4th Year', '8', 'Mechanical Engineering', 'mech8'),
(37, '1st Year', '1', 'btech1', 'btech1draw'),
(38, '1st Year', '2', 'btech1', 'btech1work');

-- --------------------------------------------------------

--
-- Table structure for table `btech1draw`
--

CREATE TABLE IF NOT EXISTS `btech1draw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `btech1work`
--

CREATE TABLE IF NOT EXISTS `btech1work` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chem3`
--

CREATE TABLE IF NOT EXISTS `chem3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chem4`
--

CREATE TABLE IF NOT EXISTS `chem4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chem5`
--

CREATE TABLE IF NOT EXISTS `chem5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chem6`
--

CREATE TABLE IF NOT EXISTS `chem6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chem7`
--

CREATE TABLE IF NOT EXISTS `chem7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `chem8`
--

CREATE TABLE IF NOT EXISTS `chem8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `civil3`
--

CREATE TABLE IF NOT EXISTS `civil3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `civil4`
--

CREATE TABLE IF NOT EXISTS `civil4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `civil5`
--

CREATE TABLE IF NOT EXISTS `civil5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `civil6`
--

CREATE TABLE IF NOT EXISTS `civil6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `civil7`
--

CREATE TABLE IF NOT EXISTS `civil7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `civil8`
--

CREATE TABLE IF NOT EXISTS `civil8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comps3`
--

CREATE TABLE IF NOT EXISTS `comps3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comps4`
--

CREATE TABLE IF NOT EXISTS `comps4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comps5`
--

CREATE TABLE IF NOT EXISTS `comps5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comps6`
--

CREATE TABLE IF NOT EXISTS `comps6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comps7`
--

CREATE TABLE IF NOT EXISTS `comps7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `comps8`
--

CREATE TABLE IF NOT EXISTS `comps8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `duplicates`
--

CREATE TABLE IF NOT EXISTS `duplicates` (
  `Id` int(6) NOT NULL AUTO_INCREMENT,
  `Year` varchar(30) NOT NULL,
  `Semester` varchar(30) NOT NULL,
  `Department` varchar(30) NOT NULL,
  `subject` varchar(30) NOT NULL,
  `yearofExam` varchar(6) NOT NULL,
  `exam` varchar(15) NOT NULL,
  `file_location` varchar(80) NOT NULL,
  `Remarks` varchar(50) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ec3`
--

CREATE TABLE IF NOT EXISTS `ec3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ec4`
--

CREATE TABLE IF NOT EXISTS `ec4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ec5`
--

CREATE TABLE IF NOT EXISTS `ec5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ec6`
--

CREATE TABLE IF NOT EXISTS `ec6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ec7`
--

CREATE TABLE IF NOT EXISTS `ec7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ec8`
--

CREATE TABLE IF NOT EXISTS `ec8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ele3`
--

CREATE TABLE IF NOT EXISTS `ele3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ele4`
--

CREATE TABLE IF NOT EXISTS `ele4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ele5`
--

CREATE TABLE IF NOT EXISTS `ele5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ele6`
--

CREATE TABLE IF NOT EXISTS `ele6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ele7`
--

CREATE TABLE IF NOT EXISTS `ele7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `ele8`
--

CREATE TABLE IF NOT EXISTS `ele8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `M.Sc.`
--

CREATE TABLE IF NOT EXISTS `M.Sc.` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `Year` varchar(15) NOT NULL,
  `Semester` varchar(15) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Sem_table_name` varchar(15) NOT NULL,
  PRIMARY KEY (`_id`),
  KEY `Year` (`Year`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `M.Sc.`
--

INSERT INTO `M.Sc.` (`_id`, `Year`, `Semester`, `Department`, `Sem_table_name`) VALUES
(1, '2nd Year', '3', 'Applied Physics', 'appphy3'),
(2, '2nd Year', '4', 'Applied Physics', 'appphy4'),
(3, '3rd Year', '5', 'Applied Physics', 'appphy5'),
(4, '3rd Year', '6', 'Applied Physics', 'appphy6'),
(5, '4th Year', '7', 'Applied Physics', 'appphy7'),
(6, '4th Year', '8', 'Applied Physics', 'appphy8'),
(7, '5th Year', '9', 'Applied Physics', 'appphy9'),
(8, '5th Year', '10', 'Applied Physics', 'appphy10'),
(9, '2nd Year', '3', 'Applied Chemistry', 'appchem3'),
(10, '2nd Year', '4', 'Applied Chemistry', 'appchem4'),
(11, '3rd Year', '5', 'Applied Chemistry', 'appchem5'),
(12, '3rd Year', '6', 'Applied Chemistry', 'appchem6'),
(13, '4th Year', '7', 'Applied Chemistry', 'appchem7'),
(14, '4th Year', '8', 'Applied Chemistry', 'appchem8'),
(15, '5th Year', '9', 'Applied Chemistry', 'appchem9'),
(16, '5th Year', '10', 'Applied Chemistry', 'appchem10'),
(17, '2nd Year', '3', 'Applied Mathematics', 'appmath3'),
(18, '2nd Year', '4', 'Applied Mathematics', 'appmath4'),
(19, '3rd Year', '5', 'Applied Mathematics', 'appmath5'),
(20, '3rd Year', '6', 'Applied Mathematics', 'appmath6'),
(21, '4th Year', '7', 'Applied Mathematics', 'appmath7'),
(22, '4th Year', '8', 'Applied Mathematics', 'appmath8'),
(23, '5th Year', '9', 'Applied Mathematics', 'appmath9'),
(24, '5th Year', '10', 'Applied Mathematics', 'appmath10'),
(25, '1st Year', '1', 'msc1', 'msc1sem1'),
(26, '1st Year', '2', 'msc2', 'msc1sem2');

-- --------------------------------------------------------

--
-- Table structure for table `M.Tech`
--

CREATE TABLE IF NOT EXISTS `M.Tech` (
  `_id` int(11) NOT NULL AUTO_INCREMENT,
  `Year` varchar(15) NOT NULL,
  `Semester` varchar(15) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Sem_table_name` varchar(15) NOT NULL,
  PRIMARY KEY (`_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `M.Tech`
--

INSERT INTO `M.Tech` (`_id`, `Year`, `Semester`, `Department`, `Sem_table_name`) VALUES
(1, '1st Year', '1', 'Computer Engineering', 'Mcomps1'),
(2, '1st Year', '2', 'Computer Engineering', 'Mcomps2'),
(3, '2nd Year', '3', 'Computer Engineering', 'Mcomps3'),
(4, '2nd Year', '4', 'Computer Engineering', 'Mcomps4'),
(5, '1st Year', '1', 'Chemical Engineering', 'Mchem1'),
(6, '1st Year', '2', 'Chemical Engineering', 'Mchem2'),
(7, '2nd Year', '3', 'Chemical Engineering', 'Mchem3'),
(8, '2nd Year', '4', 'Chemical Engineering', 'Mchem4'),
(9, '1st Year', '1', 'Civil Engineering', 'Mcivil1'),
(10, '1st Year', '2', 'Civil Engineering', 'Mcivil2'),
(11, '2nd Year', '3', 'Civil Engineering', 'Mcivil3'),
(12, '2nd Year', '4', 'Civil Engineering', 'Mcivil4'),
(13, '1st Year', '1', 'Electrical Engineering', 'Mele1'),
(14, '1st Year', '2', 'Electrical Engineering', 'Mele2'),
(15, '2nd Year', '3', 'Electrical Engineering', 'Mele3'),
(16, '2nd Year', '4', 'Electrical Engineering', 'Mele4'),
(17, '1st Year', '1', 'Electronics and Communication Engineering', 'Mec1'),
(18, '1st Year', '2', 'Electronics and Communication Engineering', 'Mec2'),
(19, '2nd Year', '3', 'Electronics and Communication Engineering', 'Mec3'),
(20, '2nd Year', '4', 'Electronics and Communication Engineering', 'Mec4'),
(21, '1st Year', '1', 'Mechanical Engineering', 'Mmech1'),
(22, '1st Year', '2', 'Mechanical Engineering', 'Mmech2'),
(23, '2nd Year', '3', 'Mechanical Engineering', 'Mmech3'),
(24, '2nd Year', '4', 'Mechanical Engineering', 'Mmech4');

-- --------------------------------------------------------

--
-- Table structure for table `Mchem1`
--

CREATE TABLE IF NOT EXISTS `Mchem1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mchem2`
--

CREATE TABLE IF NOT EXISTS `Mchem2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mchem3`
--

CREATE TABLE IF NOT EXISTS `Mchem3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mchem4`
--

CREATE TABLE IF NOT EXISTS `Mchem4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil1`
--

CREATE TABLE IF NOT EXISTS `Mcivil1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil2`
--

CREATE TABLE IF NOT EXISTS `Mcivil2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil3`
--

CREATE TABLE IF NOT EXISTS `Mcivil3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil4`
--

CREATE TABLE IF NOT EXISTS `Mcivil4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps1`
--

CREATE TABLE IF NOT EXISTS `Mcomps1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps2`
--

CREATE TABLE IF NOT EXISTS `Mcomps2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps3`
--

CREATE TABLE IF NOT EXISTS `Mcomps3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps4`
--

CREATE TABLE IF NOT EXISTS `Mcomps4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mec1`
--

CREATE TABLE IF NOT EXISTS `Mec1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mec2`
--

CREATE TABLE IF NOT EXISTS `Mec2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mec3`
--

CREATE TABLE IF NOT EXISTS `Mec3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mec4`
--

CREATE TABLE IF NOT EXISTS `Mec4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mech3`
--

CREATE TABLE IF NOT EXISTS `mech3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mech4`
--

CREATE TABLE IF NOT EXISTS `mech4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mech5`
--

CREATE TABLE IF NOT EXISTS `mech5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mech6`
--

CREATE TABLE IF NOT EXISTS `mech6` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mech7`
--

CREATE TABLE IF NOT EXISTS `mech7` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mech8`
--

CREATE TABLE IF NOT EXISTS `mech8` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mele1`
--

CREATE TABLE IF NOT EXISTS `Mele1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mele2`
--

CREATE TABLE IF NOT EXISTS `Mele2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mele3`
--

CREATE TABLE IF NOT EXISTS `Mele3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mele4`
--

CREATE TABLE IF NOT EXISTS `Mele4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech1`
--

CREATE TABLE IF NOT EXISTS `Mmech1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech2`
--

CREATE TABLE IF NOT EXISTS `Mmech2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech3`
--

CREATE TABLE IF NOT EXISTS `Mmech3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech4`
--

CREATE TABLE IF NOT EXISTS `Mmech4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `msc1sem1`
--

CREATE TABLE IF NOT EXISTS `msc1sem1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `msc1sem2`
--

CREATE TABLE IF NOT EXISTS `msc1sem2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL,
  `Uploader` varchar(30) NOT NULL,
  `accepted` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
