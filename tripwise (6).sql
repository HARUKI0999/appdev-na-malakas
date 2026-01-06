-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2026 at 07:54 PM
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
-- Database: `tripwise`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `island_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`activity_id`, `island_id`, `name`, `description`, `price`, `created_datetime_id`, `updated_datetime_id`) VALUES
(1, 2, 'Island Hopping', 'Visit several small islands around Quezon Island', 800.00, 1, 1),
(2, 3, 'Snorkeling Tour', 'Explore the coral reefs near Imelda Island', 500.00, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `establishment_id` int(11) NOT NULL,
  `booking_datetime_id` int(11) DEFAULT NULL,
  `check_in_datetime_id` int(11) DEFAULT NULL,
  `check_out_datetime_id` int(11) DEFAULT NULL,
  `status` enum('pending','approved_by_admin','confirmed','rejected','cancelled') DEFAULT 'pending',
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `check_in_date` date DEFAULT NULL,
  `check_out_date` date DEFAULT NULL,
  `guests` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `user_id`, `establishment_id`, `booking_datetime_id`, `check_in_datetime_id`, `check_out_datetime_id`, `status`, `created_datetime_id`, `updated_datetime_id`, `created_at`, `check_in_date`, `check_out_date`, `guests`, `notes`) VALUES
(2, 2, 2, 5, 6, 7, 'pending', 2, 2, '2026-01-06 09:35:33', NULL, NULL, NULL, NULL),
(3, 10, 1, NULL, NULL, NULL, 'pending', NULL, NULL, '2026-01-06 01:37:52', NULL, NULL, NULL, NULL),
(4, 10, 1, NULL, NULL, NULL, 'pending', NULL, NULL, '2026-01-06 12:50:54', NULL, NULL, NULL, NULL),
(5, 10, 1, NULL, NULL, NULL, 'pending', NULL, NULL, '2026-01-06 15:42:32', NULL, NULL, NULL, NULL),
(6, 10, 1, NULL, NULL, NULL, 'pending', NULL, NULL, '2026-01-06 16:18:36', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `datetime_values`
--

CREATE TABLE `datetime_values` (
  `datetime_id` int(11) NOT NULL,
  `calendar_date` date NOT NULL,
  `time_value` time NOT NULL,
  `day_of_week` varchar(10) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `hour` int(11) DEFAULT NULL,
  `minute` int(11) DEFAULT NULL,
  `second` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datetime_values`
--

