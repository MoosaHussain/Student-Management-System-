-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2019 at 06:00 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cims`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `sid` varchar(15) NOT NULL,
  `date` date NOT NULL,
  `timing` varchar(20) NOT NULL,
  `eid` varchar(14) NOT NULL,
  `batch` varchar(14) NOT NULL,
  `status` varchar(5) NOT NULL,
  `center` varchar(10) NOT NULL,
  `course` varchar(10) NOT NULL,
  `subject` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `sid`, `date`, `timing`, `eid`, `batch`, `status`, `center`, `course`, `subject`) VALUES
(1, 'ST1000', '2018-06-05', '10:00am-11:00am', 'E10002', '1001', 'P', 'jaipur1', 'IIT', 'chem'),
(2, 'ST1000', '2018-06-05', '11:00am-12:00pm', 'E10002', '1001', 'A', 'jaipur1', 'IIT', 'maths'),
(3, 'ST1000', '2018-06-06', '1:30am-2:30pm', 'E10003', '1001', 'P', 'jaipur1', 'IIT', 'Physics'),
(4, 'ST1000', '2018-06-25', '11:00am-12:00pm', 'E10003', '1001', 'P', 'jaipur1', 'IIT', 'Physics'),
(32, 'ST1000', '2018-07-01', '10:00am-11:00am', 'E10004', '1001', 'A', 'jaipur1', 'IIT', 'physics'),
(33, 'ST1001', '2018-07-01', '10:00am-11:00am', 'E10003', '1001', 'P', 'jaipur1', 'IIT', 'physics');

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `id` int(11) NOT NULL,
  `batch` varchar(30) NOT NULL,
  `mentor` varchar(10) NOT NULL,
  `timings` varchar(50) NOT NULL,
  `year` varchar(20) NOT NULL DEFAULT '2018',
  `course` varchar(10) NOT NULL,
  `center` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `batch`, `mentor`, `timings`, `year`, `course`, `center`) VALUES
(1, '1001', 'E10002', '10:00am-2:00pm', '2018', 'IIT', 'jaipur1'),
(2, '1002', '', '10:00am-2:00pm', '2018', 'IIT', 'jaipur1');

-- --------------------------------------------------------

--
-- Table structure for table `centers`
--

CREATE TABLE `centers` (
  `id` int(11) NOT NULL,
  `center` varchar(20) NOT NULL,
  `location` varchar(30) NOT NULL,
  `dateofbuild` date NOT NULL,
  `admin` varchar(20) NOT NULL,
  `coures` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `centers`
--

INSERT INTO `centers` (`id`, `center`, `location`, `dateofbuild`, `admin`, `coures`) VALUES
(1, 'Karachi', 'jaipur', '2018-05-07', 'E10001', 'IIT'),
(2, 'karachi', 'jaipur', '2018-07-17', 'E10005', 'PMT');

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `teacher_type` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `center` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `complaint` varchar(1000) NOT NULL,
  `reply` varchar(1000) NOT NULL,
  `dateofcomp` date NOT NULL,
  `dateofreply` date NOT NULL,
  `replyed` varchar(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaint`
--

