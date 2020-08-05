# Anlegen einer Tabelle
Der Befehl "CREATE TABLE" erzeugt eine neze Tabelle. Der optionale Zusatz "IF NOT EXISTS" verhindert eine Fehlermeldung falls bereits eine Tabelle mit gleichem Namen vorhanden ist. In den Klammern werden die Attribute, deren Datentype sowie weitere Optionen (NOT NULL, AUTO_INCREMENT usw.) angegeben. Nach der schließenden Klammer können die Datenbankengine sowie der Zeichensatz genannt werden.
```SQL
CREATE TABLE IF NOT EXISTS name (
    `attributbezeichnung` datentyp [weitere optionen]
)
```

### Beispiel (Erzeugen, ändern und befüllen)
```SQL
CREATE TABLE `kunden` (
  `idKunde` int(11) NOT NULL AUTO_INCREMENT,
  `vorname` varchar(50) NOT NULL,
  `nachname` varchar(50) NOT NULL,
  `wohnort` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

ALTER TABLE `kunden`
  ADD PRIMARY KEY (`idKunde`);
```

# Anlegen einer Tabelle aus einer Ergebnistabelle
Alternativ ist es möglich eine Ergebnistalle als Quelle für die neue Tabelle zu verwenden.
### Beispiel
```SQL
CREATE TABLE `wiesbadener` AS
    SELECT `vorname`, `nachname`
        FROM `kunden`
        WHERE `wohnort` = 'Wiesbaden'
```
