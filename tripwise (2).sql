-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2026 at 10:30 AM
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
(2, 3, 'Snorkeling Tour', 'Explore the coral reefs near Imelda Island', 500.00, 2, 2),
(3, 2, 'Island Hopping', 'Visit multiple small islands around Quezon Island', 800.00, 1, 1),
(4, 3, 'Snorkeling Tour', 'Explore the coral reefs near Imelda Island', 500.00, 2, 2),
(5, 1, 'Kayaking Adventure', 'Kayak around Governor Island', 300.00, 3, 3),
(6, 2, 'Sunset Cruise', 'Enjoy the sunset around Quezon Island', 1000.00, 4, 4),
(7, 3, 'Diving Experience', 'Dive to see underwater life', 1200.00, 5, 5),
(8, 1, 'Fishing Trip', 'Join local fishermen for fishing', 400.00, 6, 6),
(9, 2, 'Beach Volleyball', 'Join beach volleyball games', 150.00, 7, 7),
(10, 3, 'Photography Tour', 'Capture scenic spots', 200.00, 8, 8),
(11, 1, 'Hiking Trail', 'Hike trails in Governor Island', 250.00, 9, 9),
(12, 2, 'Bonfire Night', 'Night bonfire on Quezon Island', 300.00, 1, 2),
(13, 2, 'Island Hopping', 'Visit multiple small islands around Quezon Island', 800.00, 1, 1),
(14, 3, 'Snorkeling Tour', 'Explore the coral reefs near Imelda Island', 500.00, 2, 2),
(15, 1, 'Kayaking Adventure', 'Kayak around Governor Island', 300.00, 3, 3),
(16, 2, 'Sunset Cruise', 'Enjoy the sunset around Quezon Island', 1000.00, 4, 4),
(17, 3, 'Diving Experience', 'Dive to see underwater life', 1200.00, 5, 5),
(18, 1, 'Fishing Trip', 'Join local fishermen for fishing', 400.00, 6, 6),
(19, 2, 'Beach Volleyball', 'Join beach volleyball games', 150.00, 7, 7),
(20, 3, 'Photography Tour', 'Capture scenic spots', 200.00, 8, 8),
(21, 1, 'Hiking Trail', 'Hike trails in Governor Island', 250.00, 9, 9),
(22, 2, 'Bonfire Night', 'Night bonfire on Quezon Island', 300.00, 1, 2),
(23, 2, 'Island Hopping', 'Visit multiple small islands around Quezon Island', 800.00, 1, 1),
(24, 3, 'Snorkeling Tour', 'Explore the coral reefs near Imelda Island', 500.00, 2, 2),
(25, 1, 'Kayaking Adventure', 'Kayak around Governor Island', 300.00, 3, 3),
(26, 2, 'Sunset Cruise', 'Enjoy the sunset around Quezon Island', 1000.00, 4, 4),
(27, 3, 'Diving Experience', 'Dive to see underwater life', 1200.00, 5, 5),
(28, 1, 'Fishing Trip', 'Join local fishermen for fishing', 400.00, 6, 6),
(29, 2, 'Beach Volleyball', 'Join beach volleyball games', 150.00, 7, 7),
(30, 3, 'Photography Tour', 'Capture scenic spots', 200.00, 8, 8),
(31, 1, 'Hiking Trail', 'Hike trails in Governor Island', 250.00, 9, 9),
(32, 2, 'Bonfire Night', 'Night bonfire on Quezon Island', 300.00, 1, 2),
(33, 1, 'Island Hopping', 'Tour several islands including Governor\'s Island and Quezon Island', 800.00, 1, 1),
(34, 1, 'Kayaking', 'Kayak around small coves and quiet beaches', 300.00, 1, 1),
(35, 1, 'Snorkeling', 'Explore coral reefs near Governor\'s Island', 500.00, 1, 1),
(36, 2, 'Beach Volleyball', 'Play volleyball on the beach at Quezon Island', 100.00, 2, 2),
(37, 2, 'Stand-up Paddleboarding', 'Enjoy calm waters on a paddleboard', 350.00, 2, 2),
(38, 3, 'Hiking Trail', 'Short hiking trail to panoramic viewpoint', 0.00, 2, 2),
(39, 3, 'Cave Exploration', 'Guided tour through small limestone caves', 400.00, 2, 2),
(40, 1, 'Photography Tour', 'Capture the islands at sunrise and sunset', 250.00, 1, 1),
(41, 2, 'Fishing Experience', 'Catch fish near Quezon Island', 200.00, 2, 2),
(42, 3, 'Beach Bonfire Night', 'Enjoy a night bonfire with marshmallows', 500.00, 2, 2),
(43, 1, 'Snorkeling with Guides', 'Guided snorkeling tour with instructors', 600.00, 1, 1),
(44, 1, 'Island Picnic', 'Pack a picnic basket and enjoy secluded beaches', 350.00, 1, 1),
(45, 2, 'Bird Watching', 'Observe local birds and migratory species', 150.00, 2, 2),
(46, 3, 'Sunset Cruise', 'Boat cruise to watch the sunset around Imelda Island', 700.00, 2, 2),
(47, 1, 'Underwater Photography', 'Take photos underwater with rented cameras', 450.00, 1, 1),
(48, 2, 'Snorkel & Swim', 'Explore shallow waters near the shore', 400.00, 2, 2),
(49, 3, 'Island Camping', 'Overnight camping with tents provided', 1200.00, 3, 3),
(50, 1, 'Stand-up Paddle Yoga', 'Yoga sessions on paddleboards', 500.00, 1, 1),
(51, 2, 'Guided Kayak Tour', 'Kayak tour led by a local guide', 350.00, 2, 2),
(52, 3, 'Scenic Helicopter Ride', 'Aerial tour of Hundred Islands', 3000.00, 3, 3);

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
(1, 1, 1, 1, 3, 4, 'confirmed', 1, 1, '2026-01-07 03:10:56', NULL, NULL, NULL, NULL),
(2, 2, 2, 5, 6, 7, 'pending', 2, 2, '2026-01-06 09:35:33', NULL, NULL, NULL, NULL),
(3, 10, 1, NULL, NULL, NULL, 'confirmed', NULL, NULL, '2026-01-06 01:37:52', NULL, NULL, NULL, NULL),
(4, 10, 1, NULL, NULL, NULL, 'approved_by_admin', NULL, NULL, '2026-01-06 12:50:54', NULL, NULL, NULL, NULL),
(5, 10, 1, NULL, NULL, NULL, 'pending', NULL, NULL, '2026-01-06 15:42:32', NULL, NULL, NULL, NULL),
(6, 10, 1, NULL, NULL, NULL, 'confirmed', NULL, NULL, '2026-01-06 16:18:36', NULL, NULL, NULL, NULL),
(7, 8, 2, 2, 4, 5, 'confirmed', 2, 2, '2026-01-07 03:10:56', NULL, NULL, NULL, NULL),
(8, 9, 3, 3, 6, 7, 'pending', 3, 3, '2026-01-07 03:10:56', NULL, NULL, NULL, NULL),
(9, 10, 1, 5, 8, 9, 'pending', 5, 5, '2026-01-07 03:10:56', NULL, NULL, NULL, NULL);

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
(10, '2025-11-23', '14:00:00', 'Sunday', 11, 2025, 14, 0, 0),
(11, '2026-01-01', '06:00:00', 'Thursday', 1, 2026, 6, 0, 0),
(65, '2026-01-11', '13:00:00', 'Sunday', 1, 2026, 13, 0, 0);

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
  `price_range` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `establishments`
