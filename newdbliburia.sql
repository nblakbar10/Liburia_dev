-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2022 at 05:23 PM
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
-- Database: `newdbliburia`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `fullname`, `username`, `email`, `photo`, `password`, `created_at`, `updated_at`) VALUES
(15, 'admin123', 'admin123', 'admin123@gmail.com', '', '$2y$10$jnTQm/7dgXmrroZivZXmY.VzhnpxGc5xBbccvHroU/jL4vuiwOYkC', '2021-11-09 19:19:34', '2021-11-09 19:19:34');

-- --------------------------------------------------------

--
-- Table structure for table `adminss`
--

CREATE TABLE `adminss` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `judul`, `photo`, `isi`, `created_at`, `updated_at`) VALUES
(1, '10 Tempat Wisata di Balikpapan yang Wajib Dikunjungi', 'C:\\xampp\\tmp\\php65D2.tmp', 'Kota Balikpapan dikenal sebagai salah satu pusat bisnis dan industri di Pulau Kalimantan. Namun, ternyata Balikpapan juga menyimpan banyak tempat wisata yang memanjakan. Dijuluki dengan kota minyak karena banyak perusahaan minyak, wisata di Balikpapan juga menarik wisatawan domestik, bahkan Internasional. Berikut ini 10 tempat wisata yang wajib di kunjungi saat berkunjung ke Balikpapan:', NULL, '2022-01-05 22:30:21'),
(3, '12 Tempat Wisata di Balikpapan yang Wajib Dikunjungi', 'C:\\xampp\\tmp\\phpBB27.tmp', 'Kotamadya Balikpapan dikenal sebagai salah satu pusat bisnis dan industri di Pulau Kalimantan. Namun, ternyata Balikpapan juga menyimpan banyak tempat wisata yang memanjakan. Dijuluki dengan kota minyak karena banyak perusahaan minyak, wisata di Balikpapan juga menarik wisatawan domestik, bahkan Internasional. Berikut ini 10 tempat wisata yang wajib di kunjungi saat berkunjung ke Balikpapan:', '2022-01-05 22:32:22', '2022-01-05 23:36:15');

-- --------------------------------------------------------

--
-- Table structure for table `artikels`
--

