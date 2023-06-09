-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2020 at 12:29 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mentalhealthsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(200) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `Email` varchar(500) NOT NULL,
  `Password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `Name`, `Email`, `Password`) VALUES
(1, 'amisha', 'narvekar.amisha@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `SNo` int(20) NOT NULL,
  `Country` varchar(200) NOT NULL,
  `City` varchar(500) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`SNo`, `Country`, `City`, `Date`) VALUES
(1, '1', 'Delhi', '2022-03-18'),
(2, '1', 'Mumbai', '2022-03-18'),
(3, '1', 'Chennai', '2022-03-18'),
(4, '1', 'Kolkata', '2022-03-18'),
(5, '1', 'Bangalore', '2022-03-18');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `ID` int(200) NOT NULL,
  `SNo` int(200) NOT NULL,
  `Name` varchar(500) NOT NULL,
  `DocEducation` varchar(500) NOT NULL,
  `YearsofExperience` text NOT NULL,
  `HospitalAddr` varchar(700) NOT NULL,
  `ContactNumber` text NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`ID`, `SNo`, `Name`, `DocEducation`, `YearsofExperience`, `HospitalAddr`, `ContactNumber`, `Date`) VALUES
(1, 1, 'Dr Ravi Krishan', 'MBBS MD', '5', 'Max super speciality hospital dwarika', '9875215211', '2022-03-18'),
(2, 1, 'Dr Harish Khanna', 'MBBS', '10', 'City Clinic Saket', '7662159564', '2022-03-18'),
(3, 1, 'Dr Nikunj Rawat', 'MBBS MD', '7', 'Apollo Clinic Anand Vihar', '9865321478', '2022-03-18'),
(4, 1, 'Dr Neelam Batra', 'MBBS MD', '3', 'Medanta SuperSpeciality Hospital dwarka', '8795843219', '2022-03-18'),
(5, 2, 'Dr Satish Lokhande', 'MD in psychiatry', '12', 'Powai polyclinic Hospital ,Powai', '8796652300', '2022-03-20'),
(6, 2, 'Dr Mitesh Raut', 'MBBS MD', '10', 'Max Super Speciality Hospital Borivali', '4544210396', '2022-03-20'),
(7, 2, 'Dr Ankita Mishra', 'MBBS', '11', 'Purohit medical center Andheri West', '123654789', '2022-03-20'),
(8, 2, 'Dr Anchal Anand', 'MBBS', '4', 'Sanjeevan Mind Care Borivali West', '845656515', '2022-03-22'),
(9, 3, 'Dr Deepa Rajagopalan', 'MBBS MD', '18', 'WellMind Clinic ECR Road', '898554875', '2022-03-22'),
(10, 3, 'Dr Vasanth', 'MBBS MD', '13', 'Apollo Clinic Anna Nagar', '784451241', '2022-03-24'),
(11, 3, 'Dr K.Venkatesh', 'MD in psychiatry', '21', 'Apollo Clinic Greams Road', '1265248433', '2022-03-24'),
(12, 4, 'Dr Neha Dutta', 'MBBS MD', '7', 'Dutta Wellness Clinic Dumdum', '5995524821', '2022-03-24'),
(13, 4, 'Dr Arnab Chowdhary', 'MBBS', '5', 'ILS Hospitals Minto Park', '488451261', '2022-03-28'),
(14, 4, 'Dr Nikhil Mukherjee', 'MBBS MD', '8', 'Apollo Hospital Garia', '799541552', '2022-03-28'),
(15, 5, 'Dr Guru Mehtry', 'MD in psychiatry', '14', 'Manovan wellMinds IndiraNagar', '886523512', '2022-03-28'),
(16, 5, 'Dr Sudhir Babu', 'MBBS', '4', 'Apollo Hospital VijayNagar', '74662566', '2022-03-28'),
(17, 5, 'Dr Shilpa Chaudhry', 'MD in psychiatry', '11', 'Max Super Speciality Clinic Whitefield  ', '745589656', '2022-03-28'),
(18, 5, 'Dr Hari ram', 'MBBS MD', '5', 'Apollo Clinic IndiraNagar', '85552586', '2022-03-28');
-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(200) NOT NULL,
  `Username` varchar(200) NOT NULL,
  `Gender` varchar(200) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `messages` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


--
-- AUTO_INCREMENT for dumped tables
--


--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Username`, `Gender`, `City`, `Email`, `Password`) VALUES
(1, 'Shinell Athaide', 'Female', 'Mumbai', 'shinellathaide@gmail.com', 'shinell123'),
(2, 'Amisha Narvekar', 'Female', 'Mumbai', 'narvekar.amisha@gmail.com', 'amisha123'),
(3, 'Kanak Nivatkar', 'Female', 'Mumbai', 'kanaknivatkar40@gmail.com', 'kanak123'),
(4, 'Ishaan Pathak', 'Male', 'Mumbai', '@gmail.com', 'ishaan123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`SNo`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `SNo` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
