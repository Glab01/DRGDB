-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Wrz 07, 2025 at 11:35 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drg db`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cargo crate factor`
--

CREATE TABLE `cargo crate factor` (
  `id` int(11) NOT NULL,
  `factor` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cargo crate factor`
--

INSERT INTO `cargo crate factor` (`id`, `factor`) VALUES
(1, 7.00),
(2, 10.00),
(3, 10.50),
(4, 11.00),
(5, 11.50),
(6, 12.00),
(7, 12.50),
(8, 13.00),
(9, 13.35),
(10, 13.50),
(11, 14.00),
(12, 15.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lost pack factor`
--

CREATE TABLE `lost pack factor` (
  `id` int(11) NOT NULL,
  `factor` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lost pack factor`
--

INSERT INTO `lost pack factor` (`id`, `factor`) VALUES
(1, 7.00),
(2, 10.00),
(3, 10.50),
(4, 11.00),
(5, 11.50),
(6, 12.00),
(7, 12.50),
(8, 13.00),
(9, 13.35),
(10, 13.50),
(11, 14.00),
(12, 15.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `machine events factor`
--

CREATE TABLE `machine events factor` (
  `id` int(11) NOT NULL,
  `factor` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `machine events factor`
--

INSERT INTO `machine events factor` (`id`, `factor`) VALUES
(1, 15.40),
(2, 22.00),
(3, 22.50),
(4, 23.00),
(5, 23.50),
(6, 24.00),
(7, 24.50),
(8, 25.00),
(9, 25.35),
(10, 25.50),
(11, 26.00),
(12, 27.00);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `missions`
--

CREATE TABLE `missions` (
  `id` int(11) NOT NULL,
  `mission type` varchar(10) NOT NULL,
  `mission length` tinyint(4) NOT NULL,
  `cave complexity` tinyint(4) NOT NULL,
  `primary credit payout` smallint(5) UNSIGNED NOT NULL,
  `primary exp payout` smallint(5) UNSIGNED NOT NULL,
  `secondary credit payour var1` smallint(5) UNSIGNED NOT NULL,
  `secondary exp payout var1` smallint(5) UNSIGNED NOT NULL,
  `secondary credit payour var2` smallint(5) UNSIGNED NOT NULL,
  `secondary exp payout var2` smallint(5) UNSIGNED NOT NULL,
  `lost pack factor id` int(11) DEFAULT NULL,
  `lost cargo crate factor id` int(11) DEFAULT NULL,
  `machine event factor id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `missions`
--

INSERT INTO `missions` (`id`, `mission type`, `mission length`, `cave complexity`, `primary credit payout`, `primary exp payout`, `secondary credit payour var1`, `secondary exp payout var1`, `secondary credit payour var2`, `secondary exp payout var2`, `lost pack factor id`, `lost cargo crate factor id`, `machine event factor id`) VALUES
(1, 'egg hunt', 1, 1, 300, 950, 200, 700, 250, 685, 2, 2, 2),
(2, 'egg hunt', 2, 2, 450, 1425, 300, 1050, 250, 1010, 7, 7, 7),
(3, 'egg hunt', 3, 2, 600, 1900, 400, 1400, 250, 1335, 12, 12, 12),
(4, 'salvage op', 2, 2, 700, 2000, 200, 900, 250, 800, 6, 6, 6),
(5, 'salvage op', 3, 3, 700, 2000, 200, 900, 250, 800, 11, 11, 11),
(6, 'mining exp', 1, 1, 450, 1700, 200, 700, 250, 685, 2, 2, 2),
(7, 'mining exp', 2, 1, 500, 1875, 220, 770, 275, 750, 3, 3, 3),
(8, 'mining exp', 2, 2, 550, 2050, 240, 840, 300, 815, 4, 4, 4),
(9, 'mining exp', 3, 2, 725, 2725, 320, 1120, 400, 1075, 8, 8, 8),
(10, 'mining exp', 3, 3, 900, 3400, 400, 1400, 500, 1335, 12, 12, 12),
(11, 'on-site re', 2, 2, 660, 1800, 240, 840, 300, 880, 4, 4, 4),
(12, 'on-site re', 2, 3, 880, 2400, 320, 1120, 400, 1075, 8, 8, 8),
(13, 'point extr', 2, 3, 445, 1225, 140, 490, 175, 490, 1, 1, 1),
(14, 'point extr', 3, 3, 650, 1750, 200, 700, 250, 750, 2, 2, 2),
(15, 'escort', 2, 2, 1105, 2990, 260, 909, 325, 879, 5, 5, 5),
(16, 'escort', 2, 3, 1190, 3220, 280, 980, 350, 945, 6, 6, 6),
(17, 'escort', 3, 2, 1360, 3680, 320, 1120, 400, 1075, 8, 8, 8),
(18, 'escort', 3, 3, 1530, 4140, 360, 1260, 450, 1205, 11, 11, 11),
(19, 'eliminatio', 2, 2, 660, 2100, 240, 840, 300, 880, 4, 4, 4),
(20, 'eliminatio', 3, 3, 935, 2400, 340, 1120, 425, 1075, 10, 10, 10),
(21, 'sabotage', 2, 1, 950, 2800, 200, 700, 250, 685, 2, 2, 2),
(22, 'sabotage', 2, 2, 1425, 4200, 300, 1050, 375, 1010, 7, 7, 7),
(23, 'deep scan', 1, 2, 600, 2200, 200, 700, 250, 685, 2, 2, 2),
(24, 'deep scan', 2, 3, 1002, 3674, 334, 1169, 417, 1143, 9, 9, 9);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cargo crate factor`
--
ALTER TABLE `cargo crate factor`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `lost pack factor`
--
ALTER TABLE `lost pack factor`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `machine events factor`
--
ALTER TABLE `machine events factor`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `missions`
--
ALTER TABLE `missions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lost pack factor id` (`lost pack factor id`),
  ADD KEY `lost cargo crate factor id` (`lost cargo crate factor id`),
  ADD KEY `machine event factor id` (`machine event factor id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargo crate factor`
--
ALTER TABLE `cargo crate factor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lost pack factor`
--
ALTER TABLE `lost pack factor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `machine events factor`
--
ALTER TABLE `machine events factor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `missions`
--
ALTER TABLE `missions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `missions`
--
ALTER TABLE `missions`
  ADD CONSTRAINT `missions_ibfk_1` FOREIGN KEY (`lost pack factor id`) REFERENCES `lost pack factor` (`id`),
  ADD CONSTRAINT `missions_ibfk_2` FOREIGN KEY (`lost cargo crate factor id`) REFERENCES `cargo crate factor` (`id`),
  ADD CONSTRAINT `missions_ibfk_3` FOREIGN KEY (`machine event factor id`) REFERENCES `machine events factor` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
