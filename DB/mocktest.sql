-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2023 at 01:59 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mocktest`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `qno` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  `correct_answer` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `qno`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correct_answer`) VALUES
(9, 5, 'Find the speed of the train, if a train 142 m long passes a pole in 6 seconds.', '77.2 km/hr', '79.6 km/hr', '79.2 km/hr', '84.9 km/hr', 'd'),
(8, 3, 'What is the value of c , If 8 is 4% of a, and 4 is 8% of b. c equals b/a.', '12', '1/4', '0.155', 'None of these', 'b'),
(7, 2, 'Find the H.C.F, if the numbers are in the ratio of 4:5:6 and their L.C.M. is 2400.', '35', '20', '40', '67', 'b'),
(6, 1, 'Today it is Thursday. After 132 days, it will be ?', 'Monday', 'Sunday', 'Wednesday', 'Thursday', 'c'),
(5, 4, 'Find the speed of the boat in still water, if a boat covers a certain distance upstream in 2 hours, while it comes back in 1`1/2` hours. If the speed of the stream be 3 kmph.', '12 Kmph', '18 Kmph', '21 Kmph', '24 Kmph', 'c'),
(10, 6, 'The rate at which a sum becomes four times of itself in 25 years at S.I.,will be:', '30%', '12%', '25%', '49%', 'b'),
(11, 7, 'Sum of present ages of A, B and C is 92 years. If 4 years ago, the ratio of their ages were 1:2:3 respectively, find A&rsquo;s present age.', '18.5 year', '14.8 years', '17.3 years', '20.3 years', 'c'),
(12, 8, '3 years back average age of A and B was 32. Today average age of A,B and C is 30. What is the age of C?', '5', '10', '15', '20', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `played_on` varchar(225) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `played_on`, `score`) VALUES
(84, 'vikash@gmail.com', '15:54 11-01-2023', 1),
(81, 'test1@gmail.com', '19:27 10-01-2023', 0),
(82, 'raj@gmail.com', '19:31 10-01-2023', 0),
(83, 'syed@gmail.com', '16:11 11-01-2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `username_value` varchar(50) NOT NULL,
  `password_value` varchar(50) NOT NULL,
  `email_ID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`username_value`, `password_value`, `email_ID`) VALUES
('test1', 'test1', 'test1@gmail.com'),
('syed', 'syed', 'syed@gmail.com'),
('raj', 'raj', 'raj@gmail.com'),
('vikash', 'vikash', 'vikash@gmail.com'),
('syed', '123', 'lbvikashbabu10@gmail.com'),
('syed', '123', 'lbvikashbabu10@gmail.com');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
