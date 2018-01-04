-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql11.freemysqlhosting.net
-- Erstellungszeit: 04. Jan 2018 um 09:40
-- Server-Version: 5.5.58-0ubuntu0.14.04.1
-- PHP-Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `sql11213800`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Gerichte`
--

CREATE TABLE `Gerichte` (
  `ID` int(11) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Beschreibung` varchar(250) NOT NULL,
  `Preis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Gerichte`
--

INSERT INTO `Gerichte` (`ID`, `Name`, `Beschreibung`, `Preis`) VALUES
(1, 'PELL-/FOLIENKARTOFFEL ', 'mit Kräuter-Quark und gemischtem Salat', 699),
(2, 'PUTENSTEAK', 'mit Kräuterbutter und krossen Bratkartoffeln mit Speck und Zwiebeln', 1444),
(3, '3 MATJESFILETS', 'dazu Bratkartoffeln mit Speck und Zwiebeln', 1465),
(4, 'BBQ -AUFLAUF ', 'Feines pikantes Rinderhack auf Kartoffelscheiben mit BBQ – Soße und Paprikastreifen überbacken', 1222);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `Gerichte`
--
ALTER TABLE `Gerichte`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `Gerichte`
--
ALTER TABLE `Gerichte`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
