-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 03:27 PM
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
-- Database: `new`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `created_at`, `updated_at`) VALUES
(1, 'Square Pharmaceuticals Limited', '2022-12-20 07:14:04', '2022-12-20 07:14:04'),
(2, 'Incepta Pharmaceutical Ltd.', '2022-12-20 07:14:16', '2022-12-20 07:14:16'),
(3, 'Beximco Pharmaceuticals Ltd', '2022-12-20 07:14:20', '2022-12-20 07:14:20'),
(4, 'Opsonin Pharma Limited', '2022-12-20 07:14:25', '2022-12-20 07:14:25'),
(5, 'Reneta Limited', '2022-12-20 07:14:41', '2022-12-20 07:14:41'),
(6, 'Eskayef Pharmaceuticals Ltd.', '2022-12-20 07:14:45', '2022-12-20 07:14:45'),
(7, 'ACME Laboratories Ltd.', '2022-12-20 07:15:05', '2022-12-20 07:15:05'),
(8, 'ACI Limited', '2022-12-20 07:15:21', '2022-12-20 07:15:21'),
(9, 'Aristopharma Ltd.', '2022-12-20 07:15:37', '2022-12-20 07:15:37'),
(10, 'Drug International Limited', '2022-12-20 07:15:50', '2022-12-20 07:15:50');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `comment`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Arnob Rahman', 'The delivery was quite fast. keep it up', '37', '2022-12-20 08:03:37', '2022-12-20 08:03:37'),
(2, 'Rahat Hossain', 'good service', '35', '2022-12-20 08:20:30', '2022-12-20 08:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_08_17_053123_create_sessions_table', 1),
(7, '2022_08_17_145432_create_brands_table', 1),
(8, '2022_08_17_232549_create_products_table', 1),
(9, '2022_08_18_141752_create_carts_table', 1),
(10, '2022_08_18_161039_create_orders_table', 1),
(11, '2022_08_22_090902_create_comments_table', 1),
(12, '2022_08_22_090940_create_replies_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `payment_status` varchar(255) DEFAULT NULL,
  `delivery_status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `payment_status`, `delivery_status`, `created_at`, `updated_at`) VALUES
(1, 'Asif Rahman', 'asif1835@gmail.com', '01376767676', 'pabna', '34', 'Flexi SR 200', '1', '70', '1671543085.jpg', '1', 'Paid', 'delivered', '2022-12-20 07:54:03', '2022-12-20 07:54:21'),
(2, 'Arnob Rahman', 'arnobrahman@gmail.com', '01922334455', 'chittagong', '37', 'Napa', '5', '50', '1671543482.jpg', '4', 'Paid', 'delivered', '2022-12-20 08:02:34', '2022-12-20 08:02:50'),
(3, 'Rahat Hossain', 'rahathossain@gmail.com', '01458675867', 'barishal', '35', 'Maxpro', '1', '94', '1671543577.jpg', '5', 'Paid', 'delivered', '2022-12-20 08:08:29', '2022-12-20 08:09:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `brand`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(1, 'Flexi SR 200', 'Aceclofenac', '1671543085.jpg', 'Square Pharmaceuticals Limited', '10', '70', NULL, '2022-12-20 07:31:25', '2022-12-20 07:31:25'),
(2, 'Precare', 'Multivitamin and Multimineral Prenatal', '1671543229.jpg', 'Incepta Pharmaceutical Ltd.', '30', '150', '135', '2022-12-20 07:33:49', '2022-12-20 07:33:49'),
(3, 'Finix 20', 'Rabeprazole', '1671543413.png', 'Opsonin Pharma Limited', '40', '140', NULL, '2022-12-20 07:36:53', '2022-12-20 07:36:53'),
(4, 'Napa', 'Paracetamol', '1671543482.jpg', 'Beximco Pharmaceuticals Ltd', '30', '12', '10', '2022-12-20 07:38:02', '2022-12-20 07:38:02'),
(5, 'Maxpro', 'Esomeprazole Sodium Injection', '1671543577.jpg', 'Reneta Limited', '20', '105', '94', '2022-12-20 07:39:37', '2022-12-20 07:39:37'),
(6, 'Xinc B', 'Vitamin B-complex + Zinc', '1671543692.png', 'Eskayef Pharmaceuticals Ltd.', '30', '105', '94', '2022-12-20 07:41:32', '2022-12-20 07:41:32'),
(7, 'Monas', 'Montelukast', '1671543789.jpg', 'ACME Laboratories Ltd.', '40', '240', NULL, '2022-12-20 07:43:09', '2022-12-20 07:43:09'),
(8, 'Acical-D', 'Calcium + Vitamin D3', '1671543882.png', 'ACI Limited', '50', '70', '63', '2022-12-20 07:44:42', '2022-12-20 07:44:42'),
(9, 'Rupa', 'Rupatadine', '1671544062.png', 'Aristopharma Ltd.', '10', '120', '108', '2022-12-20 07:47:42', '2022-12-20 07:47:42'),
(10, 'E-Cap 400', 'Vitamin E (Alpha-tocopherol)', '1671544183.png', 'Drug International Limited', '15', '105', NULL, '2022-12-20 07:49:43', '2022-12-20 07:49:43'),
(11, 'Seclo 20', 'Omeprazole', '1671544255.png', 'Square Pharmaceuticals Limited', '17', '60', '54', '2022-12-20 07:50:55', '2022-12-20 07:50:55'),
(12, 'Pantonix 20', 'Pantoprazole Sodium Sesquihydrate', '1671544365.png', 'Incepta Pharmaceutical Ltd.', '12', '98', '88', '2022-12-20 07:52:45', '2022-12-20 07:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment_id` varchar(255) DEFAULT NULL,
  `reply` longtext DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `name`, `comment_id`, `reply`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '1', 'Thank you, sir', '33', '2022-12-20 08:04:29', '2022-12-20 08:04:29');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('48Z4CnW7zcgD3tcJrK3FHDjZeeG3xHz5clJ4C5UM', 33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUkJHNTVIUlBmVGJsWGhTaXMxd1JBaTRncGNiSnZPZUxFSHd6RmVHTiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlciI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjMzO30=', 1671546004),
('hK64MT9lCoiUXCvabhQ80mSei081HyNbTznFurRX', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNkc1QUJoYlQ5ZUlVMVE3WWpGaFJOUzMwR0FERzlPUm5oNlVSVnJBRyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1671539114),
('OcLebzJpX21xY5nspQRFqVmNO5NzVN4zzMTEavq4', 35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36 Edg/108.0.1462.54', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR01VMjV1UUhxYko1S1FJT0ZOajhOMEE1amJjaTRwRG42R3E0c3h1WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM1O30=', 1671546129);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT '0',
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(33, 'Admin', 'arafatrahmanasif121.ar@gmail.com', '1', '01244556677', 'mohakhali', NULL, '$2y$10$mckeo.ZQKklq5D7ZnM.3TulHc3i0d0qrA9P/sKOBIxnt0W97fIkSq', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 07:05:28', '2022-12-20 07:05:28'),
(34, 'Asif Rahman', 'asif1835@gmail.com', '0', '01376767676', 'pabna', NULL, '$2y$10$MEPs3rZZ/doAyqkPVuBcbuOBi0Wk06SAUWDtMxDiTfTluprPALhz2', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 07:08:15', '2022-12-20 07:08:15'),
(35, 'Rahat Hossain', 'rahathossain@gmail.com', '0', '01458675867', 'barishal', NULL, '$2y$10$iw7Rpx8EyEh1UPIUtegetuhMKs0M.CvBY9NA8pVSbplvIgiBAJBz.', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 07:09:21', '2022-12-20 07:09:21'),
(36, 'Abid hasan', 'abidhasan@gmail.com', '0', '01566778899', 'khulna', NULL, '$2y$10$gcXU/he0BOFODhLN/Bbn9OrJ7aQ6FwFxBI3KDVAIDUjamSHNNDmqu', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 07:10:11', '2022-12-20 07:10:11'),
(37, 'Arnob Rahman', 'arnobrahman@gmail.com', '0', '01922334455', 'chittagong', NULL, '$2y$10$XdPHytEkFjsQl3z.1UH9Cei7iCFa7AyfHjB1MlPosXOHK0tH9/N6e', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-20 08:01:31', '2022-12-20 08:01:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
