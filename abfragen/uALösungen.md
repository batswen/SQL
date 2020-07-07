# Unterabfragen
### Lösungen
1. Finden Sie alle Kunden, die bisher mehr als einmal Reserviert haben
```SQL
SELECT
    *
    FROM `kunden`
    WHERE `idKunde` = ANY
        (SELECT `idKunde`
            FROM `reservierungen`
            GROUP by `idKunde`
            HAVING COUNT(`idReservierung`) > 1)
```
