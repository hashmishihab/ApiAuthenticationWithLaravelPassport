-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2020 at 09:48 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_passport`
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
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1);

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
('0d526aac401ea66e5b8a93682de1d4fb20feae00a1ab3a4b907908be077653b002644254f2130fe1', 2, 1, 'authToken', '[]', 0, '2020-04-29 01:06:20', '2020-04-29 01:06:20', '2021-04-29 07:06:20'),
('26db51bb0f3551aa115a649601a67e2d7ef753678a51466aaed1a04a633ef5f980e7e35cd6da2274', 3, 1, 'authToken', '[]', 0, '2020-04-29 01:05:46', '2020-04-29 01:05:46', '2021-04-29 07:05:46'),
('2ce4dccb4a420287bbf31473232e4ea2f31b8dcc80a31756a2fc5b933765840a79bb3b16ca5d5eac', 1, 1, 'authToken', '[]', 0, '2020-04-29 13:40:35', '2020-04-29 13:40:35', '2021-04-29 19:40:35'),
('31c8905f4dab5dd2acc717a642186778dbc1f477cc1b38d88ae7d1e0416b7a5de8fe19176d040a1e', 2, 1, 'authToken', '[]', 0, '2020-04-29 01:07:14', '2020-04-29 01:07:14', '2021-04-29 07:07:14'),
('3a5a0a8e72b7d872cf9c17230661453e0c22f051ffed266c1ae889fcd3717f6dfde6e3111c899ef9', 4, 1, 'authToken', '[]', 0, '2020-04-29 01:08:59', '2020-04-29 01:08:59', '2021-04-29 07:08:59'),
('4b6772343aa372620d51033b7d1443ca901fb32bd5794bdbaf18897acee9c4dac75ac6a888cd63c7', 5, 1, 'authToken', '[]', 0, '2020-04-29 03:21:56', '2020-04-29 03:21:56', '2021-04-29 09:21:56'),
('507d29f12eab112f160b4fab43dc60955fbc5fccf3b33b55bf3ee7f78e739765e07c873345b443d6', 1, 1, 'authToken', '[]', 0, '2020-04-29 13:39:26', '2020-04-29 13:39:26', '2021-04-29 19:39:26'),
('662dda9a3d2f14dc1ea976f87e224286d0bcd06773241cc7a25077a575ce831641bb6742ccb9bdb1', 1, 1, 'authToken', '[]', 0, '2020-04-29 13:33:06', '2020-04-29 13:33:06', '2021-04-29 19:33:06'),
('74ad454511b8cb83f56db9809850d13537bb357e9553d9d092723f54ce9ee2396f4745b256aa9dbd', 1, 1, 'authToken', '[]', 0, '2020-04-29 13:16:48', '2020-04-29 13:16:48', '2021-04-29 19:16:48'),
('8a034792453f957fb06e5a99d9e18b4b4f5c32ccbafa7fd843d52f175ed99fd3421d9064367199f0', 1, 1, 'authToken', '[]', 0, '2020-04-29 13:33:22', '2020-04-29 13:33:22', '2021-04-29 19:33:22'),
('9303155d760ceb38f16eb609cd1aa81422a5a596e00a70a2de6102006fa57d653a3b4369471b0e78', 3, 1, 'authToken', '[]', 0, '2020-04-29 01:07:44', '2020-04-29 01:07:44', '2021-04-29 07:07:44'),
('985c58d69225c7997bdf122542b520bb05b64b651cee0e6f5076ac0251dc8d65a8a88fd5065a3ddd', 1, 1, 'authToken', '[]', 0, '2020-04-29 00:52:04', '2020-04-29 00:52:04', '2021-04-29 06:52:04'),
('9e2f14e042ad262a9a8400ab4e2ba97bb35958a81b0cf586dc0ad81453c209f2baa85b47fb466274', 2, 1, 'authToken', '[]', 0, '2020-04-29 00:56:23', '2020-04-29 00:56:23', '2021-04-29 06:56:23'),
('a5ad5a144139b551c8961535d712268dfd12d10ea7ced0a47eb327bb70fecf2a1b4d7b1fa1a0ce08', 1, 1, 'authToken', '[]', 0, '2020-04-29 13:41:42', '2020-04-29 13:41:42', '2021-04-29 19:41:42'),
('ad7081cbded06bee85417fdaf74cb659279795194997d639117dd37a9a18b778538270db96eb38b3', 1, 1, 'authToken', '[]', 0, '2020-04-29 00:34:29', '2020-04-29 00:34:29', '2021-04-29 06:34:29'),
('b5488478d494b798ee761698d44c397cabb99d370e8bb47d5b6d1a7a7b08be400e2886490ac5e689', 5, 1, 'authToken', '[]', 0, '2020-04-29 03:20:10', '2020-04-29 03:20:10', '2021-04-29 09:20:10'),
('bfce5a2aa3d9a6423620c69b35257d94ff8ef726f85e6b402f4fe8e17220f5bb35059f81313b3300', 2, 1, 'authToken', '[]', 0, '2020-04-29 00:55:34', '2020-04-29 00:55:34', '2021-04-29 06:55:34'),
('cff270fe3a40c8bb1c4864fde0daa80e6ad93ac841e41f97c1ae952ff592ed1c2637636359d31f66', 1, 1, 'authToken', '[]', 0, '2020-04-29 00:52:31', '2020-04-29 00:52:31', '2021-04-29 06:52:31');

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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'oBqtIdPXyEJUT3jcUvcvTPOpdO92dZL6MwhldOHu', 'http://localhost', 1, 0, 0, '2020-04-28 09:34:55', '2020-04-28 09:34:55'),
(2, NULL, 'Laravel Password Grant Client', 'FLxxfMN9YU6qfTDtmAapT9940UQS5LHT1YlF043Q', 'http://localhost', 0, 1, 0, '2020-04-28 09:34:55', '2020-04-28 09:34:55');

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
(1, 1, '2020-04-28 09:34:55', '2020-04-28 09:34:55');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `token`, `created_at`, `updated_at`) VALUES
(1, 'hashmi', 'hashmi@gmail.com', NULL, '$2y$10$mADo1sHuE2ruylpKHKDJMOr8QMX3ZoFuKZ1GsXkmjQqW.8.9EP9Y6', NULL, 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiYTVhZDVhMTQ0MTM5YjU1MWM4OTYxNTM1ZDcxMjI2OGRmZDEyZDEwZWE3Y2VkMGE0N2ViMzI3YmI3MGZlY2YyYTFiNGQ3YjFmYTFhMGNlMDgiLCJpYXQiOjE1ODgxODkzMDIsIm5iZiI6MTU4ODE4OTMwMiwiZXhwIjoxNjE5NzI1MzAyLCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.tVPt3DnO7i7d4qjc_5jKYiHqnDe_e5sofnWm5z0T47zDNM9gpRYHmNKoIKr-6HF6oBaYldZO3NNe-vMsATmua9qqv-55pZWyJbsL10QFrkbE6A0JKxT3-3HG5xpUuzBRciO70OjaIlZILH3ugDq6603OA2UrwfkNVwRxApqv6vISVZQabREjiC1vLEyYE5SGuW86nnWmDkwfG-XvxY0UldGUAkY_r1MSZGOnyXCGR9blVdQJYcAPOYZVmPgxJ5xi7Fr4hqC_fn0Xc2sMJrrLa0waVbZeM1c8UwfhtDeVLEol4EcksfsPsgETHoWoKktyJFUYtlRhYFUKt1srp-ivc3f7S3zCmX1trEtUtZfeybUI9tPl8ob2Et_t1HVfPdl6HcIw_DtP155DJK96dSuJz_Dph7Vbanu194IkV54yw-s0TPC-uihXoCIV_Y1AFL8yGg4Ezgjt2u5lVrTjBth2dwb4UX2nqQD8wraKLufkHNPD32qpiuditmNzV_Yw9jK-41ZbEh7EosE9AE2Xr1eW9OzubIcETxWNUI8XFAbZulXjuz6NKmKq8OREO31-TS7Znk-tK-6F8o_DE8ndz5FAy9hDwKkuYu9Vya8o_IeRrKOyM7oCA2dUIpc20ZuZdQWKoC803L5SFeotZRfdHZMtwozNDhmqOHmjE_qzTpSTRYE', '2020-04-29 00:34:28', '2020-04-29 13:41:42'),
(2, 'tanvir', 'tanvir@gmail.com', NULL, '$2y$10$b4Wo/u.xkVQ5YN7v0poQ/e8KRJX2k1VaPTUyAfMKuOp2yzxhRt6fi', NULL, NULL, '2020-04-29 00:55:34', '2020-04-29 00:55:34'),
(3, 'Rawnak', 'rawnak@gmail.com', NULL, '$2y$10$Ll4ggc1t790ACCn30cNhIu2.q/SPQrpwMdWFky3LaJiiMFLJwe5Ha', NULL, NULL, '2020-04-29 01:05:46', '2020-04-29 01:05:46'),
(4, 'Zihadul', 'zihadul@gmail.com', NULL, '$2y$10$30PHg.ANlcoaxoKlnnlyAOlhZ1U5eY2PSV1/M4h2YDqWd7JKECbAC', NULL, NULL, '2020-04-29 01:08:59', '2020-04-29 01:08:59'),
(5, 'Ziadul', 'ziadul@gmail.com', NULL, '$2y$10$ilhi2cffAlprkkI6ZjAowuseKQr1NVN9cmwpQAH4LIWgAK5IckbA.', NULL, NULL, '2020-04-29 03:20:09', '2020-04-29 03:20:09');

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
