# Lösungen
Manchmal sind mehrere Lösungen möglich

1. Suchen Sie alle Nahrungsmittel, die mehr als 5 € kosten.
```SQL
SELECT *
    FROM `hauptgerichte`
    WHERE `preis` >= 5

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
