-- phpMyAdmin SQL Dump
-- version 3.5.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 27, 2014 at 08:47 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kurs`
--

-- --------------------------------------------------------

--
-- Table structure for table `aktorzy`
--

CREATE TABLE IF NOT EXISTS `aktorzy` (
  `id_aktora` int(11) DEFAULT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `aktorzy`
--

INSERT INTO `aktorzy` (`id_aktora`, `imie`, `nazwisko`) VALUES
(1, 'Arnold', 'Schwarzenegger'),
(2, 'Tamara', 'Arciuch'),
(3, 'Pawel', 'Wilczak'),
(4, 'Maciej', 'Stuhr'),
(5, 'Ryszard', 'Tymon Tymanski'),
(6, 'Jerzy', 'Rogalski'),
(7, 'Lech', 'Dyblik'),
(8, 'Marian', 'Dziedziel'),
(9, 'Michael', 'Biehn'),
(10, 'Linda', 'Hamilton'),
(11, 'Bill', 'Murray'),
(12, 'Dan', 'Aykroyd'),
(13, 'Sigourney', 'Weaver'),
(14, 'Robert', 'De Niro'),
(15, 'Jodie', 'Foster'),
(16, 'Harvey', 'Keitel'),
(17, 'Cybill', 'Shepherd'),
(18, 'Tom', 'Berenger'),
(19, 'Willem', 'Dafoe'),
(20, 'Charlie', 'Sheen'),
(21, 'Harrison', 'Ford'),
(22, 'Emmanuelle', 'Seigner'),
(23, 'Jean', 'Reno'),
(24, 'Billy', 'Crystal'),
(25, 'Lisa', 'Kudrow'),
(26, 'Gary', 'Oldman'),
(27, 'Natalie', 'Portman'),
(28, 'Tom', 'Cruise');

-- --------------------------------------------------------

--
-- Table structure for table `filmy`
--

CREATE TABLE IF NOT EXISTS `filmy` (
  `id_filmu` int(11) DEFAULT NULL,
  `tytul` varchar(40) COLLATE utf8_polish_ci DEFAULT NULL,
  `rok_produkcji` int(11) DEFAULT NULL,
  `cena` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`id_filmu`, `tytul`, `rok_produkcji`, `cena`) VALUES
(1, 'Wesele', 2004, 10),
(2, 'Ghostbusters', 1984, 5.5),
(3, 'Terminator', 1984, 8.5),
(4, 'Taksowkarz', 1976, 5),
(5, 'Pluton', 1986, 5),
(6, 'Frantic', 1988, 8.5),
(7, 'Ronin', 1998, 9.5),
(8, 'Depresja gangstera', 1999, 10.5),
(9, 'Leon zawodowiec', 1994, 8.5),
(10, 'Mission Impossible', 1996, 8.5);

-- --------------------------------------------------------

--
-- Table structure for table `klienci`
--

CREATE TABLE IF NOT EXISTS `klienci` (
  `id_klienta` int(11) DEFAULT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie`, `nazwisko`) VALUES
(1, 'Jan', 'Kowalski'),
(2, 'Anna', 'Nowak'),
(3, 'Arnold', 'Zielinski'),
(4, 'Pawel', 'Lis'),
(5, 'Maciej', 'Wojciechowski'),
(6, 'Jan', 'Glinnicki');

-- --------------------------------------------------------

--
-- Table structure for table `kopie`
--

CREATE TABLE IF NOT EXISTS `kopie` (
  `id_kopii` int(11) DEFAULT NULL,
  `id_filmu` int(11) DEFAULT NULL,
  `czy_dostepna` char(1) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `kopie`
--

INSERT INTO `kopie` (`id_kopii`, `id_filmu`, `czy_dostepna`) VALUES
(1, 1, 'T'),
(2, 1, 'N'),
(3, 2, 'T'),
(4, 3, 'T'),
(5, 3, 'N'),
(6, 3, 'T'),
(7, 4, 'T'),
(8, 5, 'N'),
(9, 6, 'T'),
(10, 6, 'N'),
(11, 6, 'T'),
(12, 7, 'T'),
(13, 7, 'T'),
(14, 8, 'N'),
(15, 9, 'T'),
(16, 10, 'T'),
(17, 10, 'N'),
(18, 10, 'T'),
(19, 10, 'T'),
(20, 10, 'T');

-- --------------------------------------------------------

--
-- Table structure for table `obsada`
--

CREATE TABLE IF NOT EXISTS `obsada` (
  `id_aktora` int(11) DEFAULT NULL,
  `id_filmu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `obsada`
--

INSERT INTO `obsada` (`id_aktora`, `id_filmu`) VALUES
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(1, 3),
(9, 3),
(10, 3),
(11, 2),
(12, 2),
(13, 2),
(14, 4),
(15, 4),
(16, 4),
(17, 4),
(18, 5),
(19, 5),
(20, 5),
(21, 6),
(22, 6),
(14, 7),
(23, 7),
(14, 8),
(24, 8),
(25, 8),
(23, 9),
(26, 9),
(27, 9),
(23, 10),
(28, 10);

-- --------------------------------------------------------

--
-- Table structure for table `pracownicy`
--

CREATE TABLE IF NOT EXISTS `pracownicy` (
  `id_pracownika` int(11) DEFAULT NULL,
  `imie` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `miasto` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `pensja` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `imie`, `nazwisko`, `miasto`, `pensja`) VALUES
(1, 'John', 'Smith', 'New York', 150),
(2, 'Ben', 'Johnson', 'New York', 250),
(3, 'Louis', 'Armstrong', 'New Orleans', 75),
(4, 'John', 'Lennon', 'London', 300),
(5, 'Peter', 'Gabriel', 'London', 100);

-- --------------------------------------------------------

--
-- Table structure for table `wypozyczenia`
--

CREATE TABLE IF NOT EXISTS `wypozyczenia` (
  `id_klienta` int(11) DEFAULT NULL,
  `id_kopii` int(11) DEFAULT NULL,
  `data_wypozyczenia` date DEFAULT NULL,
  `data_zwrotu` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `wypozyczenia`
--

INSERT INTO `wypozyczenia` (`id_klienta`, `id_kopii`, `data_wypozyczenia`, `data_zwrotu`) VALUES
(1, 1, '2005-07-04', '2005-07-05'),
(1, 6, '2005-07-19', '2005-07-22'),
(2, 3, '2005-07-24', '2005-07-25'),
(2, 5, '2005-07-26', '2005-07-27'),
(2, 7, '2005-07-29', '2005-07-30'),
(3, 12, '2005-07-10', '2005-07-13'),
(3, 20, '2005-07-16', '2005-07-17'),
(3, 3, '2005-07-22', '2005-07-23'),
(3, 7, '2005-07-24', '2005-07-25'),
(4, 13, '2005-07-01', '2005-07-05'),
(5, 11, '2005-07-10', '2005-07-13'),
(6, 1, '2005-07-06', '2005-07-07'),
(6, 7, '2005-07-29', '2005-07-30'),
(6, 19, '2005-07-29', '2005-07-30');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
