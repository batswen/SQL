-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Jul 2020 um 15:35
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
-- Datenbank: `essen`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beilagelieferant`
--

CREATE TABLE `beilagelieferant` (
  `idLieferant` int(11) NOT NULL,
  `idBeilage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `beilagelieferant`
--

INSERT INTO `beilagelieferant` (`idLieferant`, `idBeilage`) VALUES
(1, 1),
(1, 5),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `beilagen`
--

CREATE TABLE `beilagen` (
  `idBeilage` int(11) NOT NULL AUTO_INCREMENT,
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
-- Tabellenstruktur für Tabelle `bestellungbeilage`
--

CREATE TABLE `bestellungbeilage` (
  `idBestellung` int(11) NOT NULL,
  `idBeilage` int(11) NOT NULL,
  `menge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bestellungbeilage`
--

INSERT INTO `bestellungbeilage` (`idBestellung`, `idBeilage`, `menge`) VALUES
(1, 5, 1),
(4, 1, 2),
(7, 4, 1),
(8, 2, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungen`
--

CREATE TABLE `bestellungen` (
  `idBestellung` int(11) NOT NULL AUTO_INCREMENT,
  `idKunde` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bestellungen`
--

INSERT INTO `bestellungen` (`idBestellung`, `idKunde`, `datum`) VALUES
(1, 1, '2020-07-05 04:24:35'),
(2, 3, '2020-06-15 16:15:35'),
(3, 2, '2020-07-28 10:06:45'),
(4, 6, '2020-06-10 14:18:22'),
(5, 3, '2020-07-06 17:24:52'),
(6, 10, '2020-07-28 10:06:52'),
(7, 11, '2020-07-23 14:06:59'),
(8, 12, '2020-07-25 17:36:21');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellunghauptgericht`
--

CREATE TABLE `bestellunghauptgericht` (
  `idBestellung` int(11) NOT NULL AUTO_INCREMENT,
  `idHauptgericht` int(11) NOT NULL,
  `menge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bestellunghauptgericht`
--

INSERT INTO `bestellunghauptgericht` (`idBestellung`, `idHauptgericht`, `menge`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2),
(6, 6, 1),
(7, 1, 1),
(8, 3, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `hauptgerichte`
--

CREATE TABLE `hauptgerichte` (
  `idHauptgericht` int(11) NOT NULL AUTO_INCREMENT,
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
-- Tabellenstruktur für Tabelle `hauptgerichtlieferant`
--

CREATE TABLE `hauptgerichtlieferant` (
  `idLieferant` int(11) NOT NULL,
  `idHauptgericht` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `hauptgerichtlieferant`
--

INSERT INTO `hauptgerichtlieferant` (`idLieferant`, `idHauptgericht`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(2, 2),
(2, 3),
(2, 5),
(2, 6),
(4, 4),
(4, 6);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunden`
--

CREATE TABLE `kunden` (
  `idKunde` int(11) NOT NULL AUTO_INCREMENT,
  `vorname` varchar(50) NOT NULL,
  `nachname` varchar(50) NOT NULL,
  `wohnort` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kunden`
--

INSERT INTO `kunden` (`idKunde`, `vorname`, `nachname`, `wohnort`) VALUES
(1, 'Hans', 'Wurst', 'Wiesbaden'),
(2, 'Susi', 'Sorglos', 'Frankfurt/Main'),
(3, 'Hans-Peter', 'Körkeling', 'Köln'),
(4, 'Hola', 'van Sinnen', 'Düsseldorf'),
(5, 'Hugon', 'Ego', 'Wiesbaden'),
(6, 'Stefan', 'Krähe', 'Köln'),
(7, 'Alice', 'Wassermann', 'Wiesbaden'),
(8, 'Meike', 'Schöller-Göhte', 'Niedernhausen'),
(9, 'Karsten', 'Meiermann', 'Niedernhausen'),
(10, 'Thomas', 'Meiermann', 'Düsseldorf'),
(11, 'Anita', 'Wassermann', 'Idstein'),
(12, 'Tina', 'Wassermann', 'Wiesbaden'),
(13, 'Alexander', 'Müller', 'Idstein'),
(14, 'Elton', 'Krähe', 'Idstein'),
(15, 'Christina', 'Müller', 'Wiesbaden');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lieferanten`
--

CREATE TABLE `lieferanten` (
  `idLieferant` int(11) NOT NULL AUTO_INCREMENT,
  `firma` varchar(50) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `telefon` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `lieferanten`
--

INSERT INTO `lieferanten` (`idLieferant`, `firma`, `ort`, `telefon`) VALUES
(1, 'Gutes Essen GmbH', 'Frankfurt/Main', '069-7828362109'),
(2, 'Foods\'R\'Us', 'Wiesbaden', '0611-2348723492'),
(3, 'Beschte Beilagen KG', 'Wiesbaden', '0611-9483568436'),
(4, 'Frischer Fisch AG', 'Limburg/Lahn', '06431-7845122356');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `reservierungen`
--

CREATE TABLE `reservierungen` (
  `idReservierung` int(11) NOT NULL AUTO_INCREMENT,
  `idKunde` int(11) NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `reservierungen`
--

INSERT INTO `reservierungen` (`idReservierung`, `idKunde`, `datum`) VALUES
(1, 1, '2020-05-20 14:30:00'),
(2, 4, '2020-07-06 09:15:00'),
(3, 1, '2020-01-03 17:30:00'),
(4, 3, '2020-03-03 15:45:00'),
(5, 4, '2020-07-09 16:30:00'),
(6, 10, '2020-07-09 16:30:00');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `beilagelieferant`
--
ALTER TABLE `beilagelieferant`
  ADD PRIMARY KEY (`idLieferant`,`idBeilage`),
  ADD KEY `idBeilage` (`idBeilage`);

--
-- Indizes für die Tabelle `beilagen`
--
ALTER TABLE `beilagen`
  ADD PRIMARY KEY (`idBeilage`);

--
-- Indizes für die Tabelle `bestellungbeilage`
--
ALTER TABLE `bestellungbeilage`
  ADD PRIMARY KEY (`idBestellung`,`idBeilage`),
  ADD KEY `idBeilage` (`idBeilage`);

--
-- Indizes für die Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD PRIMARY KEY (`idBestellung`,`idKunde`);

--
-- Indizes für die Tabelle `bestellunghauptgericht`
--
ALTER TABLE `bestellunghauptgericht`
  ADD PRIMARY KEY (`idBestellung`,`idHauptgericht`),
  ADD KEY `idHauptgericht` (`idHauptgericht`);

--
-- Indizes für die Tabelle `hauptgerichte`
--
ALTER TABLE `hauptgerichte`
  ADD PRIMARY KEY (`idHauptgericht`);

--
-- Indizes für die Tabelle `hauptgerichtlieferant`
--
ALTER TABLE `hauptgerichtlieferant`
  ADD PRIMARY KEY (`idLieferant`,`idHauptgericht`),
  ADD KEY `idHauptgericht` (`idHauptgericht`);

--
-- Indizes für die Tabelle `kunden`
--
ALTER TABLE `kunden`
  ADD PRIMARY KEY (`idKunde`);

--
-- Indizes für die Tabelle `lieferanten`
--
ALTER TABLE `lieferanten`
  ADD PRIMARY KEY (`idLieferant`);

--
-- Indizes für die Tabelle `reservierungen`
--
ALTER TABLE `reservierungen`
  ADD PRIMARY KEY (`idReservierung`),
  ADD KEY `idKunde` (`idKunde`);

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `beilagelieferant`
--
ALTER TABLE `beilagelieferant`
  ADD CONSTRAINT `beilagelieferant_ibfk_1` FOREIGN KEY (`idLieferant`) REFERENCES `lieferanten` (`idLieferant`),
  ADD CONSTRAINT `beilagelieferant_ibfk_2` FOREIGN KEY (`idBeilage`) REFERENCES `beilagen` (`idBeilage`);

--
-- Constraints der Tabelle `bestellungbeilage`
--
ALTER TABLE `bestellungbeilage`
  ADD CONSTRAINT `bestellungbeilage_ibfk_1` FOREIGN KEY (`idBeilage`) REFERENCES `beilagen` (`idBeilage`),
  ADD CONSTRAINT `bestellungbeilage_ibfk_2` FOREIGN KEY (`idBestellung`) REFERENCES `bestellungen` (`idBestellung`);

--
-- Constraints der Tabelle `bestellungen`
--
ALTER TABLE `bestellungen`
  ADD CONSTRAINT `bestellungen_ibfk_1` FOREIGN KEY (`idKunde`) REFERENCES `kunden` (`idKunde`);

--
-- Constraints der Tabelle `bestellunghauptgericht`
--
ALTER TABLE `bestellunghauptgericht`
  ADD CONSTRAINT `bestellunghauptgericht_ibfk_1` FOREIGN KEY (`idHauptgericht`) REFERENCES `hauptgerichte` (`idHauptgericht`),
  ADD CONSTRAINT `bestellunghauptgericht_ibfk_2` FOREIGN KEY (`idBestellung`) REFERENCES `bestellungen` (`idBestellung`);

--
-- Constraints der Tabelle `hauptgerichtlieferant`
--
ALTER TABLE `hauptgerichtlieferant`
  ADD CONSTRAINT `hauptgerichtlieferant_ibfk_1` FOREIGN KEY (`idLieferant`) REFERENCES `lieferanten` (`idLieferant`),
  ADD CONSTRAINT `hauptgerichtlieferant_ibfk_2` FOREIGN KEY (`idHauptgericht`) REFERENCES `hauptgerichte` (`idHauptgericht`);

--
-- Constraints der Tabelle `reservierungen`
--
ALTER TABLE `reservierungen`
  ADD CONSTRAINT `reservierungen_ibfk_1` FOREIGN KEY (`idKunde`) REFERENCES `kunden` (`idKunde`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
