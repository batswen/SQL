# Anlegen einer Datenbank
```SQL
CREATE DATABASE [IF NOT EXISTS] name
    CHARACTER SET utf8mb4
    COLLATE utf8mb4_general_ci
```
### CHARACTER SET
Bestimmt, welches Zeichen welchem Code zugeordnet ist. Das "ß" ist bei ISO-8859-1 der Code 0xDF, bei UTF-8 lautet er 0xC3 0x9F (also zwei Byte).

### COLLATION
Die Kollation entscheidet über den Vergleich zweier Zeichen. Zum Beispiel muss bei "ci" (Case Insensitive) "a" = "A" gelten, im Deutschen gilt "ä" = "ae".

# Ändern einer Datenbank
```SQL
ALTER DATABASE name
    CHARACTER SET neues_set
    COLLATE neue_kollation
```
# Löschen einer Datenbank
```SQL
DROP DATABASE name
```
