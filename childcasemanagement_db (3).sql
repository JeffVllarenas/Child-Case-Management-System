-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2025 at 11:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `childcasemanagement_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `casedetailscar_tb`
--

CREATE TABLE `casedetailscar_tb` (
  `car_ID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `Committed_Crime` varchar(100) NOT NULL,
  `ReferredBy` varchar(100) NOT NULL,
  `DateReported` date NOT NULL,
  `Case_Status` varchar(20) NOT NULL DEFAULT 'Active',
  `ActionTaken` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casedetailscar_tb`
--

INSERT INTO `casedetailscar_tb` (`car_ID`, `ChildID`, `categoryID`, `Committed_Crime`, `ReferredBy`, `DateReported`, `Case_Status`, `ActionTaken`) VALUES
(8, 30, 1, 'Cyber Crime', 'John Doe', '2025-10-18', 'Unsettled', 'Taken to Somewehre'),
(9, 32, 1, 'Bullying', 'Yema Barsaga', '2025-10-17', 'Settled', 'Monetary Fine'),
(10, 33, 1, 'Theft', 'Police Deputy Llarenas', '2025-10-08', 'Settled', 'Guidance Counseling'),
(11, 34, 1, 'Use of Illegal Drugs', 'Rancho Galdo', '2025-10-08', 'Unsettled', 'Taken To Jail'),
(12, 35, 1, 'Riot', 'Kenneth', '2025-10-14', 'Settled', 'Fine Charges'),
(13, 36, 1, 'Drug Abuse', 'Gerald Overson', '2025-10-24', 'Active', 'Pending'),
(14, 37, 1, 'Cyber Crime', '', '2025-10-16', 'Unsettled', 'Taken to Court'),
(15, 38, 1, 'Robbery', 'Kadena Luis', '2025-10-17', 'Active', 'Pending'),
(16, 41, 1, 'Drug Abues', 'Nathaniel Olinan', '2025-10-19', 'Settled', 'Taken to Rehabilitation'),
(17, 42, 1, 'Extortion', 'Teacher Garry David', '2025-10-12', 'Active', 'Pending'),
(18, 43, 1, 'CyberCrime', 'Jolina Magdangal', '2025-10-04', 'Settled', 'Taken to Counselng'),
(19, 44, 1, 'Bullying', 'Teacher Thomas Halasan', '2025-10-07', 'Active', 'Pending'),
(20, 45, 1, 'Drug Abuse', 'Ogie Alcasid', '2025-10-08', 'Settled', 'Takent to Police'),
(21, 56, 1, 'Cyber Crime', 'Greg Herbert', '2025-10-22', 'Active', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `casedetailscar_tb_archive`
--

CREATE TABLE `casedetailscar_tb_archive` (
  `car_ID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `Committed_Crime` varchar(100) NOT NULL,
  `ReferredBy` varchar(100) NOT NULL,
  `DateReported` date NOT NULL,
  `Case_Status` varchar(20) NOT NULL DEFAULT 'Active',
  `ActionTaken` varchar(100) NOT NULL,
  `ArchiveDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `casedetailscicl_tb`
--

CREATE TABLE `casedetailscicl_tb` (
  `cicl_ID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `Committed_Crime` varchar(100) NOT NULL,
  `ReferredBy` varchar(100) NOT NULL,
  `DateReported` date NOT NULL,
  `Case_Status` varchar(100) NOT NULL DEFAULT 'Active',
  `ActionTaken` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casedetailscicl_tb`
--

INSERT INTO `casedetailscicl_tb` (`cicl_ID`, `ChildID`, `categoryID`, `Committed_Crime`, `ReferredBy`, `DateReported`, `Case_Status`, `ActionTaken`) VALUES
(5, 29, 2, 'Bullying', 'Gretcehn', '2025-10-13', 'Settled', 'Taken to POlice'),
(6, 40, 2, 'Cyber Theft', 'Susan Llarenas', '2025-10-09', 'Unsettled', 'Taken to Jail'),
(7, 46, 2, 'Nang Bachikurno', 'Teacher NIcks', '2025-10-20', 'Unsettled', 'obuhbhuhgh'),
(8, 47, 2, 'Scam', 'Kenneth Granada', '2025-10-20', 'Settled', 'Taken to Counseling'),
(9, 48, 2, 'Bully', 'Jefferson Llarenas', '2025-10-20', 'Settled', 'Fine Money'),
(10, 49, 2, 'Robbery', 'Hiro Halas', '2025-10-20', 'Settled', 'Taken to DSWD'),
(11, 50, 2, 'Trespassing', 'Girlie Balaba', '2025-10-20', 'Unsettled', 'Taken to Higher Court'),
(12, 57, 2, 'Cyber Crime', 'French Fries', '2025-10-22', 'Active', 'Pending'),
(13, 58, 2, 'Gun Violence', 'Cris Nuevas', '2025-10-22', 'Unsettled', 'Taken To Plice Custody'),
(14, 59, 2, 'Theft', 'Hamot', '2025-10-22', 'Settled', 'Taken to CSWD'),
(15, 60, 2, 'Cyber Crime', 'Jefferson llarenas', '2025-10-14', 'Settled', 'Gi adto sa police'),
(16, 61, 2, 'Bully', 'Teahcer Tres', '2025-10-22', 'Active', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `casedetailscicl_tb_archive`
--

CREATE TABLE `casedetailscicl_tb_archive` (
  `cicl_ID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `Committed_Crime` varchar(100) NOT NULL,
  `ReferredBy` varchar(100) NOT NULL,
  `DateReported` date NOT NULL,
  `Case_Status` varchar(100) NOT NULL DEFAULT 'Active',
  `ActionTaken` varchar(100) NOT NULL,
  `ArchiveDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `casedetailscnsp_tb`
--

CREATE TABLE `casedetailscnsp_tb` (
  `cnsp_ID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `TypeOfViolence` varchar(100) NOT NULL,
  `Perpetrator` varchar(100) NOT NULL,
  `ReferredBy` varchar(100) NOT NULL,
  `DateReported` date NOT NULL,
  `Case_Status` varchar(100) NOT NULL DEFAULT 'Active',
  `ActionTaken` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `casedetailscnsp_tb`
