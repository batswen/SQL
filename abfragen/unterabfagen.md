# Unterabfragen

Unterabfragen (subqueries) werden nötig, wenn nach unbekannten, aber in der Datenbank
vorhandenen Informationen gefiltert werden soll.

### Beispiel
Auflistung aller Nahrungsmittel mit dem höchsten Preis
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
