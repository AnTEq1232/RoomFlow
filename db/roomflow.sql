-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 22, 2025 at 08:04 PM
-- Wersja serwera: 10.4.32-MariaDB-log
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roomflow`
--
CREATE DATABASE IF NOT EXISTS `roomflow` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `roomflow`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` enum('active','canceled','finished') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `room_id`, `date`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 3, '2025-10-23', '10:00:00', '11:00:00', 'active');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` enum('office','conference','open_space','storage','technical','social') NOT NULL,
  `capacity` int(11) NOT NULL,
  `description` text NOT NULL,
  `reserved` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `type`, `capacity`, `description`, `reserved`) VALUES
(1, 'Room 101', 'office', 5, 'A bright and modern office space, ideal for small team meetings or focused work. Equipped with ergonomic chairs, desks, and high-speed Wi-Fi. Perfect for collaborative projects or individual productivity.', 0),
(2, 'Room 102', 'office', 5, 'A bright and modern office space, ideal for small team meetings or focused work. Equipped with ergonomic chairs, desks, and high-speed Wi-Fi. Perfect for collaborative projects or individual productivity.', 0),
(3, 'Room 103', 'office', 5, 'A bright and modern office space, ideal for small team meetings or focused work. Equipped with ergonomic chairs, desks, and high-speed Wi-Fi. Perfect for collaborative projects or individual productivity.', 1),
(4, 'Conference 104', 'conference', 13, 'A modern conference room designed for team meetings, presentations, and video conferences. Equipped with a high-resolution projector, large screen, video conferencing system, and comfortable seating for all participants. The room also features a whiteboard, flip chart, and climate control to ensure a productive and comfortable meeting environment.', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'Antek', 'anteksalamon6@gmail.com', 'Aws123df', 'user');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeksy dla tabeli `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservations_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
