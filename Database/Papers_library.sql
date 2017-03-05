-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 31, 2016 at 11:28 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Papers_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `appchem3`
--

CREATE TABLE `appchem3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appchem4`
--

CREATE TABLE `appchem4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appchem5`
--

CREATE TABLE `appchem5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appchem6`
--

CREATE TABLE `appchem6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appchem7`
--

CREATE TABLE `appchem7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appchem8`
--

CREATE TABLE `appchem8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appchem9`
--

CREATE TABLE `appchem9` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appchem10`
--

CREATE TABLE `appchem10` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath3`
--

CREATE TABLE `appmath3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath4`
--

CREATE TABLE `appmath4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath5`
--

CREATE TABLE `appmath5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath6`
--

CREATE TABLE `appmath6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath7`
--

CREATE TABLE `appmath7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath8`
--

CREATE TABLE `appmath8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath9`
--

CREATE TABLE `appmath9` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appmath10`
--

CREATE TABLE `appmath10` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy3`
--

CREATE TABLE `appphy3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy4`
--

CREATE TABLE `appphy4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy5`
--

CREATE TABLE `appphy5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy6`
--

CREATE TABLE `appphy6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy7`
--

CREATE TABLE `appphy7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy8`
--

CREATE TABLE `appphy8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy9`
--

CREATE TABLE `appphy9` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `appphy10`
--

CREATE TABLE `appphy10` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `B.Tech`
--

