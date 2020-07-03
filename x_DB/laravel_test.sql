-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 05:33 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_role` tinyint(4) DEFAULT NULL,
  `language` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'en',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `username`, `admin_role`, `language`, `photo`, `password`, `remember_token`, `status`, `trash`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'My Super Admin', 'mysuper@gmail.com', 'myadminsuper', 1, 'bn', 'public/images/admins/1585631767.jpg', '$2y$10$3490jDIzM0C7InM4Z6r2seWDb7ZtA8ZDNbvWT1X1F/E/NtqENxOmW', 'BvTkyn9pcOW5S274WymHWJmudhtRuEMaPFNcq1HZDtiCkOei5119YOhPeWUr', 1, 0, '2019-03-25 01:00:00', '2020-07-02 18:24:17', NULL),
(2, 'Admin', 'admin@gmail.com', 'admin', 2, 'bn', 'public/images/admins/1585632020.png', '$2y$10$zxGPra1cDNS14Ctvx4OO4.etmnxE/F.oNzwSfbkkegXTOXpeYtK4O', 'g6JcoLQ3zFxFsk5vP6FpyKxmgXXaabG7tW6KyWwLwzsI6oDlXMAAz1u8bTDr', 1, 0, '2019-03-25 01:00:00', '2020-07-02 18:36:41', NULL),
(3, 'aaaaaa', 'afzalsabbir.bd@gmail.com', 'aaaaaa', 3, 'en', NULL, '$2y$10$P1rFOIiR1hB4IdUDBw/KKenlpz9LK80jAw/IWulwNUXF6hnc90lzu', NULL, 1, 0, '2019-04-25 13:46:07', '2019-04-25 13:46:07', NULL),
(4, 'bbbbbb', 'afzalbd1@gmail.comk', 'bbbbbb', 3, 'en', NULL, '$2y$10$wpvJp1iVMxNM6Tkzn9IRwe6CftljT2xXkj13euFuV.mJorisuC17y', NULL, 1, 0, '2019-04-25 13:47:19', '2019-04-25 13:47:19', NULL),
(5, 'cccccc', 'c@c.c', 'cccccc', 3, 'en', 'public/images/admins/1585076311.jpg', '$2y$10$nvk3FRKAwe.TEz3xbE3kTODbLLOfBoIicK9frDdjW.zwNuC1gwPty', NULL, 1, 0, '2020-03-24 18:58:32', '2020-03-24 18:58:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_access_infos`
--

CREATE TABLE `admin_access_infos` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `admin_access_infos`
--

