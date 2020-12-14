-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 14, 2020 at 08:38 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin'),
('Mansur', 'Mansur'),
('rachid', 'rachid'),
('rachid', 'rachid');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE IF NOT EXISTS `appointment` (
  `dName` varchar(20) NOT NULL,
  `pName` varchar(15) NOT NULL,
  `room` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`dName`, `pName`, `room`) VALUES
('wael', 'dorra', 44),
('hichem', 'khalil', 806),
('rachid', 'badri', 202),
('hichem', 'hazem ali', 806),
('wael', 'heni', 44);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
CREATE TABLE IF NOT EXISTS `doctor` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(8) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `dept` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`count`, `date`, `id`, `name`, `age`, `gender`, `blood`, `dept`, `phone`, `email`, `status`, `address`, `room`, `username`, `password`) VALUES
(1, '02-04-2018', 'sjb0HMSd1', 'hichem saidane', 20, 'Male', 'A-', 'Medecine', '+8801757009622', 'hichem@gmail.com', 'Single', 'tunis', 806, 'hichem', 'hichem'),
(2, '31-01-2018', 'sjb0HMSd2', 'rachid saidane', 32, 'Male', 'A+', 'Dental', '+8801665546776', 'rachid@gmail.com', 'Married', 'bizerte', 202, 'rachid', 'rachid'),
(3, '12-12-2016', 'sjb0HMSd3', 'mourad zeiter', 34, 'Male', 'AB-', 'Neurology', '+8801734253425', 'mourad@gmail.com', 'Divorced', 'sfax', 809, 'mourad', 'mourad'),
(4, '21-0802015', 'sjb0HMSd4', 'wael ben foulen', 43, 'Male', 'B+', 'Nutrition', '+8801754323454', 'wael@gmail.com', 'Single', 'jandouba', 44, 'wael', 'wael'),
(5, '09-08-2017', 'sjb0HMSd4', 'nour ', 23, 'Female', 'O-', 'Gynaecology', '+8801765432187', 'nour@gmail.com', 'Single', 'tunis', 909, 'nour', 'nour'),
(6, '06-03-2016', 'sjb0HMSd6', 'Fahad Ali', 37, 'Male', 'B-', 'Cardiology', '+8801754321678', 'fahad@gmail.com', 'Married', 'tunis', 545, 'Fahad', 'Fahad'),
(7, '05-03-2015', 'sjb0HMSd7', 'jamila', 28, 'Female', 'O+', 'Haematology', '+8801765432134', 'jamila@gmail.com', 'Married', 'ariana', 23, 'jamila', 'jamila'),
(8, '21-12-2013', 'sjb0HMSd8', 'karim', 44, 'Male', 'B-', 'Microbiology', '+8801745321376', 'karim@gmail.com', 'Married', 'nabeul', 777, 'karim', 'karim'),
(9, '27-09-2009', 'sjb0HMSd9', 'nadia', 22, 'Female', 'O+', 'Gynaecology', '+8801756789006', 'nadia@gmail.com', 'Single', 'france', 555, 'nadia', 'nadia'),
(12, '12-23-2015', 'sjb0HMSd9', 'mohamed ali', 21, 'Male', 'O+', 'Microbiology', '+8801756432156', 'mohamed@gmail.com', 'Single', 'gabes', 987, 'mohamed', 'mohamed');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `id` varchar(255) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
CREATE TABLE IF NOT EXISTS `patient` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `date` varchar(10) NOT NULL,
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `disease` varchar(20) NOT NULL,
  `room` int(11) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`count`, `date`, `id`, `name`, `age`, `gender`, `address`, `phone`, `status`, `disease`, `room`) VALUES
(16, '14/12/2019', 'sjb0HMS', 'foulen', 55, 'Male', 'tunis', '258744', 'Married', 'dfdff', 555),
(2, '08-03-2018', 'sjb0HMS2', 'hazem ali', 20, 'Male', 'tunis', '+8801757009622', 'Single', 'Feaver', 504),
(3, '09-06-2018', 'sjb0HMS3', 'badri', 21, 'Male', 'tunis', '+8801876543237', 'Single', 'Dengue', 102),
(4, '03-05-2017', 'sjb0HMS4', 'heni', 78, 'Male', 'tunis', '+8801889765426', 'Married', 'Jondish', 653),
(5, '09-03-2016', 'sjb0HMS5', 'jasser', 24, 'Male', 'tunis', '+8801765432124', 'Divorced', 'Malaria', 806),
(6, '22-12-2017', 'sjb0HMS6', 'fourat', 27, 'Male', 'tunis', '+8801722456657', 'Married', 'Tyfoyed', 122),
(8, '22-12-2017', 'sjb0HMS7', 'khalil', 22, 'Male', 'tunis', '+8801754678907', 'Single', 'Feaver', 22),
(15, '12/12/2019', 'sjb0HMS', 'dorra', 22, 'Female', 'charguia2', '+216248657', 'Single', 'sugre', 216);

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

DROP TABLE IF EXISTS `receptionist`;
CREATE TABLE IF NOT EXISTS `receptionist` (
  `count` int(11) NOT NULL AUTO_INCREMENT,
  `joining` varchar(15) NOT NULL,
  `id` varchar(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `age` int(5) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `blood` varchar(4) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(17) NOT NULL,
  `address` varchar(30) NOT NULL,
  `status` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  PRIMARY KEY (`count`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`count`, `joining`, `id`, `name`, `age`, `gender`, `blood`, `email`, `phone`, `address`, `status`, `username`, `password`) VALUES
(3, '23-04-2013', 'sjb0HMSd3', 'rachid saidane', 21, 'Male', 'O+', 'rachid@gmail.com', '+21620600573', 'bizerte', 'Single', 'rachid', 'rachid'),
(4, '23-06-2018', 'sjb0HMSr3', 'maher ben', 24, 'Male', 'A-', 'maher@gmail.com', '+8801654321234', 'bousalem', 'Married', 'maher', 'maher'),
(6, '12-06-2018', 'sjb0HMSr4', 'oussama', 24, 'Male', 'AB-', 'oussama@gmail.com', '+8801767575658', 'el alia', 'Single', 'oussama', 'oussama'),
(9, '07-12-2018', 'sjb0HMSr7', 'iyed', 34, 'Male', 'O+', 'iyed@gmail.com', '+9999999', 'bizerte', 'Married', 'iyed', 'iyed'),
(10, '23-12-2018', 'sjb0HMSr9', 'feres', 44, 'Male', 'AB-', 'fers@gmail.com', '+88017654323', 'bousalem', 'Single', 'feres', 'feres');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
CREATE TABLE IF NOT EXISTS `test` (
  `a` varchar(11) NOT NULL,
  `b` varchar(11) NOT NULL,
  `c` varchar(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`a`, `b`, `c`) VALUES
('5', '6', '6'),
('1', '2', '4'),
('gfhf', 'fv', 'hf');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
