-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2022 at 06:30 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `movie`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `user_log_details` ()  NO SQL
select * from user_log$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `kannada`
--

CREATE TABLE `kannada` (
  `user_id` int(5) NOT NULL,
  `movie_name` varchar(20) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `malayalam`
--

CREATE TABLE `malayalam` (
  `user_id` int(5) NOT NULL,
  `movie_name` varchar(20) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `user_id` int(5) NOT NULL,
  `movie_name` varchar(20) NOT NULL,
  `comment` varchar(50) NOT NULL,
  `rating` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`user_id`, `movie_name`, `comment`, `rating`) VALUES
(1, 'Love Story', 'good', '5'),
(2, 'RX100', 'excellent', '4'),
(3, 'Color Photo', 'good', '4'),
(4, 'MEB', 'fabulous', '5'),
(9, 'vakil saba', 'super', '5'),
(14, 'RX100', 'amazing', '5'),
(16, 'Rajakumara', 'fantastic family movie', '4.5'),
(26, 'kiss', 'enjoyable', '4.5');

-- --------------------------------------------------------

--
-- Table structure for table `tamil`
--

CREATE TABLE `tamil` (
  `user_id` int(5) NOT NULL,
  `movie_name` varchar(20) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `telugu`
--

CREATE TABLE `telugu` (
  `user_id` int(5) NOT NULL,
  `movie_name` varchar(20) NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_name` varchar(20) NOT NULL,
  `user_id` int(5) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `add_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_name`, `user_id`, `phone_no`, `add_date`) VALUES
('Sanjana', 1, '9611467819', '2022-01-15'),
('Sambram', 1, '9611467819',  '2022-01-20'),
('Dekshith ', 1, '9902106219',  '2022-01-22'),
('sriram', 2, '9902106219',  '2022-01-20'),
('srushti', 2, '9902106219',  '2022-01-22'),
('xyz', 3, '1234567890',  '2022-01-20'),
('rohith', 4, '9591391264',  '2022-01-15'),
('hjlk', 5, '9632587410',  '2022-01-20'),
('vfgtr', 7, '1234567890',  '2022-01-19'),
('qwer', 8, '7894561230',  '2022-01-19'),
('Sandhya', 8, '0123456789',  '2022-01-20'),
('kumari', 9, '9611467819',  '2022-01-20'),
('shalini', 10, '9632587410',  '2022-01-22'),
('abcdef', 11, '9632587410',  '2022-01-22'),
('amar bava', 14, '9980970019',  '2022-01-23'),
('Keerthi', 51, '7829470359', '2022-01-22'),
('Greeshma', 52, '9591939803',  '2022-01-13');

--
-- Triggers `user`
--
DELIMITER $$
CREATE TRIGGER `userlog` AFTER INSERT ON `user` FOR EACH ROW INSERT INTO user_log VALUES (new.user_name, new.user_id, new.phone_no , new.add_date,NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_name` varchar(20) NOT NULL,
  `user_id` int(5) NOT NULL,
  `phone_no` varchar(10) NOT NULL,
  `add_date` date NOT NULL,
  `date_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_name`, `user_id`, `phone_no`, `add_date`, `date_time`) VALUES
('Dekshith ', 2, '9902106219',  '2022-01-22', '2022-01-22 20:29:12'),
('sanjana', 1, '9902106219',  '2022-01-22', '2022-01-22 20:30:18'),
('sambram', 9, '9611467819',  '2022-01-20', '2022-01-22 19:53:04'),
('shalini', 10, '9632587410',  '2022-01-22', '2022-01-22 20:12:31'),
('abcdef', 11, '9632587410',  '2022-01-22', '2022-01-23 00:20:07'),
('amar bava', 14, '9980970019',  '2022-01-23', '2022-01-23 16:35:12'),
('Keerthi', 51, '7829470359',  '2022-01-22', '2022-01-22 17:03:50'),
('Greeshma', 52, '9591939803',  '2022-01-13', '2022-01-22 17:24:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kannada`
--
ALTER TABLE `kannada`
  ADD PRIMARY KEY (`movie_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `malayalam`
--
ALTER TABLE `malayalam`
  ADD PRIMARY KEY (`movie_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tamil`
--
ALTER TABLE `tamil`
  ADD PRIMARY KEY (`movie_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `telugu`
--
ALTER TABLE `telugu`
  ADD PRIMARY KEY (`movie_name`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`,`add_date`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `add_date` (`add_date`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kannada`
--
ALTER TABLE `kannada`
  ADD CONSTRAINT `kannada_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `malayalam`
--
ALTER TABLE `malayalam`
  ADD CONSTRAINT `malayalam_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tamil`
--
ALTER TABLE `tamil`
  ADD CONSTRAINT `tamil_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `telugu`
--
ALTER TABLE `telugu`
  ADD CONSTRAINT `telugu_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
