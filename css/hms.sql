-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2022 at 08:11 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Shekhar@10', '02-03-2022 09:13:24 PM');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `general` varchar(255) NOT NULL,
  `oxygen` varchar(255) NOT NULL,
  `ventilator` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`general`, `oxygen`, `ventilator`) VALUES
('1', '2', ''),
('1', '2', ''),
('10', '20', ''),
('32', '23', ''),
('27', '27', ''),
('1', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '0000-00-00 00:00:00'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '0000-00-00 00:00:00'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2019-11-10 18:48:30'),
(6, 'Dermatologist', 9, 8, 500, '2021-07-28', '8:15 PM', '2021-07-30 14:34:47', 1, 1, NULL),
(7, 'Homeopath', 2, 9, 700, '2021-10-26', '10:30 PM', '2021-10-27 16:52:44', 1, 1, NULL),
(8, 'General Physician', 3, 9, 1200, '2021-10-28', '4:15 PM', '2021-10-28 10:31:35', 1, 1, NULL),
(9, 'General Physician', 6, 9, 2500, '2022-02-05', '8:00 PM', '2022-02-04 09:28:10', 1, 1, NULL),
(10, 'Homeopath', 2, 9, 700, '2022-02-25', '4:30 PM', '2022-02-04 10:50:22', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'Anuj', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2019-06-30 12:11:05'),
(2, 'Homeopath', 'Sarita Pandey', 'Varanasi', '700', 214748364, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '2021-09-02 06:13:18'),
(3, 'General Physician', 'Nitesh Kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '0000-00-00 00:00:00'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'Demo test', 'abc ', 'New Delhi India', '400', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2021-08-05 15:10:51'),
(8, 'Ayurveda', 'Test Doctor', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2019-06-23 18:06:06'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:37:47', '2019-11-10 18:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-07-30 14:39:25', NULL, 0),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-07-30 14:46:31', '30-07-2021 08:17:36 PM', 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:07:42', '02-08-2021 10:37:48 PM', 1),
(23, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:08:09', '02-08-2021 10:38:12 PM', 1),
(24, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:08:21', '02-08-2021 10:38:24 PM', 1),
(25, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:08:58', '02-08-2021 10:39:01 PM', 1),
(26, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:09:11', '02-08-2021 10:39:15 PM', 1),
(27, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:10:44', '02-08-2021 10:40:46 PM', 1),
(28, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:26:11', '02-08-2021 10:56:25 PM', 1),
(29, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-05 15:10:40', '05-08-2021 08:41:01 PM', 1),
(30, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-08-12 15:15:32', '12-08-2021 09:00:33 PM', 1),
(31, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-09-02 06:10:13', '02-09-2021 11:40:30 AM', 1),
(32, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-10-27 16:59:53', '27-10-2021 10:35:43 PM', 1),
(33, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-10-27 19:16:04', '28-10-2021 01:04:05 AM', 1),
(34, NULL, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 10:30:41', NULL, 0),
(35, NULL, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 10:30:44', NULL, 0),
(36, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-10-28 10:31:00', '28-10-2021 04:01:04 PM', 1),
(37, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-10-28 13:28:46', '28-10-2021 07:08:51 PM', 1),
(38, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-10-29 11:40:30', '29-10-2021 05:17:57 PM', 1),
(39, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-10-30 05:36:53', '30-10-2021 11:07:05 AM', 1),
(40, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-02-04 09:28:42', '04-02-2022 02:59:07 PM', 1),
(41, NULL, 'doctor@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:45:50', NULL, 0),
(42, NULL, 'doctor@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:46:09', NULL, 0),
(43, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:46:14', NULL, 0),
(44, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:46:15', NULL, 0),
(45, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:46:16', NULL, 0),
(46, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:47:13', NULL, 0),
(47, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:47:16', NULL, 0),
(48, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:47:17', NULL, 0),
(49, NULL, 'Doctor@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:47:26', NULL, 0),
(50, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:47:31', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2016-12-28 06:37:25', '0000-00-00 00:00:00'),
(2, 'General Physician', '2016-12-28 06:38:12', '0000-00-00 00:00:00'),
(3, 'Dermatologist', '2016-12-28 06:38:48', '0000-00-00 00:00:00'),
(4, 'Homeopath', '2016-12-28 06:39:26', '0000-00-00 00:00:00'),
(5, 'Ayurveda', '2016-12-28 06:39:51', '0000-00-00 00:00:00'),
(6, 'Dentist', '2016-12-28 06:40:08', '0000-00-00 00:00:00'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2016-12-28 06:41:18', '0000-00-00 00:00:00'),
(9, 'Demo test', '2016-12-28 07:37:39', '0000-00-00 00:00:00'),
(10, 'Bones Specialist demo', '2017-01-07 08:07:53', '0000-00-00 00:00:00'),
(12, 'Dermatologist', '2019-11-10 18:36:36', '2019-11-10 18:36:50'),
(14, 'Audiologist', '2021-10-29 11:29:27', '2021-10-29 11:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(225) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `description` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `mobile`, `description`) VALUES
(1, 'sss', 'dddd@ddd.bom', '5555555555', '5wwwwwwwwwwwwwwwwww'),
(2, 'sss', 'dddd@ddd.bom', '5555555555', '5wwwwwwwwwwwwwwwwww'),
(3, 'Shashank', 'Shashankshekhar543@gmail.', '7004505378', 'good'),
(4, 'ss', 'ss@gmi.vhhh', '3333333333', '3ddfdffasf'),
(5, 'ssssssssss', 'sssssssss@sxdd', '5555555555', '5eeeeeeeeeeeeeeeeeeeee'),
(6, 'shahahah', 'sdsdsadasd@gmail.com', '4444444444', 'dasdasasfda'),
(7, 'shahahah', 'sdsdsadasd@gmail.com', '4444444444', 'dasdasasfda');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1),
(4, 'Shahs====', 'dsdasd@gmail.com', 78787874578, ' bhjh', '2021-08-02 17:14:50', NULL, NULL, NULL),
(5, 'AWD', 'DsdSds@GMAIL.COM', 4545632587, ' XzxZ', '2021-08-02 17:59:34', NULL, NULL, NULL),
(6, 'bal', 'bal@gm', 9223372036854775807, ' erARAerer', '2021-10-28 17:26:14', 'ok i will do', '2021-10-28 17:27:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2019-11-06 04:20:07'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2019-11-06 04:31:24'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2019-11-06 04:52:42'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2019-11-06 04:56:55'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2019-11-06 14:38:33'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2019-11-10 18:50:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2019-11-06 06:48:05'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2019-11-05 11:53:45'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Male', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2021-07-30 14:47:15'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2019-11-06 14:34:31'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 14:34:19', '30-07-2021 08:05:28 PM', 1),
(25, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 15:25:37', '30-07-2021 08:56:16 PM', 1),
(26, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2021-07-30 15:26:52', NULL, 1),
(27, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:12:41', '02-08-2021 10:42:46 PM', 1),
(28, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:13:23', '02-08-2021 10:43:26 PM', 1),
(29, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:20:53', '02-08-2021 10:55:24 PM', 1),
(30, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:25:46', '02-08-2021 10:56:00 PM', 1),
(31, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-02 17:36:12', '02-08-2021 11:07:59 PM', 1),
(32, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-05 15:09:19', '05-08-2021 08:39:30 PM', 1),
(33, 8, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-05 15:10:05', '05-08-2021 08:40:33 PM', 1),
(34, NULL, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-12 14:55:23', NULL, 0),
(35, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-08-12 15:02:17', '12-08-2021 08:39:47 PM', 1),
(36, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-09-02 05:15:59', NULL, 0),
(37, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 05:16:10', '02-09-2021 11:39:03 AM', 1),
(38, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-09-02 06:10:37', NULL, 0),
(39, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-09-02 06:10:40', '02-09-2021 11:40:58 AM', 1),
(40, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-08 16:23:16', '08-10-2021 09:54:11 PM', 1),
(41, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2021-10-27 16:52:03', NULL, 0),
(42, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-27 16:52:09', '27-10-2021 10:22:58 PM', 1),
(43, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-27 18:05:49', '27-10-2021 11:37:01 PM', 1),
(44, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-27 19:02:23', '28-10-2021 12:33:16 AM', 1),
(45, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-27 19:03:47', '28-10-2021 12:34:09 AM', 1),
(46, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-27 19:12:42', '28-10-2021 12:45:57 AM', 1),
(47, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 10:31:12', '28-10-2021 04:04:01 PM', 1),
(48, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 10:34:11', '28-10-2021 04:04:13 PM', 1),
(49, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 12:43:59', '28-10-2021 06:14:24 PM', 1),
(50, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-28 13:39:02', '28-10-2021 07:17:50 PM', 1),
(51, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2021-10-29 12:52:25', NULL, 0),
(52, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-29 12:52:38', '29-10-2021 06:27:42 PM', 1),
(53, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-30 05:04:11', '30-10-2021 10:34:16 AM', 1),
(54, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2021-10-30 05:37:15', '30-10-2021 11:07:30 AM', 1),
(55, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-04 09:27:35', '04-02-2022 02:58:32 PM', 1),
(56, 9, 'shashankshekhar543@gmail.com', 0x3a3a3100000000000000000000000000, '2022-02-04 10:49:37', '04-02-2022 04:20:40 PM', 1),
(57, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:43:40', NULL, 0),
(58, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-03-02 15:43:45', '02-03-2022 09:15:29 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'doctor@gmail.com', '7a10d898f87ca808852ce753400813d9', '2016-12-30 05:34:39', '2022-03-02 15:45:21'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-06-23 18:36:09'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:40:21', '2019-11-10 18:40:51'),
(9, 'Shashank Shekhar ', 'ranchi', 'ranchi', 'male', 'shashankshekhar543@gmail.com', '7a10d898f87ca808852ce753400813d9', '2021-08-12 15:02:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
