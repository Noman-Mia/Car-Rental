-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 05:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `car-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `price_per_day` decimal(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'available',
  `reduce` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `engine`, `price_per_day`, `image`, `quantity`, `status`, `reduce`, `stars`, `created_at`, `updated_at`) VALUES
(1, 'Toyota', 'Camry', '2.5L', 500.00, '/images/cars/Toyota_Camry.jpg', '1', 'Available', 30, 5, NULL, NULL),
(2, 'Honda', 'Civic', '1.8L', 450.00, '/images/cars/Honda_Civic.jpg', '1', 'Available', 10, 5, NULL, NULL),
(3, 'Ford', 'Mustang', '5.0L V8', 700.00, '/images/cars/Ford_Mustang.jpg', '1', 'Available', 0, 5, NULL, NULL),
(4, 'BMW', 'X5', '3.0L', 800.00, '/images/cars/BMW_X5.jpg', '1', 'Available', 20, 5, NULL, NULL),
(5, 'Mercedes-Benz', 'E-Class', '2.0L', 650.00, '/images/cars/Mercedes-Benz_E-Class.jpg', '1', 'Available', 10, 5, NULL, NULL),
(6, 'Chevrolet', 'Malibu', '1.5L', 550.00, '/images/cars/Chevrolet_Malibu.jpg', '1', 'Available', 50, 5, NULL, NULL),
(7, 'Audi', 'A4', '2.0L', 705.00, '/images/cars/Audi_A4.jpg', '1', 'Available', 40, 5, NULL, NULL),
(8, 'Nissan', 'Altima', '2.5L', 500.00, '/images/cars/Nissan_Altima.jpg', '1', 'Available', 60, 5, NULL, NULL),
(9, 'Hyundai', 'Sonata', '2.5L', 450.00, '/images/cars/Hyundai_Sonata.jpg', '1', 'Available', 30, 5, NULL, NULL),
(10, 'Kia', 'Optima', '2.0L', 450.00, '/images/cars/Kia_Optima.jpg', '1', 'Available', 20, 5, NULL, NULL),
(11, 'Volkswagen', 'Golf', '1.4L', 600.00, '/images/cars/Volkswagen_Golf.jpg', '1', 'Available', 40, 5, NULL, NULL),
(12, 'Subaru', 'Impreza', '2.0L', 600.00, '/images/cars/Subaru_Impreza.jpg', '1', 'Available', 20, 5, NULL, NULL),
(13, 'Ford', 'Focus', '1.6L', 500.00, '/images/cars/Ford_Focus.jpg', '1', 'Available', 30, 5, NULL, NULL),
(14, 'Tesla', 'Model 3', 'Electric', 900.00, '/images/cars/Tesla_Model_3.jpg', '1', 'Available', 20, 5, NULL, NULL),
(15, 'Chevrolet', 'Camaro', '6.2L V8', 1000.00, '/images/cars/Chevrolet_Camaro.jpg', '1', 'Available', 20, 5, NULL, NULL),
(16, 'Jaguar', ' F-Type', '3.0L V6', 1200.00, '/images/cars/Jaguar_F-Type.jpg', '1', 'Available', 35, 5, NULL, NULL),
(17, 'Lexus', 'RX 350', '3.5L V6', 800.00, '/images/cars/Lexus_RX_350.jpg', '1', 'Available', 40, 5, NULL, NULL),
(18, 'Volvo', 'XC60', '2.0L', 700.00, '/images/cars/Volvo_XC60.jpg', '1', 'Available', 20, 5, NULL, NULL),
(19, 'Porsche', '911 Carrera', '3.0L Flat-6', 1500.00, '/images/cars/Porsche_911_Carrera.jpg', '1', 'Available', 40, 5, NULL, NULL),
(20, 'Mitsubishi', 'Outlander', '2.4L', 60.00, '/images/cars/Mitsubishi_Outlander.jpg', '1', 'Available', 30, 5, NULL, NULL),
(21, 'Land Rover', 'Range Rover Sport', '3.0L V6', 120.00, '/images/cars/Land_Rover_Range_Rover_Sport.jpg', '1', 'Available', 20, 5, NULL, NULL),
(22, 'GMC', 'Sierra_1500', '5.3L V8', 120.00, '/images/cars/GMC_Sierra_1500.jpg', '1', 'Available', 35, 4, NULL, NULL),
(23, 'Fiat', '500', '1.4L', 40.00, '/images/cars/Fiat_500.jpg', '1', 'Available', 40, 5, NULL, NULL),
(24, 'Mini', 'Cooper', '1.5L', 55.00, '/images/cars/Mini_Cooper.jpg', '1', 'Available', 30, 5, NULL, NULL),
(25, 'Audi', 'Q5', '2.0L', 80.00, '/images/cars/Audi_Q5.jpg', '1', 'Available', 40, 5, NULL, NULL),
(26, 'Chevrolet', 'Tahoe', '5.3L V8', 110.00, '/images/cars/Chevrolet_Tahoe.jpg', '1', 'Available', 20, 5, NULL, NULL),
(27, 'Ford', 'Explorer', '3.5L V6', 95.00, '/images/cars/Ford_Explorer.jpg', '1', 'Available', 30, 5, NULL, NULL),
(28, 'Jeep', 'Wrangler', '3.6L V6', 100.00, '/images/cars/Jeep_Wrangler.jpg', '1', 'Available', 20, 5, NULL, NULL),
(29, 'Mazda', 'CX-5', ' 2.5L', 65.00, '/images/cars/Mazda_CX-5.jpg', '1', 'Available', 15, 5, NULL, NULL),
(30, 'Hyundai', 'Tucson', ' 2.0L', 50.00, '/images/cars/Hyundai_Tucson.jpg', '1', 'Available', 40, 5, NULL, NULL);

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
(10, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(11, '2025_5_5_000000_create_users_table', 1),
(12, '2025_5_5_100000_create_password_reset_tokens_table', 1),
(13, '2025_5_5_100000_create_password_resets_table', 1),
(14, '2025_5_5_123713_create_cars_table', 1),
(15, '2025_5_5_123802_create_reservations_table', 1);

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
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `days` int(11) NOT NULL,
  `price_per_day` decimal(10,2) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'client',
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Test Admin', 'test_admin@email.com', NULL, '$2y$10$0WFY4L/OXg8JZxM3wwzyHudHSGFEUHN79L23QYp7mWZgMYcoUPJfW', 'admin', '/images/avatars/avatar_2.jpg', NULL, '2025-05-15 09:25:19', '2025-05-15 09:25:19'),
(2, 'Test User', 'test_user@email.com', NULL, '$2y$10$B9F6d4FJBqc5z5pECv/TAeYop2Asuyib1/U1NEhX0brXCTIVBTWcG', 'client', '/images/avatars/avatar_6.jpg', NULL, '2025-05-15 09:25:20', '2025-05-15 09:25:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_car_id_foreign` (`car_id`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
