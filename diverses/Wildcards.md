# Wildcards
```
_ =  Ein Zeichen
```

```
% = Beliebig viele (0..*) Zeichen
```
MariaDB unterstützt seit Version 10 PCRE
### LIKE
```SQL
SELECT
    *
    FROM `kunden`
    WHERE `nachname` LIKE '%l%' /* alles, was ein "l" enthält */

SELECT
    *
    FROM `kunden`
    WHERE `vorname` LIKE 'A_i__'

SELECT
    *
    FROM `kunden`
    WHERE `vorname` REGEXP '^H[ao].*'
```
# IN
```SQL
SELECT
    *
    FROM `kunden`
    WHERE `wohnort` IN ('Wiesbaden', 'Idstein')
```
# BETWEEN
Findet alle Werte im angegebenen Bereich (inklusive)
```SQL
SELECT
    *
    FROM `hauptgerichte`
    WHERE `preis` BETWEEN 5 AND 7
entspricht
SELECT
    *
    FROM `hauptgerichte`
    WHERE `preis` >= 5 AND `preis` <= 7
```
