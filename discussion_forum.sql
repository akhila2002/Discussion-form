-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2021 at 10:29 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discussion_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `students_id` varchar(13) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` text NOT NULL,
  `comment` text NOT NULL,
  `post_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `reply_of` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `students_id`, `name`, `email`, `comment`, `post_id`, `created_at`, `reply_of`, `status`, `category`) VALUES
(1, 'AP19110010036', 'Divya', 'divyayamali5799@gmail.com', 'what is inheritence?', 0, '2021-10-19 10:59:29', 0, 'approved', 'Java'),
(2, 'AP19110010036', 'Divya', 'divyayamali5799@gmail.com', 'booommmm', 0, '2021-10-19 11:12:09', 0, 'approved', 'C'),
(3, 'AP19110010036', 'Divya', 'divyayamali5799@gmail.com', 'what is digital signal 23', 0, '2021-10-19 12:21:06', 0, 'pending', 'Digital Signal');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` varchar(13) NOT NULL,
  `name` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` text NOT NULL,
  `academic year` varchar(20) NOT NULL,
  `institution` text NOT NULL,
  `semester` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `parent name` text NOT NULL,
  `pic` varchar(200) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `password`, `email`, `academic year`, `institution`, `semester`, `section`, `gender`, `parent name`, `pic`, `role`) VALUES
('AP19110010036', 'Divya Sri. Yamali', '036', 'divyayamali5799@gmail.com', '2019-2021', 'SRM University, Amaravati', 'V semester', 'CSE-G', '26-aug-2002/female', 'RamaKrishna', 'baby.jpg', 'admin'),
('AP19110010143', 'Meghana Sai. Challapalli', '10', 'meghanasai_challapalli@srmap.edu.in', '2019-2023', 'SRM Uniiversity,AP', 'V Semesteeer', 'CSE-G', 'female', 'Ramakrishna', 's.jfif', 'user'),
('AP19110010223', 'Nagalakshmi. Tondapu', '1234', 'tondapunagalakshmi@gmail.com', '2019-2021', 'srm', 'v sem', 'cse-g', 'female', 'hjhjh', 'p.jpg', 'user'),
('AP19110010322', 'Akhila Nathani', '322', 'akhila_nathani@srmap.edu.in', '2019-2023', 'SRM University, AP', 'v SEMESTER', 'CSE-H', 'female', 'Venkateswarao', 'd.jpg', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_id` (`students_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `students_id` FOREIGN KEY (`students_id`) REFERENCES `students` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