INSERT INTO `complaint` (`id`, `eid`, `teacher_type`, `username`, `batch`, `center`, `course`, `subject`, `complaint`, `reply`, `dateofcomp`, `dateofreply`, `replyed`) VALUES
(1, 'E10002', 'mentor', 'ST1000', '1001', 'jaipur1', 'IIT', 'sdafsh adgH SKDH a adhgf kadsf kahdsf', 'dghfhdgfk hadkshfakd fgakhd sfhad skfhagk dshfgaksdf ashdfg aksdf', 'sadasd', '2018-06-17', '2018-07-04', '1'),
(3, 'E10001', 'admin', 'ST1000', '1001', 'jaipur1', 'IIT', 'sahfkajsf', 'ksfadsflhas', 'kjhn', '2018-06-17', '2018-07-12', '1'),
(4, 'E10001', 'admin', 'P1000', '1001', 'jaipur1', 'IIT', 'hi', 'hihihi', '', '2018-06-26', '0000-00-00', '0'),
(5, 'E10001', 'admin', 'E10003', '', 'jaipur1', 'IIT', 'asdgf', 'glfasd', '', '2018-07-01', '0000-00-00', '0'),
(6, 'E10002', 'mentor', 'ST1001', '1001', 'jaipur1', 'IIT', 'bharat', 'bharat afaewak asda', '', '2018-07-04', '0000-00-00', '0'),
(7, 'E10001', 'admin', 'E10004', '', 'jaipur1', 'IIT', 'just to test hod', 'just to test hod secton', '', '2018-07-04', '0000-00-00', '0'),
(9, 'E10000', 'sadmin', 'E10001', '', 'jaipur1', 'IIT', 'lk;j;kj', ';lkjlk', 'asdasdasdasdadasdadsad', '2018-07-12', '2018-07-18', '1'),
(11, 'E10001', 'admin', 'ST1001', '1001', 'jaipur1', 'IIT', 'bah', 'sjjhagsjd', '', '2018-07-13', '0000-00-00', '0'),
(13, 'E10000', 'sadmin', 'E10005', '', 'jaipur1', 'PMT', 'nononononononononon', 'sdgdi;sffsdfsdfsdfsdf sdfsd fsdf sf sf sdf', 'dasgjasdkf/', '2018-07-18', '2018-07-20', '1');

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `examname` varchar(20) NOT NULL,
  `batch` varchar(10) NOT NULL,
  `dateofexam` date NOT NULL,
  `center` varchar(10) NOT NULL,
  `course` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `examname`, `batch`, `dateofexam`, `center`, `course`) VALUES
(1, '1st', '1001', '2018-06-10', 'Karachi', 'IIT'),
(2, '2nd', '1001', '2018-06-11', 'karachi', 'IIT');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `examname` varchar(30) NOT NULL,
  `marksobtain` varchar(20) NOT NULL,
  `totalmarks` varchar(20) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `center` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `dateofexam` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
 
--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `sid`, `course`, `subject`, `examname`, `marksobtain`, `totalmarks`, `eid`, `center`, `batch`, `dateofexam`) VALUES
(1, 'ST1000', 'IIT', 'Physics', '1st', '9.5', '10', 'E10003', 'Karachi', '1001', '2018-06-10'),
(2, 'ST1001', 'IIT', 'chemistry', '1st', '6', '10', 'E10001', 'Karachi', '1001', '2018-06-10'),
(3, 'ST1002', 'IIT', 'Maths', '1st', '4', '10', 'E10002', 'Karachi', '1001', '2018-06-10'),
(4, 'ST1003', 'IIT', 'physics', '1st', '0', '10', 'E10003', 'Karachi', '1001', '2018-06-10'),
(5, 'ST1004', 'IIT', 'physics', '2nd', '9.6', '10', 'E10003', 'Karachi', '1001', '2018-06-11'),
(6, 'ST1005', 'IIT', 'physics', '2nd', '9.0', '10', 'E10003', 'Karachi', '1001', '2018-06-11'),
(7, 'ST1006', 'IIT', 'maths', '1st', '10', '10', 'E10002', 'Karachi', '1001', '2018-06-10'),
(8, 'ST1007', 'IIT', 'maths', '2nd', '10', '10', 'E10002', 'Karachi', '1001', '2018-06-11'),
(9, 'ST1008', 'IIT', 'maths', '2nd', '10', '10', 'E10002', 'Karachi', '1001', '2018-06-11');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `sid` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(500) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `postalcode` varchar(10) NOT NULL,
  `fee` varchar(10) NOT NULL,
  `scholarship` varchar(10) NOT NULL,
  `paidfee` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `course` varchar(10) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `class` varchar(10) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `fathermob` varchar(15) NOT NULL,
  `fatheroccu` varchar(20) NOT NULL,
  `mothername` varchar(50) NOT NULL,
  `mothermob` varchar(15) NOT NULL,
  `motheroccu` varchar(20) NOT NULL,
  `10mark` varchar(10) NOT NULL,
  `12mark` varchar(10) NOT NULL,
  `preexam` varchar(10) NOT NULL,
  `preexamyear` varchar(10) NOT NULL,
  `preexammarks` varchar(10) NOT NULL,
  `center` varchar(10) NOT NULL,
  `mentor` varchar(10) NOT NULL,
  `timing` varchar(20) NOT NULL,
  `dateofreg` date NOT NULL,
  `pid` varchar(10) NOT NULL,
  `dateofleft` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `sid`, `fname`, `lname`, `email`, `phone`, `address`, `district`, `state`, `postalcode`, `fee`, `scholarship`, `paidfee`, `status`, `course`, `batch`, `class`, `fathername`, `fathermob`, `fatheroccu`, `mothername`, `mothermob`, `motheroccu`, `10mark`, `12mark`, `preexam`, `preexamyear`, `preexammarks`, `center`, `mentor`, `timing`, `dateofreg`, `pid`, `dateofleft`) VALUES
