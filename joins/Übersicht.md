# Joins

Alle Beispiele verwenden die im selben Verzeichnis vorhandene Beispieldatenbank "Joins.sql"

## Cross join
Alle Datensätze beider Tabellen werden miteinander verknüpft. Die Länge der Ergebnistabelle ist das Produkt aus den längen der beiden Tabellen. Das Schlüsselwort "CROSS" kann dabei entfallen.
### Beispiel
* Alle Speisen und alle Beilagen sollen in einer Tabelle (Speisekarte) angezeigt werden.
```SQL
SELECT * FROM `hauptgerichte` CROSS JOIN `beilagen`
bzw
SELECT h.`bezeichnung` AS 'Hauptgericht',
    b.`bezeichnung` AS 'Beilage',
    h.`preis` * b.`preis` AS 'Preis'
    FROM `hauptgerichte` h CROSS JOIN `beilagen` b
```
* Verschiedene miteinander kombinierbare Versicherungen (z. B. Haftpflicht und Unfall)

## Inner join
Alle Datensätze beider Tabellen werden miteinander verknüpft. Die Länge der Ergebnistabelle ist das Produkt aus den längen der beiden Tabellen. Hier ist es möglich durch Vergleich zweier Schlüssel die Auswahl zu beschränken (ON).
Ist die Bezeichnung beider Schlüssel in beiden Tabellen identisch kann der Vergleich durch USING(key) durchgeführt werden. Fehlt eine Beschränkung (ON/USING) wird aus einem INNER JOIN automatisch ein CROSS JOIN.
Das Schlüsselwort "INNER" kann dabei entfallen.
### Beispiel
* Anzeige aller Kundenreservierungen
```SQL
SELECT * FROM `kunden` k INNER JOIN `reservierungen` r
    ON k.`idKunde` = r.`idKunde`
bzw
SELECT * FROM `kunden` k INNER JOIN `reservierungen` r
    USING(k.`idKunde`)
bzw
SELECT k.`name` AS 'Kunde',
    r.`datum` AS 'Zeitpunkt'
    FROM `kunden` k INNER JOIN `reservierungen` r
    ON k.`idKunde` = r.`idKunde`
```

## Natural join
Alle Datensätze beider Tabellen werden miteinander verknüpft. Es werden nur die Einträge in die Ergebnistalle übernommen, per USING (siehe INNER JOIN) verknüpft sind. Das Schlüsselwort "NATURAL" kann dabei entfallen.
### Beispiel
* Anzeige aller Kundenreservierungen
```SQL
SELECT * FROM `kunden` k NATURAL JOIN `reservierungen` r
bzw
SELECT k.`name` AS 'Kunde',
    r.`datum` AS 'Zeitpunkt'
    FROM `kunden` k NATURAL JOIN `reservierungen` r
```

## Left outer join
Alle Datensätze beider Tabellen werden miteinander verknüpft. Es werden alle Einträge der linken Tabelle in die Ergebnistalle übernommen, evtl. fehlende Einträge der rechten Tallen werden durch NULL aufgefüllt. Das Schlüsselwort "OUTER" kann dabei entfallen.
### Beispiel
* Anzeige aller Kunden und evtl. Kundenreservierungen
```SQL
SELECT * FROM `kunden` k
    LEFT OUTER JOIN `reservierungen` r
    ON k.`idKunde` = r.`idKunde`
bzw
SELECT * FROM `kunden`
    LEFT OUTER JOIN `reservierungen`
    USING(`idKunde`)
bzw
SELECT k.`name` AS 'Kunde',
    r.`datum` AS 'Zeitpunkt'
    FROM `kunden` k
    LEFT OUTER JOIN `reservierungen` r
    USING(`idKunde`)
```