INSERT INTO `admin_access_infos` (`id`, `admin_id`, `ip`, `country`, `device`, `browser`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '::1', 'US', 'PC', 'Chrome', 1, '2019-04-13 21:23:58', '2019-04-13 21:23:58'),
(2, 1, '::1', 'US', 'PC', 'Chrome', 1, '2019-04-13 21:32:58', '2019-04-13 21:32:58'),
(3, 1, '::1', 'US', 'PC', 'Chrome', 1, '2019-04-13 09:54:11', '2019-04-13 09:54:11'),
(4, 1, '::1', 'US', 'PC', 'Chrome', 1, '2019-04-13 09:54:28', '2019-04-13 09:54:28'),
(5, 1, '::1', 'US', 'PC', 'Chrome', 1, '2019-04-13 11:15:57', '2019-04-13 11:15:57'),
(6, 1, '::1', 'US', 'PC', 'Chrome', 1, '2019-04-14 07:02:21', '2019-04-14 07:02:21'),
(7, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-15 12:30:22', '2019-04-15 12:30:22'),
(8, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-16 12:40:57', '2019-04-16 12:40:57'),
(9, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-18 12:56:28', '2019-04-18 12:56:28'),
(10, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-19 09:40:46', '2019-04-19 09:40:46'),
(11, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2019-04-19 09:52:12', '2019-04-19 09:52:12'),
(12, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-19 09:52:53', '2019-04-19 09:52:53'),
(13, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-19 10:10:57', '2019-04-19 10:10:57'),
(14, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-21 13:35:26', '2019-04-21 13:35:26'),
(15, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-23 11:19:55', '2019-04-23 11:19:55'),
(16, 2, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-23 12:18:56', '2019-04-23 12:18:56'),
(17, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-23 12:19:59', '2019-04-23 12:19:59'),
(18, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-25 09:33:47', '2019-04-25 09:33:47'),
(19, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-25 11:28:26', '2019-04-25 11:28:26'),
(20, 1, '::1', NULL, 'PC', 'Firefox', 1, '2019-04-25 22:14:32', '2019-04-25 22:14:32'),
(21, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-04-30 05:41:04', '2019-04-30 05:41:04'),
(22, 1, '::1', NULL, 'PC', 'Chrome', 1, '2019-06-14 21:44:09', '2019-06-14 21:44:09'),
(23, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 04:08:16', '2020-02-24 04:08:16'),
(24, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 07:52:02', '2020-02-24 07:52:02'),
(25, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 07:53:45', '2020-02-24 07:53:45'),
(26, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 08:17:11', '2020-02-24 08:17:11'),
(27, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 08:25:02', '2020-02-24 08:25:02'),
(28, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 08:53:38', '2020-02-24 08:53:38'),
(29, 3, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 08:53:53', '2020-02-24 08:53:53'),
(30, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 08:54:03', '2020-02-24 08:54:03'),
(31, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-02-24 08:56:07', '2020-02-24 08:56:07'),
(32, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-25 04:43:04', '2020-02-25 04:43:04'),
(33, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-25 05:18:42', '2020-02-25 05:18:42'),
(34, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-25 05:19:07', '2020-02-25 05:19:07'),
(35, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 05:58:41', '2020-02-26 05:58:41'),
(36, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 06:01:02', '2020-02-26 06:01:02'),
(37, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 06:08:30', '2020-02-26 06:08:30'),
(38, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 06:08:38', '2020-02-26 06:08:38'),
(39, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 08:32:02', '2020-02-26 08:32:02'),
(40, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 11:18:12', '2020-02-26 11:18:12'),
(41, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 11:19:18', '2020-02-26 11:19:18'),
(42, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 11:26:35', '2020-02-26 11:26:35'),
(43, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-26 11:30:24', '2020-02-26 11:30:24'),
(44, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 03:29:19', '2020-02-27 03:29:19'),
(45, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 03:45:51', '2020-02-27 03:45:51'),
(46, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 05:25:30', '2020-02-27 05:25:30'),
(47, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 05:53:27', '2020-02-27 05:53:27'),
(48, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 08:20:45', '2020-02-27 08:20:45'),
(49, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 09:42:35', '2020-02-27 09:42:35'),
(50, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 09:44:02', '2020-02-27 09:44:02'),
(51, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 10:08:01', '2020-02-27 10:08:01'),
(52, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 11:46:55', '2020-02-27 11:46:55'),
(53, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 11:52:23', '2020-02-27 11:52:23'),
(54, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 11:53:01', '2020-02-27 11:53:01'),
(55, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 12:02:14', '2020-02-27 12:02:14'),
(56, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 12:24:32', '2020-02-27 12:24:32'),
(57, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 12:24:54', '2020-02-27 12:24:54'),
(58, 4, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 12:25:42', '2020-02-27 12:25:42'),
(59, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-02-27 12:27:50', '2020-02-27 12:27:50'),
(60, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 09:40:27', '2020-03-01 09:40:27'),
(61, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 10:22:44', '2020-03-01 10:22:44'),
(62, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 10:23:01', '2020-03-01 10:23:01'),
(63, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 10:27:26', '2020-03-01 10:27:26'),
(64, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 10:27:49', '2020-03-01 10:27:49'),
(65, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 10:50:52', '2020-03-01 10:50:52'),
(66, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 10:51:08', '2020-03-01 10:51:08'),
(67, 4, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-01 10:51:38', '2020-03-01 10:51:38'),
(68, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-03-04 04:54:54', '2020-03-04 04:54:54'),
(69, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-03-04 05:59:51', '2020-03-04 05:59:51'),
(70, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-04 10:41:44', '2020-03-04 10:41:44'),
(71, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-05 02:08:14', '2020-03-05 02:08:14'),
(72, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-05 02:08:39', '2020-03-05 02:08:39'),
(73, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-05 02:11:02', '2020-03-05 02:11:02'),
(74, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-05 07:46:22', '2020-03-05 07:46:22'),
(75, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:40:41', '2020-03-07 05:40:41'),
(76, 4, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:41:58', '2020-03-07 05:41:58'),
(77, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:54:21', '2020-03-07 05:54:21'),
(78, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:54:32', '2020-03-07 05:54:32'),
(79, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:55:22', '2020-03-07 05:55:22'),
(80, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:55:32', '2020-03-07 05:55:32'),
(81, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:55:47', '2020-03-07 05:55:47'),
(82, 4, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:56:04', '2020-03-07 05:56:04'),
(83, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 05:56:17', '2020-03-07 05:56:17'),
(84, 4, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 06:00:11', '2020-03-07 06:00:11'),
(85, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 06:00:21', '2020-03-07 06:00:21'),
(86, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 06:00:34', '2020-03-07 06:00:34'),
(87, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 06:00:59', '2020-03-07 06:00:59'),
(88, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-07 06:14:21', '2020-03-07 06:14:21'),
(89, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-10 03:29:24', '2020-03-10 03:29:24'),
(90, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 15:43:47', '2020-03-23 15:43:47'),
(91, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 16:47:06', '2020-03-23 16:47:06'),
(92, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 16:54:39', '2020-03-23 16:54:39'),
(93, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 16:55:48', '2020-03-23 16:55:48'),
(94, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 17:50:45', '2020-03-23 17:50:45'),
(95, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 17:59:38', '2020-03-23 17:59:38'),
(96, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 18:59:11', '2020-03-23 18:59:11'),
(97, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 19:00:46', '2020-03-23 19:00:46'),
(98, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 19:01:13', '2020-03-23 19:01:13'),
(99, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 19:01:47', '2020-03-23 19:01:47'),
(100, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-23 19:10:46', '2020-03-23 19:10:46'),
(101, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-24 18:36:11', '2020-03-24 18:36:11'),
(102, 5, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-24 19:14:48', '2020-03-24 19:14:48'),
(103, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-24 19:18:33', '2020-03-24 19:18:33'),
(104, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-25 04:34:05', '2020-03-25 04:34:05'),
(105, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-26 04:00:16', '2020-03-26 04:00:16'),
(106, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-26 11:48:37', '2020-03-26 11:48:37'),
(107, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-27 03:08:28', '2020-03-27 03:08:28'),
(108, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-27 18:41:27', '2020-03-27 18:41:27'),
(109, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-28 03:55:59', '2020-03-28 03:55:59'),
(110, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-03-28 11:04:38', '2020-03-28 11:04:38'),
(111, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-28 12:50:35', '2020-03-28 12:50:35'),
(112, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-29 03:16:11', '2020-03-29 03:16:11'),
(113, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-29 09:52:30', '2020-03-29 09:52:30'),
(114, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-29 13:04:42', '2020-03-29 13:04:42'),
(115, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-30 03:25:45', '2020-03-30 03:25:45'),
(116, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-30 14:28:43', '2020-03-30 14:28:43'),
(117, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 02:04:21', '2020-03-31 02:04:21'),
(118, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 05:21:00', '2020-03-31 05:21:00'),
(119, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 05:50:11', '2020-03-31 05:50:11'),
(120, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 05:52:43', '2020-03-31 05:52:43'),
(121, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 06:16:02', '2020-03-31 06:16:02'),
(122, 3, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 06:28:12', '2020-03-31 06:28:12'),
(123, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 06:44:23', '2020-03-31 06:44:23'),
(124, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 06:49:23', '2020-03-31 06:49:23'),
(125, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 07:03:08', '2020-03-31 07:03:08'),
(126, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 07:15:31', '2020-03-31 07:15:31'),
(127, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 07:16:09', '2020-03-31 07:16:09'),
(128, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 07:16:28', '2020-03-31 07:16:28'),
(129, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 07:17:52', '2020-03-31 07:17:52'),
(130, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 07:23:45', '2020-03-31 07:23:45'),
(131, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 07:24:17', '2020-03-31 07:24:17'),
(132, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 08:06:38', '2020-03-31 08:06:38'),
(133, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-03-31 10:42:34', '2020-03-31 10:42:34'),
(134, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-01 01:53:26', '2020-04-01 01:53:26'),
(135, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-01 06:32:24', '2020-04-01 06:32:24'),
(136, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-01 06:53:19', '2020-04-01 06:53:19'),
(137, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-01 07:06:25', '2020-04-01 07:06:25'),
(138, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-02 12:37:27', '2020-04-02 12:37:27'),
(139, 2, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-02 13:52:20', '2020-04-02 13:52:20'),
(140, 3, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-02 13:54:31', '2020-04-02 13:54:31'),
(141, 3, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-02 14:21:12', '2020-04-02 14:21:12'),
(142, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-02 15:49:42', '2020-04-02 15:49:42'),
(143, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-03 00:20:12', '2020-04-03 00:20:12'),
(144, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-03 06:37:59', '2020-04-03 06:37:59'),
(145, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-03 11:01:42', '2020-04-03 11:01:42'),
(146, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-03 14:14:23', '2020-04-03 14:14:23'),
(147, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-03 14:23:53', '2020-04-03 14:23:53'),
(148, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-04 01:05:55', '2020-04-04 01:05:55'),
(149, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-04 08:38:05', '2020-04-04 08:38:05'),
(150, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-04 13:15:07', '2020-04-04 13:15:07'),
(151, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-05 01:13:27', '2020-04-05 01:13:27'),
(152, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-05 05:38:57', '2020-04-05 05:38:57'),
(153, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-05 06:52:06', '2020-04-05 06:52:06'),
(154, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-05 06:54:24', '2020-04-05 06:54:24'),
(155, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-05 12:26:24', '2020-04-05 12:26:24'),
(156, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-05 15:59:26', '2020-04-05 15:59:26'),
(157, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-06 01:16:59', '2020-04-06 01:16:59'),
(158, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-06 01:23:23', '2020-04-06 01:23:23'),
(159, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-06 05:46:15', '2020-04-06 05:46:15'),
(160, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-06 09:56:27', '2020-04-06 09:56:27'),
(161, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-07 02:26:44', '2020-04-07 02:26:44'),
(162, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-07 03:41:25', '2020-04-07 03:41:25'),
(163, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-07 04:49:27', '2020-04-07 04:49:27'),
(164, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-07 06:02:30', '2020-04-07 06:02:30'),
(165, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-07 12:26:17', '2020-04-07 12:26:17'),
(166, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-08 01:38:07', '2020-04-08 01:38:07'),
(167, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-08 04:07:28', '2020-04-08 04:07:28'),
(168, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-08 04:07:45', '2020-04-08 04:07:45'),
(169, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-09 02:16:34', '2020-04-09 02:16:34'),
(170, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-09 06:17:39', '2020-04-09 06:17:39'),
(171, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-10 03:44:13', '2020-04-10 03:44:13'),
(172, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-10 06:53:38', '2020-04-10 06:53:38'),
(173, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-10 12:46:53', '2020-04-10 12:46:53'),
(174, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-11 01:02:01', '2020-04-11 01:02:01'),
(175, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-11 03:32:47', '2020-04-11 03:32:47'),
(176, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-11 16:17:06', '2020-04-11 16:17:06'),
(177, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-12 00:58:51', '2020-04-12 00:58:51'),
(178, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-12 08:29:23', '2020-04-12 08:29:23'),
(179, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-12 12:41:38', '2020-04-12 12:41:38'),
(180, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-13 02:14:37', '2020-04-13 02:14:37'),
(181, 1, '127.0.0.1', NULL, 'PC', 'Firefox', 1, '2020-04-20 12:39:55', '2020-04-20 12:39:55'),
(182, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-20 15:11:53', '2020-04-20 15:11:53'),
(183, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-21 04:05:07', '2020-04-21 04:05:07'),
(184, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:36:39', '2020-04-27 13:36:39'),
(185, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:37:54', '2020-04-27 13:37:54'),
(186, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:39:14', '2020-04-27 13:39:14'),
(187, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:44:50', '2020-04-27 13:44:50'),
(188, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:45:05', '2020-04-27 13:45:05'),
(189, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:47:01', '2020-04-27 13:47:01'),
(190, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:53:59', '2020-04-27 13:53:59'),
(191, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:55:27', '2020-04-27 13:55:27'),
(192, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:57:26', '2020-04-27 13:57:26'),
(193, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:58:34', '2020-04-27 13:58:34'),
(194, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 13:59:49', '2020-04-27 13:59:49'),
(195, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 14:11:46', '2020-04-27 14:11:46'),
(196, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 14:13:57', '2020-04-27 14:13:57'),
(197, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 14:23:23', '2020-04-27 14:23:23'),
(198, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 14:25:08', '2020-04-27 14:25:08'),
(199, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 15:56:50', '2020-04-27 15:56:50'),
(200, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 15:57:47', '2020-04-27 15:57:47'),
(201, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 15:59:10', '2020-04-27 15:59:10'),
(202, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 16:22:23', '2020-04-27 16:22:23'),
(203, 2, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-27 16:34:12', '2020-04-27 16:34:12'),
(204, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-28 07:07:08', '2020-04-28 07:07:08'),
(205, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-28 07:39:35', '2020-04-28 07:39:35'),
(206, 1, '::1', NULL, 'PC', 'Firefox', 1, '2020-04-28 11:25:57', '2020-04-28 11:25:57'),
(207, 1, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 14:02:38', '2020-07-02 14:02:38'),
(208, 1, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 18:22:42', '2020-07-02 18:22:42'),
(209, 1, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 18:23:52', '2020-07-02 18:23:52'),
(210, 2, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 18:24:35', '2020-07-02 18:24:35'),
(211, 2, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 19:04:15', '2020-07-02 19:04:15'),
(212, 2, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 19:04:53', '2020-07-02 19:04:53'),
(213, 2, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 19:06:38', '2020-07-02 19:06:38'),
(214, 2, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-02 19:22:23', '2020-07-02 19:22:23'),
(215, 2, '::1', NULL, 'PC', 'Chrome', 1, '2020-07-03 02:36:28', '2020-07-03 02:36:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'bbb', 1, '2020-04-04 14:47:47', '2020-04-04 14:47:47', '0000-00-00 00:00:00'),
(4, 'tttt', 1, '2020-04-04 14:48:45', '2020-04-04 14:48:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `examples`
--

CREATE TABLE `examples` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `examples`
--

INSERT INTO `examples` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Examples Title 1', 1, NULL, NULL),
(3, 'Examples Title 2', 1, NULL, NULL),
(4, 'Examples Title 3', 1, NULL, NULL),
(5, 'Examples Title 4', 1, NULL, NULL),
(6, 'Examples Title 5', 1, NULL, NULL),
(7, 'Examples Title 6', 1, NULL, NULL),
(8, 'Examples Title 7', 1, NULL, NULL),
(9, 'Examples Title 8', 1, NULL, NULL),
(10, 'Examples Title 9', 1, NULL, NULL),
(11, 'Examples Title 10', 1, NULL, NULL),
(12, 'Examples Title 11', 1, NULL, NULL),
(13, 'Examples Title 12', 1, NULL, NULL),
(14, 'Examples Title 13', 1, NULL, NULL),
(15, 'Examples Title 14', 1, NULL, NULL),
(16, 'Examples Title 15', 1, NULL, NULL),
(17, 'Examples Title 16', 1, NULL, NULL),
(18, 'Examples Title 17', 1, NULL, NULL),
(19, 'Examples Title 18', 1, NULL, NULL),
(20, 'Examples Title 19', 1, NULL, NULL),
(21, 'Examples Title 20', 1, NULL, NULL),
(22, 'Examples Title 21', 1, NULL, NULL),
(23, 'Examples Title 22', 1, NULL, NULL),
(24, 'Examples Title 23', 1, NULL, NULL),
(25, 'Examples Title 24', 1, NULL, NULL),
(26, 'Examples Title 25', 1, NULL, NULL),
(27, 'Examples Title 26', 1, NULL, NULL),
(28, 'Examples Title 27', 1, NULL, NULL),
(29, 'Examples Title 28', 1, NULL, NULL),
(30, 'Examples Title 29', 1, NULL, NULL),
(31, 'Examples Title 30', 1, NULL, NULL),
(32, 'Examples Title 31', 1, NULL, NULL),
(33, 'Examples Title 32', 1, NULL, NULL),
(34, 'Examples Title 33', 1, NULL, NULL),
(35, 'Examples Title 34', 1, NULL, NULL),
(36, 'Examples Title 35', 1, NULL, NULL),
(37, 'Examples Title 36', 1, NULL, NULL),
(38, 'Examples Title 37', 1, NULL, NULL),
(39, 'Examples Title 38', 1, NULL, NULL),
(40, 'Examples Title 39', 1, NULL, NULL),
(41, 'Examples Title 40', 1, NULL, NULL),
(42, 'Examples Title 41', 1, NULL, NULL),
(43, 'Examples Title 42', 1, NULL, NULL),
(44, 'Examples Title 43', 1, NULL, NULL),
(45, 'Examples Title 44', 1, NULL, NULL),
(46, 'Examples Title 45', 1, NULL, NULL),
(47, 'Examples Title 46', 1, NULL, NULL),
(48, 'Examples Title 47', 1, NULL, NULL),
(49, 'Examples Title 48', 1, NULL, NULL),
(50, 'Examples Title 49', 1, NULL, NULL),
(51, 'Examples Title 50', 1, NULL, NULL),
(52, 'Examples Title 51', 1, NULL, NULL),
(53, 'Examples Title 52', 1, NULL, NULL),
(54, 'Examples Title 53', 1, NULL, NULL),
(55, 'Examples Title 54', 1, NULL, NULL),
(56, 'Examples Title 55', 1, NULL, NULL),
(57, 'Examples Title 56', 1, NULL, NULL),
(58, 'Examples Title 57', 1, NULL, NULL),
(59, 'Examples Title 58', 1, NULL, NULL),
(60, 'Examples Title 59', 1, NULL, NULL),
(61, 'Examples Title 60', 1, NULL, NULL),
(62, 'Examples Title 61', 1, NULL, NULL),
(63, 'Examples Title 62', 1, NULL, NULL),
(64, 'Examples Title 63', 1, NULL, NULL),
(65, 'Examples Title 64', 1, NULL, NULL),
(66, 'Examples Title 65', 1, NULL, NULL),
(67, 'Examples Title 66', 1, NULL, NULL),
(68, 'Examples Title 67', 1, NULL, NULL),
(69, 'Examples Title 68', 1, NULL, NULL),
(70, 'Examples Title 69', 1, NULL, NULL),
(71, 'Examples Title 70', 1, NULL, NULL),
(72, 'Examples Title 71', 1, NULL, NULL),
(73, 'Examples Title 72', 1, NULL, NULL),
(74, 'Examples Title 73', 1, NULL, NULL),
(75, 'Examples Title 74', 1, NULL, NULL),
(76, 'Examples Title 75', 1, NULL, NULL),
(77, 'Examples Title 76', 1, NULL, NULL),
(78, 'Examples Title 77', 1, NULL, NULL),
(79, 'Examples Title 78', 1, NULL, NULL),
(80, 'Examples Title 79', 1, NULL, NULL),
(81, 'Examples Title 80', 1, NULL, NULL),
(82, 'Examples Title 81', 1, NULL, NULL),
(83, 'Examples Title 82', 1, NULL, NULL),
(84, 'Examples Title 83', 1, NULL, NULL),
(85, 'Examples Title 84', 1, NULL, NULL),
(86, 'Examples Title 85', 1, NULL, NULL),
(87, 'Examples Title 86', 1, NULL, NULL),
(88, 'Examples Title 87', 1, NULL, NULL),
(89, 'Examples Title 88', 1, NULL, NULL),
(90, 'Examples Title 89', 1, NULL, NULL),
(91, 'Examples Title 90', 1, NULL, NULL),
(92, 'Examples Title 91', 1, NULL, NULL),
(93, 'Examples Title 92', 1, NULL, NULL),
(94, 'Examples Title 93', 1, NULL, NULL),
(95, 'Examples Title 94', 1, NULL, NULL),
(96, 'Examples Title 95', 1, NULL, NULL),
(97, 'Examples Title 96', 1, NULL, NULL),
(98, 'Examples Title 97', 1, NULL, NULL),
(99, 'Examples Title 98', 1, NULL, NULL),
(100, 'Examples Title 99', 1, NULL, NULL),
(101, 'Examples Title 100', 1, NULL, NULL),
(102, 'Examples Title 101', 1, NULL, NULL),
(103, 'Examples Title 102', 1, NULL, NULL),
(104, 'Examples Title 103', 1, NULL, NULL),
(105, 'Examples Title 104', 1, NULL, NULL),
(106, 'Examples Title 105', 1, NULL, NULL),
(107, 'Examples Title 106', 1, NULL, NULL),
(108, 'Examples Title 107', 1, NULL, NULL),
(109, 'Examples Title 108', 1, NULL, NULL),
(110, 'Examples Title 109', 1, NULL, NULL),
(111, 'Examples Title 110', 1, NULL, NULL),
(112, 'Examples Title 111', 1, NULL, NULL),
(113, 'Examples Title 112', 1, NULL, NULL),
(114, 'Examples Title 113', 1, NULL, NULL),
(115, 'Examples Title 114', 1, NULL, NULL),
(116, 'Examples Title 115', 1, NULL, NULL),
(117, 'Examples Title 116', 1, NULL, NULL),
(118, 'Examples Title 117', 1, NULL, NULL),
(119, 'Examples Title 118', 1, NULL, NULL),
(120, 'Examples Title 119', 1, NULL, NULL),
(121, 'Examples Title 120', 1, NULL, NULL),
(122, 'Examples Title 121', 1, NULL, NULL),
(123, 'Examples Title 122', 1, NULL, NULL),
(124, 'Examples Title 123', 1, NULL, NULL),
(125, 'Examples Title 124', 1, NULL, NULL),
(126, 'Examples Title 125', 1, NULL, NULL),
(127, 'Examples Title 126', 1, NULL, NULL),
(128, 'Examples Title 127', 1, NULL, NULL),
(129, 'Examples Title 128', 1, NULL, NULL),
(130, 'Examples Title 129', 1, NULL, NULL),
(131, 'Examples Title 130', 1, NULL, NULL),
(132, 'Examples Title 131', 1, NULL, NULL),
(133, 'Examples Title 132', 1, NULL, NULL),
(134, 'Examples Title 133', 1, NULL, NULL),
(135, 'Examples Title 134', 1, NULL, NULL),
(136, 'Examples Title 135', 1, NULL, NULL),
(137, 'Examples Title 136', 1, NULL, NULL),
(138, 'Examples Title 137', 1, NULL, NULL),
(139, 'Examples Title 138', 1, NULL, NULL),
(140, 'Examples Title 139', 1, NULL, NULL),
(141, 'Examples Title 140', 1, NULL, NULL),
(142, 'Examples Title 141', 1, NULL, NULL),
(143, 'Examples Title 142', 1, NULL, NULL),
(144, 'Examples Title 143', 1, NULL, NULL),
(145, 'Examples Title 144', 1, NULL, NULL),
(146, 'Examples Title 145', 1, NULL, NULL),
(147, 'Examples Title 146', 1, NULL, NULL),
(148, 'Examples Title 147', 1, NULL, NULL),
(149, 'Examples Title 148', 1, NULL, NULL),
(150, 'Examples Title 149', 1, NULL, NULL),
(151, 'Examples Title 150', 1, NULL, NULL),
(152, 'Examples Title 151', 1, NULL, NULL),
(153, 'Examples Title 152', 1, NULL, NULL),
(154, 'Examples Title 153', 1, NULL, NULL),
(155, 'Examples Title 154', 1, NULL, NULL),
(156, 'Examples Title 155', 1, NULL, NULL),
(157, 'Examples Title 156', 1, NULL, NULL),
(158, 'Examples Title 157', 1, NULL, NULL),
(159, 'Examples Title 158', 1, NULL, NULL),
(160, 'Examples Title 159', 1, NULL, NULL),
(161, 'Examples Title 160', 1, NULL, NULL),
(162, 'Examples Title 161', 1, NULL, NULL),
(163, 'Examples Title 162', 1, NULL, NULL),
(164, 'Examples Title 163', 1, NULL, NULL),
(165, 'Examples Title 164', 1, NULL, NULL),
(166, 'Examples Title 165', 1, NULL, NULL),
(167, 'Examples Title 166', 1, NULL, NULL),
(168, 'Examples Title 167', 1, NULL, NULL),
(169, 'Examples Title 168', 1, NULL, NULL),
(170, 'Examples Title 169', 1, NULL, NULL),
(171, 'Examples Title 170', 1, NULL, NULL),
(172, 'Examples Title 171', 1, NULL, NULL),
(173, 'Examples Title 172', 1, NULL, NULL),
(174, 'Examples Title 173', 1, NULL, NULL),
(175, 'Examples Title 174', 1, NULL, NULL),
(176, 'Examples Title 175', 1, NULL, NULL),
(177, 'Examples Title 176', 1, NULL, NULL),
(178, 'Examples Title 177', 1, NULL, NULL),
(179, 'Examples Title 178', 1, NULL, NULL),
(180, 'Examples Title 179', 1, NULL, NULL),
(181, 'Examples Title 180', 1, NULL, NULL),
(182, 'Examples Title 181', 1, NULL, NULL),
(183, 'Examples Title 182', 1, NULL, NULL),
(184, 'Examples Title 183', 1, NULL, NULL),
(185, 'Examples Title 184', 1, NULL, NULL),
(186, 'Examples Title 185', 1, NULL, NULL),
(187, 'Examples Title 186', 1, NULL, NULL),
(188, 'Examples Title 187', 1, NULL, NULL),
(189, 'Examples Title 188', 1, NULL, NULL),
(190, 'Examples Title 189', 1, NULL, NULL),
(191, 'Examples Title 190', 1, NULL, NULL),
(192, 'Examples Title 191', 1, NULL, NULL),
(193, 'Examples Title 192', 1, NULL, NULL),
(194, 'Examples Title 193', 1, NULL, NULL),
(195, 'Examples Title 194', 1, NULL, NULL),
(196, 'Examples Title 195', 1, NULL, NULL),
(197, 'Examples Title 196', 1, NULL, NULL),
(198, 'Examples Title 197', 1, NULL, NULL),
(199, 'Examples Title 198', 1, NULL, NULL),
(200, 'Examples Title 199', 1, NULL, NULL),
(201, 'Examples Title 200', 1, NULL, NULL),
(202, 'Examples Title 201', 1, NULL, NULL),
(203, 'Examples Title 202', 1, NULL, NULL),
(204, 'Examples Title 203', 1, NULL, NULL),
(205, 'Examples Title 204', 1, NULL, NULL),
(206, 'Examples Title 205', 1, NULL, NULL),
(207, 'Examples Title 206', 1, NULL, NULL),
(208, 'Examples Title 207', 1, NULL, NULL),
(209, 'Examples Title 208', 1, NULL, NULL),
(210, 'Examples Title 209', 1, NULL, NULL),
(211, 'Examples Title 210', 1, NULL, NULL),
(212, 'Examples Title 211', 1, NULL, NULL),
(213, 'Examples Title 212', 1, NULL, NULL),
(214, 'Examples Title 213', 1, NULL, NULL),
(215, 'Examples Title 214', 1, NULL, NULL),
(216, 'Examples Title 215', 1, NULL, NULL),
(217, 'Examples Title 216', 1, NULL, NULL),
(218, 'Examples Title 217', 1, NULL, NULL),
(219, 'Examples Title 218', 1, NULL, NULL),
(220, 'Examples Title 219', 1, NULL, NULL),
(221, 'Examples Title 220', 1, NULL, NULL),
(222, 'Examples Title 221', 1, NULL, NULL),
(223, 'Examples Title 222', 1, NULL, NULL),
(224, 'Examples Title 223', 1, NULL, NULL),
(225, 'Examples Title 224', 1, NULL, NULL),
(226, 'Examples Title 225', 1, NULL, NULL),
(227, 'Examples Title 226', 1, NULL, NULL),
(228, 'Examples Title 227', 1, NULL, NULL),
(229, 'Examples Title 228', 1, NULL, NULL),
(230, 'Examples Title 229', 1, NULL, NULL),
(231, 'Examples Title 230', 1, NULL, NULL),
(232, 'Examples Title 231', 1, NULL, NULL),
(233, 'Examples Title 232', 1, NULL, NULL),
(234, 'Examples Title 233', 1, NULL, NULL),
(235, 'Examples Title 234', 1, NULL, NULL),
(236, 'Examples Title 235', 1, NULL, NULL),
(237, 'Examples Title 236', 1, NULL, NULL),
(238, 'Examples Title 237', 1, NULL, NULL),
(239, 'Examples Title 238', 1, NULL, NULL),
(240, 'Examples Title 239', 1, NULL, NULL),
(241, 'Examples Title 240', 1, NULL, NULL),
(242, 'Examples Title 241', 1, NULL, NULL),
(243, 'Examples Title 242', 1, NULL, NULL),
(244, 'Examples Title 243', 1, NULL, NULL),
(245, 'Examples Title 244', 1, NULL, NULL),
(246, 'Examples Title 245', 1, NULL, NULL),
(247, 'Examples Title 246', 1, NULL, NULL),
(248, 'Examples Title 247', 1, NULL, NULL),
(249, 'Examples Title 248', 1, NULL, NULL),
(250, 'Examples Title 249', 1, NULL, NULL),
(251, 'Examples Title 250', 1, NULL, NULL),
(252, 'Examples Title 251', 1, NULL, NULL),
(253, 'Examples Title 252', 1, NULL, NULL),
(254, 'Examples Title 253', 1, NULL, NULL),
(255, 'Examples Title 254', 1, NULL, NULL),
(256, 'Examples Title 255', 1, NULL, NULL),
(257, 'Examples Title 256', 1, NULL, NULL),
(258, 'Examples Title 257', 1, NULL, NULL),
(259, 'Examples Title 258', 1, NULL, NULL),
(260, 'Examples Title 259', 1, NULL, NULL),
(261, 'Examples Title 260', 1, NULL, NULL),
(262, 'Examples Title 261', 1, NULL, NULL),
(263, 'Examples Title 262', 1, NULL, NULL),
(264, 'Examples Title 263', 1, NULL, NULL),
(265, 'Examples Title 264', 1, NULL, NULL),
(266, 'Examples Title 265', 1, NULL, NULL),
(267, 'Examples Title 266', 1, NULL, NULL),
(268, 'Examples Title 267', 1, NULL, NULL),
(269, 'Examples Title 268', 1, NULL, NULL),
(270, 'Examples Title 269', 1, NULL, NULL),
(271, 'Examples Title 270', 1, NULL, NULL),
(272, 'Examples Title 271', 1, NULL, NULL),
(273, 'Examples Title 272', 1, NULL, NULL),
(274, 'Examples Title 273', 1, NULL, NULL),
(275, 'Examples Title 274', 1, NULL, NULL),
(276, 'Examples Title 275', 1, NULL, NULL),
(277, 'Examples Title 276', 1, NULL, NULL),
(278, 'Examples Title 277', 1, NULL, NULL),
(279, 'Examples Title 278', 1, NULL, NULL),
(280, 'Examples Title 279', 1, NULL, NULL),
(281, 'Examples Title 280', 1, NULL, NULL),
(282, 'Examples Title 281', 1, NULL, NULL),
(283, 'Examples Title 282', 1, NULL, NULL),
(284, 'Examples Title 283', 1, NULL, NULL),
(285, 'Examples Title 284', 1, NULL, NULL),
(286, 'Examples Title 285', 1, NULL, NULL),
(287, 'Examples Title 286', 1, NULL, NULL),
(288, 'Examples Title 287', 1, NULL, NULL),
(289, 'Examples Title 288', 1, NULL, NULL),
(290, 'Examples Title 289', 1, NULL, NULL),
(291, 'Examples Title 290', 1, NULL, NULL),
(292, 'Examples Title 291', 1, NULL, NULL),
(293, 'Examples Title 292', 1, NULL, NULL),
(294, 'Examples Title 293', 1, NULL, NULL),
(295, 'Examples Title 294', 1, NULL, NULL),
(296, 'Examples Title 295', 1, NULL, NULL),
(297, 'Examples Title 296', 1, NULL, NULL),
(298, 'Examples Title 297', 1, NULL, NULL),
(299, 'Examples Title 298', 1, NULL, NULL),
(300, 'Examples Title 299', 1, NULL, NULL),
(301, 'Examples Title 300', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `example_modals`
--

CREATE TABLE `example_modals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `example_modals`
--

INSERT INTO `example_modals` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Example Modules Title 1', 1, NULL, NULL),
(2, 'Example Modules Title 2', 1, NULL, NULL),
(3, 'Example Modules Title 3', 1, NULL, NULL),
(4, 'Example Modules Title 4', 1, NULL, NULL),
(5, 'Example Modules Title 5', 1, NULL, NULL),
(6, 'Example Modules Title 6', 1, NULL, NULL),
(7, 'Example Modules Title 7', 1, NULL, NULL),
(8, 'Example Modules Title 8', 1, NULL, NULL),
(9, 'Example Modules Title 9', 1, NULL, NULL),
(10, 'Example Modules Title 10', 1, NULL, NULL),
(11, 'Example Modules Title 11', 1, NULL, NULL),
(12, 'Example Modules Title 12', 1, NULL, NULL),
(13, 'Example Modules Title 13', 1, NULL, NULL),
(14, 'Example Modules Title 14', 1, NULL, NULL),
(15, 'Example Modules Title 15', 1, NULL, NULL),
(16, 'Example Modules Title 16', 1, NULL, NULL),
(17, 'Example Modules Title 17', 1, NULL, NULL),
(18, 'Example Modules Title 18', 1, NULL, NULL),
(19, 'Example Modules Title 19', 1, NULL, NULL),
(20, 'Example Modules Title 20', 1, NULL, NULL),
(21, 'Example Modules Title 21', 1, NULL, NULL),
(22, 'Example Modules Title 22', 1, NULL, NULL),
(23, 'Example Modules Title 23', 1, NULL, NULL),
(24, 'Example Modules Title 24', 1, NULL, NULL),
(25, 'Example Modules Title 25', 1, NULL, NULL),
(26, 'Example Modules Title 26', 1, NULL, NULL),
(27, 'Example Modules Title 27', 1, NULL, NULL),
(28, 'Example Modules Title 28', 1, NULL, NULL),
(29, 'Example Modules Title 29', 1, NULL, NULL),
(30, 'Example Modules Title 30', 1, NULL, NULL),
(31, 'Example Modules Title 31', 1, NULL, NULL),
(32, 'Example Modules Title 32', 1, NULL, NULL),
(33, 'Example Modules Title 33', 1, NULL, NULL),
(34, 'Example Modules Title 34', 1, NULL, NULL),
(35, 'Example Modules Title 35', 1, NULL, NULL),
(36, 'Example Modules Title 36', 1, NULL, NULL),
(37, 'Example Modules Title 37', 1, NULL, NULL),
(38, 'Example Modules Title 38', 1, NULL, NULL),
(39, 'Example Modules Title 39', 1, NULL, NULL),
(40, 'Example Modules Title 40', 1, NULL, NULL),
(41, 'Example Modules Title 41', 1, NULL, NULL),
(42, 'Example Modules Title 42', 1, NULL, NULL),
(43, 'Example Modules Title 43', 1, NULL, NULL),
(44, 'Example Modules Title 44', 1, NULL, NULL),
(45, 'Example Modules Title 45', 1, NULL, NULL),
(46, 'Example Modules Title 46', 1, NULL, NULL),
(47, 'Example Modules Title 47', 1, NULL, NULL),
(48, 'Example Modules Title 48', 1, NULL, NULL),
(49, 'Example Modules Title 49', 1, NULL, NULL),
(50, 'Example Modules Title 50', 1, NULL, NULL),
(51, 'Example Modules Title 51', 1, NULL, NULL),
(52, 'Example Modules Title 52', 1, NULL, NULL),
(53, 'Example Modules Title 53', 1, NULL, NULL),
(54, 'Example Modules Title 54', 1, NULL, NULL),
(55, 'Example Modules Title 55', 1, NULL, NULL),
(56, 'Example Modules Title 56', 1, NULL, NULL),
(57, 'Example Modules Title 57', 1, NULL, NULL),
(58, 'Example Modules Title 58', 1, NULL, NULL),
(59, 'Example Modules Title 59', 1, NULL, NULL),
(60, 'Example Modules Title 60', 1, NULL, NULL),
(61, 'Example Modules Title 61', 1, NULL, NULL),
(62, 'Example Modules Title 62', 1, NULL, NULL),
(63, 'Example Modules Title 63', 1, NULL, NULL),
(64, 'Example Modules Title 64', 1, NULL, NULL),
(65, 'Example Modules Title 65', 1, NULL, NULL),
(66, 'Example Modules Title 66', 1, NULL, NULL),
(67, 'Example Modules Title 67', 1, NULL, NULL),
(68, 'Example Modules Title 68', 1, NULL, NULL),
(69, 'Example Modules Title 69', 1, NULL, NULL),
(70, 'Example Modules Title 70', 1, NULL, NULL),
(71, 'Example Modules Title 71', 1, NULL, NULL),
(72, 'Example Modules Title 72', 1, NULL, NULL),
(73, 'Example Modules Title 73', 1, NULL, NULL),
(74, 'Example Modules Title 74', 1, NULL, NULL),
(75, 'Example Modules Title 75', 1, NULL, NULL),
(76, 'Example Modules Title 76', 1, NULL, NULL),
(77, 'Example Modules Title 77', 1, NULL, NULL),
(78, 'Example Modules Title 78', 1, NULL, NULL),
(79, 'Example Modules Title 79', 1, NULL, NULL),
(80, 'Example Modules Title 80', 1, NULL, NULL),
(81, 'Example Modules Title 81', 1, NULL, NULL),
(82, 'Example Modules Title 82', 1, NULL, NULL),
(83, 'Example Modules Title 83', 1, NULL, NULL),
(84, 'Example Modules Title 84', 1, NULL, NULL),
(85, 'Example Modules Title 85', 1, NULL, NULL),
(86, 'Example Modules Title 86', 1, NULL, NULL),
(87, 'Example Modules Title 87', 1, NULL, NULL),
(88, 'Example Modules Title 88', 1, NULL, NULL),
(89, 'Example Modules Title 89', 1, NULL, NULL),
(90, 'Example Modules Title 90', 1, NULL, NULL),
(91, 'Example Modules Title 91', 1, NULL, NULL),
(92, 'Example Modules Title 92', 1, NULL, NULL),
(93, 'Example Modules Title 93', 1, NULL, NULL),
(94, 'Example Modules Title 94', 1, NULL, NULL),
(95, 'Example Modules Title 95', 1, NULL, NULL),
(96, 'Example Modules Title 96', 1, NULL, NULL),
(97, 'Example Modules Title 97', 1, NULL, NULL),
(98, 'Example Modules Title 98', 1, NULL, NULL),
(99, 'Example Modules Title 99', 1, NULL, NULL),
(100, 'Example Modules Title 100', 1, NULL, NULL),
(101, 'Example Modules Title 101', 1, NULL, NULL),
(102, 'Example Modules Title 102', 1, NULL, NULL),
(103, 'Example Modules Title 103', 1, NULL, NULL),
(104, 'Example Modules Title 104', 1, NULL, NULL),
(105, 'Example Modules Title 105', 1, NULL, NULL),
(106, 'Example Modules Title 106', 1, NULL, NULL),
(107, 'Example Modules Title 107', 1, NULL, NULL),
(108, 'Example Modules Title 108', 1, NULL, NULL),
(109, 'Example Modules Title 109', 1, NULL, NULL),
(110, 'Example Modules Title 110', 1, NULL, NULL),
(111, 'Example Modules Title 111', 1, NULL, NULL),
(112, 'Example Modules Title 112', 1, NULL, NULL),
(113, 'Example Modules Title 113', 1, NULL, NULL),
(114, 'Example Modules Title 114', 1, NULL, NULL),
(115, 'Example Modules Title 115', 1, NULL, NULL),
(116, 'Example Modules Title 116', 1, NULL, NULL),
(117, 'Example Modules Title 117', 1, NULL, NULL),
(118, 'Example Modules Title 118', 1, NULL, NULL),
(119, 'Example Modules Title 119', 1, NULL, NULL),
(120, 'Example Modules Title 120', 1, NULL, NULL),
(121, 'Example Modules Title 121', 1, NULL, NULL),
(122, 'Example Modules Title 122', 1, NULL, NULL),
(123, 'Example Modules Title 123', 1, NULL, NULL),
(124, 'Example Modules Title 124', 1, NULL, NULL),
(125, 'Example Modules Title 125', 1, NULL, NULL),
(126, 'Example Modules Title 126', 1, NULL, NULL),
(127, 'Example Modules Title 127', 1, NULL, NULL),
(128, 'Example Modules Title 128', 1, NULL, NULL),
(129, 'Example Modules Title 129', 1, NULL, NULL),
(130, 'Example Modules Title 130', 1, NULL, NULL),
(131, 'Example Modules Title 131', 1, NULL, NULL),
(132, 'Example Modules Title 132', 1, NULL, NULL),
(133, 'Example Modules Title 133', 1, NULL, NULL),
(134, 'Example Modules Title 134', 1, NULL, NULL),
(135, 'Example Modules Title 135', 1, NULL, NULL),
(136, 'Example Modules Title 136', 1, NULL, NULL),
(137, 'Example Modules Title 137', 1, NULL, NULL),
(138, 'Example Modules Title 138', 1, NULL, NULL),
(139, 'Example Modules Title 139', 1, NULL, NULL),
(140, 'Example Modules Title 140', 1, NULL, NULL),
(141, 'Example Modules Title 141', 1, NULL, NULL),
(142, 'Example Modules Title 142', 1, NULL, NULL),
(143, 'Example Modules Title 143', 1, NULL, NULL),
(144, 'Example Modules Title 144', 1, NULL, NULL),
(145, 'Example Modules Title 145', 1, NULL, NULL),
(146, 'Example Modules Title 146', 1, NULL, NULL),
(147, 'Example Modules Title 147', 1, NULL, NULL),
(148, 'Example Modules Title 148', 1, NULL, NULL),
(149, 'Example Modules Title 149', 1, NULL, NULL),
(150, 'Example Modules Title 150', 1, NULL, NULL),
(151, 'Example Modules Title 151', 1, NULL, NULL),
(152, 'Example Modules Title 152', 1, NULL, NULL),
(153, 'Example Modules Title 153', 1, NULL, NULL),
(154, 'Example Modules Title 154', 1, NULL, NULL),
(155, 'Example Modules Title 155', 1, NULL, NULL),
(156, 'Example Modules Title 156', 1, NULL, NULL),
(157, 'Example Modules Title 157', 1, NULL, NULL),
(158, 'Example Modules Title 158', 1, NULL, NULL),
(159, 'Example Modules Title 159', 1, NULL, NULL),
(160, 'Example Modules Title 160', 1, NULL, NULL),
(161, 'Example Modules Title 161', 1, NULL, NULL),
(162, 'Example Modules Title 162', 1, NULL, NULL),
(163, 'Example Modules Title 163', 1, NULL, NULL),
(164, 'Example Modules Title 164', 1, NULL, NULL),
(165, 'Example Modules Title 165', 1, NULL, NULL),
(166, 'Example Modules Title 166', 1, NULL, NULL),
(167, 'Example Modules Title 167', 1, NULL, NULL),
(168, 'Example Modules Title 168', 1, NULL, NULL),
(169, 'Example Modules Title 169', 1, NULL, NULL),
(170, 'Example Modules Title 170', 1, NULL, NULL),
(171, 'Example Modules Title 171', 1, NULL, NULL),
(172, 'Example Modules Title 172', 1, NULL, NULL),
(173, 'Example Modules Title 173', 1, NULL, NULL),
(174, 'Example Modules Title 174', 1, NULL, NULL),
(175, 'Example Modules Title 175', 1, NULL, NULL),
(176, 'Example Modules Title 176', 1, NULL, NULL),
(177, 'Example Modules Title 177', 1, NULL, NULL),
(178, 'Example Modules Title 178', 1, NULL, NULL),
(179, 'Example Modules Title 179', 1, NULL, NULL),
(180, 'Example Modules Title 180', 1, NULL, NULL),
(181, 'Example Modules Title 181', 1, NULL, NULL),
(182, 'Example Modules Title 182', 1, NULL, NULL),
(183, 'Example Modules Title 183', 1, NULL, NULL),
(184, 'Example Modules Title 184', 1, NULL, NULL),
(185, 'Example Modules Title 185', 1, NULL, NULL),
(186, 'Example Modules Title 186', 1, NULL, NULL),
(187, 'Example Modules Title 187', 1, NULL, NULL),
(188, 'Example Modules Title 188', 1, NULL, NULL),
(189, 'Example Modules Title 189', 1, NULL, NULL),
(190, 'Example Modules Title 190', 1, NULL, NULL),
(191, 'Example Modules Title 191', 1, NULL, NULL),
(192, 'Example Modules Title 192', 1, NULL, NULL),
(193, 'Example Modules Title 193', 1, NULL, NULL),
(194, 'Example Modules Title 194', 1, NULL, NULL),
(195, 'Example Modules Title 195', 1, NULL, NULL),
(196, 'Example Modules Title 196', 1, NULL, NULL),
(197, 'Example Modules Title 197', 1, NULL, NULL),
(198, 'Example Modules Title 198', 1, NULL, NULL),
(199, 'Example Modules Title 199', 1, NULL, NULL),
(200, 'Example Modules Title 200', 1, NULL, NULL),
(201, 'Example Modules Title 201', 1, NULL, NULL),
(202, 'Example Modules Title 202', 1, NULL, NULL),
(203, 'Example Modules Title 203', 1, NULL, NULL),
(204, 'Example Modules Title 204', 1, NULL, NULL),
(205, 'Example Modules Title 205', 1, NULL, NULL),
(206, 'Example Modules Title 206', 1, NULL, NULL),
(207, 'Example Modules Title 207', 1, NULL, NULL),
(208, 'Example Modules Title 208', 1, NULL, NULL),
(209, 'Example Modules Title 209', 1, NULL, NULL),
(210, 'Example Modules Title 210', 1, NULL, NULL),
(211, 'Example Modules Title 211', 1, NULL, NULL),
(212, 'Example Modules Title 212', 1, NULL, NULL),
(213, 'Example Modules Title 213', 1, NULL, NULL),
(214, 'Example Modules Title 214', 1, NULL, NULL),
(215, 'Example Modules Title 215', 1, NULL, NULL),
(216, 'Example Modules Title 216', 1, NULL, NULL),
(217, 'Example Modules Title 217', 1, NULL, NULL),
(218, 'Example Modules Title 218', 1, NULL, NULL),
(219, 'Example Modules Title 219', 1, NULL, NULL),
(220, 'Example Modules Title 220', 1, NULL, NULL),
(221, 'Example Modules Title 221', 1, NULL, NULL),
(222, 'Example Modules Title 222', 1, NULL, NULL),
(223, 'Example Modules Title 223', 1, NULL, NULL),
(224, 'Example Modules Title 224', 1, NULL, NULL),
(225, 'Example Modules Title 225', 1, NULL, NULL),
(226, 'Example Modules Title 226', 1, NULL, NULL),
(227, 'Example Modules Title 227', 1, NULL, NULL),
(228, 'Example Modules Title 228', 1, NULL, NULL),
(229, 'Example Modules Title 229', 1, NULL, NULL),
(230, 'Example Modules Title 230', 1, NULL, NULL),
(231, 'Example Modules Title 231', 1, NULL, NULL),
(232, 'Example Modules Title 232', 1, NULL, NULL),
(233, 'Example Modules Title 233', 1, NULL, NULL),
(234, 'Example Modules Title 234', 1, NULL, NULL),
(235, 'Example Modules Title 235', 1, NULL, NULL),
(236, 'Example Modules Title 236', 1, NULL, NULL),
(237, 'Example Modules Title 237', 1, NULL, NULL),
(238, 'Example Modules Title 238', 1, NULL, NULL),
(239, 'Example Modules Title 239', 1, NULL, NULL),
(240, 'Example Modules Title 240', 1, NULL, NULL),
(241, 'Example Modules Title 241', 1, NULL, NULL),
(242, 'Example Modules Title 242', 1, NULL, NULL),
(243, 'Example Modules Title 243', 1, NULL, NULL),
(244, 'Example Modules Title 244', 1, NULL, NULL),
(245, 'Example Modules Title 245', 1, NULL, NULL),
(246, 'Example Modules Title 246', 1, NULL, NULL),
(247, 'Example Modules Title 247', 1, NULL, NULL),
(248, 'Example Modules Title 248', 1, NULL, NULL),
(249, 'Example Modules Title 249', 1, NULL, NULL),
(250, 'Example Modules Title 250', 1, NULL, NULL),
(251, 'Example Modules Title 251', 1, NULL, NULL),
(252, 'Example Modules Title 252', 1, NULL, NULL),
(253, 'Example Modules Title 253', 1, NULL, NULL),
(254, 'Example Modules Title 254', 1, NULL, NULL),
(255, 'Example Modules Title 255', 1, NULL, NULL),
(256, 'Example Modules Title 256', 1, NULL, NULL),
(257, 'Example Modules Title 257', 1, NULL, NULL),
(258, 'Example Modules Title 258', 1, NULL, NULL),
(259, 'Example Modules Title 259', 1, NULL, NULL),
(260, 'Example Modules Title 260', 1, NULL, NULL),
(261, 'Example Modules Title 261', 1, NULL, NULL),
(262, 'Example Modules Title 262', 1, NULL, NULL),
(263, 'Example Modules Title 263', 1, NULL, NULL),
(264, 'Example Modules Title 264', 1, NULL, NULL),
(265, 'Example Modules Title 265', 1, NULL, NULL),
(266, 'Example Modules Title 266', 1, NULL, NULL),
(267, 'Example Modules Title 267', 1, NULL, NULL),
(268, 'Example Modules Title 268', 1, NULL, NULL),
(269, 'Example Modules Title 269', 1, NULL, NULL),
(270, 'Example Modules Title 270', 1, NULL, NULL),
(271, 'Example Modules Title 271', 1, NULL, NULL),
(272, 'Example Modules Title 272', 1, NULL, NULL),
(273, 'Example Modules Title 273', 1, NULL, NULL),
(274, 'Example Modules Title 274', 1, NULL, NULL),
(275, 'Example Modules Title 275', 1, NULL, NULL),
(276, 'Example Modules Title 276', 1, NULL, NULL),
(277, 'Example Modules Title 277', 1, NULL, NULL),
(278, 'Example Modules Title 278', 1, NULL, NULL),
(279, 'Example Modules Title 279', 1, NULL, NULL),
(280, 'Example Modules Title 280', 1, NULL, NULL),
(281, 'Example Modules Title 281', 1, NULL, NULL),
(282, 'Example Modules Title 282', 1, NULL, NULL),
(283, 'Example Modules Title 283', 1, NULL, NULL),
(284, 'Example Modules Title 284', 1, NULL, NULL),
(285, 'Example Modules Title 285', 1, NULL, NULL),
(286, 'Example Modules Title 286', 1, NULL, NULL),
(287, 'Example Modules Title 287', 1, NULL, NULL),
(288, 'Example Modules Title 288', 1, NULL, NULL),
(289, 'Example Modules Title 289', 1, NULL, NULL),
(290, 'Example Modules Title 290', 1, NULL, NULL),
(291, 'Example Modules Title 291', 1, NULL, NULL),
(292, 'Example Modules Title 292', 1, NULL, NULL),
(293, 'Example Modules Title 293', 1, NULL, NULL),
(294, 'Example Modules Title 294', 1, NULL, NULL),
(295, 'Example Modules Title 295', 1, NULL, NULL),
(296, 'Example Modules Title 296', 1, NULL, NULL),
(297, 'Example Modules Title 297', 1, NULL, NULL),
(298, 'Example Modules Title 298', 1, NULL, NULL),
(299, 'Example Modules Title 299', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `example_paginations`
--

CREATE TABLE `example_paginations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `example_paginations`
--

INSERT INTO `example_paginations` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Example Paginations Title 1', 1, NULL, NULL),
(2, 'Example Paginations Title 2', 1, NULL, NULL),
(3, 'Example Paginations Title 3', 1, NULL, NULL),
(4, 'Example Paginations Title 4', 1, NULL, NULL),
(5, 'Example Paginations Title 5', 1, NULL, NULL),
(6, 'Example Paginations Title 6', 1, NULL, NULL),
(7, 'Example Paginations Title 7', 1, NULL, NULL),
(8, 'Example Paginations Title 8', 1, NULL, NULL),
(9, 'Example Paginations Title 9', 1, NULL, NULL),
(10, 'Example Paginations Title 10', 1, NULL, NULL),
(11, 'Example Paginations Title 11', 1, NULL, NULL),
(12, 'Example Paginations Title 12', 1, NULL, NULL),
(13, 'Example Paginations Title 13', 1, NULL, NULL),
(14, 'Example Paginations Title 14', 1, NULL, NULL),
(15, 'Example Paginations Title 15', 1, NULL, NULL),
(16, 'Example Paginations Title 16', 1, NULL, NULL),
(17, 'Example Paginations Title 17', 1, NULL, NULL),
(18, 'Example Paginations Title 18', 1, NULL, NULL),
(19, 'Example Paginations Title 19', 1, NULL, NULL),
(20, 'Example Paginations Title 20', 1, NULL, NULL),
(21, 'Example Paginations Title 21', 1, NULL, NULL),
(22, 'Example Paginations Title 22', 1, NULL, NULL),
(23, 'Example Paginations Title 23', 1, NULL, NULL),
(24, 'Example Paginations Title 24', 1, NULL, NULL),
(25, 'Example Paginations Title 25', 1, NULL, NULL),
(26, 'Example Paginations Title 26', 1, NULL, NULL),
(27, 'Example Paginations Title 27', 1, NULL, NULL),
(28, 'Example Paginations Title 28', 1, NULL, NULL),
(29, 'Example Paginations Title 29', 1, NULL, NULL),
(30, 'Example Paginations Title 30', 1, NULL, NULL),
(31, 'Example Paginations Title 31', 1, NULL, NULL),
(32, 'Example Paginations Title 32', 1, NULL, NULL),
(33, 'Example Paginations Title 33', 1, NULL, NULL),
(34, 'Example Paginations Title 34', 1, NULL, NULL),
(35, 'Example Paginations Title 35', 1, NULL, NULL),
(36, 'Example Paginations Title 36', 1, NULL, NULL),
(37, 'Example Paginations Title 37', 1, NULL, NULL),
(38, 'Example Paginations Title 38', 1, NULL, NULL),
(39, 'Example Paginations Title 39', 1, NULL, NULL),
(40, 'Example Paginations Title 40', 1, NULL, NULL),
(41, 'Example Paginations Title 41', 1, NULL, NULL),
(42, 'Example Paginations Title 42', 1, NULL, NULL),
(43, 'Example Paginations Title 43', 1, NULL, NULL),
(44, 'Example Paginations Title 44', 1, NULL, NULL),
(45, 'Example Paginations Title 45', 1, NULL, NULL),
(46, 'Example Paginations Title 46', 1, NULL, NULL),
(47, 'Example Paginations Title 47', 1, NULL, NULL),
(48, 'Example Paginations Title 48', 1, NULL, NULL),
(49, 'Example Paginations Title 49', 1, NULL, NULL),
(50, 'Example Paginations Title 50', 1, NULL, NULL),
(51, 'Example Paginations Title 51', 1, NULL, NULL),
(52, 'Example Paginations Title 52', 1, NULL, NULL),
(53, 'Example Paginations Title 53', 1, NULL, NULL),
(54, 'Example Paginations Title 54', 1, NULL, NULL),
(55, 'Example Paginations Title 55', 1, NULL, NULL),
(56, 'Example Paginations Title 56', 1, NULL, NULL),
(57, 'Example Paginations Title 57', 1, NULL, NULL),
(58, 'Example Paginations Title 58', 1, NULL, NULL),
(59, 'Example Paginations Title 59', 1, NULL, NULL),
(60, 'Example Paginations Title 60', 1, NULL, NULL),
(61, 'Example Paginations Title 61', 1, NULL, NULL),
(62, 'Example Paginations Title 62', 1, NULL, NULL),
(63, 'Example Paginations Title 63', 1, NULL, NULL),
(64, 'Example Paginations Title 64', 1, NULL, NULL),
(65, 'Example Paginations Title 65', 1, NULL, NULL),
(66, 'Example Paginations Title 66', 1, NULL, NULL),
(67, 'Example Paginations Title 67', 1, NULL, NULL),
(68, 'Example Paginations Title 68', 1, NULL, NULL),
(69, 'Example Paginations Title 69', 1, NULL, NULL),
(70, 'Example Paginations Title 70', 1, NULL, NULL),
(71, 'Example Paginations Title 71', 1, NULL, NULL),
(72, 'Example Paginations Title 72', 1, NULL, NULL),
(73, 'Example Paginations Title 73', 1, NULL, NULL),
(74, 'Example Paginations Title 74', 1, NULL, NULL),
(75, 'Example Paginations Title 75', 1, NULL, NULL),
(76, 'Example Paginations Title 76', 1, NULL, NULL),
(77, 'Example Paginations Title 77', 1, NULL, NULL),
(78, 'Example Paginations Title 78', 1, NULL, NULL),
(79, 'Example Paginations Title 79', 1, NULL, NULL),
(80, 'Example Paginations Title 80', 1, NULL, NULL),
(81, 'Example Paginations Title 81', 1, NULL, NULL),
(82, 'Example Paginations Title 82', 1, NULL, NULL),
(83, 'Example Paginations Title 83', 1, NULL, NULL),
(84, 'Example Paginations Title 84', 1, NULL, NULL),
(85, 'Example Paginations Title 85', 1, NULL, NULL),
(86, 'Example Paginations Title 86', 1, NULL, NULL),
(87, 'Example Paginations Title 87', 1, NULL, NULL),
(88, 'Example Paginations Title 88', 1, NULL, NULL),
(89, 'Example Paginations Title 89', 1, NULL, NULL),
(90, 'Example Paginations Title 90', 1, NULL, NULL),
(91, 'Example Paginations Title 91', 1, NULL, NULL),
(92, 'Example Paginations Title 92', 1, NULL, NULL),
(93, 'Example Paginations Title 93', 1, NULL, NULL),
(94, 'Example Paginations Title 94', 1, NULL, NULL),
(95, 'Example Paginations Title 95', 1, NULL, NULL),
(96, 'Example Paginations Title 96', 1, NULL, NULL),
(97, 'Example Paginations Title 97', 1, NULL, NULL),
(98, 'Example Paginations Title 98', 1, NULL, NULL),
(99, 'Example Paginations Title 99', 1, NULL, NULL),
(100, 'Example Paginations Title 100', 1, NULL, NULL),
(101, 'Example Paginations Title 101', 1, NULL, NULL),
(102, 'Example Paginations Title 102', 1, NULL, NULL),
(103, 'Example Paginations Title 103', 1, NULL, NULL),
(104, 'Example Paginations Title 104', 1, NULL, NULL),
(105, 'Example Paginations Title 105', 1, NULL, NULL),
(106, 'Example Paginations Title 106', 1, NULL, NULL),
(107, 'Example Paginations Title 107', 1, NULL, NULL),
(108, 'Example Paginations Title 108', 1, NULL, NULL),
(109, 'Example Paginations Title 109', 1, NULL, NULL),
(110, 'Example Paginations Title 110', 1, NULL, NULL),
(111, 'Example Paginations Title 111', 1, NULL, NULL),
(112, 'Example Paginations Title 112', 1, NULL, NULL),
(113, 'Example Paginations Title 113', 1, NULL, NULL),
(114, 'Example Paginations Title 114', 1, NULL, NULL),
(115, 'Example Paginations Title 115', 1, NULL, NULL),
(116, 'Example Paginations Title 116', 1, NULL, NULL),
(117, 'Example Paginations Title 117', 1, NULL, NULL),
(118, 'Example Paginations Title 118', 1, NULL, NULL),
(119, 'Example Paginations Title 119', 1, NULL, NULL),
(120, 'Example Paginations Title 120', 1, NULL, NULL),
(121, 'Example Paginations Title 121', 1, NULL, NULL),
(122, 'Example Paginations Title 122', 1, NULL, NULL),
(123, 'Example Paginations Title 123', 1, NULL, NULL),
(124, 'Example Paginations Title 124', 1, NULL, NULL),
(125, 'Example Paginations Title 125', 1, NULL, NULL),
(126, 'Example Paginations Title 126', 1, NULL, NULL),
(127, 'Example Paginations Title 127', 1, NULL, NULL),
(128, 'Example Paginations Title 128', 1, NULL, NULL),
(129, 'Example Paginations Title 129', 1, NULL, NULL),
(130, 'Example Paginations Title 130', 1, NULL, NULL),
(131, 'Example Paginations Title 131', 1, NULL, NULL),
(132, 'Example Paginations Title 132', 1, NULL, NULL),
(133, 'Example Paginations Title 133', 1, NULL, NULL),
(134, 'Example Paginations Title 134', 1, NULL, NULL),
(135, 'Example Paginations Title 135', 1, NULL, NULL),
(136, 'Example Paginations Title 136', 1, NULL, NULL),
(137, 'Example Paginations Title 137', 1, NULL, NULL),
(138, 'Example Paginations Title 138', 1, NULL, NULL),
(139, 'Example Paginations Title 139', 1, NULL, NULL),
(140, 'Example Paginations Title 140', 1, NULL, NULL),
(141, 'Example Paginations Title 141', 1, NULL, NULL),
(142, 'Example Paginations Title 142', 1, NULL, NULL),
(143, 'Example Paginations Title 143', 1, NULL, NULL),
(144, 'Example Paginations Title 144', 1, NULL, NULL),
(145, 'Example Paginations Title 145', 1, NULL, NULL),
(146, 'Example Paginations Title 146', 1, NULL, NULL),
(147, 'Example Paginations Title 147', 1, NULL, NULL),
(148, 'Example Paginations Title 148', 1, NULL, NULL),
(149, 'Example Paginations Title 149', 1, NULL, NULL),
(150, 'Example Paginations Title 150', 1, NULL, NULL),
(151, 'Example Paginations Title 151', 1, NULL, NULL),
(152, 'Example Paginations Title 152', 1, NULL, NULL),
(153, 'Example Paginations Title 153', 1, NULL, NULL),
(154, 'Example Paginations Title 154', 1, NULL, NULL),
(155, 'Example Paginations Title 155', 1, NULL, NULL),
(156, 'Example Paginations Title 156', 1, NULL, NULL),
(157, 'Example Paginations Title 157', 1, NULL, NULL),
(158, 'Example Paginations Title 158', 1, NULL, NULL),
(159, 'Example Paginations Title 159', 1, NULL, NULL),
(160, 'Example Paginations Title 160', 1, NULL, NULL),
(161, 'Example Paginations Title 161', 1, NULL, NULL),
(162, 'Example Paginations Title 162', 1, NULL, NULL),
(163, 'Example Paginations Title 163', 1, NULL, NULL),
(164, 'Example Paginations Title 164', 1, NULL, NULL),
(165, 'Example Paginations Title 165', 1, NULL, NULL),
(166, 'Example Paginations Title 166', 1, NULL, NULL),
(167, 'Example Paginations Title 167', 1, NULL, NULL),
(168, 'Example Paginations Title 168', 1, NULL, NULL),
(169, 'Example Paginations Title 169', 1, NULL, NULL),
(170, 'Example Paginations Title 170', 1, NULL, NULL),
(171, 'Example Paginations Title 171', 1, NULL, NULL),
(172, 'Example Paginations Title 172', 1, NULL, NULL),
(173, 'Example Paginations Title 173', 1, NULL, NULL),
(174, 'Example Paginations Title 174', 1, NULL, NULL),
(175, 'Example Paginations Title 175', 1, NULL, NULL),
(176, 'Example Paginations Title 176', 1, NULL, NULL),
(177, 'Example Paginations Title 177', 1, NULL, NULL),
(178, 'Example Paginations Title 178', 1, NULL, NULL),
(179, 'Example Paginations Title 179', 1, NULL, NULL),
(180, 'Example Paginations Title 180', 1, NULL, NULL),
(181, 'Example Paginations Title 181', 1, NULL, NULL),
(182, 'Example Paginations Title 182', 1, NULL, NULL),
(183, 'Example Paginations Title 183', 1, NULL, NULL),
(184, 'Example Paginations Title 184', 1, NULL, NULL),
(185, 'Example Paginations Title 185', 1, NULL, NULL),
(186, 'Example Paginations Title 186', 1, NULL, NULL),
(187, 'Example Paginations Title 187', 1, NULL, NULL),
(188, 'Example Paginations Title 188', 1, NULL, NULL),
(189, 'Example Paginations Title 189', 1, NULL, NULL),
(190, 'Example Paginations Title 190', 1, NULL, NULL),
(191, 'Example Paginations Title 191', 1, NULL, NULL),
(192, 'Example Paginations Title 192', 1, NULL, NULL),
(193, 'Example Paginations Title 193', 1, NULL, NULL),
(194, 'Example Paginations Title 194', 1, NULL, NULL),
(195, 'Example Paginations Title 195', 1, NULL, NULL),
(196, 'Example Paginations Title 196', 1, NULL, NULL),
(197, 'Example Paginations Title 197', 1, NULL, NULL),
(198, 'Example Paginations Title 198', 1, NULL, NULL),
(199, 'Example Paginations Title 199', 1, NULL, NULL),
(200, 'Example Paginations Title 200', 1, NULL, NULL),
(201, 'Example Paginations Title 201', 1, NULL, NULL),
(202, 'Example Paginations Title 202', 1, NULL, NULL),
(203, 'Example Paginations Title 203', 1, NULL, NULL),
(204, 'Example Paginations Title 204', 1, NULL, NULL),
(205, 'Example Paginations Title 205', 1, NULL, NULL),
(206, 'Example Paginations Title 206', 1, NULL, NULL),
(207, 'Example Paginations Title 207', 1, NULL, NULL),
(208, 'Example Paginations Title 208', 1, NULL, NULL),
(209, 'Example Paginations Title 209', 1, NULL, NULL),
(210, 'Example Paginations Title 210', 1, NULL, NULL),
(211, 'Example Paginations Title 211', 1, NULL, NULL),
(212, 'Example Paginations Title 212', 1, NULL, NULL),
(213, 'Example Paginations Title 213', 1, NULL, NULL),
(214, 'Example Paginations Title 214', 1, NULL, NULL),
(215, 'Example Paginations Title 215', 1, NULL, NULL),
(216, 'Example Paginations Title 216', 1, NULL, NULL),
(217, 'Example Paginations Title 217', 1, NULL, NULL),
(218, 'Example Paginations Title 218', 1, NULL, NULL),
(219, 'Example Paginations Title 219', 1, NULL, NULL),
(220, 'Example Paginations Title 220', 1, NULL, NULL),
(221, 'Example Paginations Title 221', 1, NULL, NULL),
(222, 'Example Paginations Title 222', 1, NULL, NULL),
(223, 'Example Paginations Title 223', 1, NULL, NULL),
(224, 'Example Paginations Title 224', 1, NULL, NULL),
(225, 'Example Paginations Title 225', 1, NULL, NULL),
(226, 'Example Paginations Title 226', 1, NULL, NULL),
(227, 'Example Paginations Title 227', 1, NULL, NULL),
(228, 'Example Paginations Title 228', 1, NULL, NULL),
(229, 'Example Paginations Title 229', 1, NULL, NULL),
(230, 'Example Paginations Title 230', 1, NULL, NULL),
(231, 'Example Paginations Title 231', 1, NULL, NULL),
(232, 'Example Paginations Title 232', 1, NULL, NULL),
(233, 'Example Paginations Title 233', 1, NULL, NULL),
(234, 'Example Paginations Title 234', 1, NULL, NULL),
(235, 'Example Paginations Title 235', 1, NULL, NULL),
(236, 'Example Paginations Title 236', 1, NULL, NULL),
(237, 'Example Paginations Title 237', 1, NULL, NULL),
(238, 'Example Paginations Title 238', 1, NULL, NULL),
(239, 'Example Paginations Title 239', 1, NULL, NULL),
(240, 'Example Paginations Title 240', 1, NULL, NULL),
(241, 'Example Paginations Title 241', 1, NULL, NULL),
(242, 'Example Paginations Title 242', 1, NULL, NULL),
(243, 'Example Paginations Title 243', 1, NULL, NULL),
(244, 'Example Paginations Title 244', 1, NULL, NULL),
(245, 'Example Paginations Title 245', 1, NULL, NULL),
(246, 'Example Paginations Title 246', 1, NULL, NULL),
(247, 'Example Paginations Title 247', 1, NULL, NULL),
(248, 'Example Paginations Title 248', 1, NULL, NULL),
(249, 'Example Paginations Title 249', 1, NULL, NULL),
(250, 'Example Paginations Title 250', 1, NULL, NULL),
(251, 'Example Paginations Title 251', 1, NULL, NULL),
(252, 'Example Paginations Title 252', 1, NULL, NULL),
(253, 'Example Paginations Title 253', 1, NULL, NULL),
(254, 'Example Paginations Title 254', 1, NULL, NULL),
(255, 'Example Paginations Title 255', 1, NULL, NULL),
(256, 'Example Paginations Title 256', 1, NULL, NULL),
(257, 'Example Paginations Title 257', 1, NULL, NULL),
(258, 'Example Paginations Title 258', 1, NULL, NULL),
(259, 'Example Paginations Title 259', 1, NULL, NULL),
(260, 'Example Paginations Title 260', 1, NULL, NULL),
(261, 'Example Paginations Title 261', 1, NULL, NULL),
(262, 'Example Paginations Title 262', 1, NULL, NULL),
(263, 'Example Paginations Title 263', 1, NULL, NULL),
(264, 'Example Paginations Title 264', 1, NULL, NULL),
(265, 'Example Paginations Title 265', 1, NULL, NULL),
(266, 'Example Paginations Title 266', 1, NULL, NULL),
(267, 'Example Paginations Title 267', 1, NULL, NULL),
(268, 'Example Paginations Title 268', 1, NULL, NULL),
(269, 'Example Paginations Title 269', 1, NULL, NULL),
(270, 'Example Paginations Title 270', 1, NULL, NULL),
(271, 'Example Paginations Title 271', 1, NULL, NULL),
(272, 'Example Paginations Title 272', 1, NULL, NULL),
(273, 'Example Paginations Title 273', 1, NULL, NULL),
(274, 'Example Paginations Title 274', 1, NULL, NULL),
(275, 'Example Paginations Title 275', 1, NULL, NULL),
(276, 'Example Paginations Title 276', 1, NULL, NULL),
(277, 'Example Paginations Title 277', 1, NULL, NULL),
(278, 'Example Paginations Title 278', 1, NULL, NULL),
(279, 'Example Paginations Title 279', 1, NULL, NULL),
(280, 'Example Paginations Title 280', 1, NULL, NULL),
(281, 'Example Paginations Title 281', 1, NULL, NULL),
(282, 'Example Paginations Title 282', 1, NULL, NULL),
(283, 'Example Paginations Title 283', 1, NULL, NULL),
(284, 'Example Paginations Title 284', 1, NULL, NULL),
(285, 'Example Paginations Title 285', 1, NULL, NULL),
(286, 'Example Paginations Title 286', 1, NULL, NULL),
(287, 'Example Paginations Title 287', 1, NULL, NULL),
(288, 'Example Paginations Title 288', 1, NULL, NULL),
(289, 'Example Paginations Title 289', 1, NULL, NULL),
(290, 'Example Paginations Title 290', 1, NULL, NULL),
(291, 'Example Paginations Title 291', 1, NULL, NULL),
(292, 'Example Paginations Title 292', 1, NULL, NULL),
(293, 'Example Paginations Title 293', 1, NULL, NULL),
(294, 'Example Paginations Title 294', 1, NULL, NULL),
(295, 'Example Paginations Title 295', 1, NULL, NULL),
(296, 'Example Paginations Title 296', 1, NULL, NULL),
(297, 'Example Paginations Title 297', 1, NULL, NULL),
(298, 'Example Paginations Title 298', 1, NULL, NULL),
(299, 'Example Paginations Title 299', 1, NULL, NULL),
(300, 'Example Paginations Title 300', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_bn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_position` int(10) UNSIGNED DEFAULT NULL COMMENT '0 - Sidebar | 1 - In Body | 2 - Right Top | 3 - Right Top In | 4 - Left Top | 5 - Left Top In',
  `allow_to_all` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameter` text COLLATE utf8mb4_unicode_ci,
  `order` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `menu`, `menu_bn`, `parent_id`, `menu_position`, `allow_to_all`, `icon`, `icon_color`, `url`, `route`, `parameter`, `order`, `status`, `trash`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dashboard', 'ড্যাশবোর্ড', NULL, 0, 0, 'fa fa-dashboard', '#00ff00', '/admin', 'admin.home', NULL, 1, 1, 0, '2019-03-24 23:02:05', '2020-02-27 07:58:49', NULL),
(2, 'Menu Permission', 'মেনু পারমিশন', NULL, 0, 0, 'fa fa-diamond', '#c0c0c0', NULL, NULL, NULL, 500, 1, 0, '2019-03-24 22:44:32', '2020-04-26 16:25:59', NULL),
(5, 'Site Settings', 'সাইট সেটিংস', NULL, 0, 0, 'fa fa-sliders', '#ff8000', '/admin/setting', 'admin.setting.index', NULL, 900, 1, 0, '2019-04-10 16:30:44', '2020-02-27 08:01:24', NULL),
(6, 'Change Password', 'পাসওয়ার্ড পরিবর্তন', 70, 3, 0, 'fa fa-cog', '#ffffff', '/admin/change-password', 'admin.password.form', NULL, 0, 1, 0, '2019-03-24 22:42:35', '2019-04-23 06:20:29', NULL),
(7, 'Log Activity', 'লগ এক্টিভিটি', NULL, 0, 0, 'fa fa-history', '#4f4fff', '/admin/log', 'admin.log.index', NULL, 950, 1, 0, '2019-03-24 22:46:37', '2020-02-27 08:13:38', NULL),
(23, 'All Admin', 'সকল এডমিন', 70, 3, 0, 'fa fa-users', '#ffffff', '/admin/all-admin', 'admin.all_admin.index', NULL, 3, 1, 0, '2019-04-10 20:37:34', '2020-03-24 22:07:28', NULL),
(24, 'Add Admin', 'এডমিন যোগ করুন', 70, 3, 0, 'fa fa-plus', '#ffffff', '/admin/all-admin/add', 'admin.all_admin.add', NULL, 2, 1, 0, '2019-04-10 20:39:51', '2019-04-10 20:39:51', NULL),
(25, 'Action', 'একশন', 23, 0, 0, 'fa fa-home', '#ffffff', '/admin/all-admin', 'admin.all_admin.index', NULL, 1, 1, 0, '2019-04-23 06:27:34', '2019-04-23 06:27:34', NULL),
(26, 'Edit', 'এডিট', 25, 1, 0, 'fa fa-pencil', '#ffffff', NULL, 'admin.all_admin.edit', NULL, 1, 1, 0, '2019-04-10 20:40:57', '2019-04-23 06:28:07', NULL),
(27, 'Delete', 'ডিলিট', 25, 1, 0, 'fa fa-trash', '#ffffff', NULL, 'admin.all_admin.delete', NULL, 2, 1, 0, '2019-04-10 20:42:59', '2019-04-23 06:28:13', NULL),
(28, 'Backup', 'ব্যাকআপ', NULL, 0, 0, 'fa fa-database', '#408080', '/admin/backup', 'admin.backup.index', NULL, 1000, 1, 0, '2019-04-18 21:49:55', '2020-02-27 08:13:53', NULL),
(29, 'Action', 'কার্যক্রম', 28, 0, 0, 'fa fa-home', '#ffffff', '/admin/backup', 'admin.backup.index', NULL, 1, 1, 0, '2019-04-18 21:51:23', '2019-04-18 21:54:34', NULL),
(30, 'Download', 'ডাউনলোড', 29, 1, 0, 'fa fa-download', '#ffffff', NULL, 'admin.backup.index', NULL, 1, 1, 0, '2019-04-18 21:52:24', '2019-04-18 21:52:24', NULL),
(31, 'Delete', 'ডিলিট', 29, 1, 0, 'fa fa-trash', '#ffffff', NULL, 'admin.backup.index', NULL, 2, 1, 0, '2019-04-18 21:52:58', '2019-04-18 21:52:58', NULL),
(32, 'SMS', 'এসএমএস', NULL, 0, 0, 'fa fa-envelope', '#ffff80', NULL, NULL, NULL, 499, 1, 0, NULL, '2020-02-27 08:00:51', NULL),
(33, 'Send', 'প্রেরন', 32, 0, 0, 'fa fa-commenting', '#479292', '/admin/sms/send', 'admin.sms.send', NULL, 1, 1, 0, NULL, '2020-02-27 12:26:58', NULL),
(34, 'Custom', 'কাস্টম', 32, 0, 0, 'fa fa-comment-o', '#ffffff', '/admin/sms/custom', 'admin.sms.custom', NULL, 2, 1, 0, NULL, '2019-06-14 23:01:06', NULL),
(35, 'Report', 'প্রতিবেদন', 32, 0, 0, 'fa fa-indent', '#ffff00', '/admin/sms/report', 'admin.sms.report', NULL, 3, 1, 0, NULL, '2020-02-27 08:00:36', NULL),
(36, 'Restore', 'রিস্টোর', 29, 1, 0, 'fa fa-upload', '#ffffff', '/admin/backup/restore', 'admin.backup.restore', NULL, 2, 1, 0, '2019-07-02 16:28:12', '2019-07-02 16:28:12', NULL),
(61, 'Super Admin', 'সুপার এ্যাডমিন', 2, 0, 0, 'fa fa-user-secret', '#02b502', '/admin/role/assign/super-admin', 'admin.role.assign.super_admin', NULL, 1, 1, 0, '2020-03-01 10:05:56', '2020-03-01 10:10:34', NULL),
(62, 'Admin', 'এ্যাডমিন', 2, 0, 0, 'fa fa-user-circle', '#02aaaa', '/admin/role/assign/admin', 'admin.role.assign.admin', NULL, 2, 1, 0, '2020-03-01 10:11:02', '2020-03-01 10:11:02', NULL),
(63, 'User', 'ইউজার', 2, 0, 0, 'fa fa-user', '#d0ac00', '/admin/role/assign/user', 'admin.role.assign.user', NULL, 3, 1, 0, '2020-03-01 10:11:57', '2020-03-01 10:11:57', NULL),
(64, 'Language', 'ভাষা', NULL, 2, 0, 'fa fa-globe', '#00ffff', '/language/{locale}', 'language', '[\"bn\"]', 3, 1, 0, '2020-03-24 20:01:41', '2020-03-31 07:27:29', NULL),
(65, 'Message', 'বার্তা', NULL, 2, 0, 'fa fa-envelope', '#d2f000', '/admin/message', 'admin.message.index', NULL, 2, 1, 0, '2020-03-24 20:21:13', '2020-03-24 20:21:13', NULL),
(66, 'Action', 'অ্যাকশন', 65, 0, 0, 'fa fa-edit', '#d2f000', '/admin/message', 'admin.message.index', NULL, 2, 1, 0, '2020-03-24 20:21:13', '2020-03-24 20:21:13', NULL),
(67, 'View', 'দেখা', 66, 1, 0, 'fa fa-eye', '#000000', NULL, 'admin.message.view', NULL, 1, 1, 0, '2020-03-24 20:21:13', '2020-03-24 20:25:38', NULL),
(68, 'Send', 'এডিট', 66, 1, 0, 'fa fa-pencil', '#000000', NULL, 'admin.message.send', NULL, 2, 1, 0, '2020-03-24 20:21:13', '2020-03-24 20:24:59', NULL),
(69, 'Delete', 'ডিলিট', 66, 1, 0, 'fa fa-trash', '#000000', NULL, 'admin.message.delete', NULL, 3, 1, 0, '2020-03-24 20:21:13', '2020-03-24 20:25:22', NULL),
(70, 'Profile', 'প্রোফাইল', NULL, 2, 1, 'fa fa-user-circle', '#ffffff', NULL, NULL, NULL, 1, 1, 0, '2020-03-24 22:06:18', '2020-03-24 22:06:18', NULL),
(73, 'Visit Home', 'ভিজিট হোম', NULL, 4, 0, 'fa fa-home', '#ffffff', '/', 'post', NULL, 1, 1, 0, '2020-03-25 14:08:25', '2020-03-25 14:08:25', NULL),
(74, 'New Backup', 'নতুন ব্যাকআপ', 28, 1, 0, 'fa fa-cart-plus', '#ffffff', '/admin/backup/new', 'admin.backup.new', NULL, 1, 1, 0, '2020-03-26 13:47:12', '2020-03-26 13:47:12', NULL),
(87, 'Example Pagination', 'পেজিনেশন উদাহরণ', NULL, 0, 0, 'fa fa-circle', '#ffff00', NULL, NULL, NULL, 5, 0, 0, '2020-04-04 17:36:25', '2020-04-27 07:37:03', NULL),
(88, 'Add New', 'নতুন যোগ করুন', 87, 0, 0, 'fa fa-plus', '#ffff00', '/admin/example_pagination/add', 'admin.example_pagination.add', NULL, 1, 1, 0, '2020-04-04 17:36:25', '2020-04-04 17:36:25', NULL),
(89, 'Example Pagination List', 'পেজিনেশন উদাহরণ তালিকা', 87, 0, 0, 'fa fa-list-ul', '#ffff00', '/admin/example_pagination', 'admin.example_pagination.index', NULL, 2, 1, 0, '2020-04-04 17:36:25', '2020-04-04 17:36:25', NULL),
(90, 'View', 'দেখা', 89, 1, 0, 'fa fa-eye', '#ffff00', '', 'admin.example_pagination.view', NULL, 1, 1, 0, '2020-04-04 17:36:25', '2020-04-04 17:36:25', NULL),
(91, 'Edit', 'এডিট', 89, 1, 0, 'fa fa-pencil', '#ffff00', '', 'admin.example_pagination.edit', NULL, 2, 1, 0, '2020-04-04 17:36:25', '2020-04-04 17:36:25', NULL),
(92, 'Delete', 'ডিলিট', 89, 1, 0, 'fa fa-trash', '#ffff00', '', 'admin.example_pagination.delete', NULL, 3, 1, 0, '2020-04-04 17:36:25', '2020-04-04 17:36:25', NULL),
(93, 'Example', 'উদাহরণ', NULL, 0, 0, 'fa fa-dot-circle-o', '#ffff00', NULL, NULL, NULL, 8, 0, 0, '2020-04-04 17:38:53', '2020-04-27 08:26:04', NULL),
(94, 'Add New', 'নতুন যোগ করুন', 93, 0, 0, 'fa fa-plus', '#ffff00', '/admin/example/add', 'admin.example.add', NULL, 1, 1, 0, '2020-04-04 17:38:53', '2020-04-04 17:38:53', NULL),
(95, 'Example List', 'উদাহরণ তালিকা', 93, 0, 0, 'fa fa-list-ul', '#ffff00', '/admin/example', 'admin.example.index', NULL, 2, 1, 0, '2020-04-04 17:38:53', '2020-04-04 17:38:53', NULL),
(96, 'View', 'দেখা', 95, 1, 0, 'fa fa-eye', '#ffff00', '', 'admin.example.view', NULL, 1, 1, 0, '2020-04-04 17:38:53', '2020-04-04 17:38:53', NULL),
(97, 'Edit', 'এডিট', 95, 1, 0, 'fa fa-pencil', '#ffff00', '', 'admin.example.edit', NULL, 2, 1, 0, '2020-04-04 17:38:53', '2020-04-04 17:38:53', NULL),
(98, 'Delete', 'ডিলিট', 95, 1, 0, 'fa fa-trash', '#ffff00', '', 'admin.example.delete', NULL, 3, 1, 0, '2020-04-04 17:38:53', '2020-04-04 17:38:53', NULL),
(99, 'Example Modal', 'মডাল উদাহরণ', NULL, 0, 0, 'fa fa-circle-o', '#ffff00', '/admin/example_modal', 'admin.example_modal.index', NULL, 6, 0, 0, '2020-04-04 17:48:12', '2020-04-27 08:26:25', NULL),
(100, 'Add New', 'নতুন যোগ করুন', 99, 0, 0, 'fa fa-plus', '#ffff00', '/admin/example_modal/add', 'admin.example_modal.add', NULL, 1, 1, 0, '2020-04-04 17:48:13', '2020-04-04 17:48:13', NULL),
(101, 'Action', 'অ্যাকশন', 99, 0, 0, 'fa fa-edit', '#ffff00', '/admin/example_modal', 'admin.example_modal.index', NULL, 2, 1, 0, '2020-04-04 17:48:13', '2020-04-04 17:48:13', NULL),
(102, 'View', 'দেখা', 101, 1, 0, 'fa fa-eye', '#ffff00', '', 'admin.example_modal.view', NULL, 1, 1, 0, '2020-04-04 17:48:13', '2020-04-04 17:48:13', NULL),
(103, 'Edit', 'এডিট', 101, 1, 0, 'fa fa-pencil', '#ffff00', '', 'admin.example_modal.edit', NULL, 2, 1, 0, '2020-04-04 17:48:13', '2020-04-04 17:48:13', NULL),
(104, 'Delete', 'ডিলিট', 101, 1, 0, 'fa fa-trash', '#ffff00', '', 'admin.example_modal.delete', NULL, 3, 1, 0, '2020-04-04 17:48:13', '2020-04-04 17:48:13', NULL),
(105, 'Post', 'পোস্ট', NULL, 0, 0, 'fa fa-codiepie', '#434eea', NULL, NULL, NULL, 2, 1, 0, '2020-07-02 15:22:46', '2020-07-02 15:22:46', NULL),
(106, 'Add New', 'নতুন যোগ করুন', 105, 0, 0, 'fa fa-plus', '#434eea', 'admin/post/add', 'admin.post.add', NULL, 1, 1, 0, '2020-07-02 15:22:46', '2020-07-02 15:22:46', NULL),
(107, 'Post List', 'পোস্ট তালিকা', 105, 0, 0, 'fa fa-list-ul', '#434eea', 'admin/post', 'admin.post.index', NULL, 2, 1, 0, '2020-07-02 15:22:46', '2020-07-02 15:22:46', NULL),
(108, 'View', 'দেখা', 107, 1, 0, 'fa fa-eye', '#434eea', '', 'admin.post.view', NULL, 1, 1, 0, '2020-07-02 15:22:46', '2020-07-02 15:22:46', NULL),
(109, 'Publish', 'পাবলিশ', 107, 1, 0, 'fa fa-upload', '#434eea', '', 'admin.post.publish', NULL, 2, 1, 0, '2020-07-02 15:22:46', '2020-07-02 15:22:46', NULL),
(110, 'Delete', 'ডিলিট', 107, 1, 0, 'fa fa-trash', '#434eea', '', 'admin.post.delete', NULL, 3, 1, 0, '2020-07-02 15:22:47', '2020-07-02 15:22:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_26_200821_create_admins_table', 1),
(2, '2019_03_04_084037_create_menus_table', 1),
(3, '2019_03_05_074453_create_roles_table', 1),
(4, '2019_03_06_090310_create_admin_access_infos_table', 1),
(5, '2019_03_25_140240_create_password_resets_table', 1),
(6, '2019_03_25_140240_create_users_table', 1),
(7, '2019_03_25_140140_create_units_table', 2),
(8, '2019_03_25_140157_create_categories_table', 2),
(9, '2019_03_25_140207_create_sub_categories_table', 2),
(10, '2019_03_25_140231_create_brands_table', 2),
(11, '2019_04_10_152516_create_settings_table', 2),
(12, '2018_08_08_100000_create_telescope_entries_table', 3),
(13, '2020_03_31_224429_create_websockets_statistics_entries_table', 4),
(14, '2014_10_12_000000_create_users_table', 5),
(15, '2020_04_04_233308_create_example_paginations_table', 6),
(16, '2020_04_04_233740_create_examples_table', 6),
(17, '2020_04_04_234538_create_example_modals_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_tag_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '[""]',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Active',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `title`, `files`, `admin_id`, `description`, `module_tag_id`, `status`, `trash`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Pagination - Select & Search', NULL, 1, '<!-- \r\nPaste it top of the page\r\n -->\r\n\r\n@php\r\n  // Pagination Serial\r\n  if (request()->filled(\'page\')){\r\n    $PreviousPageLastSN = $items*(request()->page-1); //PreviousPageLastSerialNumber\r\n    $PageNumber = request()->page;\r\n  }\r\n  else{\r\n    $PreviousPageLastSN = 0; //PreviousPageLastSerialNumber\r\n    $PageNumber = 1;\r\n  }\r\n\r\n  //Last Page Items Change Restriction\r\n  if ($PageNumber*$items > $total + $items){\r\n    header(\'Location: \' . $_SERVER[\'HTTP_REFERER\']);\r\n    die();\r\n  }\r\n@endphp\r\n\r\n<div class=\"row custom_pagination\" id=\"pagination_container\" style=\"display: none;\">\r\n  @if ($total>0)\r\n  <div class=\"col-sm-12 col-md-6 pull-right\">\r\n    <label class=\"py-2 m-0\" style=\"float: left;\">{{ \'Showing \'.($PreviousPageLastSN+1).\' to \'}} {{ ($PreviousPageLastSN+$items) >= $total ? $total : $PreviousPageLastSN+$items }}{{\' of \'.$total.\' entries\' }}</label>\r\n  </div>\r\n  @else\r\n  <div class=\"col-sm-12 col-md-12 pull-right\" >\r\n    <h3 class=\"alert alert-warning text-center\" style=\"float: left; color: red; width: 100%;\">{{ __(\'backend/default.no_data\') }}</h3>\r\n  </div>\r\n  @endif\r\n\r\n  <div class=\"col-sm-12 col-md-6 pull-left\">\r\n    @if(isset($where))\r\n      <label style=\"float: right\">{{ $table->appends(\\Request::query())->render() }}</label>\r\n    @else\r\n       <label style=\"float: right\">{{ $table->appends([\'items\' => $items])->links() }}</label>\r\n    @endif\r\n    \r\n  </div>\r\n</div>\r\n\r\n\r\n{{--\r\n  --\r\n  -- Call by >>>\r\n  -- @include(\'frontend.partials.pagination\', [\'table\' => $rows])\r\n  -- `$rows` will be received as `$table`\r\n  --\r\n--}}', '[1,2,14]', 1, 0, '2020-03-27 10:23:00', '2020-03-27 18:53:35', NULL),
(4, 'Pagination - Page Numbering', NULL, 1, '<!--\r\npaste where you need the paging\r\n-->\r\n\r\n<div class=\"custom_pagination col-sm-12 mb-2\" style=\"display: none;\">\r\n  <div class=\"row\">    \r\n    @if(isset($where) && $total > 0)\r\n\r\n      <div class=\"alert alert-success\" style=\"height: 38px; padding: 8px; margin-bottom: 8px;\">\r\n        <span class=\"text-success\">Total <strong>{{ $total }}</strong> entities found</span>\r\n      </div>\r\n\r\n    @elseif(!isset($where))\r\n\r\n      <div class=\"col-md-6 col-sm-12 px-0\">\r\n        <label style=\"display: inline-block;\">Show \r\n        <select class=\"form-control form-control-sm\" style=\"display: inline-block; width: 75px; cursor: pointer;\" select  onchange=\"location = this.value;\">\r\n          <option value=\"{{ route($route) }}?items=20&page=1\" {{ $items == 20 ? \'selected\' : \'\' }}>20</option>\r\n          <option value=\"{{ route($route) }}?items=50&page=1\" {{ $items == 50 ? \'selected\' : \'\' }}>50</option>\r\n          <option value=\"{{ route($route) }}?items=100&page=1\" {{ $items == 100 ? \'selected\' : \'\' }}>100</option>\r\n          <option value=\"{{ route($route) }}?items=250&page=1\" {{ $items == 250 ? \'selected\' : \'\' }}>250</option>\r\n        </select> entries</label>\r\n      </div>\r\n      <div class=\"col-sm-12 col-md-6 px-0 text-right\">\r\n        <label style=\"display: inline-block;\" class=\"w-100\">Search:\r\n          <input id=\"my-table-search\" style=\"display: inline-block; width: 150px;\" type=\"search\" class=\"form-control form-control-sm\" placeholder=\"\" aria-controls=\"datatable\">\r\n        </label>\r\n      </div>\r\n\r\n    @endif\r\n  </div>\r\n</div>', '[1,2,14]', 1, 0, '2020-03-27 10:24:32', '2020-03-27 18:53:21', NULL),
(5, 'Html Form - EMMET', NULL, 1, '<!--\r\n-1- Install `EMMET`.\r\n-2- `Copy` & `Paste` Code in `emmet` installed editor.\r\n-3- Code should be single line. So, put your cursor end of the line & press `TAB`.\r\n[note: `@csrf` included]\r\n-->\r\n\r\n.row>(form[method=\"post\" id=\"\" encrypt=\"multipart/form-data\" class=\"col-sm-12\"]{@csrf}>((.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^input.col-md-6.form-control[type=\"text\" name id])*3)+(.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^textarea[class=\"col-md-6 form-control\" name id])+(.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^input.col-md-6.form-control[type=\"file\" name id])+(.form-row.my-2>((lable.col-md-3.text-right.py-2[for]>strong{SomeText})+select.form-control.col-md-6[name id]>option[value=\"$\"]{Option-$}*3))+(.form-row.my-2>lable.col-md-3.text-right.py-2[for]>strong{SomeText}^(.col-md-6.px-0.text-right>button.btn.btn-success[type=\"submit\"]{Save})))', '[7,8,9,10]', 1, 0, '2020-03-27 13:36:16', '2020-03-27 13:43:26', NULL),
(6, 'Auth pages not getting css in laravel', NULL, 1, 'Step 1:\r\n   > Download nodejs\r\n   > Install nodejs in your pc\r\n\r\nStep 2:\r\n    then open your project root and command\r\n    $ composer require laravel/ui\r\n    $ php artisan ui vue --auth\r\n    $ npm install\r\n    $ npm run dev\r\n\r\n[note: <laravel:6.x>composer require laravel/ui \"^1.0\" --dev]', '[1,11,12,13,14]', 1, 0, '2020-03-27 18:50:22', '2020-03-27 19:48:31', NULL),
(7, 'How to change default Laravel Auth login view?', NULL, 1, 'Add the following method in LoginController.php\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n\r\n    public function showLoginForm()\r\n    {\r\n        return view(\'auth.login\');\r\n    }', '[14,1,11,12,15,16,17]', 1, 0, '2020-03-27 19:11:41', '2020-03-27 19:11:41', NULL),
(8, 'Laravel Deployment', NULL, 1, '[Link: https://laravel.com/docs/6.x/deployment]\r\n\r\n$ composer install --optimize-autoloader --no-dev\r\n$ php artisan config:cache\r\n$ php artisan route:cache [//Unable to prepare route [api/user] for serialization. Uses Closure.//]\r\n\r\n[Note: ``anonymous function`` is not allowed in \"routes/*.php\" while \"route:catch\"]', '[1,18,19]', 1, 0, '2020-03-28 16:05:33', '2020-03-28 16:05:33', NULL),
(9, 'jQuery - Hide some table column like data table [With/Without DataTable].', NULL, 1, '<!--\r\n1. Add ``hide-on-load`` class with the class ``toggle-vis``.\r\n2. Add given SCRIPT bottom of ``partials/scripts.blade.php``\r\n-->\r\n\r\n<div class=\"card-body\" data-my-table=\"table-1\">\r\n <div class=\"toggle-table-column alert-info br-2 p-2 mb-2\">\r\n    <strong>{{ __(\'backend/default.table_toggle_message\') }} </strong>\r\n    <a href=\"#\" class=\"toggle-vis\" data-column=\"0\"><b>{{ __(\'backend/default.sl\') }}</b></a> |\r\n    <a href=\"#\" class=\"toggle-vis hide-on-load\" data-column=\"1\"><b>{{ __(\'backend/default.date\') }}</small></b></a> |\r\n   <a href=\"#\" class=\"toggle-vis\" data-column=\"2\"><b>{{ __(\'backend/default.action\') }}</small></b></a>\r\n  </div>\r\n</div>\r\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\r\n\r\n<script type=\"application/javascript\">\r\n  $(document).ready(function() {\r\n    var table = \'\';\r\n    var a_index = 0;\r\n    var column = 0;\r\n\r\n    /*checking wheather datatable has been called or not*/\r\n    if($(\'.card-body[data-my-table=\"table-1\"]\').find(\'#datatable\').length == 0) {\r\n      /*showing my pagination*/\r\n      $(\'.custom_pagination\').show();\r\n\r\n      /*table search*/\r\n      $(\"#my-table-search\").on(\"keyup\", function() {\r\n        var value = $(this).val().toLowerCase();\r\n        $(\"#my-table tr\").filter(function() {\r\n          $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)\r\n        });\r\n      });\r\n    }\r\n\r\n    /*coloring column title on hide/show*/\r\n    $(\'.toggle-vis\').click(function(event) {\r\n\r\n      table = $(this).closest(\'.card\').find(\'table\');\r\n\r\n      if($(this).hasClass(\'text-danger\'))\r\n        $(this).removeClass(\'text-danger\');\r\n      else\r\n        $(this).addClass(\'text-danger\');\r\n\r\n      //a_index = $(this).index();\r\n      column = parseInt($(this).closest(\'a\').attr(\'data-column\'))+1;\r\n      // console.log(column);\r\n\r\n      if (/*document.getElementById(\'pagination_container\') && */table.attr(\'id\') != \'datatable\') {\r\n        table.find(\'td:nth-child(\'+column+\')\').each(function() {\r\n            $(this).toggle();\r\n        });\r\n        table.find(\'th:nth-child(\'+column+\')\').toggle();\r\n      }\r\n    });\r\n    $(\'.toggle-vis\').each(function(){\r\n      if($(this).hasClass(\'hide-on-load\'))\r\n        $(this).click();\r\n    });\r\n  });\r\n</script>\r\n\r\n[Note: for pagination, search with the key ``PAGINATION``]', '[9,20,21,22,14,1,2]', 1, 0, '2020-04-03 16:49:27', '2020-04-03 17:38:12', NULL),
(10, 'JS - Remove all extra comma from string.', NULL, 1, 'var string = \"a,,b,  s, ,,\"\r\nstring.replace(/(^[,\\s]+)|([,\\s]+$)/g, \'\')', '[23]', 1, 0, '2020-04-03 18:45:43', '2020-04-03 18:45:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `module_tags`
--

CREATE TABLE `module_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Active',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `module_tags`
--

INSERT INTO `module_tags` (`id`, `tag`, `status`, `trash`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'laravel', 1, 0, '2020-03-27 07:30:45', '2020-03-27 07:30:45', '2020-03-26 18:00:00'),
(2, 'pagination', 1, 0, '2020-03-27 07:30:45', '2020-03-27 07:30:45', '2020-03-26 18:00:00'),
(4, 'a', 1, 0, '2020-03-27 09:03:37', '2020-03-27 09:03:37', NULL),
(5, 'b', 1, 0, '2020-03-27 09:03:37', '2020-03-27 09:03:37', NULL),
(6, 'test2', 1, 0, '2020-03-27 11:42:52', '2020-03-27 11:42:52', NULL),
(7, 'emmet', 1, 0, '2020-03-27 13:36:16', '2020-03-27 13:36:16', NULL),
(8, 'form', 1, 0, '2020-03-27 13:36:16', '2020-03-27 13:36:16', NULL),
(9, 'html', 1, 0, '2020-03-27 13:36:16', '2020-03-27 13:36:16', NULL),
(10, 'bootstrap', 1, 0, '2020-03-27 13:43:26', '2020-03-27 13:43:26', NULL),
(11, 'auth', 1, 0, '2020-03-27 18:43:50', '2020-03-27 18:43:50', NULL),
(12, 'css', 1, 0, '2020-03-27 18:43:50', '2020-03-27 18:43:50', NULL),
(13, 'auth-install', 1, 0, '2020-03-27 18:50:22', '2020-03-27 18:50:22', NULL),
(14, 'php', 1, 0, '2020-03-27 18:53:06', '2020-03-27 18:53:06', NULL),
(15, 'auth-style', 1, 0, '2020-03-27 19:11:40', '2020-03-27 19:11:40', NULL),
(16, 'login', 1, 0, '2020-03-27 19:11:40', '2020-03-27 19:11:40', NULL),
(17, '', 1, 0, '2020-03-27 19:11:40', '2020-03-27 19:11:40', NULL),
(18, 'deploy', 1, 0, '2020-03-28 16:05:33', '2020-03-28 16:05:33', NULL),
(19, 'production', 1, 0, '2020-03-28 16:05:33', '2020-03-28 16:05:33', NULL),
(20, 'datatable', 1, 0, '2020-04-03 16:49:27', '2020-04-03 16:49:27', NULL),
(21, 'table', 1, 0, '2020-04-03 16:49:27', '2020-04-03 16:49:27', NULL),
(22, 'jquery', 1, 0, '2020-04-03 16:49:27', '2020-04-03 16:49:27', NULL),
(23, 'js', 1, 0, '2020-04-03 18:45:43', '2020-04-03 18:45:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1: Video',
  `section` int(1) NOT NULL DEFAULT '1',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `breaf` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Published | 0: Unpublish',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `type`, `section`, `title`, `slug`, `image`, `video`, `breaf`, `body`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 2, 'ওয়ারীর সড়ক-গলির নাম সংশোধন করে আবার প্রজ্ঞাপন', 'ওয়ারীর-সড়ক-গলির-নাম-সংশোধন-করে-আবার-প্রজ্ঞাপন', 'public/images/post/1593744649.webp', NULL, 'পুরান ঢাকার ওয়ারী লকডাউনে সড়ক ও গলির নাম সংশোধন করে ফের প্রজ্ঞাপন জারি করেছে জনপ্রশাসন মন্ত্রণালয়। আজ বৃহস্পতিবার এই প্রজ্ঞাপন জারি করা হয়।', 'প্রথম আলো ফাইল ছবি\r\nপ্রথম আলো ফাইল ছবি\r\nপুরান ঢাকার ওয়ারী লকডাউনে সড়ক ও গলির নাম সংশোধন করে ফের প্রজ্ঞাপন জারি করেছে জনপ্রশাসন মন্ত্রণালয়। আজ বৃহস্পতিবার এই প্রজ্ঞাপন জারি করা হয়।\r\n\r\n‘ওয়ারী লকডাউন: সড়ক-গলির নাম নিয়ে দেখা দিয়েছে বিভ্রান্তি’ শিরোনামে গতকাল বৃহস্পতিবার প্রথম আলোতে একটি প্রতিবেদন ছাপানো হয়েছিল। এই প্রতিবেদনের প্রেক্ষিতেই ওয়ারী এলাকার সড়ক ও গলিগুলোর নাম সংশোধন করে নতুন প্রজ্ঞাপন জারি করা হয়েছে বলে জানিয়েছেন সংশ্লিষ্টরা।\r\n\r\nজনপ্রশাসন মন্ত্রণালয়ের উপসচিব কাজি মহাম্মদ সাইফুল ইসলাম স্বাক্ষরিত নতুন প্রজ্ঞাপনে বলা হয়েছে, তিনটি রোড ও পাঁচটি গলি এই লকডাউনের অধীনে থাকবে। রোডগুলো হলো—টিপু সুলতান রোড, যোগীনগর রোড ও ঢাকা-সিলেট মহাসড়ক (জয়কালী মন্দির থেকে বলধা গার্ডেন)। গলিগুলোর মধ্যে রয়েছে লারমিনি স্ট্রীট, হেয়ার স্ট্রীট, ওয়্যার স্ট্রীট, র‌্যাংকিং স্ট্রীট ও নবাব স্ট্রীট।\r\n\r\nগত ৩০ জুন প্রকাশিত প্রজ্ঞাপনে টিপু সুলতান রোড, জাহাঙ্গীর রোড ও ঢাকা-সিলেট হাইওয়ে (জয়কালী মন্দির থেকে বলধা গার্ডেন) উল্লেখ করা হয়েছিল। অথচ জাহাঙ্গীর রোড নামে ওই এলাকায় কোনো সড়ক নেই। এ ছাড়া গলি হিসেবে লারমিনি রোড, হরে রোড, ওয়ার রোড, রানকিন রোড ও নওয়াব রোডের কথা বলা হয়েছিল। ওয়ারীতে এই গলিগুলোরও কোনো অস্তিত্ব নেই। এ নিয়ে বিভ্রান্তিতে পড়েছিলেন স্থানীয় বাসিন্দারা।', 1, '2020-07-03 02:50:49', '2020-07-03 02:57:02', NULL),
(2, 2, 2, 'চাঁদপুরে আরও ৫১ জনের করোনা শনাক্ত', 'চাঁদপুরে-আরও-৫১-জনের-করোনা-শনাক্ত', 'public/images/post/1593744752.webp', NULL, 'চাঁদপুরে নতুন করে ৫১ জনের শরীরে করোনাভাইরাস (কোভিড-১৯) সংক্রমণ শনাক্ত হয়েছে।', 'তিনি বলেন, আজ জেলায় নতুন করে ৮৮ জনের নমুনা পরীক্ষার প্রতিবেদন এসেছে। তাঁদের মধ্যে এই ৫১ জন করোনা ‘পজিটিভ’। এ নিয়ে জেলায় মোট করোনা সংক্রমিত ব্যক্তির সংখ্যা বেড়ে দাঁড়িয়েছে ৯৭০। তাঁদের মধ্যে মারা গেছেন ৬০ জন।\r\n\r\nউপজেলাভিত্তিক পরিসংখ্যানে দেখা যাচ্ছে, এখন করোনায় সংক্রমিত ব্যক্তির সংখ্যা চাঁদপুর সদর উপজেলায় ৩৮৪ জন, হাইমচর উপজেলায় ৭৫ জন, মতলব উত্তর উপজেলায় ৬৮ জন, মতলব দক্ষিণ উপজেলায় ১০৫ জন, ফরিদগঞ্জ উপজেলায় ৯৮ জন, হাজীগঞ্জ উপজেলায় ৯৫ জন, কচুয়া উপজেলায় ৪৩ জন ও শাহরাস্তি উপজেলায় ১০১ জন করোনা ‘পজিটিভ’ শনাক্ত হয়েছেন। জেলায় করোনায় মৃত ৬০ জনের মধ্যে চাঁদপুর সদর উপজেলায় রয়েছেন ১৭ জন, ফরিদগঞ্জে ৭ জন, হাজীগঞ্জে ১৬ জন, শাহরাস্তিতে ৪ জন, কচুয়ায় ৫ জন, মতলব উত্তরে ৮ জন ও মতলব দক্ষিণে ৩ জন।\r\n\r\nএদিকে নতুন করে চাঁদপুরের হাইমচরে করোনা সংক্রমিত হয়ে আলগী বাজারের ব্যবসায়ী মো. মফিজ মিয়াজি মারা গেছেন। আজ বৃহস্পতিবার সকাল আটটায় হাসপাতালে নেওয়ার পথে তিনি মারা যান। গতকাল বুধবার তাঁর করোনা প্রতিবেদনে ‘পজিটিভ’ আসে।\r\n\r\nহাইমচর উপজেলা স্বাস্থ্য ও পরিবার পরিকল্পনা কর্মকর্তা বেলায়েত হোসেন বলেন, এই ব্যক্তি ডায়াবেটিস ও শ্বাসকষ্টে ভুগছিলেন। করোনা উপসর্গ থাকায় গত ২৭ জুন নমুনা সংগ্রহ করা হয়। ১ জুলাই প্রতিবেদন ‘পজিটিভ’ আসে। আজ সকালে তাঁর শ্বাসকষ্ট বেড়ে যায়। তাঁকে চাঁদপুর সদর সরকারি জেনারেল হাসপাতালে নেওয়ার পথে তিনি মারা যান। পরে তাঁর লাশ স্বাস্থ্যবিধি মেনে দাফন করা হয়েছে।', 1, '2020-07-03 02:52:33', '2020-07-03 02:57:00', NULL),
(3, 2, 2, 'দেশে করোনা সংক্রমিতের সংখ্যা দেড় লাখ ছাড়াল', 'দেশে-করোনা-সংক্রমিতের-সংখ্যা-দেড়-লাখ-ছাড়াল', 'public/images/post/1593744845.webp', NULL, 'গত ৮ মার্চ দেশে প্রথম করোনাভাইরাসের সংক্রমণ পাওয়ার তথ্য জানায় স্বাস্থ্য অধিদপ্তর। আজ ২ জুলাই সংক্রমিত ব্যক্তি শনাক্তের সংখ্যা দেড় লাখ ছাড়িয়ে গেল।', 'গত ২৪ ঘণ্টায় দেশে নতুন করে ৪ হাজার ১৯ জনের করোনা শনাক্ত হয়েছে। এক দিনে এই সংখ্যা সর্বোচ্চ। গত ২৪ ঘণ্টায় করোনায় ৩৮ জনের মৃত্যু হয়েছে।\r\n\r\nদেশে করোনাভাইরাসের সংক্রমণ পরিস্থিতি নিয়ে স্বাস্থ্য অধিদপ্তরের নিয়মিত অনলাইন ব্রিফিংয়ে আজ বৃহস্পতিবার এই তথ্য জানানো হয়।\r\n\r\nদেশে এখন পর্যন্ত ১ লাখ ৫৩ হাজার ২৭৭ জনের করোনা শনাক্ত হয়েছে। করোনায় মোট মারা গেছে ১ হাজার ৯২৬ জন।\r\n\r\nআজকের ব্রিফিংয়ে বলা হয়, গত ২৪ ঘণ্টায় সুস্থ হয়েছে ৪ হাজার ৩৩৪ জন। মোট সুস্থ হয়েছে ৬৬ হাজার ৪৪২ জন।\r\n\r\nগতকাল বুধবার দেশে করোনায় সংক্রমিত ৩ হাজার ৭৭৫ জন শনাক্ত হওয়ার কথা জানানো হয়েছিল। মারা গিয়েছিলেন ৪১ জন।\r\n\r\nব্রিফিংয়ের তথ্যমতে, গত ২৪ ঘণ্টায় ১৮ হাজার ৩৬২ জনের নমুনা পরীক্ষা করা হয়েছে। এর আগের দিন ১৭ হাজার ৮৭৫ জনের নমুনা পরীক্ষা করা হয়েছিল।\r\n\r\nএখন পর্যন্ত পরীক্ষা হয়েছে ৮ লাখ ২ হাজার ৬৯৭টি নমুনা।\r\n\r\nদেশে ৭০টি ল্যাবে (পরীক্ষাগার) করোনা পরীক্ষার ফল পাওয়া গেছে।\r\n\r\nগত ৮ মার্চ দেশে প্রথম করোনায় সংক্রমিত ব্যক্তি শনাক্তের ঘোষণা আসে। ১৮ মার্চ প্রথম মৃত্যুর ঘটনা ঘটে।\r\n\r\nকরোনার ঝুঁকি এড়াতে সামাজিক দূরত্ব বজায় রাখা ও স্বাস্থ্যবিধি মানতে সবাইকে অনুরোধ করেছেন স্বাস্থ্য অধিদপ্তরের অতিরিক্ত মহাপরিচালক (প্রশাসন) অধ্যাপক নাসিমা সুলতানা।\r\n\r\nঅনলাইন ব্রিফিংয়ে নাসিমা সুলতানা বলেন, যে স্থানে নমুনা সংগ্রহ করা হবে, সেখানে রশিদের মাধ্যমে ফি নেওয়া হবে। এরপর তা সরকারি কোষাগারে জমা হবে। দরিদ্র রোগীদের ক্ষেত্রে ফি মওকুফ থাকবে।\r\n\r\nনাসিমা সুলতানা আরও বলেন, অনেকে সুস্থ হওয়ার পরে কাজে যোগ দিতে অসুবিধা হচ্ছে। লক্ষণ বা উপসর্গ-মুক্ত হওয়ার পর আরও ১৪ দিন পর কাজে যোগ দিতে পারবেন। এ বিষয়টি সবাই বিবেচনা করবেন। এর জন্য আর কোনো পরীক্ষার দরকার নেই।', 1, '2020-07-03 02:54:05', '2020-07-03 02:56:59', NULL),
(4, 2, 2, 'বৃষ্টি বাড়বে তিন দিন পর', 'বৃষ্টি-বাড়বে-তিন-দিন-পর', 'public/images/post/1593744922.webp', NULL, 'মধ্য আষাঢ়ে এসে বৃষ্টির দাপট কমে গেছে; বরং উল্টো গা জ্বালা করা গরম। প্রকৃতির এই আচরণ আরও দিন তিনেক থাকতে পারে। এরপর বৃষ্টির মাত্রা বাড়বে। আজ বুধবার আবহাওয়া অধিদপ্তর এমন আভাস দিয়েছে।', 'আবহাওয়াবিদ আবদুল মান্নান প্রথম আলোকে বলেন, ‘মৌসুমি বায়ুর একটু কম সক্রিয় রয়েছে। এ কারণে এখন বৃষ্টি কিছুটা কম হচ্ছে। তবে এবার বর্ষায় স্বাভাবিক বৃষ্টি হয়েছে। আগামী দু–তিন দিন বৃষ্টি একটু কম হবে। তবে আশা করছি, রোববার থেকে বৃষ্টি বাড়বে।’\r\n\r\nএদিকে আবহাওয়া অধিদপ্তরের আজকের পূর্বাভাসে বলা হয়েছে, মৌসুমি বায়ু বাংলাদেশের ওপর মোটামুটি সক্রিয় এবং উত্তর বঙ্গোপসাগরের ওপর মাঝারি অবস্থায় বিরাজ করছে। রংপুর, ময়মনসিংহ, চট্টগ্রাম ও সিলেট বিভাগের অনেক জায়গায় এবং ঢাকা, খুলনা ও বরিশাল বিভাগের কিছু কিছু জায়গায় ভারী বৃষ্টি হতে পারে। আগামী ৭২ ঘণ্টায় আবহাওয়ার সামান্য পরিবর্তন হতে পারে।’\r\n\r\nগতকাল মঙ্গলবার সকাল ছয়টা থেকে আজ সকাল ছয়টা পর্যন্ত ২৪ ঘণ্টায় সবচেয়ে বেশি বৃষ্টি হয়েছে কুষ্টিয়ার কুমারখালীতে। সেখানে ৩৫ মিলিমিটার বৃষ্টি হয়েছে। রাজধানী ঢাকায় এ সময় সামান্যই বৃষ্টি হয়েছে।\r\n\r\nগত কয়েক দিন কম বৃষ্টির কারণে তাপমাত্রাও বেড়েছে। গতকাল সারা দেশের মধ্যে সবচেয়ে বেশি তাপমাত্রা ছিল পাবনার ঈশ্বরদীতে, ৩৬ দশমিক ৪ ডিগ্রি সেলসিয়াস। রাজধানী ঢাকায় যা ছিল ৩৪ দশমিক ১ ডিগ্রি সেলসিয়াস।', 1, '2020-07-03 02:55:22', '2020-07-03 02:56:58', NULL),
(5, 2, 2, 'চোখজুড়ানো কমলা বউয়ের কথা', 'চোখজুড়ানো-কমলা-বউয়ের-কথা', 'public/images/post/1593745005.webp', NULL, 'ভয়ংকর করোনাকালকে উপেক্ষা করে চরম ঝুঁকি নিয়ে ঢাকা থেকে গ্রামের বাড়িতে যেতে হয়েছিল গেল এপ্রিলে। জরুরি কাজ দুদিনেই শেষ হলো। তৃতীয় দিনে ওয়াইল্ড লাইফ ক্লাবের দুজন কর্মীকে সঙ্গে নিয়ে আমার বাগানটিসহ চার-পাঁচটি বাগানে ঘুরলাম পাখি দেখতে।', 'ভয়ংকর করোনাকালকে উপেক্ষা করে চরম ঝুঁকি নিয়ে ঢাকা থেকে গ্রামের বাড়িতে যেতে হয়েছিল গেল এপ্রিলে। জরুরি কাজ দুদিনেই শেষ হলো। তৃতীয় দিনে ওয়াইল্ড লাইফ ক্লাবের দুজন কর্মীকে সঙ্গে নিয়ে আমার বাগানটিসহ চার-পাঁচটি বাগানে ঘুরলাম পাখি দেখতে। পাখিগুলোর বাসা বাঁধার ভরা মৌসুম শুরু হয়েছে আগেই। দেখতে পেলাম দিনেকানা, হালতি, রাঙা হালতিসহ ৩০ প্রজাতির পাখি।\r\n\r\nআমার নিরিবিলি বাড়িটার পেছনের বাগানে পেলাম কমলা বউয়ের বাসা। সে বাসায় চারটি উড়ুউড়ু ছানা। মা-বাবা পাখি-ছানাগুলোর উদরপূর্তি করতে মহাব্যস্ত। বাসাটি আট ফুট উঁচুতে, একটি সুপারি গাছের পাতার গোড়ায়।\r\n\r\nকমলা বউ পাখি বাসা করে দ্বি–স্তরবিশিষ্ট। প্রথমে শিকড়, লতা, ঘাস ইত্যাদি দিয়ে চায়ের পিরিচের মতো বানায়। সেই পিরিচের মাঝখানে বাটির মতো খাসা বাসা বানিয়ে তার সঙ্গে ফুটখানেক লম্বা চামচের হাতার মতো হাতা বানিয়ে জুড়ে দেয় সুপারি পাতার সঙ্গে। যাতে ঝড়ে উড়ে না যায় সহজে।\r\n\r\nমেয়ে পাখিটি ডিম পাড়ে চারটি। গোলাপি রঙের চমৎকার ডিম ফুটে ছানা বের হতে সপ্তাহ দুয়েক লাগে। ছানারা উড়তে শেখার আগেই লাফিয়ে নামে মাটিতে। মা-বাবার সঙ্গে বাগানের ছায়া ছায়া মাটিতে চরে বেড়ায়।\r\n\r\nকমলা বউ বলতে গেলে শতভাগ খাদ্য সংগ্রহ করে মাটি থেকেই। এগুলোর মূল খাদ্য নানা রকম পোকামাকড় ও কেঁচো। উইপোকা ও উইপোকার ডিম এগুলোর পোলাও ভাত। চরতে চরতে পাখিগুলো অনেক সময় গেরস্থ বাড়ির উঠানেও চলে আসে।\r\n\r\nখুবই নিরীহ পাখি কমলা বউ। শত্রুর হাত থেকে ডিম বা ছানা রক্ষা করার কোনো প্রতিরোধ ব্যবস্থাই এগুলোর নেই। এগুলোর চাহনিতেও সব সময় একটা ভয় ভয় ভাব। বাঁশের কঞ্চিতে বা অন্য কোনো গাছের সরু ডালে রাতে মা-বাবা যখন চারটি ছানাকে নিয়ে পাশাপাশি বসে ঘুমায়, তখন দেখলে চোখ জুড়িয়ে যায়, মন ভরে যায়। শরীর ফুলিয়ে এগুলো যেন তখন টেনিস বল হয়ে থাকে, ঘাড় বাঁকিয়ে ঠোঁটটি গুঁজে রাখে পিঠে। টর্চ বা মোবাইলের আলো ফেললেও পাখিগুলোর ঘুম ভাঙে না।\r\n\r\nসুন্দর পাখি কমলা বউয়ের মাথা, চিবুক, ঘাড়, গলা, বুক ও পেট চকচকে কমলা-লাল। গলায় এক টিপ সাদা রং। ঘাড়ের কাছে ডানার প্রান্তে পাঁচ-ছয়টি গোল গোল সাদা ফোঁটা। লেজের তলদেশের গোড়ার দিকটাও সাদা। পিঠ ও লেজের উপরিভাগ গাঢ় নীলচে ধূসর। ঠোঁট কালচে। গোলাপি রঙের পা। বাগেরহাটে আমার গ্রামে প্রতি মৌসুমে গড়ে এগুলোর প্রায় ৬০টির মতো বাসা পাওয়া যায়।\r\n\r\nকমলা বউয়ের ইংরেজি নাম Orange-headed Thrush. বৈজ্ঞানিক নাম Geokichla citrina। ওজন ৬০ গ্রাম। দামা বা মেটে দোয়েল নামেও এগুলো পরিচিত।', 1, '2020-07-03 02:56:45', '2020-07-03 02:56:56', NULL),
(6, 1, 1, 'দ্রুতই মাঠে ক্রিকেট ফেরাতে কাজ শুরু করেছে বিসিবি', 'দ্রুতই-মাঠে-ক্রিকেট-ফেরাতে-কাজ-শুরু-করেছে-বিসিবি', 'public/images/post/1593745421.jpg', '9HEkdFzHLHs', 'বৈশ্বিক মহামারি করোনা ভাইরাস পরবর্তী মাঠে ক্রিকেট ফেরাতে তোড়জোড় শুরু করেছে বিসিবি। সেই লক্ষ্যে দেশের প্রধান প্রধান আন্তর্জাতিক ও প্রথম শ্রেণীর ভেন্যু রক্ষণাবেক্ষণের কাজ অব্যাহত চলছে।', 'বৈশ্বিক মহামারি করোনা ভাইরাস পরবর্তী মাঠে ক্রিকেট ফেরাতে তোড়জোড় শুরু করেছে বিসিবি। সেই লক্ষ্যে দেশের প্রধান প্রধান আন্তর্জাতিক ও প্রথম শ্রেণীর ভেন্যু রক্ষণাবেক্ষণের কাজ অব্যাহত চলছে। ১০০ জনেরও বেশি গ্রাউন্ডসম্যান ও ভেন্যু কর্মকর্তাদের নির্দেশনা দেয়া হয়েছে, তারা যেন নিয়মিত কার্যক্রমের আওতায় স্ব স্ব স্টেডিয়ামের পিচ, আউটফিল্ড ও অন্যান্য অবকাঠামোগুলো সক্রিয় রাখেন।\r\n\r\nবিসিবির এক সংবাদ বিজ্ঞপ্তিতে জানানো হয়েছে, মাঠে ক্রিকেট ফেরাতে মাঠ ঠিক রাখতে নিয়মিত কার্যক্রমের মধ্যে রয়েছে পানি দেয়া, ঘাস কাটা ও ট্রিমিং করা, অবকাঠামো জীবাণুমুক্ত রাখা, ড্রেসিংরুম প্রস্তুত রাখা, নিয়মিত বারমুডা ঘাস রোপণ করা, মাঠের স্যাঁতস্যাঁতে ভাব দূর করা, রোলিং করা এবং সেন্ট ফিলিং করা।\r\n\r\nএর বাইরে মাঠের কাজে ব্যবহৃত বিভিন্ন যন্ত্রপাতি ও গ্রাউন্ডের মেশিনারিজ নিয়মিত সার্ভিসিং করিয়ে সচল রাখার প্রতিও গুরুত্বারোপ করা হয়েছে। বিদ্যুৎ ও পানি সরবরাহের কাজে নিয়োজিত টেকনিশিয়ানদেরও কাজে যোগ দেয়ার নির্দেশ দেয়া হয়েছে।\r\n\r\nবিসিবির প্রধান নির্বাহী কর্মকর্তা (সিইও) নিজাম উদ্দিন চৌধুরী বলেন, \'আমরা এ বিষয়ে খুবই সজাগ । কারণ বিলম্ব না করে যত দ্রুত সম্ভব ক্রিকেটারদেরকে আমরা মাঠে ফেরাতে চাই। প্রাথমিক ভাবে অনুশীলনের মাধ্যমে ক্রিকেট মাঠে ফেরাতে চাই। এই কারণে আমরা আমাদের মাঠ ও অনুশীলন স্থলকে কার্যকর এবং পুরোপুরি প্রস্তুত রাখতে চাই।\'', 1, '2020-07-03 03:03:43', '2020-07-03 03:16:39', NULL),
(7, 1, 1, 'Bohutole Malta Cashe Sofol Abdul Mia', 'bohutole-malta-cashe-sofol-abdul-mia', 'public/images/post/1593745762.jpg', 'iFUFFUb5W4w', 'হবিগঞ্জের বাহুবল উপজেলার পুটিজুরী ইউনিয়নের গোলগও গ্রামের বাসিন্দা আব্দাল মিয়া একজন কৃষক।', 'হবিগঞ্জের বাহুবল উপজেলার পুটিজুরী ইউনিয়নের গোলগও গ্রামের বাসিন্দা আব্দাল মিয়া একজন কৃষক। বাহুবল কৃষি বিভাগের তত্ত্বাবধানে এক বিঘা জমিতে ৯০ টি মাল্টা গাছ রোপণ করে গত বছর ৪০ হাজার টাকার মাল্টা বিক্রি করেছেন।\r\n\r\nএ বছর ও প্রচুর পরিমাণে মাল্টার ফলন হয়েছে। এবারও লক্ষাধিক টাকার মাল্টা বিক্রি হবে বলে তিনি আশাবাদী।\r\n\r\nতিনি জানান কৃষি অফিসার মো. আব্দুল আওয়াল এর পরামর্শে মাল্টার চাষ করে আমি লাভবান। অন্য কোন ফসলের চাষ করে স্বল্প ব্যয়ে এত লাভবান হতে পারতাম না। মাল্টা চাষ করে আমার পরিবারে সুখের হাসি ফুটেছে।\r\n\r\nএ ব্যাপারে উপজেলা কৃষি অফিসার মো. আব্দুল আওয়াল জানান এ কৃষকের মাল্টা বাগান বাহুবলের প্রথম বাগান। সিলেট অঞ্চলে শর্ষের নিবিড়তা বৃদ্ধিকরণ প্রকল্পের আওতায় ওই কৃষককে দিয়ে পরীক্ষামূলক ভাবে মাল্টার চাষ শুরু করি। তার সাফল্য দেখে অন্যান্য কৃষকরা অনুপ্রাণিত হবে বলে আমার দৃঢ় বিশ্বাস।', 1, '2020-07-03 03:09:22', '2020-07-03 03:16:40', NULL),
(8, 1, 1, 'সরকারের এ সিদ্ধান্তের ব্যাপারে আজ শনিবার সকালে বৈঠক', 'সরকারের-এ-সিদ্ধান্তের-ব্যাপারে-আজ-শনিবার-সকালে-বৈঠক', 'public/images/post/1593745934.jpg', '65xLByzT1l0', 'রাষ্ট্রায়ত্ত পাটকল বন্ধের সিদ্ধান্তে হতাশ হয়ে পড়েছে খুলনা অঞ্চলের রাষ্ট্রায়ত্ত ৯টি পাটকলের শ্রমিকরা।', 'রাষ্ট্রায়ত্ত পাটকল বন্ধের সিদ্ধান্তে হতাশ হয়ে পড়েছে খুলনা অঞ্চলের রাষ্ট্রায়ত্ত ৯টি পাটকলের শ্রমিকরা। সরকারের এ সিদ্ধান্তের ব্যাপারে আজ শনিবার সকালে বৈঠক করে খুলনা অঞ্চলের শ্রমিকরা পরবর্তী সিদ্ধান্ত নিবে বলে জানিয়েছেন প্লাটিনাম জুবিলি জুট মিলের সিবিএ সভাপতি সাহানা শারমিন।\r\n\r\nতিনি বলেন, শ্রমিকদের দাবি উপেক্ষা করে রাষ্ট্রায়ত্ত পাটকল বন্ধের সিদ্ধান্তে হতাশ হয়ে পড়েছে খুলনা অঞ্চলের রাষ্ট্রায়ত্ত ৯টি পাটকলের হাজার হাজার শ্রমিক। চাকরি শেষে যে সব শ্রমিক অবসরে যাবে তারা আশঙ্কা করছেন, সরকারি প্রতিশ্রুতি মতো তারা টাকা পাবে কি না। তাদের দাবি সরকার এককালীন টাকা পরিশোধ করবে। অপরদিকে, যারা ১০-১২ বছর চাকরি করছে, তাদের মধ্যে চরম হতাশা দেখা দিয়েছে। তারা চাকরি হারানোর পর কী করবে এ নিয়ে তাদের মধ্যে অনিশ্চয়তা দেখা দিয়েছে। আজ শনিবার সকাল ৯টায় বৈঠক করে এ ব্যাপারে আমরা সিদ্ধান্ত নিব।\r\n\r\nউল্লেখ্য, খুলনা অঞ্চলের ৯টি রাষ্ট্রায়ত্ত পাটকলে ৮হাজার ১০০ স্থায়ী শ্রমিক ও প্রায় ১৫ হাজার অস্থায়ী শ্রমিক রয়েছে।', 1, '2020-07-03 03:12:15', '2020-07-03 03:16:41', NULL),
(9, 1, 1, 'বিসিবির প্রধান নির্বাহী কর্মকর্তা (সিইও) নিজাম উদ্দিন', 'বিসিবির-প্রধান-নির্বাহী-কর্মকর্তা-(সিইও)-নিজাম-উদ্দিন', 'public/images/post/1593746068.jpg', 'vPuRBiBCxyk', 'কোভিড-১৯ এর সংক্রমণের কারণে বিঘ্নিত হওয়া ক্রিকেটীয় কার্যক্রম পুনরায় শুরুর জন্য।', 'কোভিড-১৯ এর সংক্রমণের কারণে বিঘ্নিত হওয়া ক্রিকেটীয় কার্যক্রম পুনরায় শুরুর জন্য প্রস্তুতির কাজ অব্যাহত রেখেছে বাংলাদেশ ক্রিকেট বোর্ড (বিসিবি)। সেই লক্ষ্যে দেশের প্রধান প্রধান আন্তর্জাতিক ও প্রথম শ্রেণির ভেন্যু রক্ষণাবেক্ষণের কাজ অব্যাহত রেখেছে বোর্ড।\r\n\r\n১০০ জনেরও বেশি গ্রাউন্ডসম্যান ও ভেন্যু কর্মকর্তাদের নির্দেশনা দেয়া হয়েছে, তারা যেন নিয়মিত কার্যক্রমের আওতায় স্ব স্ব স্টেডিয়ামের পিচ, আউটফিল্ড ও অন্যান্য অবকাঠামোগুলো সক্রিয় রাখেন। বৃহস্পতিবার বিসিবির এক সংবাদ বিজ্ঞপ্তিতে একথা জানানো হয়েছে।\r\n\r\nনিয়মিত এই কার্যক্রমের মধ্যে রয়েছে পানি দেয়া, ঘাস কাটা ও ট্রিমিং করা, অবকাঠামো জীবাণুমুক্ত রাখা, ড্রেসিং রুম প্রস্তুত রাখা, নিয়মিত বারমুডা ঘাস রোপণ করা, মাঠের স্যাঁতস্যাঁতে ভাব দূর করা, রোলিং করা এবং সেন্ট ফিলিং করা।\r\n\r\nএর বাইরে মাঠের কাজে ব্যবহৃত বিভিন্ন যন্ত্রপাতি ও গ্রাউন্ডের মেশিনারিজ নিয়মিত সার্ভিসিং করিয়ে সচল রাখার প্রতিও গুরুত্বারোপ করা হয়েছে। বিদ্যুৎ ও পানি সরবরাহের কাজে নিয়োজিত টেকনিশিয়ানদেরও কাজে যোগ দেয়ার নির্দেশ জারি করা হয়েছে।\r\n\r\nবিসিবির কোভিড-১৯ বিষয়ক গাইডলাইন মেনে ভেন্যুগুলোকে জীবাণুমুক্ত রাখার জন্য বোর্ডের সকল কর্মকর্তা ও কর্মীদের নির্দেশ দেয়া হয়েছে। করোনা কালীন সময়ে এই কাজ করাটা চ্যালেঞ্জের হলেও এ জন্য পর্যাপ্ত সংখক পরিচ্ছন্ন কর্মীকে নিযুক্ত করা হয়েছে।\r\n\r\nবিসিবির প্রধান নির্বাহী কর্মকর্তা (সিইও) নিজাম উদ্দিন চৌধুরী বলেন, আমরা এ বিষয়ে খুবই সজাগ। কারণ বিলম্ব না করে যত দ্রুত সম্ভব ক্রিকেটারদেরকে আমরা মাঠে ফেরাতে চাই। প্রাথমিক ভাবে অনুশীলনের মাধ্যমে ক্রিকেট মাঠে ফেরাতে চাই। এই কারণে আমরা আমাদের মাঠ ও অনুশীলন স্থলকে কার্যকর ও সম্পূর্ণ প্রস্তুত রাখতে চাই।', 1, '2020-07-03 03:14:28', '2020-07-03 03:16:42', NULL),
(10, 1, 1, 'আলো দেবে নাইট ভিশন গগলস', 'আলো-দেবে-নাইট-ভিশন-গগলস', 'public/images/post/1593746181.jpg', 'NKq8vpCsDeA', 'উড্ডয়ন ও অবতরণের সময় ঠিকমতো দেখতে না পাওয়া সারা বিশ্বেই হেলিকপ্টার দুর্ঘটনার অন্যতম কারণ।', 'উড্ডয়ন ও অবতরণের সময় ঠিকমতো দেখতে না পাওয়া সারা বিশ্বেই হেলিকপ্টার দুর্ঘটনার অন্যতম কারণ। এই পরিস্থিতিতে বাংলাদেশে বিমান বাহিনীতে যুক্ত হয়েছে নাইট ভিশন গগলস যা অন্ধকারে আলো দেবে। এই গগলস চোখে দিলে বৈমানিকরা অন্ধকারের মধ্যে নিচের সবকিছু পরিষ্কার দেখতে পাবেন। শুধু তাই নয়, এটা রাতে দুর্গম অঞ্চলে অপারেশন চালাতে সাহায্য করবে। যে কোনো দুর্যোগে উদ্ধার অপারেশনও সহজ হয়ে যাবে। গগলস-এর অন্তর্ভুক্তি হেলিকপ্টার চলাচলে নতুন অধ্যায় সূচনা করেছে।\r\n\r\nফোরথ জেনারেশনের এই গগলস সারা বিশ্বেই সামরিক বাহিনীতে ব্যবহার হচ্ছে। যুদ্ধেও এটা ব্যবহার হচ্ছে। এই প্রযুক্তির ফলে উড্ডয়ন ও অবতরণ নিরাপদ হয়েছে। বৈমানিকের মনোবল বৃদ্ধি, অপারেশনাল সক্ষমতা, জাতিসংঘ শান্তিরক্ষী বাহিনীতে অংশগ্রহণ নিশ্চিত হয়েছে। এটা আধুনিক প্রশিক্ষণের একটা ব্যবস্থা। নাইট ভিশন গগলস চোখে থাকলে বৈমানিকদের আর দিন-রাত থাকছে না। সমানভাবেই দেখতে পাচ্ছেন।\r\n\r\nমঙ্গলবার রাতে কয়েকজন সাংবাদিককে একটি এনভিজি স্পেশাল হেলিকপ্টারে করে নিয়ে যাওয়া হয়েছিল মাওয়া এলাকায়। সেটির দায়িত্বে ছিলেন গ্রুপ ক্যাপ্টেন মাহফুজুর রহমান ও উইং কমান্ডার সালাউদ্দিন আহমেদ। আর ভেতরে থেকে সাংবাদিকদের বিভিন্ন বিষয়ে বুঝিয়ে দেন উইং কমান্ডার চৌধুরী ওমর হায়দার ও স্কোয়াড্রন লিডার মির্জা মোস্তফা জামাল। ফিরে আসার পর সাংবাদিকদের ধন্যবাদ জানান বিমানবাহিনীর ঘাঁটি বাশারের অধিনায়ক এয়ার ভাইস মার্শাল নজরুল ইসলাম।\r\n\r\nরাত ৮টার দিকে মাওয়া এলাকায় পদ্মার ওপরে গিয়ে ১ হাজার ফুট ওপর থেকে নাইট ভিশন গগলস ব্যবহার করে দেখা গেল পদ্মা ব্রিজের খুঁটি, পদ্মার চরসহ নানা এলাকা। অথচ গগলস থেকে চোখ সরালেই অন্ধকারে সেখানে কিছু দেখা যাচ্ছে না। এই প্রযুক্তি বাংলাদেশে এসেছে ২০১৮ সালে। এটা ব্যবহার করে সাত জন মুমূর্ষু করোনা রোগীকে রাতের বেলা সিলেট, যশোর, খুলনা, ভোলা, ময়মনসিংহ ও বান্দরবান থেকে ঢাকায় আনা হয়েছে। এ ছাড়া চট্টগ্রামে গত বছর ১৯ জুন বান্দরবানে সেনাবাহিনীর সেনাভর্তি একটি পিকআপ রাত্রীকালীন অপারেশন চালানোর সময় দুর্ঘটনায় পড়ে। খবর পেয়ে বিমানবাহিনীর এডব্লিউ-১৩৯ হেলিকপ্টার বান্দরবানের দুর্গম এলাকা হতে মুমূর্ষু ছয় জন সেনাকে রাতের আঁধারে উদ্ধার করতে সক্ষম হয়।\r\n\r\nপুরান ঢাকার চুড়িহাট্টা এলাকা জুড়ে গত বছর ২০ ফেব্রুয়ারি রাতে ভয়াবহ অগ্নিকাণ্ডের ঘটনা ঘটে। এ সময় বিমানবাহিনীর কর্মকর্তারা হেলিকপ্টার নিয়ে ছুটে গিয়েছিলেন সাহায্যের হাত বাড়াতে। রাতের বেলা বেল-২১২ হেলিকপ্টার নিয়ে যাওয়া এবং সুচারুভাবে কাজ করার পেছনে কাজ করেছিল নাইট ভিশন গগলস।\r\n\r\nবর্তমানে বিমান বাহিনীর ৯টি হেলিকপ্টারে এ প্রযুক্তির ব্যবহার করা যাচ্ছে। বেল-২১২ ও এমআই সিরিজ হেলিকপ্টারের নাইট ভিশন গগলসের প্রশিক্ষণের জন্য বাংলাদেশ বিমানবাহিনীর বৈমানিকরা কানাডা ও ইউক্রেনে প্রশিক্ষণ নেন। সদ্য কেনা সি-১৩০জে পরিবহন বিমানেও নাইট ভিশন গগলসের প্রযুক্তি অন্তর্ভুক্তির প্রক্রিয়া চলমান রয়েছে। অতি অল্প সময়ে একই সক্ষমতা বিমানবাহিনীর পরিবহন বিমান বহরেও সংযোজিত হবে।\r\n\r\nবিমানবাহিনীর এয়ার কমোডোর মো. মাহামুদুর হাসান জানান, উড্ডয়ন ও অবতরণের নিরাপত্তার নিশ্চিতে নবদিগন্তের সূচনা করেছে নাইট ভিশন গগলস, যা হেলিকপ্টার উড্ডয়ন পরিচালনায় যোগ করেছে এক নতুন মাত্রা। হেলিকপ্টারের মাধ্যমে যে কোনো দুর্গম ও প্রত্যন্ত অঞ্চলে দিবা ও রাত্রীকালীন অপারেশন পরিচালনা করা সম্ভব। নাইট ভিশন গগলসের আবিষ্কার ও অন্তর্ভুক্তি বিমান চালনায় নতুন অধ্যায়ের সৃষ্টি করেছে।\r\n\r\nকীভাবে গগলসের আবিষ্কার? এমন প্রশ্নের উত্তরে কর্মকর্তারা বলেন, বিড়াল গোত্রীয় প্রাণী রাতের অন্ধকারেও সীমিত পরিসরে দেখতে পায়। আর তা দেখেই গবেষণার সূত্রপাত হয়। অনেক পরীক্ষা-নিরীক্ষার পর ১৯৬৫ সালে স্টার লাইট স্কোপ যুক্ত প্রথম নাইট ভিশন গগলস তৈরি হয়। বর্তমানে বাংলাদেশেও আকাশচুম্বী স্থাপনা, মোবাইল নেটওয়ার্ক এন্টেনা দেশের আনাচেকানাচে গড়ে উঠেছে। রাতের বেলায় দৃষ্টিশক্তির সীমাবদ্ধতার কারণে এসব স্থাপনা স্বল্প উচ্চতায় হেলিকপ্টার উড্ডয়ন পরিচালনায় ঝুঁকির সৃষ্টি করে। এ অবস্থায় নাইট ভিশন গগলস প্রযুক্তির সহায়তায় ভূমি থেকে স্বল্প উচ্চতায় উড্ডয়নকালে বৈমানিকরা যে কোনো ধরনের প্রতিবন্ধকতা এড়িয়ে চলতে সক্ষম হন। এ ছাড়া এই গগলস ব্যবহারের কারণে বৈমানিকের মনোবল বৃদ্ধি পায়। অপারেশনাল সক্ষমতা বাড়ে। গভীর সমুদ্র ও দেশের যে কোনো প্রত্যন্ত অঞ্চলে বাংলাদেশ বিমানবাহিনীর হেলিকপ্টারসমূহ রাত্রীকালীন উড্ডয়ন পরিচালনা ও উদ্ধার কার্যক্রমে অংশগ্রহণ করতে সক্ষম। জাতিসংঘ শান্তি রক্ষা মিশনে বিদ্রোহী জঙ্গি গোষ্ঠীগুলো মূলত রাতে শান্তি রক্ষী বাহিনীর ওপর অতর্কিত হামলা পরিচালনা করে থাকে। হেলিকপ্টার সাপোর্ট শান্তিরক্ষী এভিয়েশন কন্টিনজেন্টের একটি অপরিহার্য করণীয় বলে গণ্য হয়।\r\n\r\nনাইট ভিশন গগলস হচ্ছে একপ্রকার আলোক যন্ত্র যা সম্পূর্ণ অন্ধকারেও দৃশ্যমান ছবি তৈরি করতে পারে। দ্বিতীয় বিশ্বযুদ্ধে প্রথম নাইট ভিশন ডিভাইস ব্যবহূত হয়। পরবর্তীকালে ভিয়েতনাম যুদ্ধসহ আরো অনেক যুদ্ধে এর ব্যবহার হয়। আবিষ্কারের সময় থেকেই এ ধরনের যন্ত্রের বিভিন্ন সংস্করণ বের হয়ে আসছে। সর্বশেষ এই প্রযুক্তির অংশ হিসেবে ১৯৬৫ সালে আসে নাইট ভিশন গগলস।', 1, '2020-07-03 03:16:21', '2020-07-03 03:16:42', NULL),
(11, 2, 2, 'Debitis id aut dolor', 'debitis-id-aut-dolor', 'public/images/post/1593746683.jpg', NULL, 'Fugit in qui ex ver', 'Et elit ipsa deser', 1, '2020-07-03 03:24:44', '2020-07-03 03:25:55', '2020-07-03 03:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu` text COLLATE utf8mb4_unicode_ci,
  `sub_menu` text COLLATE utf8mb4_unicode_ci,
  `in_body` text COLLATE utf8mb4_unicode_ci,
  `inner_in_body` text COLLATE utf8mb4_unicode_ci,
  `admin_id` int(10) DEFAULT NULL,
  `role` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `menu`, `sub_menu`, `in_body`, `inner_in_body`, `admin_id`, `role`, `status`, `trash`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, '[\"1\"]', NULL, NULL, NULL, 4, 3, 1, 0, '2020-03-24 18:57:29', '2020-04-02 13:53:54', NULL),
(31, '[\"1\"]', NULL, NULL, NULL, 3, 3, 1, 0, '2020-04-02 13:44:46', '2020-04-02 13:54:09', NULL),
(32, '[\"1\"]', NULL, NULL, NULL, 5, 3, 1, 0, '2020-04-02 13:48:34', '2020-04-02 13:53:41', NULL),
(35, '[\"105\",\"73\",\"70\",\"1\",\"65\",\"64\",\"32\",\"2\",\"5\",\"7\",\"28\"]', '[\"6\",\"61\",\"107\",\"74\",\"62\",\"33\",\"23\",\"106\",\"29\",\"35\",\"24\",\"66\",\"34\",\"63\"]', '[\"108\",\"30\",\"36\",\"110\",\"109\",\"68\",\"31\",\"69\",\"25\",\"67\"]', '[\"26\",\"27\"]', 1, 1, 1, 0, '2020-04-03 07:50:16', '2020-07-02 15:26:40', NULL),
(36, '[\"105\",\"73\",\"70\",\"1\",\"64\"]', '[\"106\",\"107\"]', '[\"108\",\"109\",\"110\"]', NULL, 2, 2, 1, 0, '2020-04-27 23:13:25', '2020-07-02 18:22:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_bn` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color_scheme_id` tinyint(3) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp(6) NULL DEFAULT NULL,
  `updated_at` timestamp(6) NULL DEFAULT NULL,
  `custom_scroll` tinyint(1) NOT NULL DEFAULT '1',
  `show_user_data` tinyint(1) DEFAULT '1',
  `show_background_image` tinyint(1) DEFAULT '0',
  `show_dev_menu` tinyint(1) DEFAULT '1',
  `apply_scheme_on_card` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `title_en`, `title_bn`, `color_scheme_id`, `email`, `mobile`, `facebook`, `twitter`, `youtube`, `linkedin`, `address`, `status`, `created_at`, `updated_at`, `custom_scroll`, `show_user_data`, `show_background_image`, `show_dev_menu`, `apply_scheme_on_card`) VALUES
(1, 'public/images/settings/logo-1593704796.png', 'public/images/settings/favicon-1593704797.png', 'laravel Test', 'লারাভেল টেস্ট', 1, 'afzalbd1@gmail.com', '01721571954', 'https://www.facebook.com/AfzalSabbir.bd', '#twitter', '#youtube', '#linkedin', 'City: Mymensingh\r\nCountry: Bangladesh\r\nState: Mymensingh Division\r\nZipcode: 2200', 1, '2019-04-10 06:00:00.000000', '2020-07-02 15:46:47.000000', 0, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_records`
--

CREATE TABLE `sms_records` (
  `id` int(11) NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `sms` longtext COLLATE utf8_unicode_ci,
  `sending_date` date DEFAULT NULL,
  `sms_count` tinyint(3) DEFAULT '1',
  `send_by` int(11) DEFAULT NULL,
  `is_send` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sms_records`
--

INSERT INTO `sms_records` (`id`, `mobile`, `sms`, `sending_date`, `sms_count`, `send_by`, `is_send`) VALUES
(1, '01624390079', 'Hi Khairul vai', '2019-04-30', NULL, 1, 1),
(2, '01515255819', 'sgfhgfhg', '2019-04-30', 1, 1, 1),
(3, '01624390079', 'sgfhgfhg', '2019-04-30', 1, 1, 1),
(4, '01969481541', 'sgfhgfhg', '2019-04-30', 1, 1, 1),
(5, '01515255819', 'hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you', '2019-04-30', 2, 1, 1),
(6, '01624390079', 'hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you hey khairul vai, how are you', '2019-04-30', 2, 1, 1),
(7, '01515255819', 'ssds', '2019-04-30', 1, 1, 1),
(8, '01624390079', 'ssds', '2019-04-30', 1, 1, 1),
(9, '01969481541', 'ssds', '2019-04-30', 1, 1, 1),
(10, '01515255819', 'd', '2019-04-30', 1, 1, 1),
(11, '01515255819', 'd', '2019-04-30', 1, 1, 1),
(12, '01624390079', 'd', '2019-04-30', 1, 1, 1),
(13, '01713576627', 'hey', '2019-04-30', 1, 1, 1),
(14, '01969481541', 'hey', '2019-04-30', 1, 1, 1),
(15, '01515255819', 'h', '2019-04-30', 1, 1, 1),
(16, '01969481541', 'h', '2019-04-30', 1, 1, 1),
(17, '01515255819', 'd', '2019-04-30', 1, 1, 1),
(18, '01515255819', 'd', '2019-04-30', 1, 1, 1),
(19, '01515255819', 's', '2019-04-30', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries`
--

CREATE TABLE `telescope_entries` (
  `sequence` bigint(20) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_hash` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `should_display_on_index` tinyint(1) NOT NULL DEFAULT '1',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `telescope_entries`
--

INSERT INTO `telescope_entries` (`sequence`, `uuid`, `batch_id`, `family_hash`, `should_display_on_index`, `type`, `content`, `created_at`) VALUES
(1, '9070c9a8-3aa0-41be-b2cc-f03c630600e6', '9070c9a8-d810-4336-bf38-08cbe2a73d76', NULL, 1, 'view', '{\"name\":\"errors::404\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/404.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at C:\\\\xampp\\\\htdocs\\\\looper2\\\\uselooper.com\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[211:216]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-0NIMLPQ\"}', '2020-04-29 12:15:39'),
(2, '9070c9a8-7a08-46c4-b5be-679d4ba2b5b9', '9070c9a8-d810-4336-bf38-08cbe2a73d76', NULL, 1, 'view', '{\"name\":\"errors::minimal\",\"path\":\"\\\\vendor\\\\laravel\\\\framework\\\\src\\\\Illuminate\\\\Foundation\\\\Exceptions\\/views\\/minimal.blade.php\",\"data\":[\"exception\"],\"composers\":[{\"name\":\"Closure at C:\\\\xampp\\\\htdocs\\\\looper2\\\\uselooper.com\\\\vendor\\\\barryvdh\\\\laravel-debugbar\\\\src\\\\LaravelDebugbar.php[211:216]\",\"type\":\"composer\"}],\"hostname\":\"DESKTOP-0NIMLPQ\"}', '2020-04-29 12:15:39'),
(3, '9070c9a8-8743-4dc3-92c0-d84e66d5aefc', '9070c9a8-d810-4336-bf38-08cbe2a73d76', NULL, 1, 'debugbar', '{\"requestId\":\"Xee3931cd6168f595513e6cca5d1b0bbf\",\"hostname\":\"DESKTOP-0NIMLPQ\"}', '2020-04-29 12:15:40'),
(4, '9070c9a8-d6f9-42ab-aaec-8ab44f65e22d', '9070c9a8-d810-4336-bf38-08cbe2a73d76', NULL, 1, 'request', '{\"uri\":\"\\/admin\\/assets\\/javascript\\/theme.min.js\",\"method\":\"GET\",\"controller_action\":null,\"middleware\":[],\"headers\":{\"host\":\"localhost\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko\\/20100101 Firefox\\/75.0\",\"accept\":\"*\\/*\",\"accept-language\":\"en-US,en;q=0.5\",\"accept-encoding\":\"gzip, deflate\",\"dnt\":\"1\",\"connection\":\"keep-alive\",\"referer\":\"http:\\/\\/localhost\\/looper2\\/uselooper.com\\/admin\\/dashboard\",\"cookie\":\"debug-bar-state=minimized; XSRF-TOKEN=eyJpdiI6InBqdDhYckMxMHVoS25pUmR1YWFVZmc9PSIsInZhbHVlIjoib2lPXC8wUUIydHdZWlpKbkFWRlwvTURMdmtHMkN0anlXSTRhb1pmaXBLcnlhWmVNVk5IN2FURloxdEgxV1wvY2pKSiIsIm1hYyI6ImJmZjVkM2JiNDMyZmQzYTk0OTM1MmFmOTkwNjcxNTliM2I5ZGZhNzc4NTc0OTNiNTczOTAwODNlNDQ4YmNhNWQifQ%3D%3D; admin_60_session=eyJpdiI6IkNyMGQ3RFQyVDhSWjhYOWNVQWh1WXc9PSIsInZhbHVlIjoiT3V0eDBIOVBOa0xrUkFiWldIeVgrVU10bStLWGMzRnJMM1BsZFNJOFwvQ21kN29aTzZtckM0Y2lNTGVDTXl1SVoiLCJtYWMiOiI3MWI4MDE2MmU5OGY2NmM5M2QyNzEyY2I5ZWQ4NjZhMjQ4YjNiZGE2ODY5NzkzZjExN2NkNjUyZmY1YmMwMjVlIn0%3D; connect.sid=s%3AhwROikhRcJgcpwa9bStFXBF3y-pp_mzn.uGHv2IDI76g9%2FFNjzx9QV8iCnzZPQjAdI5Ic6NVshn4\"},\"payload\":[],\"session\":[],\"response_status\":404,\"response\":\"HTML Response\",\"duration\":3973,\"memory\":4,\"hostname\":\"DESKTOP-0NIMLPQ\"}', '2020-04-29 12:15:40');

-- --------------------------------------------------------

--
-- Table structure for table `telescope_entries_tags`
--

CREATE TABLE `telescope_entries_tags` (
  `entry_uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `telescope_monitoring`
--

CREATE TABLE `telescope_monitoring` (
  `tag` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `theme_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Active',
  `trash` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1: Deleted',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'superuser password: 111111',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super User', 'superuser', 'superuser@admin-6-0.com', NULL, '$2y$10$PJjPacPUO4DC4VCoMK92cezwx.yZA9BQQGtwfkmURfQBjRAJw8tIG', 'crFgGuVNvsHdIbmx9ZEuxQS9Xduud7CYTCaTdSDAmFy6KbN7MBjTQVNms6LM', '2020-04-01 05:34:43', '2020-04-01 05:34:43'),
(2, 'SHAYMA SHULTANA', NULL, 'shayma@gmail.com', NULL, '$2y$10$zC3na4/19leO7l5zd62W9.oiW7q6dJmoTg1R9nUK/kvjXaHhNi6L2', NULL, '2020-04-01 13:23:05', '2020-04-01 13:23:05'),
(3, 'AFZALUR RAHMAN SABBIR', NULL, 'afzalbd1@gmail.com', NULL, '$2y$10$PJjPacPUO4DC4VCoMK92cezwx.yZA9BQQGtwfkmURfQBjRAJw8tIG', NULL, '2020-04-03 12:55:03', '2020-04-03 12:55:03'),
(4, 'Test', NULL, 'afzalbd1@gmail.com1', NULL, '$2y$10$w41aXD/IDtU4eoccUNpyd.ThUocb4xRbMKz5pJasEymWkwYcNy87O', NULL, '2020-07-02 18:37:59', '2020-07-02 18:37:59');

-- --------------------------------------------------------

--
-- Table structure for table `websockets_statistics_entries`
--

CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `app_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `admins_email_unique` (`email`) USING BTREE,
  ADD UNIQUE KEY `admins_username_unique` (`username`) USING BTREE;

--
-- Indexes for table `admin_access_infos`
--
ALTER TABLE `admin_access_infos`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `admin_access_infos_admin_id_foreign` (`admin_id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examples`
--
ALTER TABLE `examples`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example_modals`
--
ALTER TABLE `example_modals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `example_paginations`
--
ALTER TABLE `example_paginations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_tags`
--
ALTER TABLE `module_tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_records`
--
ALTER TABLE `sms_records`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  ADD PRIMARY KEY (`sequence`),
  ADD UNIQUE KEY `telescope_entries_uuid_unique` (`uuid`),
  ADD KEY `telescope_entries_batch_id_index` (`batch_id`),
  ADD KEY `telescope_entries_type_should_display_on_index_index` (`type`,`should_display_on_index`),
  ADD KEY `telescope_entries_family_hash_index` (`family_hash`);

--
-- Indexes for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD KEY `telescope_entries_tags_entry_uuid_tag_index` (`entry_uuid`,`tag`),
  ADD KEY `telescope_entries_tags_tag_index` (`tag`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_access_infos`
--
ALTER TABLE `admin_access_infos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=216;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `examples`
--
ALTER TABLE `examples`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=302;

--
-- AUTO_INCREMENT for table `example_modals`
--
ALTER TABLE `example_modals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `example_paginations`
--
ALTER TABLE `example_paginations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `module_tags`
--
ALTER TABLE `module_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_records`
--
ALTER TABLE `sms_records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `telescope_entries`
--
ALTER TABLE `telescope_entries`
  MODIFY `sequence` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `websockets_statistics_entries`
--
ALTER TABLE `websockets_statistics_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `telescope_entries_tags`
--
ALTER TABLE `telescope_entries_tags`
  ADD CONSTRAINT `telescope_entries_tags_entry_uuid_foreign` FOREIGN KEY (`entry_uuid`) REFERENCES `telescope_entries` (`uuid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
