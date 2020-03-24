-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Värd: 127.0.0.1
-- Tid vid skapande: 19 mars 2020 kl 12:02
-- Serverversion: 10.4.6-MariaDB
-- PHP-version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databas: `stampla`
--

-- --------------------------------------------------------

--
-- Tabellstruktur `konto`
--

CREATE TABLE `konto` (
  `Id` int(11) NOT NULL,
  `Personnummer` bigint(13) NOT NULL,
  `User` varchar(6) NOT NULL,
  `Pass` varchar(25) NOT NULL,
  `Roll` varchar(255) NOT NULL,
  `Fistname` varchar(255) NOT NULL,
  `Secondname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumpning av Data i tabell `konto`
--

INSERT INTO `konto` (`Id`, `Personnummer`, `User`, `Pass`, `Roll`, `Fistname`, `Secondname`) VALUES
(1, 1, '', '2', '', '', ''),
(2, 1, '', '2', '', '', ''),
(3, 1, '', '2', '', '', ''),
(4, 1, '', '2', '', '', ''),
(5, 1111111111, '', '2', '', '', ''),
(6, 1111111111, '', '2', '', '', ''),
(7, 2147483647, '', '2', '', '', ''),
(8, 2147483647, '', 'wille', '', '', ''),
(9, 2147483647, '', '2', '', '', ''),
(10, 2147483647, '', '2', '', '', ''),
(11, 32, '', '2', '', '', ''),
(12, 12, '', '2', '', '', ''),
(13, 2147483647, '', '2', '', '', ''),
(14, 2147483647, '', '2', '', '', ''),
(15, 2147483647, '', '2', '', '', ''),
(16, 0, '', '2', '', '', ''),
(17, 0, '', '2', '', '', ''),
(18, 0, '', '2', '', '', ''),
(19, 0, '', '2', '', '', ''),
(20, 0, '', '2', '', '', ''),
(21, 0, '', '2', '', '', ''),
(22, 1, '', '2', '', '', ''),
(23, 123, '', '2', '', '', ''),
(24, 2147483647, '', '2', '', '', ''),
(25, 2, '', '2', '', '', ''),
(26, 2147483647, '', '2', '', '', ''),
(27, 2147483647, '', '2', '', '', ''),
(28, 2147483647, '', '2', '', '', ''),
(29, 20010326, '', '2', '', '', ''),
(30, 2001032670, '', '2', '', '', ''),
(31, 2147483647, '', '2', '', '', ''),
(32, 103267050, '', '2', '', '', ''),
(33, 200103267050, '', '2', '', '', ''),
(34, 200103267050, '', '2', '', '', ''),
(35, 200103267050, '', '2', '', '', ''),
(36, 200103267050, '', '2', '', '', ''),
(37, 200103267050, 'ew705', '4', '', 'we', 'ew'),
(38, 200103267050, 'ir705', 'hej', '', 'William', 'Tragardh'),
(39, 200103267050, 'wt670', 'hej', '', 'william', 'tragardh'),
(40, 200103267050, 'wt7050', 'hej', '', 'william', 'tragardh'),
(41, 200103267050, 'wt7050', 'hej', '', 'william', 'tragardh'),
(42, 200108277039, 'tl7039', 'tage1234', '', 'tage', 'lindekrantz');

--
-- Index för dumpade tabeller
--

--
-- Index för tabell `konto`
--
ALTER TABLE `konto`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT för dumpade tabeller
--

--
-- AUTO_INCREMENT för tabell `konto`
--
ALTER TABLE `konto`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