(1, 'ST1000', 'std1', 'Fatherl', 'std1@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1000', '0000-00-00'),
(2, 'ST1001', 'std2', 'Father2', 'std2@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1001', '0000-00-00');
(3, 'ST1002', 'std3', 'Father3', 'std3@gmail.com', '9999999999', 'plot no. 5 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1000', '0000-00-00'),
(4, 'ST1003', 'std4', 'Father4', 'std4@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1001', '0000-00-00');
(5, 'ST1004', 'std5', 'Father5', 'std5@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1000', '0000-00-00'),
(6, 'ST1005', 'std6', 'Father6', 'std6@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1001', '0000-00-00');
(7, 'ST1006', 'std7', 'Father7', 'std7@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1000', '0000-00-00'),
(8, 'ST1007', 'std8', 'Father8', 'std8@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1001', '0000-00-00');
(9, 'ST1008', 'std9', 'Father9', 'std9@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1000', '0000-00-00'),
(10, 'ST1009', 'std10', 'Fatherl0', 'std10@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1001', '0000-00-00');
(11, 'ST10010', 'std11', 'Father1l', 'std11@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1000', '0000-00-00'),
(12, 'ST10011', 'std12', 'Fatherl2', 'std12@gmail.com', '9999999999', 'plot no. 300 4s colony', 'Karachi', 'Pakistan', '302013', '100002', '10', '10000', 'yes', 'IIT', '1001', '12+', 'xxxxx xxxxx', '0000000000', 'businessmen', 'xxxxx xxxxx', '000000000', 'houserwife', 'xx', 'xx', 'IIT', '20xx', '120', 'jaipur1', 'E10002', '10:00am-2:00pm', '2018-06-05', 'P1001', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(12) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `postalcode` varchar(20) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL,
  `center` varchar(20) NOT NULL,
  `dateofjoining` date NOT NULL,
  `experience` varchar(20) NOT NULL,
  `highestqualification` varchar(20) NOT NULL,
  `highestqualificationmarks` varchar(20) NOT NULL,
  `batchmentor` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `eid`, `fname`, `lname`, `email`, `mobile`, `address`, `city`, `state`, `postalcode`, `salary`, `position`, `subject`, `course`, `center`, `dateofjoining`, `experience`, `highestqualification`, `highestqualificationmarks`, `batchmentor`, `status`) VALUES
