# Unterabfragen

Unterabfragen (subqueries) werden nötig, wenn nach unbekannten, aber in der Datenbank
vorhandenen Informationen gefiltert werden soll.

### Beispiel
Auflistung aller Nahrungsmittel mit dem höchsten Preis

Das ist nicht mit Hilfe von ORDER BY möglich, da man nicht wissen kann, wie viele
Einträge vorhanden sind.
```SQL
SELECT `bezeichnung`
    FROM `hauptgerichte`
    ORDER BY `preis` DESC
    LIMIT 1 -- Hier Richtig, aber nicht allgemeingültig
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
