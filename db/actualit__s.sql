-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2023 at 12:03 AM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node_tp`
--

-- --------------------------------------------------------

--
-- Table structure for table `actualités`
--

DROP TABLE IF EXISTS `actualités`;
CREATE TABLE IF NOT EXISTS `actualités` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `actualités`
--

INSERT INTO `actualités` (`id`, `titre`, `contenu`, `date`) VALUES
(13, 'EU to open membership talks with Ukraine and Moldova', 'Brussels\r\nCNN\r\n — \r\nEuropean leaders have agreed to open EU membership talks with Ukraine, in a move hailed as a “victory” by the country’s President Volodymyr Zelensky.', '2023-12-14 22:54:30'),
(14, 'Japan’s word of the year speaks to rising cost of living fears', 'Tokyo\r\nCNN\r\n — \r\nFamously one of life’s only two certainties, “tax” has been chosen by the Japanese public as its word of the year, reflecting rising costs of living and much-discussed tax reforms in the world’s third-largest economy.', '2023-12-14 23:09:11'),
(21, 'Atlanta News', 'Georgia’s capital city — home to the world’s busiest airport — can now boast Michelin-star restaurants as another reason to stop and stay awhile.\r\n\r\nFive Atlanta restaurants were awarded one Michelin star on Tuesday night during a ceremony at the downtown Rialto Center for the Arts.', '2023-12-15 01:02:39'),
(20, 'CNN Breaking News', 'Paris has once again been named the world’s most attractive city destination, according to an annual report by global market research company Euromonitor International.', '2023-12-15 01:01:32'),
(22, 'Tp Test', 'Tp test Works Perfectly. thank you for your attending', '2023-12-15 01:03:40');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
