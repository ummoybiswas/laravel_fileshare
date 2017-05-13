-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2017 at 10:35 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_07_074458_create_posts_table', 1),
(4, '2017_04_07_074733_create_rating_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `feature_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploaded_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `feature_image`, `filename`, `uploaded_date`, `uploaded_by`, `created_at`, `updated_at`) VALUES
(1, 'SGSN Source Processing issue', 'asd', '1491593031.jpg', '1491593031.pdf', '2017-04-07 19:23:51', '1', '2017-04-07 13:23:51', '2017-04-07 13:23:51'),
(2, 'SGSN Source Processing issue', 'asd', '1491593068.jpg', '1491593068.pdf', '2017-04-07 19:24:28', '1', '2017-04-07 13:24:28', '2017-04-07 13:24:28'),
(3, 'SQMS_WEB_BROWSING Table not released', 'dsfz adfsdf dsfsdf dsfsdf sdfsdf sdfdsf sdfsdf sdfsdf dsfsdf dfsdf sdfsd fsdf sdfsdf', '1491595567.jpg', '1491595567.jpg', '2017-04-07 20:06:07', '1', '2017-04-07 14:06:07', '2017-04-07 14:06:07'),
(4, 'as', 'vcvdvdfbdfgdfg ererter reerer asdadasd rwerwerwe ewrwer werwerwer werwerwer', '1491596722.jpg', '1491596722.jpg', '2017-04-07 20:25:22', '2', '2017-04-07 14:25:22', '2017-04-07 14:25:22'),
(5, 'dsfsdf dsfsdf', 'sdfsdfsdfsd ghfghfgh5ytrh regerter fegefgerg ergergergerg fgergerg fgfgdgdf sdfgsdgsdfg', '1491596883.jpg', '1491596883.jpg', '2017-04-07 20:28:03', '2', '2017-04-07 14:28:03', '2017-04-07 14:28:03'),
(6, 'SQMS_WEB_BROWSING Table not released', 'dsfz adfsdf dsfsdf dsfsdf sdfsdf sdfdsf sdfsdf sdfsdf dsfsdf dfsdf sdfsd fsdf sdfsdf', '1491596955.jpg', '1491596955.jpg', '2017-04-07 20:29:15', '2', '2017-04-07 14:29:15', '2017-04-07 14:29:15'),
(7, 'as', 'dsfz adfsdf dsfsdf dsfsdf sdfsdf sdfdsf sdfsdf sdfsdf dsfsdf dfsdf sdfsd fsdf sdfsdf', '1491597046.jpg', '1491597046.jpg', '2017-04-07 20:30:46', '2', '2017-04-07 14:30:46', '2017-04-07 14:30:46'),
(8, 'as', 'vcvdvdfbdfgdfg ererter reerer asdadasd rwerwerwe ewrwer werwerwer werwerwer', '1491597270.jpg', '1491597270.jpg', '2017-04-07 20:34:30', '2', '2017-04-07 14:34:30', '2017-04-07 14:34:30'),
(9, 'SGSN Source Processing issue', 'vcvdvdfbdfgdfg ererter reerer asdadasd rwerwerwe ewrwer werwerwer werwerwer', '1491597311.jpg', '1491597311.jpg', '2017-04-07 20:35:11', '2', '2017-04-07 14:35:11', '2017-04-07 14:35:11'),
(10, 'asd', 'asd', '1491598113.jpg', '1491598113.jpg', '2017-04-07 20:48:33', '2', '2017-04-07 14:48:33', '2017-04-07 14:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `rating_count` int(11) NOT NULL,
  `votes` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `post_id`, `rating_count`, `votes`, `created_at`, `updated_at`) VALUES
(1, 2, 9, 2, '2017-04-07 13:24:28', '2017-04-07 13:24:28'),
(2, 3, 15, 3, '2017-04-07 14:06:07', '2017-04-07 14:06:07'),
(3, 4, 0, 0, '2017-04-07 14:25:22', '2017-04-07 14:25:22'),
(4, 5, 0, 0, '2017-04-07 14:28:03', '2017-04-07 14:28:03'),
(5, 6, 0, 0, '2017-04-07 14:29:15', '2017-04-07 14:29:15'),
(6, 7, 0, 0, '2017-04-07 14:30:46', '2017-04-07 14:30:46'),
(7, 8, 0, 0, '2017-04-07 14:34:30', '2017-04-07 14:34:30'),
(8, 9, 0, 0, '2017-04-07 14:35:11', '2017-04-07 14:35:11'),
(9, 10, 0, 0, '2017-04-07 14:48:33', '2017-04-07 14:48:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ummoy Biswas', 'ummoy.biswas@live.com', '$2y$10$E6DSfBGRIYsJlRxd.pHFYuOngKq5pXgteCkqbNz66HTMiH7l1Pn1y', '7HZHeX4gz9RB2d2UHuazo5Ls0tf9QkMASLXG4CzTWZaowFqyKsJJT3gV7HQe', '2017-04-07 13:23:33', '2017-04-07 13:23:33'),
(2, 'ummoy.biswas', 'ummoy.biswas86@gmail.com', '$2y$10$iTglpPCr4ShFRgbfERvC4e4vhbyKHK733Z.Eeob5GFOEF/KqS/lvC', 'ay3TwmQtOOqTtr4bSaf555j1bqfCt3liODFUZnu2IeqwIeXexLA8cYlaHRkq', '2017-04-07 14:13:29', '2017-04-07 14:13:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_feature_image_unique` (`feature_image`),
  ADD UNIQUE KEY `posts_filename_unique` (`filename`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_post_id_foreign` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
