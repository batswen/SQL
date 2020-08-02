# Gruppierungen

Bei der Gruppierung werden von mehrern Datensätzen nur ein Datensatz in die Ergebnistabelle übernommen (vgl. DISTINCT), die nicht angezeigten Datensätze werden jedoch nicht verworfen, sondern können z. B. mit Hilfe von COUNT() gezählt werden.

Jeder Nachname wird nur einmal angezeigt:
```SQL
SELECT DISTINCT `nachname`
    FROM `kunden`

/* oder */

SELECT
    `nachname`
    FROM `kunden`
    GROUP BY `nachname`

/*
Bei der Frage wie oft jeder Nachname in der Tabelle enthalten ist kann
nach der Gruppierung die Anzahl der enthaltenen Einträge gezählt werden
*/

SELECT
    `nachname`, COUNT(`nachname`)
    FROM `kunden`
    GROUP BY `nachname`
```
