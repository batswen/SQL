# Andere Funktionen

## CONCAT
Mit Hilfe von CONCAT können mehrere Zeichenketten zu Einer zusammengefasst werden.

### Beispiel
```SQL
SELECT CONCAT(`vorname`, ' ', `nachname`) AS 'Kunde' FROM `kunden`
```

## FORMAT
Format dient zur formatierten Ausgabe von Zahlen, der zweite Parameter gibt die Anzahl an Nachkommastellen an, ein optionaler dritter Parameter bestimmt die Sprache bzw das Landesübliche Zahlenformat.

### Beispiel
```SQL
/* Rundet auf zwei Nachkommastellen */
SELECT FORMAT(123.456, 2)
/* = 123.46 */

/* Gibt die Zahl wie im Deutschen üblich aus */
SELECT FORMAT(789123.456, 2, 'de_DE')
/* = 789.123,46 */
```

## INSTR
Sucht in einer Zeichenkette nach einer Zweiten und liefert die Position oder 0 zurück.

### Beispiel
```SQL
SELECT INSTR('Hallo Welt!', 'Welt') /* 7 */
```

## LCASE / LOWER und UCASE / UPPER
LCASE bzw LOWER liefert die angegebene Zeichenkette in Kleinbuchstaben zurück, UCASE bzw UPPER liefert die angegebene Zeichenkette in Großbuchstaben zurück.

### Beispiel
```SQL
SELECT LOWER('Hallo Welt!') /* 'hallo welt!' */
SELECT UPPER('Hallo Welt!') /* 'HALLO WELT!' */
```

## LEFT und RIGHT
LEFT liefert die angegebene Anzahl an Zeichen der Zeichenkette von links an zurück, RIGHT von rechts an.

### Beispiel
```SQL
SELECT LEFT('Hallo Welt!', 3) /* 'Hal' */
SELECT RIGHT('Hallo Welt!', 3) /* 'lt!' */
```

## MID / SUBSTRING
MID(zk, pos, len) liefert die angegebene Anzahl Zeichen (len) ab der Position (pos) zurück. Negtive Werte für pos bedeuten, dass die Zeichenkette von rechts an durchsucht wird. Die Länge len ist optional, wenn weggelassen werden alle Zeichen ab der Position pos ausgewählt.

### Beispiel
```SQL
SELECT MID('Hallo Welt!', 3, 5) /* 'llo W' */
SELECT MID('Hallo Welt!', 3) /* 'llo Welt!' */
```

## LPAD und RPAD
LPAD (left padding) und RPAD (right padding) erweitern eine Zeichenkette auf die angegebene Anzahl Zeichen, dabei kann auch das Füllzeichen bestimmt werden.

### Beispiel
```SQL
SELECT LPAD('Hallo Welt!', 15) /* '   Hallo Welt!' */
SELECT RPAD('Hallo Welt!', 15, '.') /* 'Hallo Welt!....' */
```

## TRIM, LTRIM und RTRIM
Diese Funktionen entfernen Leerzeichen links, rechts oder an beiden Seiten einer Zeichenkette.

### Beispiel
```SQL
SELECT TRIM('   Hallo   ')  /* 'Hallo' */
SELECT LTRIM('   Hallo   ') /* 'Hallo   ' */
SELECT RTRIM('   Hallo   ') /* '   Hallo' */
```

## LENGTH
Liefert die Länge einer Zeichenkette.

### Beispiel
```SQL
SELECT LENGTH('Hallo Welt!') /* 11 */
```
