# Unterabfragen

Unterabfragen (subqueries) werden nötig, wenn nach unbekannten, aber in der Datenbank vorhandenen Informationen gefiltert werden soll.

### Beispiel
Auflistung aller Nahrungsmittel mit dem höchsten Preis

Das ist nicht mit Hilfe von ORDER BY/LIMIT möglich, da man nicht wissen kann, wie viele Einträge vorhanden sind.
```SQL
SELECT `bezeichnung`
    FROM `hauptgerichte`
    ORDER BY `preis` DESC
    LIMIT 1 -- Manchmal möglich, aber nicht allgemeingültig
```
### Lösung
1. Suche nach dem Preis mit Hilfe von MAX()
2. Suche nach allen Einträgen mit diesem Preis

```SQL
SELECT MAX(`preis`)
    FROM `hauptgerichte`

SELECT `bezeichnung`
    FROM `hauptgerichte`
    WHERE `preis` = {gefundener Preis}

-->
SELECT `bezeichnung`
    FROM `hauptgerichte`
    WHERE `preis` = (SELECT MAX(`preis`) FROM `hauptgerichte`)
```
### Achtung
Unterabfragen in der FROM-Klausel benötigen einen Alias auch wenn er in der Abfrage nicht benutzt wird, z. B.:
```SQL
SELECT *
    FROM (SELECT * FROM `hauptgerichte`) AS a /* !!! */
```

### ANY und ALL
Beide Operatoren werden nach WHERE oder HAVING zusammen mit einem Vergleichsoperator eingesetzt. ANY liefert TRUE, wenn einer der Werte aus der Unterabfrage zutrifft, bei ALL müssen alle Vergleiche mit den Werten aus der Unterabfrage zutreffen.