INSERT INTO `datetime_values` (`datetime_id`, `calendar_date`, `time_value`, `day_of_week`, `month`, `year`, `hour`, `minute`, `second`) VALUES
(1, '2025-11-22', '08:00:00', 'Saturday', 11, 2025, 8, 0, 0),
(2, '2025-11-22', '09:30:00', 'Saturday', 11, 2025, 9, 30, 0),
(3, '2025-11-22', '10:00:00', 'Saturday', 11, 2025, 10, 0, 0),
(4, '2025-11-22', '12:00:00', 'Saturday', 11, 2025, 12, 0, 0),
(5, '2025-11-22', '14:00:00', 'Saturday', 11, 2025, 14, 0, 0),
(6, '2025-11-23', '08:00:00', 'Sunday', 11, 2025, 8, 0, 0),
(7, '2025-11-23', '09:30:00', 'Sunday', 11, 2025, 9, 30, 0),
(8, '2025-11-23', '10:00:00', 'Sunday', 11, 2025, 10, 0, 0),
(9, '2025-11-23', '12:00:00', 'Sunday', 11, 2025, 12, 0, 0),
(10, '2025-11-23', '14:00:00', 'Sunday', 11, 2025, 14, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `establishments`
--

CREATE TABLE `establishments` (
  `establishment_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` enum('hotel','bar','restaurant') NOT NULL,
  `island_id` int(11) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `opening_hours` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `establishments_image` varchar(255) NOT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT 0,
  `rejected_reason` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` datetime DEFAULT current_timestamp(),
  `official_website` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `establishments`
--

INSERT INTO `establishments` (`establishment_id`, `name`, `type`, `island_id`, `location`, `contact_number`, `opening_hours`, `description`, `rating`, `establishments_image`, `created_datetime_id`, `updated_datetime_id`, `owner_id`, `is_approved`, `rejected_reason`, `updated_at`, `created_at`, `official_website`, `website`) VALUES
(1, 'Quezon Beach Resort', 'hotel', 2, 'Quezon Island', '09171234567', '08:00-20:00', 'Beachfront resort', 4.5, 'cathedral_island.jpg', 1, 1, NULL, 1, NULL, '2026-01-05 06:39:04', '2025-12-07 09:24:40', NULL, NULL),
(2, 'Imelda Resort', 'hotel', 3, 'Imelda Island', '09179876543', '09:00-19:00', 'Small cozy resort', 4.2, 'cathedral_island.jpg', 2, 2, NULL, 1, NULL, '2026-01-05 06:39:05', '2025-12-07 09:24:40', NULL, NULL),
(4, 'hhhhhh', 'restaurant', NULL, 'Urdaneta City, Pangasinan', '90998878888', '4 - 8', 'hujdutjjydjfkjdgkgjhf', NULL, '', NULL, NULL, 9, 1, NULL, '2026-01-04 14:11:22', NULL, NULL, NULL),
(5, 'jonathan lomboy', 'bar', NULL, 'SA ISLAND NA LUMULUBOG', '90998878888', '7 - 5', '', NULL, '', NULL, NULL, 9, 1, NULL, '2026-01-07 02:06:47', NULL, NULL, NULL),
(6, 'hahahah', 'hotel', NULL, 'SA ISLAND NA LUMULUBOG', '', '', '', NULL, '', NULL, NULL, 9, 1, NULL, '2026-01-07 00:17:29', NULL, NULL, NULL),
(7, 'Justin Carlo Lomboy', 'restaurant', NULL, 'Urdaneta City, Pangasinan', '43656356356346', '5', '', NULL, '', NULL, NULL, 9, 1, NULL, '2026-01-07 00:33:41', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `islands`
--

CREATE TABLE `islands` (
  `island_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `region` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `history` text DEFAULT NULL,
  `best_time_to_visit` varchar(50) DEFAULT NULL,
  `entrance_fee` decimal(10,2) DEFAULT NULL,
  `safety_tips` text DEFAULT NULL,
  `weather_info` varchar(255) DEFAULT NULL,
  `map_coordinates` varchar(255) DEFAULT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL,
  `island_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `islands`
--

INSERT INTO `islands` (`island_id`, `name`, `location`, `region`, `description`, `history`, `best_time_to_visit`, `entrance_fee`, `safety_tips`, `weather_info`, `map_coordinates`, `created_datetime_id`, `updated_datetime_id`, `island_image`) VALUES
(1, 'Alaminos Hundred Islands', 'Alaminos', 'Pangasinan', 'Famous national park with over 100 islands', 'Protected area since 1940', 'Nov to May', 50.00, 'Follow safety signs', 'Sunny and humid', '16.1622,120.3621', 1, 1, 'governor_island.jpg'),
(2, 'Quezon Island', 'Alaminos', 'Pangasinan', 'Popular island for day trips', 'Named after President Quezon', 'Nov to May', 30.00, 'Wear life jacket', 'Sunny', '16.1660,120.3640', 2, 2, 'governor_island.jpg'),
(3, 'Imelda Island', 'Alaminos', 'Pangasinan', 'Small lodging and beach', 'Named after Imelda Marcos', 'Nov to May', 20.00, 'No littering', 'Sunny', '16.1680,120.3660', 3, 3, 'governor_island.jpg'),
(4, 'Haayts', 'manila', 'pangasinan', 'wala lang', 'sasasas', 'Nov to dec', 30.00, 'talon', 'wala lang', '19191919,19191919', NULL, NULL, 'cathedral_island.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `islands_hotels`
--

CREATE TABLE `islands_hotels` (
  `id` int(11) NOT NULL,
  `island_id` int(11) DEFAULT NULL,
  `hotel_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `contact_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `rating` float DEFAULT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `island_spots`
--

CREATE TABLE `island_spots` (
  `spot_id` int(11) NOT NULL,
  `island_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `island_spots`
--

INSERT INTO `island_spots` (`spot_id`, `island_id`, `name`, `category`, `description`, `image`, `created_datetime_id`, `updated_datetime_id`) VALUES
(1, 2, 'Quezon Beach', 'Beach', 'Sandy beach with crystal water', 'quezon_beach.jpg', 1, 1),
(2, 3, 'Imelda Cove', 'Cove', 'Small cove ideal for snorkeling', 'imelda_cove.jpg', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `island_tides`
--

CREATE TABLE `island_tides` (
  `tide_id` int(11) NOT NULL,
  `island_id` int(11) NOT NULL,
  `spot_name` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,7) NOT NULL,
  `longitude` decimal(10,7) NOT NULL,
  `low_tide_height` decimal(5,2) DEFAULT NULL,
  `high_tide_height` decimal(5,2) DEFAULT NULL,
  `tide_time_low` time DEFAULT NULL,
  `tide_time_high` time DEFAULT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `island_tides`
--

INSERT INTO `island_tides` (`tide_id`, `island_id`, `spot_name`, `latitude`, `longitude`, `low_tide_height`, `high_tide_height`, `tide_time_low`, `tide_time_high`, `created_datetime_id`, `updated_datetime_id`) VALUES
(3, 2, 'Quezon Beach', 16.1660000, 120.3640000, 0.50, 2.00, '04:30:00', '16:45:00', 1, 1),
(4, 3, 'Imelda Cove', 16.1680000, 120.3660000, 0.30, 1.80, '05:00:00', '17:15:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `owners`
--

CREATE TABLE `owners` (
  `owner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `status` enum('paid','pending','refunded') DEFAULT 'pending',
  `reference_no` varchar(100) DEFAULT NULL,
  `paid_datetime_id` int(11) DEFAULT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`transaction_id`, `booking_id`, `amount`, `payment_method`, `status`, `reference_no`, `paid_datetime_id`, `created_datetime_id`, `updated_datetime_id`) VALUES
(2, 2, 1500.00, 'Cash', 'pending', 'TXN002', 6, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `travel_history`
--

CREATE TABLE `travel_history` (
  `id` int(11) NOT NULL,
  `user_email` varchar(120) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `days` int(11) NOT NULL,
  `budget` float NOT NULL,
  `people` int(11) NOT NULL,
  `itinerary` text NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_datetime_id` int(11) DEFAULT NULL,
  `updated_datetime_id` int(11) DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `role` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `full_name`, `email`, `phone`, `password`, `created_datetime_id`, `updated_datetime_id`, `is_admin`, `role`) VALUES
(2, 'Maria Santos', 'maria@example.com', '09179876543', 'password456', 2, 2, 0, 'user'),
(3, 'Emerson', 'sabado146@gmail.com', NULL, 'scrypt:32768:8:1$mfzZiGRYDYohP9aw$de3b097b904643b9f527950476b4c6dcdd59fc02f5dad63d870a52585a5759d570fe13167de20bd34c1e8047e6bae29189d2a1516762582da68679882ee7ca6e', NULL, NULL, 0, 'user'),
(4, 'adrian james carrido tiburan', 'ajtiburan@gmail.com', NULL, 'scrypt:32768:8:1$44FE8iX7q7ifn32D$65cdcc3cbd2a7779d6ee6a154027b873cf989161f64e1d865541b3ed5ebea4d0881c166cfa8e035b50a8b13a8de8b0700cdb97df9be600da6a949022928d26a7', NULL, NULL, 0, 'user'),
(5, 'justin carlo', 'justin@gmail.com', NULL, 'scrypt:32768:8:1$oytpVVwpVuOHs2EQ$7f63454db13ae398a33bd1a4ca6877565f73e95841ae53d64f4806bf8fb0ad0c5b2e7642139287495c383f0b6f58d68a65b06c4946863f500f1159da8963d5be', NULL, NULL, 0, 'user'),
(7, 'masong', 'masong123@gmail.com', NULL, 'scrypt:32768:8:1$qvZ9VxpKmZiXQj1b$147c0cd7935f70be5498b85c61e4dc77fc2e400cf208eaae4169cd8d7946c054c4df17e9b5c81ae5617529d0034db5696f2d0e8f1762df8ab5ac0d000f1a91ca', NULL, NULL, 0, 'user'),
(8, '', 'admin@tripwise.com', NULL, 'scrypt:32768:8:1$wY2zbyXi6pUsbfW7$76d4f8da922b4ea89db5d2a64d4388c62929c94c1d20b434a3d138cba843fc08e233a61fddb4baa37a19652aa145bcadeba04d78075e346f7dee354c2df69b3d', NULL, NULL, 1, 'admin'),
(9, 'Sample Owner', 'owner@tripwise.com', NULL, 'scrypt:32768:8:1$9JScB5e6FjZJ0Yc7$a08e24fd6aea989aad736955e1b04445c8d0ec5c11eddb28055b5d84d20cab74c5a313744c1f17627383a86d95b0b33498ad93c6fddb510f8c59d530ab313e08', NULL, NULL, 0, 'owner'),
(10, 'joana', 'Joana@gmail.com', NULL, 'scrypt:32768:8:1$kpex7Ljhb0DOEL5g$f07221f814ae356f51df969cdd317780c59e99a766af1441e871549c1da5ce3e0ea7a879dc75c0320e471a9f509560b6975868176d21e924453e491f200971c2', NULL, NULL, 0, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `visit_id` int(11) NOT NULL,
  `island_id` int(11) NOT NULL,
  `visit_week` date NOT NULL,
  `visit_month` date NOT NULL,
  `visit_year` date NOT NULL,
  `total_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`visit_id`, `island_id`, `visit_week`, `visit_month`, `visit_year`, `total_visit`) VALUES
(1, 1, '2025-11-17', '2025-11-01', '2025-01-01', 120),
(2, 2, '2025-11-17', '2025-11-01', '2025-01-01', 95),
(3, 3, '2025-11-17', '2025-11-01', '2025-01-01', 150),
(4, 1, '2025-11-10', '2025-11-01', '2025-01-01', 130),
(5, 2, '2025-11-10', '2025-11-01', '2025-01-01', 85),
(6, 3, '2025-11-10', '2025-11-01', '2025-01-01', 160),
(8, 4, '2025-11-11', '2025-11-19', '2025-11-27', 1211);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`),
  ADD KEY `island_id` (`island_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `establishment_id` (`establishment_id`),
  ADD KEY `booking_datetime_id` (`booking_datetime_id`),
  ADD KEY `check_in_datetime_id` (`check_in_datetime_id`),
  ADD KEY `check_out_datetime_id` (`check_out_datetime_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `datetime_values`
--
ALTER TABLE `datetime_values`
  ADD PRIMARY KEY (`datetime_id`);

--
-- Indexes for table `establishments`
--
ALTER TABLE `establishments`
  ADD PRIMARY KEY (`establishment_id`),
  ADD KEY `island_id` (`island_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`),
  ADD KEY `fk_est_owner` (`owner_id`);

--
-- Indexes for table `islands`
--
ALTER TABLE `islands`
  ADD PRIMARY KEY (`island_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `islands_hotels`
--
ALTER TABLE `islands_hotels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `island_id` (`island_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `island_spots`
--
ALTER TABLE `island_spots`
  ADD PRIMARY KEY (`spot_id`),
  ADD KEY `island_id` (`island_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `island_tides`
--
ALTER TABLE `island_tides`
  ADD PRIMARY KEY (`tide_id`),
  ADD KEY `island_id` (`island_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`owner_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `paid_datetime_id` (`paid_datetime_id`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `travel_history`
--
ALTER TABLE `travel_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `created_datetime_id` (`created_datetime_id`),
  ADD KEY `updated_datetime_id` (`updated_datetime_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`visit_id`),
  ADD KEY `ilandpk` (`island_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `datetime_values`
--
ALTER TABLE `datetime_values`
  MODIFY `datetime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `establishments`
--
ALTER TABLE `establishments`
  MODIFY `establishment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `islands`
--
ALTER TABLE `islands`
  MODIFY `island_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `islands_hotels`
--
ALTER TABLE `islands_hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `island_spots`
--
ALTER TABLE `island_spots`
  MODIFY `spot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `island_tides`
--
ALTER TABLE `island_tides`
  MODIFY `tide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travel_history`
--
ALTER TABLE `travel_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activities`
--
ALTER TABLE `activities`
  ADD CONSTRAINT `activities_ibfk_1` FOREIGN KEY (`island_id`) REFERENCES `islands` (`island_id`),
  ADD CONSTRAINT `activities_ibfk_2` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `activities_ibfk_3` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`establishment_id`) REFERENCES `establishments` (`establishment_id`),
  ADD CONSTRAINT `bookings_ibfk_3` FOREIGN KEY (`booking_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `bookings_ibfk_4` FOREIGN KEY (`check_in_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `bookings_ibfk_5` FOREIGN KEY (`check_out_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `bookings_ibfk_6` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `bookings_ibfk_7` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `establishments`
--
ALTER TABLE `establishments`
  ADD CONSTRAINT `establishments_ibfk_1` FOREIGN KEY (`island_id`) REFERENCES `islands` (`island_id`),
  ADD CONSTRAINT `establishments_ibfk_2` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `establishments_ibfk_3` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `fk_est_owner` FOREIGN KEY (`owner_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `islands`
--
ALTER TABLE `islands`
  ADD CONSTRAINT `islands_ibfk_1` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `islands_ibfk_2` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `islands_hotels`
--
ALTER TABLE `islands_hotels`
  ADD CONSTRAINT `islands_hotels_ibfk_1` FOREIGN KEY (`island_id`) REFERENCES `islands` (`island_id`),
  ADD CONSTRAINT `islands_hotels_ibfk_2` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `islands_hotels_ibfk_3` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `island_spots`
--
ALTER TABLE `island_spots`
  ADD CONSTRAINT `island_spots_ibfk_1` FOREIGN KEY (`island_id`) REFERENCES `islands` (`island_id`),
  ADD CONSTRAINT `island_spots_ibfk_2` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `island_spots_ibfk_3` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `island_tides`
--
ALTER TABLE `island_tides`
  ADD CONSTRAINT `island_tides_ibfk_1` FOREIGN KEY (`island_id`) REFERENCES `islands` (`island_id`),
  ADD CONSTRAINT `island_tides_ibfk_2` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `island_tides_ibfk_3` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`paid_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`created_datetime_id`) REFERENCES `datetime_values` (`datetime_id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`updated_datetime_id`) REFERENCES `datetime_values` (`datetime_id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `ilandpk` FOREIGN KEY (`island_id`) REFERENCES `islands` (`island_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
