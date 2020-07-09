# SQL

### Beispieldatenbank "futter.sql"
#### Tabelle kunden
    `idKunde` int(11) NOT NULL
    `name` varchar(50) NOT NULL
    `wohnort` varchar(50)

#### Tabelle reservierungen
    `idReservierung` int(11) NOT NULL
    `idKunde` int(11) NOT NULL
    `datum` timestamp NOT NULL DEFAULT current_timestamp()

#### Tabelle hauptgerichte
    `idHauptgericht` int(11) NOT NULL
    `bezeichnung` varchar(50) NOT NULL
    `preis` int(11) NOT NULL

#### Tabelle beilagen
    `idBeilage` int(11) NOT NULL
    `bezeichnung` varchar(50) NOT NULL
    `preis` int(11) NOT NULL

### Syntax des SELECT-Befehls
```
SELECT {SPALTEN bzw *}
    FROM {tabelle}
    [JOIN {tabelle}]...
    WHERE {bedingungen}
    ORDER BY {spalte} ASC|DESC
    GROUP BY {spalte}
    HAVING {bedingungen}
    LIMIT {anzahl}
```