--

INSERT INTO `casedetailscnsp_tb` (`cnsp_ID`, `ChildID`, `categoryID`, `TypeOfViolence`, `Perpetrator`, `ReferredBy`, `DateReported`, `Case_Status`, `ActionTaken`) VALUES
(6, 31, 3, 'Physical Abuse', 'Stranger', 'Teacher Badon Gayla', '2025-10-10', 'Unsettled', 'Taken to Higher Court'),
(7, 39, 3, 'Physical Abuse', 'Immediate Family', 'Jone Jones', '2025-10-15', 'Unsettled', 'Fine and Jail'),
(8, 51, 3, 'Neglect', 'Immediate Family', 'Verna Jordan', '2025-10-20', 'Settled', 'COunseling'),
(9, 52, 3, 'Sexual Abuse', 'Stranger', 'Teacher Felisilda', '2025-10-21', 'Unsettled', 'Taken to Higher Court'),
(10, 53, 3, 'Sexual Abuse\r\n\r\n', 'Stranger', 'Albert Cruz', '2025-10-21', 'Unsettled', 'Taken to COurt'),
(11, 54, 3, 'Physical Abuse', 'Immediate Family', 'Temore Buang', '2025-10-21', 'Settled', 'Fine 1M Pesos'),
(12, 55, 3, 'Psychological Emotional Abuse', 'Tita ni Lim', '', '2025-10-22', 'Settled', 'Taken to DSWD');

-- --------------------------------------------------------

--
-- Table structure for table `casedetailscnsp_tb_archive`
--

