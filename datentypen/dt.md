# Datentypen in MySQL/MariaDB
Hier ist eine unvollständige Liste der Datentypen von MySQL bzw MariaDB


### TINYINT, BOOLEAN (Synonym für TINYINT(1))
Integer, keine Nachkommastellen, Bereich: -128 bis 127

### SMALLINT
Integer, keine Nachkommastellen, Bereich: -32768 bis 32767

### MEDIUMINT
Integer, keine Nachkommastellen, Bereich: -8388608 to 8388607

### INT, INTEGER
Integer, keine Nachkommastellen, Bereich: -2147483648 to 2147483647

### BIGINT
Integer, keine Nachkommastellen, Bereich: -9223372036854775808 to 9223372036854775807 bzw 0 bis 18446744073709551615

### DECIMAL, DEC, NUMERIC, FIXED
Maximal 65-stellige Zahlen

### FLOAT
Einfach genaue (32 Bit) Fließkommazahl

### DOUBLE, DOUBLE PRECISION, REAL
Doppelt genaue (64 Bit) Fließkommazahl

### VARCHAR
Zeichen (Character) mit varabler Länge

### BLOB (Binary Large OBject)
Beliebige Daten mit max 65536 (64 kB) länge
### MEDIUMBLOB
max 16 MB
### LONGBLOB
max 4 GB

### TINYTEXT
max 255 Zeichen
### TEXT
max 65535 Zeichen
### MEDIUMTEXT
max 16777216 Zeichen
### LONGTEXT
max 4,294,967,295 Zeichen

### ENUM
Enumeration

### DATE (JJJJ-MM-TT)
### TIME (HH:MM:SS.ssssss)
### DATETIME (JJJJ-MM-TT HH:MM:SS)
### TIMESTAMP (JJJJ-MM-TT HH:MM:SS)

### NULL

# Datentypen in SQLite
### NULL
### INTEGER
1, 2, 3, 4, 6, 8 Byte, abhängig von der Größe der Zahl
### REAL
Doppelt genaue Fließkommazahl (8 Byte)
### TEXT
UTF-8, UTF-16BE oder UTF-16LE kodierter Text
### BLOB
Binärdaten