CREATE TABLE `artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_11_09_075316_create_pemesanantiketnew_table', 2),
(10, '2021_11_09_083237_create_admins_table', 3),
(12, '2021_11_10_070222_create_artikels_table', 4),
(13, '2021_12_06_191026_create_follows_table', 4),
(15, '2014_10_12_000000_create_users_table', 5),
(16, '2021_11_10_064019_create_tempat_wisatas_table', 6);

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
('1c0327705458cfd94f2ecb4840d898629e1808472a9a0aab7fc8530b63962ebbdaaf5f9574070082', 16, 12, 'nApp', '[]', 0, '2021-12-23 07:49:38', '2021-12-23 07:49:38', '2022-12-23 15:49:38'),
('2151a71bdd88e4458c175093b6772c0662cbc0ec12c803026ead688eebe5967be0ae4dc89f66d78a', 3, 1, 'nApp', '[]', 0, '2021-10-10 08:54:31', '2021-10-10 08:54:31', '2022-10-10 16:54:31'),
('362f9cb578adac31146ee6f0273e8dac6195d635c67b5879d117d349407ee2255367888f3ba63e04', 10, 1, 'nApp', '[]', 0, '2021-10-12 05:56:18', '2021-10-12 05:56:18', '2022-10-12 13:56:18'),
('405ba052104f701929174a52cf227eac695f4b71a6451b1d3d2026e0d11364a07f1d620ca33f6be0', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:47:22', '2021-10-12 09:47:22', '2022-10-12 17:47:22'),
('43b2794f6458e67bcb75ff6f98d44c4c2d40c8e7cd9266c4db4e6559b48663fafd232958eb8cbf06', 12, 3, 'nApp', '[]', 0, '2021-10-12 09:56:55', '2021-10-12 09:56:55', '2022-10-12 17:56:55'),
('4941c33521b42dc9ac3feaa69cb7e4e2db55255f6940f1802f4b3f9ce3c6af6225edffcf3e07e15e', 19, 12, 'nApp', '[]', 0, '2021-12-23 07:54:15', '2021-12-23 07:54:15', '2022-12-23 15:54:15'),
('60c3bc30ef305105d6c849d10d728434628165dd73fa47af081f04a0647b28e2a2d876114b44e163', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:35:05', '2021-10-12 09:35:05', '2022-10-12 17:35:05'),
('6c99254a21a32d675880fa9389756db22566f0722fb233bd9ea254121ed2fc93fa4ab12ddb9621b9', 7, 1, 'nApp', '[]', 0, '2021-10-12 05:43:41', '2021-10-12 05:43:41', '2022-10-12 13:43:41'),
('769dc2f3001103d4cf66136cd266a0d93f7fcd0636a87abf00f7db68fb32ab007290305b1f5a2240', 15, 10, 'nApp', '[]', 0, '2021-12-21 23:02:32', '2021-12-21 23:02:32', '2022-12-22 07:02:32'),
('77a1ee84a151d43529702611e9b56d8b0f736b02412da59434d8efb8554dd1e5d7de40444b22f76a', 11, 12, 'nApp', '[]', 0, '2021-12-27 22:42:33', '2021-12-27 22:42:33', '2022-12-28 06:42:33'),
('81b712353eb9519eb78186cc24e1173cbb02c03a9efca606a103f96223251899b5718daf0b98004f', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:33:46', '2021-10-12 09:33:46', '2022-10-12 17:33:46'),
('83d74f0093e8e77047512476f1512288487b7d843ac92b554ed6f34bb9256940ced2d8ce870f7ce6', 24, 12, 'nApp', '[]', 0, '2021-12-27 22:19:16', '2021-12-27 22:19:16', '2022-12-28 06:19:16'),
('85c0697c734bd9a3d38a4e996fafa58c9d843eaa0a4a8023093a4c077ba2ec26c6789e4ccfca001c', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:37:27', '2021-10-12 09:37:27', '2022-10-12 17:37:27'),
('8e0cd5b0906ecf14383790b167fdba9fbb90032da4615ffae6b98a082d8b83aa6f4b22c5f6a8487f', 17, 12, 'nApp', '[]', 0, '2021-12-23 07:51:01', '2021-12-23 07:51:01', '2022-12-23 15:51:01'),
('8e790d370c710e0262f47717dac9d39a2b4b75d1fe945f97d0d2e93ca46019e2795256f96edee1fe', 14, 3, 'nApp', '[]', 0, '2021-10-12 10:04:35', '2021-10-12 10:04:35', '2022-10-12 18:04:35'),
('90a2cea79c0639e67f315b7203f09de7089ef879c5faa36ead1f64674c43654d2305ce4fc07802eb', 22, 12, 'nApp', '[]', 0, '2021-12-23 08:19:17', '2021-12-23 08:19:17', '2022-12-23 16:19:17'),
('9a6a73c974eeb91c6826e0e7380c33b82454fe930b8e22757e5a9e5acab065db7c9e91470bc14026', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:40:41', '2021-10-12 09:40:41', '2022-10-12 17:40:41'),
('9e40074d75f9e054882e88d01548b921e417e71c7312a8644dcbfacddbab3b470753e315755e15cb', 12, 1, 'nApp', '[]', 0, '2021-10-12 09:43:59', '2021-10-12 09:43:59', '2022-10-12 17:43:59'),
('9e9f74178cdce2d9d6c948eedba92740ffd2658ee9010d00825e561db74161a12167aacc525348e7', 5, 1, 'nApp', '[]', 0, '2021-10-12 05:41:07', '2021-10-12 05:41:07', '2022-10-12 13:41:07'),
('b3df15e932a232850dcad30af1d706c7a57b31f1e1f592977431a7a6f10af8d0077ecb6d030b496d', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:47:24', '2021-10-12 09:47:24', '2022-10-12 17:47:24'),
('c1685c01dc5639102234917d0be45b692cbe67700a2b55cd6c5119291b155e617a17de1598e09416', 8, 1, 'nApp', '[]', 0, '2021-10-12 05:51:15', '2021-10-12 05:51:15', '2022-10-12 13:51:15'),
('c3c4d31ec4d9b494cdcbfeed970d334239669edfbccf2e756079ad6af9ee28e3a5a2880cf154191a', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:40:58', '2021-10-12 09:40:58', '2022-10-12 17:40:58'),
('c443ca0fd2bea0278682703943ae419af6b0d5714293af00beb3427f6f2e526e481ad22afd41c723', 23, 12, 'nApp', '[]', 0, '2021-12-23 08:27:07', '2021-12-23 08:27:07', '2022-12-23 16:27:07'),
('c54f8e9397950ec0c350456feea4e3063a727085830bcb600ae941507a4c6a2a953c04813c7986be', 20, 12, 'nApp', '[]', 0, '2021-12-23 08:02:59', '2021-12-23 08:02:59', '2022-12-23 16:02:59'),
('c868d658fb0b2b4bd0c17a27dfb40e3c93aff9e514655039f2110730d3cc7e1cc5869a63a6e72e02', 21, 12, 'nApp', '[]', 0, '2021-12-23 08:09:42', '2021-12-23 08:09:42', '2022-12-23 16:09:42'),
('c94ec6d24eb084c0e59c1839190f693b45dc929d2ef8d559ae5993d09f3a43438da68d2fdd5be185', 12, 3, 'nApp', '[]', 0, '2021-10-12 09:56:51', '2021-10-12 09:56:51', '2022-10-12 17:56:51'),
('da241aba5b507178239328ee24abc7a6476567e0c90a3f91d8a19026d3e0ac738855c7d6eda5fbc9', 11, 12, 'nApp', '[]', 0, '2021-12-27 22:42:31', '2021-12-27 22:42:31', '2022-12-28 06:42:31'),
('db048f0561f65fb1e7b9776927caf3ffc105a01b8a414f16905a81fc07d3bdbd42f4c6dc80fd82ee', 11, 6, 'nApp', '[]', 0, '2021-12-21 22:40:44', '2021-12-21 22:40:44', '2022-12-22 06:40:44'),
('db76d0b20d6e380c708c4441ff16ac4146a6c9c73603eddca2ebacbb2222e22e2b3f44b1ed73a997', 25, 12, 'nApp', '[]', 0, '2021-12-27 22:39:59', '2021-12-27 22:39:59', '2022-12-28 06:39:59'),
('de3d1e13303d6411cdd2b558fb8c955836585ee7c5e52f14bf27b088fd569de6d5609431bebe045e', 11, 12, 'nApp', '[]', 0, '2021-12-27 22:42:58', '2021-12-27 22:42:58', '2022-12-28 06:42:58'),
('e6eb3828a9bb64395d74967c5d9d800fe2c5822b7115cc0631582f7fb4b376f304e892cbb8a30637', 11, 1, 'nApp', '[]', 0, '2021-10-12 09:42:36', '2021-10-12 09:42:36', '2022-10-12 17:42:36'),
('e9de5653a204d6549f7a2e6bd3c1e6dda0adae5e4e903b2101e1657c0926f4ca97b0e848352b42e8', 2, 12, 'nApp', '[]', 0, '2022-01-06 00:51:33', '2022-01-06 00:51:33', '2023-01-06 08:51:33'),
('ec7d48f933d388d13833016ff09d91b5f99a33a6d565709243a8a5f9d1717748b1322e837255d70d', 31, 12, 'nApp', '[]', 0, '2022-01-05 20:23:16', '2022-01-05 20:23:16', '2023-01-06 04:23:16'),
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
(4, NULL, 'Laravel Password Grant Client', 'BBurq7dpkIFjKUAOwOzEKMhcvfRdVUOcZOB0czze', 'users', 'http://localhost', 0, 1, 0, '2021-10-12 09:56:19', '2021-10-12 09:56:19'),
(5, 1, '1', 'JcfEXD3lcZVExoX8GRT2xJbJ4Graydr9maF4T8MK', NULL, 'http://127.0.0.1:8000/auth/callback', 0, 0, 0, '2021-11-09 19:11:05', '2021-11-09 19:11:05'),
(6, NULL, 'Laravel Personal Access Client', 'PD5HDdbx3cMA8HZIIVB5X6GxgpPCZLXFdozezA3b', NULL, 'http://localhost', 1, 0, 0, '2021-12-21 21:53:01', '2021-12-21 21:53:01'),
(7, NULL, 'Laravel Password Grant Client', 'CVyB42Y2AxassmXYRR7SIXVYbKR0Lj7lnYa2IGv1', 'users', 'http://localhost', 0, 1, 0, '2021-12-21 21:53:01', '2021-12-21 21:53:01'),
(8, NULL, 'Laravel Personal Access Client', 'qDjeojLnr1p6YbKvQCs7T4BCmE99GP6nYMDNlOOO', NULL, 'http://localhost', 1, 0, 0, '2021-12-21 22:47:42', '2021-12-21 22:47:42'),
(9, NULL, 'Laravel Password Grant Client', '1bBCEA2IR6O49tscoq9meeCZDTH2mhzfEVVmXuLn', 'users', 'http://localhost', 0, 1, 0, '2021-12-21 22:47:42', '2021-12-21 22:47:42'),
(10, NULL, 'Laravel Personal Access Client', 'FBCJGzeePChdLT9z3NzIN3sV05IhNdZggvKUdfjW', NULL, 'http://localhost', 1, 0, 0, '2021-12-21 22:47:52', '2021-12-21 22:47:52'),
(11, NULL, 'Laravel Password Grant Client', 'BTbJiw2RicOLh4CGawFrQDSP4xxkqmxnPnwKyxcS', 'users', 'http://localhost', 0, 1, 0, '2021-12-21 22:47:52', '2021-12-21 22:47:52'),
(12, NULL, 'Laravel Personal Access Client', 'jgfEvKD4PcrSSsIWg3ylztWwupqbjaTZqyK9UaM5', NULL, 'http://localhost', 1, 0, 0, '2021-12-22 20:08:58', '2021-12-22 20:08:58'),
(13, NULL, 'Laravel Password Grant Client', 'lOqoPjSEQvLYyQSAe3L8oOysKtxD4R7tkPoPxuHs', 'users', 'http://localhost', 0, 1, 0, '2021-12-22 20:08:58', '2021-12-22 20:08:58');

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
(2, 3, '2021-10-12 09:56:19', '2021-10-12 09:56:19'),
(3, 6, '2021-12-21 21:53:01', '2021-12-21 21:53:01'),
(4, 8, '2021-12-21 22:47:42', '2021-12-21 22:47:42'),
(5, 10, '2021-12-21 22:47:52', '2021-12-21 22:47:52'),
(6, 12, '2021-12-22 20:08:58', '2021-12-22 20:08:58');

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
-- Table structure for table `rencana_liburan`
--

CREATE TABLE `rencana_liburan` (
  `id` int(255) NOT NULL,
  `nama_rencana` varchar(1000) NOT NULL,
  `deskripsi_rencana` varchar(1000) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `review_tempat_wisata`
--

CREATE TABLE `review_tempat_wisata` (
  `id` int(255) NOT NULL,
  `review` varchar(255) NOT NULL,
  `rating` int(5) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review_tempat_wisata`
