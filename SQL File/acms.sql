-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2023 at 11:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acms`
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '15-08-2023 05:05:03 PM');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'Dermatology', 0, 3, 0, '2023-07-25', '7:45 PM', '2023-07-19 13:40:23', 1, 1, NULL),
(4, 'Orthopedics', 0, 3, 0, '2023-07-16', '7:45 PM', '2023-07-19 13:41:13', 1, 1, NULL),
(5, 'Orthopedics', 4, 3, 500, '2023-07-20', '8:00 PM', '2023-07-19 13:51:03', 1, 1, NULL),
(6, 'Orthopedics', 5, 3, 500, '2023-07-31', '8:00 PM', '2023-07-19 13:56:21', 1, 1, NULL),
(7, 'Orthopedics', 5, 4, 500, '2023-07-19', '8:15 PM', '2023-07-19 14:08:29', 1, 0, '2023-07-19 14:19:35'),
(8, 'Orthopedics', 5, 4, 500, '2023-07-19', '8:30 PM', '2023-07-19 14:21:33', 0, 1, '2023-07-19 14:21:58'),
(9, 'General Surgery', 6, 5, 500, '2023-07-22', '12:30 PM', '2023-07-19 18:26:40', 1, 1, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(5, 'Orthopedics', 'Dr. Alex', 'ABC clinic', '500', 1700000000, 'alex1@gmail.com', 'b75bd008d5fecb1f50cf026532e8ae67', '2023-07-19 13:54:39', NULL),
(6, 'General Surgery', 'Dr. Frank', 'Alpha', '500', 1753654644, 'frank@gmail.com', 'a7a192edd9e8fd19a50ea38161786fca', '2023-07-19 18:25:29', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(2, 5, 'alex1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 13:55:14', '19-07-2023 07:25:40 PM', 1),
(3, 5, 'alex1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 13:57:03', '19-07-2023 07:28:18 PM', 1),
(4, 5, 'alex1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:03:56', '19-07-2023 07:36:14 PM', 1),
(5, 5, 'alex1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:19:02', '19-07-2023 07:50:52 PM', 1),
(6, 5, 'alex1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:22:27', '19-07-2023 07:52:47 PM', 1),
(34, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 18:27:43', '20-07-2023 12:03:55 AM', 1),
(35, NULL, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-15 11:12:30', NULL, 0),
(36, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-15 11:12:44', '15-08-2023 04:43:25 PM', 1),
(37, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-15 11:13:53', '15-08-2023 04:45:50 PM', 1),
(38, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-25 14:53:57', '25-08-2023 08:24:04 PM', 1),
(39, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-25 14:54:14', '25-08-2023 08:30:21 PM', 1),
(40, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-25 15:00:44', '25-08-2023 08:40:45 PM', 1),
(41, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-25 15:13:06', NULL, 1),
(42, 6, 'frank@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-27 08:35:27', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(7, 'General Surgery', '2023-08-16 18:05:20', '2023-08-15 11:53:25'),
(8, 'Ophthalmology', '2023-08-16 18:05:21', '2023-08-15 11:53:51'),
(9, 'Anesthesia', '2023-08-16 18:05:24', NULL),
(10, 'Pathology', '2023-08-16 18:05:27', NULL),
(11, 'ENT', '2023-08-16 18:05:31', NULL),
(12, 'Dental Care', '2023-08-16 18:05:33', NULL),
(13, 'Dermatologists', '2023-08-16 18:05:39', NULL),
(14, 'Endocrinologists', '2023-08-16 18:05:41', NULL),
(15, 'Neurologists', '2023-08-16 18:05:45', NULL),
(18, 'Cardiology', '2023-08-17 11:43:47', NULL),
(19, 'Outpatient Department', '2023-08-17 11:45:36', NULL),
(20, 'Haematology', '2023-08-17 11:45:51', NULL),
(21, 'Oncology', '2023-08-17 11:46:26', NULL),
(22, 'Gynaecology', '2023-08-15 11:47:27', NULL),
(23, 'Nephrology', '2023-08-15 11:48:09', NULL),
(24, 'Gastroenterology', '2023-08-15 11:48:33', NULL),
(25, 'Urology', '2023-08-15 11:48:56', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(3, 'Emon', 'emon@gmail.com', 1793645984, 'I need to know more about your services', '2023-07-19 14:25:51', 'Okay tested', '2023-07-19 14:26:52', 1),
(5, 'mursalin', 'mursalin@gmail.com', 1763428946, 'Give me more info', '2023-07-24 16:34:28', NULL, NULL, NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '80/100', '0.30', '73', '98', 'Eat Napa', '2023-07-19 18:31:47');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<div style=\"text-align: justify; \"><span style=\"font-size: 16px;\">One of Bangladesh\'s most well-known medical facilities is provided by Alpha Clinic. With the assistance of our welcoming team, highly skilled and specialized physicians, cutting-edge technology, and knowledge, we work daily to be the best healthcare provider not just in Bangladesh but across the Asia-Pacific region. We always ensure that our services meet your needs. We have already successfully provided healthcare services to over a million patients all over the Asia-Pacific region.</span></div><div style=\"text-align: justify; \"><br><br></div><div style=\"text-align: justify; \"><span style=\"font-size: 16px;\">We are always relentless and passionate about our healthcare services. Every life is important to us. We have a group of doctors to immediately take over your appointments and we focus on our service to be adequately done.</span></div>', NULL, NULL, '2023-08-14 07:21:52', NULL),
(2, 'contactus', 'Contact Details', '<span class=\"fa fa-map-marker\" style=\"font-size: medium;\"></span><font color=\"#ffffff\"><span style=\"\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" medium;\"=\"\">&nbsp;408/2 (Old KA 67/1), Kuratoli, Khilkhet,</span><br style=\"\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" medium;\"=\"\"><span style=\"\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" medium;\"=\"\">Dhaka 1229, Bangladesh</span></font>', 'aclinfo@gmail.com', 1914001234, '2023-08-14 07:24:07', '9 am To 8 Pm');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(2, 5, 'emon', 175365335, 'emon@gmail.com', 'male', 'ehfsueyfg', 20, 'no history', '2023-07-19 14:05:50', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(6, NULL, 'mintajur', 0x3a3a3100000000000000000000000000, '2023-07-19 13:38:47', NULL, 0),
(7, NULL, 'mintajur', 0x3a3a3100000000000000000000000000, '2023-07-19 13:39:08', NULL, 0),
(8, 3, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 13:39:23', '19-07-2023 07:11:29 PM', 1),
(9, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-07-19 13:44:49', NULL, 0),
(10, 3, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 13:50:45', '19-07-2023 07:21:33 PM', 1),
(11, 3, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 13:55:52', '19-07-2023 07:26:38 PM', 1),
(12, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-07-19 13:58:37', NULL, 0),
(13, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-07-19 13:58:42', NULL, 0),
(14, 4, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:07:43', '19-07-2023 07:38:51 PM', 1),
(15, 4, 'emon@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:21:05', '19-07-2023 07:52:05 PM', 1),
(16, NULL, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:58:31', NULL, 0),
(17, NULL, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:58:40', NULL, 0),
(18, 3, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-19 14:58:50', '19-07-2023 08:28:56 PM', 1),
(21, NULL, 'emon', 0x3a3a3100000000000000000000000000, '2023-08-15 11:16:10', NULL, 0),
(22, NULL, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-15 11:16:50', NULL, 0),
(23, NULL, 'mintajur@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-15 11:16:58', NULL, 0),
(24, 7, 'jwel@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-15 11:19:08', '15-08-2023 04:54:39 PM', 1),
(25, 8, 'mintajur1@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-20 12:21:20', NULL, 1),
(26, 7, 'jwel@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-25 12:20:32', '25-08-2023 05:50:51 PM', 1),
(27, 7, 'jwel@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-25 15:13:32', '25-08-2023 08:43:41 PM', 1),
(28, 7, 'jwel@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-27 08:35:50', NULL, 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(7, 'Jwel Miah', 'Nurani Masjid', 'Dhaka', 'male', 'jwel@gmail.com', '0f5418f4bd0f77db73874c62f36a3e0f', '2023-08-15 11:18:43', NULL),
(8, 'Mintajur Rahman', 'Bashundhara', 'Dhaka', 'male', 'mintajur1@gmail.com', 'c5d328c0c4667ba83bb7a81453cde352', '2023-08-15 11:27:10', NULL),
(9, 'Mursalin Khan', 'Khilkhet', 'Dhaka', 'male', 'mursalin@gmail.com', '3c43ff72749faae6cbfa585bc446f7b0', '2023-08-15 11:29:34', NULL),
(10, 'Sajid Hayder', 'Nikunjo', 'Dhaka', 'male', 'sajid@gmail.com', '9f91a5f2b54ac037ca4be3285c348977', '2023-08-15 11:30:59', NULL);

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
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
