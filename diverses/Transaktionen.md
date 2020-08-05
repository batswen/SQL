# Transaktionen
Eine Transaktion kann entweder Fehlerfrei sein oder vollständig fehlschlagen.
### Aktivieren der Transaktionen (MySQL/MariaDB)
Bei MySQL / MariaDB sind Transaktionen standardmäßig deaktiviert (d. h. autocommit=1)
#### Abschalten des Autocommits
```SQL
SET autocommit=0;
```
#### Starten der Transaktion
```SQL
START TRANSACTION;
```

#### Ausführen der Befehle

#### Abschließen der Transaktion / Zurücksetzen der Datenbank
```SQL
COMMIT; /* Bei Erfolg */

ROLLBACK; /* Bei einem Fehler */
```
