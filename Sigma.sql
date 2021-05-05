DROP DATABASE IF EXISTS Sigma;
CREATE DATABASE IF NOT EXISTS Sigma;
USE Sigma;

DROP TABLE IF EXISTS Alpha;
CREATE TABLE Alpha (
  alphaKey INT PRIMARY KEY,
  alphaName VARCHAR(10) DEFAULT NULL,
  alphaDate DATE DEFAULT "2019-3-1",
  alphaInteger INT DEFAULT 5,
  betaFKey INT DEFAULT NULL
); 

DROP TABLE IF EXISTS Beta;
CREATE TABLE Beta (
  betaKey INT PRIMARY KEY,
  betaColor VARCHAR(15) DEFAULT "RED",
  betaFloat FLOAT DEFAULT 0.0,
  alphaFKey INT DEFAULT NULL
); 

INSERT INTO Alpha VALUES (1, "Roger", "2019-1-1", Default, 10);
INSERT INTO Alpha VALUES (2, "Phil", "2018-6-23", 25, 20);
INSERT INTO Alpha VALUES (3, "Kevin", "2020-8-17", 35, 30);
INSERT INTO Alpha VALUES (10, Default, Default, Default, Default);
INSERT INTO Alpha VALUES (20, Null, "2010-1-1", 1000, 40);

INSERT INTO Beta VALUES (10, "BLUE", 10.01, 1);
INSERT INTO Beta VALUES (20, "GREEN", Default, 2);
INSERT INTO Beta VALUES (30, Default, 37.2, 3);
INSERT INTO Beta VALUES (40, Default, Default, Default);
INSERT INTO Beta VALUES (50, "Orange", -99.99, 10);

UPDATE Alpha SET alphaName = 'Armstrong', alphaDate = '2025-07-22', alphaInteger ='-17' WHERE alphaKey = 10;
UPDATE  Beta SET betaColor = 'pink' WHERE betaKey =20;
UPDATE Beta SET betaColor = 'pink' WHERE betaKey = 30;
UPDATE Beta SET betaFloat = '99.43' WHERE betaKey >= 10;
UPDATE Alpha SET alphaInteger = '0' WHERE alphaKey BETWEEN 10 and 20;
SELECT alphaKey, alphaName, alphaDate, alphaInteger, betaFkey FROM Alpha;
SELECT betaKey, betaColor, betaFloat, alphaFKey from Beta;
