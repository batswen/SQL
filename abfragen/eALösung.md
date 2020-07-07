# Lösungen
Manchmal sind mehrere Lösungen möglich

1. Suchen Sie alle Nahrungsmittel, die mehr als 5 € kosten.
```SQL
SELECT *
    FROM `hauptgerichte`
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
