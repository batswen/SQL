# Einfache Abfragen
### Lösungen
Manchmal sind mehrere Lösungen möglich
1. Suchen Sie alle Nahrungsmittel, die mehr als 5 € kosten.
```SQL
SELECT *
    FROM `hauptgerichte`
    WHERE `preis` > 5

Oder alle Nahrungsmittel (Hauptgericht und Beilage):
SELECT *
    FROM `hauptgerichte`
    WHERE `preis` >= 5
UNION
SELECT *
    FROM `beilagen`
    WHERE `preis` >= 5
```

2. Suchen Sie alle Nahrungsmittel, die zwischen 5 € und 7 € (inklusive) kosten.
```SQL
SELECT *
    FROM `hauptgerichte`
    WHERE `preis` >= 5 AND `preis` <= 7
bzw
SELECT *
    FROM `hauptgerichte`
    WHERE `preis` BETWEEN 5 AND 7
```

3. Erstellen Sie eine Speisekarte mit den folgenden Spalten: Hauptgericht, Beilage, Preis
```SQL
SELECT
    h.`bezeichnung` AS 'Hauptgericht',
    b.`bezeichnung` AS 'Beilage',
    h.`preis` * b.`preis` AS 'Preis'
    FROM `hauptgerichte` h
    CROSS JOIN `beilagen` b
```

4. Listen Sie alle Wiesbadener Kunden auf
```SQL
SELECT
    *
    FROM `kunden`
    WHERE `wohnort` = 'Wiesbaden'
```

5. Wie viele Kunden leben in Niedernhausen, das Ergebnis soll wie folgt aussehen: "{ANZAHL} Kunden wohnen in Niedernhausen"
```SQL
SELECT
    CONCAT(
        COUNT(`idKunde`),
        ' Kunden wohnen in Niedernhausen'
    ) AS 'Ergebnis'
    FROM `kunden`
    WHERE `wohnort` = 'Niedernhausen'
```

6. Listen Sie alle Kunden auf, die bereits eine Reservierung gemacht haben
```SQL
SELECT
    DISTINCT `name`
    FROM `kunden`
    NATURAL JOIN `reservierungen`
```

7. Listen Sie alle Kunden auf und fügen Sie eventuelle Reservierungen hinzu. Das Ergebnis soll nur den Namen und das Datum beinhalten
```SQL
SELECT
    `name` AS 'Kunde', `datum` AS 'Datum'
    FROM `kunden`
    LEFT OUTER JOIN `reservierungen`
    USING(`idKunde`)
```

8. Aus wie vielen Städten stammen die Kunden
```SQL
SELECT
    COUNT(DISTINCT `wohnort`)
    FROM `kunden`
```

9. Nennen Sie die Städte (jeweils nur einmal)
```SQL
SELECT
    DISTINCT `wohnort`
    FROM `kunden`
```

10. Listen Sie alle Kunden auf, sortiert nach Nach- und Vorname
```SQL
SELECT
    *
    FROM `kunden`
    ORDER BY `nachname`, `vorname`
```

# Abfragen mit Gruppierungen
1. Listen Sie die Städte der Kunden und die Anzahl der Kunden aus der jeweiligen Stadt, zeigen Sie die Stadt mit den meisten Kunden zuerst
```SQL
SELECT
    `wohnort` AS 'Wohnort',
    COUNT(`idKunde`) AS 'Kunden'
    FROM `kunden`
    GROUP BY `wohnort`
    ORDER BY COUNT(`idKunde`) DESC
```
