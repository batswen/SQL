-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 06. Jul 2020 um 13:22
-- Server-Version: 10.4.6-MariaDB
-- PHP-Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `joins`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beilagen`
--

CREATE TABLE `beilagen` (
  `idBeilage` int(11) NOT NULL,
  `bezeichnung` varchar(50) NOT NULL,
  `preis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `beilagen`
--

INSERT INTO `beilagen` (`idBeilage`, `bezeichnung`, `preis`) VALUES
(1, 'Nudeln', 5),
(2, 'Kartoffeln', 6),
(3, 'Kroketten', 4),
(4, 'Pommes Frites', 5),
(5, 'Eisbergsalat', 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hauptgerichte`
--

CREATE TABLE `hauptgerichte` (
  `idHauptgericht` int(11) NOT NULL,
  `bezeichnung` varchar(50) NOT NULL,
  `preis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `hauptgerichte`
--

INSERT INTO `hauptgerichte` (`idHauptgericht`, `bezeichnung`, `preis`) VALUES
(1, 'Schnitzel', 8),
(2, 'Bratwurst', 6),
(3, 'Frikadellen', 7),
(4, 'Frischfisch', 8),
(5, 'Tofuzeug', 4),
(6, 'Salatblatt', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunden`
--

CREATE TABLE `kunden` (
  `idKunde` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `wohnort` varchar(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kunden`
--

INSERT INTO `kunden` (`idKunde`, `name`, `wohnort`) VALUES
(1, 'Hans Wurst', 'Wiesbaden'),
(2, 'Susi Sorglos', 'Frankfurt/Main'),
(3, 'Hans-Peter Körkeling', 'Köln'),
(4, 'Hola van Sinnen', 'Düsseldorf'),
(5, 'Hugon Ego', 'Wiesbaden'),
(6, 'Stefan Krähe', 'Köln'),
(7, 'Tanja Wassermann', 'Wiesbaden'),
(8, 'Meike Schöller-Göhte', 'Niedernhausen'),
(9, 'Lars Meiermann', 'Niedernhausen'),
(10, 'Kerstin Müller', 'Wiesbaden');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservierungen`
--

CREATE TABLE `reservierungen` (
  `idReservierung` int(11) NOT NULL,
  `idKunde` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `reservierungen`
--

INSERT INTO `reservierungen` (`idReservierung`, `idKunde`, `datum`) VALUES
(1, 1, '2020-05-20 16:30:00'),
(2, 4, '2020-07-06 11:15:00'),
(3, 1, '2020-01-03 18:30:00'),
(4, 3, '2020-03-03 16:45:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`idKunde`);

--
-- Indizes für die Tabelle `reservierungen`
--
ALTER TABLE `reservierungen`
  ADD PRIMARY KEY (`idReservierung`),
  ADD KEY `idKunde` (`idKunde`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `kunden`
--
ALTER TABLE `kunden`
  MODIFY `idKunde` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT für Tabelle `reservierungen`
--
ALTER TABLE `reservierungen`
  MODIFY `idReservierung` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `reservierungen`
--
ALTER TABLE `reservierungen`
  ADD CONSTRAINT `reservierungen_ibfk_1` FOREIGN KEY (`idKunde`) REFERENCES `kunden` (`idKunde`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
