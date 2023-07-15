-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2023 at 09:55 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tododb`
--

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `todo_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`todo_id`, `title`, `description`, `created`, `user_id`) VALUES
(1, 'LAHA', 'my family', '2023-07-15 19:07:16', 1),
(2, 'BASU', 'satindra family', '2023-07-07 15:10:35', 2),
(4, 'DHABAR', 'aritro family', '2023-07-09 04:08:14', 1),
(6, 'SARKAR', 'abid family', '2023-07-09 04:12:30', 3),
(7, 'DAS', 'souvik family', '2023-07-09 04:26:17', 3),
(8, 'ROY', 'joy family', '2023-07-09 18:13:31', 2),
(11, 'HAZRA', 'sudip family', '2023-07-15 19:50:42', 4),
(9, 'MONDAL', 'asik family', '2023-07-11 15:19:57', 2),
(10, 'PIPLAI', 'saikat family', '2023-07-15 19:06:29', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass1` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `phone`, `email`, `pass1`, `created`) VALUES
(1, 'Subhajit Laha', '8981292973', 'sjlaha2017@gmail.com', '$2y$10$zkfe.IjfDA8XzfnuAA3QR.yW372KTejRIM82vTFOR5gifSHGMIEUi', '2023-07-10 15:02:43'),
(2, 'Uma Laha', '9163024615', 'umalaha@gmail.com', '$2y$10$sgJv9fJVBCJN9fKCATGSmeE/OY3UeGmxgPS2mZ//7OMXpU8M0DZga', '2023-07-10 15:18:20'),
(3, 'Nirmal Laha', '9231672517', 'nirmal@gmail.com', '$2y$10$xDJcQgYjMHxKAyDgTL0azeRKx0MfT1HNy03tz5QdkZuBW98IN03PK', '2023-07-10 18:48:44'),
(4, 'Asik Mondal', '9874563210', 'asik@gmail.com', '$2y$10$wqhtE9V9FgMap3T95qCE9.7/zKA5vz33gAJop.IrHab4EBj9CsJUG', '2023-07-15 17:35:21'),
(5, 'Souvik Das', '8974563012', 'souvik@gmail.com', '$2y$10$idtME45ZOKAknr7BUVbIEeD3SCmljbZn0kYg5Zxz2W2S5wM6.yjIS', '2023-07-15 18:39:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`todo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`,`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `todo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
