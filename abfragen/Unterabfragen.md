# Unterabfragen

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

2. Finden Sie alle Kunden, die noch nie Reserviert haben
```SQL
SELECT
    *
    FROM `kunden`
    WHERE `idKunde` <> ALL
        (SELECT `idKunde`
            FROM `reservierungen`
            GROUP by `idKunde`
            HAVING COUNT(`idReservierung`) > 0)
```

3. Welche Kunden haben genau zweimal etwas bestellt
```SQL
SELECT
    *
    FROM `kunden`
    WHERE `idKunde` = ANY
        (SELECT `idKunde`
            FROM `bestellungen`
            GROUP by `idKunde`
            HAVING COUNT(`idBestellung`) = 2)
```