CREATE TABLE `B.Tech` (
  `_id` int(11) NOT NULL,
  `Year` varchar(15) NOT NULL,
  `Semester` varchar(15) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Sem_table_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem2`
--

CREATE TABLE `chem2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem3`
--

CREATE TABLE `chem3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem4`
--

CREATE TABLE `chem4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem5`
--

CREATE TABLE `chem5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem6`
--

CREATE TABLE `chem6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem7`
--

CREATE TABLE `chem7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chem8`
--

CREATE TABLE `chem8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil2`
--

CREATE TABLE `civil2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil3`
--

CREATE TABLE `civil3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil4`
--

CREATE TABLE `civil4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil5`
--

CREATE TABLE `civil5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil6`
--

CREATE TABLE `civil6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil7`
--

CREATE TABLE `civil7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `civil8`
--

CREATE TABLE `civil8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps1`
--

CREATE TABLE `comps1` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps2`
--

CREATE TABLE `comps2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps3`
--

CREATE TABLE `comps3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps4`
--

CREATE TABLE `comps4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps5`
--

CREATE TABLE `comps5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps6`
--

CREATE TABLE `comps6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps7`
--

CREATE TABLE `comps7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comps8`
--

CREATE TABLE `comps8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec2`
--

CREATE TABLE `ec2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec3`
--

CREATE TABLE `ec3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec4`
--

CREATE TABLE `ec4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec5`
--

CREATE TABLE `ec5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec6`
--

CREATE TABLE `ec6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec7`
--

CREATE TABLE `ec7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec8`
--

CREATE TABLE `ec8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ele2`
--

CREATE TABLE `ele2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ele3`
--

CREATE TABLE `ele3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ele4`
--

CREATE TABLE `ele4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ele5`
--

CREATE TABLE `ele5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ele6`
--

CREATE TABLE `ele6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ele7`
--

CREATE TABLE `ele7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ele8`
--

CREATE TABLE `ele8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `M.Tech`
--

CREATE TABLE `M.Tech` (
   `_id` int(11) NOT NULL,
  `Year` varchar(15) NOT NULL,
  `Semester` varchar(15) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Sem_table_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mchem1`
--

CREATE TABLE `Mchem1` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mchem2`
--

CREATE TABLE `Mchem2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mchem3`
--

CREATE TABLE `Mchem3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mchem4`
--

CREATE TABLE `Mchem4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil1`
--

CREATE TABLE `Mcivil1` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil2`
--

CREATE TABLE `Mcivil2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil3`
--

CREATE TABLE `Mcivil3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcivil4`
--

CREATE TABLE `Mcivil4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps1`
--

CREATE TABLE `Mcomps1` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps2`
--

CREATE TABLE `Mcomps2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps3`
--

CREATE TABLE `Mcomps3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mcomps4`
--

CREATE TABLE `Mcomps4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mec1`
--

CREATE TABLE `Mec1` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mec2`
--

CREATE TABLE `Mec2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mec3`
--

CREATE TABLE `Mec3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mec4`
--

CREATE TABLE `Mec4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech2`
--

CREATE TABLE `mech2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech3`
--

CREATE TABLE `mech3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech4`
--

CREATE TABLE `mech4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech5`
--

CREATE TABLE `mech5` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech6`
--

CREATE TABLE `mech6` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech7`
--

CREATE TABLE `mech7` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mech8`
--

CREATE TABLE `mech8` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mele1`
--

CREATE TABLE `Mele1` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mele2`
--

CREATE TABLE `Mele2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mele3`
--

CREATE TABLE `Mele3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mele4`
--

CREATE TABLE `Mele4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech1`
--

CREATE TABLE `Mmech1` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech2`
--

CREATE TABLE `Mmech2` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech3`
--

CREATE TABLE `Mmech3` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Mmech4`
--

CREATE TABLE `Mmech4` (
  `id` int(11) NOT NULL,
  `subject` varchar(15) NOT NULL,
  `yearofExam` year(4) NOT NULL,
  `exam` varchar(20) NOT NULL,
  `file_location` varchar(60) NOT NULL,
  `Remarks` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `M.Sc.`
--

CREATE TABLE `M.Sc.` (
   `_id` int(11) NOT NULL,
  `Year` varchar(15) NOT NULL,
  `Semester` varchar(15) NOT NULL,
  `Department` varchar(50) NOT NULL,
  `Sem_table_name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Indexes for dumped tables
--

--
-- Indexes for table `appchem3`
--
ALTER TABLE `appchem3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appchem4`
--
ALTER TABLE `appchem4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appchem5`
--
ALTER TABLE `appchem5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appchem6`
--
ALTER TABLE `appchem6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appchem7`
--
ALTER TABLE `appchem7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appchem8`
--
ALTER TABLE `appchem8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appchem9`
--
ALTER TABLE `appchem9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appchem10`
--
ALTER TABLE `appchem10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath3`
--
ALTER TABLE `appmath3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath4`
--
ALTER TABLE `appmath4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath5`
--
ALTER TABLE `appmath5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath6`
--
ALTER TABLE `appmath6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath7`
--
ALTER TABLE `appmath7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath8`
--
ALTER TABLE `appmath8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath9`
--
ALTER TABLE `appmath9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appmath10`
--
ALTER TABLE `appmath10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy3`
--
ALTER TABLE `appphy3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy4`
--
ALTER TABLE `appphy4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy5`
--
ALTER TABLE `appphy5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy6`
--
ALTER TABLE `appphy6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy7`
--
ALTER TABLE `appphy7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy8`
--
ALTER TABLE `appphy8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy9`
--
ALTER TABLE `appphy9`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appphy10`
--
ALTER TABLE `appphy10`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `B.Tech`
--
ALTER TABLE `B.Tech`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `chem2`
--
ALTER TABLE `chem2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chem3`
--
ALTER TABLE `chem3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chem4`
--
ALTER TABLE `chem4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chem5`
--
ALTER TABLE `chem5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chem6`
--
ALTER TABLE `chem6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chem7`
--
ALTER TABLE `chem7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chem8`
--
ALTER TABLE `chem8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil2`
--
ALTER TABLE `civil2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil3`
--
ALTER TABLE `civil3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil4`
--
ALTER TABLE `civil4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil5`
--
ALTER TABLE `civil5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil6`
--
ALTER TABLE `civil6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil7`
--
ALTER TABLE `civil7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `civil8`
--
ALTER TABLE `civil8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps1`
--
ALTER TABLE `comps1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps2`
--
ALTER TABLE `comps2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps3`
--
ALTER TABLE `comps3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps4`
--
ALTER TABLE `comps4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps5`
--
ALTER TABLE `comps5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps6`
--
ALTER TABLE `comps6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps7`
--
ALTER TABLE `comps7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comps8`
--
ALTER TABLE `comps8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec2`
--
ALTER TABLE `ec2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec3`
--
ALTER TABLE `ec3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec4`
--
ALTER TABLE `ec4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec5`
--
ALTER TABLE `ec5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec6`
--
ALTER TABLE `ec6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec7`
--
ALTER TABLE `ec7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ec8`
--
ALTER TABLE `ec8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ele2`
--
ALTER TABLE `ele2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ele3`
--
ALTER TABLE `ele3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ele4`
--
ALTER TABLE `ele4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ele5`
--
ALTER TABLE `ele5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ele6`
--
ALTER TABLE `ele6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ele7`
--
ALTER TABLE `ele7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ele8`
--
ALTER TABLE `ele8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `M.Tech`
--
ALTER TABLE `M.Tech`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `Mchem1`
--
ALTER TABLE `Mchem1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mchem2`
--
ALTER TABLE `Mchem2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mchem3`
--
ALTER TABLE `Mchem3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mchem4`
--
ALTER TABLE `Mchem4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcivil1`
--
ALTER TABLE `Mcivil1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcivil2`
--
ALTER TABLE `Mcivil2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcivil3`
--
ALTER TABLE `Mcivil3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcivil4`
--
ALTER TABLE `Mcivil4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcomps1`
--
ALTER TABLE `Mcomps1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcomps2`
--
ALTER TABLE `Mcomps2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcomps3`
--
ALTER TABLE `Mcomps3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mcomps4`
--
ALTER TABLE `Mcomps4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mec1`
--
ALTER TABLE `Mec1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mec2`
--
ALTER TABLE `Mec2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mec3`
--
ALTER TABLE `Mec3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mec4`
--
ALTER TABLE `Mec4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech2`
--
ALTER TABLE `mech2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech3`
--
ALTER TABLE `mech3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech4`
--
ALTER TABLE `mech4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech5`
--
ALTER TABLE `mech5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech6`
--
ALTER TABLE `mech6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech7`
--
ALTER TABLE `mech7`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mech8`
--
ALTER TABLE `mech8`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mele1`
--
ALTER TABLE `Mele1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mele2`
--
ALTER TABLE `Mele2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mele3`
--
ALTER TABLE `Mele3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mele4`
--
ALTER TABLE `Mele4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mmech1`
--
ALTER TABLE `Mmech1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mmech2`
--
ALTER TABLE `Mmech2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mmech3`
--
ALTER TABLE `Mmech3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Mmech4`
--
ALTER TABLE `Mmech4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `M.Sc.`
--
ALTER TABLE `M.Sc.`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `Year` (`Year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appchem3`
--
ALTER TABLE `appchem3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appchem4`
--
ALTER TABLE `appchem4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appchem5`
--
ALTER TABLE `appchem5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appchem6`
--
ALTER TABLE `appchem6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appchem7`
--
ALTER TABLE `appchem7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appchem8`
--
ALTER TABLE `appchem8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appchem9`
--
ALTER TABLE `appchem9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appchem10`
--
ALTER TABLE `appchem10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath3`
--
ALTER TABLE `appmath3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath4`
--
ALTER TABLE `appmath4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath5`
--
ALTER TABLE `appmath5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath6`
--
ALTER TABLE `appmath6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath7`
--
ALTER TABLE `appmath7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath8`
--
ALTER TABLE `appmath8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath9`
--
ALTER TABLE `appmath9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appmath10`
--
ALTER TABLE `appmath10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy3`
--
ALTER TABLE `appphy3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy4`
--
ALTER TABLE `appphy4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy5`
--
ALTER TABLE `appphy5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy6`
--
ALTER TABLE `appphy6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy7`
--
ALTER TABLE `appphy7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy8`
--
ALTER TABLE `appphy8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy9`
--
ALTER TABLE `appphy9`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `appphy10`
--
ALTER TABLE `appphy10`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `B.Tech`
--
ALTER TABLE `B.Tech`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chem2`
--
ALTER TABLE `chem2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chem3`
--
ALTER TABLE `chem3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chem4`
--
ALTER TABLE `chem4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chem5`
--
ALTER TABLE `chem5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chem6`
--
ALTER TABLE `chem6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chem7`
--
ALTER TABLE `chem7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chem8`
--
ALTER TABLE `chem8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `civil2`
--
ALTER TABLE `civil2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `civil3`
--
ALTER TABLE `civil3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `civil4`
--
ALTER TABLE `civil4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `civil5`
--
ALTER TABLE `civil5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `civil6`
--
ALTER TABLE `civil6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `civil7`
--
ALTER TABLE `civil7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `civil8`
--
ALTER TABLE `civil8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps1`
--
ALTER TABLE `comps1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps2`
--
ALTER TABLE `comps2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps3`
--
ALTER TABLE `comps3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps4`
--
ALTER TABLE `comps4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps5`
--
ALTER TABLE `comps5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps6`
--
ALTER TABLE `comps6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps7`
--
ALTER TABLE `comps7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `comps8`
--
ALTER TABLE `comps8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec2`
--
ALTER TABLE `ec2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec3`
--
ALTER TABLE `ec3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec4`
--
ALTER TABLE `ec4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec5`
--
ALTER TABLE `ec5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec6`
--
ALTER TABLE `ec6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec7`
--
ALTER TABLE `ec7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ec8`
--
ALTER TABLE `ec8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ele2`
--
ALTER TABLE `ele2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ele3`
--
ALTER TABLE `ele3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ele4`
--
ALTER TABLE `ele4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ele5`
--
ALTER TABLE `ele5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ele6`
--
ALTER TABLE `ele6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ele7`
--
ALTER TABLE `ele7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ele8`
--
ALTER TABLE `ele8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `M.Tech`
--
ALTER TABLE `M.Tech`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mchem1`
--
ALTER TABLE `Mchem1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mchem2`
--
ALTER TABLE `Mchem2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mchem3`
--
ALTER TABLE `Mchem3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mchem4`
--
ALTER TABLE `Mchem4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcivil1`
--
ALTER TABLE `Mcivil1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcivil2`
--
ALTER TABLE `Mcivil2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcivil3`
--
ALTER TABLE `Mcivil3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcivil4`
--
ALTER TABLE `Mcivil4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcomps1`
--
ALTER TABLE `Mcomps1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcomps2`
--
ALTER TABLE `Mcomps2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcomps3`
--
ALTER TABLE `Mcomps3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mcomps4`
--
ALTER TABLE `Mcomps4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mec1`
--
ALTER TABLE `Mec1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mec2`
--
ALTER TABLE `Mec2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mec3`
--
ALTER TABLE `Mec3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mec4`
--
ALTER TABLE `Mec4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mech2`
--
ALTER TABLE `mech2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mech3`
--
ALTER TABLE `mech3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mech4`
--
ALTER TABLE `mech4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mech5`
--
ALTER TABLE `mech5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mech6`
--
ALTER TABLE `mech6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mech7`
--
ALTER TABLE `mech7`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mech8`
--
ALTER TABLE `mech8`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mele1`
--
ALTER TABLE `Mele1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mele2`
--
ALTER TABLE `Mele2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mele3`
--
ALTER TABLE `Mele3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mele4`
--
ALTER TABLE `Mele4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mmech1`
--
ALTER TABLE `Mmech1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mmech2`
--
ALTER TABLE `Mmech2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mmech3`
--
ALTER TABLE `Mmech3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Mmech4`
--
ALTER TABLE `Mmech4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `M.Sc.`
--
ALTER TABLE `M.Sc.`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
