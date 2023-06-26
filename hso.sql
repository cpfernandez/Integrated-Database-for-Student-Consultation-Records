-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 05:09 PM
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
-- Table structure for table `admin_creds`
--

CREATE TABLE `admin_creds` (
  `Admin_ID` int(9) NOT NULL,
  `Admin_UserName` char(30) NOT NULL,
  `Admin_Password` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_creds`
--

INSERT INTO `admin_creds` (`Admin_ID`, `Admin_UserName`, `Admin_Password`) VALUES
(1, 'admin', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `consultation_recycledbin`
--

CREATE TABLE `consultation_recycledbin` (
  `conRecycleBinID` int(11) NOT NULL,
  `Patient_StudentNumber` char(11) NOT NULL,
  `Patient_ConsultationDate` date NOT NULL,
  `Patient_ConsultationTime` time NOT NULL,
  `Patient_PhysicalExaminationAndLaboratoryFindings` mediumtext NOT NULL,
  `Patient_DiagnosisAndManagement` mediumtext NOT NULL,
  `Patient_DateEdited` date NOT NULL,
  `Patient_TimeEdited` time NOT NULL,
  `Patient_DateDeleted` date NOT NULL DEFAULT current_timestamp(),
  `Patient_TimeDeleted` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_consultation`
--

CREATE TABLE `patient_consultation` (
  `Patient_StudentNumber` char(11) DEFAULT NULL,
  `Patient_ConsultationDate` date NOT NULL DEFAULT curdate(),
  `Patient_ConsultationTime` time NOT NULL DEFAULT curtime(),
  `Patient_PhysicalExaminationAndLaboratoryFindings` mediumtext NOT NULL,
  `Patient_DiagnosisAndManagement` mediumtext NOT NULL,
  `Patient_DateEdited` date NOT NULL DEFAULT curdate(),
  `Patient_TimeEdited` time NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_consultation`
--

INSERT INTO `patient_consultation` (`Patient_StudentNumber`, `Patient_ConsultationDate`, `Patient_ConsultationTime`, `Patient_PhysicalExaminationAndLaboratoryFindings`, `Patient_DiagnosisAndManagement`, `Patient_DateEdited`, `Patient_TimeEdited`) VALUES
('201912345', '2023-05-31', '21:18:19', 'klmsfdgfgsg', 'sfgsdgfdgs', '2023-06-13', '21:18:42'),
('202012345', '2023-05-31', '21:23:55', 'jkdsafn', 'dksfnadjfn', '2023-06-13', '21:24:06'),
('201809876', '2023-05-31', '21:24:52', 'dsjkfnsa', 'dfna,sdfma', '2023-06-13', '21:25:05'),
('202212345', '2023-05-31', '21:27:41', 'fdalk', 'sfasdds', '2023-06-13', '21:27:57'),
('201912345', '2023-06-13', '21:31:45', 'grs', 'resgr', '2023-06-13', '21:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `patient_info`
--

CREATE TABLE `patient_info` (
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
  `Patient_DateRegistered` date NOT NULL DEFAULT curdate(),
  `Patient_College` char(50) NOT NULL,
  `Patient_Course` char(100) NOT NULL,
  `Patient_DateEdited` date NOT NULL DEFAULT curdate(),
  `Patient_TimeEdited` time NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_info`
--

INSERT INTO `patient_info` (`Patient_StudentNumber`, `Patient_LastName`, `Patient_FirstName`, `Patient_MiddleName`, `Patient_Birthdate`, `Patient_Age`, `Patient_Sex`, `Patient_CivilStatus`, `Patient_Address`, `Patient_ContactNumber`, `Patient_ContactPerson`, `Patient_ContactPersonNum`, `Patient_DateRegistered`, `Patient_College`, `Patient_Course`, `Patient_DateEdited`, `Patient_TimeEdited`) VALUES
('201809876', 'Martinez', 'Olivia', 'Torres', '2003-06-30', 22, 'Female', 'Single', '1098 Maple Lane, Baguio City', '09987654345', 'Lito Martinez', '12345678909', '2023-06-06', 'College of Science', 'BS Computer Science', '2023-06-13', '21:12:57'),
('201912345', 'Santos', 'Maria', 'Isabel', '2001-07-05', 21, 'Female', 'Single', '56 Cedar Avenue, Baguio City', '09876543212', 'Mario Santos', '12345678909', '2023-06-06', 'Arts and Communication', 'BA Fine Arts', '2023-06-06', '06:28:19'),
('202009876', 'Gomez', 'Alejandro', 'Luis', '2000-09-05', 23, 'Male', 'Single', '789 Oak Road, Baguio City', '12345678909', 'Maria Gomez', '23457898765', '2023-06-06', 'Social Sciences', 'BA Social Sciences - History', '2023-06-06', '06:34:58'),
('202012345', 'Dela Cruz', 'Juan', 'Santos', '2002-03-30', 20, 'Male', 'Single', '123 Pine Street, Baguio City', '09123456789', 'Juana Dela Cruz', '09124367896', '2023-06-06', 'Arts and Communication', 'BA Communication', '2023-06-06', '06:25:29'),
('202212345', 'Doe', 'Jane', 'Rue', '2023-01-03', 18, 'Female', 'Single', 'Baguio City', '09876543212', 'John Doe', '09876521234', '2023-06-13', 'College of Arts and Communication', 'BA Communication', '2023-06-13', '21:26:26');

-- --------------------------------------------------------

--
-- Table structure for table `patient_medicalhistory`
--

CREATE TABLE `patient_medicalhistory` (
  `Patient_StudentNumber` char(11) DEFAULT NULL,
  `Patient_FamilyHistory` mediumtext NOT NULL,
  `Patient_PastMedicalHistory` mediumtext NOT NULL,
  `Patient_HistoryOfAllergies` mediumtext NOT NULL,
  `Patient_DateEdited` date NOT NULL DEFAULT curdate(),
  `Patient_TimeEdited` time NOT NULL DEFAULT curtime()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_medicalhistory`
--

INSERT INTO `patient_medicalhistory` (`Patient_StudentNumber`, `Patient_FamilyHistory`, `Patient_PastMedicalHistory`, `Patient_HistoryOfAllergies`, `Patient_DateEdited`, `Patient_TimeEdited`) VALUES
('202009876', 'Diabetes, Cancer', 'Asthma', 'Egg', '2023-06-06', '06:34:58'),
('202012345', 'Hypertension, Diabetes', 'None', 'Seafood Allergy', '2023-06-06', '00:00:00'),
('201809876', 'Hypertension, Diabetes', ' Asthma', 'Nonemmm', '2023-06-13', '00:00:00'),
('202212345', 'Bronchial Asthma, Stroke, Heart Disease', 'Stroke', 'Seafood', '2023-06-13', '00:00:00');

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
  `Patient_FamilyHistory` mediumtext NOT NULL,
  `Patient_PastMedicalHistory` mediumtext NOT NULL,
  `Patient_HistoryOfAllergies` mediumtext NOT NULL,
  `Patient_DateEdited` date NOT NULL,
  `Patient_TimeEdited` time NOT NULL,
  `Patient_DateDeleted` date NOT NULL DEFAULT current_timestamp(),
  `Patient_TimeDeleted` time NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_creds`
--
ALTER TABLE `admin_creds`
  ADD PRIMARY KEY (`Admin_ID`),
  ADD UNIQUE KEY `Admin_ID` (`Admin_ID`);

--
-- Indexes for table `consultation_recycledbin`
--
ALTER TABLE `consultation_recycledbin`
  ADD PRIMARY KEY (`conRecycleBinID`);

--
-- Indexes for table `patient_consultation`
--
ALTER TABLE `patient_consultation`
  ADD KEY `Patient_StudentNumber` (`Patient_StudentNumber`);

--
-- Indexes for table `patient_info`
--
ALTER TABLE `patient_info`
  ADD PRIMARY KEY (`Patient_StudentNumber`),
  ADD UNIQUE KEY `Patient_StudentNumber` (`Patient_StudentNumber`);

--
-- Indexes for table `patient_medicalhistory`
--
ALTER TABLE `patient_medicalhistory`
  ADD KEY `Patient_StudentNumber` (`Patient_StudentNumber`);

--
-- Indexes for table `patient_recycledbin`
--
ALTER TABLE `patient_recycledbin`
  ADD PRIMARY KEY (`RecycleBinID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `consultation_recycledbin`
--
ALTER TABLE `consultation_recycledbin`
  MODIFY `conRecycleBinID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `patient_recycledbin`
--
ALTER TABLE `patient_recycledbin`
  MODIFY `RecycleBinID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_consultation`
--
ALTER TABLE `patient_consultation`
  ADD CONSTRAINT `patient_consultation_ibfk_1` FOREIGN KEY (`Patient_StudentNumber`) REFERENCES `patient_info` (`Patient_StudentNumber`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patient_medicalhistory`
--
ALTER TABLE `patient_medicalhistory`
  ADD CONSTRAINT `patient_medicalhistory_ibfk_1` FOREIGN KEY (`Patient_StudentNumber`) REFERENCES `patient_info` (`Patient_StudentNumber`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
