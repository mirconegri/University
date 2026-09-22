DROP SCHEMA IF EXISTS bank CASCADE;
CREATE SCHEMA bank;
SET search_path TO bank;

CREATE TABLE customer (
  username VARCHAR(20) PRIMARY KEY,
  password VARCHAR(20),
  name     VARCHAR(20) NOT NULL,
  surname  VARCHAR(20) NOT NULL
);

CREATE TABLE account (
  number   INTEGER PRIMARY KEY,
  customer VARCHAR(20) REFERENCES customer(username),
  amount   INTEGER NOT NULL CHECK (amount >= 0)
);

CREATE TABLE transfer (
  source INTEGER REFERENCES account(number),
  target INTEGER REFERENCES account(number),
  amount INTEGER NOT NULL CHECK (amount >= 0 AND amount <= 1000),
  date   DATE,
  PRIMARY KEY (source, target, date),
  CHECK (source <> target)
);

INSERT INTO customer VALUES
  ('mario', 'mario',  'Mario', 'Rossi'),
  ('luca', 'luca', 'Luca', 'Bianchi'),
  ('mauro', 'mauro', 'Mauro', 'Verdi'),
  ('nicola', 'nicola', 'Nicola', 'Neri'),
  ('giorgio', 'giorgio', 'Giorgio', 'Brambilla'),
  ('maria', 'maria', 'Maria', 'Brambilla'),
  ('stefano', 'stefano', 'Stefano', 'Rossi'),
  ('laura', 'laura', 'Laura', 'Neri'),
  ('edoardo', 'edoardo', 'Edoardo', 'Bianchi'),
  ('filippo', 'filippo', 'Filippo', 'Verdi');  

INSERT INTO account VALUES
  (150013, 'mario', 1200000),
  (150014, 'mario', 998000),
  (150133, 'luca', 205541),
  (160533, 'mauro', 198400),
  (160983, 'mauro', 60111),
  (161019, 'nicola', 124000),
  (162986, 'giorgio', 97500),
  (171068, 'maria', 82096),
  (171069, 'stefano', 74000),
  (172961, 'laura', 71201),
  (173044, 'edoardo', 49053),
  (179031, 'filippo', 9041);  
  
INSERT INTO transfer VALUES
  (179031, 150013, 1000, DATE '2011-11-15'),
  (173044, 150013, 1000, DATE '2011-11-14');
  