-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2023 at 06:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contactdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `mobileno` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(255) NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `localIP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `mobileno`, `email`, `subject`, `message`, `time_stamp`, `localIP`) VALUES
(1, '', '', 'iamanubhawsingh@gmail.com', 'xyz', 'xyz', '2023-08-20 08:57:08', ''),
(2, '', '', 'iamanubhawsingh@gmail.com', 'xyz', 'xyz', '2023-08-20 08:57:08', ''),
(3, '', '', 'aman@gmail.com', 'abc', 'abc', '2023-08-20 08:58:02', ''),
(4, '', '', 'aman@gmail.com', 'abc', 'abc', '2023-08-20 08:59:02', ''),
(5, '', '', 'aman@gmail.com', 'abc', 'abc', '2023-08-20 08:59:21', ''),
(6, '', '', 'aman@gmail.com', 'abc', 'abc', '2023-08-20 09:00:21', ''),
(7, '', '', 'sagar@gmail.com', 'abc', 'abc', '2023-08-20 09:12:03', ''),
(8, '', '', 'sagar@gmail.com', 'abc', 'abc', '2023-08-20 09:12:11', ''),
(9, '', '', 'sagar@gmail.com', 'abc', 'abc', '2023-08-20 09:12:29', ''),
(10, '', '', 'sagar@gmail.com', 'abc', 'abc', '2023-08-20 09:27:26', ''),
(11, '', '', 'golu@gmail.com', 'abcd', 'abcd', '2023-08-20 09:28:04', ''),
(12, '', '', 'hh@gmail.com', 'gvj', 'ghgh', '2023-08-20 09:30:48', ''),
(13, '', '', 'lalusinghsiwan@gmail.com', 'gjhjh', 'cecd', '2023-08-20 09:48:46', ''),
(14, '', '', 'iamanubhawsingh@gmail.com', 'gjhjh', 'dgdf', '2023-08-20 10:03:27', ''),
(15, '', '', '', '', '', '2023-08-20 10:56:36', ''),
(16, '', '', '', '', '', '2023-08-20 10:56:44', ''),
(17, '', '', '', '', '', '2023-08-20 10:56:54', ''),
(18, '', '', '', '', '', '2023-08-20 11:26:45', ''),
(19, '', '', '', '', '', '2023-08-20 11:26:51', ''),
(20, '', '', '', '', '', '2023-08-20 11:28:15', ''),
(21, '', '', '', '', '', '2023-08-20 11:33:21', ''),
(22, '', '', '', '', '', '2023-08-20 11:33:48', ''),
(23, 'ghghgh', '9934899608', 'iamanubhawsingh@gmail.com', '', '', '2023-08-20 12:19:23', ''),
(24, 'ghghgh', '9934899608', 'iamanubhawsingh@gmail.com', '', '', '2023-08-20 12:23:56', ''),
(25, 'ghghgh', '9934899608', 'iamanubhawsingh@gmail.com', '', '', '2023-08-20 14:06:59', ''),
(26, 'ghghgh', '9934899608', 'iamanubhawsingh@gmail.com', '', '', '2023-08-21 04:32:09', ''),
(27, 'ghghgh', '9934899608', 'iamanubhawsingh@gmail.com', 'my', 'my', '2023-08-21 04:34:55', ''),
(28, 'ghghgh', '9934899608', 'iamanubhawsingh@gmail.com', 'gjhjh', 'sd bv', '2023-08-21 04:39:37', '192.168.241.170');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
