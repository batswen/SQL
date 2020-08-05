# Wildcards
Je nach Version von MySQL/MariaDB werden unterschiedlich viele Wildcards (Platzhalter) unterstützt.
```
_ =  Ein Zeichen
```

```
% = Beliebig viele (0..*) Zeichen
```
Die folgenden Wildcards werden nur von MySQL unterstützt
```
[zeichen] = ein Zeichen aus der Liste
^[zeichen] = keins aus der Liste
```
MariaDB unterstützt seit Version 10 PCRE (siehe www.pcre.org)
### LIKE
```SQL
/* alles, was ein "l" enthält */
SELECT
    *
    FROM `kunden`
    WHERE `nachname` LIKE '%l%'

/* Beginnt mit "A", drittes Zeichen ist "i" und ist fünf Zeichen lang */
SELECT
    *
    FROM `kunden`
    WHERE `vorname` LIKE 'A_i__'

/* RegEx-Beispiel, erstes Zeichen ist "H", danach "a" oder "o", danach beliebig viele Zeichen */
SELECT
    *
    FROM `kunden`
    WHERE `vorname` REGEXP '^H[ao].*$'
```
## IN
Findet alle Treffer aus der angegebenen Liste
```SQL
SELECT
    *
    FROM `kunden`
    WHERE `wohnort` IN ('Wiesbaden', 'Idstein')
entspricht
SELECT
    *
    FROM `kunden`
    WHERE `wohnort` = 'Wiesbaden' OR `wohnort` = 'Idstein'

```
## BETWEEN
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
