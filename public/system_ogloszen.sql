-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 06, 2023 at 12:11 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `system_ogloszen`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `firmy`
--

CREATE TABLE `firmy` (
  `firma_id` int(11) NOT NULL,
  `nazwa` varchar(90) NOT NULL,
  `NIP` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategorie`
--

CREATE TABLE `kategorie` (
  `kategoria_id` int(11) NOT NULL,
  `nazwa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ogloszenia`
--

CREATE TABLE `ogloszenia` (
  `ogloszenie_id` int(11) NOT NULL,
  `tytul` varchar(100) NOT NULL,
  `opis` varchar(1000) NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `firma_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `uzytkownik_id` int(11) NOT NULL,
  `login` varchar(40) NOT NULL,
  `imie` varchar(30) NOT NULL,
  `nazwisko` varchar(30) NOT NULL,
  `opis` varchar(1500) NOT NULL,
  `numer_telefonu` varchar(16) NOT NULL,
  `email` varchar(255) NOT NULL,
  `stanowisko` varchar(40) NOT NULL,
  `plec` enum('Mężczyzna','Kobieta','','') NOT NULL,
  `wiek` tinyint(3) UNSIGNED NOT NULL,
  `kraj` varchar(58) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uzytkownicy`
--

INSERT INTO `uzytkownicy` (`uzytkownik_id`, `login`, `imie`, `nazwisko`, `opis`, `numer_telefonu`, `email`, `stanowisko`, `plec`, `wiek`, `kraj`, `password`) VALUES
(1, 'boniek', 'Bonifacy', 'Borucki', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. ', '+48 123 456 789', 'bonifacyborucki123@gmail.com', 'junior vuejs developer', 'Mężczyzna', 20, 'Polska', 'kurcze'),
(2, 'dodek', 'dominik', 'rak', '', '', '', '', 'Mężczyzna', 0, '', 'dodek123');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zapisane`
--

CREATE TABLE `zapisane` (
  `zapisane_id` int(11) NOT NULL,
  `ogloszenie_id` int(11) NOT NULL,
  `uzytkownik_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `firmy`
--
ALTER TABLE `firmy`
  ADD PRIMARY KEY (`firma_id`);

--
-- Indeksy dla tabeli `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`kategoria_id`);

--
-- Indeksy dla tabeli `ogloszenia`
--
ALTER TABLE `ogloszenia`
  ADD PRIMARY KEY (`ogloszenie_id`),
  ADD KEY `firma_id` (`firma_id`),
  ADD KEY `kategoria_id` (`kategoria_id`);

--
-- Indeksy dla tabeli `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`uzytkownik_id`);

--
-- Indeksy dla tabeli `zapisane`
--
ALTER TABLE `zapisane`
  ADD PRIMARY KEY (`zapisane_id`),
  ADD KEY `ogloszenie_id` (`ogloszenie_id`),
  ADD KEY `uzytkownik_id` (`uzytkownik_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `firmy`
--
ALTER TABLE `firmy`
  MODIFY `firma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `kategoria_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ogloszenia`
--
ALTER TABLE `ogloszenia`
  MODIFY `ogloszenie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `uzytkownik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zapisane`
--
ALTER TABLE `zapisane`
  MODIFY `zapisane_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ogloszenia`
--
ALTER TABLE `ogloszenia`
  ADD CONSTRAINT `ogloszenia_ibfk_1` FOREIGN KEY (`firma_id`) REFERENCES `firmy` (`firma_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
