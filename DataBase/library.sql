-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 02:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` int(11) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `User_Name`, `Password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `BID` int(11) NOT NULL,
  `Book_Name` varchar(30) NOT NULL,
  `Author_Name` varchar(50) NOT NULL,
  `Publication` varchar(20) NOT NULL,
  `Day` varchar(5) NOT NULL,
  `Month` varchar(5) NOT NULL,
  `Year` varchar(6) NOT NULL,
  `Price` varchar(8) NOT NULL,
  `Quantity` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`BID`, `Book_Name`, `Author_Name`, `Publication`, `Day`, `Month`, `Year`, `Price`, `Quantity`) VALUES
(1, 'Data Structure And Algorithm', 'Bill Gates', 'Microsoft', '24', '04', '2022', '600.00', '7'),
(2, 'Science For Technology ', 'Danith Sri', 'Sarasavi', '02', '12', '2023', '456.08', '6'),
(3, 'Science For Technology ', 'Danith Sri', 'Sarasavi', '02', '12', '2023', '456.08', '6'),
(6, 'Sherlok Homes', 'Chandana Mendis', 'Sarasavi', '3', '4', '2023', '700.00', '3');

-- --------------------------------------------------------

--
-- Table structure for table `bookr`
--

CREATE TABLE `bookr` (
  `Rid` int(11) NOT NULL,
  `Book_Name` varchar(30) NOT NULL,
  `Issue_Day` varchar(5) NOT NULL,
  `Issue_Month` varchar(8) NOT NULL,
  `Issue_Year` varchar(5) NOT NULL,
  `Return_Day` varchar(5) NOT NULL,
  `Return_Month` varchar(5) NOT NULL,
  `Return_Year` varchar(5) NOT NULL,
  `Enroal_Num` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookr`
--

INSERT INTO `bookr` (`Rid`, `Book_Name`, `Issue_Day`, `Issue_Month`, `Issue_Year`, `Return_Day`, `Return_Month`, `Return_Year`, `Enroal_Num`) VALUES
(1, 'Select Book', '07', '5', '2023', '07', '5', '2023', 'TE97219'),
(2, 'Select Book', '21', '30', '2023', '21', '30', '2023', 'TE97219'),
(3, 'Select Book', '21', '30', '2023', '21', '30', '2023', 'TE97219'),
(4, 'Science For Technology ', '21', '30', '2023', '21', '30', '2023', 'TE97219'),
(5, 'Sherlok Homes', '6', '9', '2023', '6', '9', '2023', 'TE97890'),
(6, 'Select Book', '21', '30', '2023', '21', '30', '2023', 'TE97219'),
(7, 'Select Book', '21', '30', '2023', '21', '30', '2023', 'TE97219');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `isID` int(11) NOT NULL,
  `Student_Name` varchar(30) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Semester` varchar(30) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Mail` varchar(50) NOT NULL,
  `Day` varchar(5) NOT NULL,
  `Month` varchar(5) NOT NULL,
  `Year` varchar(5) NOT NULL,
  `Enroal_Num` varchar(30) NOT NULL,
  `Book_Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`isID`, `Student_Name`, `Department`, `Semester`, `Contact`, `Mail`, `Day`, `Month`, `Year`, `Enroal_Num`, `Book_Name`) VALUES
(1, 'Vajira Samarasingha', 'ICT', 'Semester 6', '0765543345', 'vajirakcc1999@gmail.com', '1', '04', '2023', 'TE97219', ''),
(2, 'Vajira Samarasingha', 'ICT', 'Semester 6', '0765543345', 'vajirakcc1999@gmail.com', '07', '5', '2023', 'TE97219', 'Science For Technology '),
(3, 'Vajira Samarasingha', 'ICT', 'Semester 6', '0765543345', 'vajirakcc1999@gmail.com', '02', '04', '2023', 'TE97219', 'Data Structure And Algorithm'),
(4, 'Vajira Samarasingha', 'ICT', 'Semester 6', '0765543345', 'vajirakcc1999@gmail.com', '08', '04', '2023', 'TE97219', 'Science For Technology '),
(5, 'Vajira Samarasingha', 'ICT', 'Semester 6', '0765543345', 'vajirakcc1999@gmail.com', '21', '30', '2023', 'TE97219', 'Data Structure And Algorithm'),
(6, 'Hemal Predeep', 'BST', 'Semester 7', '0775678678', 'predeep54@gmail.com', '7', '04', '2023', 'TE97890', 'Select Book'),
(7, 'Hemal Predeep', 'BST', 'Semester 7', '0775678678', 'predeep54@gmail.com', '6', '9', '2023', 'TE97890', 'Sherlok Homes');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `SId` int(11) NOT NULL,
  `Student_Name` varchar(30) NOT NULL,
  `Enroal_Num` varchar(10) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Semester` varchar(20) NOT NULL,
  `Contact` varchar(15) NOT NULL,
  `Email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`SId`, `Student_Name`, `Enroal_Num`, `Department`, `Semester`, `Contact`, `Email`) VALUES
(1, 'Vajira Samarasingha', 'TE97219', 'ICT', 'Semester 6', '0765543345', 'vajirakcc1999@gmail.com'),
(2, 'Vajira Samarasingha', 'TE97220', 'ICT', 'Semester 6', '0765543345', 'vajirakcc1999@gmail.com'),
(4, 'Kasun Presath', 'TE97624', 'EGT', 'Semester 8', '0786745567', 'kasun@gmail.com'),
(5, 'Kasun Presath', 'TE97624', 'EGT', 'Semester 8', '0786745567', 'kasun@gmail.com'),
(6, 'Hemal Predeep', 'TE97890', 'BST', 'Semester 7', '0775678678', 'predeep54@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `bookr`
--
ALTER TABLE `bookr`
  ADD PRIMARY KEY (`Rid`);

--
-- Indexes for table `issue`
--
ALTER TABLE `issue`
  ADD PRIMARY KEY (`isID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`SId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `BID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookr`
--
ALTER TABLE `bookr`
  MODIFY `Rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `issue`
--
ALTER TABLE `issue`
  MODIFY `isID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `SId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
