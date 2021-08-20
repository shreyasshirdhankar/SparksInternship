-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2021 at 02:31 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparks`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(10) NOT NULL,
  `sender` varchar(30) NOT NULL,
  `receiver` varchar(30) NOT NULL,
  `balance` int(20) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(2, 'Shweta Bhilare', 'Shreyas Shirdhankar', 10000, '2021-08-19 03:17:44'),
(3, 'Nitin Vadher', 'Mansi Patil', 5000, '2021-08-19 13:27:53'),
(4, 'Shreyas Shirdhankar', 'Sunil Shirdhankar', 1000, '2021-08-20 17:29:00'),
(5, 'Shreyas Shirdhankar', 'Shubham Sharma', 1000, '2021-08-20 17:36:46'),
(6, 'Divyang Dushman', 'Shreyas Shirdhankar', 3000, '2021-08-20 17:40:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Shreyas Shirdhankar', 'shreyas@gmail.com', 81000),
(2, 'Nitin Vadher', 'NitinVadher@gmail.com', 45000),
(3, 'Shweta Bhilare', 'ShwetaBhilare@gmail.com', 80000),
(4, 'Divyang Dushman', 'DivyangDushman@yahoo.com', 97000),
(5, 'Mansi Patil', 'MansiPatil@yahoo.com', 45000),
(6, 'Sunil Shirdhankar', 'SunilShirdhankar@yahoo.com', 501000),
(7, 'Shubham Sharma', 'ShubhamSharmar@yahoo.com', 44000),
(8, 'Sudeep Sharma', 'SudeepSahu@gmail.com', 21000),
(9, 'Siddhi Shirdhankar', 'SiddhiShirdhankar@gmail.com', 740000),
(10, 'Vibhuti Pusalkar', 'VibhutiPusalkar@gmail.com', 660000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
