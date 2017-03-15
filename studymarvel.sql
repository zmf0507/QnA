-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2017 at 11:23 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studymarvel`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `ansid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `studentid` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`ansid`, `qid`, `studentid`, `answer`, `time`) VALUES
(1, 5, '0', 'dd', 0),
(2, 5, '0', 'hhhhhh', 0),
(3, 4, '0', 'ggggggg', 0),
(4, 4, '0', 'ggggggggg', 0),
(5, 4, '0', 'helllo', 0),
(6, 5, '0', 'hhhhhh', 0),
(7, 5, 'abc', 'jjjjj', 0),
(8, 6, 'abc', 'i am fine', 0),
(9, 6, 'abc', 'great', 0),
(10, 6, 'abc', 'what?', 0),
(11, 4, 'abc', 'helllloo', 0),
(21, 9, 'xyz', 'sssssssss', 0),
(22, 8, 'xyz', 'sssssssss', 0),
(23, 5, 'xyz', 'sssssssssss', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `student` varchar(255) NOT NULL,
  `question` varchar(255) NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `student`, `question`, `time`) VALUES
(1, 'abc', 'hddddddd', '2017-03-15 15:28:05'),
(2, 'abc', 'dddddddddd', '2017-03-15 15:28:13'),
(4, 'abc', 'what are you doing?', '2017-03-15 16:25:36'),
(5, 'abc', 'ahhh', '2017-03-15 16:26:55'),
(6, 'abc', 'how are you?', '2017-03-15 16:32:45'),
(7, 'abc', 'kya hua?', '2017-03-15 16:36:45'),
(8, 'xyz', 'jdj', '2017-03-15 16:46:51'),
(9, 'xyz', 'dddddddd', '2017-03-15 16:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `time`) VALUES
(1, 'abc', '1', '2017-03-15 07:38:38'),
(2, 'xyz', '1', '2017-03-15 11:16:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`ansid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `ansid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