CREATE TABLE `casedetailscnsp_tb_archive` (
  `cnsp_ID` int(11) NOT NULL,
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `TypeOfViolence` varchar(100) NOT NULL,
  `Perpetrator` varchar(100) NOT NULL,
  `ReferredBy` varchar(100) NOT NULL,
  `DateReported` date NOT NULL,
  `Case_Status` varchar(100) NOT NULL DEFAULT 'Active',
  `ActionTaken` varchar(100) NOT NULL,
  `ArchiveDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_tb`
--

CREATE TABLE `category_tb` (
  `categoryID` int(11) NOT NULL,
  `categoryName` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_tb`
--

INSERT INTO `category_tb` (`categoryID`, `categoryName`) VALUES
(1, 'CAR'),
(2, 'CICL'),
(3, 'CNSP');

-- --------------------------------------------------------

--
-- Table structure for table `child_tb`
--

CREATE TABLE `child_tb` (
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `First_name` varchar(100) NOT NULL,
  `middleInitial` varchar(2) NOT NULL,
  `Childage` int(3) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `EducLvlOrStatus` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Parent_name` varchar(100) NOT NULL,
  `ParentContactNum` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `child_tb`
--

INSERT INTO `child_tb` (`ChildID`, `categoryID`, `Last_name`, `First_name`, `middleInitial`, `Childage`, `Sex`, `DateOfBirth`, `EducLvlOrStatus`, `Address`, `Parent_name`, `ParentContactNum`) VALUES
(29, 2, 'Bonggo', 'Bato', 'D.', 11, 'Male', '2025-10-02', 'grade 11', 'Phase 8', 'Kikay Pandesal', '09954457741'),
(30, 1, 'Banana', 'Saging', 'B`', 12, 'Male', '2025-10-02', 'Grrade 2', 'Acacia st CDO Carmen City', 'John Bananaa', '05558848874'),
(31, 3, 'Gamayon', 'Grapes', 'B.', 15, 'Female', '2011-10-13', 'Grade 8', 'Macanhan Zone 8', 'Fermin Gamayon', '09945578845'),
(32, 1, 'Kilat', 'Jasmine', 'V.', 15, 'Male', '2010-10-18', 'Grade 7', 'Zone 3 Carmen', 'Cardo Kilat Sr.', '09952245576'),
(33, 1, 'Yerna', 'Hadams', 'G.', 15, 'Male', '2010-10-17', 'Out of School Youth', 'Zone 8 Zayas Carmen', 'Jester Yerna', '09924456612'),
(34, 1, 'Hernan', 'Mark Jude', 'H', 13, 'Male', '2012-10-10', 'Grade 8', 'Zone 10 Upper Carmen', 'Hansel Hernan', '09125654457'),
(35, 1, 'Jamar', 'John Kenneth', 'A.', 21, 'Male', '2003-10-16', 'College Student 2nd Year', 'Zone 8 Macanhan Carmen', 'Ganderma Jamar', '09965541124'),
(36, 1, 'Dalugdog', 'Grace', 'V.', 13, 'Female', '2004-08-24', 'Grade 5', 'Zone 5 Carmen', 'Nandy Dalugdog', '09554475521'),
(37, 1, 'Urada', 'Kardasian', 'V.', 16, 'Male', '2009-10-10', 'Out of School Youth', 'Macanhan Zone 8', 'Francis Urada', '09945578864'),
(38, 1, 'Hagunoy', 'Baston', 'U.', 18, 'Male', '2005-10-04', 'Grade 8', 'Hogwarts Carmen', 'Grachel Taypin', '09945526631'),
(39, 3, 'Bagani', 'Caroline', 'H.', 19, 'Male', '2010-10-06', 'Grade 12', 'Carmen Zone 4', 'Isagani Bagani', '09954456621'),
(40, 2, 'Nuevas', 'Cris Michael', 'H.', 19, 'Male', '2025-10-04', 'Out of School', 'Kauswagan Carmen', 'Jupiter Nuevas', '09955545512'),
(41, 1, 'Bantam', 'Carlo', 'Y.', 19, 'Male', '2013-05-04', 'Out of School', 'Haligi St Carmen CDO', 'Lorence Bantam', '09945512236'),
(42, 1, 'Agana', 'John Dave', 'U.', 14, 'Male', '2011-06-05', 'Grade 4', 'Purok 4 Upper Carmen', 'Katana Agana', '09945516758'),
(43, 1, 'Caraan', 'Hans', 'H.', 12, 'Male', '2017-02-20', 'Grade 4', 'Secret Purok', 'Berto Halaman', '09954412236'),
(44, 1, 'EraserHeads', 'Dalion James', 'G.', 17, 'Male', '2007-10-11', 'Out of School', 'Puntod Carmen zone 10', 'Hanabi EraserHeads', '09954412267'),
(45, 1, 'Tested', 'Hangton', 'N.', 18, 'Male', '2025-10-11', 'Out of Bounds', 'Purk 5', 'James Hangton', '09954412257'),
(46, 2, 'Llarenas', 'Brendan', 'V.', 17, 'Male', '2008-08-28', 'Grade 12', 'Zone 10 Upper Carmen', 'Susan Llarenas', '09265682252'),
(47, 2, 'Galdo', 'Gerald', 'H.', 13, 'Male', '2025-10-04', 'Out of school`', 'Zone 10', 'Grace Galdo', '09954412274'),
(48, 2, 'Baslot', 'Jerome', 'H.', 19, 'Male', '2016-10-13', 'Grade 10', 'Purok 6', 'Susan Baslot', '09951124478'),
(49, 2, 'Hasul', 'Gallardo', 'V.', 19, 'Male', '2025-10-03', 'Out of School', 'Purok 5', 'Jose Hasul', '09945516632'),
(50, 2, 'Dusol', 'Alexander', 'B', 19, 'Male', '2012-10-18', '2nd Year College', 'Zone 11 Carmen', 'Joanna Dusol', '09945526637'),
(51, 3, 'Salcedo', 'Anna Leah', 'B.', 19, 'Male', '2001-06-20', '2nd Year College', 'Zone 11 Carmen', 'Fredrinn Salcedo', '09754456625'),
(52, 3, 'Umas', 'Katherine', 'K.', 16, 'Male', '2008-10-16', 'Out Of Youth', 'Zone  10-P Carmen', 'Patrick Umas', '09945578862'),
(53, 3, 'Inoue', 'Grace', 'P.', 16, 'Male', '2009-10-25', 'Grade 9', 'Santol st Upper Carmen', 'Huber Inoue', '09945516674'),
(54, 3, 'Castilla', 'Jane', 'G.', 13, 'Male', '2014-10-09', 'Grade 4', 'Zone 8', 'Josephina Castilla', '09945512268'),
(55, 3, 'Lim', 'AJ', 'I.', 20, 'Female', '2005-09-22', '2nd Year Student', 'Purok 5 Carmen', 'Joanah Lim', '09945512236'),
(56, 1, 'Llarenas', 'Jefferson', 'V.', 18, 'Male', '2025-08-03', 'Out of School', 'Zone 10', 'Arianna Grande', '09956623374'),
(57, 2, 'Uganda', 'Yodge', 'J.', 17, 'Male', '2011-10-12', '2nd Year Student', 'Zone 10 Upper Carmen', 'Susan Llarenas', '09935518167'),
(58, 2, 'Rosete', 'Raymart', 'H.', 18, 'Male', '2013-10-09', 'Grade 10', 'Zone 10', 'kalay kalay', '09921145536'),
(59, 2, 'Abdul', 'Hance', 'J,', 18, 'Male', '2018-10-09', 'Out of School', 'Zone 10', 'Susan Dusol', '099355178167'),
(60, 2, 'Aguirre', 'Louie', 'G.', 10, 'Male', '2025-10-08', 'College', 'Zone 10', 'Susana Yamba', '09951124457'),
(61, 2, 'Igot', 'Adrian', 'I', 19, 'Male', '2025-10-14', '1st Year', 'Kalapasan', 'JOsephina', '094556332');

-- --------------------------------------------------------

--
-- Table structure for table `child_tb_archive`
--

CREATE TABLE `child_tb_archive` (
  `ChildID` int(11) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `Last_name` varchar(100) NOT NULL,
  `First_name` varchar(100) NOT NULL,
  `middleInitial` varchar(2) NOT NULL,
  `Childage` int(3) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `DateOfBirth` date NOT NULL,
  `EducLvlOrStatus` varchar(100) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Parent_name` varchar(100) NOT NULL,
  `ParentContactNum` varchar(15) NOT NULL,
  `ArchiveDate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `username`, `password`, `role`) VALUES
(1, 'Jefferson', '0000', 'BCPC_Staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `casedetailscar_tb`
--
ALTER TABLE `casedetailscar_tb`
  ADD PRIMARY KEY (`car_ID`),
  ADD KEY `ChildID` (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `casedetailscar_tb_archive`
--
ALTER TABLE `casedetailscar_tb_archive`
  ADD PRIMARY KEY (`car_ID`),
  ADD KEY `ChildID` (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `casedetailscicl_tb`
--
ALTER TABLE `casedetailscicl_tb`
  ADD PRIMARY KEY (`cicl_ID`),
  ADD KEY `ChildID` (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `casedetailscicl_tb_archive`
--
ALTER TABLE `casedetailscicl_tb_archive`
  ADD PRIMARY KEY (`cicl_ID`),
  ADD KEY `ChildID` (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `casedetailscnsp_tb`
--
ALTER TABLE `casedetailscnsp_tb`
  ADD PRIMARY KEY (`cnsp_ID`),
  ADD KEY `ChildID` (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `casedetailscnsp_tb_archive`
--
ALTER TABLE `casedetailscnsp_tb_archive`
  ADD PRIMARY KEY (`cnsp_ID`),
  ADD KEY `ChildID` (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `category_tb`
--
ALTER TABLE `category_tb`
  ADD PRIMARY KEY (`categoryID`);

--
-- Indexes for table `child_tb`
--
ALTER TABLE `child_tb`
  ADD PRIMARY KEY (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `child_tb_archive`
--
ALTER TABLE `child_tb_archive`
  ADD PRIMARY KEY (`ChildID`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `casedetailscar_tb`
--
ALTER TABLE `casedetailscar_tb`
  MODIFY `car_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `casedetailscar_tb_archive`
--
ALTER TABLE `casedetailscar_tb_archive`
  MODIFY `car_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casedetailscicl_tb`
--
ALTER TABLE `casedetailscicl_tb`
  MODIFY `cicl_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `casedetailscicl_tb_archive`
--
ALTER TABLE `casedetailscicl_tb_archive`
  MODIFY `cicl_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `casedetailscnsp_tb`
--
ALTER TABLE `casedetailscnsp_tb`
  MODIFY `cnsp_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `casedetailscnsp_tb_archive`
--
ALTER TABLE `casedetailscnsp_tb_archive`
  MODIFY `cnsp_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_tb`
--
ALTER TABLE `category_tb`
  MODIFY `categoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `child_tb`
--
ALTER TABLE `child_tb`
  MODIFY `ChildID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `child_tb_archive`
--
ALTER TABLE `child_tb_archive`
  MODIFY `ChildID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casedetailscar_tb`
--
ALTER TABLE `casedetailscar_tb`
  ADD CONSTRAINT `casedetailscar_tb_ibfk_1` FOREIGN KEY (`ChildID`) REFERENCES `child_tb` (`ChildID`),
  ADD CONSTRAINT `casedetailscar_tb_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category_tb` (`categoryID`);

--
-- Constraints for table `casedetailscicl_tb`
--
ALTER TABLE `casedetailscicl_tb`
  ADD CONSTRAINT `casedetailscicl_tb_ibfk_1` FOREIGN KEY (`ChildID`) REFERENCES `child_tb` (`ChildID`),
  ADD CONSTRAINT `casedetailscicl_tb_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category_tb` (`categoryID`);

--
-- Constraints for table `casedetailscnsp_tb`
--
ALTER TABLE `casedetailscnsp_tb`
  ADD CONSTRAINT `casedetailscnsp_tb_ibfk_1` FOREIGN KEY (`ChildID`) REFERENCES `child_tb` (`ChildID`),
  ADD CONSTRAINT `casedetailscnsp_tb_ibfk_2` FOREIGN KEY (`categoryID`) REFERENCES `category_tb` (`categoryID`);

--
-- Constraints for table `child_tb`
--
ALTER TABLE `child_tb`
  ADD CONSTRAINT `child_tb_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `category_tb` (`categoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
