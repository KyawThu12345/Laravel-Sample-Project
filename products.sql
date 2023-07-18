-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2023 at 05:32 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bm`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `imgs` text NOT NULL,
  `price` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `imgs`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Boostrap Book', 'The Mastering Bootstrap Book helps you to create responsive website design and more UX and UI design layout templates.', 'a:1:{i:0;s:37:\"64b5206f85998_Mastering_Bootstrap.png\";}', 35, '2023-07-17 04:35:19', '2023-07-17 04:35:19'),
(2, 'PHP Book', 'PHP Book Written by Teacher Rufus Stewart.This book will help developer to create quick and dynamic project.', 'a:1:{i:0;s:26:\"64b56a18e6139_PHP_Book.png\";}', 30, '2023-07-17 09:49:36', '2023-07-17 09:49:36'),
(3, 'Modern PHP Book', 'MODERN PHP Book Written by Teacher Josh Lockhart.This book will help developer to create quick and well project.', 'a:1:{i:0;s:27:\"64b56a35c8ba5_MPHP_Book.png\";}', 25, '2023-07-17 09:50:05', '2023-07-17 09:50:05'),
(4, 'Laravel Book', 'PHP Laravel Book Written by Teacher Rufus Stewart.This book will help developer to create quick and dynamic project', 'a:1:{i:0;s:30:\"64b56a921dd70_laravel_Book.png\";}', 30, '2023-07-17 09:51:38', '2023-07-17 09:51:38'),
(5, 'Java Head First', 'Java Head First Book Written by Teacher Kathy Sierra,Bert Bates & Trisha Gee.This book will help developer to create fast and business project.', 'a:1:{i:0;s:27:\"64b56abc4bef0_Java_Book.png\";}', 50, '2023-07-17 09:52:20', '2023-07-17 09:52:20'),
(6, 'Think Java', 'Java Think Book Written by Teacher Allen B.Downey & Chris Mayfield .This book will help developer to create completed project.', 'a:1:{i:0;s:23:\"64b56ad600d9b_TJava.png\";}', 40, '2023-07-17 09:52:46', '2023-07-17 09:52:46'),
(7, 'Practical Bootstrap', 'Learn to develop responsively with one of the most popular css frameworks.This book helps a good practice and code product of projects.', 'a:1:{i:0;s:37:\"64b56af0eba48_Practical_Bootstrap.png\";}', 35, '2023-07-17 09:53:13', '2023-07-17 09:53:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
