# Transaktionen
Eine Transaktion kann entweder Fehlerfrei sein oder vollständig fehlschlagen.
### Aktivieren der Transaktionen (MySQL/MariaDB)
1. Abschalten des Autocommits
```SQL
SET autocommit=0;
```
2. Starten der Transaktion
```SQL
START TRANSACTION;
```

3. Ausführen der Befehle

4. Abschließen der Transaktion / Zurücksetzen der Datenbank
```SQL
COMMIT; /* Bei Erfolg */

ROLLBACK; /* Bei einem Fehler */
```
