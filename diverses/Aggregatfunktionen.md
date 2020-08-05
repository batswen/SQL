# Aggregatfunktionen
Die Aggregatfunktionen werden häufig in verbindung mit den Gruppierungen eingesetzt.
### COUNT()
Zählt die Datensätze
```SQL
/* Anzahl der Kunden */
SELECT COUNT(*) FROM `kunden`

/* Zählt die Kunden aus 'Wiesbaden' */
SELECT
    COUNT(`idKunde`)
    FROM `kunden`
    WHERE `wohnort` = 'Wiesbaden'
/* Zählt alle Einwohner der jeweiligen Städte */
SELECT
    `wohnort`,
    COUNT(*)
    FROM `kunden`
    GROUP BY `wohnort`
```
### SUM()
Errechnet die Summe
```SQL
/* Summe aller Preise der bestellten Hauptgerichte von 'Stefan Krähe' */
SELECT SUM(h.`preis` * bh.`menge`)
    FROM `hauptgerichte` AS h
    JOIN `bestellunghauptgericht` AS bh USING (`idHauptgericht`)
    JOIN `bestellungen` AS b USING (`idBestellung`)
    JOIN `kunden` AS k USING (`idKunde`)
    WHERE `nachname` = 'Krähe' AND `vorname` = 'Stefan'
```
### MIN()
```SQL
/* Findet den kleinsten Preis */
SELECT MIN(`preis`) FROM `hauptgerichte`
```
### MAX()
```SQL
/* Findet den höchsten Preis */
SELECT MAX(`preis`) FROM `hauptgerichte`
```
### AVG()
```SQL
/* Berechnet den Mittelwert aller Preise */
SELECT AVG(`preis`) FROM `hauptgerichte`
```