--

INSERT INTO `establishments` (`establishment_id`, `name`, `type`, `island_id`, `location`, `contact_number`, `opening_hours`, `description`, `rating`, `establishments_image`, `created_datetime_id`, `updated_datetime_id`, `owner_id`, `is_approved`, `rejected_reason`, `updated_at`, `created_at`, `official_website`, `price_range`) VALUES
(1, 'Quezon Beach Resort', 'hotel', 2, 'Quezon Island', '09171234501', '08:00-20:00', 'Beachfront resort with cottages and water activities', 4.5, 'cathedral_island.jpg', 1, 1, NULL, 1, NULL, '2026-01-07 09:41:46', '2025-12-07 09:24:40', 'https://quezonbeachresort.com', NULL),
(2, 'Imelda Island Resort', 'hotel', 3, 'Imelda Island', '09171234502', '09:00-19:00', 'Small cozy island resort ideal for families', 4.2, 'governors_island.jpg', 2, 2, NULL, 1, NULL, '2026-01-07 15:45:52', '2025-12-07 09:24:40', 'https://imeldaresort.com', NULL),
(3, 'Governor Island Lodge', 'hotel', 1, 'Governor Island, Alaminos', '09171234503', '08:00-18:00', 'Rustic lodge with island hopping packages', 4, 'governor_island_lodge.jpg', 3, 3, 3, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://governorislandlodge.com', NULL),
(4, 'Bluewater Café', 'restaurant', 2, 'Quezon Island, Alaminos', '09171234504', '10:00-20:00', 'Seafood restaurant with island views', 4.3, 'bluewater_cafe.jpg', 4, 4, 4, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://bluewatercafe.com', NULL),
(5, 'Palm Paradise Bar', 'bar', 3, 'Imelda Island, Alaminos', '09171234505', '12:00-23:00', 'Tropical bar serving cocktails and snacks', 4.1, 'palm_paradise_bar.jpg', 5, 5, 5, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://palmparadisebar.com', NULL),
(6, 'Coral Reef Resort', 'hotel', 2, 'Quezon Island, Alaminos', '09171234506', '06:00-20:00', 'Luxury resort with snorkeling and diving', 4.7, 'coral_reef_resort.jpg', 6, 6, 6, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://coralreefresort.com', NULL),
(7, 'Sunny Isle Inn', 'hotel', 3, 'Imelda Island, Alaminos', '09171234507', '07:00-19:00', 'Comfortable inn for budget travelers', 4, 'sunny_isle_inn.jpg', 7, 7, 7, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://sunnyisleinn.com', NULL),
(8, 'Ocean Breeze Restaurant', 'restaurant', 1, 'Governor Island, Alaminos', '09171234508', '09:00-21:00', 'Family-friendly restaurant serving local cuisine', 4.2, 'ocean_breeze_restaurant.jpg', 8, 8, 8, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://oceanbreezerestaurant.com', NULL),
(9, 'Seaview Resort', 'hotel', 1, 'Governor Island, Alaminos', '09171234509', '06:00-20:00', 'Modern resort with beachfront access', 4.5, 'seaview_resort.jpg', 9, 9, 9, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://seaviewresort.com', NULL),
(10, 'Sunset Beach Bar', 'bar', 2, 'Quezon Island, Alaminos', '09171234510', '12:00-23:00', 'Chill bar with sunset views and music', 4.4, 'sunset_beach_bar.jpg', 10, 10, 10, 1, NULL, '2026-01-07 03:08:46', '2026-01-07 03:08:46', 'https://sunsetbeachbar.com', NULL);

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
(1, 'Quezon Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Largest island with beach, snorkeling & activities', 'HHAHAHAHAHAHAHAAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAH', 'Nov to May', 50.00, 'Wear life jacket', 'Sunny', '16.1542,120.3600', NULL, NULL, 'quezon_island.jpg'),
(2, 'Governor’s Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Panoramic views & zipline to Virgin Island', NULL, 'Nov to May', 50.00, 'Bring water, sun protection', 'Sunny', '16.1520,120.3620', NULL, NULL, 'governor_island.jpg'),
(3, 'Children’s Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Shallow waters ideal for families', NULL, 'Nov to May', 50.00, 'Supervise children', 'Sunny', '16.1508,120.3587', NULL, NULL, 'childrens_island.jpg'),
(4, 'Pilgrimage Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Stations of the Cross and Christ statue', NULL, 'Nov to May', 50.00, 'Respect sites', 'Sunny', '16.1535,120.3645', NULL, NULL, 'pilgrimage_island.jpg'),
(5, 'Cuenco Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island with large tunnel cave', NULL, 'Nov to May', 50.00, 'Bring flashlight', 'Sunny', '16.1538,120.3638', NULL, NULL, 'cuenco_island.jpg'),
(6, 'Milagrosa Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'White sand & cave features', NULL, 'Nov to May', 50.00, 'Wear water shoes', 'Sunny', '16.1532,120.3635', NULL, NULL, 'milagrosa_island.jpg'),
(7, 'Marcos Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Cliff jumping & Imelda Cave', NULL, 'Nov to May', 50.00, 'Check tide before diving', 'Sunny', '16.1558,120.3632', NULL, NULL, 'marcos_island.jpg'),
(8, 'Cathedral Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Limestone cave with stalactites', NULL, 'Nov to May', 50.00, 'Wear sturdy shoes', 'Sunny', '16.1540,120.3655', NULL, NULL, 'cathedral_island.jpg'),
(9, 'Cariaz Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'BFAR research site & marine habitat', NULL, 'Nov to May', 50.00, 'Respect research areas', 'Sunny', '16.1549,120.3647', NULL, NULL, 'cariaz_island.jpg'),
(10, 'Sison Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Snorkeling & nature photography', NULL, 'Nov to May', 50.00, 'Watch currents', 'Sunny', '16.1528,120.3618', NULL, NULL, 'sison_island.jpg'),
(11, 'Camantiles Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Mangrove forest and bird habitat', NULL, 'Nov to May', 50.00, 'Respect wildlife', 'Sunny', '16.1552,120.3625', NULL, NULL, 'camantiles_island.jpg'),
(12, 'Shell Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Natural lagoon and shell shore', NULL, 'Nov to May', 50.00, 'Collect shells responsibly', 'Sunny', '16.1550,120.3628', NULL, NULL, 'shell_island.jpg'),
(13, 'Crocodile Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island shaped like a crocodile (boat view)', NULL, 'Nov to May', 0.00, 'Observe from a safe distance', 'Sunny', '16.1510,120.3608', NULL, NULL, 'crocodile_island.jpg'),
(14, 'Turtle Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island shaped like a turtle', NULL, 'Nov to May', 0.00, 'Observe from a safe distance', 'Sunny', '16.1505,120.3610', NULL, NULL, 'turtle_island.jpg'),
(15, 'Romulo Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island with cultural references & views', NULL, 'Nov to May', 0.00, 'Bring snacks & water', 'Sunny', '16.1530,120.3650', NULL, NULL, 'romulo_island.jpg'),
(16, 'Clave Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'White sand island popular for views', NULL, 'Nov to May', 0.00, 'Use sunscreen', 'Sunny', '16.1537,120.3640', NULL, NULL, 'clave_island.jpg'),
(17, 'Governor\'s Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Largest and most famous island with cottages and scenic viewpoints.', 'Named for the first American governor of Pangasinan', 'Nov to May', 50.00, 'Wear life jacket; follow trails.', 'Sunny, warm', '16.1645,120.3640', 1, 1, 'governors_island.jpg'),
(18, 'Children\'s Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Small island ideal for kids and swimming.', 'Popular family destination', 'Nov to May', 30.00, 'Supervise children at all times.', 'Sunny', '16.1650,120.3645', 1, 1, 'childrens_island.jpg'),
(19, 'Quezon Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island with beach and resort facilities.', 'Named after President Manuel L. Quezon', 'Nov to May', 30.00, 'Wear life jackets.', 'Sunny', '16.1660,120.3640', 1, 1, 'quezon_island.jpg'),
(20, 'Minalungao Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Photogenic island popular for day trips.', '', 'Nov to May', 20.00, 'Bring water and sunscreen.', 'Sunny', '16.1665,120.3650', 1, 1, 'minalungao_island.jpg'),
(21, 'Cabugao Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Small picturesque island with beach.', '', 'Nov to May', 20.00, 'Watch your step on rocks.', 'Sunny', '16.1670,120.3660', 1, 1, 'cabugao_island.jpg'),
(22, 'Lingayen Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island known for its sandy beach.', '', 'Nov to May', 25.00, 'Life jackets recommended.', 'Sunny', '16.1675,120.3665', 1, 1, 'lingayen_island.jpg'),
(23, 'Lucap Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Ideal for snorkeling and swimming.', '', 'Nov to May', 20.00, 'Avoid strong currents.', 'Sunny', '16.1680,120.3670', 1, 1, 'lucap_island.jpg'),
(24, 'Maya Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Quiet island for picnics and relaxation.', '', 'Nov to May', 20.00, 'No littering.', 'Sunny', '16.1685,120.3675', 1, 1, 'maya_island.jpg'),
(25, 'Snake Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Famous sandbar connecting islands.', '', 'Nov to May', 20.00, 'Stay within marked paths.', 'Sunny', '16.1690,120.3680', 1, 1, 'snake_island.jpg'),
(26, 'Monkey Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island with a few monkeys; exploration friendly.', '', 'Nov to May', 25.00, 'Do not feed animals.', 'Sunny', '16.1695,120.3685', 1, 1, 'monkey_island.jpg'),
(27, 'Baley Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Small island with coconut trees.', '', 'Nov to May', 15.00, 'Bring water.', 'Sunny', '16.1700,120.3690', 1, 1, 'baley_island.jpg'),
(28, 'Tres Marias', 'Alaminos, Pangasinan', 'Ilocos Region', 'Three small islands together.', '', 'Nov to May', 30.00, 'Stay close to boat.', 'Sunny', '16.1705,120.3695', 1, 1, 'tres_marias.jpg'),
(29, 'Pan de Azucar', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island with a hill and scenic views.', '', 'Nov to May', 40.00, 'Wear proper shoes for climbing.', 'Sunny', '16.1710,120.3700', 1, 1, 'pan_de_azucar.jpg'),
(30, 'Dalupiri Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Remote island ideal for a quiet getaway.', '', 'Nov to May', 20.00, 'Check tide schedules.', 'Sunny', '16.1715,120.3705', 1, 1, 'dalupiri_island.jpg'),
(31, 'Tiburan Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Perfect for short trips and day picnics.', '', 'Nov to May', 20.00, 'Bring snacks and water.', 'Sunny', '16.1720,120.3710', 1, 1, 'tiburan_island.jpg'),
(32, 'White Sand Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Soft white sand beaches.', '', 'Nov to May', 25.00, 'Wear sun protection.', 'Sunny', '16.1725,120.3715', 1, 1, 'white_sand_island.jpg'),
(33, 'Emerald Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Clear turquoise water and snorkeling spots.', '', 'Nov to May', 30.00, 'Check snorkeling gear.', 'Sunny', '16.1730,120.3720', 1, 1, 'emerald_island.jpg'),
(34, 'Hidden Gem Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Less visited secluded island.', '', 'Nov to May', 20.00, 'Carry enough supplies.', 'Sunny', '16.1735,120.3725', 1, 1, 'hidden_gem_island.jpg'),
(35, 'Sunset Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Best spot for watching sunsets.', '', 'Nov to May', 25.00, 'Bring camera.', 'Sunny', '16.1740,120.3730', 1, 1, 'sunset_island.jpg'),
(36, 'Palm Paradise Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Island with many coconut palms.', '', 'Nov to May', 25.00, 'Stay hydrated.', 'Sunny', '16.1745,120.3735', 1, 1, 'palm_paradise_island.jpg'),
(37, 'Blue Lagoon Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Calm lagoon for swimming.', '', 'Nov to May', 30.00, 'Check water depth.', 'Sunny', '16.1750,120.3740', 1, 1, 'blue_lagoon_island.jpg'),
(38, 'Crystal Cove', 'Alaminos, Pangasinan', 'Ilocos Region', 'Clear waters with rocky outcrops.', '', 'Nov to May', 30.00, 'Beware of slippery rocks.', 'Sunny', '16.1755,120.3745', 1, 1, 'crystal_cove.jpg'),
(39, 'Pirate\'s Cove', 'Alaminos, Pangasinan', 'Ilocos Region', 'Legendary cove used by pirates.', '', 'Nov to May', 30.00, 'Use boat guides.', 'Sunny', '16.1760,120.3750', 1, 1, 'pirates_cove.jpg'),
(40, 'Anchor Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Anchor-shaped landmass.', '', 'Nov to May', 20.00, 'Life jackets recommended.', 'Sunny', '16.1765,120.3755', 1, 1, 'anchor_island.jpg'),
(41, 'Golden Rock Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Rocks glimmer in sunlight.', '', 'Nov to May', 25.00, 'Avoid steep rocks.', 'Sunny', '16.1770,120.3760', 1, 1, 'golden_rock_island.jpg'),
(42, 'Shark Point', 'Alaminos, Pangasinan', 'Ilocos Region', 'Popular for snorkeling and diving.', '', 'Nov to May', 30.00, 'Check tide schedule.', 'Sunny', '16.1775,120.3765', 1, 1, 'shark_point.jpg'),
(43, 'Lotus Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Known for unique flora.', '', 'Nov to May', 20.00, 'Do not pick plants.', 'Sunny', '16.1780,120.3770', 1, 1, 'lotus_island.jpg'),
(44, 'Coral Island', 'Alaminos, Pangasinan', 'Ilocos Region', 'Famous for coral reefs.', '', 'Nov to May', 25.00, 'Do not touch corals.', 'Sunny', '16.1785,120.3775', 1, 1, 'coral_island.jpg');

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

--
-- Dumping data for table `islands_hotels`
--

INSERT INTO `islands_hotels` (`id`, `island_id`, `hotel_name`, `description`, `location`, `contact_number`, `rating`, `created_datetime_id`, `updated_datetime_id`) VALUES
(1, 1, 'Governor\'s Island Resort', 'Beachfront resort with cottages and amenities', 'Governor\'s Island, Alaminos', '0917-123-4567', 4.5, 1, 1),
(2, 2, 'Quezon Island Beach Hotel', 'Small cozy hotel near Quezon Island beach', 'Quezon Island, Alaminos', '0917-234-5678', 4.2, 1, 1),
(3, 3, 'Imelda Island Inn', 'Snug inn ideal for day trips and snorkeling', 'Imelda Island, Alaminos', '0917-345-6789', 4, 2, 2),
(4, 5, 'Pan de Azucar View Hotel', 'Hotel with hilltop views of Pan de Azucar Island', 'Pan de Azucar, Alaminos', '0917-456-7890', 4.3, 3, 3),
(5, 6, 'Crystal Cove Lodge', 'Quiet lodge near clear waters and snorkeling spots', 'Crystal Cove, Alaminos', '0917-567-8901', 4.4, 3, 3);

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
(2, 3, 'Imelda Cove', 'Cove', 'Small cove ideal for snorkeling', 'imelda_cove.jpg', 2, 2),
(3, 1, 'Children\'s Island', 'Island', 'Small island with calm waters, great for kids', 'childrens_island.jpg', 1, 1),
(4, 1, 'Monkey Island', 'Island', 'Named after monkeys once spotted here', 'monkey_island.jpg', 1, 1),
(5, 1, 'Secret Lagoon', 'Cove', 'Hidden lagoon for swimming and snorkeling', 'secret_lagoon.jpg', 1, 1),
(6, 2, 'Imelda Cove', 'Cove', 'Small sheltered cove ideal for snorkeling', 'imelda_cove.jpg', 2, 2),
(7, 2, 'Sunset Point', 'Viewpoint', 'Cliffside spot with panoramic sunset views', 'sunset_point.jpg', 2, 2),
(8, 2, 'Hidden Beach', 'Beach', 'Secluded beach accessible only by boat', 'hidden_beach.jpg', 2, 2),
(9, 3, 'Lighthouse View', 'Viewpoint', 'Offers sweeping views of surrounding islands', 'lighthouse_view.jpg', 3, 3),
(10, 3, 'Imelda Beach', 'Beach', 'Quiet beach with shallow waters', 'imelda_beach.jpg', 3, 3),
(11, 3, 'Coral Cove', 'Cove', 'Popular snorkeling spot with colorful corals', 'coral_cove.jpg', 3, 3),
(12, 1, 'Governor\'s Cave', 'Cave', 'Small limestone cave on the main island', 'governors_cave.jpg', 1, 1),
(13, 2, 'Mangrove Walk', 'Nature', 'Wooden walkway through mangrove forest', 'mangrove_walk.jpg', 2, 2),
(14, 3, 'Pebble Beach', 'Beach', 'Beach with smooth pebbles instead of sand', 'pebble_beach.jpg', 3, 3),
(15, 1, 'Sunken Shipwreck', 'Diving Spot', 'Popular spot for scuba diving near Governor\'s Island', 'sunken_shipwreck.jpg', 1, 1),
(16, 1, 'Rock Formation', 'Nature', 'Unique rock formations on the main island', 'rock_formation.jpg', 1, 1),
(17, 2, 'Cliff Jumping Spot', 'Adventure', 'Small cliffs for safe jumps into water', 'cliff_jumping.jpg', 2, 2),
(18, 3, 'Seaside Trail', 'Hiking', 'Trail along the shoreline with scenic views', 'seaside_trail.jpg', 3, 3),
(19, 3, 'Mangrove Lagoon', 'Nature', 'Calm lagoon surrounded by mangroves', 'mangrove_lagoon.jpg', 3, 3),
(20, 1, 'Eagle Rock', 'Viewpoint', 'Rock formation resembling an eagle, great for photos', 'eagle_rock.jpg', 1, 1);

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
(4, 3, 'Imelda Cove', 16.1680000, 120.3660000, 0.30, 1.80, '05:00:00', '17:15:00', 1, 1),
(5, 1, 'Governor\'s Island', 16.1622000, 120.3621000, 0.40, 2.10, '05:00:00', '17:10:00', 1, 1),
(6, 1, 'Quezon Beach', 16.1660000, 120.3640000, 0.50, 2.00, '04:30:00', '16:45:00', 1, 1),
(7, 1, 'Children\'s Island', 16.1635000, 120.3630000, 0.30, 1.80, '05:15:00', '17:25:00', 1, 1),
(8, 1, 'Monkey Island', 16.1647000, 120.3615000, 0.45, 2.05, '04:50:00', '16:50:00', 1, 1),
(9, 1, 'Secret Lagoon', 16.1652000, 120.3628000, 0.35, 1.95, '05:10:00', '17:20:00', 1, 1),
(10, 2, 'Imelda Cove', 16.1680000, 120.3660000, 0.30, 1.80, '05:00:00', '17:15:00', 2, 2),
(11, 2, 'Sunset Point', 16.1695000, 120.3675000, 0.25, 1.70, '05:05:00', '17:20:00', 2, 2),
(12, 2, 'Hidden Beach', 16.1700000, 120.3682000, 0.40, 2.00, '05:10:00', '17:25:00', 2, 2),
(13, 3, 'Lighthouse View', 16.1720000, 120.3695000, 0.35, 1.85, '05:20:00', '17:30:00', 3, 3),
(14, 3, 'Imelda Beach', 16.1732000, 120.3702000, 0.30, 1.80, '05:25:00', '17:35:00', 3, 3),
(15, 3, 'Coral Cove', 16.1740000, 120.3710000, 0.40, 2.00, '05:30:00', '17:40:00', 3, 3);

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

--
-- Dumping data for table `owners`
--

INSERT INTO `owners` (`owner_id`, `name`, `email`, `password_hash`, `phone`, `created_at`) VALUES
(1, 'Antonio Reyes', 'antonio@islandresort.com', 'hashed_pw1', '09171234501', '2026-01-07 02:53:48'),
(2, 'Maria Villanueva', 'maria@sunsetbeach.com', 'hashed_pw2', '09171234502', '2026-01-07 02:53:48'),
(3, 'Jose Delgado', 'jose@pacificbay.com', 'hashed_pw3', '09171234503', '2026-01-07 02:53:48'),
(4, 'Luz Santos', 'luz@bluewaterresort.com', 'hashed_pw4', '09171234504', '2026-01-07 02:53:48'),
(5, 'Pedro Cruz', 'pedro@islandview.com', 'hashed_pw5', '09171234505', '2026-01-07 02:53:48'),
(6, 'Rico Mendoza', 'rico@palmparadise.com', 'hashed_pw6', '09171234506', '2026-01-07 02:53:48'),
(7, 'Ana dela Cruz', 'ana@coralreefresort.com', 'hashed_pw7', '09171234507', '2026-01-07 02:53:48'),
(8, 'Mark Villanueva', 'mark@sunnyisle.com', 'hashed_pw8', '09171234508', '2026-01-07 02:53:48'),
(9, 'Jenny Ramos', 'jenny@oceanbreeze.com', 'hashed_pw9', '09171234509', '2026-01-07 02:53:48'),
(10, 'Kevin Tan', 'kevin@seaviewresort.com', 'hashed_pw10', '09171234510', '2026-01-07 02:53:48');

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

--
-- Dumping data for table `travel_history`
--

INSERT INTO `travel_history` (`id`, `user_email`, `destination`, `days`, `budget`, `people`, `itinerary`, `created_at`, `updated_at`) VALUES
(1, 'masong123@gmail.com', 'Hundred Islands, Alaminos', 3, 9000, 3, 'Day 1: Island hopping (Quezon, Governor Islands), lunch at Quezon Beach Resort. Day 2: Snorkeling at Imelda Island, sunset photography. Day 3: Kayaking, souvenir shopping, depart.', '2026-01-06 15:00:00', '2026-01-06 15:00:00'),
(2, 'owner@tripwise.com', 'Hundred Islands, Alaminos', 2, 4500, 1, 'Day 1: Explore Quezon Island and minor islands, overnight at Imelda Island. Day 2: Relax on the beach, return to Alaminos City.', '2026-01-06 16:00:00', '2026-01-06 16:00:00'),
(3, 'Joana@gmail.com', 'Hundred Islands, Alaminos', 1, 2000, 2, 'Day trip: Visit Quezon Beach, snorkeling at Imelda Cove, picnic lunch, return in the evening.', '2026-01-06 16:30:00', '2026-01-06 16:30:00'),
(4, 'antonio@islandresort.com', 'Hundred Islands, Alaminos', 4, 15000, 5, 'Day 1: Check-in at Quezon Beach Resort, explore nearby islands. Day 2: Island hopping with snorkeling and kayaking. Day 3: Visit minor islands, photography and beach sports. Day 4: Early morning walk, departure.', '2026-01-06 17:00:00', '2026-01-06 17:00:00'),
(5, 'maria@sunsetbeach.com', 'Hundred Islands, Alaminos', 3, 10000, 2, 'Day 1: Explore Quezon Island, lunch at Quezon Beach Resort. Day 2: Snorkeling at Imelda Island, sunset at Governor Island. Day 3: Souvenir shopping, depart for Alaminos City.', '2026-01-06 17:30:00', '2026-01-06 17:30:00'),
(6, 'jose@pacificbay.com', 'Hundred Islands, Alaminos', 2, 6000, 3, 'Day 1: Island hopping (Quezon & Imelda Islands), evening bonfire. Day 2: Morning kayaking, lunch, return.', '2026-01-06 18:00:00', '2026-01-06 18:00:00'),
(7, 'luz@bluewaterresort.com', 'Hundred Islands, Alaminos', 3, 8500, 2, 'Day 1: Check-in, visit Quezon Beach. Day 2: Island hopping, snorkeling at Imelda Cove. Day 3: Relax, photography, depart.', '2026-01-06 18:30:00', '2026-01-06 18:30:00'),
(8, 'pedro@islandview.com', 'Hundred Islands, Alaminos', 1, 2500, 1, 'Single-day trip: Island hopping around Quezon Island, picnic lunch, return.', '2026-01-06 19:00:00', '2026-01-06 19:00:00'),
(9, 'rico@palmparadise.com', 'Hundred Islands, Alaminos', 2, 7000, 2, 'Day 1: Arrival at Quezon Beach Resort, explore nearby islands. Day 2: Snorkeling, lunch at Imelda Cove, return.', '2026-01-06 19:30:00', '2026-01-06 19:30:00'),
(10, 'ana@coralreefresort.com', 'Hundred Islands, Alaminos', 3, 9500, 3, 'Day 1: Check-in at Quezon Beach Resort, island hopping. Day 2: Snorkeling at Imelda Island, photography. Day 3: Morning kayaking, return to Alaminos.', '2026-01-06 20:00:00', '2026-01-06 20:00:00');

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
(1, 'Juan dela Cruz', 'juan@example.com', '09171234567', 'password123', 1, 1, 0, 'user'),
(2, 'Maria Santos', 'maria@example.com', '09179876543', 'password456', 2, 2, 0, 'user'),
(3, 'Emerson', 'sabado146@gmail.com', NULL, 'scrypt:32768:8:1$mfzZiGRYDYohP9aw$de3b097b904643b9f527950476b4c6dcdd59fc02f5dad63d870a52585a5759d570fe13167de20bd34c1e8047e6bae29189d2a1516762582da68679882ee7ca6e', NULL, NULL, 0, 'user'),
(4, 'adrian james carrido tiburan', 'ajtiburan@gmail.com', NULL, 'scrypt:32768:8:1$44FE8iX7q7ifn32D$65cdcc3cbd2a7779d6ee6a154027b873cf989161f64e1d865541b3ed5ebea4d0881c166cfa8e035b50a8b13a8de8b0700cdb97df9be600da6a949022928d26a7', NULL, NULL, 0, 'user'),
(5, 'justin carlo', 'justin@gmail.com', NULL, 'scrypt:32768:8:1$oytpVVwpVuOHs2EQ$7f63454db13ae398a33bd1a4ca6877565f73e95841ae53d64f4806bf8fb0ad0c5b2e7642139287495c383f0b6f58d68a65b06c4946863f500f1159da8963d5be', NULL, NULL, 0, 'user'),
(6, 'Rico Mendoza', 'rico@palmparadise.com', NULL, NULL, NULL, NULL, 0, 'owner'),
(7, 'masong', 'masong123@gmail.com', NULL, 'scrypt:32768:8:1$qvZ9VxpKmZiXQj1b$147c0cd7935f70be5498b85c61e4dc77fc2e400cf208eaae4169cd8d7946c054c4df17e9b5c81ae5617529d0034db5696f2d0e8f1762df8ab5ac0d000f1a91ca', NULL, NULL, 0, 'user'),
(8, '', 'admin@tripwise.com', NULL, 'scrypt:32768:8:1$wY2zbyXi6pUsbfW7$76d4f8da922b4ea89db5d2a64d4388c62929c94c1d20b434a3d138cba843fc08e233a61fddb4baa37a19652aa145bcadeba04d78075e346f7dee354c2df69b3d', NULL, NULL, 1, 'admin'),
(9, 'Sample Owner', 'owner@tripwise.com', NULL, 'scrypt:32768:8:1$9JScB5e6FjZJ0Yc7$a08e24fd6aea989aad736955e1b04445c8d0ec5c11eddb28055b5d84d20cab74c5a313744c1f17627383a86d95b0b33498ad93c6fddb510f8c59d530ab313e08', NULL, NULL, 0, 'owner'),
(10, 'joana', 'Joana@gmail.com', NULL, 'scrypt:32768:8:1$kpex7Ljhb0DOEL5g$f07221f814ae356f51df969cdd317780c59e99a766af1441e871549c1da5ce3e0ea7a879dc75c0320e471a9f509560b6975868176d21e924453e491f200971c2', NULL, NULL, 0, 'user'),
(11, 'Mark Villanueva', 'mark@gmail.com', '09170000003', 'hashed_pw11', NULL, NULL, 0, 'user'),
(12, 'Jenny Cruz', 'jenny@gmail.com', '09170000004', 'hashed_pw12', NULL, NULL, 0, 'user'),
(13, 'Paul Ortega', 'paul@gmail.com', '09170000005', 'hashed_pw13', NULL, NULL, 0, 'user'),
(14, 'Sarah Gomez', 'sarah@gmail.com', '09170000006', 'hashed_pw14', NULL, NULL, 0, 'user'),
(15, 'Rico Santos', 'rico@gmail.com', '09170000007', 'hashed_pw15', NULL, NULL, 0, 'user'),
(16, 'Anna dela Cruz', 'anna@gmail.com', '09170000008', 'hashed_pw16', NULL, NULL, 0, 'user'),
(17, 'Jasper Lee', 'jasper@gmail.com', '09170000009', 'hashed_pw17', NULL, NULL, 0, 'user'),
(18, 'Maria Villanueva', 'maria2@gmail.com', '09170000010', 'hashed_pw18', NULL, NULL, 0, 'user'),
(19, 'Kevin Tan', 'kevin@gmail.com', '09170000011', 'hashed_pw19', NULL, NULL, 0, 'user'),
(20, 'Angela Reyes', 'angela@gmail.com', '09170000012', 'hashed_pw20', NULL, NULL, 0, 'user'),
(21, 'Diego Flores', 'diego@gmail.com', '09170000013', 'hashed_pw21', NULL, NULL, 0, 'user'),
(22, 'Ella Cruz', 'ella@gmail.com', '09170000014', 'hashed_pw22', NULL, NULL, 0, 'user'),
(23, 'Tommy Aquino', 'tommy@gmail.com', '09170000015', 'hashed_pw23', NULL, NULL, 0, 'user'),
(24, 'Monica Santos', 'monica@gmail.com', '09170000016', 'hashed_pw24', NULL, NULL, 0, 'user'),
(25, 'Eric Lim', 'eric@gmail.com', '09170000017', 'hashed_pw25', NULL, NULL, 0, 'user'),
(26, 'Patricia Reyes', 'patricia@gmail.com', '09170000018', 'hashed_pw26', NULL, NULL, 0, 'user'),
(27, 'Leo Cruz', 'leo@gmail.com', '09170000019', 'hashed_pw27', NULL, NULL, 0, 'user'),
(28, 'Isabel Santos', 'isabel@gmail.com', '09170000020', 'hashed_pw28', NULL, NULL, 0, 'user'),
(29, 'Henry Tan', 'henry@gmail.com', '09170000021', 'hashed_pw29', NULL, NULL, 0, 'user'),
(30, 'Carla Mendoza', 'carla@gmail.com', '09170000022', 'hashed_pw30', NULL, NULL, 0, 'user'),
(31, 'Victor Reyes', 'victor@gmail.com', '09170000023', 'hashed_pw31', NULL, NULL, 0, 'user'),
(32, 'Melanie Cruz', 'melanie@gmail.com', '09170000024', 'hashed_pw32', NULL, NULL, 0, 'user'),
(33, 'Daniel Lim', 'daniel@gmail.com', '09170000025', 'hashed_pw33', NULL, NULL, 0, 'user'),
(34, 'Monique Santos', 'monique@gmail.com', '09170000026', 'hashed_pw34', NULL, NULL, 0, 'user'),
(35, 'Adrian Tan', 'adrian@gmail.com', '09170000027', 'hashed_pw35', NULL, NULL, 0, 'user'),
(36, 'Gabriel Cruz', 'gabriel@gmail.com', '09170000028', 'hashed_pw36', NULL, NULL, 0, 'user'),
(37, 'Catherine Lee', 'catherine@gmail.com', '09170000029', 'hashed_pw37', NULL, NULL, 0, 'user'),
(38, 'Felix Ramos', 'felix@gmail.com', '09170000030', 'hashed_pw38', NULL, NULL, 0, 'user'),
(39, 'Clara Mendoza', 'clara@gmail.com', '09170000031', 'hashed_pw39', NULL, NULL, 0, 'user'),
(40, 'James Villanueva', 'james@gmail.com', '09170000032', 'hashed_pw40', NULL, NULL, 0, 'user');

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
(8, 4, '2025-11-11', '2025-11-19', '2025-11-27', 1211),
(29, 2, '2025-12-01', '2025-12-01', '2025-01-01', 110),
(30, 2, '2025-12-08', '2025-12-01', '2025-01-01', 95),
(31, 2, '2025-12-15', '2025-12-01', '2025-01-01', 130),
(32, 2, '2025-12-22', '2025-12-01', '2025-01-01', 105),
(33, 3, '2025-12-01', '2025-12-01', '2025-01-01', 80),
(34, 3, '2025-12-08', '2025-12-01', '2025-01-01', 75),
(35, 3, '2025-12-15', '2025-12-01', '2025-01-01', 95),
(36, 3, '2025-12-22', '2025-12-01', '2025-01-01', 85),
(37, 1, '2025-12-01', '2025-12-01', '2025-01-01', 120),
(38, 1, '2025-12-08', '2025-12-01', '2025-01-01', 135),
(39, 1, '2025-12-15', '2025-12-01', '2025-01-01', 140),
(40, 1, '2025-12-22', '2025-12-01', '2025-01-01', 125),
(41, 4, '2025-12-01', '2025-12-01', '2025-01-01', 40),
(42, 4, '2025-12-08', '2025-12-01', '2025-01-01', 35),
(43, 4, '2025-12-15', '2025-12-01', '2025-01-01', 50),
(44, 4, '2025-12-22', '2025-12-01', '2025-01-01', 45);

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
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `datetime_values`
--
ALTER TABLE `datetime_values`
  MODIFY `datetime_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `establishments`
--
ALTER TABLE `establishments`
  MODIFY `establishment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `islands`
--
ALTER TABLE `islands`
  MODIFY `island_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `islands_hotels`
--
ALTER TABLE `islands_hotels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `island_spots`
--
ALTER TABLE `island_spots`
  MODIFY `spot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `island_tides`
--
ALTER TABLE `island_tides`
  MODIFY `tide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `owners`
--
ALTER TABLE `owners`
  MODIFY `owner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `travel_history`
--
ALTER TABLE `travel_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `visit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

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
