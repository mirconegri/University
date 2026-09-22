DROP SCHEMA IF EXISTS ships CASCADE;
CREATE SCHEMA ships;
SET search_path TO ships ;

CREATE TABLE classes (
  class VARCHAR(30) PRIMARY KEY,
  type CHAR(2),
  country CHAR(15),
  num_guns INT,
  bore INT,
  displacement INT
);

CREATE TABLE battles (
  name VARCHAR(30) PRIMARY KEY,
  date DATE
);

CREATE TABLE ships (
  name VARCHAR(30) PRIMARY KEY,
  class VARCHAR(30),
  launched INT
);

CREATE TABLE outcomes (
  ship VARCHAR(30),
  battle VARCHAR(30),
  result VARCHAR(8),
  PRIMARY KEY (ship, battle)
);

INSERT INTO classes VALUES
  ('Bismarck','bb','Germany',8,14,42000),
  ('Iowa','bb','Japan',9,16,46000),
  ('Kongo','bc','Japan',8,14,32000),
  ('South Dakota','bb','USA',9,16,37000),
  ('Renown','bc','Gt. Britain',6,15,32000),
  ('Revenge','bb','Gt. Britain',8,15,29000),
  ('Mississippi','bb','USA',12,14,33000),
  ('Yamato','bb','Japan',9,18,65000);

INSERT INTO battles VALUES
  ('Denmark Strait',DATE '1941-05-24'),
  ('Guadalcanal',DATE '1942-11-15'),
  ('North Cape',DATE '1943-12-26'),
  ('Surigao Strait',DATE '1944-10-25');

INSERT INTO outcomes VALUES
  ('Arizona','Pearl Harbor','sunk'),
  ('Bismarck','Denmark Strait','sunk'),
  ('California','Surigao Strait','ok'),
  ('Duke of York','North Cape','ok'),
  ('Fuso','Surigao Strait','sunk'),
  ('Hood','Denmark Strait','sunk'),
  ('King George V' ,'Denmark Strait','ok'),
  ('Kirishima','Guadalcanal','sunk'),
  ('Prince of Wales','Denmark Strait','damaged'),
  ('Rodney','Denmark Strait','ok'),
  ('Scharnhorst','North Cape','sunk'),
  ('South Dakota','Guadalcanal','damaged'),
  ('Tennessee','Surigao Strait','ok'),
  ('Washington','Guadalcanal','ok'),
  ('West Virginia','Pearl Harbor','damaged'),
  ('West Virginia','Surigao Strait','ok'),
  ('Yamashiro','Surigao Strait','ok');

INSERT INTO ships VALUES
  ('Alabama','South Dakota',1942),
  ('Haruna','Kongo',1915),
  ('Hiei','Kongo',1914),
  ('Idaho','Mississippi',1919),
  ('Iowa','Iowa',1943),
  ('Kirishima','Kongo',1915),
  ('Kongo','Kongo',1913),
  ('Missouri','Iowa',1944),
  ('Musashi','Yamato',1942),
  ('New Jersey','Iowa',1943),
  ('New Mexico','Mississippi',1918),
  ('Ramillies','Revenge',1917),
  ('Renown','Renown',1916),
  ('Repulse','Renown',1916),
  ('Resolution','Revenge',1916),
  ('Revenge','Revenge',1916),
  ('Royal Oak','Revenge',1916),
  ('Royal Sovereign','Revenge',1916),
  ('South Dakota','South Dakota',1942),
  ('Wisconsin','Iowa',1944),
  ('Yamato','Yamato',1941);
