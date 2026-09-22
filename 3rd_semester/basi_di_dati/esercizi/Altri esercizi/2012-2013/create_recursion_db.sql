DROP SCHEMA IF EXISTS recursion CASCADE;
CREATE SCHEMA recursion;
SET search_path TO recursion;

CREATE TABLE dipendente (
  matricola    INTEGER PRIMARY KEY,
  nome         VARCHAR(20),
  manager      INTEGER REFERENCES dipendente(matricola),
  stipendio    INTEGER  
);

INSERT INTO dipendente VALUES
  (1, 'Mario Rossi', NULL, 10000),
  (2, 'Luca Bianchi', 1, 3500),
  (3, 'Mauro Verdi', 1, 5000),
  (4, 'Nicola Neri', 1, 2500),
  (5, 'Giorgio Brambilla', 2, 1300),
  (6, 'Maria Brambilla', 2, 1200),
  (7, 'Stefano Rossi', 3, 2000),
  (8, 'Laura Neri', 4, 900),
  (9, 'Edoardo Bianchi', 4, 900),
  (10, 'Filippo Verdi', 9, 2600);  

CREATE TABLE studente (
  matricola INTEGER PRIMARY KEY,
  nome      VARCHAR(20),
  cognome   VARCHAR(20),
  anno      INTEGER
);

CREATE TABLE fatturato (
  anno    INTEGER PRIMARY KEY,
  importo INTEGER
);

INSERT INTO fatturato VALUES
  (1990, 1000000),
  (1991, 1050000),
  (1992, 1020000),
  (1995, 1200000),
  (1997, 1250000),
  (1998, 1200000),
  (1999, 1190000),
  (2001, 1220000),
  (2003, 1300000),
  (2005, 1400000),
  (2008, 1200000),
  (2010,  500000);  

CREATE TABLE tratta (
  citta1   CHAR(2),
  citta2   CHAR(2),
  distanza INTEGER,
  PRIMARY KEY (citta1, citta2)
);

INSERT INTO tratta VALUES
  ('TO', 'AO', 113),
  ('AO', 'TO', 113),
  ('TO', 'GE', 170),
  ('GE', 'TO', 170),
  ('MI', 'GE', 253),
  ('GE', 'MI', 253),
  ('MI', 'TO', 138),
  ('TO', 'MI', 138),
  ('MI', 'VE', 276),
  ('VE', 'MI', 276),
  ('VE', 'UD', 127),
  ('UD', 'VE', 127),
  ('MI', 'BO', 206),
  ('BO', 'MI', 206),
  ('BO', 'FI', 101),
  ('FI', 'BO', 101),
  ('BO', 'AN', 572),
  ('AN', 'BO', 572),
  ('FI', 'PG', 151),
  ('PG', 'FI', 151),
  ('AN', 'PG', 143),
  ('PG', 'AN', 143),
  ('AN', 'AQ', 423),
  ('AQ', 'AN', 423),
  ('RM', 'FI', 268),
  ('FI', 'RM', 268),
  ('RM', 'PG', 173),
  ('PG', 'RM', 173),
  ('RM', 'AQ', 122),
  ('AQ', 'RM', 122),
  ('RM', 'NA', 219),
  ('NA', 'RM', 219),
  ('RM', 'CB', 222),
  ('CB', 'RM', 222),
  ('NA', 'CB', 137),
  ('CB', 'NA', 137),
  ('AN', 'BA', 466),
  ('BA', 'AN', 466),
  ('AN', 'CB', 764),
  ('CB', 'AN', 764),
  ('BA', 'PZ', 140),
  ('PZ', 'BA', 140),
  ('CB', 'PZ', 201),
  ('PZ', 'CB', 201),
  ('NA', 'PZ', 158),
  ('PZ', 'NA', 158),
  ('PZ', 'RC', 390),
  ('RC', 'PZ', 390),
  ('NA', 'RC', 462),
  ('RC', 'NA', 462),
  ('BA', 'RC', 439),
  ('RC', 'BA', 439);