(1, 'E10001', 'tid1', 'Fatherl', 'tid1@gmail.com', '8888888888', 'jaipututafa', 'jaipur', 'rajasthan', '302013', '10000', 'mentor', 'maths', 'IIT', 'jaipur1', '2018-06-07', '2Y', 'B-Tech', '100', '1001', 'yes'),
(2, 'E10002', 'tid2', 'Father2', 'tid2@gmail.com', '8888888888', '300 4s jaipur', 'jaipur', 'Rajasthan', '302013', '10000', 'admin', '', 'IIT', 'jaipur1', '2018-06-07', '2Y', 'B-Tech', '100', '', 'yes'),
(3, 'E10003', 'tid3', 'Father3', 'tid3@gmail.com', '8888888888', 'jaipur', 'jaipur', 'rajasthan', '302013', '10000', 'teacher', 'physics', 'IIT', 'jaipur1', '2018-06-07', '2Y', 'B-Tech', '100', '', 'yes'),
(4, 'E10004', 'tid4', 'Father4', 'tid4@gmail.com', '8888888888', 'jaipur', 'jaipur', 'rajasthan', '302013', '10000', 'hod', 'physics', 'IIT', 'jaipur1', '2018-06-07', '2Y', 'B-Tech', '100', '', 'yes'),
(5, 'E10005', 'tid5', 'Father5', 'tid5@gmail.com', '8888888888', 'jaipututafa', 'jaipur', 'rajasthan', '302013', '10000', 'sadmin', '', '', '', '2018-06-07', '2Y', 'B-Tech', '100', '', 'yes'),
(6, 'E10006', 'tid6', 'Father6', 'tid6@gmail.com', '7777777777', 'gkhg', 'hgk', 'ghk', '9999', '1000', 'admin', '', 'PMT', 'jaipur1', '2018-07-15', '2Y', 'Bteau', '100', '', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `tea_attendance`
--

CREATE TABLE `tea_attendance` (
  `id` int(11) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `timetocome` varchar(20) NOT NULL,
  `timetogo` varchar(20) NOT NULL,
  `bywhom` varchar(20) NOT NULL,
  `status` varchar(10) NOT NULL,
  `center` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `tea_batche`
--

INSERT INTO `tea_batche` (`id`, `batch`, `eid`, `subject`, `center`, `course`) VALUES
(1, '1001', 'E10004', 'physics', 'jaipur1', 'IIT'),
(2, '1001', 'E10002', 'maths', 'jaipur1', 'IIT');

-- --------------------------------------------------------

--
-- Table structure for table `timetable`
--

CREATE TABLE `timetable` (
  `id` int(11) NOT NULL,
  `center` varchar(20) NOT NULL,
  `batch` varchar(20) NOT NULL,
  `subject` varchar(20) NOT NULL,
  `timing` varchar(20) NOT NULL,
  `eid` varchar(20) NOT NULL,
  `day` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timetable`
--

INSERT INTO `timetable` (`id`, `center`, `batch`, `subject`, `timing`, `eid`, `day`, `year`, `course`) VALUES
(1, 'Karachi', '1001', 'Maths', '10:00am-11:00am', 'E10002', 'Thursday', '2018', 'IIT'),
(2, 'Karachi', '1002', 'Physics', '11:00am-12:00am', 'E10004', 'Thursday', '2018', 'IIT'),
(3, 'Karachi', '1003', 'English', '12:00pm-1:00pm', 'E10002', 'Thursday', '2018', 'IIT'),
(4, 'Karachi', '1004', 'Urdu', '1:00pm-2:00pm', 'E10004', 'Thursday', '2018', 'IIT'),
(5, 'Karachi', '1005', 'PakistanStudies', '10:00am-11:00am', 'E10002', 'Thursday', '2018', 'IIT'),
(6, 'Karachi', '1006', 'SST', '10:00am-11:00am', 'E10004', 'Thursday', '2018', 'IIT'),
(7, 'Karachi', '1007', 'Chemistry', '10:00am-11:00am', 'E10002', 'Thursday', '2018', 'IIT'),
(8, 'Karachi', '1008', 'History', '10:00am-11:00am', 'E10004', 'Thursday', '2018', 'IIT'),
(9, 'Karachi', '1009', 'Arabic', '10:00am-11:00am', 'E10002', 'Friday', '2018', 'IIT');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`) VALUES
(1, ' SA0001', '0000', 'sadmin'),
(2, 'A00001', '0000', 'admin'),
(3, 'E10001', '0000', 'teacher'),
(4, 'E10002', '0000', 'teacher'),
(5, 'E10003', '0000', 'teacher'),
(6, 'E10004', '0000', 'teacher'),
(7, 'E10005', '0000', 'teacher'),
(8, 'E10006', '0000', 'teacher'),
(9, 'ST1000', '0000', 'teacher'),
(10, 'ST1001', '0000', 'student'),
(11, 'ST1002', '0000', 'student'),
(12, 'ST1003', '0000', 'student'),
(13, 'ST1004', '0000', 'student'),
(14, 'ST1005', '0000', 'student'),
(15, 'ST1006', '0000', 'student'),
(16, 'ST1007', '0000', 'student'),
(17, 'ST1008', '0000', 'student'),
(18, 'ST1009', '0000', 'student'),
(19, 'ST10010', '0000', 'student'),
(20, 'ST10011', '0000', 'student'),
(21,'P10001', '0000', 'parent');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `batch` (`batch`);

--
-- Indexes for table `centers`
--
ALTER TABLE `centers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sid` (`sid`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `eid` (`eid`);

--
-- Indexes for table `tea_attendance`
--
ALTER TABLE `tea_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetable`
--
ALTER TABLE `timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `centers`
--
ALTER TABLE `centers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tea_attendance`
--
ALTER TABLE `tea_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tea_batche`
--
ALTER TABLE `tea_batche`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timetable`
--
ALTER TABLE `timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
S/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
