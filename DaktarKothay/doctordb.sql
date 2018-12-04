-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2017 at 08:44 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctordb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `app_id` int(10) NOT NULL,
  `dname` varchar(30) NOT NULL,
  `pname` varchar(30) NOT NULL,
  `dept` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`app_id`, `dname`, `pname`, `dept`) VALUES
(1, '', '', ''),
(2, 'a', 'a', 'a'),
(3, 'Dr. Shurid Sohom', 'abul', 'Medicine'),
(4, 'superman', 'batman', 'ent'),
(5, 'superman', 'batman', 'ent'),
(6, 'superman', 'batman', 'ent'),
(7, 'superman', 'batman', 'ent'),
(8, 'superman', 'batman', 'ent'),
(9, 'superman', 'batman', 'ent'),
(10, 'superman', 'batman', 'ent'),
(11, 'superman', 'batman', 'ent'),
(12, 'superman', 'batman', 'ent'),
(13, 'superman', 'batman', 'ent'),
(14, 'superman', 'batman', 'ent'),
(15, 'ad', 'ac', 'ad'),
(16, 'ad', 'ac', 'ad'),
(17, 'adad', 'adad', 'ada'),
(18, 'adad', 'adad', 'ada'),
(19, 'adx', 'adx', 'adx'),
(20, 'adx', 'adx', 'adx'),
(21, 'adx', 'adx', 'adx'),
(22, 'adx', 'adx', 'adx'),
(23, 'adx', 'adx', 'adx'),
(24, 'adx', 'adx', 'adx'),
(25, 'adx', 'adx', 'adx'),
(26, 'adx', 'adx', 'adx'),
(27, 'adx', 'adx', 'adx'),
(28, '', '', ''),
(29, '', '', ''),
(30, 'ad', 'ad', 'ad');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslist`
--

CREATE TABLE `doctorslist` (
  `doc_id` int(5) NOT NULL,
  `doc_name` varchar(30) NOT NULL,
  `dept` varchar(15) NOT NULL,
  `location` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslist`
--

INSERT INTO `doctorslist` (`doc_id`, `doc_name`, `dept`, `location`) VALUES
(1, 'Dr. Shurid Sohom', 'Medicine', 'Mirpur'),
(2, 'Dr. Saidul Arefin', 'Surgery', 'Dhanmondi'),
(3, 'Dr. Masud Rana', 'Medicine', 'Shamoli'),
(4, 'Dr.Sakib Ahmed', 'Medicine', 'Uttara'),
(5, 'Dr.Amit Niloy', 'Pediatrics', 'Rampura'),
(6, 'Dr.Murad Hossain', 'ENT', 'Dhanmondi'),
(7, 'Dr. Pewdiepie', 'Surgery', 'Shamoli'),
(8, 'Dr. Siam Ahmed Gorki', 'Surgery', 'Shamoli'),
(9, 'Dr. Batman', 'ENT', 'Mirpur'),
(10, 'Dr. Einstein', 'Medicine', 'Uttara');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `doctorslist`
--
ALTER TABLE `doctorslist`
  ADD PRIMARY KEY (`doc_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `app_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
