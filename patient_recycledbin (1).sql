-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 09:23 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hso`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient_recycledbin`
--

CREATE TABLE `patient_recycledbin` (
  `RecycleBinID` int(11) NOT NULL,
  `Patient_StudentNumber` char(11) NOT NULL,
  `Patient_LastName` char(30) NOT NULL,
  `Patient_FirstName` char(50) NOT NULL,
  `Patient_MiddleName` char(30) NOT NULL,
  `Patient_Birthdate` date NOT NULL,
  `Patient_Age` int(2) NOT NULL,
  `Patient_Sex` char(10) NOT NULL,
  `Patient_CivilStatus` char(15) NOT NULL,
  `Patient_Address` char(100) NOT NULL,
  `Patient_ContactNumber` char(11) NOT NULL,
  `Patient_ContactPerson` char(100) NOT NULL,
  `Patient_ContactPersonNum` char(11) NOT NULL,
  `Patient_DateRegistered` date NOT NULL,
  `Patient_College` char(50) NOT NULL,
  `Patient_Course` char(100) NOT NULL,
  `Patient_DateEdited` date NOT NULL,
  `Patient_TimeEdited` time NOT NULL,
  `Patient_DateDeleted` date NOT NULL DEFAULT current_timestamp(),
  `Patient_TimeDeleted` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_recycledbin`
--

INSERT INTO `patient_recycledbin` (`RecycleBinID`, `Patient_StudentNumber`, `Patient_LastName`, `Patient_FirstName`, `Patient_MiddleName`, `Patient_Birthdate`, `Patient_Age`, `Patient_Sex`, `Patient_CivilStatus`, `Patient_Address`, `Patient_ContactNumber`, `Patient_ContactPerson`, `Patient_ContactPersonNum`, `Patient_DateRegistered`, `Patient_College`, `Patient_Course`, `Patient_DateEdited`, `Patient_TimeEdited`, `Patient_DateDeleted`, `Patient_TimeDeleted`) VALUES
(1, '201909000', 'Legaspi', 'Myla Jean', 'Cabantoc', '2001-07-09', 21, 'Female', 'Single', 'Baguio City', '09129212935', 'Hoho', '09110790123', '2023-06-03', 'Science', 'BS Computer Science', '2023-06-03', '21:42:58', '2023-06-04', '02:31:08'),
(2, '202000113', 'fghjyj', 'fgnhj', 'fghh', '2023-03-30', 11, 'Male', 'Married', 'asdjkflek', '12345678989', 'fghjsre', '12345678909', '2023-06-03', 'Arts and Communication', 'BA Social Sciences - History', '2023-06-03', '14:27:05', '2023-06-04', '02:31:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient_recycledbin`
--
ALTER TABLE `patient_recycledbin`
  ADD PRIMARY KEY (`RecycleBinID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient_recycledbin`
--
ALTER TABLE `patient_recycledbin`
  MODIFY `RecycleBinID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
