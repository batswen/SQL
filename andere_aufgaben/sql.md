
### Schüler

|idSchüler|Vorname|Nachname|Strasse|PLZ|Telefon|idKlasse|
|---------|-------|--------|-------|---|-------|--------|
|1        |Mark   |Müller  |Hauptstrasse 10|65123|01234-56789|1|
|2|Jana|Kaiser|Nebenweg 8|62621|07654-12345|2|

### Klasse

|idKlasse|Bezeichnung|
|-|-|
|1|10a|
|2|8c|

### Lehrer

|idLehrer|Vorname|Nachname|Strasse|PLZ|Telefon|
|-|-|-|-|-|-|
|1|Anita|Schiller|Postweg 17|67541|09876-54321|
|2|Frank|Meier|Blumengasse 18|68753|05152-12454|

### Stundenplan

|id|idUnterrichtsfach|idKlasse|idklassenraum|Tag|Stunde|
|-|-|-|-|-|-|
|1|1|1|1|Montag|1|
|2|1|1|1|Montag|2|
|3|3|1|2|Montag|5|

### Unterrichtsfach

|idUnterrichtsfach|Bezeichnung|
|-|-|
|1|Mathematik|
|2|Deutsch|
|3|Sport|

### Klassenraum

|idklassenraum|Bezeichnung|Sitzplätze|Etage|
|-|-|-|-|
|1|C100|24|2|
|2|Turnhalle|100|1|

### Ort

|PLZ|Ortsbezeichnung|
|-|-|
|65123|Irgendwo|
|62621|Anderswo|

### LehrerUnterrichtsfach

|idLehrer|idUnterrichtsfach|
|-|-|
|1|1|

---
Beispiel:
Listen Sie alle Schüler auf.

|Vorname|Nachname|
|-|-|
|Christian|Zimmermann|
|Mark|Aal|
|Beate|Müller|

SELECT \`Vorname\`, \`Nachname\` FROM \`Schüler\`

---
1.) Alle Schüler, sortiert nach Vorname und Nachname

|Vorname|Nachname|
|-|-|
|Mark|Aal|
|Beate|Müller|
|Stefan|Müller|


2.) Alle Klassenräume, größte zuerst

|Bezeichnung|Sitzplätze|
|-|-|
|Turnhalle|100|
|A16|38|
|B100|27|

3.) Welcher Klassenraum ist der Größte?

|Größter Klassenraum|
|-|
|Turnhalle|


4.) Welcher Klassenraum ist der Kleinste?

|Kleinster Klassenraum|
|-|
|C100|


5.) Wie viele Schüler gibt es in jeder Klasse? Absteigend nach Anzahl sortiert.

|Klasse|Anzahl|
|-|-|
|8a|30|
|9a|26|
|8b|21|


6.) Wie viele Schüler gibt es insgesamt?

|Anzahl|
|-|
|361|

7.) Wie viele Klassenräume gibt es in eder Etage?

|Etage|Klassenräume|
|-|-|
|1|5|
|2|3|
|3|3|

8.) Wie viele Sitzplätze gibt es in jeder Etage?

|Etage|Sitzplätze|
|-|-|
|1|180|
|2|120|
|3|80|

9.) Welche Schüler sind Teil welcher Klasse? Die Klassen sollen dabei zusammen gelistet werden.

|Vorname|Nachname|Klasse|
|-|-|-|
|Mark|Aal|8a|
|Anja|Müller|8a|
|Hans|Wurst|8a|

9.) Die Telefonnummer von Christian	Zimmermann (idSchüler: 117) soll gelöscht werden.
Ein Kollege hat die folgende Anweisung geschrieben:
DELETE FROM `Schüler` WHERE `Vorname` = 'Christian' AND `Nachname` = 'Zimmermann'
Wie würden Sie die Anweisung formulieren?

10.) Wie viele Schüler gibt es in Klasse 10a?

|Anzahl|
|-|
|28|

11.) In welchen Räumen wird Klasse 9c unterrichtet?

|Klassenraum|
|-|
|C100|
|A20|
|Turnhalle|

12.) Listen Sie alle Schüler und Lehrer auf.

|Vorname|Nachname|
|-|-|
|...|...|

13.) Fehlersuche: Welche Lehrer wurden keinem Unterrichtsfach zugeordnet?

|Vorname|Nachname|
|-|-|
|Frank|Meier|

13.) Alle Lehrer und ihre Fächer, bei fehlerhaften Einträgen soll "---" ausgegeben werden

|Vorname|Nachname|Fach|
|-|-|-|
|Anita|Schiller|Mathematik|
|Anita|Schiller|Deutsch|
|Frank|Meier|---|

14.) Listen Sie alle Klassen und die Anzahl Stunden Sportunterricht auf.

|Klasse|Sportstunden|
|-|-|
|8a|4|
|9b|4|
|10a|6|

15.) Welche Klassen werden in Raum C100 unterrichtet?

|Raum C100|
|-|
|9a|
|9c|
|5e|

16.) Welche Klassen können in welchen Räumen unterrichtet werden?

|Klasse|Raum|
|-|-|
|8a|A16|
|8a|Turnhalle|
|8b|Turnhalle|

17.) Alle Räume und die Anzahl Deutsch- und Englischstunden, die darin unterrichtet werden.

|Raum|Deutsch|Englisch|
|-|-|-|
|A17|5 h|0 h|
|C100|2 h|11 h|
