CREATE DATABASE ippica;

USE ippica;

CREATE TABLE Cavallo (
       id INT PRIMARY KEY,
       scuderia INT,
       nome VARCHAR(10),
       anno INT);

create table Fantino (
       cf INT PRIMARY KEY,
       nome VARCHAR(10),
       cognome VARCHAR(10),
       soprannome VARCHAR(10),
       anno INT);

create table Corsa (
       id INT PRIMARY KEY,
       cavallo INT,
       fantino INT,
       data DATE,
       ippodromo VARCHAR(10),
       premio INT,
       trofeo VARCHAR(10));

create table Scuderia (
       id INT PRIMARY KEY,
       nome CHAR(1),
       nazionalita VARCHAR(10),
       domicilio VARCHAR(10));

INSERT INTO Scuderia VALUES
        (1, 'A', NULL, NULL),
        (2, 'B', NULL, NULL),
        (3, 'C', NULL, NULL);

INSERT INTO Cavallo VALUES
       (1, 1, NULL, NULL),
       (2, 1, NULL, NULL),
       (3, 2, NULL, NULL),
       (4, 2, NULL, NULL),
       (5, 3, NULL, NULL),
       (6, 3, NULL, NULL);

INSERT INTO Corsa VALUES
       (1, 1, NULL, NULL, NULL, NULL, NULL),
       (2, 2, NULL, NULL, NULL, NULL, NULL),
       (3, 3, NULL, NULL, NULL, NULL, NULL),
       (4, 4, NULL, NULL, NULL, NULL, NULL),
       (5, 1, NULL, NULL, NULL, NULL, NULL),
       (6, 6, NULL, NULL, NULL, NULL, NULL);

UPDATE Corsa
SET fantino = 1
WHERE cavallo = 3;

UPDATE Corsa
SET fantino = 2
WHERE id > 1;

INSERT INTO Fantino VALUES
       (1, NULL, NULL, NULL, NULL),
       (2, NULL, NULL, NULL, NULL),
       (3, NULL, NULL, NULL, NULL);