-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2023 at 01:21 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hosiptalsingl`
--

-- --------------------------------------------------------

--
-- Table structure for table `buildings`
--

CREATE TABLE `buildings` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `buildings`
--

INSERT INTO `buildings` (`id`, `tenant_id`, `name`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'stander', 'Mohamed Abd Elrahman Mansour', 'build/download (3).jpg', '2023-06-01 16:23:22', '2023-06-02 08:58:07', NULL),
(2, 'main', 'Mohamed Abd Elrahman Mansour', 'build/download (3).jpg', '2023-06-01 16:27:16', '2023-06-01 16:27:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `build_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `tenant_id`, `name`, `build_id`, `level_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'stander', 'English', 1, 1, '2023-06-02 09:04:41', '2023-06-02 09:04:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int UNSIGNED NOT NULL,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `domain`, `tenant_id`, `created_at`, `updated_at`) VALUES
(1, 'stander.localhost', 'stander', '2023-06-01 16:17:59', '2023-06-01 16:17:59'),
(2, 'main.localhost', 'main', '2023-06-01 16:23:53', '2023-06-01 16:23:53'),
(3, 'dd.localhost', 'dd', '2023-06-01 17:10:27', '2023-06-01 17:10:27'),
(4, 'test.localhost', 'test', '2023-06-01 17:12:09', '2023-06-01 17:12:09'),
(5, 'testq.localhost', 'testq', '2023-06-01 17:13:15', '2023-06-01 17:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_category` int NOT NULL,
  `group` int NOT NULL,
  `quantity` int NOT NULL,
  `transfer` int NOT NULL,
  `requirement_qty` int NOT NULL,
  `unit_cost` int NOT NULL,
  `total_cost` int NOT NULL,
  `comments` text COLLATE utf8mb4_unicode_ci,
  `general_specs` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailed_spec_document` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `revit_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_model` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Bim_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `electrical` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `o2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `air` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tool_air` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vaccum` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `water` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `drain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `steam` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mounting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dimension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_after_edit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `indicatir` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `dept_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `build_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `tenant_id`, `name`, `image`, `group_category`, `group`, `quantity`, `transfer`, `requirement_qty`, `unit_cost`, `total_cost`, `comments`, `general_specs`, `detailed_spec_document`, `revit_model`, `code_model`, `Bim_id`, `electrical`, `data`, `o2`, `air`, `tool_air`, `vaccum`, `agss`, `water`, `drain`, `steam`, `mounting`, `weight`, `dimension`, `comment_after_edit`, `indicatir`, `contact_name`, `contact_number`, `room_id`, `dept_id`, `level_id`, `build_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'stander', 'English', 'Item_image/download (2).jpg', 1, 1, 1, 44, 43, 333, 14319, 'ewfefew', '2332', 'detailed_spec_document/Doc1.pdf', 'revit_model/Doc1.pdf', 'code_model/Doc1.pdf', '323232', 'Yes', 'ddwdw', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'DSSD', '43224', 'SDDS', NULL, 'SDSDSD', 'DDSSD', 'DSSDD', 1, 1, 1, 1, '2023-06-02 09:34:54', '2023-06-02 09:34:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `build_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `tenant_id`, `name`, `build_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'stander', 'ss', 1, '2023-06-02 09:04:25', '2023-06-02 09:04:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_09_15_000010_create_tenants_table', 1),
(3, '2019_09_15_000020_create_domains_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_05_073848_create_buildings_table', 1),
(6, '2023_05_05_073924_create_levels_table', 1),
(7, '2023_05_05_074111_create_departments_table', 1),
(8, '2023_05_13_045525_create_rooms_table', 1),
(9, '2023_05_13_045556_create_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `dept_id` bigint UNSIGNED NOT NULL,
  `build_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `tenant_id`, `code`, `name`, `image`, `level_id`, `dept_id`, `build_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'stander', '60a72a20d268bda7ccb88cd49a311230', 'Mohamed Abd Elrahman Mansour', 'room_image/download (2).jpg', 1, 1, 1, '2023-06-02 09:04:58', '2023-06-02 09:04:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tenants`
--

INSERT INTO `tenants` (`id`, `created_at`, `updated_at`, `data`) VALUES
('dd', '2023-06-01 17:10:27', '2023-06-01 17:10:27', NULL),
('main', '2023-06-01 16:23:53', '2023-06-01 16:23:53', NULL),
('stander', '2023-06-01 16:17:59', '2023-06-01 16:17:59', NULL),
('test', '2023-06-01 17:12:09', '2023-06-01 17:12:09', NULL),
('testq', '2023-06-01 17:13:15', '2023-06-01 17:13:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `tenant_id`, `email`, `email_verified_at`, `password`, `admin`, `status`, `image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohamed Abd Elrahman Mansour', 'stander', 'mohamedmansor0155@gmail.com', NULL, '$2y$10$CbFSoCMzRz07najwMKIuzeyTIwSTurxagL9DGFd68y9ppxF3D.aYa', '2', '1', NULL, NULL, '2023-06-01 16:18:19', '2023-06-01 16:19:15'),
(6, 'Mohamed Abd Elrahman Mansour', 'main', 'mohamedmansor0997@gmail.com', NULL, '$2y$10$/.AcfEjSPz1Zigaa0aQG.uDPa6AJQhuXWkRInOZBjEHvXKGRtqQN2', '2', '1', NULL, NULL, '2023-06-01 16:26:41', '2023-06-01 16:27:05'),
(7, 'Mohamed Abd Elrahman Mansour', 'stander', 'mohamedmansor015@gmail.com', NULL, '$2y$10$egzMeIW6e3nEKeYQfS3y6u0597U59MUkJpVytBbHCpfIYXJsUinKe', '0', '1', NULL, NULL, '2023-06-01 16:47:08', '2023-06-01 16:47:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buildings`
--
ALTER TABLE `buildings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_build_id_foreign` (`build_id`),
  ADD KEY `departments_level_id_foreign` (`level_id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_room_id_foreign` (`room_id`),
  ADD KEY `items_dept_id_foreign` (`dept_id`),
  ADD KEY `items_level_id_foreign` (`level_id`),
  ADD KEY `items_build_id_foreign` (`build_id`);

--
-- Indexes for table `levels`
--
ALTER TABLE `levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `levels_build_id_foreign` (`build_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rooms_level_id_foreign` (`level_id`),
  ADD KEY `rooms_dept_id_foreign` (`dept_id`),
  ADD KEY `rooms_build_id_foreign` (`build_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
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
-- AUTO_INCREMENT for table `buildings`
--
ALTER TABLE `buildings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `levels`
--
ALTER TABLE `levels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_build_id_foreign` FOREIGN KEY (`build_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `departments_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_build_id_foreign` FOREIGN KEY (`build_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `items_room_id_foreign` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `levels`
--
ALTER TABLE `levels`
  ADD CONSTRAINT `levels_build_id_foreign` FOREIGN KEY (`build_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `rooms_build_id_foreign` FOREIGN KEY (`build_id`) REFERENCES `buildings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_dept_id_foreign` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `rooms_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `levels` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
