-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2021 at 09:21 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_liburia`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('113409cebd61b25da7991d6ac70e68a88ff41c928031e4f25b09f2cbcad50c4d942678f9463ef8af', 4, 1, 'nApp', '[]', 0, '2021-10-10 08:57:41', '2021-10-10 08:57:41', '2022-10-10 16:57:41'),
('15cae7271ae11cb67db675ba624277a6a44faf78dc01a864c6c329149d9ed781f268442ae0803dc0', 14, 3, 'nApp', '[]', 0, '2021-10-12 10:04:50', '2021-10-12 10:04:50', '2022-10-12 18:04:50'),
('181d46125363a70878e8baed26bf3ef5ff3c2700e0e30974f56ceca9c267bf08a7edb66fe786d3d7', 9, 1, 'nApp', '[]', 0, '2021-10-12 05:54:29', '2021-10-12 05:54:29', '2022-10-12 13:54:29'),
('2151a71bdd88e4458c175093b6772c0662cbc0ec12c803026ead688eebe5967be0ae4dc89f66d78a', 3, 1, 'nApp', '[]', 0, '2021-10-10 08:54:31', '2021-10-10 08:54:31', '2022-10-10 16:54:31'),
('362f9cb578adac31146ee6f0273e8dac6195d635c67b5879d117d349407ee2255367888f3ba63e04', 10, 1, 'nApp', '[]', 0, '2021-10-12 05:56:18', '2021-10-12 05:56:18', '2022-10-12 13:56:18'),
('405ba052104f701929174a52cf227eac695f4b71a6451b1d3d2026e0d11364a07f1d620ca33f6be0', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:47:22', '2021-10-12 09:47:22', '2022-10-12 17:47:22'),
('43b2794f6458e67bcb75ff6f98d44c4c2d40c8e7cd9266c4db4e6559b48663fafd232958eb8cbf06', 12, 3, 'nApp', '[]', 0, '2021-10-12 09:56:55', '2021-10-12 09:56:55', '2022-10-12 17:56:55'),
('60c3bc30ef305105d6c849d10d728434628165dd73fa47af081f04a0647b28e2a2d876114b44e163', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:35:05', '2021-10-12 09:35:05', '2022-10-12 17:35:05'),
('6c99254a21a32d675880fa9389756db22566f0722fb233bd9ea254121ed2fc93fa4ab12ddb9621b9', 7, 1, 'nApp', '[]', 0, '2021-10-12 05:43:41', '2021-10-12 05:43:41', '2022-10-12 13:43:41'),
('81b712353eb9519eb78186cc24e1173cbb02c03a9efca606a103f96223251899b5718daf0b98004f', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:33:46', '2021-10-12 09:33:46', '2022-10-12 17:33:46'),
('85c0697c734bd9a3d38a4e996fafa58c9d843eaa0a4a8023093a4c077ba2ec26c6789e4ccfca001c', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:37:27', '2021-10-12 09:37:27', '2022-10-12 17:37:27'),
('8e790d370c710e0262f47717dac9d39a2b4b75d1fe945f97d0d2e93ca46019e2795256f96edee1fe', 14, 3, 'nApp', '[]', 0, '2021-10-12 10:04:35', '2021-10-12 10:04:35', '2022-10-12 18:04:35'),
('9a6a73c974eeb91c6826e0e7380c33b82454fe930b8e22757e5a9e5acab065db7c9e91470bc14026', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:40:41', '2021-10-12 09:40:41', '2022-10-12 17:40:41'),
('9e40074d75f9e054882e88d01548b921e417e71c7312a8644dcbfacddbab3b470753e315755e15cb', 12, 1, 'nApp', '[]', 0, '2021-10-12 09:43:59', '2021-10-12 09:43:59', '2022-10-12 17:43:59'),
('9e9f74178cdce2d9d6c948eedba92740ffd2658ee9010d00825e561db74161a12167aacc525348e7', 5, 1, 'nApp', '[]', 0, '2021-10-12 05:41:07', '2021-10-12 05:41:07', '2022-10-12 13:41:07'),
('b3df15e932a232850dcad30af1d706c7a57b31f1e1f592977431a7a6f10af8d0077ecb6d030b496d', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:47:24', '2021-10-12 09:47:24', '2022-10-12 17:47:24'),
('c1685c01dc5639102234917d0be45b692cbe67700a2b55cd6c5119291b155e617a17de1598e09416', 8, 1, 'nApp', '[]', 0, '2021-10-12 05:51:15', '2021-10-12 05:51:15', '2022-10-12 13:51:15'),
('c3c4d31ec4d9b494cdcbfeed970d334239669edfbccf2e756079ad6af9ee28e3a5a2880cf154191a', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:40:58', '2021-10-12 09:40:58', '2022-10-12 17:40:58'),
('c94ec6d24eb084c0e59c1839190f693b45dc929d2ef8d559ae5993d09f3a43438da68d2fdd5be185', 12, 3, 'nApp', '[]', 0, '2021-10-12 09:56:51', '2021-10-12 09:56:51', '2022-10-12 17:56:51'),
('e6eb3828a9bb64395d74967c5d9d800fe2c5822b7115cc0631582f7fb4b376f304e892cbb8a30637', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:42:36', '2021-10-12 09:42:36', '2022-10-12 17:42:36'),
('f4bfd505299851fe1157d926e1ac22d08f5d67a25871f846b36d840d7357133317cd0fff65b514af', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:35:15', '2021-10-12 09:35:15', '2022-10-12 17:35:15'),
('f8cc6eb82248ad448c225d1a7a6932e8417f3300261e1b489a05bcab2d4fc2b0a0a8942ad12e1e3d', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:38:49', '2021-10-12 09:38:49', '2022-10-12 17:38:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'lF5v25JA9LMeKxGnSJ6Otg4uYlVJjzwrUzZtSAzv', NULL, 'http://localhost', 1, 0, 0, '2021-10-10 08:53:47', '2021-10-10 08:53:47'),
(2, NULL, 'Laravel Password Grant Client', 'WkApEzDhRbDg4GEKWj3XeoyiR1iZM4FFjEbiolGM', 'users', 'http://localhost', 0, 1, 0, '2021-10-10 08:53:47', '2021-10-10 08:53:47'),
(3, NULL, 'Laravel Personal Access Client', '7WapTmEzhkJBVS4rhP83I9YGQ0GIuRtverLR6yHc', NULL, 'http://localhost', 1, 0, 0, '2021-10-12 09:56:18', '2021-10-12 09:56:18'),
(4, NULL, 'Laravel Password Grant Client', 'BBurq7dpkIFjKUAOwOzEKMhcvfRdVUOcZOB0czze', 'users', 'http://localhost', 0, 1, 0, '2021-10-12 09:56:19', '2021-10-12 09:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-10-10 08:53:47', '2021-10-10 08:53:47'),
(2, 3, '2021-10-12 09:56:19', '2021-10-12 09:56:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Nabil Akbar Pratama', 'nblakbar10', 'nabil@gmail.com', '$2y$10$ykQ01I8ARbYLcQdr6dTsn.Bz.RhKCGqQ2uvsrFCwC.lh1PyKd5zS2', '2021-10-10 08:52:43', '2021-10-10 08:52:43'),
(3, 'Jesyca', 'jesycanatalia', 'jesyca@gmail.com', '$2y$10$AtrxcG/ZUktddiyzf/pwkuD6yvNZ/GM5F1rKucf8fWdQrTEX3f5Fe', '2021-10-10 08:54:31', '2021-10-10 08:54:31'),
(4, 'Dape', 'alfydape', 'dape@gmail.com', '$2y$10$Kc2XWp3Mu6MHFEQy8MGFTuLMhPTRKTTWDYkGvOKTpCT/Xb27a/u5m', '2021-10-10 08:57:41', '2021-10-10 08:57:41'),
(5, 'Muhammad Raihan Rahman', 'forthdssh', '11181061@student.itk.ac.id', '$2y$10$9sJmhfDBIdg6UktSxZ9I4.2wb83MUnlvqAlB3k0uE/fq7HYnlfhri', '2021-10-12 05:41:06', '2021-10-12 05:41:06'),
(7, 'Liburia AAAAAAA', 'liburia', 'liburia@gmail.com', '$2y$10$uslsvs4jeo/su1SMoOB15OMS0nyomM9KDOZjDh6UtbV8qaNeaqYo.', '2021-10-12 05:43:41', '2021-10-12 05:43:41'),
(8, 'Rafly', 'Rafligokil', 'rafli@gmail.com', '$2y$10$cd5HUZW/yEaZlosBUGWquOFodEj5njU80LPwgQu8iqITkOREWdTp6', '2021-10-12 05:51:15', '2021-10-12 05:51:15'),
(9, 'Tester', 'testeruname', 'tester@gmail.com', '$2y$10$2nfJ/Z5.tTlrbF9.B30Tn.eBa1eP9J9NBgemLhYNkwmiOMOqoMRp6', '2021-10-12 05:54:29', '2021-10-12 05:54:29'),
(10, 'fullname', 'fullnametester', 'fullname@gmail.com', '$2y$10$7jKL/u29IuEmDW2xTVr2m.olowTaTPU8zDqpNYmX1RzAg2xTiEfGu', '2021-10-12 05:56:18', '2021-10-12 05:56:18'),
(11, 'nabil', 'nabil', 'nabil@gmail.com', '$2y$10$roL8cR1lknMQkIo5bHXNX.PSESXuCjwv8YKnycq2gRHzTRLyhHh2K', '2021-10-12 09:33:46', '2021-10-12 09:33:46'),
(12, 'admin', 'admin', 'admin@gmail.com', '$2y$10$oEBxeOPitX6dyJdMWYiM/u4z2KabHKdtojSBT9NYsRvAXl55BOZUS', '2021-10-12 09:43:58', '2021-10-12 09:43:58'),
(14, 'Muhammad Nabil Akbar Pratama', 'nblakbar', 'nabilakbarpratama@gmail.com', '$2y$10$hv68nd/.d4l4mApccAcPpe1hAUk43xE7CDOzj.6MRt.Gcu5UkICue', '2021-10-12 10:04:35', '2021-10-12 10:04:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