--

INSERT INTO `review_tempat_wisata` (`id`, `review`, `rating`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'seruuuu bangetttt anjim', 5, '2', '2022-01-06 02:33:59', '2022-01-06 02:33:59'),
(2, 'seruuuu bangetttt anjim', 5, '2', '2022-01-06 02:34:00', '2022-01-06 02:34:00'),
(3, 'seruuuu bangetttt anjim', 5, '2', '2022-01-06 02:34:12', '2022-01-06 02:34:12'),
(4, 'seruuuu bangetttt anjim', 5, '2', '2022-01-06 02:34:14', '2022-01-06 02:34:14'),
(5, 'seruuuu bangetttt anjim', 5, '2', '2022-01-06 02:34:23', '2022-01-06 02:34:23');

-- --------------------------------------------------------

--
-- Table structure for table `tempat_wisata`
--

CREATE TABLE `tempat_wisata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fasilitas_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tempat_wisata`
--

INSERT INTO `tempat_wisata` (`id`, `nama_wisata`, `alamat_wisata`, `foto`, `fasilitas_wisata`, `harga_wisata`, `created_at`, `updated_at`) VALUES
(1, 'Pantai Manggar Segarasari', 'Jl. Mulawarman Kelurahan Manggar Balikpapan Selatan', '1641462490_pantaimanggar.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV, Banana Boat', '10000', '2022-01-06 00:42:30', '2022-01-06 01:48:10'),
(2, 'Wisata Bukit Bengkirai', 'Jl Soekarno Hatta Km.45 Samboja', '1641462636_bukitbengkirai.jpg', 'Gazebo, Toilet Umum', '15000', '2022-01-06 01:50:36', '2022-01-06 01:50:36'),
(3, 'Kebun Raya Balikpapan', 'Jl Sei Wain KM.15 Balikpapan Utara', '1641462693_kebunrayabalikpapan.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Teater', '15000', '2022-01-06 01:51:33', '2022-01-06 01:51:33'),
(4, 'Pulau Kumala', 'Jalan K.H. Ahmad Muksin, Tenggarong, Timbau, Kec. Tenggarong, Kabupaten Kutai Kartanegara, Kalimantan Timur 75511', '1641462760_Landmark-pulau-Kumala.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV', '25000', '2022-01-06 01:52:40', '2022-01-06 01:52:40'),
(5, 'Mahakam Lampion Garden', 'Jl Slamet Riyadi Samarinda Ulu', '1641462831_taman-lampion-mahakam-dengan-lampion-bentuk-ikan-640x360.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV', '5000', '2022-01-06 01:53:51', '2022-01-06 01:53:51'),
(6, 'Taman Ladang Budaya Tenggarong', 'Jln. Bachrin, Jl. H.Djafar Seman, Mangkurawang, Kec. Tenggarong, Kabupaten Kutai Kartanegara, Kalimantan Timur 75513', '1641463006_Ladaya_Tenggarong_160404001.jfif', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV, Banana Boat', '22000', '2022-01-06 01:56:46', '2022-01-06 01:56:46'),
(7, 'Pantai Tanah Merah Tanjung Harapan', 'Jl. Samboja - Muara Jawa, Handil, Tanjung Harapan, Semboja, Tj. Harapan, Kec. Semboja, Kartanegara, Kalimantan Timur 75276', '1641463265_Pantai_Tanah_Merah_Samboja_3.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla, Arena bermain, ATV, Banana Boat', '15000', '2022-01-06 02:01:05', '2022-01-06 02:01:05'),
(8, 'Puncak Samarinda', 'Jl. Berambai, Sempaja Utara, Kec. Samarinda Utara, Kota Samarinda, Kalimantan Timur 75124', '1641463345_bangkitkan-ekonomi-ayo-kunjungi-destinasi-wisata.jpg', 'Gazebo, Pemandian/Toilet Umum, Kantin, Musholla', '5000', '2022-01-06 02:02:25', '2022-01-06 02:02:25'),
(9, 'Mangrove Center Balikpapan', 'Gunung Samarinda, Balikpapan Utara, Gn. Samarinda, Kec. Balikpapan Utara, Kota Balikpapan, Kalimantan Timur 76114', '1641463443_mangrove7-5ae12ab2bde5751a526e8033.jpg', 'Toilet Umum, Musholla, Perahu Kecil', '5000', '2022-01-06 02:04:03', '2022-01-06 02:04:03'),
(10, 'Bukit Kebo Balikpapan', 'Jl Soekarno Hatta KM 8 Karang Joang', '1641463524_whatsapp-image-2021-08-09-at-16.51.08.jpeg', 'Toilet Umum, Musholla, Kantin', '5000', '2022-01-06 02:05:24', '2022-01-06 02:05:24');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tempat_wisata_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tempat_wisata` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_pemesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pesan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_harga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bukti` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `tempat_wisata_id`, `nama_tempat_wisata`, `tanggal_pesan`, `user_id`, `username_pemesan`, `phone_pemesan`, `jumlah_pesan`, `total_harga`, `bukti`, `verify_status`, `created_at`, `updated_at`) VALUES
(1, '', '', '2021-11-04 15:19:14', '2', '', '', '1', 'Rp. 120.000', NULL, 'LUNAS', NULL, NULL),
(2, '', '', '2021-11-04 15:19:14', '2', '', '', '1', 'Rp. 59.000', NULL, 'LUNAS', NULL, '2022-01-06 04:15:44'),
(8, '1', 'Pantai Manggar Segarasari', '24-12-2021', '11', 'nabil', '082255443380', '2', '50000', NULL, 'DITOLAK', '2021-12-28 07:08:31', '2022-01-06 04:20:17'),
(9, '1', 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'DITOLAK', '2022-01-06 04:24:55', '2022-01-06 04:26:34'),
(10, '1', 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'LUNAS', '2022-01-06 04:26:40', '2022-01-06 04:26:44'),
(11, '1', 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'LUNAS', '2022-01-06 04:27:00', '2022-01-06 04:27:10'),
(12, '1', 'Pantai Manggar Segarasari', '24-12-2021', '31', 'nabilbaru123', '08001122556', '2', '50000', NULL, 'DITOLAK', '2022-01-06 04:27:01', '2022-01-06 04:27:07'),
(13, '1', 'Pantai Manggar Segarasari', '24-12-2021', '2', 'nabilbaru123', '08001122556', '2', '46846', '1641460965_hello.jpg', 'BELUM DIBAYAR', '2022-01-06 08:52:01', '2022-01-06 09:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `username`, `email`, `phone`, `photo`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Nabil Akbar Pratama Pratama', 'nblakbar10', 'nabilakbarpratama@gmail.com', '+6282255443380', '1641457433_pantaimanggar.jpg', 'asasasas', '2022-01-06 00:22:40', '2022-01-06 00:23:53'),
(2, 'nabilbaru123', 'nabilbaru123', 'nabilpakefoto@gmail.com', '08001122556', '1641459093_komak.jpg', 'nabilbaru123', '2022-01-06 00:51:33', '2022-01-06 00:51:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `adminss`
--
ALTER TABLE `adminss`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `adminss_username_unique` (`username`);

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
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
-- Indexes for table `rencana_liburan`
--
ALTER TABLE `rencana_liburan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_tempat_wisata`
--
ALTER TABLE `review_tempat_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `adminss`
--
ALTER TABLE `adminss`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `rencana_liburan`
--
ALTER TABLE `rencana_liburan`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `review_tempat_wisata`
--
ALTER TABLE `review_tempat_wisata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tempat_wisata`
--
ALTER TABLE `tempat_wisata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
